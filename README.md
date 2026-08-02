<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=200&section=header&text=HR%20Attrition%20Analysis&fontSize=42&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Power%20BI%20Case%20Study%20%7C%20GBS%20BI%20HUB&descAlignY=58&descSize=18" width="100%"/>

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=22&pause=1000&color=2E75B6&center=true&vCenter=true&width=700&lines=Star+Schema+%2B+DAX+%2B+Power+BI+Dashboard;16.1%25+Attrition+Rate+%E2%80%94+237+of+1%2C470+Employees;Outlier+%26+Trend+Analysis+with+SQL;Actionable+HR+Recommendations" alt="Typing SVG" />

<br/>

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-2E75B6?style=for-the-badge&logo=microsoft&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-C00000?style=for-the-badge&logo=postgresql&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-548235?style=for-the-badge)

</div>

<br/>

## 📌 About the Project

A complete BI Analyst case study built on the IBM HR Attrition dataset (1,470 employees / 35 attributes) for **GBS BI HUB**. The project covers the full analytics lifecycle: star-schema modeling → DAX measures → outlier & trend analysis → an interactive Power BI dashboard → SQL analysis → stakeholder recommendations.

<div align="center">

| 👥 Employees | 🚪 Attrition Count | 📉 Attrition Rate | ⏰ OverTime Attrition |
|:---:|:---:|:---:|:---:|
| **1,470** | **237** | **16.1%** | **30.5%** |

</div>

---

## 🎬 Dashboard Preview

<div align="center">
<img src="Assets/Screenshots/Overview_Page.png" width="85%" alt="Overview dashboard page"/>
</div>

---

## 🗂️ Repository Structure

```text
HR_Attrition_Analysis/
├── README.md
├── Assets/
│   ├── Icons/
│   │   ├── HR Attrition image....png
│   │   ├── clear-filter.png
│   │   ├── desk.png
│   │   ├── filter.png
│   │   └── hr-manager.png
│   └── Screenshots/
│       ├── Data_Modeling.png
│       ├── Drivers_Page.png
│       ├── Home_Page.png
│       ├── Measures.png
│       ├── Overview_Page.png
│       ├── Recommendations_Page.png
│       └── Trands_outliers_Page.png
├── Dashboard/
│   └── HR Attrition Dashboard.pbix
├── Data/
│   └── GBS BI HUB - BI Analyst - HR Attrition Case Study.xlsx
├── Recommended/
│   ├── Page 1.jpeg
│   ├── Page 2.jpeg
│   └── Task_Info.png
└── Report/
    ├── HR_Attrition_Report.docx
    └── attrition_by_department.sql
```

---

## 🧱 Data Model — Star Schema

<div align="center">
<img src="https://img.shields.io/badge/Fact__Employee-1F3864?style=flat-square&logoColor=white" />
&nbsp;→&nbsp;
<img src="https://img.shields.io/badge/8_Dimension_Tables-2E75B6?style=flat-square&logoColor=white" />
</div>

One `Fact_Employee` table (grain: **one row = one employee**) connected to 8 dimension tables:

`Dim_Attrition` · `Dim_BusinessTravel` · `Dim_Department` · `Dim_EducationField` · `Dim_Gender` · `Dim_JobRole` · `Dim_MaritalStatus` · `Dim_OverTime`

> All categorical/text columns live only inside their dimension table — the fact table stores numeric measures and surrogate keys only, keeping the model fast and clean.

<div align="center">
<img src="Assets/Screenshots/Data_Modeling.png" width="85%" alt="Star schema data model in Power BI"/>
</div>

<details>
<summary><b>📐 Click to see relationship rules</b></summary>
<br/>

- All relationships are **1 (dimension) → \* (fact)**, single-direction filtering
- No repeated text columns inside `Fact_Employee`
- Surrogate keys only: `AttritionKey`, `TravelKey`, `DepartmentKey`, `EducationFieldKey`, `GenderKey`, `JobRoleKey`, `MaritalStatusKey`, `OverTimeKey`

</details>

---

## 🧮 DAX Measures

15 measures written with `VAR` / `RETURN`, grouped into 4 display folders inside the model:

<div align="center">

| 📁 Folder | Measures |
|---|---|
| **Core Metrics** | Total Employees · Attrition Count · Attrition Rate % |
| **Income & Tenure** | Avg Monthly Income (Leavers/Stayers) · Tenure Gap |
| **OverTime Analysis** | OverTime / No-OverTime Attrition Rate % |
| **Risk Segments** | Highest-Risk JobRole · JobLevel 1 · Zero Stock Option · High Risk Segment · JobRole Rank |

</div>

Full DAX code lives in [`Report/HR_Attrition_Report.docx`](Report/HR_Attrition_Report.docx).

```dax
Attrition Rate % =
DIVIDE([Attrition Count], [Total Employees], 0)
```

---

## 📈 Key Findings

<div align="center">

| Driver | Highest-Risk Segment | Rate |
|:---|:---:|:---:|
| 🕐 OverTime | Yes | ![30.5%](https://img.shields.io/badge/-30.5%25-C00000?style=flat-square) |
| 💼 Job Role | Sales Representative | ![39.8%](https://img.shields.io/badge/-39.8%25-C00000?style=flat-square) |
| 💍 Marital Status | Single | ![25.5%](https://img.shields.io/badge/-25.5%25-ED7D31?style=flat-square) |
| 📈 Stock Option Level | 0 | ![24.4%](https://img.shields.io/badge/-24.4%25-ED7D31?style=flat-square) |
| ⚖️ Work-Life Balance | Poor (1) | ![31.2%](https://img.shields.io/badge/-31.2%25-C00000?style=flat-square) |

</div>

Employees who leave earn **~30% less**, have **~35% shorter** tenure with their current manager, and are on average **4 years younger** than employees who stay.

---

## 🖥️ Dashboard Pages

<div align="center">

| Page | Content | Screenshot |
|---|---|:---:|
| 🏠 **Home** | Navigation cover page | [View](Assets/Screenshots/Home_Page.png) |
| 📊 **Overview** | KPI cards · attrition by department/overtime · decomposition tree | [View](Assets/Screenshots/Overview_Page.png) |
| 🎯 **Drivers** | Attrition by job role, marital status, stock options, income | [View](Assets/Screenshots/Drivers_Page.png) |
| 🔍 **Trends & Outliers** | Decomposition tree · satisfaction pivot · income vs. experience scatter | [View](Assets/Screenshots/Trands_outliers_Page.png) |
| ✅ **Recommendations** | Narrative insights and actionable next steps | [View](Assets/Screenshots/Recommendations_Page.png) |

</div>

---

## ✅ Recommendations Summary

- [x] **Address overtime & workload** — enforce workload balance policies, especially in Sales and R&D
- [x] **Revise entry-level compensation** — restructure salary scales, earlier stock vesting
- [x] **Targeted retention for Sales Representatives** — stay-interviews, commission review
- [x] **Strengthen early-tenure onboarding** — most attrition happens in the first 2 years
- [x] **Improve work-life balance** — review travel frequency and workload for at-risk roles

Full write-up in [`Report/HR_Attrition_Report.docx`](Report/HR_Attrition_Report.docx). Original task brief and raw dataset excerpts are in [`Recommended/`](Recommended/).

---

## 🗃️ SQL Query

```sql
SELECT Department, COUNT(*) AS AttritionCount
FROM EmployeeAttrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;
```

<div align="center">

| Department | AttritionCount |
|:---|:---:|
| Research & Development | 133 |
| Sales | 92 |
| Human Resources | 12 |

</div>

Query file: [`Report/attrition_by_department.sql`](Report/attrition_by_department.sql)

---

## 🛠️ Tools Used

<div align="center">

![Power BI](https://img.shields.io/badge/Power_BI_Desktop-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-2E75B6?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-C00000?style=for-the-badge)
![Word](https://img.shields.io/badge/Microsoft_Word-2B579A?style=for-the-badge&logo=microsoftword&logoColor=white)

</div>

---

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=120&section=footer" width="100%"/>

**⭐ If this project helped you, consider giving it a star!**

</div>
