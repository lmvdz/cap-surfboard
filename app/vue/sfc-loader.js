
const options = {
  moduleCache: {
    vue: Vue
  },
  async getFile(url) {
    try {
      const filePath = url.replace('.vue', '.html');
      const response = await fetch(filePath);
      const rawHTML = await response.text();
      const parser = new DOMParser();
      const document = parser.parseFromString(rawHTML, 'text/html');
      return document.body.innerHTML;
    } catch (error) {
      throw error;
    }
  },
  addStyle(styleStr) {
    const styleElement = document.createElement('style');
    styleElement.textContent = styleStr.trim();
    const headStyleElement = document.head.querySelector('style') || null;
    document.head.insertBefore(styleElement, headStyleElement);
  }
};

const { loadModule } = window['vue2-sfc-loader'];

async function importSFC(filePath) {
  return await loadModule(filePath, options);
}
