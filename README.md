# 🏋️ Gym Management Database

This project is a **relational database design** for managing a gym's operations.  
It includes SQL scripts for creating tables, inserting sample data, and running example queries.

---

## 📌 Features

- **Multi-location support** – Store details of each gym location.
- **Coach management** – Track coaches, their home location, certifications, and assigned clients.
- **Class scheduling** – Define classes, set prices, and schedule them at specific locations with time and room details.
- **Amenities tracking** – Map available amenities to gym locations.
- **Client management** – Store member information and assign them to coaches.
- **Certifications** – Keep track of coach certifications.
- **Performance reviews** – Record ratings and feedback for coaches.
- **Many-to-many relationships** – Locations ↔ Coaches, Locations ↔ Amenities, Coaches ↔ Clients, Coaches ↔ Certifications.

---

## 📂 Database Schema Overview

### **Tables**
1. `Location` – Stores gym location details.
2. `Coach` – Information about each coach, including home location.
3. `Location_Coaches` – Tracks visits of coaches to various locations.
4. `Class` – Class details and pricing.
5. `Location_Classes` – Schedule of classes at specific locations.
6. `Amenities` – List of gym facilities.
7. `Location_Amenities` – Mapping between amenities and locations.
8. `Client` – Information about gym members.
9. `Coach_Client` – Links clients to their coaches.
10. `Certification` – List of professional certifications.
11. `Coach_Certification` – Mapping between coaches and certifications.
12. `Review` – Performance reviews for coaches.
