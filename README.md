<div align="center">

# ⚡ OVERDOSE // DATA PACK SUITE

**Tactical Quality-of-Life Data Packs for Minecraft: Java Edition 26.3 (*Wilderness Bound*)**  
*100% Pure Vanilla Mechanics • Zero Client Mods • Zero Resource Packs Required*

[![Minecraft](https://img.shields.io/badge/Minecraft-Java_26.3-c0392b?style=for-the-badge&logo=minecraft&logoColor=white)](#)
[![Pack Format](https://img.shields.io/badge/Pack_Format-121-e67e22?style=for-the-badge)](#)
[![Side](https://img.shields.io/badge/Side-Server_%26_Singleplayer-27ae60?style=for-the-badge)](#)
[![Author](https://img.shields.io/badge/Architect-@teamthee-00d2d3?style=for-the-badge)](https://github.com/theesirichai)

</div>

---

## 🧭 Overview // ภาพรวมโปรเจกต์

**OVERDOSE** คือชุด Data Pack สาย **Vanilla+** ที่ออกแบบมาเพื่อยกระดับประสบการณ์การเล่น Minecraft Java Edition 26.3 โดยยึดหลักการ **"ไม่รกหน้าจอ ไม่ทำลายสมดุลเกม และไม่ต้องลงม็อดหรือรีซอร์สแพ็กเสริม"** ควบคุมทุกอย่างผ่านระบบ Gesture ในเกม (การขยับตัว/กด Shift) และ Interactive UI บนช่องแชท

| โมดูล (Folder) | ชื่อระบบ | หน้าที่หลัก | วิธีเรียกใช้งาน |
| :--- | :--- | :--- | :--- |
| 📁 **[`overdose`](./overdose)** | **Overdose: Tree Feller** | ระบบโค่นต้นไม้ทั้งต้นในครั้งเดียว (กวาดพื้นที่ `9×9×37` บล็อก) พร้อมระบบชาร์จพลังงานกันลั่น | ถือขวาน + ย่อ `Shift` ย้ำๆ ให้เต็ม `100%` แล้วตัดไม้หรือคลิกขวา |
| 📁 **[`overdose-armor`](./overdose-armor)** | **Overdose: Invisible Armor** | ซ่อนโมเดล 3D ชุดเกราะบนตัวละครเพื่อโชว์สกิน 100% โดยค่าพลังป้องกันและ Enchant อยู่ครบ | ก้มมองพื้นสุด + กด `Shift` 2 ครั้ง หรือพิมพ์ `/trigger od_armor_menu` |

---

## 🪓 01 // `overdose` — Tactical Tree Feller

> **"ถือขวาน ชาร์จพลัง แล้วโค่นต้นไม้ยักษ์ลงมาทั้งต้นในพริบตา"**

ระบบตัดไม้แบบลูกโซ่ที่ออกแบบมาให้มี **Safety Charge Lock** ป้องกันการเผลอพังบ้านไม้ตัวเองโดยไม่ตั้งใจ จะทำงานเฉพาะตอนที่คุณตั้งใจชาร์จพลังจนเต็ม 100% เท่านั้น

### ✨ จุดเด่น (Key Features)

- **🎯 Context-Aware HUD (แสดงผลเฉพาะตอนถือขวาน):**
  - เมื่อถือขวานในมือหลักหรือมือรอง จะแสดงสถานะที่ Actionbar ทันที
  - เมื่อสลับไปถือไอเทมอื่น หลอดพลังงานและข้อความจะซ่อนตัวเองอัตโนมัติ ไม่เกะกะสายตา
- **⚡ Shift-to-Charge Mechanic (ระบบชาร์จพลังงาน 5 จังหวะ):**
  - กดปุ่ม `Shift` (ย่อตัว) ย้ำๆ ขณะถือขวาน หลอดพลังงานจะเพิ่มขึ้นครั้งละ **+20%**
  - เมื่อครบ **100%** จะเข้าสู่โหมด **`ACTIVE`** พร้อมเสียงเอฟเฟกต์และประกายไฟรอบตัว
- **🔥 Dual Execution Modes (รองรับการโค่นไม้ 2 รูปแบบ):**
  1. **Left-Click Break (ขุดทำลายท่อนไม้):** ตัดไม้ท่อนใดก็ได้ ต้นไม้ทั้งต้นจะพังทลายลงมาทันที *(Survival Mode)*
  2. **Right-Click Raycast (คลิกขวาด้วยขวาน):** เล็งที่ท่อนไม้แล้วคลิกขวาเพื่อโค่นต้นไม้ทันที ใช้ได้ทั้ง **Survival** และ **Creative Mode**!
- **🌲 9×9×37 Canopy Sweep:**
  - อัลกอริทึมไล่ระดับความสูงและสแกนกิ่งก้านในรัศมี **9×9 บล็อก สูงสุด 37 ชั้น** เก็บงานครบตั้งแต่โคนต้นยันกิ่งไม้ที่ซ่อนอยู่ในพุ่มใบไม้
  - รองรับไม้ทุกชนิดใน **Java 26.3**: `Oak`, `Spruce`, `Birch`, `Jungle`, `Acacia`, `Dark Oak`, `Mangrove`, `Cherry`, `Poplar`, `Crimson Stem`, และ `Warped Stem`

### 🖥️ In-Game Actionbar Preview

```text
[ Idle (ถือขวาน) ]      [Overdose] 🪓 Shift to activate
[ Charging (40%) ]      ⚡ [Overdose] [■■■■░░░░░░] 40%
[ ACTIVE (100%)  ]      ⚡ [Overdose] 🪓 ACTIVE! Chop to Fell Tree! [■■■■■■■■■■] 100% ⚡
```

---

## 🛡️ 02 // `overdose-armor` — 100% Vanilla Invisible Armor

> **"โชว์สกินสุดเท่ได้เต็ม 100% โดยไม่ต้องถอดเกราะทิ้ง"**

ใช้ความสามารถของระบบ **Item Data Components (`minecraft:equippable`)** ยุคใหม่ในการซ่อนเฉพาะโมเดล 3D ของชุดเกราะที่สวมอยู่บนตัวผู้เล่น โดย**ไม่ต้องใช้ Resource Pack** และผู้เล่นทุกคนในเซิร์ฟเวอร์จะมองเห็นสกินของคุณตรงกันทั้งหมด

### ✨ จุดเด่น (Key Features)

- **💎 100% Stats Preserved (เกราะล่องหนแต่พลังป้องกันอยู่ครบ):**
  - ค่าพลังป้องกัน (`Armor` / `Armor Toughness`), `Knockback Resistance`, `Enchantments`, `Armor Trims`, สีชุดหนังย้อมสี, ชื่อไอเทม และความทนทาน (`Durability`) ทำงานปกติ 100%
  - **ไอคอนในกระเป๋าไม่หาย:** เวลาเปิดหน้าต่าง Inventory (`E`) คุณยังมองเห็นไอคอนชุดเกราะในช่องสวมใส่ตามปกติ ไม่สับสนว่าใส่อะไรอยู่
  - รองรับชุดเกราะครบทุกชนิดใน **Java 26.3**: `Leather`, `Copper`, `Chainmail`, `Iron`, `Golden`, `Diamond`, `Netherite`, `Turtle Helmet`, และปีก `Elytra`
- **🤸 In-Game Gesture Shortcut (สลับซ่อน/โชว์เกราะได้โดยไม่ต้องพิมพ์คำสั่ง!):**
  - **ก้มหน้ามองพื้นสุด (มองที่เท้าตัวเอง)** แล้วกด **`Shift` 2 ครั้งติดกัน** *(หรือกด `Shift ค้าง + กระโดด Spacebar`)*
  - กดครั้งแรกจะมีข้อความบอกสถานะบน Actionbar และเมื่อกดซ้ำจะสลับ **ซ่อนเกราะทั้งหมด (`HIDDEN`)** ⇄ **แสดงเกราะทั้งหมด (`VISIBLE`)** ทันทีพร้อมเสียง Chime และละออง Particle!
- **🎛️ Per-Slot Interactive Chat Menu (เลือกซ่อนแยกชิ้นได้อย่างอิสระ):**
  - พิมพ์ `/trigger od_armor_menu` เพื่อเปิดแผงควบคุมแบบคลิกเมาส์ได้บนแชท (ผู้เล่นทั่วไปใช้ได้ทันที ไม่ต้องมีสิทธิ์ OP)
  - เลือกซ่อนเฉพาะหมวกเพื่อโชว์หัวสกิน หรือซ่อนเกราะอกแต่โชว์รองเท้าได้ตามใจชอบ
- **♻️ Smart Auto-Restore (คืนค่าโมเดลอัตโนมัติเมื่อถอดเกราะ):**
  - ทันทีที่ถอดชุดเกราะมาไว้ในกระเป๋า (`Inventory` / `Hotbar` / `Offhand`) หรือโยนลงพื้น ระบบจะคืนค่าโมเดล 3D กลับเป็นปกติให้อัตโนมัติ สามารถนำไปตั้งโชว์บน Armor Stand หรือส่งต่อให้เพื่อนได้โดยไม่บั๊ก

### 🖥️ Interactive Chat UI Preview (`/trigger od_armor_menu`)

```text
========================================
🛡 OVERDOSE INVISIBLE ARMOR 🛡
Minecraft Java Edition 26.3 • by teamthee
========================================
⚡ สถานะหลัก: [ซ่อนเกราะทั้งหมด ✔] [คลิกเพื่อแสดงเกราะทั้งหมด]

🎯 ตั้งค่าแยกชิ้นส่วน (คลิกที่ปุ่มเพื่อเปิด/ปิด):
  🎩 หมวก (Helmet):           [ซ่อนอยู่ HIDDEN ✔]
  👕 เสื้อเกราะ/ปีก (Chest):   [ซ่อนอยู่ HIDDEN ✔]
  👖 กางเกง (Leggings):       [ซ่อนอยู่ HIDDEN ✔]
  🥾 รองเท้า (Boots):          [ซ่อนอยู่ HIDDEN ✔]

⚙ ตั้งค่าระบบเสริม:
  🤸 คีย์ลัดในเกม (ก้มหน้าสุด + Shift 2 ครั้ง): [ON ✔]
  🔊 เสียงและพาร์ติเคิลเอฟเฟกต์:              [ON ✔]
========================================
```

### ⌨️ รายการคำสั่งลัด (`/trigger` Commands — ไม่ต้องใช้สิทธิ์ OP)

| คำสั่ง | การทำงาน |
| :--- | :--- |
| `/trigger od_armor_menu` | เปิดเมนูตั้งค่าแบบคลิกได้ในช่องแชท |
| `/trigger od_armor` | สลับ ซ่อนทั้งหมด (`HIDDEN`) ⇄ แสดงทั้งหมด (`VISIBLE`) |
| `/trigger od_hide_head` | สลับ ซ่อน/แสดง เฉพาะส่วน **หมวก (`Helmet` / `Turtle Helmet`)** |
| `/trigger od_hide_chest` | สลับ ซ่อน/แสดง เฉพาะส่วน **เสื้อเกราะ / ปีก (`Chestplate` / `Elytra`)** |
| `/trigger od_hide_legs` | สลับ ซ่อน/แสดง เฉพาะส่วน **กางเกง (`Leggings`)** |
| `/trigger od_hide_feet` | สลับ ซ่อน/แสดง เฉพาะส่วน **รองเท้า (`Boots`)** |
| `/trigger od_armor_gest` | เปิด/ปิด ระบบคีย์ลัดก้มหน้ามองพื้น + กด `Shift` |
| `/trigger od_armor_sfx` | เปิด/ปิด เสียงประกอบและพาร์ติเคิลเอฟเฟกต์ |

---

## 📂 โครงสร้างโปรเจกต์ (Repository Architecture)

```text
overdose-datapack/
├── README.md                          # เอกสารภาพรวมและคู่มือหลักของโปรเจกต์
├── overdose/                          # 🪓 Data Pack #1: Overdose Tree Feller
│   ├── pack.mcmeta                    # Pack Format 121 (MC Java 26.3)
│   ├── README.md                      # คู่มือเฉพาะของโมดูล Tree Feller
│   └── data/
│       ├── minecraft/tags/function/   # load.json & tick.json hooks
│       └── overdose/
│           ├── advancement/           # ตรวจจับเหตุการณ์การตัดไม้
│           └── function/              # ระบบชาร์จ Shift, Raycast, และ Recursive 9x9x37 Feller
└── overdose-armor/                    # 🛡️ Data Pack #2: Overdose Invisible Armor
    ├── pack.mcmeta                    # Pack Format 121 (MC Java 26.3)
    ├── pack.png                       # ไอคอนประจำตัว Data Pack
    ├── README.md                      # คู่มือเฉพาะของโมดูล Invisible Armor
    └── data/
        ├── minecraft/tags/function/   # load.json & tick.json hooks
        └── overdose_armor/
            ├── tags/item/             # แท็กแยกประเภทชุดเกราะแต่ละชิ้น (รวมชุดเกราะทองแดง Copper)
            ├── item_modifier/         # ตัวจัดการ Equippable Component (Hide & Restore)
            └── function/
                ├── player/            # ตรวจจับ Gesture ก้มหน้า+Shift และอัปเดตสถานะเกราะ
                ├── restore/           # คืนค่าเกราะอัตโนมัติเมื่อถอดเก็บหรือโยนทิ้ง
                └── trigger/           # ระบบคำสั่ง /trigger และ Interactive Chat Menu
```

---

## 🚀 วิธีติดตั้ง (Installation Guide)

คุณสามารถเลือกติดตั้งเฉพาะตัวที่ต้องการ หรือติดตั้งทั้ง **2 โฟลเดอร์** พร้อมกันได้เลย (ทำงานร่วมกันได้ 100% ไม่ชนกัน):

1. ดาวน์โหลดหรือ Clone Repository นี้ลงเครื่อง:
   ```bash
   git clone https://github.com/theesirichai/overdose-datapack.git
   ```
2. คัดลอกโฟลเดอร์ **`overdose`** และ **`overdose-armor`** ไปวางไว้ในโฟลเดอร์ `datapacks` ของโลก (World) ที่คุณเล่น:
   ```text
   .minecraft/saves/<ชื่อโลกของคุณ>/datapacks/
   ├── overdose/
   └── overdose-armor/
   ```
3. เข้าสู่โลกในเกม แล้วพิมพ์คำสั่ง:
   ```mcfunction
   /reload
   ```
4. หากติดตั้งสำเร็จ จะมีข้อความต้อนรับปรากฏขึ้นในแชท:
   - `[Overdose] Tree Feller Data Pack loaded! by teamthee`
   - `[Overdose] Invisible Armor (Java 26.3) loaded! by teamthee - [Armor Menu]`

---

<div align="center">

Crafted with precision by **Thee Dumrongsirichai ([@theesirichai](https://github.com/theesirichai))**  
`TT // STUDIO — LABS // MINECRAFT DATA PACK DIVISION`

</div>
