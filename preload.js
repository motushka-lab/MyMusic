const { contextBridge, ipcRenderer } = require("electron");

contextBridge.exposeInMainWorld("myMusic", {
  pickAudio: () => ipcRenderer.invoke("pick-audio"),
  readFile: (filePath) => ipcRenderer.invoke("read-file", filePath)
});
