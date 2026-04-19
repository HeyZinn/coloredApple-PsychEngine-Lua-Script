# Colored Apple Event

**Developed by:** `HeyZinn_`  
**Category:** Visual / Color Transformation  
**Engine:** Psych Engine (Haxe/Lua)

---

## Description
This script creates a stunning **colored silhouette effect** on characters based on their Health Bar colors. When triggered, the background fades to black, and the characters transition into solid glowing colors using smooth Haxe-based `ColorTransform` tweens.
<br><br>

<img width="749" height="420" alt="image" src="https://github.com/user-attachments/assets/a1baad2f-eea5-4b13-bc36-6030bbda94f0" />

---

 <img width="751" height="418" alt="image" src="https://github.com/user-attachments/assets/da0f4ae4-716e-4ddd-953b-44a23bf38155" />

 ---

 <img width="753" height="418" alt="image" src="https://github.com/user-attachments/assets/dc70c20e-95a6-44ac-b246-b8a16b53418a" />


 


## How to Use
Add the **`coloredApple`** event to your chart:


| Parameter | Value | Description |
| :--- | :--- | :--- |
| **Value 1** | `on` / `off` | Activates or deactivates the effect. |
| **Value 2** | `duration` | Transition time in seconds (e.g., `0.5`, `1`). |

*If **Value 2** is empty, the change will be instant.*

---

##  Technical Details
- Uses **Haxe Interp** (`runHaxeCode`) for simultaneous manipulation of color offsets and multipliers.
- Automatically fetches `healthColorArray` for dynamic coloring.
- Uses `FlxTween` for smooth, high-performance animations.

##  Credits
Created by **HeyZinn_**. Please give proper credit if you use this script in your mod!
