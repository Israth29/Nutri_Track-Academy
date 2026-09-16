# 🍽️ Nutri-Track Academia

### *A Students' Daily Meal Management System*

A web platform that helps university students plan, order, and track their daily meals — while keeping an eye on their health through personalized BMI/BMR-based diet suggestions.

---

## 📖 Overview

**Nutri-Track Academia** is designed to manage students' daily meals within a university or college setting. It acts as a virtual meal assistant during a student's campus life — issuing a personal digital meal card, showing time-based menus, calculating BMI/BMR for health suggestions, and handling meal ordering with automatic billing.

The goal is simple: help students eat well, order easily, and stay healthy — while giving campus dining admins a streamlined way to manage menus, inventory, and orders.

---

## ✨ Features

### 🎓 For Students
- 🪪 **Digital Meal Card** — issued automatically at sign-up for quick campus dining access
- 🕒 **Time-Based Menus** — breakfast, lunch, and snacks are shown dynamically based on the current time
- 🧮 **BMI / BMR Calculator** — enter height, weight, age, and activity level to get personalized health metrics
- 🥗 **Personalized Diet Chart** — generated from health data and available menu items
- 🛒 **Meal Ordering & Billing** — place orders and get an automatic bill calculation
- 📜 **Order History** — view and search past orders by date, order ID, or meal card number

### 🛠️ For Admins
- 📝 **Menu Management** — add, update, or delete breakfast/lunch/snack/drink items
- 📊 **Student Order Tracking** — view and search all student order histories
- ❤️ **Health Metrics Overview** — monitor students' BMI/BMR records
- 👤 **Profile Management** — update admin account details

---

## 🏗️ System Architecture

The system is built around a set of core entities:

| Entity | Responsibility |
|---|---|
| **Admin** | Manages menus, student records, order tracking, and health data |
| **Student** | Registers, logs in, places orders, updates health info, views history |
| **Menu Tables** | Store breakfast/lunch/snack/drink items with price & calorie data |
| **Health Metrics** | BMI, BMR, and TDI calculated from student input |
| **Diet Chart** | Dynamically generated recommendations based on health + menu data |
| **Order Info / Order Details** | Track what, when, and how much students order |
| **Bill / Payment** | Calculated per order and displayed to the student |

The system runs two parallel workflows:
1. **Meal ordering flow** — secure student login → menu browsing → ordering → billing
2. **Health flow** — health metric input → BMI/BMR calculation → personalized diet chart

Admins oversee both workflows to ensure menu accuracy, data integrity, and smooth operations.

---

## 🧰 Tech Stack

| Layer | Technology |
|---|---|
| 🎨 Frontend | HTML, CSS, JavaScript |
| ⚙️ Backend | PHP |
| 🗄️ Server / Database | XAMPP (Apache + MySQL) |

**Minimum Hardware Requirements**

| Component | Spec |
|---|---|
| CPU | Intel i3 (i5 recommended) |
| RAM | 8 GB (16 GB recommended) |
| Storage | 512 GB SSD |

---

## 🖥️ UI Highlights

- **Sign Up / Login** — students register with valid info and instantly receive a unique meal card number
- **Menu Viewing** — drinks menu always visible (7 AM – 4 PM); meal menu dynamically shifts between breakfast, lunch, and snacks
- **Diet Chart Generator** — input health details to receive a tailored diet chart with meal/drink tips by time of day
- **Order History** — searchable table of past orders with item, quantity, and price
- **Admin Dashboard** — health metrics table, order history search, and full menu editing tools

---

## ⚠️ Limitations

- 🔐 Basic authentication only (no OTP/2FA/email verification)
- 📉 Static diet charts (no allergy or condition-specific adjustments)
- 🍽️ Limited order customization (fixed menu items only)
- 💳 No real payment gateway integration
- 🔔 No notification system (email/SMS/in-app)
- 📊 Limited analytics for admins

---

## 🚀 Future Work

- 📱 Native mobile application (iOS/Android)
- 💳 Secure online payments (bKash, Nagad, Rocket)
- 🩺 Dedicated dietitian dashboard for personalized guidance
- ⭐ Student feedback & rating system
- 📦 Meal subscription plans
- 🪪 QR code / smart card meal pickup authentication
- 📈 Admin analytics dashboard for trends and performance

---

## 👥 Team

This project was developed for **CSE-3638 — Software Engineering Lab**, Dept. of CSE, International Islamic University Chittagong (IIUC).

| Name | Student ID |
|---|---|
| Akhi Moon Jahan | C223202 |
| Fayeza Afrah Hissan | C223206 |
| Israth Jahan Worthy | C223229 |

**Course Instructor:** Asmaul Hosna Sadika — Assistant Lecturer, Dept. of CSE, IIUC

---

## 📄 Copyright

© 2025 Akhi Moon Jahan, Fayeza Afrah Hissan, and Israth Jahan Worthy. All rights reserved.

This project was developed as part of the Software Engineering Lab (CSE-3638) coursework at the **International Islamic University Chittagong (IIUC)**. No part of this project may be copied, modified, distributed, or reused without explicit written permission from the authors.
