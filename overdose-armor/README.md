# Overdose - Invisible Armor Data Pack (Java Edition 26.3)
**Author:** teamthee  
**Minecraft Version:** Java Edition 26.3  
**Data Pack Format:** 121 (`min_format: 121`, `max_format: 121`)  
**Folder:** `overdose-armor`

---

## 🛡 คุณสมบัติเด่น (Features)

1. **ซ่อนชุดเกราะโดยไม่เสียพลังป้องกัน (100% Vanilla Invisible Armor):**
   - ซ่อนโมเดล 3D ของชุดเกราะที่สวมใส่อยู่บนตัวละคร เพื่อให้เห็นสกิน (Skin) ของผู้เล่นได้อย่างเต็มที่ โดยไม่ต้องลง Resource Pack หรือ Mod ฝั่งผู้เล่น
   - **ค่าพลังป้องกัน (Armor / Toughness), Enchantments, Armor Trims, สีชุดหนังย้อมสี, ชื่อไอเทม และความทนทาน (Durability) ยังคงทำงานครบ 100%**
   - ไอคอนชุดเกราะในช่องสวมใส่เวลาเปิดกระเป๋า (`E`) ยังคงมองเห็นได้ตามปกติ ทำให้รู้ว่ากำลังใส่เกราะอะไรอยู่
   - รองรับชุดเกราะทุกชนิดใน Minecraft 26.3: **Leather, Copper, Chainmail, Iron, Golden, Diamond, Netherite, Turtle Helmet และปีก Elytra**

2. **วิธีเปิด-ปิดที่คิดมาให้ครบทั้งแบบกดในเกม (In-Game Shortcut) และเมนูคลิกในแชท (Interactive Menu):**
   - **วิธีที่ 1: คีย์ลัดในเกม (ไม่ต้องพิมพ์คำสั่ง!)**
     - **ก้มหน้ามองพื้นสุด (มองที่เท้าตัวเอง)** แล้วกด **ย่อ (`Shift`) 2 ครั้งติดกัน** (หรือกด **`Shift` ค้าง + กระโดด `Spacebar`**)
     - เมื่อก้มหน้าแล้วกด `Shift` ครั้งแรก จะมีแถบแจ้งเตือนขึ้นบน Actionbar บอกสถานะปัจจุบัน และพอกดซ้ำจะสลับ **ซ่อนเกราะทั้งหมด (HIDDEN)** <-> **แสดงเกราะทั้งหมด (VISIBLE)** ทันที พร้อมเสียง Chime และละออง Particle!
   - **วิธีที่ 2: เมนูตั้งค่าแบบคลิกได้ในแชท (แยกชิ้นส่วนได้!)**
     - พิมพ์ `/trigger od_armor_menu` เพื่อเปิดหน้าต่างควบคุมแบบคลิกเมาส์ได้ทันที:
       - สลับซ่อน/แสดงเกราะทั้งหมดในคลิกเดียว (`/trigger od_armor`)
       - **เลือกซ่อนหรือแสดงแยกทีละชิ้นได้อิสระ:**
         - 🎩 หมวก (`Helmet` / `Turtle Helmet`) — `/trigger od_hide_head`
         - 👕 เสื้อเกราะ / ปีก (`Chestplate` / `Elytra`) — `/trigger od_hide_chest`
         - 👖 กางเกง (`Leggings`) — `/trigger od_hide_legs`
         - 🥾 รองเท้า (`Boots`) — `/trigger od_hide_feet`
       - เปิด/ปิด คีย์ลัดก้มหน้ากด Shift (`/trigger od_armor_gest`)
       - เปิด/ปิด เสียงและพาร์ติเคิลเอฟเฟกต์ (`/trigger od_armor_sfx`)

3. **Auto-Restore เมื่อถอดชุดเกราะ:**
   - เมื่อถอดชุดเกราะออกจากตัวมาเก็บไว้ในกระเป๋า (Inventory / Hotbar / Offhand) หรือโยนลงพื้น ระบบจะคืนค่าโมเดลชุดเกราะให้กลับมาแสดงผลปกติโดยอัตโนมัติ (สามารถนำไปวางโชว์บน Armor Stand หรือให้เพื่อนต่อได้โดยไม่บั๊ก)

---

## 📦 โครงสร้างไฟล์ (File Structure)

```
overdose-armor/
├── pack.mcmeta                # ข้อมูลแพ็กเกจ (Format 121, MC 26.3)
├── pack.png                   # ไอคอนภาพประจำตัว Data Pack
├── README.md                  # คู่มือการใช้งานภาษาไทย
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
