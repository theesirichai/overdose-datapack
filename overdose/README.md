# 🪓 Overdose — Tactical Tree Feller Data Pack (Java Edition 26.3)

**Author / Vibe Director:** `teamthee` ([@theesirichai](https://github.com/theesirichai))  
**Project Type:** ✨ **100% Vibe Coded Project** (Human Game UX Direction × AI Agentic Engineering)  
**Minecraft Version:** Java Edition 26.3 (*Wilderness Bound* • `pack_format: 121`)  
**Folder:** `overdose`

---

## ✨ เกี่ยวกับโปรเจกต์ (Vibe Code Overview)

**Overdose: Tree Feller** เป็นโมดูล Data Pack ที่สร้างขึ้นด้วยแนวคิด **Vibe Coding** โดยออกแบบมาเพื่อแก้ปัญหาคลาสสิกของระบบตัดไม้ทั้งต้นทั่วไปที่ผู้เล่นมักเผลอทุบบ้านไม้ตัวเองพัง ระบบนี้จึงถูกออกแบบให้มี **Context-Aware Actionbar HUD** และ **Shift-to-Charge Safety Lock** ที่ต้องตั้งใจกด `Shift` ชาร์จพลังให้เต็ม `100%` ก่อนจึงจะทำงาน พร้อมรองรับการโค่นต้นไม้ทั้งการขุดปกติในโหมด Survival และการคลิกขวาด้วยขวานผ่านระบบ 3D Raycast ในโหมด Creative

---

## 🔥 คุณสมบัติและรายละเอียดระบบ (Features & Mechanics)

1. **แสดงผลเฉพาะตอนถือขวาน (Axes Only Context Detection):**
   - ตรวจสอบไอเทมในมือหลัก (`weapon.mainhand`) และมือรอง (`weapon.offhand`) ด้วยแท็ก `#minecraft:axes`
   - เมื่อถือขวานในมือ จะมีข้อความแจ้งเตือนที่ Actionbar ว่า `[Overdose] 🪓 Shift to activate`
   - เมื่อสลับไปถือไอเทมอื่น ข้อความและหลอดจะหายไปทันทีพร้อมรีเซ็ตค่าชาร์จ ไม่เกะกะสายตา

2. **กด Shift เพื่อชาร์จพลัง (Shift-to-Charge 5-Step Safety Lock):**
   - ใช้ระบบตรวจจับจังหวะกด-ปล่อย (`Edge Detection` ผ่าน `minecraft.custom:minecraft.sneak_time`)
   - เมื่อถือขวานและกด `Shift` ย้ำๆ หลอดพลังงานจะเพิ่มขึ้นทีละ **+20%** (กด 5 ครั้งครบ 100%)
   - แสดงความคืบหน้าแบบเรียลไทม์บน Actionbar: `⚡ [Overdose] [■■■■░░░░░░] 40%`

3. **เมื่อพลังงานเต็ม 100% (`ACTIVE` Mode & Dual Execution):**
   - หน้าจอจะขึ้นเตือน: `⚡ [Overdose] 🪓 ACTIVE! Chop to Fell Tree! [■■■■■■■■■■] 100% ⚡` พร้อมเสียง `block.beacon.activate` และพาร์ติเคิลประกายไฟ
   - **รองรับวิธีสั่งโค่นต้นไม้ทั้ง 2 รูปแบบ:**
     1. **ตัดท่อนไม้ (Left-Click Break):** ตัดไม้ท่อนใดก็ได้ ต้นไม้ทั้งต้นจะล้มลงมาทันที *(รองรับโหมด Survival ผ่าน Scoreboard `minecraft.mined` 20 ชนิด)*
     2. **คลิกขวาที่ท่อนไม้ (Right-Click Axe Raycast):** เล็งที่ท่อนไม้แล้วคลิกขวาเพื่อยิง Raycast จากระดับสายตาและโค่นต้นไม้ทันที *(ใช้ได้ทั้ง **Survival** และ **Creative Mode**!)*
   - **อัลกอริทึมกวาดพื้นที่ `9×9×37` บล็อก:** สแกนแนวราบ `9×9` บล็อก และไต่ระดับความสูงขึ้นไปสูงสุด `37` ชั้น ล้มลงมาทั้งต้นตั้งแต่โคนต้นยันยอดกิ่งไม้ที่ซ่อนอยู่ในพุ่มใบไม้
   - **รองรับไม้ทุกชนิดใน Java 26.3:** `Oak`, `Spruce`, `Birch`, `Jungle`, `Acacia`, `Dark Oak`, `Mangrove`, `Cherry`, `Poplar`, `Crimson Stem`, และ `Warped Stem`

---

## 📦 โครงสร้างไฟล์ (Technical File Structure)

```text
overdose/
├── pack.mcmeta                        # ข้อมูลแพ็กเกจ (Format 121, MC Java 26.3)
├── README.md                          # คู่มือและรายละเอียดเทคนิคของโมดูล
└── data/
    ├── minecraft/tags/function/
    │   ├── load.json                  # เรียก overdose:load เมื่อโหลดโลก
    │   └── tick.json                  # เรียก overdose:tick ทุก Tick (20Hz)
    └── overdose/
        ├── advancement/
        │   └── mine_log.json          # Advancement ตรวจจับการตัดไม้
        └── function/
            ├── load.mcfunction        # สร้าง Scoreboard Objectives ทั้งหมด
            ├── tick.mcfunction        # ลูปหลัก 20Hz ตรวจจับขวาน, การย่อ, และการตัดไม้
            ├── check_axe.mcfunction   # ตรวจสอบการถือขวานในมือหลัก/มือรอง
            ├── sneak_detect.mcfunction# ตรวจจับจังหวะกด Shift แบบ Edge-Trigger
            ├── on_sneak_press.mcfunction # เพิ่มค่าชาร์จ +20% ต่อการกด Shift 1 ครั้ง
            ├── show_bar.mcfunction    # แสดงผล Actionbar HUD ตามระดับพลังงาน
            ├── trigger_mine.mcfunction# จัดการเมื่อผู้เล่นขุดท่อนไม้สำเร็จ
            ├── trigger_use.mcfunction # จัดการเมื่อผู้เล่นคลิกขวาด้วยขวาน
            ├── find_tree_ray.mcfunction # ยิง Raycast จากสายตาหาท่อนไม้เป้าหมาย
            └── start_felling.mcfunction # เริ่มกระบวนการโค่นต้นไม้ 9x9x37 บล็อก
```

---

## 🚀 วิธีติดตั้งและใช้งาน (Installation)

1. คัดลอกโฟลเดอร์ `overdose` ไปวางไว้ในโฟลเดอร์ `datapacks` ของเซฟเกม:
   `.minecraft\saves\<ชื่อโลกของคุณ>\datapacks\`
2. พิมพ์คำสั่งในเกม:
   `/reload`
3. ถือขวานในมือ จะเห็นข้อความ `[Overdose] 🪓 Shift to activate` ทันที!
