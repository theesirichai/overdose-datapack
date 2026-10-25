# 🛡️ Overdose — 100% Vanilla Invisible Armor Data Pack (Java Edition 26.3)

**Author / Vibe Director:** `teamthee` ([@theesirichai](https://github.com/theesirichai))  
**Project Type:** ✨ **100% Vibe Coded Project** (Human Game UX Direction × AI Agentic Engineering)  
**Minecraft Version:** Java Edition 26.3 (*Wilderness Bound* • `pack_format: 121`)  
**Folder:** `overdose-armor`

---

## ✨ เกี่ยวกับโปรเจกต์ (Vibe Code Overview)

**Overdose: Invisible Armor** เป็นโมดูล Data Pack ที่พัฒนาขึ้นด้วยแนวคิด **Vibe Coding** เพื่อตอบโจทย์ผู้เล่นที่ต้องการโชว์สกินตัวละครแบบเต็ม 100% โดยไม่เสียค่าพลังป้องกันของชุดเกราะ และไม่ต้องบังคับให้คนในเซิร์ฟเวอร์ลง Mod หรือ Resource Pack เสริม ระบบนี้ใช้ฟีเจอร์ **Item Data Components (`minecraft:equippable`)** ของตัวเกมในการซ่อนเฉพาะโมเดล 3D บนตัวผู้เล่น พร้อมระบบคีย์ลัดท่าทางในเกม (ก้มมองพื้น + กด `Shift` 2 ครั้ง) และระบบคืนค่าเกราะอัตโนมัติเมื่อถอดเก็บ

---

## 🛡️ คุณสมบัติและรายละเอียดระบบ (Features & Mechanics)

1. **ซ่อนชุดเกราะโดยไม่เสียพลังป้องกัน (100% Vanilla Data Component Invisible Armor):**
   - ใช้ `item_modifier` ปรับค่า `asset_id` ในคอมโพเนนต์ `minecraft:equippable` ให้เป็น `overdose_armor:invisible` เพื่อซ่อนเฉพาะโมเดล 3D ของชุดเกราะที่สวมใส่อยู่บนตัวละคร
   - **ค่าพลังป้องกัน (`Armor` / `Toughness`), `Knockback Resistance`, `Enchantments`, `Armor Trims`, สีชุดหนังย้อมสี, ชื่อไอเทม และความทนทาน (`Durability`) ยังคงทำงานครบ 100%**
   - ไอคอนชุดเกราะในช่องสวมใส่เวลาเปิดกระเป๋า (`E`) ยังคงมองเห็นได้ตามปกติ ทำให้รู้ตลอดเวลาว่ากำลังใส่เกราะอะไรอยู่
   - รองรับชุดเกราะทุกชนิดใน **Minecraft 26.3**: **Leather, Copper, Chainmail, Iron, Golden, Diamond, Netherite, Turtle Helmet และปีก Elytra**

2. **ควบคุมได้ 2 รูปแบบ ทั้งคีย์ลัดท่าทางในเกม (In-Game Gesture) และเมนูแชท (Interactive Menu):**
   - **วิธีที่ 1: คีย์ลัดท่าทางในเกม (ไม่ต้องพิมพ์คำสั่ง!)**
     - **ก้มหน้ามองพื้นสุด (มองที่เท้าตัวเอง มุมก้ม `75°–90°`)** แล้วกด **ย่อ (`Shift`) 2 ครั้งติดกันภายใน 15 Tick** *(หรือกด `Shift ค้าง + กระโดด Spacebar`)*
     - เมื่อก้มหน้าแล้วกด `Shift` ครั้งแรก จะมีแถบแจ้งเตือนขึ้นบน Actionbar บอกสถานะปัจจุบัน และพอกดซ้ำจะสลับ **ซ่อนเกราะทั้งหมด (`HIDDEN`)** ⇄ **แสดงเกราะทั้งหมด (`VISIBLE`)** ทันที พร้อมเสียง Chime และละออง Particle!
   - **วิธีที่ 2: เมนูตั้งค่าแบบคลิกได้ในแชท (แยกชิ้นส่วนได้อิสระ ไม่ต้องใช้สิทธิ์ OP)**
     - พิมพ์ `/trigger od_armor_menu` เพื่อเปิดหน้าต่างควบคุมแบบคลิกเมาส์ได้ทันที:
       - สลับซ่อน/แสดงเกราะทั้งหมดในคลิกเดียว (`/trigger od_armor`)
       - **เลือกซ่อนหรือแสดงแยกทีละชิ้นได้อิสระ:**
         - 🎩 หมวก (`Helmet` / `Turtle Helmet`) — `/trigger od_hide_head`
         - 👕 เสื้อเกราะ / ปีก (`Chestplate` / `Elytra`) — `/trigger od_hide_chest`
         - 👖 กางเกง (`Leggings`) — `/trigger od_hide_legs`
         - 🥾 รองเท้า (`Boots`) — `/trigger od_hide_feet`
       - เปิด/ปิด คีย์ลัดก้มหน้ากด Shift (`/trigger od_armor_gest`)
       - เปิด/ปิด เสียงและพาร์ติเคิลเอฟเฟกต์ (`/trigger od_armor_sfx`)

3. **Smart Auto-Restore เมื่อถอดชุดเกราะ:**
   - เมื่อถอดชุดเกราะออกจากตัวมาเก็บไว้ในกระเป๋า (`Inventory` / `Hotbar` / `Offhand`) หรือโยนลงพื้น (`@e[type=item]`) ระบบจะตรวจจับแท็ก `od_hidden:1b` และคืนค่า `asset_id` ดั้งเดิมของวัสดุเกราะแต่ละชนิดให้กลับมาแสดงผล 3D ปกติโดยอัตโนมัติ (สามารถนำไปวางโชว์บน Armor Stand หรือให้เพื่อนต่อได้โดยไม่บั๊ก)

---

## 📦 โครงสร้างไฟล์ (Technical File Structure)

```text
overdose-armor/
├── pack.mcmeta                # ข้อมูลแพ็กเกจ (Format 121, MC Java 26.3)
├── pack.png                   # ไอคอนภาพประจำตัว Data Pack
├── README.md                  # คู่มือและรายละเอียดเทคนิคของโมดูล
└── data/
    ├── minecraft/
    │   └── tags/function/
    │       ├── load.json      # เรียก overdose_armor:load เมื่อเริ่มเกม
    │       └── tick.json      # เรียก overdose_armor:tick ทุก Tick (20Hz)
    └── overdose_armor/
        ├── tags/item/         # แท็กชุดเกราะแต่ละส่วน (Head, Chest/Elytra, Legs, Feet, Copper)
        ├── item_modifier/     # ตัวจัดการ Data Component (equippable asset_id & restore)
        └── function/
            ├── load.mcfunction
            ├── tick.mcfunction
            ├── player/        # ตรวจสอบผู้เล่น, คีย์ลัดก้มหน้า+Shift และอัปเดตช่องเกราะ
            ├── restore/       # คืนค่าชุดเกราะอัตโนมัติเมื่อถอดเก็บเข้ากระเป๋าหรือโยนลงพื้น
            └── trigger/       # คำสั่ง /trigger และเมนู Interactive UI ในแชท
```

---

## 🚀 วิธีติดตั้งและใช้งาน (Installation)

1. คัดลอกโฟลเดอร์ `overdose-armor` ไปวางไว้ในโฟลเดอร์ `datapacks` ของเซฟเกมที่คุณต้องการเล่น:
   - โฟลเดอร์เซฟเกม: `.minecraft\saves\<ชื่อโลกของคุณ>\datapacks\`
2. เข้าเกม หรือหากอยู่ในเกมอยู่แล้วให้พิมพ์คำสั่ง:
   `/reload`
3. จะมีข้อความแจ้งเตือนขึ้นว่า:
   `[Overdose] Invisible Armor (Java 26.3) loaded! by teamthee - [Armor Menu]`
4. สวมใส่ชุดเกราะใดก็ได้ เกราะจะถูกซ่อนให้อัตโนมัติ และสามารถสลับเปิด-ปิดได้ทุกเมื่อด้วย **ก้มหน้าสุด + กด Shift 2 ครั้ง** หรือพิมพ์ `/trigger od_armor_menu`!
