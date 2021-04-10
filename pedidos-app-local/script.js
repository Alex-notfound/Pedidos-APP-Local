function transform(xml, xslt) {
    var domParser = new DOMParser();
    var sheet = domParser.parseFromString(xslt, 'application/xml');
    var doc = domParser.parseFromString(xml, 'application/xml');
    var proc = new XSLTProcessor();
    proc.importStylesheet(sheet);
    var resultDoc = proc.transformToDocument(doc);
    // depending on the kind of result created or wanted it might be better to use return new XMLSerializer().serializeToString(resultDoc)
    return resultDoc.documentElement.outerHTML;
  }
  
  async function loadAndTransform(xml, xsltUrl) {
    try {
      var response = await fetch(xsltUrl);
      var xsltCode = await response.text();
      return transform(xml, xsltCode);
    }
    catch (e) {
      console.log(e);
      throw e;
    }
  }
  
  async function handler1() {
    document.getElementById('result').value = await loadAndTransform(document.getElementById('input-xml').value, 'data:application/xml,' + encodeURIComponent(document.getElementById('xslt').value));
  }
  
  async function handler2() {
    document.getElementById('result').value = await loadAndTransform(document.getElementById('input-xml').value, 'sheet.xsl');
  }