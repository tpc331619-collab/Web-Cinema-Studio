# 🎬 Web Cinema Studio (瀏覽器端導覽影片動畫工作站)

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live%20Demo-brightgreen)](https://tpc331619-collab.github.io/Web-Cinema-Studio/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Pure Vanilla JS](https://img.shields.io/badge/Stack-Pure%20HTML5%20%2F%20Canvas%20%2F%20CSS-orange)](#)

> **零依賴、純前端、免安裝** 的高顏值產品教學／操作導覽影片與簡報製作平台。  
> 只要瀏覽器打開即可使用，支援 2D 運鏡平移縮放、模擬滑鼠軌跡點擊、機械音打字機字幕、剪映多軌時間軸、CSV 批次產生影片與高畫質影片錄製匯出。

---

## 🌟 核心特色 (Key Features)

- 🎥 **2D 鏡頭縮放與平滑運鏡 (Camera Motion Engine)**
  - 支援 **0.20x（縮小 5 倍）~ 5.00x（超高倍放大）** 無損縮放。
  - A 點起點 ➔ B 點終點平滑長距運鏡滑行，支援自訂運鏡時長與即時預覽。
  - 滾輪縮放自適應與一鍵鏡頭歸位。

- 🖱️ **擬真模擬滑鼠軌跡與點擊動畫 (Mock Cursor)**
  - 支援高顏值極致白／黑指針與大白手套。
  - 支援在畫面任意拖曳指針定位，精準記錄 A ➔ B 兩點滑行軌跡與自訂速度（0.1s ~ 5.0s）。
  - 水波光圈漣漪點擊特效，零誤差重疊指針尖端，同步發出微點擊機械音效。

- 🎤 **KTV 逐字打字呈現引擎 (Typewriter Subtitle)**
  - 播放時逐字跳出字幕，支援 `，。！？` 自然標點停頓。
  - Web Audio API 原生合成打字機清脆敲擊機械音（普通字與標點雙音頻）。
  - 支援 `『重點高亮詞』` 自動轉為彩色發光膠囊標籤。
  - 自帶三檔字幕比例（精緻推薦、標準、偏大），自適應畫面不遮擋主體。

- 🎞️ **剪映級多軌時間軸 (CapCut-Style Timeline)**
  - 片段卡片支援拖曳交換順序、複製片段、刪除、插入新圖片/影片。
  - 精確刻度尺與即時游標拖曳巡航（Scrubbing），支援單片段循環試播。

- 📊 **Excel / CSV 腳本全自動批量生成**
  - 將圖片放入 `images/`，直接貼上或上傳 CSV 腳本，秒級自動生成全片影片與章節！
  - 內附專用 CSV 範本 `影片腳本範例.csv`。

- 🔴 **高畫質瀏覽器錄製與一鍵轉檔**
  - 支援即時錄製為標準 WebM / MP4。
  - 附帶 `一鍵轉MP4影片(可拖曳webm進來).bat` 工具，支援無損快速轉碼。

- 💾 **現代化檔案保存**
  - 支援 Chrome / Edge 原生「💾 存檔」（直接覆蓋本機原檔，絕不產生副本）。
  - 支援「📑 另存新檔」與一鍵「↺ 恢復範本」清空快取。

---

## 🚀 快速上手 (Quick Start)

### 方式一：本機直接雙擊開啟（免安裝伺服器）
1. 下載或 Clone 本專案：
   ```bash
   git clone https://github.com/tpc331619-collab/Web-Cinema-Studio.git
   ```
2. 直接雙擊 `index.html`（或 `編輯模板.html`），在 Chrome、Edge 等瀏覽器開啟即可開始使用！

### 方式二：部署至 GitHub Pages（免費線上雲端平台）
1. 將本專案推上您的 GitHub 儲存庫。
2. 進入 GitHub Repository 的 **Settings ➔ Pages**。
3. **Build and deployment** 來源選擇 **Deploy from a branch**。
4. 分支選擇 `main` / `root`，點擊 **Save**。
5. 幾分鐘後即可在 `https://tpc331619-collab.github.io/Web-Cinema-Studio/` 免費公開使用！

---

## 📁 專案目錄結構

```text
Web Cinema Studio/
├── index.html                   # 平台首頁（預設乾淨播放展示，點編輯展開完整工作區）
├── 編輯模板.html                # 編輯模板本體
├── FSIPPRO.html                 # 旗艦級產品教學實例 (FSIPPRO 消防安全查檢平台演練)
├── images/                      # 影片素材資料夾
│   ├── Sample.jpg               # 範本圖片
│   ├── 01.jpg ~ 06.jpg          # 範例幻燈片截圖
│   └── doc_media/               # 完整演練高解析介面截圖
├── 影片腳本範例.csv             # Excel 腳本範例（圖片路徑, 旁白台詞, 時長, 標籤）
├── 一鍵轉MP4影片(可拖曳webm進來).bat # 錄製 WebM 一鍵快速轉 MP4 工具
├── .gitignore
└── README.md
```

---

## 📝 CSV 腳本撰寫格式範例

您可以在 Excel 編輯後另存為 CSV，或直接複製貼入編輯器的「📋 貼上 Excel 腳本產生」：

```csv
圖片路徑,旁白台詞,片段長度(秒),標籤文字
images/01.jpg,歡迎進入智能管理系統，請點擊『訪客體驗』按鈕進入系統。,2.0,系統首頁
images/02.jpg,這是系統主儀表板，即時監控全廠區設備運行狀態。,2.5,儀表板概覽
images/03.jpg,如發現設備外觀破損或數值異常，請點擊異常通報進行登記。,3.0,異常通報
images/04.jpg,巡檢完成後系統自動記錄報告並產生合格證書。,2.0,檢驗合格
```

---

## 💻 瀏覽器相容性

| 功能 | Chrome / Edge | Safari | Firefox |
|---|:---:|:---:|:---:|
| 2D 運鏡平移與縮放 | ✅ | ✅ | ✅ |
| 游標軌跡與點擊光圈 | ✅ | ✅ | ✅ |
| 打字機字幕與音效 | ✅ | ✅ | ✅ |
| 錄影匯出 WebM / MP4 | ✅ | ✅ | ✅ |
| 原檔直接覆蓋儲存 (FileSystem API) | ✅ (完美支援) | ⚠️ (轉為檔案下載) | ⚠️ (轉為檔案下載) |

---

## 📄 License

MIT License. 歡迎自由修改、客製或作為商業簡報與產品導覽工具使用！
