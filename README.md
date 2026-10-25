<div align="center">

# ⚡ OVERDOSE // DATA PACK SUITE

**Tactical Quality-of-Life Data Packs for Minecraft: Java Edition 26.3 (*Wilderness Bound*)**  
*100% Pure Vanilla Mechanics • Zero Client Mods • Zero Resource Packs Required*

[![Minecraft](https://img.shields.io/badge/Minecraft-Java_26.3-c0392b?style=for-the-badge&logo=minecraft&logoColor=white)](#)
[![Pack Format](https://img.shields.io/badge/Pack_Format-121-e67e22?style=for-the-badge)](#)
[![Vibe Code](https://img.shields.io/badge/Project-100%25_Vibe_Coded_%E2%9C%A8-8e44ad?style=for-the-badge)](#)
[![Side](https://img.shields.io/badge/Side-Server_%26_Singleplayer-27ae60?style=for-the-badge)](#)
[![Author](https://img.shields.io/badge/Architect-@teamthee-00d2d3?style=for-the-badge)](https://github.com/theesirichai)

</div>

---

> [!IMPORTANT]
> ### ✨ VIBE CODE PROJECT // โปรเจกต์นี้สร้างด้วยแนวคิด Vibe Coding 100%
> **OVERDOSE Data Pack Suite** เป็นโปรเจกต์ที่พัฒนาขึ้นด้วยกระบวนการ **Vibe Coding** เต็มรูปแบบ — คือการขับเคลื่อนด้วย **ไอเดีย การออกแบบประสบการณ์ผู้เล่น (Game UX) และการกำกับทิศทางระบบ (Prompt Engineering & System Direction)** โดย **[@teamthee](https://github.com/theesirichai)** ร่วมกับ AI Agent ในการสังเคราะห์โครงสร้างไฟล์ `.mcfunction`, ระบบ Scoreboard State Machine, อัลกอริทึม Raycast 3 มิติ และ Data Component Item Modifiers ของ Minecraft 26.3 ออกมาเป็นโค้ดที่พร้อมใช้งานจริงโดยไม่ต้องแตะ Mod แม้แต่ตัวเดียว

---

## 🧭 Overview // ภาพรวมโปรเจกต์

**OVERDOSE** คือชุด Data Pack สาย **Vanilla+** ที่ออกแบบมาเพื่อยกระดับประสบการณ์การเล่น **Minecraft: Java Edition 26.3 (*Wilderness Bound*)** โดยยึดหลักการ **"ไม่รกหน้าจอ ไม่ทำลายสมดุลเกม และไม่ต้องลงม็อดหรือรีซอร์สแพ็กเสริม"** ควบคุมทุกอย่างผ่านระบบ Gesture ในเกม (การขยับตัว/ก้มหน้า/กด Shift) และ Interactive UI บนช่องแชท

| โมดูล (Folder) | ชื่อระบบ | หน้าที่หลัก | วิธีเรียกใช้งาน |
| :--- | :--- | :--- | :--- |
| 📁 **[`overdose`](./overdose)** | **Overdose: Tree Feller** | ระบบโค่นต้นไม้ทั้งต้นในครั้งเดียว (กวาดพื้นที่ `9×9×37` บล็อก) พร้อมระบบชาร์จพลังงานกันลั่น | ถือขวาน + ย่อ `Shift` ย้ำๆ ให้เต็ม `100%` แล้วตัดไม้หรือคลิกขวา |
| 📁 **[`overdose-armor`](./overdose-armor)** | **Overdose: Invisible Armor** | ซ่อนโมเดล 3D ชุดเกราะบนตัวละครเพื่อโชว์สกิน 100% โดยค่าพลังป้องกันและ Enchant อยู่ครบ | ก้มมองพื้นสุด + กด `Shift` 2 ครั้ง หรือพิมพ์ `/trigger od_armor_menu` |

---

## 🧠 Vibe Code Engineering Breakdown // เจาะลึกรายละเอียดการออกแบบและเทคนิคเบื้องหลัง

เบื้องหลังการทำ **Vibe Coding** ของโปรเจกต์นี้ ไม่ได้เป็นเพียงการสั่งให้เจนคำสั่งพื้นฐาน แต่เป็นการออกแบบโจทย์แก้ปัญหาข้อจำกัดของ Vanilla Minecraft ให้เนียนเหมือนลง Mod:

| โจทย์การออกแบบ (Design Prompt & Vibe) | โซลูชันทางเทคนิคที่สังเคราะห์ออกมา (Vanilla Technical Execution) |
| :--- | :--- |
| **1. "อยากได้ระบบตัดไม้ที่ต้องตั้งใจชาร์จก่อน เพื่อไม่ให้เผลอทุบบ้านไม้ตัวเองพัง"** | สร้างระบบ **Edge-Triggered Sneak Detector** (`sneak_detect.mcfunction`) ตรวจจับจังหวะกด-ปล่อยปุ่ม `Shift` ขณะถือขวาน (`#minecraft:axes`) เพิ่มค่า `overdose.charge` ทีละ 20% จนครบ 100% และรีเซ็ตเป็น 0 ทันทีเมื่อสลับไปถือไอเทมอื่น |
| **2. "อยากให้โค่นต้นไม้ได้ทั้งโหมด Survival และ Creative รวมถึงต้นไม้ใหญ่ที่มีกิ่งซ่อนในใบไม้"** | ผสาน 2 ระบบตรวจจับ: **Mining Scoreboard** (ตรวจจับการขุดไม้ 20 ชนิดใน Survival) + **Right-Click Axe Raycast** (ยิงลำแสงจากระดับสายตาผู้เล่นทีละ `0.5` บล็อกเพื่อหาพิกัดต้นไม้เมื่อคลิกขวาด้วยขวาน) แล้วรันอัลกอริทึม **9×9×37 Wave-Based Canopy Scan** ไต่ระดับความสูง 37 ชั้นเพื่อเก็บกิ่งก้านบนยอดไม้จนเกลี้ยง |
| **3. "อยากซ่อนชุดเกราะโชว์สกินตัวเองแบบ 100% Vanilla โดยไม่ใช้ Resource Pack และไอคอนในกระเป๋าต้องไม่หาย"** | ใช้ฟีเจอร์ใหม่ของระบบ **Item Data Components (`minecraft:equippable`)** ผ่านไฟล์ `item_modifier` โดยเปลี่ยนเฉพาะ `asset_id` ของโมเดลที่สวมใส่ให้เป็น `overdose_armor:invisible` (ซึ่งไม่มีเท็กซ์เจอร์ 3D บนตัวละคร) ส่งผลให้ **โมเดลเกราะบนตัวหายไป แต่ไอคอนในช่องสวมใส่ ค่าพลังป้องกัน Enchantment และ Armor Trim ยังอยู่ครบ 100%** |
| **4. "ไม่อยากพิมพ์คำสั่งเวลาเล่น อยากกดสลับซ่อน/โชว์เกราะด้วยท่าทางในเกมได้เลย"** | ออกแบบระบบ **Gesture Shortcut** (`gesture_check.mcfunction`) ตรวจสอบมุมก้มเงยของกล้องผู้เล่น (`x_rotation=75..90` คือมองพื้นสุดที่เท้าตัวเอง) ร่วมกับตัวนับจังหวะกด `Shift` 2 ครั้งติดกันภายใน 15 Tick (หรือ `Shift + กระโดด`) เพื่อสลับสถานะเกราะพร้อมเสียง Chime และละออง Particle |
| **5. "ถ้าถอดเกราะออกหรือโยนให้เพื่อน เกราะต้องกลับมามองเห็นได้ตามปกติ ไม่บั๊กติดสถานะล่องหน"** | สร้างระบบ **Smart Auto-Restore** (`restore/hotbar`, `inventory`, `offhand`, `dropped`) สแกนหาไอเทมที่มีแท็ก `od_hidden:1b` นอกช่องสวมใส่ทุกๆ Tick และคืนค่า `asset_id` ดั้งเดิมของวัสดุเกราะแต่ละชนิด (รวมถึง **Copper Armor** และ **Elytra**) กลับคืนให้อัตโนมัติ |

---

## 🪓 01 // `overdose` — Tactical Tree Feller

> **"ถือขวาน ชาร์จพลัง แล้วโค่นต้นไม้ยักษ์ลงมาทั้งต้นในพริบตา"**

ระบบตัดไม้แบบลูกโซ่ที่ออกแบบมาให้มี **Safety Charge Lock** ป้องกันการเผลอพังบ้านไม้ตัวเองโดยไม่ตั้งใจ จะทำงานเฉพาะตอนที่คุณตั้งใจชาร์จพลังจนเต็ม 100% เท่านั้น

### ✨ จุดเด่นและรายละเอียดระบบ (Features & Mechanics)

- **🎯 Context-Aware HUD (แสดงผลเฉพาะตอนถือขวาน):**
  - ตรวจสอบไอเทมในมือหลัก (`weapon.mainhand`) และมือรอง (`weapon.offhand`) ด้วยแท็ก `#minecraft:axes`
  - เมื่อถือขวาน จะแสดงข้อความที่ Actionbar ว่า `[Overdose] 🪓 Shift to activate`
  - เมื่อสลับไปถือไอเทมอื่น หลอดพลังงานและข้อความจะซ่อนตัวเองอัตโนมัติ และรีเซ็ตค่าชาร์จทันที
- **⚡ Shift-to-Charge Mechanic (ระบบชาร์จพลังงาน 5 จังหวะ):**
  - กดปุ่ม `Shift` (ย่อตัว) ย้ำๆ 5 ครั้ง ขณะถือขวาน หลอดพลังงานจะเพิ่มขึ้นครั้งละ **+20%**
  - เมื่อครบ **100%** จะเข้าสู่โหมด **`ACTIVE`** พร้อมเสียง `block.beacon.activate`, `entity.experience_orb.pickup` และพาร์ติเคิลประกายไฟ
- **🔥 Dual Execution Modes (รองรับการโค่นไม้ 2 รูปแบบ):**
  1. **Left-Click Break (ขุดทำลายท่อนไม้):** ตัดไม้ท่อนใดก็ได้ ต้นไม้ทั้งต้นจะพังทลายลงมาเป็นไอเทมทันที *(สำหรับโหมด Survival)*
  2. **Right-Click Raycast (คลิกขวาด้วยขวาน):** เล็งเป้าไปที่ท่อนไม้ในระยะแล้วคลิกขวาเพื่อสั่งโค่นต้นไม้ทันที *(ใช้ได้ทั้งโหมด **Survival** และ **Creative**!)*
- **🌲 9×9×37 Canopy Sweep & Supported Woods:**
  - สแกนพื้นที่รอบแกนลำต้นขนาด **9×9 บล็อก** และไต่ระดับความสูงขึ้นไปสูงสุด **37 บล็อก** เพื่อทำลายทั้งลำต้นหลักและกิ่งไม้ที่ซ่อนอยู่ในพุ่มใบไม้
  - **รองรับไม้และลำต้นทุกชนิดใน Java 26.3:** `Oak`, `Spruce`, `Birch`, `Jungle`, `Acacia`, `Dark Oak`, `Mangrove`, `Cherry`, `Poplar`, `Crimson Stem`, และ `Warped Stem` (รวมถึงบล็อกประเภท `_wood` เปลือกไม้รอบด้าน)
  - **รองรับขวานทุกประเภท:** `Wooden`, `Stone`, `Iron`, `Golden`, `Copper`, `Diamond`, และ `Netherite Axe`

### 🖥️ In-Game Actionbar Preview

```text
[ Idle (ถือขวาน) ]      [Overdose] 🪓 Shift to activate
[ Charging (40%) ]      ⚡ [Overdose] [■■■■░░░░░░] 40%
[ ACTIVE (100%)  ]      ⚡ [Overdose] 🪓 ACTIVE! Chop to Fell Tree! [■■■■■■■■■■] 100% ⚡
```

---

## 🛡️ 02 // `overdose-armor` — 100% Vanilla Invisible Armor

> **"โชว์สกินสุดเท่ได้เต็ม 100% โดยไม่ต้องถอดเกราะทิ้ง"**

ซ่อนเฉพาะโมเดล 3D ของชุดเกราะที่สวมอยู่บนตัวผู้เล่นด้วยระบบ Data Component แท้ของตัวเกม **ไม่ต้องใช้ Resource Pack** และผู้เล่นทุกคนในเซิร์ฟเวอร์จะมองเห็นสกินของคุณตรงกันทั้งหมด

### ✨ จุดเด่นและรายละเอียดระบบ (Features & Mechanics)

- **💎 100% Stats Preserved (เกราะล่องหนแต่พลังป้องกันอยู่ครบ):**
  - ค่าพลังป้องกัน (`Armor` / `Armor Toughness`), `Knockback Resistance`, `Enchantments`, `Armor Trims`, สีชุดหนังย้อมสี, ชื่อไอเทม และความทนทาน (`Durability`) ทำงานปกติ 100%
  - **ไอคอนในกระเป๋าไม่หาย:** เวลาเปิดหน้าต่าง Inventory (`E`) คุณยังมองเห็นไอคอนชุดเกราะในช่องสวมใส่ตามปกติ ไม่สับสนว่ากำลังใส่เกราะอะไรอยู่
  - **รองรับชุดเกราะครบทุกชนิดใน Java 26.3:** `Leather`, `Copper`, `Chainmail`, `Iron`, `Golden`, `Diamond`, `Netherite`, `Turtle Helmet`, และปีก `Elytra`
- **🤸 In-Game Gesture Shortcut (สลับซ่อน/โชว์เกราะได้โดยไม่ต้องพิมพ์คำสั่ง!):**
  - **ก้มหน้ามองพื้นสุด (มองที่เท้าตัวเอง `Pitch 75°–90°`)** แล้วกด **`Shift` 2 ครั้งติดกัน** *(หรือกด `Shift ค้าง + กระโดด Spacebar`)*
  - กดครั้งแรกจะมีข้อความบอกสถานะบน Actionbar และเมื่อกดซ้ำจะสลับ **ซ่อนเกราะทั้งหมด (`HIDDEN`)** ⇄ **แสดงเกราะทั้งหมด (`VISIBLE`)** ทันทีพร้อมเสียง Chime และละออง Particle!
- **🎛️ Per-Slot Interactive Chat Menu (เลือกซ่อนแยกชิ้นได้อย่างอิสระ):**
  - พิมพ์ `/trigger od_armor_menu` เพื่อเปิดแผงควบคุมแบบคลิกเมาส์ได้บนแชท (ผู้เล่นทั่วไปใช้ได้ทันที ไม่ต้องมีสิทธิ์ OP)
  - เลือกซ่อนเฉพาะหมวกเพื่อโชว์หัวสกิน หรือซ่อนเกราะอกแต่โชว์รองเท้าได้ตามใจชอบ
- **♻️ Smart Auto-Restore (คืนค่าโมเดลอัตโนมัติเมื่อถอดเกราะ):**
  - ทันทีที่ถอดชุดเกราะมาไว้ในกระเป๋า (`Inventory slots 9–35` / `Hotbar slots 0–8` / `Offhand`) หรือโยนลงพื้นเป็นไอเทม (`@e[type=item]`) ระบบจะคืนค่าโมเดล 3D กลับเป็นปกติให้อัตโนมัติ สามารถนำไปตั้งโชว์บน Armor Stand หรือส่งต่อให้เพื่อนได้โดยไม่บั๊ก

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
├── README.md                          # เอกสารภาพรวมและเบื้องหลังโปรเจกต์ Vibe Code
├── overdose/                          # 🪓 Data Pack #1: Overdose Tree Feller
│   ├── pack.mcmeta                    # Pack Format 121 (MC Java 26.3)
│   ├── README.md                      # คู่มือและรายละเอียดเทคนิคของโมดูล Tree Feller
│   └── data/
│       ├── minecraft/tags/function/   # load.json & tick.json hooks (20Hz loop)
│       └── overdose/
│           ├── advancement/           # mine_log.json advancement trigger
│           └── function/              # 25 .mcfunction files (Shift charge, Raycast, 9x9x37 Feller)
└── overdose-armor/                    # 🛡️ Data Pack #2: Overdose Invisible Armor
    ├── pack.mcmeta                    # Pack Format 121 (MC Java 26.3)
    ├── pack.png                       # ไอคอนประจำตัว Data Pack
    ├── README.md                      # คู่มือและรายละเอียดเทคนิคของโมดูล Invisible Armor
    └── data/
        ├── minecraft/tags/function/   # load.json & tick.json hooks (20Hz loop)
        └── overdose_armor/
            ├── tags/item/             # แท็กแยกประเภทชุดเกราะแต่ละชิ้น (รวมชุดเกราะทองแดง Copper)
            ├── item_modifier/         # 5 Item Modifiers จัดการ Equippable Component (Hide & Restore)
            └── function/
                ├── player/            # ตรวจจับ Gesture ก้มหน้า+Shift และอัปเดตสถานะเกราะรายชิ้น
                ├── restore/           # คืนค่าเกราะอัตโนมัติเมื่อถอดเก็บ (Hotbar/Inventory/Offhand) หรือโยนทิ้ง
                └── trigger/           # ระบบคำสั่ง /trigger ทั้ง 11 ไฟล์ และ Interactive Chat Menu
```

---

## 🚀 วิธีติดตั้ง (Installation Guide)

คุณสามารถเลือกดาวน์โหลดไฟล์ `.zip` จากหน้า **[Releases](https://github.com/theesirichai/overdose-datapack/releases/tag/v1.0.0)** ไปวางในโฟลเดอร์ `datapacks` ได้ทันที หรือจะ Clone จาก Repository นี้โดยตรงก็ได้เช่นกัน:

### วิธีที่ 1: ติดตั้งผ่านไฟล์ Release `.zip` (แนะนำ — ไม่ต้องแตกไฟล์)
1. ดาวน์โหลดไฟล์จากหน้า **[Release v1.0.0](https://github.com/theesirichai/overdose-datapack/releases/tag/v1.0.0)**:
   - `overdose-tree-feller-v1.0.0-mc26.3.zip`
   - `overdose-invisible-armor-v1.0.0-mc26.3.zip`
2. นำไฟล์ `.zip` ไปวางในโฟลเดอร์ `.minecraft/saves/<ชื่อโลกของคุณ>/datapacks/` ได้เลยโดยไม่ต้องแตกไฟล์
3. เข้าเกมแล้วพิมพ์คำสั่ง `/reload`

### วิธีที่ 2: ติดตั้งผ่าน Git Clone (สำหรับนักพัฒนา / แก้ไขโค้ดต่อ)
1. Clone Repository ลงเครื่อง:
   ```bash
   git clone https://github.com/theesirichai/overdose-datapack.git
   ```
2. คัดลอกโฟลเดอร์ **`overdose`** และ **`overdose-armor`** ไปวางไว้ในโฟลเดอร์ `datapacks` ของโลก (World) ที่คุณเล่น:
   ```text
   .minecraft/saves/<ชื่อโลกของคุณ>/datapacks/
   ├── overdose/
   └── overdose-armor/
   ```
3. เข้าสู่โลกในเกม แล้วพิมพ์คำสั่ง `/reload`

---

<div align="center">

**✨ 100% Vibe Coded Project** • Directed & Engineered by **Thee Dumrongsirichai ([@theesirichai](https://github.com/theesirichai))**  
`TT // STUDIO — LABS // MINECRAFT VIBE CODE DIVISION`

</div>
