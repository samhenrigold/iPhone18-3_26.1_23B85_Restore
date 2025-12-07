id sub_2282CE140@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a3@<X8>)
{
  v5 = a1();
  result = [*v3 scheduleType];
  if (result == 7)
  {
    v7 = 1;
LABEL_5:
    *a3 = v5;
    *(a3 + 8) = v7;
    return result;
  }

  if (result == 8)
  {
    v7 = 0;
    v5 /= 7;
    goto LABEL_5;
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

void sub_2282CE218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for CycleData(uint64_t a1)
{
  result = qword_27D827430;
  if (!qword_27D827430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _s19HealthMedicationsUI9CycleDataV22calculateTakeIntervals8scheduleSaySo028HKMedicationScheduleIntervalE0CGSo0jK0C_tFZ_0(void *a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v34 - v7;
  v8 = [a1 scheduleType];
  v9 = [a1 timeIntervals];
  sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
  v10 = sub_2283921A0();

  v11 = v10 >> 62;
  if (v8 == 7)
  {
    v34 = v3;
    v35 = v2;
    if (v11)
    {
      goto LABEL_25;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
    {
      v13 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x22AAB6D80](v13, v10);
        }

        else
        {
          if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = [v14 dose];
        if (!v17 || (v18 = v17, v19 = [v17 integerValue], v18, v19))
        {

          sub_228180ED0();
          result = swift_allocObject();
          *(result + 16) = xmmword_228396260;
          *(result + 32) = v15;
          return result;
        }

        ++v13;
        if (v16 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    v27 = v36;
    sub_228391150();
    v28 = sub_2283911A0();
    v29 = sub_2283925C0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      MEMORY[0x22AAB7B80](v30, -1, -1);
    }

    (*(v34 + 8))(v27, v35);
    return MEMORY[0x277D84F90];
  }

  if (v11)
  {
    v20 = sub_2283930D0();
    if (v20)
    {
LABEL_16:
      v21 = __OFSUB__(v20, 1);
      result = v20 - 1;
      if (v21)
      {
        __break(1u);
      }

      else if ((v10 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v10 + 8 * result + 32);
LABEL_21:
          v24 = v23;

          v25 = [a1 timeIntervals];
          sub_2283921A0();

          v37 = v24;
          sub_2282CEB2C();
          v26 = sub_2283921C0();

          return v26;
        }

        __break(1u);
        return result;
      }

      v23 = MEMORY[0x22AAB6D80](result, v10);
      goto LABEL_21;
    }
  }

  else
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_16;
    }
  }

  sub_228391150();
  v31 = sub_2283911A0();
  v32 = sub_2283925C0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    MEMORY[0x22AAB7B80](v33, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return MEMORY[0x277D84F90];
}

unint64_t _s19HealthMedicationsUI9CycleDataV26calculateLastIntervalIndex8scheduleSiSo20HKMedicationScheduleC_tFZ_0(void *a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 timeIntervals];
  sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
  v7 = sub_2283921A0();

  if (v7 >> 62)
  {
    v8 = sub_2283930D0();
    if (v8)
    {
LABEL_3:
      v9 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (v9)
      {
        __break(1u);
      }

      else if ((v7 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v7 + 8 * result + 32);
          goto LABEL_8;
        }

        __break(1u);
        return result;
      }

      v11 = MEMORY[0x22AAB6D80](result, v7);
LABEL_8:
      v12 = v11;

      v13 = [v12 cycleIndex];

      if (v13)
      {
        v14 = [v13 integerValue];

        return v14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }
  }

LABEL_12:
  sub_228391150();
  v15 = sub_2283911A0();
  v16 = sub_2283925C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    MEMORY[0x22AAB7B80](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_2282CE9A8(uint64_t a1)
{
  sub_22817A958(319, &unk_280DDBA68, 0x277D11570);
  if (v1 <= 0x3F)
  {
    sub_2282CEA5C(319);
    if (v2 <= 0x3F)
    {
      sub_22838F6C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2282CEA5C(uint64_t a1)
{
  if (!qword_27D8249F0)
  {
    sub_22817A958(255, &qword_280DDB9C8, 0x277D11580);
    v1 = sub_228392240();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8249F0);
    }
  }
}

uint64_t sub_2282CEAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2282CEB2C()
{
  result = qword_27D827440;
  if (!qword_27D827440)
  {
    sub_22817A958(255, &qword_280DDB9C8, 0x277D11580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827440);
  }

  return result;
}

void sub_2282CEB94(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2281C9E44(0, v2 & ~(v2 >> 63), 0);
    v35 = v40;
    if (v33)
    {
      v3 = sub_228393070();
    }

    else
    {
      v3 = sub_228393040();
      v4 = *(v1 + 36);
    }

    v37 = v3;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v37;
        v9 = v39;
        v34 = v38;
        v10 = v1;
        v11 = [*(sub_2282D9174(v37 v38];
        v12 = [v11 stringValue];

        v13 = sub_228392000();
        v15 = v14;

        v16 = v35;
        v40 = v35;
        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2281C9E44((v17 > 1), v18 + 1, 1);
          v16 = v40;
        }

        *(v16 + 16) = v18 + 1;
        v19 = v16 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v35 = v16;
        if (v33)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_228393090())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          sub_2282D9D2C(0, &qword_27D827460, MEMORY[0x277D83B18]);
          v6 = sub_2283924A0();
          sub_228393130();
          v6(v36, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_228205ADC(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v20 = 1 << *(v10 + 32);
          if (v8 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v8 >> 6;
          v22 = *(v31 + 8 * (v8 >> 6));
          if (((v22 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v34)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v8 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_228205ADC(v8, v34, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_228205ADC(v8, v34, 0);
          }

LABEL_31:
          v29 = *(v10 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          v2 = v32;
          if (v5 == v32)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t MedicationsLogViewController.__allocating_init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v13 = a4;
  v17 = objc_allocWithZone(v8);
  return MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(a1, a2, a3, v13, a5, a6 & 1, a7, a8 & 1);
}

uint64_t MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(unint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v10 = v8;
  v128 = a4;
  v129 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  v18 = MEMORY[0x28223BE20](v129);
  v131 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v130 = &v123 - v20;
  v137 = sub_22838F440();
  v135 = *(v137 - 8);
  v21 = MEMORY[0x28223BE20](v137);
  v127 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v136 = &v123 - v24;
  *(v10 + qword_280DDC818) = MEMORY[0x277D84FA0];
  v25 = v10 + qword_280DDC7E8;
  *v25 = vdupq_n_s64(0x4040000000000000uLL);
  *(v25 + 16) = xmmword_2283A2960;
  *(v10 + qword_280DDC800) = 0x4049000000000000;
  v26 = &unk_280DDC000;
  v132 = qword_280DDC838;
  *(v10 + qword_280DDC838) = 0;
  v139 = qword_280DDC848;
  *(v10 + qword_280DDC848) = 0;
  v27 = qword_280DDC7F0;
  *(v10 + qword_280DDC7F0) = 0;
  v28 = qword_280DDC810;
  *(v10 + qword_280DDC810) = 0;
  *(v10 + qword_280DDF418) = 0;
  *(v10 + qword_280DDC7E0) = 0;
  *(v10 + qword_280DDC820) = 0;
  *(v10 + qword_280DDC828) = 0;
  *(v10 + qword_27D827448) = 0;
  v138 = a1;
  *(v10 + qword_280DDC840) = a1;
  v134 = a2;
  *(v10 + qword_280DDC830) = a2;
  if (a6)
  {
    __break(1u);
    goto LABEL_84;
  }

  v125 = v28;
  v126 = v27;
  *(v10 + qword_280DDF420) = a5;
  if (a8)
  {
LABEL_84:
    __break(1u);
    return result;
  }

  *(v10 + qword_280DDF410) = a7;
  sub_228390BF0();
  swift_allocObject();
  v29 = v134;

  v30 = v138;

  *(v10 + qword_280DDC7F8) = sub_228390BE0();
  *(v10 + qword_280DDC808) = a3;
  v133 = a3;
  v31 = v136;
  sub_22838F430();
  if (!v30)
  {
    goto LABEL_9;
  }

  v32 = *(v138 + 16);
  if (!(v32 >> 62))
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_9:
    if (v29)
    {
      v36 = *(v29 + 16);
      if (v36 >> 62)
      {
        if (sub_2283930D0())
        {
          goto LABEL_12;
        }
      }

      else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    v9 = 0;
    v33 = v135;
    goto LABEL_45;
  }

  if (!sub_2283930D0())
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!v29)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
LABEL_19:
    v52 = v138;

    type metadata accessor for MedicationsLogDataSource(0);
    swift_allocObject();

    v54 = sub_228321434(v53, v34, v35, 0, 0);
    v55 = v139;
    swift_beginAccess();
    *(v55 + v10) = v54;

    v56 = *(v52 + 16);
    if (v56 >> 62)
    {
      v57 = sub_2283930D0();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v137;
    v59 = v135;
    (*(v135 + 8))(v31, v137);
    v60 = __OFADD__(v33, v57);
    v33 += v57;
    if (v60)
    {
      __break(1u);
      goto LABEL_42;
    }

    v50 = *(v138 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
    v49 = *(v138 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title + 8);
    (*(v59 + 16))(v31, v138 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v58);

    goto LABEL_26;
  }

LABEL_12:
  v37 = *(v29 + 16);
  if (v37 >> 62)
  {
    if (sub_2283930D0())
    {
LABEL_14:
      v38 = *(v29 + 16);
      v39 = qword_280DDCF18;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_22838F0C0();
      v42 = v41;
      type metadata accessor for MedicationsLogDataSource(0);
      swift_allocObject();
      v43 = sub_228321434(v38, v40, v42, 0, 0);
      *(v10 + v132) = v43;

      v124 = sub_22838F0C0();
      v35 = v44;
      v45 = *(v29 + 16);
      if (v45 >> 62)
      {
        v46 = sub_2283930D0();
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v47 = v135;
      v31 = v136;
      v48 = v137;
      (*(v135 + 8))(v136, v137);
      v50 = *(v134 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
      v49 = *(v134 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title + 8);
      v51 = *(v47 + 16);
      v9 = v47 + 16;
      v51(v31, v134 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v48);

      v33 = v46;
      v34 = v124;
      if (v138)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }
  }

  else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v50 = 0;
  v49 = 0xE000000000000000;
  if (v138)
  {
    goto LABEL_19;
  }

LABEL_25:

  v58 = v137;
LABEL_26:
  if ((v128 & 1) == 0)
  {
    v70 = v31;
    v71 = v135;
    v72 = *(v135 + 16);
    v73 = v127;
    v72(v127, v70, v137);
    type metadata accessor for MedicationsDoseLogHeaderDataSource(0);
    v130 = swift_allocObject();
    v74 = v129;
    v75 = v131;
    v72((v131 + *(v129 + 28)), v73, v137);
    sub_22838F490();
    v76 = (v75 + v74[5]);
    *v76 = 0xD00000000000001BLL;
    v76[1] = 0x80000002283B2800;
    v77 = (v75 + v74[6]);
    *v77 = v50;
    v77[1] = v49;
    v78 = v74[8];
    v79 = v73;
    v9 = v33;
    *(v75 + v78) = v33;
    v33 = v71;
    sub_2281AEB50(v75, v130 + qword_27D828A40);
    sub_2282D9B08(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    sub_22838FEF0();
    *(swift_allocObject() + 16) = xmmword_228397F40;
    v80 = MEMORY[0x277D84F90];
    sub_22838FEB0();
    v67 = sub_228390380();
    (*(v71 + 8))(v79, v137);
    v55 = sub_228198C84(0, 1, 1, v80);
    v69 = v55[2];
    v81 = v55[3];
    v52 = v69 + 1;
    if (v69 >= v81 >> 1)
    {
      v55 = sub_228198C84((v81 > 1), v69 + 1, 1, v55);
    }

    v31 = v136;
    goto LABEL_32;
  }

  v61 = v129;
  v62 = v130;
  (*(v135 + 16))(v130 + *(v129 + 28), v31, v58);
  sub_22838F490();
  v63 = (v62 + v61[5]);
  *v63 = 0xD00000000000001BLL;
  v63[1] = 0x80000002283B2800;
  v64 = (v62 + v61[6]);
  *v64 = v50;
  v64[1] = v49;
  *(v62 + v61[8]) = v33;
  type metadata accessor for MedicationDoseRecordAllViewModel(0);
  v65 = swift_allocObject();
  *(v65 + 16) = 1;
  sub_22838F430();
  *(v10 + v125) = v65;

  v66 = v131;
  sub_2281AEC14(v62, v131);
  type metadata accessor for MedicationsRecordAllDataSource(0);
  swift_allocObject();
  v67 = sub_2282C1850(v65, v66, 0, 0);

  *(v10 + v126) = v67;

  v55 = sub_228198C84(0, 1, 1, MEMORY[0x277D84F90]);
  v69 = v55[2];
  v68 = v55[3];
  v52 = v69 + 1;
  v9 = v33;
  if (v69 >= v68 >> 1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    sub_2282D9960(v130, type metadata accessor for MedicationsDoseLogHeaderItem);
    v33 = v135;
LABEL_32:
    v55[2] = v52;
    v82 = &v55[2 * v69];
    v58 = MEMORY[0x277D10F80];
    v82[4] = v67;
    v82[5] = v58;
    v57 = *(v10 + v132);
    if (v57)
    {
      v59 = v55[3];
      v34 = v52 + 1;

      if (v52 >= v59 >> 1)
      {
LABEL_42:
        v55 = sub_228198C84((v59 > 1), v34, 1, v55);
      }

      v55[2] = v34;
      v83 = &v55[2 * v52];
      v83[4] = v57;
      v83[5] = v58;
    }

    v84 = v139;
    swift_beginAccess();
    v85 = *(v10 + v84);
    if (v85)
    {
      v86 = v55[2];
      v87 = v55[3];

      if (v86 >= v87 >> 1)
      {
        v55 = sub_228198C84((v87 > 1), v86 + 1, 1, v55);
      }

      v55[2] = v86 + 1;
      v88 = &v55[2 * v86];
      v88[4] = v85;
      v88[5] = v58;
    }

    v26 = &unk_280DDC000;
LABEL_45:
    (*(v33 + 16))(v10 + qword_27D827450, v31, v137);
    *(v10 + qword_280DDC7D8) = v9;
    sub_2283901F0();
    swift_allocObject();
    sub_228390210();
    v52 = sub_228390480();
    v89 = *(v52 + qword_280DDC7F0);
    if (v89)
    {
      *(v89 + qword_280DDF3C8 + 8) = &off_283B6BE98;
      swift_unknownObjectWeakAssign();

      v90 = v52;
      sub_2282C0DF8();
    }

    v91 = *(v52 + v26[263]);
    v9 = &unk_280DDC000;
    if (v91)
    {
      v10 = v91 + qword_280DDCCF8;
      *(v91 + qword_280DDCCF8 + 8) = &off_283B6BE98;
      swift_unknownObjectWeakAssign();
      v92 = *(v91 + qword_280DDCCF0);
      if (v92 >> 62)
      {
        v105 = *(v91 + qword_280DDCCF0);
        v106 = sub_2283930D0();
        v92 = v105;
        v31 = v106;
        if (v106)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v31 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
LABEL_50:
          v144[0] = MEMORY[0x277D84F90];
          v93 = v91;
          v67 = v31 & ~(v31 >> 63);
          v69 = v92;
          v94 = v52;
          v131 = v93;

          v55 = v144;
          sub_2281CA04C(0, v67, 0);
          if (v31 < 0)
          {
            __break(1u);
            goto LABEL_80;
          }

          v139 = v31;
          v132 = v52;
          v95 = v144[0];
          type metadata accessor for MedicationDoseLogMedicationCell();
          v96 = 0;
          v97 = v69;
          v98 = v69 & 0xC000000000000001;
          v99 = v69;
          do
          {
            if (v98)
            {
              v100 = MEMORY[0x22AAB6D80](v96, v97);
            }

            else
            {
              v100 = *(v97 + 8 * v96 + 32);
            }

            swift_unknownObjectWeakLoadStrong();
            v101 = *(v10 + 8);
            sub_2282D98CC(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell, &unk_22839A680);
            v140 = sub_22838FBB0();
            v141 = v102;
            v143 = 0;
            swift_unknownObjectWeakInit();
            v142 = v100;
            v143 = v101;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            v144[0] = v95;
            v104 = *(v95 + 16);
            v103 = *(v95 + 24);
            if (v104 >= v103 >> 1)
            {
              sub_2281CA04C((v103 > 1), v104 + 1, 1);
              v95 = v144[0];
            }

            ++v96;
            *(v95 + 16) = v104 + 1;
            sub_2281D3334(&v140, v95 + 40 * v104 + 32);
            v97 = v99;
          }

          while (v139 != v96);

          v33 = v135;
          v9 = 0x280DDC000;
          v52 = v132;
          goto LABEL_61;
        }
      }

      v107 = v52;

      v95 = MEMORY[0x277D84F90];
LABEL_61:
      sub_22819578C(v95);

      sub_22838FF60();

      v31 = v136;
    }

    v108 = *(v9 + 2120);
    swift_beginAccess();
    v109 = *(v52 + v108);
    if (!v109)
    {
      (*(v33 + 8))(v31, v137);
      swift_endAccess();

      return v52;
    }

    swift_endAccess();
    v10 = v109 + qword_280DDCCF8;
    *(v109 + qword_280DDCCF8 + 8) = &off_283B6BE98;
    swift_unknownObjectWeakAssign();
    v110 = *(v109 + qword_280DDCCF0);
    if (v110 >> 62)
    {
      v9 = sub_2283930D0();
      if (!v9)
      {
LABEL_76:
        v122 = v52;

        v112 = MEMORY[0x277D84F90];
        goto LABEL_77;
      }
    }

    else
    {
      v9 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_76;
      }
    }

    v144[0] = MEMORY[0x277D84F90];
    v67 = v9 & ~(v9 >> 63);
    v111 = v52;

    v69 = v110;

    v55 = v144;
    sub_2281CA04C(0, v67, 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    v55 = sub_228198C84((v68 > 1), v52, 1, v55);
  }

  v139 = v9;
  v131 = v109;
  v132 = v52;
  v112 = v144[0];
  type metadata accessor for MedicationDoseLogMedicationCell();
  v113 = 0;
  v114 = v69;
  v115 = v69 & 0xC000000000000001;
  v116 = v69;
  do
  {
    if (v115)
    {
      v117 = MEMORY[0x22AAB6D80](v113, v114);
    }

    else
    {
      v117 = *(v114 + 8 * v113 + 32);
    }

    swift_unknownObjectWeakLoadStrong();
    v118 = *(v10 + 8);
    sub_2282D98CC(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell, &unk_22839A680);
    v140 = sub_22838FBB0();
    v141 = v119;
    v143 = 0;
    swift_unknownObjectWeakInit();
    v142 = v117;
    v143 = v118;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v144[0] = v112;
    v121 = *(v112 + 16);
    v120 = *(v112 + 24);
    if (v121 >= v120 >> 1)
    {
      sub_2281CA04C((v120 > 1), v121 + 1, 1);
      v112 = v144[0];
    }

    ++v113;
    *(v112 + 16) = v121 + 1;
    sub_2281D3334(&v140, v112 + 40 * v121 + 32);
    v114 = v116;
  }

  while (v139 != v113);

  v33 = v135;
  v52 = v132;
LABEL_77:
  sub_22819578C(v112);

  sub_22838FF60();

  (*(v33 + 8))(v136, v137);
  return v52;
}

id sub_2282D0168()
{
  v1 = qword_280DDC7E0;
  v2 = *(v0 + qword_280DDC7E0);
  if (v2)
  {
    v3 = *(v0 + qword_280DDC7E0);
  }

  else
  {
    v4 = sub_2282D01C8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282D01C8()
{
  v0 = [objc_opt_self() boldButton];
  v1 = qword_280DDCF18;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = sub_228391FC0();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  return v2;
}

id sub_2282D02C4()
{
  v1 = qword_280DDC820;
  v2 = *(v0 + qword_280DDC820);
  if (v2)
  {
    v3 = *(v0 + qword_280DDC820);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282D0374()
{
  v1 = qword_280DDC828;
  v2 = *(v0 + qword_280DDC828);
  if (v2)
  {
    v3 = *(v0 + qword_280DDC828);
  }

  else
  {
    v4 = sub_2282D03D8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282D03D8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    v4 = sub_2282D02C4();
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = qword_280DDC820;
    [v2 addSubview_];
    [*(a1 + v5) hk:v2 alignConstraintsWithView:*MEMORY[0x277D75060] insets:{*(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  }

  v6 = sub_2282D0168();
  [v2 addSubview_];

  v7 = qword_280DDC7E0;
  [*(a1 + qword_280DDC7E0) setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [*(a1 + v7) leftAnchor];
  v9 = [v2 leftAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:32.0];

  [v10 setActive_];
  v11 = [*(a1 + v7) rightAnchor];
  v12 = [v2 rightAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-32.0];

  [v13 setActive_];
  v14 = [*(a1 + v7) topAnchor];
  v15 = [v2 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:32.0];

  [v16 setActive_];
  v17 = [*(a1 + v7) bottomAnchor];
  v18 = [v2 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-48.0];

  [v19 setActive_];
  v20 = [*(a1 + v7) heightAnchor];
  v21 = [v20 constraintEqualToConstant_];

  [v21 setActive_];
  return v2;
}

id sub_2282D0748()
{
  v1 = v0;
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_27D827448;
  v7 = *(v1 + qword_27D827448);
  if (v7)
  {
    v8 = *(v1 + qword_27D827448);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_22838F540();
    v10 = sub_22838F4F0();
    (*(v3 + 8))(v5, v2);
    [v9 setLocale_];

    [v9 setFormattingContext_];
    v11 = sub_228391FC0();
    [v9 setLocalizedDateFormatFromTemplate_];

    v12 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

void sub_2282D08E0()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_2282D0374();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 convertRect:*&v0[qword_280DDC828] fromCoordinateSpace:{v5, v7, v9, v11}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v30.origin.x = v13;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  MinY = CGRectGetMinY(v30);
  v21 = [v0 collectionView];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 contentSize];
  v24 = v23;

  v25 = sub_2282D02C4();
  v28 = v25;
  v26 = 0.0;
  if (MinY < v24 && v24 > 0.0)
  {
    v26 = 1.0;
  }

  [v25 setAlpha_];
}

void sub_2282D0A30()
{
  v1 = sub_2282D0168();
  [v1 addTarget:v0 action:sel_didTapDone forControlEvents:64];

  v2 = qword_280DDC7E0;
  [*&v0[qword_280DDC7E0] setEnabled_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_2282D0374();
  [v4 addSubview_];

  v6 = qword_280DDC828;
  [*&v0[qword_280DDC828] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [*&v0[v6] leftAnchor];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 leftAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  [v11 setActive_];

  v12 = [*&v0[v6] rightAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 rightAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  [v16 setActive_];

  v17 = [*&v0[v6] bottomAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 bottomAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  [v21 setActive_];

  if (!_UISolariumEnabled())
  {
    return;
  }

  v22 = *&v0[v2];
  v23 = [v0 collectionView];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v23 edge:4 style:0];

  [v22 addInteraction_];
}

void sub_2282D0D78()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_didTapCancel];
  v2 = [v0 navigationItem];
  [v2 setLeftBarButtonItem_];

  v3 = [v0 navigationItem];
  v4 = sub_2282D0748();
  v5 = sub_22838F380();
  v6 = [v4 stringFromDate_];

  if (!v6)
  {
    sub_228392000();
    v6 = sub_228391FC0();
  }

  [v3 setTitle_];
}

void sub_2282D0EE4()
{
  sub_2283904D0();
  v1 = sub_2283904E0();
  v1();
  v2 = [v0 collectionView];
  if (v2)
  {
    type metadata accessor for MedicationDoseLogHeaderView();
    sub_2282D98CC(qword_280DDC208, type metadata accessor for MedicationDoseLogHeaderView, &unk_228399758);
    sub_2283926D0();
  }

  else
  {
    __break(1u);
  }
}

void sub_2282D0FBC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for MedicationsLogViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  sub_2282D08E0();
}

void sub_2282D1018(void *a1)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for MedicationsLogViewController(0);
  v1 = v12.receiver;
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  sub_2282D0A30();
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 contentInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [v1 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 setContentInset_];

      sub_2282D0D78();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2282D1114()
{
  v0[2] = sub_2283922A0();
  v0[3] = sub_228392290();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2282D11C0;

  return sub_2282D3D58();
}

uint64_t sub_2282D11C0()
{

  v1 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282D12FC, v1, v0);
}

uint64_t sub_2282D12FC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2282D135C(void *a1)
{
  sub_2282D9B08(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_2283922D0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2283922A0();
  v6 = a1;
  v7 = sub_228392290();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_2281DC568(0, 0, v4, &unk_2283A2A00, v8);

  sub_2282D50AC(1);
  [v6 dismissViewControllerAnimated:1 completion:0];
}

void sub_2282D14D4(void *a1)
{
  v1 = a1;
  sub_2282D50AC(4);
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_2282D153C(char a1, char a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MedicationsLogViewController(0);
  objc_msgSendSuper2(&v13, sel_setEditing_animated_, a1 & 1, a2 & 1);
  v5 = [v2 collectionView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 setEditing_];

  v7 = [v2 collectionView];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  [v7 setAllowsSelection_];

  v9 = [v2 collectionView];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  [v9 setAllowsMultipleSelection_];

  v11 = [v2 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setAllowsMultipleSelectionDuringEditing_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2282D1668(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_2282D153C(a3, a4);
}

void sub_2282D16C4(void *a1)
{
  v2 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_22838F710();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    v8 = v4;
    sub_22817A958(0, &qword_27D827770, 0x277D752A8);
    sub_2281810DC(0, &qword_27D8243E0, MEMORY[0x277D10F68]);
    v5 = v4;
    if (swift_dynamicCast())
    {
      sub_22819A62C(v6, v9);
      __swift_project_boxed_opaque_existential_0(v9, v9[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {

      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_2282D9960(v6, sub_2281ED284);
    }
  }
}

uint64_t sub_2282D1828(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2282D16C4(v10);

  return (*(v7 + 8))(v9, v6);
}

void sub_2282D1924(void *a1)
{
  v1 = a1;
  sub_2282D08E0();
}

uint64_t sub_2282D196C(uint64_t a1, int a2)
{
  v3 = v2;
  v85 = sub_22838F4A0();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v97 = sub_22838F440();
  v7 = *(v97 - 8);
  v8 = MEMORY[0x28223BE20](v97);
  v86 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v81 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v81 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v93 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v81 - v18;
  v96 = qword_280DDC818;
  swift_beginAccess();

  v94 = a1;
  sub_2282D5FA0(&v98, a1);
  swift_endAccess();

  v20 = &unk_280DDC000;
  v95 = v2;
  v82 = a2;
  v88 = v7;
  if ((a2 & 1) == 0)
  {
    goto LABEL_22;
  }

  result = *(v2 + qword_280DDC840);
  if (result)
  {
    v22 = *(result + 16);
    if (v22 >> 62)
    {
      goto LABEL_69;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_5:
      v90 = v12;
      v87 = v15;
      if (v23 >= 1)
      {
        v24 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
        v92 = v22 & 0xC000000000000001;
        v91 = result;

        swift_beginAccess();
        v25 = 0;
        v26 = (v7 + 16);
        v27 = (v7 + 40);
        v28 = v22;
        do
        {
          if (v92)
          {
            v29 = MEMORY[0x22AAB6D80](v25, v22);
          }

          else
          {
            v29 = *(v22 + 8 * v25 + 32);
          }

          ++v25;
          v30 = v97;
          (*v26)(v19, v94 + v24, v97);
          v31 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
          swift_beginAccess();
          (*v27)(v29 + v31, v19, v30);
          swift_endAccess();
          swift_beginAccess();

          sub_2282D5FA0(&v98, v29);
          swift_endAccess();

          v22 = v28;
        }

        while (v23 != v25);

        v7 = v88;
        v3 = v95;
        v20 = &unk_280DDC000;
        v15 = v87;
        v12 = v90;
        goto LABEL_12;
      }

      __break(1u);
LABEL_74:
      __break(1u);
      return result;
    }
  }

  while (1)
  {
LABEL_12:
    result = *(v3 + v20[262]);
    if (!result)
    {
      goto LABEL_22;
    }

    v32 = *(result + 16);
    if (v32 >> 62)
    {
      v80 = *(v3 + v20[262]);
      v33 = sub_2283930D0();
      result = v80;
      if (!v33)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_22;
      }
    }

    v90 = v12;
    v87 = v15;
    if (v33 < 1)
    {
      goto LABEL_74;
    }

    v34 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
    v92 = v32 & 0xC000000000000001;
    v91 = result;

    swift_beginAccess();
    v35 = 0;
    v36 = (v7 + 16);
    v37 = (v7 + 40);
    v38 = v32;
    do
    {
      if (v92)
      {
        v39 = MEMORY[0x22AAB6D80](v35, v32);
      }

      else
      {
        v39 = *(v32 + 8 * v35 + 32);
      }

      ++v35;
      v40 = v97;
      (*v36)(v19, v94 + v34, v97);
      v41 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      (*v37)(v39 + v41, v19, v40);
      swift_endAccess();
      swift_beginAccess();

      sub_2282D5FA0(&v98, v39);
      swift_endAccess();

      v32 = v38;
    }

    while (v33 != v35);

    v7 = v88;
    v3 = v95;
    v20 = &unk_280DDC000;
    v15 = v87;
    v12 = v90;
LABEL_22:
    sub_22838F430();
    v22 = *(v3 + qword_280DDC840);
    if (!v22)
    {
      LODWORD(v15) = 0;
      v43 = v97;
      goto LABEL_47;
    }

    v42 = *(v22 + 16);
    if (v42 >> 62)
    {
      goto LABEL_65;
    }

    result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
    v43 = v97;
    if (!result)
    {
      break;
    }

    v90 = v12;
    if ((v42 & 0xC000000000000001) != 0)
    {
      swift_retain_n();

      v44 = MEMORY[0x22AAB6D80](0, v42);

      goto LABEL_29;
    }

    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(v42 + 32);
      swift_retain_n();

LABEL_29:
      v45 = *(v7 + 8);
      v46 = v93;
      v92 = v7 + 8;
      v91 = v45;
      v45(v93, v43);
      v47 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v48 = v7;
      v49 = v7 + 16;
      v50 = *(v7 + 16);
      v51 = v44 + v47;
      v42 = v90;
      v50(v90, v51, v43);

      v52 = *(v48 + 32);
      v12 = (v48 + 32);
      v52(v15, v42, v43);
      v90 = v49;
      v89 = v50;
      v50(v46, v15, v43);
      v53 = *(v22 + 16);
      v87 = v15;
      v81 = v22;
      v20 = (v53 & 0xFFFFFFFFFFFFFF8);
      if (v53 >> 62)
      {
        v7 = sub_2283930D0();
      }

      else
      {
        v7 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = v53 & 0xC000000000000001;

      v22 = 0;
      while (1)
      {
        v15 = v7 != v22;
        if (v7 == v22)
        {
          goto LABEL_41;
        }

        if (v3)
        {
          v12 = MEMORY[0x22AAB6D80](v22, v53);
          if (__OFADD__(v22, 1))
          {
LABEL_40:
            __break(1u);
LABEL_41:
            v91(v87, v43);

            v7 = v88;
            v3 = v95;
            v20 = &unk_280DDC000;
            goto LABEL_44;
          }
        }

        else
        {
          if (v22 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_65:
            result = sub_2283930D0();
            goto LABEL_25;
          }

          v12 = *(v53 + 8 * v22 + 32);

          if (__OFADD__(v22, 1))
          {
            goto LABEL_40;
          }
        }

        v54 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
        swift_beginAccess();
        v89(v19, &v12[v54], v43);
        sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v42 = sub_228391FB0();

        v91(v19, v43);
        ++v22;
        if ((v42 & 1) == 0)
        {
          goto LABEL_41;
        }
      }
    }

    __break(1u);
LABEL_69:
    v79 = result;
    v23 = sub_2283930D0();
    result = v79;
    if (v23)
    {
      goto LABEL_5;
    }
  }

  LODWORD(v15) = 0;
LABEL_44:
  v55 = qword_280DDC848;
  swift_beginAccess();
  if (*(v3 + v55))
  {

    sub_228320E1C(v56);
  }

LABEL_47:
  if (*(v3 + v20[262]) && *(v3 + qword_280DDC838))
  {

    sub_228320E1C(v57);
  }

  if (*(v3 + qword_280DDC7F0))
  {
    v58 = *(v3 + qword_280DDC810);
    if (v58)
    {
      if (v15 != *(v58 + 17))
      {
        v59 = v82 ^ 1;
        *(v58 + 17) = v15 & (v82 ^ 1);
        if ((v59 & 1) == 0)
        {
          v60 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
          v61 = v94;
          swift_beginAccess();
          v62 = v61 + v60;
          v63 = v86;
          (*(v7 + 16))(v86, v62, v43);
          goto LABEL_58;
        }

        v63 = v86;
        if (v15)
        {

          sub_22838F430();
        }

        else
        {
          (*(v7 + 16))(v86, v93, v43);
LABEL_58:
        }

        v64 = OBJC_IVAR____TtC19HealthMedicationsUI32MedicationDoseRecordAllViewModel_logDate;
        swift_beginAccess();
        (*(v7 + 40))(v58 + v64, v63, v43);
        swift_endAccess();
        v65 = MEMORY[0x277D84560];
        sub_2282D9B08(0, &qword_280DDB8A0, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D84560]);
        v66 = (type metadata accessor for MedicationDoseRecordAllItem(0) - 8);
        v67 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
        v68 = swift_allocObject();
        v97 = xmmword_228397F40;
        *(v68 + 16) = xmmword_228397F40;
        v69 = v68 + v67;

        sub_22838F490();
        v70 = (v68 + v67 + v66[7]);
        type metadata accessor for MedicationDoseRecordAllCell();
        sub_2282D98CC(&qword_280DDC200, type metadata accessor for MedicationDoseRecordAllCell, &unk_2283A22C0);
        *v70 = sub_22838FBB0();
        v70[1] = v71;
        *(v69 + v66[9] + 8) = 0;
        v72 = swift_unknownObjectWeakInit();
        *(v69 + v66[8]) = v58;
        *(v72 + 8) = &off_283B6BE98;
        swift_unknownObjectWeakAssign();
        sub_2282D9B08(0, &qword_27D823910, MEMORY[0x277D10F78], v65);
        sub_22838FEF0();
        *(swift_allocObject() + 16) = v97;
        sub_2281958B0(v68);
        swift_setDeallocating();
        sub_2282D9960(v69, type metadata accessor for MedicationDoseRecordAllItem);
        swift_deallocClassInstance();
        v73 = v83;
        sub_22838F490();
        sub_22838F450();
        (*(v84 + 8))(v73, v85);
        v7 = v88;
        sub_22838FED0();
        sub_22838FF50();
      }
    }
  }

  v74 = sub_2282D0168();

  v76 = sub_2282D2E74(v75);

  if (v76)
  {
    v77 = 1;
  }

  else
  {

    v77 = sub_2282D326C(v78);
  }

  [v74 setEnabled_];

  return (*(v7 + 8))(v93, v43);
}

void sub_2282D2868(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = swift_retain_n();
    v9 = sub_2281D3518(v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = *&v2[qword_280DDF410] == 1 && *&v2[qword_280DDC7D8] > 1;
    objc_allocWithZone(type metadata accessor for MedicationLogDetailsViewController(0));

    v24 = v2;
    v25 = sub_2282C5114(a1, v9, v11, v13, v15, v2, &off_283B6BE98, v16);

    v27 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
    [v27 setModalPresentationStyle_];
    [v27 setModalInPresentation_];
    [v24 presentViewController:v27 animated:1 completion:0];

    v26 = v27;
  }

  else
  {
    sub_228391190();
    v17 = sub_2283911A0();
    v18 = sub_2283925C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      v21 = sub_228393600();
      v23 = sub_2281C96FC(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22816B000, v17, v18, "[%s] Couldn't load view model", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAB7B80](v20, -1, -1);
      MEMORY[0x22AAB7B80](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2282D2B6C()
{
  v1 = v0;
  sub_2282D9B08(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - v4;
  v6 = *&v0[qword_280DDC840];
  if (!v6)
  {
    return result;
  }

  v7 = qword_280DDC848;
  result = swift_beginAccess();
  v8 = *&v1[v7];
  if (!v8)
  {
    return result;
  }

  v9 = *(v6 + 16);
  if (v9 >> 62)
  {
    result = sub_2283930D0();
    v10 = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_5:
      v21 = v5;
      if (v10 < 1)
      {
        __break(1u);
        return result;
      }

      v20[1] = v8;

      v11 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AAB6D80](v11, v9);
        }

        else
        {
          v12 = *(v9 + 8 * v11 + 32);
        }

        ++v11;
        *(v12 + 48) = 4;
        swift_beginAccess();

        sub_2282D5FA0(&v22, v12);
        swift_endAccess();
      }

      while (v10 != v11);

      v5 = v21;
      goto LABEL_14;
    }
  }

LABEL_14:

  sub_228320E1C(v13);
  v14 = *&v1[qword_280DDF418];
  if ((v14 & 0x20) == 0)
  {
    *&v1[qword_280DDF418] = v14 | 0x20;
  }

  v15 = sub_2283922D0();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_2283922A0();
  v16 = v1;
  v17 = sub_228392290();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_2281DC568(0, 0, v5, &unk_2283A2A08, v18);

  sub_2282D50AC(1);
  [v16 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_2282D2E74(uint64_t a1)
{
  v37 = sub_22838F440();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel, &protocol conformance descriptor for MedicationsDoseLogViewModel);
    result = sub_2283924C0();
    a1 = v42;
    v5 = v43;
    v6 = v44;
    v7 = v45;
    v8 = v46;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v35 = (v2 + 16);
  v33[1] = v6;
  v34 = (v2 + 8);
  p_name = &OBJC_PROTOCOL___UIPickerViewDataSource.name;
  v14 = v8;
  v38 = a1;
  while (a1 < 0)
  {
    v18 = sub_228393100();
    if (!v18 || (v40 = v18, type metadata accessor for MedicationsDoseLogViewModel(0), swift_dynamicCast(), (v17 = v41) == 0))
    {
LABEL_27:
      sub_228176F04(a1);
      return 0;
    }

LABEL_17:
    v19 = *(v17 + 48);
    if (v19 != *&p_name[280][v17])
    {
      sub_228176F04(a1);

      return 1;
    }

    v20 = *(v17 + 24);
    v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v20)
    {
      v22 = v21 == 4;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v39 = v14;
      v23 = v20;
      v24 = COERCE_DOUBLE(sub_2283928B0());
      if ((v25 & 1) != 0 || *(v17 + 40) != v24)
      {

        v32 = v38;
LABEL_30:
        sub_228176F04(v32);
        return 1;
      }

      v26 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v27 = v36;
      v28 = v17 + v26;
      v29 = v37;
      (*v35)(v36, v28, v37);
      sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v30 = sub_228391FB0();

      v31 = v27;
      p_name = (&OBJC_PROTOCOL___UIPickerViewDataSource + 8);
      result = (*v34)(v31, v29);
      a1 = v38;
      v14 = v39;
      if ((v30 & 1) == 0)
      {
        v32 = v38;
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  v15 = v7;
  v16 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v16 - 1) & v16;
    v17 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_27;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_2282D326C(uint64_t a1)
{
  v47 = sub_22838F440();
  v2 = *(v47 - 8);
  v3 = MEMORY[0x28223BE20](v47);
  v46 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = v41 - v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel, &protocol conformance descriptor for MedicationsDoseLogViewModel);
    result = sub_2283924C0();
    a1 = v51;
    v7 = v52;
    v8 = v53;
    v9 = v54;
    v10 = v55;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v41[1] = v8;
  v14 = (v8 + 64) >> 6;
  v43 = v2 + 8;
  v44 = (v2 + 16);
  v48 = a1;
  v42 = v14;
  v15 = (v2 + 8);
  while (1)
  {
    v19 = v10;
    v20 = v9;
    if (a1 < 0)
    {
      v24 = sub_228393100();
      if (!v24 || (v49 = v24, type metadata accessor for MedicationsDoseLogViewModel(0), swift_dynamicCast(), (v23 = v50) == 0))
      {
LABEL_27:
        v40 = 1;
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    v21 = v9;
    v22 = v10;
    if (!v10)
    {
      break;
    }

LABEL_15:
    v10 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v23)
    {
      goto LABEL_27;
    }

LABEL_19:
    v25 = *(v23 + 24);
    if (v25)
    {
      v26 = v25;
      if ([v26 logStatus] != *(v23 + 48) || (v27 = COERCE_DOUBLE(sub_2283928B0()), (v28 & 1) != 0) || *(v23 + 40) != v27)
      {

        v40 = 0;
        a1 = v48;
        goto LABEL_28;
      }

      v41[2] = v20;
      v41[3] = v19;
      v29 = [v26 startDate];
      v30 = v45;
      sub_22838F3E0();

      v31 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v32 = v23 + v31;
      v33 = v10;
      v34 = v7;
      v36 = v46;
      v35 = v47;
      (*v44)(v46, v32, v47);
      sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v37 = sub_228391FB0();

      v38 = *v15;
      v39 = v36;
      v7 = v34;
      v10 = v33;
      v14 = v42;
      (*v15)(v39, v35);
      v38(v30, v35);

      a1 = v48;
      if ((v37 & 1) == 0)
      {
        v40 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v23 + 48);
      v17 = *(v23 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus);

      v18 = v16 == v17;
      a1 = v48;
      if (!v18)
      {
        v40 = 0;
LABEL_28:
        sub_228176F04(a1);
        return v40;
      }
    }
  }

  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      v40 = 1;
      goto LABEL_28;
    }

    v22 = *(v7 + 8 * v9);
    ++v21;
    if (v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_2282D36C0()
{
  if (*(v0 + qword_280DDC7F0))
  {
    v1 = *(v0 + qword_280DDC810);
    if (v1)
    {
      v2 = *(v0 + qword_280DDC840);
      if (v2)
      {
        v3 = *(v2 + 16);
        if (!(v3 >> 62))
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_6;
        }

        while (1)
        {
          v4 = sub_2283930D0();
LABEL_6:
          v5 = qword_280DDC818;
          swift_beginAccess();
          v6 = *(v0 + v5);
          if ((v6 & 0xC000000000000001) != 0)
          {

            v7 = sub_2283930D0();
          }

          else
          {
            v7 = *(v6 + 16);
          }

          if (v7 >= v4)
          {
            break;
          }

          v8 = *(v0 + v5);
          if ((v8 & 0xC000000000000001) != 0)
          {

            swift_unknownObjectRetain();
            v0 = sub_228393080();
            type metadata accessor for MedicationsDoseLogViewModel(0);
            sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel, &protocol conformance descriptor for MedicationsDoseLogViewModel);
            sub_2283924C0();
            v10 = v31;
            v9 = v32;
            v12 = v33;
            v11 = v34;
            v13 = v35;
          }

          else
          {
            v14 = -1 << *(v8 + 32);
            v9 = v8 + 56;
            v12 = ~v14;
            v15 = -v14;
            if (v15 < 64)
            {
              v16 = ~(-1 << v15);
            }

            else
            {
              v16 = -1;
            }

            v13 = v16 & *(v8 + 56);
            v10 = *(v0 + v5);
            swift_bridgeObjectRetain_n();
            v11 = 0;
          }

          v17 = (v12 + 64) >> 6;
          if (v10 < 0)
          {
            while (sub_228393100())
            {
              type metadata accessor for MedicationsDoseLogViewModel(0);
              swift_dynamicCast();
              v0 = v30;
              v20 = v11;
              v21 = v13;
              if (!v30)
              {
                break;
              }

LABEL_25:
              if (*(v0 + 48) == 5)
              {
                sub_228176F04(v10);

                goto LABEL_31;
              }

              v11 = v20;
              v13 = v21;
              if ((v10 & 0x8000000000000000) == 0)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_28;
          }

LABEL_17:
          v18 = v11;
          v19 = v13;
          v20 = v11;
          if (v13)
          {
LABEL_21:
            v21 = (v19 - 1) & v19;
            v0 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

            if (v0)
            {
              goto LABEL_25;
            }

LABEL_28:
            sub_228176F04(v10);

            if (*(v1 + 16))
            {
              goto LABEL_34;
            }

            v22 = 1;
            goto LABEL_33;
          }

          while (1)
          {
            v20 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v20 >= v17)
            {
              goto LABEL_28;
            }

            v19 = *(v9 + 8 * v20);
            ++v18;
            if (v19)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
        }

LABEL_31:
        if ((*(v1 + 16) & 1) == 0)
        {
          goto LABEL_34;
        }

        v22 = 0;
LABEL_33:
        *(v1 + 16) = v22;
        sub_2282D9B08(0, &qword_280DDB8A0, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D84560]);
        v23 = (type metadata accessor for MedicationDoseRecordAllItem(0) - 8);
        v24 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_228397F40;
        v26 = v25 + v24;

        sub_22838F490();
        v27 = (v25 + v24 + v23[7]);
        type metadata accessor for MedicationDoseRecordAllCell();
        sub_2282D98CC(&qword_280DDC200, type metadata accessor for MedicationDoseRecordAllCell, &unk_2283A22C0);
        *v27 = sub_22838FBB0();
        v27[1] = v28;
        *(v26 + v23[9] + 8) = 0;
        v29 = swift_unknownObjectWeakInit();
        *(v26 + v23[8]) = v1;
        *(v29 + 8) = &off_283B6BE98;
        swift_unknownObjectWeakAssign();
        sub_2281958B0(v25);
        swift_setDeallocating();
        sub_2282D9960(v26, type metadata accessor for MedicationDoseRecordAllItem);
        swift_deallocClassInstance();
        sub_22838FF60();

LABEL_34:
      }
    }
  }
}

void sub_2282D3BD8(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = qword_280DDC818;
    swift_beginAccess();
    v4 = *(v1 + v3);

    v5 = sub_228284048(a1, v4);

    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    sub_2282D86F4(a1);
  }

  else
  {
    swift_beginAccess();

    sub_2282D5FA0(v11, a1);
  }

  swift_endAccess();

LABEL_6:
  v6 = sub_2282D0168();
  swift_beginAccess();

  v8 = sub_2282D2E74(v7);

  if (v8)
  {
    v9 = 1;
  }

  else
  {

    v9 = sub_2282D326C(v10);
  }

  [v6 setEnabled_];

  sub_2282D36C0();
}

uint64_t sub_2282D3D58()
{
  v1[16] = v0;
  v1[17] = swift_getObjectType();
  v2 = sub_2283911B0();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_228390D60();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = sub_22838F440();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_2283922A0();
  v1[28] = sub_228392290();
  v6 = sub_228392250();
  v1[29] = v6;
  v1[30] = v5;

  return MEMORY[0x2822009F8](sub_2282D3F1C, v6, v5);
}

uint64_t sub_2282D3F1C()
{
  v1 = *(v0 + 128);
  v2 = qword_280DDC818;
  swift_beginAccess();
  v45 = *(v1 + v2);
  if ((v45 & 0xC000000000000001) != 0)
  {

    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel, &protocol conformance descriptor for MedicationsDoseLogViewModel);
    v3 = sub_2283924C0();
    v4 = *(v0 + 24);
    v45 = *(v0 + 16);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = -1 << *(v45 + 32);
    v4 = v45 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v45 + 56);

    v6 = 0;
  }

  v11 = *(v0 + 200);
  v38 = *(v0 + 176);
  v12 = (v5 + 64) >> 6;
  v40 = (v11 + 8);
  v41 = (v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v42 = v4;
LABEL_8:
  v39 = v13;
  *(v0 + 248) = v13;
  v14 = v6;
  while ((v45 & 0x8000000000000000) == 0)
  {
    v15 = v14;
    v16 = v7;
    v6 = v14;
    if (!v7)
    {
      while (1)
      {
        v6 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v6 >= v12)
        {
          goto LABEL_32;
        }

        v16 = *(v4 + 8 * v6);
        ++v15;
        if (v16)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x28216A890](v3);
    }

LABEL_16:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v45 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v18)
    {
      goto LABEL_32;
    }

LABEL_20:
    v20 = *(v18 + 24);
    if (v20)
    {
      v43 = v17;
      v21 = v20;
      if ([v21 logStatus] != *(v18 + 48) || (v22 = COERCE_DOUBLE(sub_2283928B0()), (v23 & 1) != 0) || *(v18 + 40) != v22)
      {

        v17 = v43;
LABEL_27:
        sub_228300900(*(v0 + 184));
        v13 = v39;
        v44 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_228199B3C(0, v39[2] + 1, 1, v39);
        }

        v32 = v13[2];
        v31 = v13[3];
        if (v32 >= v31 >> 1)
        {
          v13 = sub_228199B3C((v31 > 1), v32 + 1, 1, v13);
        }

        v33 = *(v0 + 184);
        v34 = *(v0 + 168);

        v13[2] = v32 + 1;
        v3 = (*(v38 + 32))(v13 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v33, v34);
        v4 = v42;
        v7 = v44;
        goto LABEL_8;
      }

      v24 = *(v0 + 208);
      v25 = *(v0 + 216);
      v26 = *(v0 + 192);
      v27 = [v21 startDate];
      sub_22838F3E0();

      v28 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      (*v41)(v24, v18 + v28, v26);
      sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      LOBYTE(v28) = sub_228391FB0();

      v29 = *v40;
      v30 = v24;
      v4 = v42;
      (*v40)(v30, v26);
      v29(v25, v26);
      v17 = v43;
      if ((v28 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (*(v18 + 48) != *(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus))
    {
      goto LABEL_27;
    }

    v14 = v6;
    v7 = v17;
  }

  v19 = sub_228393100();
  if (v19)
  {
    *(v0 + 120) = v19;
    type metadata accessor for MedicationsDoseLogViewModel(0);
    swift_dynamicCast();
    v18 = *(v0 + 112);
    v6 = v14;
    v17 = v7;
    if (v18)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  sub_228176F04(v45);
  if (v39[2])
  {
    v35 = swift_task_alloc();
    *(v0 + 256) = v35;
    *v35 = v0;
    v35[1] = sub_2282D44BC;
    v3 = v39;

    return MEMORY[0x28216A890](v3);
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_2282D44BC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 240);
    v6 = sub_2282D4680;
  }

  else
  {

    v4 = *(v3 + 232);
    v5 = *(v3 + 240);
    v6 = sub_2282D45F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2282D45F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2282D4680()
{
  v24 = v0;
  v1 = *(v0 + 264);

  sub_228391190();
  v2 = v1;
  v3 = sub_2283911A0();
  v4 = sub_2283925C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    v6 = *(v0 + 152);
    v22 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315394;
    v10 = sub_228393600();
    v12 = sub_2281C96FC(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 104) = v5;
    v13 = v5;
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
    v14 = sub_228392020();
    v16 = sub_2281C96FC(v14, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_22816B000, v3, v4, "[%s] Error saving medication dose event samples %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v9, -1, -1);
    MEMORY[0x22AAB7B80](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v19 = *(v0 + 144);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

void *sub_2282D48E8()
{
  v42 = sub_22838F440();
  v1 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = qword_280DDC818;
  swift_beginAccess();
  v38 = v0;
  v4 = *(v0 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel, &protocol conformance descriptor for MedicationsDoseLogViewModel);
    result = sub_2283924C0();
    v4 = v49;
    v6 = v50;
    v8 = v51;
    v7 = v52;
    v9 = v53;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v7 = 0;
  }

  v46 = 0;
  v13 = 0;
  v14 = 0;
  v45 = 0;
  v37 = v8;
  v15 = v8 + 64;
  v16 = 0;
  v17 = v15 >> 6;
  v39 = (v1 + 8);
  v40 = (v1 + 16);
  v43 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v23 = sub_228393100();
  if (!v23)
  {
    v4 = v43;
    goto LABEL_85;
  }

  v47 = v23;
  type metadata accessor for MedicationsDoseLogViewModel(0);
  swift_dynamicCast();
  v22 = v48;
  v21 = v7;
  v44 = v9;
  v4 = v43;
  if (!v48)
  {
LABEL_85:
    result = sub_228176F04(v4);
    v28 = v38;
    if (v45)
    {
      v29 = qword_280DDF418;
      v30 = *(v38 + qword_280DDF418);
      if ((v30 & 8) == 0)
      {
        v30 |= 8uLL;
        *(v38 + qword_280DDF418) = v30;
      }

      if ((v30 & 0x100) == 0 && *(v28 + qword_280DDF410) == 3)
      {
        *(v28 + v29) = v30 | 0x100;
      }
    }

    if (v14)
    {
      v31 = qword_280DDF418;
      v32 = *(v28 + qword_280DDF418);
      if ((v32 & 0x10) == 0)
      {
        v32 |= 0x10uLL;
        *(v28 + qword_280DDF418) = v32;
      }

      if ((v32 & 0x80) == 0 && *(v28 + qword_280DDF410) == 3)
      {
        *(v28 + v31) = v32 | 0x80;
      }
    }

    if (v13)
    {
      v33 = *(v28 + qword_280DDF418);
      if ((v33 & 0x200) == 0)
      {
        *(v28 + qword_280DDF418) = v33 | 0x200;
      }
    }

    if ((v46 & 0x100000000) != 0)
    {
      v34 = *(v28 + qword_280DDF418);
      if ((v34 & 0x400) == 0)
      {
        *(v28 + qword_280DDF418) = v34 | 0x400;
      }
    }

    if (v46)
    {
      v35 = *(v28 + qword_280DDF418);
      if ((v35 & 0x800) == 0)
      {
        *(v28 + qword_280DDF418) = v35 | 0x800;
      }
    }

    if (v16)
    {
      v36 = *(v28 + qword_280DDF418);
      if ((v36 & 0x40) == 0)
      {
        *(v28 + qword_280DDF418) = v36 | 0x40;
      }
    }

    return result;
  }

  while (1)
  {
    if (v45)
    {
      if (v14)
      {
        if (v13)
        {
          if ((v46 & 0x100000000) != 0)
          {
            if (v46)
            {
              if (v16)
              {

                v16 = 1;
                v46 = 0x100000001;
                v13 = 1;
                v14 = 1;
                v45 = 1;
                goto LABEL_12;
              }

              v46 = 0x100000001;
              v13 = 1;
              v14 = 1;
              v45 = 1;
LABEL_11:
              v18 = *(v22 + 48);

              v16 = v18 == 5;
              goto LABEL_12;
            }

            HIDWORD(v46) = 1;
            v13 = 1;
            v14 = 1;
            v45 = 1;
            goto LABEL_71;
          }

          v13 = 1;
          v14 = 1;
          v45 = 1;
          goto LABEL_59;
        }

        v14 = 1;
        v45 = 1;
        goto LABEL_45;
      }

      v24 = v16;
      v45 = 1;
    }

    else
    {
      v45 = *(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) != *(v22 + 40);
      if (v14)
      {
        if (v13)
        {
          if ((v46 & 0x100000000) != 0)
          {
            if (v46)
            {
              if (!v16)
              {
                v46 = 0x100000001;
                v13 = 1;
                v14 = 1;
                goto LABEL_11;
              }

              v16 = 1;
              v46 = 0x100000001;
              v13 = 1;
              v14 = 1;
              goto LABEL_12;
            }

            HIDWORD(v46) = 1;
            v13 = 1;
            v14 = 1;
            goto LABEL_71;
          }

          v13 = 1;
          v14 = 1;
LABEL_59:
          if (*(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) == 5)
          {
            HIDWORD(v46) = *(v22 + 48) == 4;
            if (v46)
            {
              if (v16)
              {

LABEL_66:
                v16 = 1;
                LODWORD(v46) = 1;
                goto LABEL_12;
              }

              goto LABEL_10;
            }
          }

          else
          {
            if (v46)
            {
              if (v16)
              {

                HIDWORD(v46) = 0;
                goto LABEL_66;
              }

              HIDWORD(v46) = 0;
LABEL_10:
              LODWORD(v46) = 1;
              goto LABEL_11;
            }

            HIDWORD(v46) = 0;
          }

LABEL_71:
          if ((*(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) & 0xFFFFFFFFFFFFFFFELL) == 4)
          {
            LODWORD(v46) = *(v22 + 48) == 6;
            if (!v16)
            {
              goto LABEL_11;
            }
          }

          else
          {
            if (!v16)
            {
              LODWORD(v46) = 0;
              goto LABEL_11;
            }

            LODWORD(v46) = 0;
          }

          v16 = 1;
LABEL_12:
          v7 = v21;
          v9 = v44;
          if (v4 < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_13;
        }

        v14 = 1;
LABEL_45:
        if (*(v22 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) == 4)
        {
          v13 = *(v22 + 48) == 5;
          if ((v46 & 0x100000000) == 0)
          {
            goto LABEL_59;
          }

          if (v46)
          {
            if (v16)
            {

LABEL_54:
              v16 = 1;
              v46 = 0x100000001;
              goto LABEL_12;
            }

            goto LABEL_82;
          }
        }

        else
        {
          if ((v46 & 0x100000000) == 0)
          {
            v13 = 0;
            goto LABEL_59;
          }

          if (v46)
          {
            if (v16)
            {

              v13 = 0;
              goto LABEL_54;
            }

            v13 = 0;
LABEL_82:
            v46 = 0x100000001;
            goto LABEL_11;
          }

          v13 = 0;
        }

        HIDWORD(v46) = 1;
        goto LABEL_71;
      }

      v24 = v16;
    }

    v25 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
    swift_beginAccess();
    v26 = v41;
    v27 = v42;
    (*v40)(v41, v22 + v25, v42);
    sub_2282D98CC(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    LOBYTE(v25) = sub_228391FB0();
    (*v39)(v26, v27);
    v14 = v25 ^ 1;
    if (!v13)
    {
      v16 = v24;
      v4 = v43;
      goto LABEL_45;
    }

    if ((v46 & 0x100000000) == 0)
    {
      v16 = v24;
      v13 = 1;
      v4 = v43;
      goto LABEL_59;
    }

    v16 = v24;
    if ((v46 & 1) == 0)
    {
      HIDWORD(v46) = 1;
      v13 = 1;
      v4 = v43;
      goto LABEL_71;
    }

    if (!v24)
    {
      v46 = 0x100000001;
      v13 = 1;
      v4 = v43;
      goto LABEL_11;
    }

    v16 = 1;
    v46 = 0x100000001;
    v13 = 1;
    v7 = v21;
    v4 = v43;
    v9 = v44;
    if (v43 < 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v19 = v7;
    v20 = v9;
    v21 = v7;
    if (!v9)
    {
      break;
    }

LABEL_17:
    v44 = (v20 - 1) & v20;
    v22 = *(*(v4 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));

    if (!v22)
    {
      goto LABEL_85;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      goto LABEL_85;
    }

    v20 = *(v6 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void *sub_2282D50AC(uint64_t a1)
{
  v98 = sub_22838F440();
  v3 = *(v98 - 8);
  v4 = MEMORY[0x28223BE20](v98);
  v89[0] = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v96 = v89 - v7;
  MEMORY[0x28223BE20](v6);
  v100 = v89 - v8;
  v9 = qword_280DDF418;
  v10 = *(v1 + qword_280DDF418);
  if ((a1 & ~v10) != 0)
  {
    *(v1 + qword_280DDF418) = v10 | a1;
  }

  sub_2282D48E8();
  sub_22838F3F0();
  v11 = qword_280DDC818;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = sub_2283930D0();

    v12 = *(v1 + v11);
  }

  else
  {
    v13 = *(v12 + 16);
  }

  v14 = v13 != 0;
  if ((v12 & 0xC000000000000001) != 0)
  {

    v15 = sub_2283930D0();

    v12 = *(v1 + v11);
  }

  else
  {
    v15 = *(v12 + 16);
  }

  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v15)
  {
    v16 = 0;
  }

  v104 = v16;
  if ((v12 & 0xC000000000000001) != 0)
  {

    v17 = sub_2283930D0();

    v12 = *(v1 + v11);
  }

  else
  {
    v17 = *(v12 + 16);
  }

  v18 = v17 != 0;
  if ((v12 & 0xC000000000000001) != 0)
  {

    v19 = sub_2283930D0();

    v12 = *(v1 + v11);
  }

  else
  {
    v19 = *(v12 + 16);
  }

  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v19)
  {
    v20 = 0;
  }

  v102 = v20;
  if ((v12 & 0xC000000000000001) != 0)
  {

    v21 = sub_2283930D0();

    v12 = *(v1 + v11);
  }

  else
  {
    v21 = *(v12 + 16);
  }

  v22 = v21 != 0;
  if ((v12 & 0xC000000000000001) != 0)
  {

    v23 = sub_2283930D0();

    v12 = *(v1 + v11);
  }

  else
  {
    v23 = *(v12 + 16);
  }

  v103 = (v14 << 63);
  v101 = v18 << 63;
  v95 = v22 << 63;
  if (v23)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = 0;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {

    sub_228393080();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel, &protocol conformance descriptor for MedicationsDoseLogViewModel);
    sub_2283924C0();
    v12 = v108;
    v25 = v109;
    v26 = v110;
    v27 = v111;
    v28 = v112;
  }

  else
  {
    v29 = -1 << *(v12 + 32);
    v25 = v12 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v12 + 56);

    v28 = v32;
    v27 = 0;
  }

  v89[2] = v11;
  v90 = v9;
  v91 = v1;
  v105 = 0;
  v89[1] = v26;
  v33 = (v26 + 64) >> 6;
  v94 = (v3 + 16);
  v97 = (v3 + 8);
  v92 = v12;
  v93 = v33;
  while (1)
  {
    v34 = v27;
    v35 = v28;
    if (v12 < 0)
    {
      break;
    }

    while (1)
    {
      v37 = v34;
      v38 = v35;
      v27 = v34;
      if (!v35)
      {
        while (1)
        {
          v27 = (v37 + 1);
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v27 >= v33)
          {
            goto LABEL_76;
          }

          v38 = *(v25 + 8 * v27);
          ++v37;
          if (v38)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

LABEL_43:
      v99 = (v38 - 1) & v38;
      v26 = *(*(v12 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v38)))));

      if (!v26)
      {
        goto LABEL_76;
      }

LABEL_44:
      v1 = v26;
      v39 = sub_228300D60() & 1;
      v40 = __OFADD__(v105, v39);
      v105 += v39;
      if (v40)
      {
        goto LABEL_84;
      }

      v12 = v25;
      v41 = v24;
      v24 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v9 = *v94;
      v42 = v96;
      v43 = v98;
      (*v94)(v96, v26 + v24, v98);
      v1 = v100;
      sub_22838F360();
      v45 = v44;
      v34 = *v97;
      (*v97)(v42, v43);
      v46 = v45 / 3600.0;
      if (COERCE__INT64(fabs(v45 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_85;
      }

      if (v46 <= -9.22337204e18)
      {
        goto LABEL_86;
      }

      if (v46 >= 9.22337204e18)
      {
        goto LABEL_87;
      }

      v48 = v103;
      v47 = v104;
      if (v103 <= v46)
      {
        v48 = v46;
      }

      if (v104 >= v46)
      {
        v47 = v46;
      }

      v49 = *(v26 + 32);
      v103 = v48;
      v104 = v47;
      if (!v49)
      {
        v101 &= ~(v101 >> 63);
        v102 &= v102 >> 63;
        goto LABEL_63;
      }

      v50 = v96;
      sub_228390920();
      v1 = v100;
      sub_22838F360();
      v52 = v51;

      (v34)(v50, v98);
      v53 = v52 / 3600.0;
      if (COERCE__INT64(fabs(v52 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_88;
      }

      if (v53 <= -9.22337204e18)
      {
        goto LABEL_89;
      }

      if (v53 >= 9.22337204e18)
      {
        goto LABEL_90;
      }

      v55 = v101;
      v54 = v102;
      if (v101 <= v53)
      {
        v55 = v53;
      }

      v56 = *(v26 + 32);
      if (v53 < v102)
      {
        v54 = v53;
      }

      v101 = v55;
      v102 = v54;
      if (v56)
      {
        break;
      }

LABEL_63:

      v24 = v41;
      v33 = v93;
      if (v95 < 0)
      {
        v95 = 0;
        v57 = 0;
        v25 = v12;
        goto LABEL_73;
      }

      v24 = v41 & (v41 >> 63);
      v34 = v27;
      v35 = v99;
      v25 = v12;
      v12 = v92;
      if (v92 < 0)
      {
        goto LABEL_36;
      }
    }

    v58 = v26 + v24;
    v59 = v96;
    v60 = v98;
    v9(v96, v58, v98);

    v9 = v89[0];
    sub_228390920();
    v1 = v59;
    sub_22838F360();
    v62 = v61;

    v26 = v97;
    (v34)(v9, v60);
    result = (v34)(v59, v60);
    v64 = v62 / 3600.0;
    if (COERCE__INT64(fabs(v62 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return result;
    }

    v33 = v93;
    if (v64 <= -9.22337204e18)
    {
      goto LABEL_95;
    }

    if (v64 >= 9.22337204e18)
    {
      goto LABEL_96;
    }

    v24 = v41;
    v25 = v12;
    v57 = v64;
    v65 = v95;
    if (v95 <= v64)
    {
      v65 = v64;
    }

    v95 = v65;
LABEL_73:
    v12 = v92;
    v28 = v99;
    if (v57 < v24)
    {
      v24 = v57;
    }
  }

LABEL_36:
  v36 = sub_228393100();
  if (v36)
  {
    v106 = v36;
    type metadata accessor for MedicationsDoseLogViewModel(0);
    swift_dynamicCast();
    v26 = v107;
    v27 = v34;
    v99 = v35;
    if (v107)
    {
      goto LABEL_44;
    }
  }

LABEL_76:
  sub_228176F04(v12);
  v1 = 0x277CCA000uLL;
  v66 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v103 = [v66 initWithInteger_];
  v67 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v68 = [v67 initWithInteger_];
  v9 = v91;
  v26 = *&v91[qword_280DDF410];
  v104 = v68;
  if (v26 == 1)
  {
    v69 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v101 = [v69 initWithInteger_];
    v70 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v12 = [v70 initWithInteger_];
    v71 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v102 = [v71 initWithInteger_];
    v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  else
  {
    v34 = 0;
    v101 = 0;
    v102 = 0;
    v12 = 0;
  }

  v24 = v90;
  v72 = *(v9 + qword_280DDC840);
  v99 = v26;
  if (!v72)
  {
    goto LABEL_92;
  }

  v73 = *(v72 + 16);
  if (v73 >> 62)
  {
LABEL_91:
    v74 = sub_2283930D0();
    if (v26 != 1)
    {
      goto LABEL_92;
    }

LABEL_82:
    v75 = [objc_allocWithZone(*(v1 + 2992)) initWithBool_];
  }

  else
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 == 1)
    {
      goto LABEL_82;
    }

LABEL_92:
    v75 = 0;
  }

  sub_2282CEB94(v76);

  v96 = objc_opt_self();
  v77 = *(v9 + qword_280DDC808);
  v78 = *(v9 + v24);
  v79 = *(v9 + qword_280DDF420);
  v80 = sub_228392190();

  v81 = v105 > 1;
  v88 = v34;
  v105 = v34;
  v82 = v102;
  v87 = v12;
  v83 = v12;
  v84 = v101;
  v85 = v104;
  v86 = v103;
  [v96 submitLogMetricWithHealthStore:v77 actions:v78 provenance:v79 context:v99 medicationIdentifiers:v80 loggingMultipleMeds:v81 hoursAgoLoggedForMax:v103 hoursAgoLoggedForMin:v104 hoursFromScheduledTimeLoggedMax:v101 hoursFromScheduledTimeLoggedMin:v87 hoursFromScheduledToTakenOrSkippedMax:v102 hoursFromScheduledToTakenOrSkippedMin:v88 isPartiallyLoggingScheduledMeds:v75 dataSource:v77];

  return (*v97)(v100, v98);
}

id MedicationsLogViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_2282D5CD0()
{

  v1 = qword_27D827450;
  v2 = sub_22838F440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_27D827448);
}

id MedicationsLogViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsLogViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282D5E40(uint64_t a1)
{

  v2 = qword_27D827450;
  v3 = sub_22838F440();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_27D827448);
}

uint64_t sub_2282D5FA0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2283930E0();

    if (v8)
    {

      type metadata accessor for MedicationsDoseLogViewModel(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v59[0];
    }

    else
    {
      result = sub_2283930D0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v49 = sub_2282D69BC(v7, result + 1);
        v59[0] = v49;
        v50 = *(v49 + 16);
        if (*(v49 + 24) <= v50)
        {
          sub_2282D703C(v50 + 1);
          v49 = v59[0];
        }

        sub_2282D7578(v51, v49);

        *v3 = v49;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  v52 = v2;
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  v10 = sub_228393570();
  v11 = v6 + 56;
  v12 = -1 << *(v6 + 32);
  v13 = v10 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_37:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59[0] = *v52;

    sub_2282D76BC(v48, v13, isUniquelyReferenced_nonNull_native);
    *v52 = v59[0];
    *a1 = a2;
    return 1;
  }

  v56 = ~v12;
  v55 = v6;
  v54 = v6 + 56;
  while (1)
  {
    v14 = *(*(v6 + 48) + 8 * v13);
    v15 = *(v14 + 24);
    if (!v15)
    {

      goto LABEL_20;
    }

    v16 = v15;
    v17 = [v16 metadata];
    if (!v17)
    {

      goto LABEL_20;
    }

    v18 = v17;
    v19 = sub_228391F20();

    v20 = sub_228392000();
    if (!*(v19 + 16))
    {

      goto LABEL_20;
    }

    v22 = sub_2281A76E0(v20, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {

      v6 = v55;
LABEL_20:
      v28 = [*(v14 + 16) semanticIdentifier];
      v29 = [v28 stringValue];

      v25 = sub_228392000();
      v26 = v30;

      v27 = *(a2 + 24);
      if (!v27)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    sub_2281BC4A4(*(v19 + 56) + 32 * v22, v59);

    v6 = v55;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v25 = v57;
    v26 = v58;
    v27 = *(a2 + 24);
    if (!v27)
    {
      goto LABEL_30;
    }

LABEL_21:
    v31 = v27;
    v32 = [v31 metadata];
    if (v32)
    {
      v33 = v32;
      v34 = sub_228391F20();

      v35 = sub_228392000();
      if (*(v34 + 16))
      {
        v37 = sub_2281A76E0(v35, v36);
        v39 = v38;

        if (v39)
        {
          sub_2281BC4A4(*(v34 + 56) + 32 * v37, v59);

          if (swift_dynamicCast())
          {
            v41 = v57;
            v40 = v58;
            v11 = v54;
            v6 = v55;
            goto LABEL_31;
          }
        }

        else
        {
        }

        v11 = v54;
        v6 = v55;
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_30:
    v42 = [*(a2 + 16) semanticIdentifier];
    v43 = [v42 stringValue];

    v41 = sub_228392000();
    v40 = v44;

LABEL_31:
    if (v25 == v41 && v26 == v40)
    {

      goto LABEL_44;
    }

    v46 = sub_228393460();

    if (v46)
    {
      break;
    }

    v13 = (v13 + 1) & v56;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_44:
  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_2282D6520(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  v11 = sub_228393570();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_228393460() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_228393460() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_2282D78B8(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_2282D671C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2283930E0();

    if (v17)
    {

      sub_22817A958(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_2283930D0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2282D6BE4(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2282D6E20(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_2282D7638(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_22817A958(0, a3, a4);
    v19 = sub_228392C50();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_228392C60();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2282D7A84(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2282D69BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2282D9D2C(0, &qword_27D827468, MEMORY[0x277D84098]);
    v2 = sub_228393190();
    v15 = v2;
    sub_228393080();
    if (sub_228393100())
    {
      type metadata accessor for MedicationsDoseLogViewModel(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2282D703C(v9 + 1);
        }

        v2 = v15;
        sub_228393520();
        sub_228300540();
        sub_2283920B0();

        result = sub_228393570();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_228393100());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2282D6BE4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_2281F0644(0, a3, a4, a5, a6);
    v10 = sub_228393190();
    v23 = v10;
    sub_228393080();
    if (sub_228393100())
    {
      sub_22817A958(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2282D6E20(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_228392C50();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_228393100());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2282D6E20(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_2281F0644(0, a2, a3, a4, a5);
  result = sub_228393180();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_228392C50();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_2282D703C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2282D9D2C(0, &qword_27D827468, MEMORY[0x277D84098]);
  result = sub_228393180();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_228393520();
      sub_228300540();
      sub_2283920B0();

      result = sub_228393570();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2282D72B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22827C32C(0);
  result = sub_228393180();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_228393520();
      sub_2283920B0();
      sub_2283920B0();
      result = sub_228393570();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2282D7578(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  sub_228393570();
  result = sub_228393060();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_2282D7638(uint64_t a1, uint64_t a2)
{
  sub_228392C50();
  result = sub_228393060();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2282D76BC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2282D703C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2282D7C2C();
      goto LABEL_16;
    }

    sub_2282D8040(v6 + 1);
  }

  v8 = *v3;
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  result = sub_228393570();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for MedicationsDoseLogViewModel(0);
    do
    {

      v11 = sub_228300540();
      v13 = v12;
      if (v11 == sub_228300540() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = sub_228393460();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_228393490();
  __break(1u);
  return result;
}

uint64_t sub_2282D78B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_2282D72B8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_2282D7D8C();
      goto LABEL_22;
    }

    sub_2282D8294(v12 + 1);
  }

  v14 = *v6;
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  result = sub_228393570();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    while (1)
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_228393460(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          break;
        }

        result = sub_228393460();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v17;
      if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_228393490();
    __break(1u);
  }

LABEL_22:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void sub_2282D7A84(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2282D6E20(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2282D7EEC(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_2282D84EC(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_228392C50();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_22817A958(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_228392C60();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_228393490();
  __break(1u);
}

void *sub_2282D7C2C()
{
  v1 = v0;
  sub_2282D9D2C(0, &qword_27D827468, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_228393170();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2282D7D8C()
{
  v1 = v0;
  sub_22827C32C(0);
  v2 = *v0;
  v3 = sub_228393170();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2282D7EEC(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_2281F0644(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_228393170();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

uint64_t sub_2282D8040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2282D9D2C(0, &qword_27D827468, MEMORY[0x277D84098]);
  result = sub_228393180();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_228393520();

      sub_228300540();
      sub_2283920B0();

      result = sub_228393570();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2282D8294(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22827C32C(0);
  result = sub_228393180();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_228393520();

      sub_2283920B0();
      sub_2283920B0();
      result = sub_228393570();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2282D84EC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_2281F0644(0, a2, a3, a4, a5);
  result = sub_228393180();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_228392C50();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_2282D86F4(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_228393110();

    if (v5)
    {
      v6 = sub_2282D8BC4(v4);

      return v6;
    }

    return 0;
  }

  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  v8 = sub_228393570();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v47 = v1;
  v49 = ~v9;
  v48 = a1;
  while (1)
  {
    v11 = *(*(v3 + 48) + 8 * v10);
    v12 = *(v11 + 24);
    if (!v12)
    {

      goto LABEL_21;
    }

    v13 = v12;
    v14 = [v13 metadata];
    if (!v14)
    {

      goto LABEL_21;
    }

    v15 = v14;
    v16 = sub_228391F20();

    v17 = sub_228392000();
    if (!*(v16 + 16))
    {

      goto LABEL_21;
    }

    v19 = sub_2281A76E0(v17, v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

LABEL_20:
      a1 = v48;
LABEL_21:
      v25 = [*(v11 + 16) semanticIdentifier];
      v26 = [v25 stringValue];

      v22 = sub_228392000();
      v23 = v27;

      v24 = *(a1 + 24);
      if (!v24)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    sub_2281BC4A4(*(v16 + 56) + 32 * v19, v52);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v22 = v50;
    v23 = v51;
    a1 = v48;
    v24 = *(v48 + 24);
    if (!v24)
    {
      goto LABEL_31;
    }

LABEL_22:
    v28 = v24;
    v29 = [v28 metadata];
    if (v29)
    {
      v30 = v29;
      v31 = sub_228391F20();

      v32 = sub_228392000();
      if (*(v31 + 16))
      {
        v34 = sub_2281A76E0(v32, v33);
        v36 = v35;

        if (v36)
        {
          sub_2281BC4A4(*(v31 + 56) + 32 * v34, v52);

          if (swift_dynamicCast())
          {
            v38 = v50;
            v37 = v51;
            a1 = v48;
            goto LABEL_32;
          }
        }

        else
        {
        }

        a1 = v48;
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_31:
    v39 = [*(a1 + 16) semanticIdentifier];
    v40 = [v39 stringValue];

    v38 = sub_228392000();
    v37 = v41;

LABEL_32:
    if (v22 == v38 && v23 == v37)
    {
      break;
    }

    v43 = sub_228393460();

    if (v43)
    {
      goto LABEL_42;
    }

    v10 = (v10 + 1) & v49;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_42:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v47;
  v52[0] = *v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2282D7C2C();
    v45 = v52[0];
  }

  v46 = *(*(v45 + 48) + 8 * v10);
  sub_2282D8E04(v10);
  result = v46;
  *v47 = v52[0];
  return result;
}

uint64_t sub_2282D8BC4(uint64_t a1)
{

  v2 = sub_2283930D0();
  v3 = swift_unknownObjectRetain();
  v4 = sub_2282D69BC(v3, v2);
  v23 = v4;
  sub_228393520();

  sub_228300540();
  sub_2283920B0();

  v5 = sub_228393570();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {

      v9 = sub_228300540();
      v11 = v10;
      if (v9 == sub_228300540() && v11 == v12)
      {
        break;
      }

      v14 = sub_228393460();

      if (v14)
      {

        goto LABEL_12;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

LABEL_12:
  v15 = *(*(v4 + 48) + 8 * v7);
  sub_2282D8E04(v7);
  v16 = sub_228300540();
  v18 = v17;
  if (v16 == sub_228300540() && v18 == v19)
  {
    goto LABEL_18;
  }

  v21 = sub_228393460();

  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_18:
  }

  *v1 = v23;
  return v15;
}

unint64_t sub_2282D8E04(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_228393050();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v34 = *MEMORY[0x277CCC520];
      v35 = v7;
      v10 = v7;
      v36 = v3;
      while (1)
      {
        v11 = *(*(v3 + 48) + 8 * v6);
        sub_228393520();
        v12 = *(v11 + 24);
        if (v12)
        {
          break;
        }

LABEL_19:
        v24 = [*(v11 + 16) semanticIdentifier];
        v25 = [v24 stringValue];

        sub_228392000();
LABEL_20:
        sub_2283920B0();

        v26 = sub_228393570();

        v27 = v26 & v10;
        if (v2 >= v9)
        {
          if (v27 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v27 >= v9)
        {
          goto LABEL_25;
        }

        if (v2 >= v27)
        {
LABEL_25:
          v28 = *(v3 + 48);
          v29 = (v28 + 8 * v2);
          v30 = (v28 + 8 * v6);
          if (v2 != v6 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v10;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v13 = v9;

      v14 = v12;
      v15 = [v14 metadata];
      if (!v15)
      {

LABEL_18:
        v9 = v13;
        v3 = v36;
        goto LABEL_19;
      }

      v16 = v4;
      v17 = v15;
      v18 = sub_228391F20();

      v19 = sub_228392000();
      if (*(v18 + 16))
      {
        v21 = sub_2281A76E0(v19, v20);
        v23 = v22;

        if (v23)
        {
          sub_2281BC4A4(*(v18 + 56) + 32 * v21, v37);

          if (swift_dynamicCast())
          {
            v4 = v16;
            v9 = v13;
            v10 = v35;
            v3 = v36;
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      else
      {
      }

LABEL_17:
      v4 = v16;
      v10 = v35;
      goto LABEL_18;
    }

LABEL_28:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v31 = *(v3 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v33;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2282D9174(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v6 = a4;
      }

      else
      {
        v6 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAB6C90](result, a2, v6);
      type metadata accessor for MedicationsDoseLogViewModel(0);
      swift_dynamicCast();
      return v47[0];
    }

LABEL_52:
    __break(1u);
    return result;
  }

  if (a3)
  {
    result = sub_2283930B0();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v45 = sub_2283930C0();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    swift_dynamicCast();
    v7 = v47[0];
    sub_228393520();
    sub_228300540();
    sub_2283920B0();

    v8 = sub_228393570();
    v9 = -1 << *(a4 + 32);
    v5 = v8 & ~v9;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v44 = ~v9;
      v43 = v47[0];
      while (1)
      {
        v10 = *(*(a4 + 48) + 8 * v5);
        v11 = *(v10 + 24);
        if (!v11)
        {

          goto LABEL_23;
        }

        v12 = v11;
        v13 = [v12 metadata];
        if (!v13)
        {

          goto LABEL_23;
        }

        v14 = v13;
        v15 = sub_228391F20();

        v16 = sub_228392000();
        if (!*(v15 + 16))
        {
          break;
        }

        v18 = sub_2281A76E0(v16, v17);
        v20 = v19;

        if ((v20 & 1) == 0)
        {

LABEL_22:
          v7 = v43;
LABEL_23:
          v24 = [*(v10 + 16) semanticIdentifier];
          v25 = [v24 stringValue];

          v22 = sub_228392000();
          v21 = v26;

          v23 = *(v7 + 24);
          if (!v23)
          {
            goto LABEL_33;
          }

          goto LABEL_24;
        }

        sub_2281BC4A4(*(v15 + 56) + 32 * v18, v47);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_22;
        }

        v22 = v45;
        v21 = v46;
        v7 = v43;
        v23 = *(v43 + 24);
        if (!v23)
        {
          goto LABEL_33;
        }

LABEL_24:
        v27 = v23;
        v28 = [v27 metadata];
        if (v28)
        {
          v29 = v28;
          v30 = sub_228391F20();

          v31 = sub_228392000();
          if (!*(v30 + 16))
          {

LABEL_32:

            v7 = v43;
            goto LABEL_33;
          }

          v33 = sub_2281A76E0(v31, v32);
          v35 = v34;

          if ((v35 & 1) == 0)
          {

            goto LABEL_32;
          }

          sub_2281BC4A4(*(v30 + 56) + 32 * v33, v47);

          v7 = v43;
          if (swift_dynamicCast())
          {
            v37 = v45;
            v36 = v46;
            goto LABEL_34;
          }
        }

        else
        {
        }

LABEL_33:
        v38 = [*(v7 + 16) semanticIdentifier];
        v39 = [v38 stringValue];

        v37 = sub_228392000();
        v36 = v40;

LABEL_34:
        if (v22 == v37 && v21 == v36)
        {
          goto LABEL_46;
        }

        v42 = sub_228393460();

        if (v42)
        {
        }

        v5 = (v5 + 1) & v44;
        if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_23;
    }

LABEL_40:

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_50;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_46:
  }
}

void sub_2282D96B4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAB6C90](a1, a2, v11);
      sub_22817A958(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22817A958(0, a5, a6);
    if (sub_2283930B0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2283930C0();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_228392C50();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_228392C60();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_2282D98CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MedicationsLogViewController(uint64_t a1)
{
  result = qword_280DDC7C8;
  if (!qword_280DDC7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282D9960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282D99C0(uint64_t a1)
{
  result = sub_22838F440();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_2282D9B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2282D9B6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22819DA1C;

  return sub_2282D1114();
}

void sub_2282D9C20()
{
  *(v0 + qword_280DDC818) = MEMORY[0x277D84FA0];
  v1 = v0 + qword_280DDC7E8;
  *v1 = vdupq_n_s64(0x4040000000000000uLL);
  *(v1 + 16) = xmmword_2283A2960;
  *(v0 + qword_280DDC800) = 0x4049000000000000;
  *(v0 + qword_280DDC838) = 0;
  *(v0 + qword_280DDC848) = 0;
  *(v0 + qword_280DDC7F0) = 0;
  *(v0 + qword_280DDC810) = 0;
  *(v0 + qword_280DDF418) = 0;
  *(v0 + qword_280DDC7E0) = 0;
  *(v0 + qword_280DDC820) = 0;
  *(v0 + qword_280DDC828) = 0;
  *(v0 + qword_27D827448) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2282D9D2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MedicationsDoseLogViewModel(255);
    v7 = sub_2282D98CC(&qword_27D827458, type metadata accessor for MedicationsDoseLogViewModel, &protocol conformance descriptor for MedicationsDoseLogViewModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2282D9E08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22819D87C;

  return sub_2282D1114();
}

uint64_t sub_2282D9ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a1;
  sub_2281EBD48(0);
  v149 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v126 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v122 = &v119 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v125 = &v119 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v129 = &v119 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v131 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v134 = &v119 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v137 = &v119 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v144 = &v119 - v19;
  MEMORY[0x28223BE20](v18);
  v140 = &v119 - v20;
  sub_2281EBC94(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_228391130();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v124 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v128 = &v119 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v121 = &v119 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v123 = &v119 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v127 = &v119 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v130 = &v119 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v133 = &v119 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v136 = &v119 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v139 = &v119 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v141 = &v119 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v119 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v119 - v49;
  sub_2282DAF70(0);
  v52 = v51;
  v132 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v119 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154[1] = 0;
  sub_2281DC0DC(&qword_280DDBD00, MEMORY[0x277D11790]);
  v145 = a2;
  sub_2283935F0();
  sub_2283910C0();
  sub_2283935E0();
  v55 = v25;
  v58 = v25[1];
  v57 = v25 + 1;
  v56 = v58;
  v58(v50, v24);
  v150 = v54;
  v151 = v52;
  v59 = v58;
  sub_228391E00();
  v60 = v55;
  v61 = v141;
  v147 = v55[6];
  v148 = v55 + 6;
  if (v147(v23, 1, v24) != 1)
  {
    v152 = v55[4];
    v153 = v55 + 4;
    v63 = (v55 + 2);
    v142 = v56;
    v143 = v23;
    v154[0] = v60 + 2;
    v138 = v57;
    v152(v48, v23, v24);
    while (1)
    {
      v70 = *v63;
      (*v63)(v61, v48, v24);
      v71 = v70;
      sub_2283910A0();
      sub_2281DC0DC(&qword_280DDBD08, MEMORY[0x277D11778]);
      LOBYTE(v70) = sub_228391FB0();
      v59(v50, v24);
      if (v70)
      {
        v59(v61, v24);
        v68 = v48;
        if ((v146 & 0x40) != 0)
        {
          v71(v50, v145, v24);
          sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
          v72 = v139;
          sub_228392FB0();
          v73 = sub_228391FB0();
          v74 = *(v149 + 48);
          v75 = v140;
          *v140 = (v73 & 1) == 0;
          if (v73)
          {
            v59 = v142;
            v142(v48, v24);
            v152(&v75[v74], v72, v24);
          }

          else
          {
            v89 = v72;
            v90 = v142;
            v142(v89, v24);
            v71(&v75[v74], v48, v24);
            v71(v50, v48, v24);
            v59 = v90;
            sub_228393000();
            v90(v48, v24);
          }

          v66 = v75;
          v61 = v141;
          goto LABEL_6;
        }
      }

      else
      {
        sub_228391090();
        v76 = sub_228391FB0();
        v59(v50, v24);
        if (v76)
        {
          v59(v61, v24);
          v68 = v48;
          if (v146)
          {
            v77 = v71;
            v71(v50, v145, v24);
            v78 = sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
            v79 = v136;
            v135 = v78;
            sub_228392FB0();
            v80 = sub_228391FB0();
            v81 = *(v149 + 48);
            v82 = v137;
            *v137 = (v80 & 1) == 0;
            if (v80)
            {
              goto LABEL_26;
            }

            goto LABEL_4;
          }
        }

        else
        {
          sub_2283910B0();
          v83 = sub_228391FB0();
          v59(v50, v24);
          if (v83)
          {
            v59(v61, v24);
            v68 = v48;
            if ((v146 & 2) != 0)
            {
              v77 = v71;
              v71(v50, v145, v24);
              v84 = sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
              v79 = v133;
              v135 = v84;
              sub_228392FB0();
              v85 = sub_228391FB0();
              v86 = ~v85;
              v81 = *(v149 + 48);
              v87 = (v85 & 1) == 0;
              v88 = &v158;
              goto LABEL_25;
            }
          }

          else
          {
            sub_228391120();
            v91 = sub_228391FB0();
            v59(v50, v24);
            if (v91)
            {
              v59(v61, v24);
              v68 = v48;
              if ((v146 & 4) != 0)
              {
                v77 = v71;
                v71(v50, v145, v24);
                v92 = sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
                v79 = v130;
                v135 = v92;
                sub_228392FB0();
                v93 = sub_228391FB0();
                v86 = ~v93;
                v81 = *(v149 + 48);
                v87 = (v93 & 1) == 0;
                v88 = &v157;
LABEL_25:
                v82 = *(v88 - 32);
                *v82 = v87;
                if ((v86 & 1) == 0)
                {
LABEL_26:
                  v94 = v48;
                  v95 = v24;
                  v59 = v142;
                  goto LABEL_27;
                }

LABEL_4:
                v64 = v79;
                v65 = v142;
                v142(v64, v24);
                v77(&v82[v81], v48, v24);
                v77(v50, v48, v24);
                v59 = v65;
                sub_228393000();
                v65(v48, v24);
                goto LABEL_5;
              }
            }

            else
            {
              sub_2283910F0();
              v98 = sub_228391FB0();
              v59(v50, v24);
              if (v98)
              {
                v59(v61, v24);
                v68 = v48;
                if ((v146 & 8) != 0)
                {
                  v135 = v71;
                  v71(v50, v145, v24);
                  v99 = sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
                  v79 = v127;
                  v120 = v99;
                  sub_228392FB0();
                  v100 = sub_228391FB0();
                  v101 = ~v100;
                  v81 = *(v149 + 48);
                  v102 = (v100 & 1) == 0;
                  v103 = &v156;
                  goto LABEL_38;
                }
              }

              else
              {
                sub_228391080();
                v104 = sub_228391FB0();
                v59(v50, v24);
                if (v104)
                {
                  v59(v61, v24);
                  v68 = v48;
                  if ((v146 & 0x10) != 0)
                  {
                    v135 = v71;
                    v71(v50, v145, v24);
                    v105 = sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
                    v79 = v123;
                    v120 = v105;
                    sub_228392FB0();
                    v106 = sub_228391FB0();
                    v101 = ~v106;
                    v81 = *(v149 + 48);
                    v102 = (v106 & 1) == 0;
                    v103 = &v155;
                    goto LABEL_38;
                  }
                }

                else
                {
                  sub_2283910E0();
                  v107 = sub_228391FB0();
                  v59(v50, v24);
                  v59(v61, v24);
                  if ((v107 & 1) == 0)
                  {
                    sub_228391070();
                    v135 = v71;
                    v71(v50, v145, v24);
                    v112 = sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
                    v113 = v124;
                    v120 = v112;
                    sub_228392FB0();
                    v114 = sub_228391FB0();
                    v115 = *(v149 + 48);
                    v82 = v126;
                    *v126 = (v114 & 1) == 0;
                    if (v114)
                    {
                      v59(v128, v24);
                      v59(v48, v24);
                      v96 = &v82[v115];
                      v97 = v113;
                      goto LABEL_28;
                    }

                    v59(v113, v24);
                    v116 = &v82[v115];
                    v117 = v128;
                    v118 = v135;
                    v135(v116, v128, v24);
                    v118(v50, v117, v24);
                    sub_228393000();
                    v59(v117, v24);
                    goto LABEL_44;
                  }

                  v68 = v48;
                  if ((v146 & 0x20) != 0)
                  {
                    v135 = v71;
                    v71(v50, v145, v24);
                    v108 = sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
                    v79 = v121;
                    v120 = v108;
                    sub_228392FB0();
                    v109 = sub_228391FB0();
                    v101 = ~v109;
                    v81 = *(v149 + 48);
                    v102 = (v109 & 1) == 0;
                    v103 = v154;
LABEL_38:
                    v82 = *(v103 - 32);
                    *v82 = v102;
                    if ((v101 & 1) == 0)
                    {
                      v94 = v48;
                      v95 = v24;
LABEL_27:
                      v59(v94, v95);
                      v96 = &v82[v81];
                      v97 = v79;
LABEL_28:
                      v152(v96, v97, v24);
LABEL_5:
                      v66 = v82;
LABEL_6:
                      v67 = v144;
                      sub_2281EBDB4(v66, v144);
                      v68 = (v67 + *(v149 + 48));
                      v23 = v143;
                      goto LABEL_7;
                    }

                    v59(v79, v24);
                    v110 = &v82[v81];
                    v111 = v135;
                    v135(v110, v48, v24);
                    v111(v50, v48, v24);
                    sub_228393000();
LABEL_44:
                    v59(v48, v24);
                    goto LABEL_5;
                  }
                }
              }
            }
          }
        }
      }

LABEL_7:
      v59(v68, v24);
      sub_228391E00();
      v69 = v147(v23, 1, v24);
      v63 = v154[0];
      if (v69 == 1)
      {
        return (*(v132 + 8))(v150, v151);
      }

      v152(v48, v23, v24);
    }
  }

  return (*(v132 + 8))(v150, v151);
}

void sub_2282DAF70(uint64_t a1)
{
  if (!qword_27D827480)
  {
    sub_228391130();
    sub_2281DC0DC(&qword_280DDBD00, MEMORY[0x277D11790]);
    v1 = sub_228391E10();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827480);
    }
  }
}

uint64_t sub_2282DAFF0(unint64_t a1, void *a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB6D80](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12 = v7;
      sub_22825A528(&v12, a2, &v11);

      if (v11)
      {
        MEMORY[0x22AAB5D20]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();
        v6 = v13;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t MedicationsRecordDoseDataSource.__allocating_init(healthStore:listManager:medication:incompatibilityCache:didTapRecordDoseHandler:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v41 = sub_22838F4A0();
  v11 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + qword_27D827488) = 0;
  *(v14 + qword_27D827490) = 0;
  *(v14 + qword_27D827498) = 0;
  v15 = (v14 + qword_27D8274A0);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + qword_27D8274A8) = 0;
  *(v14 + qword_27D8274B0) = 0;
  *(v14 + qword_280DDC720) = a1;
  *(v14 + qword_27D8274B8) = a3;
  v39 = a2;
  *(v14 + qword_27D8274C0) = a2;
  *(v14 + qword_27D8274C8) = a4;
  sub_228390890();
  v16 = a1;
  v17 = a3;

  v40 = a4;
  sub_228390880();
  v18 = sub_228390860();

  *(v14 + qword_27D8274D0) = v18;
  v19 = objc_allocWithZone(type metadata accessor for MedicationScheduleObserver(0));
  v20 = v16;
  v21 = sub_22819C7AC(v20);

  *(v14 + qword_27D8274D8) = v21;
  type metadata accessor for MedicationDoseEventDataSource();
  v22 = swift_allocObject();
  v23 = v20;
  v38 = v17;
  swift_defaultActor_initialize();
  *(v22 + 112) = v23;
  *(v22 + 120) = v17;
  *(v14 + qword_27D8274E0) = v22;
  v24 = *v15;
  v25 = v15[1];
  v26 = v37;
  *v15 = a5;
  v15[1] = v26;
  sub_228176FA8(a5, v26);
  sub_228176EC8(v24, v25);
  v27 = (v14 + qword_27D8274E8);
  v28 = *(type metadata accessor for DayScheduleProvider(0) + 24);
  v29 = sub_2283909A0();
  (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
  v30 = MEMORY[0x277D84F90];
  *v27 = MEMORY[0x277D84F90];
  *(v27 + 1) = v30;
  sub_2282E3520(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F30;
  sub_22838FED0();
  sub_22838FED0();
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v42, "MutableArray<");
  HIWORD(v42[1]) = -4864;
  sub_22838F490();
  v31 = sub_22838F450();
  v33 = v32;
  (*(v11 + 8))(v13, v41);
  MEMORY[0x22AAB5C80](v31, v33);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v34 = sub_22838FF30();

  sub_2282DBAA8();
  sub_2282DBCBC();
  sub_228176EC8(a5, v26);

  return v34;
}

uint64_t MedicationsRecordDoseDataSource.init(healthStore:listManager:medication:incompatibilityCache:didTapRecordDoseHandler:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a6;
  v42 = sub_22838F4A0();
  v13 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + qword_27D827488) = 0;
  *(v7 + qword_27D827490) = 0;
  *(v7 + qword_27D827498) = 0;
  v16 = (v7 + qword_27D8274A0);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + qword_27D8274A8) = 0;
  *(v7 + qword_27D8274B0) = 0;
  *(v7 + qword_280DDC720) = a1;
  *(v7 + qword_27D8274B8) = a3;
  v40 = a2;
  *(v7 + qword_27D8274C0) = a2;
  *(v7 + qword_27D8274C8) = a4;
  sub_228390890();
  v17 = a1;
  v18 = a3;

  v41 = a4;
  sub_228390880();
  v19 = sub_228390860();

  *(v7 + qword_27D8274D0) = v19;
  v20 = objc_allocWithZone(type metadata accessor for MedicationScheduleObserver(0));
  v21 = v17;
  v22 = sub_22819C7AC(v21);

  *(v7 + qword_27D8274D8) = v22;
  type metadata accessor for MedicationDoseEventDataSource();
  v23 = swift_allocObject();
  v24 = v21;
  v39 = v18;
  swift_defaultActor_initialize();
  *(v23 + 112) = v24;
  *(v23 + 120) = v18;
  *(v7 + qword_27D8274E0) = v23;
  v25 = *v16;
  v26 = v16[1];
  v27 = v38;
  *v16 = a5;
  v16[1] = v27;
  sub_228176FA8(a5, v27);
  sub_228176EC8(v25, v26);
  v28 = (v7 + qword_27D8274E8);
  v29 = *(type metadata accessor for DayScheduleProvider(0) + 24);
  v30 = sub_2283909A0();
  (*(*(v30 - 8) + 56))(&v28[v29], 1, 1, v30);
  v31 = MEMORY[0x277D84F90];
  *v28 = MEMORY[0x277D84F90];
  *(v28 + 1) = v31;
  sub_2282E3520(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F30;
  sub_22838FED0();
  sub_22838FED0();
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v43, "MutableArray<");
  HIWORD(v43[1]) = -4864;
  sub_22838F490();
  v32 = sub_22838F450();
  v34 = v33;
  (*(v13 + 8))(v15, v42);
  MEMORY[0x22AAB5C80](v32, v34);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v35 = sub_22838FF30();

  sub_2282DBAA8();
  sub_2282DBCBC();
  sub_228176EC8(a5, v27);

  return v35;
}

uint64_t sub_2282DBAA8()
{
  v1 = v0;
  v2 = *v0;
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = qword_27D827498;
  if (*(v0 + qword_27D827498))
  {
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);

    sub_228392330();
  }

  v7 = sub_2283922D0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_2283922A0();

  v9 = sub_228392290();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v2;

  *(v1 + v6) = sub_22819BCDC(0, 0, v5, &unk_2283A2B58, v10);
}

uint64_t sub_2282DBCBC()
{
  v1 = v0;
  v21 = MEMORY[0x277D85248];
  sub_2282E3520(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_228392830();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282E3138(0);
  v22 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultCenter];
  sub_228392840();

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v14 = sub_228392790();
  v23 = v14;
  v15 = sub_228392730();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_2282E3398(&qword_27D827528, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_2281A1504();
  sub_228391A70();
  sub_2282E3204(v4, &qword_280DDBAD0, v21);

  (*(v6 + 8))(v8, v5);
  swift_allocObject();
  swift_weakInit();
  sub_2282E3398(&qword_27D827530, sub_2282E3138, MEMORY[0x277CBCD60]);
  v16 = v22;
  v17 = sub_228391AC0();

  (*(v10 + 8))(v12, v16);
  *(v1 + qword_27D8274A8) = v17;

  v23 = sub_228360B00();
  swift_allocObject();
  swift_weakInit();
  sub_22829514C();
  sub_2282E3398(&qword_27D8245D8, sub_22829514C, MEMORY[0x277CBCD90]);
  v18 = sub_228391AC0();

  *(v1 + qword_27D8274B0) = v18;
}

uint64_t sub_2282DC120(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282DBAA8();
  }

  return result;
}

uint64_t sub_2282DC178()
{

  sub_228176EC8(*(v0 + qword_27D8274A0), *(v0 + qword_27D8274A0 + 8));
  sub_2282E3F08(v0 + qword_27D8274E8, type metadata accessor for DayScheduleProvider);
}

uint64_t MedicationsRecordDoseDataSource.deinit()
{
  if (*(v0 + qword_27D827488))
  {
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);

    sub_228392330();
  }

  if (*(v0 + qword_27D827490))
  {
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);

    sub_228392330();
  }

  if (*(v0 + qword_27D827498))
  {
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);

    sub_228392330();
  }

  v1 = sub_22838FFB0();

  sub_228176EC8(*(v1 + qword_27D8274A0), *(v1 + qword_27D8274A0 + 8));
  sub_2282E3F08(v1 + qword_27D8274E8, type metadata accessor for DayScheduleProvider);

  return v1;
}

uint64_t MedicationsRecordDoseDataSource.__deallocating_deinit()
{
  MedicationsRecordDoseDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2282DC508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = sub_2283911B0();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v7 = MEMORY[0x277D83D88];
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for DayScheduleProvider(0);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  sub_2282E34A0(0, &qword_27D827540, MEMORY[0x277D858D8]);
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  sub_2282E34A0(0, &qword_27D827548, MEMORY[0x277D858C8]);
  v5[36] = v9;
  v5[37] = *(v9 - 8);
  v5[38] = swift_task_alloc();
  sub_2282E3520(0, &qword_27D827550, MEMORY[0x277D11630], v7);
  v5[39] = swift_task_alloc();
  v5[40] = sub_2283922A0();
  v5[41] = sub_228392290();
  v11 = sub_228392250();
  v5[42] = v11;
  v5[43] = v10;

  return MEMORY[0x2822009F8](sub_2282DC7E4, v11, v10);
}

uint64_t sub_2282DC7E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[44] = Strong;
  if (Strong)
  {
    v0[45] = *(Strong + qword_27D8274D0);

    v2 = swift_task_alloc();
    v0[46] = v2;
    *v2 = v0;
    v2[1] = sub_2282DC970;
    v3 = v0[39];

    return MEMORY[0x28216A5D8](v3);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2282DC970()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 376) = v3;
  *v3 = v2;
  v3[1] = sub_2282DCAEC;
  v4 = *(v1 + 280);

  return sub_2282DDAD0(v4);
}

uint64_t sub_2282DCAEC()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_2282DD3A8;
  }

  else
  {
    v5 = sub_2282DCC28;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2282DCC28()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  sub_228392300();
  (*(v2 + 8))(v1, v3);
  v0[49] = qword_27D8274E8;
  swift_beginAccess();
  v4 = sub_228392290();
  v0[50] = v4;
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_2282DCD40;
  v6 = v0[36];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v0 + 18, v4, v7, v6, v0 + 22);
}

uint64_t sub_2282DCD40()
{
  v2 = *v1;

  v3 = *(v2 + 336);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = sub_2282DD730;
  }

  else
  {
    v5 = sub_2282DCE60;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2282DCE60()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  if (v2 == 255)
  {
    v12 = *(v0 + 304);
    v11 = *(v0 + 312);
    v13 = *(v0 + 288);
    v14 = *(v0 + 296);

    (*(v14 + 8))(v12, v13);
    sub_2282E3204(v11, &qword_27D827550, MEMORY[0x277D11630]);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 240);
    sub_2282E3284(*(v0 + 352) + *(v0 + 392), *(v0 + 256));
    v5 = *(v4 + 24);
    v6 = *(v0 + 312);
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 352) + *(v0 + 392);
    if (v2)
    {
      v10 = *v7;
      sub_2282E358C(v6, v3 + v5, &qword_27D827550, MEMORY[0x277D11630]);
      *v8 = v10;
      v8[1] = v1;
    }

    else
    {
      v17 = v7[1];
      sub_2282E358C(v6, v3 + v5, &qword_27D827550, MEMORY[0x277D11630]);
      *v8 = v1;
      v8[1] = v17;
    }

    swift_beginAccess();

    sub_2282E360C(v8, v9);
    swift_endAccess();
    v18 = *(v0 + 224);
    v19 = *(v0 + 232);
    v20 = sub_2283922D0();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v19, 1, 1, v20);
    v22 = swift_allocObject();
    swift_weakInit();

    v23 = sub_228392290();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;

    sub_2282E358C(v19, v18, &qword_27D827C30, MEMORY[0x277D85720]);
    LODWORD(v18) = (*(v21 + 48))(v18, 1, v20);

    v26 = *(v0 + 224);
    if (v18 == 1)
    {
      sub_2282E3204(*(v0 + 224), &qword_27D827C30, MEMORY[0x277D85720]);
    }

    else
    {
      sub_2283922C0();
      (*(v21 + 8))(v26, v20);
    }

    v27 = v24[2];
    swift_unknownObjectRetain();

    if (v27)
    {
      swift_getObjectType();
      v28 = sub_228392250();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    sub_2282E3204(*(v0 + 232), &qword_27D827C30, MEMORY[0x277D85720]);
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_2283A2B70;
    *(v31 + 24) = v24;
    sub_2281E00EC(0, &qword_27D824AF0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
    if (v30 | v28)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v28;
      *(v0 + 40) = v30;
    }

    v32 = *(v0 + 256);
    swift_task_create();

    sub_2282E3F08(v32, type metadata accessor for DayScheduleProvider);
    v33 = sub_228392290();
    *(v0 + 400) = v33;
    v34 = swift_task_alloc();
    *(v0 + 408) = v34;
    *v34 = v0;
    v34[1] = sub_2282DCD40;
    v35 = *(v0 + 288);
    v36 = MEMORY[0x277D85700];

    return MEMORY[0x2822005A8](v0 + 144, v33, v36, v35, v0 + 176);
  }
}

uint64_t sub_2282DD3A8()
{
  v27 = v0;
  sub_2282E3204(*(v0 + 312), &qword_27D827550, MEMORY[0x277D11630]);
  v1 = *(v0 + 384);
  *(v0 + 160) = v1;
  v2 = v1;
  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  sub_22817A958(0, &qword_27D825E88, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {

    v4 = *(v0 + 168);
    sub_228391190();
    v5 = v4;
    v6 = sub_2283911A0();
    v7 = sub_2283925C0();

    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v12 = 136315394;
      v13 = sub_228393600();
      v15 = sub_2281C96FC(v13, v14, &v26);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = v5;
      v17 = [v16 description];
      v23 = v11;
      v24 = v9;
      v18 = sub_228392000();
      v20 = v19;

      v21 = sub_2281C96FC(v18, v20, &v26);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_22816B000, v6, v7, "[%s] Error fetching dose events and schedule items %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v25, -1, -1);
      MEMORY[0x22AAB7B80](v12, -1, -1);

      (*(v10 + 8))(v24, v23);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    if ([v5 hk_isDatabaseAccessibilityError])
    {
      sub_22838F870();
      sub_22838F860();

      sub_22838F850();
    }

    v22 = *(v0 + 8);

    return v22();
  }

  return result;
}

uint64_t sub_2282DD730()
{
  v28 = v0;
  v1 = *(v0 + 312);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  sub_2282E3204(v1, &qword_27D827550, MEMORY[0x277D11630]);
  v2 = *(v0 + 176);
  *(v0 + 160) = v2;
  v3 = v2;
  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  sub_22817A958(0, &qword_27D825E88, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {

    v5 = *(v0 + 168);
    sub_228391190();
    v6 = v5;
    v7 = sub_2283911A0();
    v8 = sub_2283925C0();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 200);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v13 = 136315394;
      v14 = sub_228393600();
      v16 = sub_2281C96FC(v14, v15, &v27);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = v6;
      v18 = [v17 description];
      v24 = v12;
      v25 = v10;
      v19 = sub_228392000();
      v21 = v20;

      v22 = sub_2281C96FC(v19, v21, &v27);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_22816B000, v7, v8, "[%s] Error fetching dose events and schedule items %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v26, -1, -1);
      MEMORY[0x22AAB7B80](v13, -1, -1);

      (*(v11 + 8))(v25, v24);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    if ([v6 hk_isDatabaseAccessibilityError])
    {
      sub_22838F870();
      sub_22838F860();

      sub_22838F850();
    }

    v23 = *(v0 + 8);

    return v23();
  }

  return result;
}

uint64_t sub_2282DDAD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_2282E34A0(0, &qword_27D827558, MEMORY[0x277D858A8]);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22838EF60();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_2283922A0();
  v2[10] = sub_228392290();
  v6 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282DDC3C, v6, v5);
}

uint64_t sub_2282DDC3C()
{
  v1 = v0[3];

  if (*(v1 + qword_27D827490))
  {
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);

    sub_228392330();
  }

  if (*(v0[3] + qword_27D827488))
  {
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);

    sub_228392330();
  }

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  sub_22838EEF0();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  (*(v7 + 104))(v4, *MEMORY[0x277D858A0], v6);
  sub_2283923B0();

  (*(v3 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2282DDE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2283922A0();
  v4[7] = sub_228392290();
  v6 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282DDEE4, v6, v5);
}

uint64_t sub_2282DDEE4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2282DDF88(1);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2282DDF88(char a1)
{
  v2 = v1;
  v4 = sub_228390460();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v84 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22838FFC0();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v83 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2282E3520(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = v65 - v10;
  sub_2282E3520(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = v65 - v12;
  v74 = sub_2283912D0();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v76 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_228391280();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_228390170();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22838F700();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DayScheduleProvider(0);
  MEMORY[0x28223BE20](v23 - 8);
  if (a1)
  {
    v69 = v5;
    v70 = v4;
    v71 = v18;
    v72 = v16;
    v25 = v2 + qword_27D8274E8;
    v26 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_beginAccess();
    v67 = v25;
    sub_2282E3284(v25, v26);
    sub_22838F6F0();
    v27 = DayScheduleProvider.makeLoggableItems(timeZone:)(v22);
    (*(v20 + 8))(v22, v19);
    v68 = v26;
    sub_2282E3F08(v26, type metadata accessor for DayScheduleProvider);
    v28 = *(v27 + 2);
    if (v28)
    {
      *&v66 = v15;
      v88 = MEMORY[0x277D84F90];
      sub_2281C9DB4(0, v28, 0);
      v85 = type metadata accessor for ScheduledDetailItemCell();
      v29 = v88;
      v65[1] = v27;
      v30 = v27 + 48;
      v86 = v2;
      do
      {
        v32 = *(v30 - 2);
        v31 = *(v30 - 1);
        v33 = *v30;
        v34 = v29;
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        *(v36 + 24) = v32;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        sub_22819A598(v32, v31, v33);
        sub_22819A598(v32, v31, v33);
        sub_2282E3398(&qword_27D8274F0, type metadata accessor for ScheduledDetailItemCell, &unk_2283A4640);
        v29 = v34;
        v87 = sub_22838FBB0();
        v38 = v37;
        v88 = v29;
        v40 = *(v29 + 16);
        v39 = *(v29 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_2281C9DB4((v39 > 1), v40 + 1, 1);
          v29 = v88;
        }

        v91 = &type metadata for ScheduledDetailItem;
        v92 = sub_2282E333C();
        v41 = swift_allocObject();
        *&v90 = v41;
        *(v41 + 16) = v32;
        *(v41 + 24) = v31;
        *(v41 + 32) = v33;
        *(v41 + 40) = sub_2282E332C;
        *(v41 + 48) = v36;
        *(v41 + 56) = v87;
        *(v41 + 64) = v38;
        *(v29 + 16) = v40 + 1;
        sub_22816DFFC(&v90, v29 + 40 * v40 + 32);
        sub_22819A598(v32, v31, v33);

        sub_2282E32E8(v32, v31, v33);

        v30 += 24;
        --v28;
      }

      while (v28);
      v87 = v29;

      v15 = v66;
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    v91 = sub_228391590();
    v92 = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(&v90);
    sub_228391580();
    v43 = v69;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391540();
    v85 = MEMORY[0x277D84560];
    sub_2282E3520(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    sub_2283912F0();
    v44 = swift_allocObject();
    v66 = xmmword_228397F40;
    *(v44 + 16) = xmmword_228397F40;
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    sub_22827CAB8();
    v45 = sub_228392C90();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    v46 = v45;
    v47 = sub_228392E20();
    [v47 setUserInteractionEnabled_];
    sub_22820DC6C(0);
    v49 = v76;
    v50 = &v76[*(v48 + 48)];
    v51 = *MEMORY[0x277D74A98];
    v52 = sub_228391220();
    (*(*(v52 - 8) + 104))(v49, v51, v52);
    *v50 = sub_2281AF1B4;
    v50[1] = 0;
    (*(v73 + 104))(v49, *MEMORY[0x277D74AD8], v74);
    v53 = sub_228391230();
    (*(*(v53 - 8) + 56))(v79, 1, 1, v53);
    v54 = v75;
    sub_228391270();

    sub_2283911D0();
    (*(v77 + 8))(v54, v78);
    swift_allocObject();
    swift_weakInit();
    v55 = sub_2283913A0();
    (*(*(v55 - 8) + 56))(v80, 1, 1, v55);
    v88 = sub_228392000();
    v89 = v56;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283B2DF0);

    (*(v81 + 104))(v83, *MEMORY[0x277D10F98], v82);
    (*(v43 + 104))(v84, *MEMORY[0x277D11140], v70);
    v57 = v71;
    sub_228390160();

    sub_228241A58(0, &qword_280DDB8D0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    inited = swift_initStackObject();
    *(inited + 16) = v66;
    *(inited + 56) = v15;
    *(inited + 64) = sub_2282E3398(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    v60 = v72;
    (*(v72 + 16))(boxed_opaque_existential_1, v57, v15);
    *&v90 = v87;
    sub_2281D5710(inited);
    v61 = v90;
    v62 = v68;
    sub_2282E3284(v67, v68);
    v63 = DayScheduleProvider.makeHistoryItems(ungrouped:)(1);
    sub_2282E3F08(v62, type metadata accessor for DayScheduleProvider);
    v64 = sub_228337E98(v63);

    sub_2282E3520(0, &qword_27D823910, MEMORY[0x277D10F78], v85);
    sub_22838FEF0();
    *(swift_allocObject() + 16) = xmmword_228397F30;
    sub_228194894(v61);

    sub_22838FED0();
    sub_228194894(v64);

    sub_22838FED0();
    sub_22838FF50();

    return (*(v60 + 8))(v57, v15);
  }

  else
  {

    return sub_22838FF50();
  }
}

uint64_t sub_2282DEE90(uint64_t a1)
{
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_2283922D0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2283922A0();

  v6 = sub_228392290();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_2281DC88C(0, 0, v3, &unk_2283A2B90, v7);
}

uint64_t sub_2282DF008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2283922A0();
  v4[7] = sub_228392290();
  v6 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282DF0A0, v6, v5);
}

uint64_t sub_2282DF0A0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2282DBAA8();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2282DF140(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282DF1A0(a1);
  }

  return result;
}

void sub_2282DF1A0(void *a1)
{
  v28 = a1;
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7;
  sub_22838F3F0();
  v29 = *(v1 + qword_27D8274B8);
  v9 = v29;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v27[0] = sub_228390F20();
  v11 = v10;
  sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228396260;
  sub_22838F3F0();
  type metadata accessor for MedicationsDoseLogViewModel(0);
  v13 = swift_allocObject();
  *(v13 + 2) = v9;
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0x3FF0000000000000;
  *(v13 + 6) = 1;
  *&v13[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus] = 1;
  (*(v3 + 16))(&v13[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate], v6, v2);
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate;
  v15 = *(v3 + 32);
  v16 = v9;
  v15(&v13[v14], v6, v2);
  *&v13[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount] = *(v13 + 5);
  *&v13[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index] = 0;
  *(v12 + 32) = v13;
  type metadata accessor for MedicationDoseLogListViewModel(0);
  v17 = swift_allocObject();
  v15((v17 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date), v8, v2);
  v18 = (v17 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  v19 = v27[1];
  *v18 = v27[0];
  v18[1] = v11;
  *(v17 + 16) = v12;
  v20 = *(v19 + qword_280DDC720);
  v21 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController(0));

  v22 = MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v17, 0, v20, 0, 3, 0, 2, 0);
  v23 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v23 setModalPresentationStyle_];
  [v23 setModalInPresentation_];
  [v28 presentViewController:v23 animated:1 completion:0];

  v24 = *(v19 + qword_27D8274A0);
  if (v24)
  {
    v25 = *(v19 + qword_27D8274A0 + 8);

    v24(v26);

    sub_228176EC8(v24, v25);
  }

  else
  {
  }
}

uint64_t sub_2282DF528(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10[0] = a3;
    v10[1] = a4;
    v11 = a5 & 1;
    sub_2282DF5B8(v10, a1);
  }

  return result;
}

void sub_2282DF5B8(uint64_t *a1, void *a2)
{
  v25 = a2;
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  sub_22838F3F0();
  v29 = *(v2 + qword_27D8274B8);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v10 = sub_228390F20();
  v12 = v11;
  sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_228396260;
  v26 = v9;
  v27 = v8;
  v28 = a1;
  *(v13 + 32) = LoggableDose.makeLoggingViewModel(index:)(0);
  type metadata accessor for MedicationDoseLogListViewModel(0);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v7, v4);
  v15 = (v14 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v15 = v10;
  v15[1] = v12;
  *(v14 + 16) = v13;
  v16 = v24;
  v17 = *(v24 + qword_280DDC720);
  v18 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController(0));

  v19 = MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v14, 0, v17, 0, 3, 0, 1, 0);
  v20 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v20 setModalPresentationStyle_];
  [v20 setModalInPresentation_];
  [v25 presentViewController:v20 animated:1 completion:0];

  v21 = *(v16 + qword_27D8274A0);
  if (v21)
  {
    v22 = *(v16 + qword_27D8274A0 + 8);

    v21(v23);

    sub_228176EC8(v21, v22);
  }

  else
  {
  }
}

uint64_t sub_2282DF890(uint64_t a1, uint64_t a2, char *a3)
{
  v54 = a3;
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  v6 = v5;
  v53 = *(v5 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v48 - v8;
  v52 = sub_22838EF60();
  v10 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v11;
  v56 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v48 - v13;
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = v6;
  v16 = a1;
  sub_228392360();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v55 = v14;
  if (Strong)
  {
    v48[0] = Strong;
    v18 = sub_2283922D0();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    v48[1] = a2;
    swift_weakInit();

    v20 = v52;
    (*(v10 + 16))(v56, v54, v52);
    v21 = v53;
    v22 = *(v53 + 16);
    v49 = v15;
    v22(v9, v16, v15);
    sub_2283922A0();

    v23 = sub_228392290();
    v24 = v9;
    v25 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v26 = v10;
    v27 = (v51 + *(v21 + 80) + v25) & ~*(v21 + 80);
    v28 = swift_allocObject();
    v50 = v7;
    v29 = v28;
    v28[2] = v23;
    v28[3] = MEMORY[0x277D85700];
    v28[4] = v19;
    v30 = v28 + v25;
    v9 = v24;
    v31 = v49;
    (*(v26 + 32))(v30, v56, v20);
    v32 = v29 + v27;
    v10 = v26;
    v15 = v31;
    (*(v21 + 32))(v32, v9, v31);

    v33 = sub_22819BCDC(0, 0, v55, &unk_2283A2BA0, v29);
    *(v48[0] + qword_27D827490) = v33;
  }

  v34 = v56;
  v35 = v54;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v50 = result;
    v37 = sub_2283922D0();
    (*(*(v37 - 8) + 56))(v55, 1, 1, v37);
    v38 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v39 = v16;
    v40 = v52;
    (*(v10 + 16))(v34, v35, v52);
    v41 = v53;
    (*(v53 + 16))(v9, v39, v15);
    sub_2283922A0();

    v42 = sub_228392290();
    v43 = *(v10 + 80);
    v54 = v9;
    v44 = (v43 + 40) & ~v43;
    v45 = (v51 + *(v41 + 80) + v44) & ~*(v41 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = v42;
    *(v46 + 3) = MEMORY[0x277D85700];
    *(v46 + 4) = v38;
    (*(v10 + 32))(&v46[v44], v34, v40);
    (*(v41 + 32))(&v46[v45], v54, v15);

    v47 = sub_22819BCDC(0, 0, v55, &unk_2283A2BB0, v46);
    *(v50 + qword_27D827488) = v47;
  }

  return result;
}

uint64_t sub_2282DFF20(uint64_t a1, uint64_t a2)
{
  sub_2282E3520(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_2283922D0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_2283922A0();

  v7 = sub_228392290();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  sub_2281DC568(0, 0, v4, &unk_2283A2BC0, v8);
}

uint64_t sub_2282E00C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_2283922A0();
  *(v4 + 72) = sub_228392290();
  v6 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282E015C, v6, v5);
}

uint64_t sub_2282E015C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + qword_27D827490))
    {

      sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
      sub_228392330();
    }
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  if (v2)
  {
    if (*(v2 + qword_27D827488))
    {

      sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
      sub_228392330();
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2282E02C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_2282E34A0(0, &qword_27D827568, MEMORY[0x277D85890]);
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  sub_2282E3E00(0);
  v6[18] = swift_task_alloc();
  sub_2282E3D0C(0, &qword_27D827590, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB648]);
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  sub_2282E3D0C(0, &qword_27D827598, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB638]);
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = sub_2283922A0();
  v6[26] = sub_228392290();
  v11 = sub_228392250();
  v6[27] = v11;
  v6[28] = v10;

  return MEMORY[0x2822009F8](sub_2282E051C, v11, v10);
}

uint64_t sub_2282E051C()
{
  if ((sub_228392340() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[29] = *(Strong + qword_27D8274E0);

      swift_beginAccess();
      v2 = swift_weakLoadStrong();
      if (v2)
      {
        v3 = *(v2 + qword_27D8274B8);
        v0[30] = v3;
        v4 = v3;

        v5 = swift_task_alloc();
        v0[31] = v5;
        *v5 = v0;
        v5[1] = sub_2282E06C8;
        v6 = v0[21];
        v7 = v0[13];

        return sub_2282B2288(v6, v7);
      }
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2282E06C8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_2282E121C;
  }

  else
  {
    v5 = sub_2282E0804;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2282E0804()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_228391EE0();
  (*(v2 + 8))(v1, v3);
  v0[33] = sub_228392290();
  v4 = sub_2282E3E84();
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_2282E08F0;
  v6 = v0[22];
  v7 = v0[18];

  return MEMORY[0x282200308](v7, v6, v4);
}

uint64_t sub_2282E08F0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_228392250();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2282E0C94;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_228392250();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2282E0A88;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_2282E0A88()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_2282E0AEC, v1, v2);
}

uint64_t sub_2282E0AEC()
{
  v1 = v0[18];
  sub_2282E3D0C(0, &qword_27D827588, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB630]);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[30];
    (*(v0[23] + 8))(v0[24], v0[22]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = sub_2282E0E00;
    v7 = v0[13];

    return sub_2282B1850(v7);
  }
}

uint64_t sub_2282E0C94()
{
  v0[10] = v0[35];
  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  swift_willThrowTypedImpl();

  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](sub_2282E0D34, v1, v2);
}

uint64_t sub_2282E0D34()
{
  v1 = v0[30];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2282E0E00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 224);
  v6 = *(v3 + 216);
  if (v1)
  {
    v7 = sub_2282E12C4;
  }

  else
  {
    v7 = sub_2282E0F44;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2282E0F44()
{
  v1 = *(v0 + 296);
  if (v1 >> 62)
  {
    v2 = sub_2283930D0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:

    v15 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  *(v0 + 88) = MEMORY[0x277D84F90];
  v3 = sub_228393240();
  if (v2 < 0)
  {
    __break(1u);
    return MEMORY[0x282200308](v3, v4, v5);
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    do
    {
      v7 = *(v0 + 240);
      v8 = v6 + 1;
      MEMORY[0x22AAB6D80]();
      sub_228390A30();
      swift_allocObject();
      v9 = v7;
      sub_228390A40();
      sub_228393210();
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v6 = v8;
    }

    while (v2 != v8);
  }

  else
  {
    v10 = (*(v0 + 296) + 32);
    sub_228390A30();
    do
    {
      v11 = *(v0 + 240);
      v12 = *v10++;
      swift_allocObject();
      v13 = v11;
      v14 = v12;
      sub_228390A40();
      sub_228393210();
      sub_228393250();
      sub_228393260();
      sub_228393220();
      --v2;
    }

    while (v2);
  }

  v15 = *(v0 + 88);
LABEL_13:
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v18 = *(v0 + 120);
  v19 = *(v0 + 128);
  *(v0 + 64) = v15;
  *(v0 + 72) = 0;
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  sub_228392370();
  (*(v19 + 8))(v17, v18);
  sub_2282E3F08(v16, sub_2282E3E00);
  *(v0 + 264) = sub_228392290();
  v20 = sub_2282E3E84();
  v21 = swift_task_alloc();
  *(v0 + 272) = v21;
  *v21 = v0;
  v21[1] = sub_2282E08F0;
  v4 = *(v0 + 176);
  v3 = *(v0 + 144);
  v5 = v20;

  return MEMORY[0x282200308](v3, v4, v5);
}

uint64_t sub_2282E121C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2282E12C4()
{
  v1 = v0[30];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[18];

  (*(v3 + 8))(v2, v4);
  sub_2282E3F08(v5, sub_2282E3E00);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2282E13B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_2282E34A0(0, &qword_27D827568, MEMORY[0x277D85890]);
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  sub_2282E3D74(0, &qword_27D827570, MEMORY[0x277D857B8]);
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  sub_2282E3D74(0, &qword_27D827578, MEMORY[0x277D857A8]);
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = sub_2283922A0();
  v6[25] = sub_228392290();
  v11 = sub_228392250();
  v6[26] = v11;
  v6[27] = v10;

  return MEMORY[0x2822009F8](sub_2282E15B8, v11, v10);
}

uint64_t sub_2282E15B8()
{
  if ((sub_228392340() & 1) != 0 || (swift_beginAccess(), (Strong = swift_weakLoadStrong()) == 0))
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    v2 = *(Strong + qword_27D8274D8);
    v0[28] = v2;
    v2;

    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_2282E1700;
    v4 = v0[20];
    v5 = v0[13];

    return sub_22819AD28(v4, v5);
  }
}

uint64_t sub_2282E1700()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_2282E1CE4;
  }

  else
  {
    v5 = sub_2282E183C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2282E183C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_228392300();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_228392290();
  v0[31] = v4;
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_2282E1944;
  v6 = v0[21];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 11, v4, v7, v6);
}

uint64_t sub_2282E1944()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_2282E1A88, v3, v2);
}

uint64_t sub_2282E1A88()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(v0 + 128);
      v3 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = *(Strong + qword_27D8274B8);
      v7 = sub_2282DAFF0(v1, v6);

      *(v0 + 64) = v7;
      *(v0 + 72) = 1;
      sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
      sub_228392370();

      (*(v4 + 8))(v3, v5);
      v8 = sub_228392290();
      *(v0 + 248) = v8;
      v9 = swift_task_alloc();
      *(v0 + 256) = v9;
      *v9 = v0;
      v9[1] = sub_2282E1944;
      v10 = *(v0 + 168);
      v11 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 88, v8, v11, v10);
    }

    v12 = *(v0 + 224);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  }

  else
  {
    v12 = *(v0 + 224);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2282E1CE4()
{
  v1 = v0[30];
  v2 = v0[28];

  v0[10] = v1;
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  sub_228392380();

  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall MedicationsRecordDoseDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for ScheduledDetailItemCell();
  sub_2282E3398(&qword_27D8274F0, type metadata accessor for ScheduledDetailItemCell, &unk_2283A4640);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  sub_22838FB40();
  sub_2283926C0();
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for MedicationsDayHistoryCell();
  sub_2282E3398(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell, &unk_2283A69C4);
  sub_2283926B0();
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_2282E3398(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell, &unk_2283975E0);
  sub_2283926B0();
}

uint64_t sub_2282E1F50()
{
  type metadata accessor for ScheduledDetailItemCell();
  sub_2282E3398(&qword_27D8274F0, type metadata accessor for ScheduledDetailItemCell, &unk_2283A4640);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  sub_22838FB40();
  sub_2283926C0();
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for MedicationsDayHistoryCell();
  sub_2282E3398(&qword_27D8274F8, type metadata accessor for MedicationsDayHistoryCell, &unk_2283A69C4);
  sub_2283926B0();
  type metadata accessor for MedicationsDayHistoryHeaderCell();
  sub_2282E3398(&qword_27D823328, type metadata accessor for MedicationsDayHistoryHeaderCell, &unk_2283975E0);
  return sub_2283926B0();
}

uint64_t MedicationsRecordDoseDataSource.layout(for:environment:)(unint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  result = sub_22838FD40();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v11 = result + 16 * a1;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);

    if (v13 == 0x656C756465686373 && v12 == 0xE900000000000064)
    {
    }

    else
    {
      v15 = sub_228393460();

      if ((v15 & 1) == 0)
      {
        sub_228390040();
        v9 = v7;
LABEL_14:
        v17 = sub_2283900C0();
        (*(v4 + 8))(v9, v3);
        return v17;
      }
    }

    v16 = sub_2283907F0();
    if (v16)
    {

      sub_228390010();
      sub_228390000();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      sub_228390010();
    }

    sub_228390070();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void MedicationsRecordDoseDataSource.supplementaryItem(ofKind:at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_228390460();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282E3520(0, &qword_27D827500, MEMORY[0x277D10E90], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_228391590();
  MEMORY[0x28223BE20](v13 - 8);
  if (sub_228392000() == a1 && v14 == a2)
  {
  }

  else
  {
    v67 = v12;
    v68 = v7;
    v69 = v6;
    v16 = sub_228393460();

    if ((v16 & 1) == 0)
    {
      if (sub_228392000() == a1 && v17 == a2)
      {
      }

      else
      {
        v19 = sub_228393460();

        if ((v19 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v22 = sub_2283907F0();
      if (!v22)
      {
LABEL_29:
        a3[3] = sub_22838FC00();
        a3[4] = sub_2282E3398(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        sub_22838FBF0();
        return;
      }

      v65 = v22;
      v23 = [v22 incompatibleDevices];
      sub_22817A958(0, &qword_27D824140, 0x277D114E8);
      v24 = sub_2283921A0();

      if (v24 >> 62)
      {
        v25 = sub_2283930D0();
        v66 = v9;
        if (v25)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v66 = v9;
        if (v25)
        {
LABEL_20:
          v64 = a3;
          v70 = MEMORY[0x277D84F90];
          sub_2281C9E44(0, v25 & ~(v25 >> 63), 0);
          if (v25 < 0)
          {
            __break(1u);
            return;
          }

          v26 = 0;
          v27 = v70;
          do
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x22AAB6D80](v26, v24);
            }

            else
            {
              v28 = *(v24 + 8 * v26 + 32);
            }

            v29 = v28;
            v30 = [v28 deviceName];
            v31 = sub_228392000();
            v33 = v32;

            v34 = sub_2282AE540(v31, v33);
            v36 = v35;

            v70 = v27;
            v38 = *(v27 + 16);
            v37 = *(v27 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_2281C9E44((v37 > 1), v38 + 1, 1);
              v27 = v70;
            }

            ++v26;
            *(v27 + 16) = v38 + 1;
            v39 = v27 + 16 * v38;
            *(v39 + 32) = v34;
            *(v39 + 40) = v36;
          }

          while (v25 != v26);

          a3 = v64;
          goto LABEL_32;
        }
      }

LABEL_32:
      v40 = objc_opt_self();
      v41 = sub_228392190();

      v42 = [v40 localizedStringByJoiningStrings_];

      v43 = sub_228392000();
      v45 = v44;

      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v63 = sub_22838F0C0();
      v64 = v46;
      sub_228241A58(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98]);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_228397F40;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 64) = sub_22818E210();
      *(v47 + 32) = v43;
      *(v47 + 40) = v45;
      v48 = sub_22838F0C0();
      v50 = v49;
      if (*(v47 + 16))
      {
        v51 = sub_228391FD0();
        v53 = v52;

        v50 = v53;
      }

      else
      {
        v51 = v48;
      }

      v54 = sub_22838F0C0();
      v56 = v55;
      v70 = 9011426;
      v71 = 0xA300000000000000;
      MEMORY[0x22AAB5C80](v51, v50);

      MEMORY[0x22AAB5C80](23328, 0xE200000000000000);
      MEMORY[0x22AAB5C80](v54, v56);

      MEMORY[0x22AAB5C80](10333, 0xE200000000000000);
      MEMORY[0x22AAB5C80](v63, v64);

      MEMORY[0x22AAB5C80](41, 0xE100000000000000);
      sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_228396260;
      *(v57 + 32) = [objc_opt_self() systemGrayColor];
      v58 = v67;
      *v67 = 0xC000000000000000;
      v59 = *MEMORY[0x277D10E88];
      v60 = sub_22838FBD0();
      v61 = *(v60 - 8);
      (*(v61 + 104))(v58, v59, v60);
      (*(v61 + 56))(v58, 0, 1, v60);
      (*(v68 + 104))(v66, *MEMORY[0x277D11140], v69);
      a3[3] = sub_22838FBE0();
      a3[4] = sub_2282E3398(&qword_27D827508, MEMORY[0x277D10E98], MEMORY[0x277D10E80]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      sub_22838FBC0();

      return;
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391500();
  v20 = sub_22838FB60();
  swift_allocObject();
  v21 = sub_22838FB50();
  a3[3] = v20;
  a3[4] = sub_2282E3398(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
  *a3 = v21;
}

uint64_t sub_2282E2D20(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2282DDF88(v2);
  }

  return result;
}

uint64_t sub_2282E2D80(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2282E2E74;

  return v5(v2 + 32);
}

uint64_t sub_2282E2E74()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t type metadata accessor for MedicationsRecordDoseDataSource(uint64_t a1)
{
  result = qword_280DDC710;
  if (!qword_280DDC710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282E301C(uint64_t a1)
{
  result = type metadata accessor for DayScheduleProvider(319);
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_2282E3138(uint64_t a1)
{
  if (!qword_27D827520)
  {
    sub_228392830();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2282E3398(&qword_27D827528, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827520);
    }
  }
}

uint64_t sub_2282E3204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282E3520(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282E3284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayScheduleProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2282E32E8(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2282E333C()
{
  result = qword_27D827538;
  if (!qword_27D827538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827538);
  }

  return result;
}

uint64_t sub_2282E3398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2282E33E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_2282DC508(a1, v4, v5, v7, v6);
}

void sub_2282E34A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v7 = a3(a1, &type metadata for MedicationsRecordDoseDataSource.UpdateOperationResult, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2282E3520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2282E358C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2282E3520(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2282E360C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayScheduleProvider(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282E3670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819D87C;

  return sub_2282DDE4C(a1, v4, v5, v6);
}

uint64_t sub_2282E3724(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22819DA1C;

  return sub_2282E2D80(a1, v4);
}

uint64_t sub_2282E37DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819DA1C;

  return sub_2282DF008(a1, v4, v5, v6);
}

uint64_t sub_2282E38A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22838EF60() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22819DA1C;

  return sub_2282E02C8(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_44Tm()
{
  v1 = sub_22838EF60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v3 | v9;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}