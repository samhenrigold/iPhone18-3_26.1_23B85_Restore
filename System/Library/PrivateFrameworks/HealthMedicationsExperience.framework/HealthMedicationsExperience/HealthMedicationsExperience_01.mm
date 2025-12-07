uint64_t MedicationScheduleItemDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D15FF348(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FA328;

  return MedicationScheduleItemDataSource.fetchScheduleItem(_:)(a1, a2);
}

uint64_t sub_1D15FF3F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FA328;

  return MedicationScheduleItemDataSource.hk_scheduleItems(for:)(a1, a2);
}

uint64_t sub_1D15FF498(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D15F7420;

  return MedicationScheduleItemDataSource.fetchScheduleItems(in:)(a1);
}

uint64_t sub_1D15FF530(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FA328;

  return MedicationScheduleItemDataSource.unloggedScheduleItems(for:)(a1, a2);
}

uint64_t sub_1D15FF5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D15FA328;

  return MedicationScheduleItemDataSource.scheduleItems(for:medicationsIdentifiers:)(a1, a2, a3);
}

uint64_t sub_1D15FF688(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FA328;

  return MedicationScheduleItemDataSource.doseEvents(for:)(a1, a2);
}

void sub_1D15FF730(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a1;
  sub_1D15FB870(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  sub_1D15FB8C8(0, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  sub_1D15FB8C8(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v20 = v19;
  v21 = *(a2 + *(v19 + 36));
  v50 = v19;
  v51 = a2;
  if (v21)
  {
    v48 = v10;
    v22 = *(v21 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v46 = a3;
      v47 = v8;
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D16703A4();
      v24 = sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
      v26 = *(v13 + 16);
      v25 = v13 + 16;
      v53 = v26;
      v54 = v24;
      v27 = (v21 + ((*(v25 + 64) + 32) & ~*(v25 + 64)));
      v52 = *(v25 + 56);
      do
      {
        v28 = v53;
        v53(v18, v27, v12);
        v28(v16, v18, v12);
        sub_1D15EE5A8(0, &qword_1EDECACD0, 0x1E69A3AF0);
        sub_1D166FF84();
        (*(v25 - 8))(v18, v12);
        sub_1D1670374();
        sub_1D16703B4();
        sub_1D16703C4();
        sub_1D1670384();
        v27 += v52;
        --v22;
      }

      while (v22);
      v23 = aBlock[0];
      v20 = v50;
      a2 = v51;
      a3 = v46;
      v8 = v47;
    }

    v53 = v23;
    v10 = v48;
  }

  else
  {
    v53 = 0;
  }

  sub_1D15F8A24(a2, v10);
  sub_1D15F8A24(a2 + *(v20 + 28), v8);
  v29 = (a2 + *(v20 + 32));
  v30 = v29[1];
  v52 = *v29;
  v31 = swift_allocObject();
  v32 = v49;
  *(v31 + 16) = a3;
  *(v31 + 24) = v32;
  v33 = sub_1D166F174();
  v34 = *(v33 - 8);
  v35 = a3;
  v36 = *(v34 + 48);
  v37 = v36(v10, 1, v33);
  v54 = v35;
  v38 = 0;
  if (v37 != 1)
  {
    v38 = sub_1D166F124();
    (*(v34 + 8))(v10, v33);
  }

  if (v36(v8, 1, v33) == 1)
  {
    v39 = 0;
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_15:
    v40 = 0;
    if (v53)
    {
      goto LABEL_13;
    }

LABEL_16:
    v41 = 0;
    goto LABEL_17;
  }

  v39 = sub_1D166F124();
  (*(v34 + 8))(v8, v33);
  if (!v30)
  {
    goto LABEL_15;
  }

LABEL_12:
  v40 = sub_1D166F9C4();
  if (!v53)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
  v41 = sub_1D166FC44();

LABEL_17:
  v42 = objc_allocWithZone(MEMORY[0x1E69A3B00]);
  aBlock[4] = sub_1D1600940;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162E0A4;
  aBlock[3] = &block_descriptor_1;
  v43 = _Block_copy(aBlock);
  v44 = [v42 initWithFromDate:v38 toDate:v39 identifier:v40 sortDescriptors:v41 resultsHandler:v43];

  _Block_release(v43);

  sub_1D1670084();
  [v54 executeQuery_];
}

uint64_t sub_1D15FFC9C(uint64_t a1)
{
  sub_1D15FB8C8(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D15FFD24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D15FB8C8(255, a3, &qword_1EDECACA0, 0x1E696C3A8, a4);
    v5 = sub_1D16705A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void (*sub_1D15FFD9C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D388D4D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D15FFE1C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D15FFE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D1600968;

  return sub_1D15FE4B0(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15FFF18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D15FFFCC;

  return sub_1D15FE6AC(a1, v4, v5, v6);
}

uint64_t sub_1D15FFFCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of MedicationScheduleItemDataSourcing.fetchScheduleItem(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D15FA320;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MedicationScheduleItemDataSourcing.hk_scheduleItems(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D15FA320;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MedicationScheduleItemDataSourcing.fetchScheduleItems(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D15F9958;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MedicationScheduleItemDataSourcing.unloggedScheduleItems(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D15FA320;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MedicationScheduleItemDataSourcing.scheduleItems(for:medicationsIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D15FA320;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MedicationScheduleItemDataSourcing.doseEvents(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D15FA320;

  return v11(a1, a2, a3, a4);
}

uint64_t (*sub_1D1600838(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D388D4D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D16008B8;
  }

  __break(1u);
  return result;
}

void (*sub_1D16008C0(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D388D4D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D1600964;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D160096C(unint64_t a1@<X8>)
{
  v3 = v1;
  v5 = [v1 routedDoseFormProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v6 = sub_1D166FC54();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!sub_1D1670224())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_60;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  v29 = sub_1D1670224();
  if (!v29)
  {
LABEL_65:
    v92 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

LABEL_35:
  v92 = 0;
  v30 = 0;
  v3 = (v2 & 0xC000000000000001);
  v102 = v2 & 0xFFFFFFFFFFFFFF8;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = &property descriptor for MedicationView.config;
  v99 = v2;
  do
  {
    v33 = v30;
    while (1)
    {
      if (v3)
      {
        v34 = MEMORY[0x1D388D4D0](v33, v2);
      }

      else
      {
        if (v33 >= *(v102 + 16))
        {
          goto LABEL_59;
        }

        v34 = *(v2 + 8 * v33 + 32);
      }

      v35 = v34;
      v30 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v7 = MEMORY[0x1D388D4D0](0, v6);
LABEL_6:
        v8 = v7;

        v9 = [v8 firstConceptOfRelationshipType_];

        if (v9)
        {
          v10 = [v9 localizedPreferredName];

          if (v10)
          {
            v11 = sub_1D166FA04();
            v104 = v12;

            goto LABEL_12;
          }
        }

LABEL_11:
        v11 = 0;
        v104 = 0;
LABEL_12:
        v13 = [v3 specificProduct];
        v14 = [v13 firstAttributeForType_];

        if (v14)
        {
          v15 = [v14 stringValue];

          v98 = sub_1D166FA04();
          v105 = v16;
        }

        else
        {
          v98 = 0;
          v105 = 0;
        }

        v17 = [v3 tradeNameProduct];
        if (v17 && (v18 = v17, v19 = [v17 localizedPreferredName], v18, v19))
        {
          v20 = sub_1D166FA04();
          v100 = v21;
          v101 = v20;
        }

        else
        {
          v100 = 0;
          v101 = 0;
        }

        v22 = [v3 ingredientProducts];
        v6 = sub_1D166FC54();

        if (!(v6 >> 62))
        {
          if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

LABEL_27:

LABEL_28:
          v93 = 0;
          v97 = 0;
          goto LABEL_29;
        }

        if (!sub_1D1670224())
        {
          goto LABEL_27;
        }

LABEL_21:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1D388D4D0](0, v6);
          goto LABEL_24;
        }

        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v23 = *(v6 + 32);
LABEL_24:
        v24 = v23;

        v25 = [v24 localizedPreferredName];

        if (!v25)
        {
          goto LABEL_28;
        }

        v93 = sub_1D166FA04();
        v97 = v26;

LABEL_29:
        v103 = [v3 specificProduct];
        v94 = v3;
        v95 = v11;
        v96 = a1;
        if (([v103 meds_isClinicalProduct] & 1) == 0)
        {
          if (![v103 meds_isSpecificProduct])
          {
LABEL_55:
            v43 = 0;
            v31 = MEMORY[0x1E69E7CC0];
            goto LABEL_67;
          }

          v27 = [v103 firstConceptOfRelationshipType_];

          v103 = v27;
          if (v27)
          {
            goto LABEL_32;
          }

          v43 = 0;
          v31 = MEMORY[0x1E69E7CC0];
          v44 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v44)
          {
            goto LABEL_68;
          }

LABEL_70:

          v45 = [v94 ingredientProducts];
          v46 = sub_1D166FC54();

          if (!(v46 >> 62))
          {
            v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v47)
            {
              goto LABEL_72;
            }

LABEL_90:
            v31 = MEMORY[0x1E69E7CC0];
LABEL_91:

            v43 = 0;
            v11 = v95;
            a1 = v96;
            goto LABEL_92;
          }

          v47 = sub_1D1670224();
          if (!v47)
          {
            goto LABEL_90;
          }

LABEL_72:
          if (v47 < 1)
          {
            __break(1u);
LABEL_141:
            v2 = sub_1D15ECAB4(0, *(v2 + 16) + 1, 1, v2);
LABEL_100:
            v64 = *(v2 + 16);
            v63 = *(v2 + 24);
            if (v64 >= v63 >> 1)
            {
              v2 = sub_1D15ECAB4((v63 > 1), v64 + 1, 1, v2);
            }

            *(v2 + 16) = v64 + 1;
            v65 = v2 + 16 * v64;
            *(v65 + 32) = v98;
            *(v65 + 40) = v105;
            goto LABEL_103;
          }

          v48 = 0;
          v31 = MEMORY[0x1E69E7CC0];
          while (2)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x1D388D4D0](v48, v46);
            }

            else
            {
              v49 = *(v46 + 8 * v48 + 32);
            }

            v50 = v49;
            v51 = [v49 localizedPreferredName];
            if (v51)
            {
              v52 = v51;
              v53 = sub_1D166FA04();
              v55 = v54;

              v56 = HIBYTE(v55) & 0xF;
              if ((v55 & 0x2000000000000000) == 0)
              {
                v56 = v53 & 0xFFFFFFFFFFFFLL;
              }

              if (v56)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v31 = sub_1D15ECAB4(0, *(v31 + 2) + 1, 1, v31);
                }

                v58 = *(v31 + 2);
                v57 = *(v31 + 3);
                if (v58 >= v57 >> 1)
                {
                  v31 = sub_1D15ECAB4((v57 > 1), v58 + 1, 1, v31);
                }

                *(v31 + 2) = v58 + 1;
                v59 = &v31[16 * v58];
                *(v59 + 4) = v53;
                *(v59 + 5) = v55;
LABEL_76:
                if (v47 == ++v48)
                {
                  goto LABEL_91;
                }

                continue;
              }
            }

            break;
          }

          goto LABEL_76;
        }

LABEL_32:
        v28 = [v103 relationships];
        if (!v28)
        {
          goto LABEL_55;
        }

        v6 = v28;
        sub_1D15EE5A8(0, &qword_1EC63DAB0, 0x1E696C028);
        v2 = sub_1D166FC54();

        if (v2 >> 62)
        {
          goto LABEL_64;
        }

        v29 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v29)
        {
          goto LABEL_65;
        }

        goto LABEL_35;
      }

      if ([v34 v32[221]] != 809)
      {
        goto LABEL_37;
      }

      v6 = [v35 destination];
      a1 = [v6 meds_englishUSName];

      if (!a1)
      {
        goto LABEL_37;
      }

      v36 = v3;
      v37 = v32;
      v6 = sub_1D166FA04();
      v39 = v38;

      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        break;
      }

      v32 = v37;
      v3 = v36;
      v2 = v99;
LABEL_37:

      ++v33;
      if (v30 == v29)
      {
        goto LABEL_66;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1D15ECAB4(0, *(v31 + 2) + 1, 1, v31);
    }

    a1 = *(v31 + 2);
    v41 = *(v31 + 3);
    if (a1 >= v41 >> 1)
    {
      v31 = sub_1D15ECAB4((v41 > 1), a1 + 1, 1, v31);
    }

    *(v31 + 2) = a1 + 1;
    v42 = &v31[16 * a1];
    *(v42 + 4) = v6;
    *(v42 + 5) = v39;
    v92 = 1;
    v32 = v37;
    v3 = v36;
    v2 = v99;
  }

  while (v30 != v29);
LABEL_66:

  v11 = v95;
  a1 = v96;
  v43 = v92;
LABEL_67:

  v44 = *(v31 + 2);
  if (!v44)
  {
    goto LABEL_70;
  }

LABEL_68:
  if (v44 == 1 && v105)
  {
    goto LABEL_70;
  }

LABEL_92:
  if (!v104)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if (!v105)
    {
      goto LABEL_103;
    }

LABEL_98:
    if (v43)
    {
      goto LABEL_103;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_100;
    }

    goto LABEL_141;
  }

  v2 = sub_1D15ECAB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v61 = *(v2 + 16);
  v60 = *(v2 + 24);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_1D15ECAB4((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 16) = v61 + 1;
  v62 = v2 + 16 * v61;
  *(v62 + 32) = v11;
  *(v62 + 40) = v104;
  if (v105)
  {
    goto LABEL_98;
  }

LABEL_103:
  v66 = *(v31 + 2);
  if (!v66)
  {
    goto LABEL_119;
  }

  if (v66 != 1)
  {
    v106 = v31;

    sub_1D1623CA8(&v106);
    sub_1D1601D8C(0);
    sub_1D1601E0C();
    v69 = sub_1D166F9A4();
    v71 = v70;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D15ECAB4(0, *(v2 + 16) + 1, 1, v2);
    }

    v73 = *(v2 + 16);
    v72 = *(v2 + 24);
    v74 = v100;
    if (v73 >= v72 >> 1)
    {
      v90 = sub_1D15ECAB4((v72 > 1), v73 + 1, 1, v2);
      v74 = v100;
      v2 = v90;
    }

    *(v2 + 16) = v73 + 1;
    v75 = v2 + 16 * v73;
    *(v75 + 32) = v69;
    *(v75 + 40) = v71;
    v76 = v97;
    if (v74)
    {
      goto LABEL_120;
    }

LABEL_114:
    if (v76)
    {
      v77 = v93;
LABEL_138:
      v78 = v104;
      goto LABEL_139;
    }

LABEL_133:
    v86 = [v94 specificProduct];
    v87 = [v86 preferredName];

    if (v87)
    {
      v77 = sub_1D166FA04();
      v89 = v88;

      v76 = v89;
    }

    else
    {
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v77 = sub_1D166F004();
    }

    goto LABEL_138;
  }

  v67 = *(v31 + 4);
  v68 = *(v31 + 5);
  if (!v100)
  {

    if (v97)
    {
      goto LABEL_117;
    }

    goto LABEL_133;
  }

  v106 = *(v31 + 4);
  v107 = v68;
  sub_1D1601D38();

  if ((sub_1D1670154() & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D15ECAB4(0, *(v2 + 16) + 1, 1, v2);
    }

    v80 = *(v2 + 16);
    v79 = *(v2 + 24);
    if (v80 >= v79 >> 1)
    {
      v2 = sub_1D15ECAB4((v79 > 1), v80 + 1, 1, v2);
    }

    *(v2 + 16) = v80 + 1;
    v81 = v2 + 16 * v80;
    *(v81 + 32) = v67;
    *(v81 + 40) = v68;
    goto LABEL_120;
  }

  if (!v97)
  {

    goto LABEL_120;
  }

LABEL_117:
  v106 = v67;
  v107 = v68;
  sub_1D1601D38();
  if ((sub_1D1670154() & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D15ECAB4(0, *(v2 + 16) + 1, 1, v2);
    }

    v82 = v100;
    v84 = *(v2 + 16);
    v83 = *(v2 + 24);
    if (v84 >= v83 >> 1)
    {
      v91 = sub_1D15ECAB4((v83 > 1), v84 + 1, 1, v2);
      v82 = v100;
      v2 = v91;
    }

    *(v2 + 16) = v84 + 1;
    v85 = v2 + 16 * v84;
    *(v85 + 32) = v67;
    *(v85 + 40) = v68;
    v76 = v97;
    if (v82)
    {
      goto LABEL_120;
    }

    goto LABEL_114;
  }

LABEL_119:
  v76 = v97;
  if (!v100)
  {
    goto LABEL_114;
  }

LABEL_120:

  v78 = v104;
  v76 = v100;
  v77 = v101;
LABEL_139:
  *a1 = v77;
  *(a1 + 8) = v76;
  *(a1 + 16) = v2;
  *(a1 + 24) = v11;
  *(a1 + 32) = v78;
  *(a1 + 40) = v98;
  *(a1 + 48) = v105;
  *(a1 + 56) = v31;
}

uint64_t HKMedicationSearchResult.doseForm.getter()
{
  sub_1D160096C(v2);
  v0 = v2[3];

  sub_1D160161C(v2);
  return v0;
}

uint64_t HKMedicationSearchResult.ingredients.getter()
{
  sub_1D160096C(v2);
  v0 = v2[7];

  sub_1D160161C(v2);
  return v0;
}

uint64_t HKMedicationSearchResult.strength.getter()
{
  sub_1D160096C(v2);
  v0 = v2[5];

  sub_1D160161C(v2);
  return v0;
}

uint64_t HKMedicationSearchResult.primaryName.getter()
{
  sub_1D160096C(&v2);
  v0 = v2;

  sub_1D160161C(&v2);
  return v0;
}

unint64_t sub_1D160172C()
{
  result = qword_1EDECAE10;
  if (!qword_1EDECAE10)
  {
    sub_1D1601ACC(255, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAE10);
  }

  return result;
}

uint64_t HKMedicationSearchResult.commaSeparatedIngredients.getter()
{
  sub_1D160096C(v3);
  v5 = v4;

  sub_1D160161C(v3);
  v0 = MEMORY[0x1E69E62F8];
  sub_1D1601ACC(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
  sub_1D160172C();
  v1 = sub_1D166F9A4();
  sub_1D1601B20(&v5, &qword_1EDECAE18, v0);
  return v1;
}

uint64_t HKMedicationSearchResult.commaSeparatedStrengthAndIngredients.getter()
{
  sub_1D160096C(v7);
  v0 = v8;
  v15 = v8;

  sub_1D160161C(v7);
  v1 = *(v0 + 16);
  sub_1D1601B20(&v15, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
  sub_1D160096C(v9);
  v14 = v10;
  sub_1D1601A4C(&v14, v11);
  sub_1D160161C(v9);
  if (*(&v14 + 1))
  {
    MEMORY[0x1D388CCF0](v14);
    sub_1D1601B20(&v14, &qword_1EDECAE20, MEMORY[0x1E69E6720]);
    if (v1)
    {
      MEMORY[0x1D388CCF0](8236, 0xE200000000000000);
LABEL_5:
      sub_1D160096C(v11);
      v13 = v12;

      sub_1D160161C(v11);
      v2 = MEMORY[0x1E69E62F8];
      sub_1D1601ACC(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
      sub_1D160172C();
      v3 = sub_1D166F9A4();
      v5 = v4;
      sub_1D1601B20(&v13, &qword_1EDECAE18, v2);
      MEMORY[0x1D388CCF0](v3, v5);
    }
  }

  else if (v1)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1D1601A4C(uint64_t a1, uint64_t a2)
{
  sub_1D1601ACC(0, &qword_1EDECAE20, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D1601ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1601B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  sub_1D1601ACC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1601B88(uint64_t a1, uint64_t a2)
{
  sub_1D160096C(v5);
  v7 = v6;
  if (*(v6 + 16))
  {
    v2 = MEMORY[0x1E69E62F8];
    sub_1D1601ACC(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
    sub_1D160172C();

    v3 = sub_1D166F9A4();
    sub_1D160161C(v5);
    sub_1D1601B20(&v7, &qword_1EDECAE18, v2);
  }

  else
  {
    sub_1D160161C(v5);
    return 0;
  }

  return v3;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D1601C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1601CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D1601D38()
{
  result = qword_1EDECB350;
  if (!qword_1EDECB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECB350);
  }

  return result;
}

void sub_1D1601D8C(uint64_t a1)
{
  if (!qword_1EC63DAA0)
  {
    sub_1D1601ACC(255, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
    sub_1D160172C();
    v1 = sub_1D1670444();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DAA0);
    }
  }
}

unint64_t sub_1D1601E0C()
{
  result = qword_1EC63DAA8;
  if (!qword_1EC63DAA8)
  {
    sub_1D1601D8C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DAA8);
  }

  return result;
}

uint64_t sub_1D1601E64(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1D166FBA4();
  }

  else
  {
    return 0;
  }
}

Swift::String __swiftcall LoggingUnitDisplayable.loggingQuantityString(for:)(NSNumber_optional a1)
{
  v2 = v1;
  v3 = *&a1.is_nil;
  if (a1.value.super.super.isa)
  {
    v4 = a1.value.super.super.isa;
    [(objc_class *)v4 doubleValue];
    v5 = (*(v2 + 24))(v3, v2);
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v10 = sub_1D166F4E4();
    __swift_project_value_buffer(v10, qword_1EDECB360);
    v11 = sub_1D166F4D4();
    v12 = sub_1D166FF44();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_1D1670754();
      v17 = sub_1D15F7A30(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1D15E6000, v11, v12, "[%s] Unable to generate doseQuantityText with nil amount, continuing with 0.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1D388E250](v14, -1, -1);
      MEMORY[0x1D388E250](v13, -1, -1);
    }

    v18 = *(v2 + 24);
    v19.n128_u64[0] = 0;

    v8 = v18(v3, v2, v19);
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall LoggingUnitDisplayable.loggingQuantityString(for:)(Swift::Double a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1D166F1F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1603138(0, &unk_1EDECAB90, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  v30[2] = "CONCEPT_NO_NAME_TITLE";
  (*(v7 + 56))(v30 - v11, 1, 1, v6);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  v30[0] = *(&xmmword_1EDECB058 + 1);
  v30[1] = xmmword_1EDECB058;
  sub_1D1603138(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D16721B0;
  sub_1D166F1E4();
  v14 = static LoggingUnitDisplayable.formatLoggingAmountAsString(_:shouldIncludeGroupingSeparator:localeOverride:)(*&a1, 0, 1, v9, v4, v3);
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1D15F3174();
  *(v13 + 64) = v18;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v19 = (*(*(v3 + 8) + 8))(v4, a1);
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v20;
  v21 = sub_1D166F004();
  v23 = v22;
  if (*(v13 + 16))
  {
    v24 = sub_1D166FA34();
    v26 = v25;

    v23 = v26;
  }

  else
  {
    v24 = v21;
  }

  sub_1D1603200(v12);
  v27 = v24;
  v28 = v23;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

id static LoggingUnitDisplayable.formatter(usesGroupingSeparator:localeOverride:)(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v2 setNumberStyle_];
  [v2 setMaximumFractionDigits_];
  [v2 setMaximumIntegerDigits_];
  [v2 setUsesGroupingSeparator_];
  v3 = sub_1D166F1D4();
  [v2 setLocale_];

  return v2;
}

uint64_t static LoggingUnitDisplayable.formatLoggingAmountAsString(_:shouldIncludeGroupingSeparator:localeOverride:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 1) != 0 || (v7 = (*(a6 + 32))(a3 & 1, a4, a5, a6, a5), v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_], v9 = objc_msgSend(v7, sel_stringFromNumber_, v8), v7, v8, !v9))
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v12 = sub_1D166F4E4();
    __swift_project_value_buffer(v12, qword_1EDECB360);
    v13 = sub_1D166F4D4();
    v14 = sub_1D166FF44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315394;
      v17 = sub_1D1670754();
      v19 = sub_1D15F7A30(v17, v18, &v23);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      sub_1D160328C(0, &qword_1EC63D9E8, MEMORY[0x1E69E63B0]);
      v20 = sub_1D166FA74();
      v22 = sub_1D15F7A30(v20, v21, &v23);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1D15E6000, v13, v14, "[%s] Unable to format double as dose string = %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v16, -1, -1);
      MEMORY[0x1D388E250](v15, -1, -1);
    }

    return 48;
  }

  else
  {
    v10 = sub_1D166FA04();

    return v10;
  }
}

void static LoggingUnitDisplayable.formatLoggingStringAsDouble(_:localeOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D166F1F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = static LoggingUnitDisplayable.formatter(usesGroupingSeparator:localeOverride:)(1);
    v14 = sub_1D166F9C4();
    v15 = [v13 numberFromString_];

    if (v15)
    {
      v33[0] = a1;
      [v15 doubleValue];
      v17 = v16;
      sub_1D166F1E4();
      static LoggingUnitDisplayable.formatLoggingAmountAsString(_:shouldIncludeGroupingSeparator:localeOverride:)(v17, 0, 1, v12, a4, a5);
      v18 = *(v10 + 8);
      v18(v12, v9);
      sub_1D166F1E4();
      v19 = static LoggingUnitDisplayable.formatter(usesGroupingSeparator:localeOverride:)(1);
      v18(v12, v9);
      v20 = sub_1D166F9C4();

      v21 = [v19 numberFromString_];

      if (v21)
      {
        [v21 doubleValue];

        return;
      }

      a1 = v33[0];
    }
  }

  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v22 = sub_1D166F4E4();
  __swift_project_value_buffer(v22, qword_1EDECB360);

  v23 = sub_1D166F4D4();
  v24 = sub_1D166FF44();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315394;
    v27 = sub_1D1670754();
    v29 = sub_1D15F7A30(v27, v28, &v34);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v33[1] = a1;
    v33[2] = a2;
    sub_1D160328C(0, &qword_1EDECAE20, MEMORY[0x1E69E6158]);

    v30 = sub_1D166FA74();
    v32 = sub_1D15F7A30(v30, v31, &v34);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_1D15E6000, v23, v24, "[%s] Unable to format dose string as double = %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v26, -1, -1);
    MEMORY[0x1D388E250](v25, -1, -1);
  }
}

BOOL static LoggingUnitDisplayable.userEnteredLoggingAmountIsValid(_:localeOverride:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D166EF44();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v51 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = HIBYTE(a2) & 0xF;
  v53 = a1;
  v54 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    return 1;
  }

  v23 = v19;
  v24 = v18;
  v25 = (*(a5 + 32))(0, a3, a4, a5);
  v26 = [v25 decimalSeparator];

  if (!v26)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v41 = sub_1D166F4E4();
    __swift_project_value_buffer(v41, qword_1EDECB360);
    v42 = sub_1D166F4D4();
    v43 = sub_1D166FF44();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_20;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "[Medications] unable to verify logging amount because separator string is invalid.";
    goto LABEL_19;
  }

  v27 = sub_1D166FA04();
  v29 = v28;

  sub_1D166EF04();
  sub_1D166EF14();
  v52 = v27;
  sub_1D166EF04();
  sub_1D166EF34();
  v30 = *(v23 + 8);
  v30(v13, v10);
  v30(v16, v10);
  (*(v23 + 16))(v13, v21, v10);
  sub_1D16032D8(&qword_1EC63DAB8, MEMORY[0x1E69680D0]);
  sub_1D1670174();
  sub_1D16032D8(&qword_1EC63DAC0, MEMORY[0x1E69680C8]);
  v31 = sub_1D166F9B4();
  v30(v16, v10);
  v30(v24, v10);
  v30(v21, v10);
  if ((v31 & 1) == 0)
  {
LABEL_23:

    return 0;
  }

  v32 = sub_1D1601E64(v52, v29);
  v34 = v33;

  if (!v34)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v46 = sub_1D166F4E4();
    __swift_project_value_buffer(v46, qword_1EDECB360);
    v42 = sub_1D166F4D4();
    v43 = sub_1D166FF44();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_20;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "[Medications] unable to verify logging amount because separator char is invalid.";
LABEL_19:
    _os_log_impl(&dword_1D15E6000, v42, v43, v45, v44, 2u);
    MEMORY[0x1D388E250](v44, -1, -1);
LABEL_20:

    return 0;
  }

  v36 = v53;
  v35 = v54;
  v37 = sub_1D1602FFC(v32, v34, v53, v54);
  v39 = v38;

  if (v39)
  {
  }

  else
  {
    v47 = sub_1D166FBC4();
    MEMORY[0x1D388CCA0](v47);

    v48 = sub_1D16030EC(v37, v36, v35);
    MEMORY[0x1D388CCA0](v48);
  }

  v49 = sub_1D166FAF4();

  if (v49 >= 6)
  {
    goto LABEL_23;
  }

  v50 = sub_1D166FAF4();

  return v50 < 4;
}

unint64_t sub_1D1602FFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1D166FBA4() != a1 || v9 != a2)
  {
    v10 = sub_1D16705D4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1D166FB04();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1D16030EC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1D166FBC4();
  }

  __break(1u);
  return result;
}

void sub_1D1603138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D160319C()
{
  result = qword_1EDEC9D28;
  if (!qword_1EDEC9D28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDEC9D28);
  }

  return result;
}

uint64_t sub_1D1603200(uint64_t a1)
{
  sub_1D1603138(0, &unk_1EDECAB90, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D160328C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D16700E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D16032D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D166EF44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicationVisualizationConfigVersion(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MedicationVisualizationConfigVersion(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void *MedicationDataSource.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[14] = MEMORY[0x1E69E7CC8];
  v2[15] = a1;
  sub_1D166F474();
  v3 = a1;
  v2[16] = sub_1D166F464();
  return v2;
}

void *MedicationDataSource.init(healthStore:)(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v2[14] = MEMORY[0x1E69E7CC8];
  v2[15] = a1;
  sub_1D166F474();
  v4 = a1;
  v2[16] = sub_1D166F464();
  return v2;
}

uint64_t sub_1D160356C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_1D16041DC(0, &qword_1EDECAB10, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3940]);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_1D16041DC(0, &qword_1EDECAB18, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3930]);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  sub_1D16041DC(0, &qword_1EDECAB08, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3948]);
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D160376C, v2, 0);
}

uint64_t sub_1D160376C()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[11];
    v3 = v0[12];

    v5 = sub_1D16061DC(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      v8 = v0[1];

      return v8(v7);
    }
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v29 = v0[13];
  v13 = objc_opt_self();
  sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
  v14 = [swift_getObjCClassFromMetadata() _typeIdentifier];
  v15 = [v13 predicateForUserDomainConceptsWithTypeIdentifier_];
  v0[23] = v15;

  v16 = sub_1D166F9C4();
  v17 = [v13 predicateForUserDomainConceptsWithSemanticIdentifier_];
  v0[24] = v17;

  sub_1D160989C(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D1672930;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  sub_1D15EE5A8(0, &qword_1EDECB348, 0x1E696AE18);
  v19 = v15;
  v20 = v17;
  v21 = sub_1D166FC44();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];
  v0[25] = v22;

  sub_1D15EE5A8(0, &qword_1EDECB338, 0x1E696C530);
  v23 = v22;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D166F434();
  v0[8] = v24;
  sub_1D166F424();
  sub_1D166F414();
  (*(v11 + 8))(v10, v12);
  v0[26] = sub_1D1609D6C(&qword_1EC63DAC8, v25, type metadata accessor for MedicationDataSource, &protocol conformance descriptor for MedicationDataSource);
  v0[27] = v24;
  v26 = sub_1D1606278();
  v27 = swift_task_alloc();
  v0[28] = v27;
  *v27 = v0;
  v27[1] = sub_1D1603B38;
  v28 = v0[17];

  return MEMORY[0x1EEE6D8C8](v0 + 9, v28, v26);
}

uint64_t sub_1D1603B38()
{
  *(*v1 + 232) = v0;

  swift_getObjectType();
  v3 = sub_1D166FD14();
  if (v0)
  {
    v4 = sub_1D1604058;
  }

  else
  {
    v4 = sub_1D1603C94;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D1603C94()
{
  v1 = v0[13];
  v0[30] = v0[9];
  return MEMORY[0x1EEE6DFA0](sub_1D1603CB8, v1, 0);
}

uint64_t sub_1D1603CB8()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1D388CE10]();
    if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D166FC84();
    }

    sub_1D166FCC4();

    *(v0 + 216) = *(v0 + 64);
    v3 = sub_1D1606278();
    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_1D1603B38;
    v5 = *(v0 + 136);
    v6 = v0 + 72;
    v7 = v3;

    return MEMORY[0x1EEE6D8C8](v6, v5, v7);
  }

  v8 = *(v0 + 216);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  if (!(v8 >> 62))
  {
    v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_16:
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);

    goto LABEL_17;
  }

  v6 = sub_1D1670224();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1D388D4D0](0, *(v0 + 216));
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v6, v5, v7);
    }

    v9 = *(*(v0 + 216) + 32);
  }

  v10 = [v9 userConcept];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  if (!v11)
  {

LABEL_17:
    v20 = *(v0 + 176);
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);

    (*(v22 + 8))(v20, v21);
    v14 = 0;
    goto LABEL_18;
  }

  v14 = v11;
  v28 = *(v0 + 176);
  v15 = *(v0 + 168);
  v26 = *(v0 + 184);
  v27 = *(v0 + 160);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = *(v0 + 88);
  swift_beginAccess();
  v25 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v17 + 112);
  *(v17 + 112) = 0x8000000000000000;
  sub_1D1608D34(v14, v18, v16, isUniquelyReferenced_nonNull_native, sub_1D1648188, qword_1EDECABF0, &qword_1EDECACB0, 0x1E69A3B10);

  *(v17 + 112) = v29;
  swift_endAccess();

  (*(v15 + 8))(v28, v27);
LABEL_18:

  v23 = *(v0 + 8);

  return v23(v14);
}

uint64_t sub_1D1604058()
{
  v1 = v0[13];
  v0[10] = v0[29];
  sub_1D15F9218();
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D16040F8, v1, 0);
}

uint64_t sub_1D16040F8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

void sub_1D16041DC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1604244(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1D1609BB8(0, &qword_1EDEC9FC0, MEMORY[0x1E69E8658]);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1604320, v1, 0);
}

uint64_t sub_1D1604320()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1D16041DC(0, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1D166FDA4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1604428(uint64_t a1, uint64_t a2)
{
  sub_1D1609BB8(0, &qword_1EDEC9FB8, MEMORY[0x1E69E8660]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  sub_1D1609A44(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_1D166FD84();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(a2 + 128);
  (*(v6 + 16))(v8, a1, v5);
  v15 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v14;
  *(v16 + 5) = v13;
  (*(v6 + 32))(&v16[v15], v8, v5);
  v17 = v14;
  sub_1D1632CAC(0, 0, v11, &unk_1D16729F0, v16);
}

uint64_t sub_1D1604660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_1D1609BB8(0, &qword_1EDEC9FC8, MEMORY[0x1E69E8638]);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_1D166F444();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  sub_1D1609A44(0, &qword_1EC63DB78, MEMORY[0x1E69DF030]);
  v6[20] = swift_task_alloc();
  sub_1D1609CCC(0, &qword_1EC63DB80, MEMORY[0x1E695BF40]);
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  sub_1D1609CAC(0);
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16048D0, 0, 0);
}

uint64_t sub_1D16048D0()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = sub_1D166F454();
  *(v0 + 216) = v4;
  *(v0 + 40) = v4;
  sub_1D1609C44(0);
  v6 = v5;
  v7 = sub_1D1609D6C(&qword_1EDECA078, 255, sub_1D1609C44, MEMORY[0x1E695BFB0]);
  MEMORY[0x1D388C9A0](v6, v7);
  sub_1D166F5D4();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  *(v0 + 296) = *MEMORY[0x1E69DF028];
  *(v0 + 300) = *MEMORY[0x1E69DF020];
  v8 = sub_1D1609D6C(&qword_1EC63DB90, 255, sub_1D1609CAC, MEMORY[0x1E695BF38]);
  v9 = swift_task_alloc();
  *(v0 + 224) = v9;
  *v9 = v0;
  v9[1] = sub_1D1604A98;
  v10 = *(v0 + 192);
  v11 = *(v0 + 160);

  return MEMORY[0x1EEE6D8C8](v11, v10, v8);
}

uint64_t sub_1D1604A98()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1D1605230;
  }

  else
  {
    v2 = sub_1D1604BAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1604BC8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

LABEL_7:

    v11 = *(v0 + 8);

    return v11();
  }

  (*(v3 + 32))(*(v0 + 152), v1, v2);
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  if (!Strong)
  {
LABEL_6:
    v5 = *(v0 + 208);
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v8 = *(v0 + 152);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);

    (*(v10 + 8))(v8, v9);
    (*(v7 + 8))(v5, v6);
    goto LABEL_7;
  }

  if (sub_1D166FDC4())
  {

    goto LABEL_6;
  }

  v13 = *(v0 + 296);
  v14 = *(v0 + 144);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v15 + 16);
  v17(v14, *(v0 + 152), v16);
  v18 = *(v15 + 88);
  if (v18(v14, v16) == v13)
  {
    v19 = *(v0 + 144);
    (*(*(v0 + 128) + 96))(v19, *(v0 + 120));
    v20 = *v19;
    v21 = MEMORY[0x1E69E7CC0];
    *(v0 + 56) = MEMORY[0x1E69E7CC0];
    if (v20 >> 62)
    {
LABEL_36:
      v22 = sub_1D1670224();
      *(v0 + 264) = v21;
      if (v22)
      {
LABEL_13:
        v23 = 0;
        do
        {
          v24 = v23;
          while (1)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x1D388D4D0](v24, v20);
            }

            else
            {
              if (v24 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_35;
              }

              v25 = *(v20 + 8 * v24 + 32);
            }

            v26 = v25;
            v23 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v24;
            if (v23 == v22)
            {
              goto LABEL_37;
            }
          }

          MEMORY[0x1D388CE10]();
          if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D166FC84();
          }

          sub_1D166FCC4();
          v21 = *(v0 + 56);
          *(v0 + 264) = v21;
        }

        while (v23 != v22);
      }
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 264) = v21;
      if (v22)
      {
        goto LABEL_13;
      }
    }

LABEL_37:

    if (v21 >> 62)
    {
      v39 = v21;
      if (sub_1D1670224())
      {
        goto LABEL_39;
      }
    }

    else
    {
      v39 = v21;
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_39:
        v40 = swift_task_alloc();
        *(v0 + 272) = v40;
        *v40 = v0;
        v40[1] = sub_1D16052B0;

        return sub_1D1605D78(v39);
      }
    }

    (*(*(v0 + 128) + 8))(*(v0 + 152), *(v0 + 120));

    goto LABEL_46;
  }

  v45 = *(v0 + 300);
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);
  v31 = *(v0 + 120);
  v32 = *(v30 + 8);
  *(v0 + 248) = v32;
  *(v0 + 256) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v31);
  v17(v29, v28, v31);
  v33 = v18(v29, v31);
  v34 = *(v0 + 120);
  if (v33 != v45)
  {
    v38 = *(v0 + 136);
    v32(*(v0 + 152), *(v0 + 120));

    v32(v38, v34);
LABEL_46:
    v41 = sub_1D1609D6C(&qword_1EC63DB90, 255, sub_1D1609CAC, MEMORY[0x1E695BF38]);
    v42 = swift_task_alloc();
    *(v0 + 224) = v42;
    *v42 = v0;
    v42[1] = sub_1D1604A98;
    v43 = *(v0 + 192);
    v44 = *(v0 + 160);

    return MEMORY[0x1EEE6D8C8](v44, v43, v41);
  }

  v35 = *(v0 + 136);
  (*(*(v0 + 128) + 96))(v35, *(v0 + 120));
  v36 = *v35;
  *(v0 + 280) = v36;
  if (v36 >> 62)
  {
    if (sub_1D1670224())
    {
      goto LABEL_30;
    }

    goto LABEL_45;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:
    v32(*(v0 + 152), *(v0 + 120));

    goto LABEL_46;
  }

LABEL_30:
  v37 = swift_task_alloc();
  *(v0 + 288) = v37;
  *v37 = v0;
  v37[1] = sub_1D1605538;

  return sub_1D1605758(v36);
}

uint64_t sub_1D1605230()
{
  *(v0 + 48) = *(v0 + 232);
  sub_1D15F9218();
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D16052B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D16053AC, 0, 0);
}

uint64_t sub_1D16053AC()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v0[8] = v0[33];
  sub_1D1609BB8(0, &qword_1EDEC9FB8, MEMORY[0x1E69E8660]);
  sub_1D166FD94();

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = sub_1D1609D6C(&qword_1EC63DB90, 255, sub_1D1609CAC, MEMORY[0x1E695BF38]);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1D1604A98;
  v9 = v0[24];
  v10 = v0[20];

  return MEMORY[0x1EEE6D8C8](v10, v9, v7);
}

uint64_t sub_1D1605538()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1605650, 0, 0);
}

uint64_t sub_1D1605650()
{
  v1 = v0[31];
  v2 = v0[19];
  v3 = v0[15];

  v1(v2, v3);
  v4 = sub_1D1609D6C(&qword_1EC63DB90, 255, sub_1D1609CAC, MEMORY[0x1E695BF38]);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_1D1604A98;
  v6 = v0[24];
  v7 = v0[20];

  return MEMORY[0x1EEE6D8C8](v7, v6, v4);
}

uint64_t sub_1D1605758(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1D166F1A4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1605824, v1, 0);
}

void *sub_1D1605824()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    goto LABEL_43;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v57 = MEMORY[0x1E69E7CC0];
    result = sub_1D162300C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v0[11];
    v3 = v57;
    v7 = v1 & 0xC000000000000001;
    v55 = v0[8] + 32;
    do
    {
      if (v7)
      {
        v8 = MEMORY[0x1D388D4D0](v5, v0[8]);
      }

      else
      {
        v8 = *(v55 + 8 * v5);
      }

      v9 = v8;
      v10 = [v8 UUID];
      sub_1D166F194();

      v12 = *(v57 + 16);
      v11 = *(v57 + 24);
      v1 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1D162300C((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[13];
      v14 = v0[10];
      ++v5;
      *(v57 + 16) = v1;
      (*(v6 + 32))(v57 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v13, v14);
    }

    while (v2 != v5);
  }

  v15 = v0[11];
  v16 = v0[9];
  swift_beginAccess();
  v17 = *(v16 + 112);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = -1;
  v22 = -1 << *(*(v16 + 112) + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & v18;
  v24 = (63 - v22) >> 6;
  v47 = (v15 + 8);
  v50 = *(v16 + 112);

  v25 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v56 = v16;
  v48 = v24;
  v49 = v19;
  if (v23)
  {
LABEL_17:
    v26 = v25;
    goto LABEL_21;
  }

  while (1)
  {
LABEL_18:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v2 = sub_1D1670224();
      goto LABEL_3;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
LABEL_21:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v50 + 48) + 16 * v28);
      v51 = *v29;
      v30 = *(*(v50 + 56) + 8 * v28);
      v53 = v29[1];

      v52 = v30;
      v31 = [v52 UUID];
      sub_1D166F194();

      v32 = 0;
      v1 = *(v3 + 16);
      do
      {
        if (v1 == v32)
        {
          (*v47)(v0[12], v0[10]);

          v25 = v26;
          v24 = v48;
          v19 = v49;
          if (!v23)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v33 = v32 + 1;
        sub_1D1609D6C(&qword_1EC63DAD0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v34 = sub_1D166F9B4();
        v32 = v33;
      }

      while ((v34 & 1) == 0);
      (*v47)(v0[12], v0[10]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1D15ECAB4(0, *(v54 + 2) + 1, 1, v54);
      }

      v24 = v48;
      v19 = v49;
      v1 = *(v54 + 2);
      v35 = *(v54 + 3);
      if (v1 >= v35 >> 1)
      {
        v54 = sub_1D15ECAB4((v35 > 1), v1 + 1, 1, v54);
      }

      *(v54 + 2) = v1 + 1;
      v36 = &v54[16 * v1];
      *(v36 + 4) = v51;
      *(v36 + 5) = v53;
      v25 = v26;
      if (v23)
      {
        goto LABEL_17;
      }
    }
  }

  v37 = *(v54 + 2);
  if (!v37)
  {
    goto LABEL_38;
  }

  v1 = 0;
  v38 = (v54 + 40);
  do
  {
    if (v1 >= *(v54 + 2))
    {
      goto LABEL_42;
    }

    v40 = *(v38 - 1);
    v39 = *v38;
    swift_beginAccess();

    v41 = sub_1D16061DC(v40, v39);
    if (v42)
    {
      v43 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v56 + 112);
      *(v56 + 112) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D1648188();
      }

      sub_1D1647E24(v43, v45);
      *(v56 + 112) = v45;
    }

    ++v1;
    swift_endAccess();

    v38 += 2;
  }

  while (v37 != v1);
LABEL_38:

  v46 = v0[1];

  return v46();
}

uint64_t sub_1D1605D78(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1605D98, v1, 0);
}

uint64_t sub_1D1605D98()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
LABEL_26:
    result = sub_1D1670224();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_27:
    v28 = v0[1];

    return v28();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v30 = result;
  v31 = v1 & 0xC000000000000001;
  v4 = v0[6];
  v29 = v0[5] + 32;
  while (1)
  {
    if (v31)
    {
      v7 = MEMORY[0x1D388D4D0](v3, v0[5]);
    }

    else
    {
      v7 = *(v29 + 8 * v3);
    }

    v8 = v7;
    v9 = [v7 semanticIdentifier];
    v10 = [v9 stringValue];

    v11 = sub_1D166FA04();
    v13 = v12;

    swift_beginAccess();
    v14 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v4 + 112);
    *(v4 + 112) = 0x8000000000000000;
    v17 = sub_1D16061DC(v11, v13);
    v18 = *(v1 + 16);
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v21 = v16;
    if (*(v1 + 24) < v20)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v16)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D1648188();
      if (v21)
      {
LABEL_5:
        v5 = *(v1 + 56);
        v6 = *(v5 + 8 * v17);
        *(v5 + 8 * v17) = v14;

        goto LABEL_6;
      }
    }

LABEL_17:
    *(v1 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v24 = (*(v1 + 48) + 16 * v17);
    *v24 = v11;
    v24[1] = v13;
    *(*(v1 + 56) + 8 * v17) = v14;
    v25 = *(v1 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_25;
    }

    *(v1 + 16) = v27;
LABEL_6:
    ++v3;
    *(v4 + 112) = v1;
    swift_endAccess();

    if (v30 == v3)
    {
      goto LABEL_27;
    }
  }

  sub_1D1608038(v20, isUniquelyReferenced_nonNull_native, qword_1EDECABF0, &qword_1EDECACB0, 0x1E69A3B10);
  v22 = sub_1D16061DC(v11, v13);
  if ((v21 & 1) == (v23 & 1))
  {
    v17 = v22;
    if (v21)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  return sub_1D1670634();
}

uint64_t MedicationDataSource.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MedicationDataSource.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1D1606100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D16706A4();
  sub_1D166FAE4();
  if (a4 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (a4)
    {
      sub_1D166FAE4();
    }
  }

  v8 = sub_1D16706E4();

  return sub_1D16065CC(a1, a2, a3, a4, v8);
}

unint64_t sub_1D16061DC(uint64_t a1, uint64_t a2)
{
  sub_1D16706A4();
  sub_1D166FAE4();
  v4 = sub_1D16706E4();

  return sub_1D1606890(a1, a2, v4);
}

unint64_t sub_1D1606278()
{
  result = qword_1EDECAB20;
  if (!qword_1EDECAB20)
  {
    sub_1D16041DC(255, &qword_1EDECAB18, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3930]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAB20);
  }

  return result;
}

unint64_t sub_1D16062FC(uint64_t a1)
{
  sub_1D166FA04();
  sub_1D16706A4();
  sub_1D166FAE4();
  v2 = sub_1D16706E4();

  return sub_1D1606948(a1, v2);
}

unint64_t sub_1D1606390(void *a1)
{
  sub_1D16706A4();
  sub_1D16706C4();
  if (a1)
  {
    sub_1D1609988();
    v2 = a1;
    sub_1D166F984();
  }

  v3 = sub_1D16706E4();
  return sub_1D1606A4C(a1, v3);
}

unint64_t sub_1D160643C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D16706A4();
  sub_1D1626A10(v8, a1);
  sub_1D166FAE4();
  v6 = sub_1D16706E4();

  return sub_1D1606C84(a1, a2, a3, v6);
}

unint64_t sub_1D16064D0(void *a1)
{
  sub_1D16706A4();
  sub_1D16706C4();
  if (a1)
  {
    v2 = a1;
    sub_1D16700B4();
  }

  v3 = sub_1D16706E4();

  return sub_1D1606D64(a1, v3);
}

unint64_t sub_1D1606560(uint64_t a1)
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](a1);
  v2 = sub_1D16706E4();

  return sub_1D1606E68(a1, v2);
}

unint64_t sub_1D16065CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v23 = ~v6;
  while (1)
  {
    v14 = (*(v5 + 48) + 32 * v7);
    v15 = v14[2];
    v16 = v14[3];
    v17 = *v14 == a1 && v14[1] == a2;
    if (!v17 && (sub_1D16705D4() & 1) == 0)
    {
      goto LABEL_5;
    }

    if (v16 == 1)
    {
      if (a4 == 1)
      {
        sub_1D15F3228(v15, 1);
        sub_1D15F3228(a3, 1);
        return v7;
      }

      sub_1D15F3228(v15, 1);
      v12 = a3;
      v13 = a4;
      goto LABEL_4;
    }

    if (a4 == 1)
    {

      sub_1D15F3228(v15, v16);
      v12 = a3;
      v13 = 1;
LABEL_4:
      sub_1D15F3228(v12, v13);
      goto LABEL_5;
    }

    if (!v16)
    {
      break;
    }

    if (!a4)
    {
      sub_1D15F301C(a3, 0);
      sub_1D15F301C(v15, v16);
      sub_1D15F301C(a3, 0);
      sub_1D15F3228(v15, v16);
      v12 = a3;
      v13 = 0;
      goto LABEL_4;
    }

    if (v15 == a3 && v16 == a4)
    {
      sub_1D15F301C(a3, a4);
      sub_1D15F301C(a3, a4);
      sub_1D15F3228(a3, a4);
      v21 = a3;
      v22 = a4;
      goto LABEL_30;
    }

    v19 = sub_1D16705D4();
    sub_1D15F301C(v15, v16);
    sub_1D15F301C(a3, a4);
    sub_1D15F3228(v15, v16);
    sub_1D15F3228(a3, a4);
    if (v19)
    {
      return v7;
    }

LABEL_5:
    v7 = (v7 + 1) & v23;
    if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  sub_1D15F301C(a3, a4);
  sub_1D15F301C(v15, 0);
  sub_1D15F301C(a3, a4);

  sub_1D15F301C(v15, 0);
  sub_1D15F3228(v15, 0);
  sub_1D15F3228(a3, a4);
  if (a4)
  {
    sub_1D15F3228(a3, a4);

    v12 = v15;
    v13 = 0;
    goto LABEL_4;
  }

  v21 = v15;
  v22 = 0;
LABEL_30:
  sub_1D15F3228(v21, v22);
  return v7;
}

unint64_t sub_1D1606890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D16705D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D1606948(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D166FA04();
      v8 = v7;
      if (v6 == sub_1D166FA04() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D16705D4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D1606A4C(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v25 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        v10 = v9;
        v11 = v10;
        if (a1)
        {
          v12 = v10;
          v13 = a1;
          v14 = v12;
          v15 = [v14 ingredientProducts];
          sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
          v16 = sub_1D166FC54();

          v17 = [v13 ingredientProducts];
          v18 = sub_1D166FC54();

          LOBYTE(v17) = sub_1D162059C(v16, v18);

          if (v17)
          {
            v19 = [v14 tradeNameProduct];
            v20 = [v13 tradeNameProduct];
            v21 = v20;
            if (v19)
            {
              if (v20)
              {
                v22 = sub_1D16700A4();

                v8 = v25;
                if (v22)
                {
                  return v5;
                }

                goto LABEL_19;
              }

LABEL_14:
              v21 = v14;
            }

            else
            {

              if (!v21)
              {

                return v5;
              }

              v19 = v13;
            }

            v11 = v14;
            v8 = v25;
            goto LABEL_18;
          }

          v19 = v13;
          goto LABEL_14;
        }
      }

      else
      {
        if (!a1)
        {
          return v5;
        }

        v23 = a1;
        v11 = 0;
      }

      v14 = a1;
LABEL_18:

LABEL_19:
      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D1606C84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    do
    {
      v9 = *(*(v4 + 48) + 24 * v6);

      v10 = sub_1D162059C(v9, a1);

      if (v10)
      {
        break;
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D1606D64(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
          v10 = v9;
          v11 = a1;
          v12 = sub_1D16700A4();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D1606E68(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1D1606F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D16099DC(0);
  v35 = v4;
  result = sub_1D1670474();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
        v26 = *(&v36 + 1);
      }

      sub_1D16706A4();
      sub_1D166FAE4();
      result = sub_1D16706E4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D16071C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D16097D0(0);
  v6 = sub_1D1670474();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v32 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v31 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = v14 | (v8 << 6);
      v19 = *(*(v5 + 48) + 8 * v18);
      v20 = *(*(v5 + 56) + 8 * v18);
      if ((v4 & 1) == 0)
      {
        v21 = v19;
      }

      sub_1D16706A4();
      sub_1D16706C4();
      if (v19)
      {
        sub_1D1609988();
        v22 = v19;
        sub_1D166F984();
      }

      result = sub_1D16706E4();
      v23 = -1 << *(v7 + 32);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v7 + 48) + 8 * v13) = v19;
      *(*(v7 + 56) + 8 * v13) = v20;
      ++*(v7 + 16);
    }

    v15 = v8;
    result = v5 + 64;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v31)
      {
        break;
      }

      v17 = v32[v8];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1D16074A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D1609778(0, &qword_1EC63DB38, MEMORY[0x1E69E6530]);
  v34 = v4;
  result = sub_1D1670474();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D16706A4();
      sub_1D166FAE4();
      result = sub_1D16706E4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D160774C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D160968C(0);
  v44 = v4;
  result = sub_1D1670474();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v44 & 1) == 0)
        {

          v3 = v42;
          goto LABEL_44;
        }

        v41 = 1 << *(v5 + 32);
        v3 = v42;
        if (v41 >= 64)
        {
          bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v41;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 24 * v21);
      v25 = *v23;
      v24 = v23[1];
      v26 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v44 & 1) == 0)
      {
      }

      sub_1D16706A4();
      v46 = v24;
      v47 = v27;
      v45 = v26;
      if (v25 >> 62)
      {
        v40 = sub_1D1670224();
        MEMORY[0x1D388D890](v40);
        result = sub_1D1670224();
        v28 = result;
        if (!result)
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = MEMORY[0x1D388D890](*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_26;
        }
      }

      if (v28 < 1)
      {
        goto LABEL_47;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v28; ++i)
        {
          MEMORY[0x1D388D4D0](i, v25);
          sub_1D16700B4();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v30 = (v25 + 32);
        do
        {
          v31 = *v30++;
          v32 = v31;
          sub_1D16700B4();

          --v28;
        }

        while (v28);
      }

LABEL_26:
      sub_1D166FAE4();
      result = sub_1D16706E4();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v47;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v47;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v7 + 48) + 24 * v15);
      *v17 = v25;
      v17[1] = v46;
      v17[2] = v45;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v43;
    }
  }

LABEL_44:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1607ACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D16094AC(0);
  v33 = v4;
  result = sub_1D1670474();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v33 & 1) == 0)
      {
        v22 = v20;
      }

      sub_1D16706A4();
      sub_1D16706C4();
      if (v20)
      {
        v23 = v20;
        sub_1D16700B4();
      }

      result = sub_1D16706E4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1607D78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D1609778(0, &qword_1EC63DAF8, MEMORY[0x1E69E7CA0] + 8);
  v33 = v4;
  result = sub_1D1670474();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D15FA184(v24, v34);
      }

      else
      {
        sub_1D15F928C(v24, v34);
      }

      sub_1D16706A4();
      sub_1D166FAE4();
      result = sub_1D16706E4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D15FA184(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1608038(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1D16091FC(0, a3, a4, a5);
  v38 = v7;
  result = sub_1D1670474();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v38 & 1) == 0)
      {

        v28 = v27;
      }

      sub_1D16706A4();
      sub_1D166FAE4();
      result = sub_1D16706E4();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1D16082DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  sub_1D1609304(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1D1609388(0);
  v44 = v4;
  result = sub_1D1670474();
  v9 = result;
  if (*(v7 + 16))
  {
    v41 = v2;
    v42 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v45 = (v14 - 1) & v14;
LABEL_15:
      v24 = v21 | (v10 << 6);
      v25 = *(v7 + 56);
      v26 = (*(v7 + 48) + 32 * v24);
      v28 = *v26;
      v27 = v26[1];
      v30 = v26[2];
      v29 = v26[3];
      v47 = *(v43 + 72);
      v31 = v25 + v47 * v24;
      if (v44)
      {
        sub_1D15F323C(v31, v48);
      }

      else
      {
        sub_1D1609448(v31, v48);

        sub_1D15F301C(v30, v29);
      }

      sub_1D16706A4();
      v46 = v27;
      sub_1D166FAE4();
      if (v29 == 1)
      {
        MEMORY[0x1D388D890](1);
      }

      else
      {
        MEMORY[0x1D388D890](0);
        sub_1D16706C4();
        if (v29)
        {
          sub_1D166FAE4();
        }
      }

      result = sub_1D16706E4();
      v32 = -1 << *(v9 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v16 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v16 + 8 * v34);
          if (v38 != -1)
          {
            v17 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v33) & ~*(v16 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 32 * v17);
      v20 = v46;
      v19 = v47;
      *v18 = v28;
      v18[1] = v20;
      v18[2] = v30;
      v18[3] = v29;
      result = sub_1D15F323C(v48, *(v9 + 56) + v19 * v17);
      ++*(v9 + 16);
      v7 = v42;
      v14 = v45;
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v45 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_38;
    }

    v39 = 1 << *(v7 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v11, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v39;
    }

    *(v7 + 16) = 0;
  }

LABEL_38:
  *v3 = v9;
  return result;
}

uint64_t sub_1D160867C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D1609264(0);
  result = sub_1D1670474();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1D16706A4();
      MEMORY[0x1D388D890](v20);
      result = sub_1D16706E4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t dispatch thunk of MedicationDataSource.fetchMedication(identifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D15F9958;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MedicationDataSource.observeChanges()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D15FFFCC;

  return v6(a1);
}

unint64_t sub_1D1608BA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D16061DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D16074A8(v16, a4 & 1);
      result = sub_1D16061DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D1670634();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D1648340();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1D1608D34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), unint64_t *a6, unint64_t *a7, void *a8)
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_1D16061DC(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 < v23 || (a4 & 1) != 0)
    {
      sub_1D1608038(v23, a4 & 1, a6, a7, a8);
      v18 = sub_1D16061DC(a2, a3);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_18:
        sub_1D1670634();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v26 = v18;
      a5();
      v18 = v26;
    }
  }

  v28 = *v12;
  if (v24)
  {
    *(v28[7] + 8 * v18) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v28[(v18 >> 6) + 8] |= 1 << v18;
  v29 = (v28[6] + 16 * v18);
  *v29 = a2;
  v29[1] = a3;
  *(v28[7] + 8 * v18) = a1;
  v30 = v28[2];
  v22 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v31;
}

_OWORD *sub_1D1608EE4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D16061DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D16484C8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1607D78(v16, a4 & 1);
    v11 = sub_1D16061DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D1670634();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1D15FA184(a1, v22);
  }

  else
  {
    sub_1D1609190(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1D1609064(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D1606560(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D1648A40();
    result = v17;
    goto LABEL_8;
  }

  sub_1D160867C(v14, a3 & 1);
  result = sub_1D1606560(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for HKMedicationListOnboardingAnalyticsStepType(0);
  result = sub_1D1670634();
  __break(1u);
  return result;
}

_OWORD *sub_1D1609190(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D15FA184(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1D16091FC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1D15EE5A8(255, a3, a4);
    v5 = sub_1D1670494();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1609264(uint64_t a1)
{
  if (!qword_1EC63DAD8)
  {
    type metadata accessor for HKMedicationListOnboardingAnalyticsStepType(255);
    sub_1D1609D6C(&qword_1EC63DAE0, 255, type metadata accessor for HKMedicationListOnboardingAnalyticsStepType, &unk_1D1671BC8);
    v1 = sub_1D1670494();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DAD8);
    }
  }
}

void sub_1D1609304(uint64_t a1)
{
  if (!qword_1EDECAE48)
  {
    sub_1D16041DC(255, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECAE48);
    }
  }
}

void sub_1D1609388(uint64_t a1)
{
  if (!qword_1EC63DAE8)
  {
    sub_1D1609304(255);
    sub_1D16093F4();
    v1 = sub_1D1670494();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DAE8);
    }
  }
}

unint64_t sub_1D16093F4()
{
  result = qword_1EDECAF28;
  if (!qword_1EDECAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF28);
  }

  return result;
}

uint64_t sub_1D1609448(uint64_t a1, uint64_t a2)
{
  sub_1D1609304(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D16094AC(uint64_t a1)
{
  if (!qword_1EC63DB00)
  {
    sub_1D16041DC(255, &qword_1EC63DB08, &qword_1EC63DB10, 0x1E696C020, MEMORY[0x1E69E6720]);
    sub_1D16041DC(255, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
    sub_1D1609580();
    v1 = sub_1D1670494();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DB00);
    }
  }
}

unint64_t sub_1D1609580()
{
  result = qword_1EC63DB18;
  if (!qword_1EC63DB18)
  {
    sub_1D16041DC(255, &qword_1EC63DB08, &qword_1EC63DB10, 0x1E696C020, MEMORY[0x1E69E6720]);
    sub_1D1609624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DB18);
  }

  return result;
}

unint64_t sub_1D1609624()
{
  result = qword_1EC63DB20;
  if (!qword_1EC63DB20)
  {
    sub_1D15EE5A8(255, &qword_1EC63DB10, 0x1E696C020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DB20);
  }

  return result;
}

void sub_1D160968C(uint64_t a1)
{
  if (!qword_1EC63DB28)
  {
    sub_1D16041DC(255, &qword_1EC63D9C8, &qword_1EC63D9D0, 0x1E69A3B08, MEMORY[0x1E69E62F8]);
    sub_1D1609724();
    v1 = sub_1D1670494();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DB28);
    }
  }
}

unint64_t sub_1D1609724()
{
  result = qword_1EC63DB30;
  if (!qword_1EC63DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DB30);
  }

  return result;
}

void sub_1D1609778(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D1670494();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D16097D0(uint64_t a1)
{
  if (!qword_1EC63DB40)
  {
    sub_1D160989C(255, &qword_1EC63DB48, &type metadata for MedicationGroupingKey, MEMORY[0x1E69E6720]);
    sub_1D16041DC(255, &qword_1EC63D9C8, &qword_1EC63D9D0, 0x1E69A3B08, MEMORY[0x1E69E62F8]);
    sub_1D16098EC();
    v1 = sub_1D1670494();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DB40);
    }
  }
}

void sub_1D160989C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D16098EC()
{
  result = qword_1EC63DB50;
  if (!qword_1EC63DB50)
  {
    sub_1D160989C(255, &qword_1EC63DB48, &type metadata for MedicationGroupingKey, MEMORY[0x1E69E6720]);
    sub_1D1609988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DB50);
  }

  return result;
}

unint64_t sub_1D1609988()
{
  result = qword_1EC63DB58;
  if (!qword_1EC63DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DB58);
  }

  return result;
}

void sub_1D16099DC(uint64_t a1)
{
  if (!qword_1EC63DB60)
  {
    sub_1D15EE514(255);
    v1 = sub_1D1670494();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DB60);
    }
  }
}

void sub_1D1609A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16700E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1609A98(uint64_t a1)
{
  sub_1D1609BB8(0, &qword_1EDEC9FB8, MEMORY[0x1E69E8660]);
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D15FFFCC;

  return sub_1D1604660(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_1D1609BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D16041DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D1609C44(uint64_t a1)
{
  if (!qword_1EDECA070)
  {
    sub_1D166F444();
    v1 = sub_1D166F664();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECA070);
    }
  }
}

void sub_1D1609CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D1609C44(255);
    v7 = v6;
    v8 = sub_1D1609D6C(&qword_1EDECA078, 255, sub_1D1609C44, MEMORY[0x1E695BFB0]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1609D6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double MedicationShape.fragments.getter()
{
  v1 = *v0;
  sub_1D160B5D0(0, &qword_1EC63DB98, &type metadata for MedicationVisualizationFragment, MEMORY[0x1E69E6F90]);
  switch(v1)
  {
    case 1:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x705F656C63726963;
      *(v4 + 40) = 0xEB000000006C6C69;
      v3 = xmmword_1D1672AF0;
      goto LABEL_51;
    case 2:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x6C69705F6C61766FLL;
      *(v4 + 40) = 0xE90000000000006CLL;
      v3 = xmmword_1D1672A60;
      goto LABEL_51;
    case 3:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x705F676E6F6C626FLL;
      *(v4 + 40) = 0xEB000000006C6C69;
      v3 = xmmword_1D1672A80;
      goto LABEL_51;
    case 4:
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D16721B0;
      *(v8 + 32) = 0xD000000000000010;
      *(v8 + 40) = 0x80000001D16770A0;
      *(v8 + 48) = xmmword_1D1672B00;
      *(v8 + 64) = 0xD000000000000010;
      *(v8 + 72) = 0x80000001D16770C0;
      *&v3 = 0x746F42206C6C6950;
      *(v8 + 80) = xmmword_1D1672C90;
      return *&v3;
    case 5:
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D16721B0;
      *(v14 + 32) = 0x657361625F72616ALL;
      *(v14 + 40) = 0xE800000000000000;
      *(v14 + 48) = xmmword_1D1672B00;
      *(v14 + 64) = 0x6B73616D5F72616ALL;
      *(v14 + 72) = 0xE800000000000000;
      *&v3 = 7496010;
      *(v14 + 80) = xmmword_1D1672B80;
      return *&v3;
    case 6:
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D16721B0;
      strcpy((v17 + 32), "liquidCup_base");
      *(v17 + 47) = -18;
      *(v17 + 48) = xmmword_1D1672B00;
      strcpy((v17 + 64), "liquidCup_mask");
      *(v17 + 79) = -18;
      *&v3 = 0x432064697571694CLL;
      *(v17 + 80) = xmmword_1D1672B70;
      return *&v3;
    case 7:
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D16721B0;
      *(v9 + 32) = 0x7361625F65627574;
      *(v9 + 40) = 0xE900000000000065;
      *(v9 + 48) = xmmword_1D1672B00;
      *(v9 + 64) = 0x73616D5F65627574;
      *(v9 + 72) = 0xE90000000000006BLL;
      *&v3 = 1700951380;
      *(v9 + 80) = xmmword_1D1672B10;
      return *&v3;
    case 8:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "diamond_soft");
      *(v4 + 45) = 0;
      *(v4 + 46) = -5120;
      v3 = xmmword_1D1672AC0;
      goto LABEL_51;
    case 9:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "diamond_pill");
      *(v4 + 45) = 0;
      *(v4 + 46) = -5120;
      v3 = xmmword_1D1672B30;
      goto LABEL_51;
    case 10:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "triangle_pill");
      *(v4 + 46) = -4864;
      v3 = xmmword_1D1672A00;
      goto LABEL_51;
    case 11:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x6165745F6C6C6970;
      *(v4 + 40) = 0xE900000000000072;
      v3 = xmmword_1D1672A40;
      goto LABEL_51;
    case 12:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x705F657261757173;
      *(v4 + 40) = 0xEB000000006C6C69;
      v3 = xmmword_1D1672A20;
      goto LABEL_51;
    case 13:
      v11 = swift_allocObject();
      *&v3 = 1;
      *(v11 + 16) = xmmword_1D16721D0;
      v12 = 0x80000001D1676FA0;
      v15 = "square_long_pill";
      v16 = 0xD000000000000010;
      goto LABEL_44;
    case 14:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "trapezoid_pill");
      *(v4 + 47) = -18;
      v3 = xmmword_1D1672A10;
      goto LABEL_51;
    case 15:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "pentagon_pill");
      *(v4 + 46) = -4864;
      v3 = xmmword_1D1672A50;
      goto LABEL_51;
    case 16:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "hexagon_pill");
      *(v4 + 45) = 0;
      *(v4 + 46) = -5120;
      v3 = xmmword_1D1672A90;
      goto LABEL_51;
    case 17:
      v11 = swift_allocObject();
      *&v3 = 1;
      *(v11 + 16) = xmmword_1D16721D0;
      v12 = 0x80000001D1677020;
      v13 = "Long Hexagon Pill";
      goto LABEL_43;
    case 18:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "octagon_pill");
      *(v4 + 45) = 0;
      *(v4 + 46) = -5120;
      v3 = xmmword_1D1672A70;
      goto LABEL_51;
    case 19:
      v11 = swift_allocObject();
      *&v3 = 1;
      *(v11 + 16) = xmmword_1D16721D0;
      v12 = 0x80000001D1676FE0;
      v13 = "Long Octagon Pill";
LABEL_43:
      v15 = v13 - 32;
      v16 = 0xD000000000000011;
LABEL_44:
      *(v11 + 32) = v16;
      *(v11 + 40) = v12;
      *(v11 + 48) = v16;
      *(v11 + 56) = v15 | 0x8000000000000000;
      return *&v3;
    case 20:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x705F646C65696873;
      *(v4 + 40) = 0xEB000000006C6C69;
      v3 = xmmword_1D1672A30;
      goto LABEL_51;
    case 21:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x6C6C69705F44;
      *(v4 + 40) = 0xE600000000000000;
      v3 = xmmword_1D1672AE0;
      goto LABEL_51;
    case 22:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x705F6E776F445F44;
      *(v4 + 40) = 0xEB000000006C6C69;
      v3 = xmmword_1D1672AD0;
      goto LABEL_51;
    case 23:
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D16721B0;
      strcpy((v19 + 32), "pillpack_base");
      *(v19 + 46) = -4864;
      *(v19 + 48) = xmmword_1D1672B00;
      strcpy((v19 + 64), "pillpack_mask");
      *(v19 + 78) = -4864;
      *&v3 = 0x636150206C6C6950;
      *(v19 + 80) = xmmword_1D1672C80;
      return *&v3;
    case 24:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x69705F7472616568;
      *(v4 + 40) = 0xEA00000000006C6CLL;
      v3 = xmmword_1D1672AA0;
      goto LABEL_51;
    case 25:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0xD000000000000011;
      *(v4 + 40) = 0x80000001D1677060;
      v3 = xmmword_1D1672AB0;
      goto LABEL_51;
    case 26:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x65676E657A6F6CLL;
      *(v4 + 40) = 0xE700000000000000;
      v3 = xmmword_1D1672C50;
      goto LABEL_51;
    case 27:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 7173479;
      *(v4 + 40) = 0xE300000000000000;
      v3 = xmmword_1D1672CC0;
      goto LABEL_51;
    case 28:
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D16721B0;
      *(v20 + 32) = 0x625F656C74746F62;
      *(v20 + 40) = 0xEB00000000657361;
      *(v20 + 48) = xmmword_1D1672B00;
      *(v20 + 64) = 0x6D5F656C74746F62;
      *(v20 + 72) = 0xEB000000006B7361;
      *&v3 = 0x656C74746F42;
      *(v20 + 80) = xmmword_1D1672C00;
      return *&v3;
    case 29:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "nostril_spray");
      *(v4 + 46) = -4864;
      v3 = xmmword_1D1672C70;
      goto LABEL_51;
    case 30:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 1818323318;
      *(v4 + 40) = 0xE400000000000000;
      v3 = xmmword_1D1672BD0;
      goto LABEL_51;
    case 31:
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D16721B0;
      strcpy((v10 + 32), "syringe_base");
      *(v10 + 45) = 0;
      *(v10 + 46) = -5120;
      *(v10 + 48) = xmmword_1D1672B00;
      strcpy((v10 + 64), "syringe_mask");
      *(v10 + 77) = 0;
      *(v10 + 78) = -5120;
      *&v3 = 0x65676E69727953;
      *(v10 + 80) = xmmword_1D1672BF0;
      return *&v3;
    case 32:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      strcpy((v4 + 32), "injectable_pen");
      *(v4 + 47) = -18;
      v3 = xmmword_1D1672CB0;
      goto LABEL_51;
    case 33:
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D16721B0;
      *(v7 + 32) = 0x70706F7244657965;
      *(v7 + 40) = 0xEF657361625F7265;
      *(v7 + 48) = xmmword_1D1672B00;
      *(v7 + 64) = 0x70706F7244657965;
      *(v7 + 72) = 0xEF6B73616D5F7265;
      *&v3 = 0x706F724420657945;
      *(v7 + 80) = xmmword_1D1672BC0;
      return *&v3;
    case 34:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x74656B636170;
      *(v4 + 40) = 0xE600000000000000;
      v3 = xmmword_1D1672B40;
      goto LABEL_51;
    case 35:
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D16721B0;
      strcpy((v6 + 32), "inhaler_base");
      *(v6 + 45) = 0;
      *(v6 + 46) = -5120;
      *(v6 + 48) = xmmword_1D1672B00;
      strcpy((v6 + 64), "inhaler_mask");
      *(v6 + 77) = 0;
      *(v6 + 78) = -5120;
      *&v3 = 0x72656C61686E49;
      *(v6 + 80) = xmmword_1D1672BA0;
      return *&v3;
    case 36:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 4478281;
      *(v4 + 40) = 0xE300000000000000;
      v3 = xmmword_1D1672B90;
      goto LABEL_51;
    case 37:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x726C616E69676176;
      *(v4 + 40) = 0xEB00000000676E69;
      v3 = xmmword_1D1672BE0;
      goto LABEL_51;
    case 38:
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D16721B0;
      *(v21 + 32) = 0x61625F6863746170;
      *(v21 + 40) = 0xEA00000000006573;
      *(v21 + 48) = xmmword_1D1672B00;
      *(v21 + 64) = 0x616D5F6863746170;
      *(v21 + 72) = 0xEA00000000006B73;
      *&v3 = 0x6863746150;
      *(v21 + 80) = xmmword_1D1672B50;
      return *&v3;
    case 39:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x74656C6C7562;
      *(v4 + 40) = 0xE600000000000000;
      v3 = xmmword_1D1672CD0;
      goto LABEL_51;
    case 40:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 1886351972;
      *(v4 + 40) = 0xE400000000000000;
      v3 = xmmword_1D1672C30;
      goto LABEL_51;
    case 41:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 1835102054;
      *(v4 + 40) = 0xE400000000000000;
      v3 = xmmword_1D1672BB0;
      goto LABEL_51;
    case 42:
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D16721B0;
      *(v18 + 32) = 0x61625F6E6F6F7073;
      *(v18 + 40) = 0xEA00000000006573;
      *(v18 + 48) = xmmword_1D1672B00;
      *(v18 + 64) = 0x616D5F6E6F6F7073;
      *(v18 + 72) = 0xEA00000000006B73;
      *&v3 = 0x6E6F6F7053;
      *(v18 + 80) = xmmword_1D1672B20;
      return *&v3;
    case 43:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0xD000000000000010;
      *(v4 + 40) = 0x80000001D1677080;
      v3 = xmmword_1D1672C40;
      goto LABEL_51;
    case 44:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x657A696C7562656ELL;
      *(v4 + 40) = 0xEF656B6F6D735F72;
      v3 = xmmword_1D1672B60;
      goto LABEL_51;
    case 45:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D16721D0;
      *(v4 + 32) = 0x73656C62627562;
      *(v4 + 40) = 0xE700000000000000;
      v3 = xmmword_1D1672CE0;
LABEL_51:
      *(v4 + 48) = v3;
      break;
    case 46:
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D16721B0;
      *(v22 + 32) = 0x657361625F64696CLL;
      *(v22 + 40) = 0xE800000000000000;
      *(v22 + 48) = xmmword_1D1672B00;
      *(v22 + 64) = 0x6B73616D5F64696CLL;
      *(v22 + 72) = 0xE800000000000000;
      *&v3 = 6580556;
      *(v22 + 80) = xmmword_1D1672CA0;
      break;
    case 47:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D16721B0;
      *(v5 + 32) = 0x657361625F616574;
      *(v5 + 40) = 0xE800000000000000;
      *(v5 + 48) = xmmword_1D1672B00;
      *(v5 + 64) = 0x6B73616D5F616574;
      *(v5 + 72) = 0xE800000000000000;
      *&v3 = 6382932;
      *(v5 + 80) = xmmword_1D1672C60;
      break;
    default:
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D16721B0;
      strcpy((v2 + 32), "capsule_left");
      *(v2 + 45) = 0;
      *(v2 + 46) = -5120;
      *(v2 + 48) = xmmword_1D1672C10;
      strcpy((v2 + 64), "capsule_right");
      *(v2 + 78) = -4864;
      *&v3 = 0x6953207468676952;
      *(v2 + 80) = xmmword_1D1672C20;
      break;
  }

  return *&v3;
}

HealthMedicationsExperience::MedicationShape_optional __swiftcall MedicationShape.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D16705F4();

  v5 = 0;
  v6 = 30;
  switch(v3)
  {
    case 0:
      goto LABEL_47;
    case 1:
      v5 = 1;
      goto LABEL_47;
    case 2:
      v5 = 2;
      goto LABEL_47;
    case 3:
      v5 = 3;
      goto LABEL_47;
    case 4:
      v5 = 4;
      goto LABEL_47;
    case 5:
      v5 = 5;
      goto LABEL_47;
    case 6:
      v5 = 6;
      goto LABEL_47;
    case 7:
      v5 = 7;
      goto LABEL_47;
    case 8:
      v5 = 8;
      goto LABEL_47;
    case 9:
      v5 = 9;
      goto LABEL_47;
    case 10:
      v5 = 10;
      goto LABEL_47;
    case 11:
      v5 = 11;
      goto LABEL_47;
    case 12:
      v5 = 12;
      goto LABEL_47;
    case 13:
      v5 = 13;
      goto LABEL_47;
    case 14:
      v5 = 14;
      goto LABEL_47;
    case 15:
      v5 = 15;
      goto LABEL_47;
    case 16:
      v5 = 16;
      goto LABEL_47;
    case 17:
      v5 = 17;
      goto LABEL_47;
    case 18:
      v5 = 18;
      goto LABEL_47;
    case 19:
      v5 = 19;
      goto LABEL_47;
    case 20:
      v5 = 20;
      goto LABEL_47;
    case 21:
      v5 = 21;
      goto LABEL_47;
    case 22:
      v5 = 22;
      goto LABEL_47;
    case 23:
      v5 = 23;
      goto LABEL_47;
    case 24:
      v5 = 24;
      goto LABEL_47;
    case 25:
      v5 = 25;
      goto LABEL_47;
    case 26:
      v5 = 26;
      goto LABEL_47;
    case 27:
      v5 = 27;
      goto LABEL_47;
    case 28:
      v5 = 28;
      goto LABEL_47;
    case 29:
      v5 = 29;
LABEL_47:
      v6 = v5;
      break;
    case 30:
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    default:
      v6 = 48;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t MedicationShape.rawValue.getter()
{
  result = 0x656C7573706163;
  switch(*v0)
  {
    case 1:
      v2 = 0x656C63726963;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6950000000000000;
    case 2:
      return 0x6C6C69506C61766FLL;
    case 3:
      v2 = 0x676E6F6C626FLL;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6950000000000000;
    case 4:
      return 0x74746F426C6C6970;
    case 5:
      return 7496042;
    case 6:
      return 0x754364697571696CLL;
    case 7:
      return 1700951412;
    case 8:
      return 0x53646E6F6D616964;
    case 9:
      return 0xD000000000000015;
    case 0xA:
      return 0x656C676E61697274;
    case 0xB:
      return 0x726165546C6C6970;
    case 0xC:
      v2 = 0x657261757173;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6950000000000000;
    case 0xD:
      return 0x6F4C657261757173;
    case 0xE:
      return 0x696F7A6570617274;
    case 0xF:
      return 0x6E6F6761746E6570;
    case 0x10:
      v3 = 1635280232;
      return v3 | 0x506E6F6700000000;
    case 0x11:
      return 0x61786548676E6F6CLL;
    case 0x12:
      v3 = 1635017583;
      return v3 | 0x506E6F6700000000;
    case 0x13:
      return 0x6174634F676E6F6CLL;
    case 0x14:
      v2 = 0x646C65696873;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6950000000000000;
    case 0x15:
      return 0x6C6C695064;
    case 0x16:
      v4 = 0x506E776F4464;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6C69000000000000;
    case 0x17:
      return 0x6B6361506C6C6970;
    case 0x18:
      v4 = 0x507472616568;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6C69000000000000;
    case 0x19:
      return 0xD000000000000010;
    case 0x1A:
      v5 = 1702522732;
      goto LABEL_53;
    case 0x1B:
      return 7173479;
    case 0x1C:
      return 0x656C74746F62;
    case 0x1D:
      return 0x7961727073;
    case 0x1E:
      return 1818323318;
    case 0x1F:
      v5 = 1769109875;
LABEL_53:
      result = v5 | 0x65676E00000000;
      break;
    case 0x20:
      result = 0x62617463656A6E69;
      break;
    case 0x21:
      result = 0x70706F7244657965;
      break;
    case 0x22:
      result = 0x74656B636170;
      break;
    case 0x23:
      result = 0x72656C61686E69;
      break;
    case 0x24:
      result = 6583657;
      break;
    case 0x25:
      result = 0x526C616E69676176;
      break;
    case 0x26:
      result = 0x6863746170;
      break;
    case 0x27:
      result = 0x74656C6C7562;
      break;
    case 0x28:
      result = 1886351972;
      break;
    case 0x29:
      result = 1835102054;
      break;
    case 0x2A:
      result = 0x6E6F6F7073;
      break;
    case 0x2B:
      result = 0x656666456C61726FLL;
      break;
    case 0x2C:
      result = 0x657A696C7562656ELL;
      break;
    case 0x2D:
      result = 0x73656C62627562;
      break;
    case 0x2E:
      result = 6580588;
      break;
    case 0x2F:
      result = 6382964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D160B2F8()
{
  v0 = MedicationShape.rawValue.getter();
  v2 = v1;
  if (v0 == MedicationShape.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D16705D4();
  }

  return v5 & 1;
}

unint64_t sub_1D160B398()
{
  result = qword_1EC63DBA0;
  if (!qword_1EC63DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DBA0);
  }

  return result;
}

uint64_t sub_1D160B3EC()
{
  sub_1D16706A4();
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  return sub_1D16706E4();
}

uint64_t sub_1D160B454(uint64_t a1)
{
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();
}

uint64_t sub_1D160B4B8(uint64_t a1)
{
  sub_1D16706A4();
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  return sub_1D16706E4();
}

uint64_t sub_1D160B528@<X0>(uint64_t *a1@<X8>)
{
  result = MedicationShape.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D160B554()
{
  result = qword_1EC63DBA8;
  if (!qword_1EC63DBA8)
  {
    sub_1D160B5D0(255, &qword_1EC63DBB0, &type metadata for MedicationShape, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DBA8);
  }

  return result;
}

void sub_1D160B5D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MedicationShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD1)
  {
    goto LABEL_17;
  }

  if (a2 + 47 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 47) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 47;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 47;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 47;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v8 = v6 - 48;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicationShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD1)
  {
    v4 = 0;
  }

  if (a2 > 0xD0)
  {
    v5 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 47;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t _s27HealthMedicationsExperience21SearchItemDisplayablePAAE21primaryTextAttributesSDySo21NSAttributedStringKeyaypGvg_0()
{
  sub_1D160BA74(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D16721B0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = sub_1D15EE5A8(0, &unk_1EDEC9DA8, 0x1E69DB878);
  v3 = v1;
  *(inited + 40) = sub_1D1670064();
  v4 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 labelColor];
  *(inited + 104) = sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
  *(inited + 80) = v7;
  v8 = sub_1D162B47C(inited);
  swift_setDeallocating();
  sub_1D160BACC(0);
  swift_arrayDestroy();
  return v8;
}

unint64_t _s27HealthMedicationsExperience21SearchItemDisplayablePAAE23secondaryTextAttributesSDySo21NSAttributedStringKeyaypGvg_0()
{
  sub_1D160BA74(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D16721B0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDD80];
  v4 = v1;
  v5 = [v2 preferredFontForTextStyle_];
  v6 = sub_1D15EE5A8(0, &unk_1EDEC9DA8, 0x1E69DB878);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 labelColor];
  *(inited + 104) = sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
  *(inited + 80) = v10;
  v11 = sub_1D162B47C(inited);
  swift_setDeallocating();
  sub_1D160BACC(0);
  swift_arrayDestroy();
  return v11;
}

void sub_1D160BA74(uint64_t a1)
{
  if (!qword_1EDEC9D40)
  {
    sub_1D160BACC(255);
    v1 = sub_1D16705A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEC9D40);
    }
  }
}

void sub_1D160BACC(uint64_t a1)
{
  if (!qword_1EDEC9DF0)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC9DF0);
    }
  }
}

void *sub_1D160BB38(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_29:
    v4 = sub_1D1670224();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      result = MEMORY[0x1E69E7CC0];
      v8 = &property descriptor for MedicationView.config;
      v31 = v2;
      v32 = v2 & 0xC000000000000001;
      while (1)
      {
        v30 = result;
        for (i = v5; ; ++i)
        {
          if (v6)
          {
            v10 = MEMORY[0x1D388D4D0](i, v2);
          }

          else
          {
            if (i >= *(v3 + 16))
            {
              goto LABEL_28;
            }

            v10 = *(v2 + 8 * i + 32);
          }

          v11 = v10;
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          if (![v10 v8[259]])
          {
            v12 = [v11 medicationIdentifier];
            if (v12)
            {
              break;
            }
          }

LABEL_6:
          if (v5 == v4)
          {
            return v30;
          }
        }

        v13 = v12;
        v14 = sub_1D166FA04();
        v16 = v15;

        v17 = *a2;
        if (!*(*a2 + 16))
        {
          break;
        }

        v18 = v4;
        v19 = v3;
        v20 = sub_1D16061DC(v14, v16);
        v22 = v21;

        if ((v22 & 1) == 0)
        {

          v3 = v19;
          v4 = v18;
          v2 = v31;
LABEL_17:
          v6 = v32;
          v8 = &property descriptor for MedicationView.config;
          goto LABEL_6;
        }

        v23 = *(*(v17 + 56) + 8 * v20);
        v24 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D15ECD54(0, v30[2] + 1, 1, v30);
        }

        v26 = v24[2];
        v25 = v24[3];
        v27 = v24;
        v3 = v19;
        if (v26 >= v25 >> 1)
        {
          v27 = sub_1D15ECD54((v25 > 1), v26 + 1, 1, v27);
        }

        v4 = v18;
        result = v27;
        v27[2] = v26 + 1;
        v28 = &v27[2 * v26];
        v28[4] = v23;
        v28[5] = v11;
        v29 = v5 == v18;
        v2 = v31;
        v6 = v32;
        v8 = &property descriptor for MedicationView.config;
        if (v29)
        {
          return result;
        }
      }

      goto LABEL_17;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t RemoteScheduleUnavailableAlertDeterminer.Status.allRecords.getter()
{
  v3 = *v0;

  sub_1D15F726C(v1);
  return v3;
}

uint64_t RemoteScheduleUnavailableAlertDeterminer.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RemoteScheduleUnavailableAlertDeterminer.init(medications:schedules:dismissedRecords:accountDevicesInfo:pairedDevice:interactionControl:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  a7[6] = a5;
  sub_1D160BF60(a6, (a7 + 7));
  v14 = a5;

  v15 = a4;
  v16 = sub_1D160ECC0(a1, a2);

  v17 = sub_1D160EF5C(v16, v15);
  v18 = sub_1D160F080(v17, v15);

  v19 = [v15 localDeviceInfo];
  v20 = sub_1D160F214(v18, a3, v19, a5);

  v21 = sub_1D160F4DC(v16, a3, v15);

  result = __swift_destroy_boxed_opaque_existential_0(a6);
  *a7 = v20;
  a7[1] = v21;
  return result;
}

uint64_t sub_1D160BF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t RemoteScheduleUnavailableAlertDeterminer.saveRecords(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_0(v2 + 7, v5);
  v9 = *v2;

  sub_1D15F726C(v7);
  (*(v6 + 8))(v9, a1, a2, v5, v6);
}

uint64_t sub_1D160C09C()
{
  v1 = v0[2];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v2);
  v8 = *v1;

  sub_1D15F726C(v4);
  v0[3] = v8;
  v7 = (*(v3 + 16) + **(v3 + 16));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D160C1F8;

  return v7(v8, v2, v3);
}

uint64_t sub_1D160C1F8(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D160C350, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_1D160C350()
{

  v1 = *(v0 + 8);

  return v1(0);
}

BOOL sub_1D160C3B8(uint64_t a1, id a2)
{
  v2 = *(a1 + 8);
  v3 = [a2 medicationFeatureDevicesInfo];
  sub_1D160FC34();
  v4 = sub_1D166FC54();

  if (v4 >> 62)
  {
LABEL_15:
    v5 = sub_1D1670224();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D388D4D0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = [v8 isCompatibleWithSchedule_];

    v6 = v7 + 1;
  }

  while ((v10 & 1) != 0);

  return v5 != v7;
}

BOOL sub_1D160C4F0(id *a1, uint64_t *a2, unint64_t a3, void *a4)
{
  v5 = v4;
  sub_1D160FC80(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v59 - v13;
  v67 = sub_1D166F1A4();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a1;
  v15 = [v64 medication];
  v16 = [v15 semanticIdentifier];

  v17 = [v16 stringValue];
  v18 = sub_1D166FA04();
  v20 = v19;

  v21 = *a2;
  if (!*(*a2 + 16))
  {

    return 1;
  }

  v22 = sub_1D16061DC(v18, v20);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    return 1;
  }

  v25 = *(*(v21 + 56) + 8 * v22);
  v26 = v64;
  v27 = [v64 schedule];
  v28 = [v27 scheduleType];

  if (v28 == [v25 scheduleType])
  {
    v29 = [v26 devices];
    sub_1D160FC34();
    v30 = sub_1D166FC54();

    if (v30 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1670224())
    {
      v32 = v66;
      v62 = v5;
      v63 = v25;
      v60 = a3;
      v61 = a4;
      if (!i)
      {
        break;
      }

      v33 = 0;
      v71 = v30 & 0xFFFFFFFFFFFFFF8;
      v72 = v30 & 0xC000000000000001;
      v34 = (v65 + 48);
      v68 = (v65 + 32);
      v69 = (v65 + 56);
      v25 = MEMORY[0x1E69E7CC0];
      v5 = v67;
      v70 = i;
      while (1)
      {
        if (v72)
        {
          v35 = MEMORY[0x1D388D4D0](v33, v30);
        }

        else
        {
          if (v33 >= *(v71 + 16))
          {
            goto LABEL_33;
          }

          v35 = *(v30 + 8 * v33 + 32);
        }

        v36 = v35;
        a4 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          break;
        }

        a3 = v30;
        v37 = [v35 hardwareIdentifier];
        v38 = v32;
        if (v37)
        {
          v39 = v37;
          sub_1D166F194();

          v40 = 0;
        }

        else
        {
          v40 = 1;
        }

        (*v69)(v38, v40, 1, v5);
        v41 = v74;
        sub_1D160FCD8(v38, v74);
        if ((*v34)(v41, 1, v5) == 1)
        {
          v32 = v38;
          sub_1D160FE50(v41, sub_1D160FC80);
          v30 = a3;
        }

        else
        {
          v42 = *v68;
          (*v68)(v73, v41, v5);
          v30 = a3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1D15ECE8C(0, v25[2] + 1, 1, v25);
          }

          v44 = v25[2];
          v43 = v25[3];
          if (v44 >= v43 >> 1)
          {
            v25 = sub_1D15ECE8C((v43 > 1), v44 + 1, 1, v25);
          }

          v25[2] = v44 + 1;
          v45 = v25 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v44;
          v5 = v67;
          v42(v45, v73, v67);
          v32 = v66;
        }

        ++v33;
        if (a4 == v70)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_28:

    v47 = sub_1D163A878(v25);

    v48 = [v63 deviceIdentifiers];
    v49 = sub_1D166FC54();

    v50 = sub_1D163A878(v49);

    if (*(v50 + 16) <= *(v47 + 16) >> 3)
    {
      v75 = v47;
      sub_1D160D30C(v50);

      v51 = v75;
    }

    else
    {
      v51 = sub_1D160D524(v50, v47);
    }

    v52 = v61;
    v53 = v60;
    v54 = v61;
    v55 = v64;
    v56 = v53;
    v57 = sub_1D160E6E8(v51, v55, v56, v52);

    v58 = *(v57 + 16);

    return v58 != 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1D160CAE0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v63 = a4;
  v64 = a3;
  v6 = sub_1D166F1A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D160FD88(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D160FC80(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  v21 = sub_1D166F184();
  v61 = a2;
  v22 = [a2 deviceForIdentifier_];

  if (!v22)
  {
    return 0;
  }

  v60 = v22;
  (*(v7 + 16))(v20, a1, v6);
  v23 = *(v7 + 56);
  v24 = 1;
  v23(v20, 0, 1, v6);
  v25 = [v64 hardwareIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_1D166F194();

    v24 = 0;
  }

  v23(v18, v24, 1, v6);
  v27 = *(v10 + 48);
  sub_1D160FDEC(v20, v12);
  sub_1D160FDEC(v18, &v12[v27]);
  v28 = *(v7 + 48);
  if (v28(v12, 1, v6) == 1)
  {
    sub_1D160FE50(v18, sub_1D160FC80);
    sub_1D160FE50(v20, sub_1D160FC80);
    v29 = v28(&v12[v27], 1, v6);
    v30 = v60;
    if (v29 == 1)
    {
      sub_1D160FE50(v12, sub_1D160FC80);
LABEL_23:

      return 0;
    }

    goto LABEL_10;
  }

  v32 = v62;
  sub_1D160FDEC(v12, v62);
  if (v28(&v12[v27], 1, v6) == 1)
  {
    sub_1D160FE50(v18, sub_1D160FC80);
    sub_1D160FE50(v20, sub_1D160FC80);
    (*(v7 + 8))(v32, v6);
    v30 = v60;
LABEL_10:
    sub_1D160FE50(v12, sub_1D160FD88);
    goto LABEL_11;
  }

  v42 = &v12[v27];
  v43 = v59;
  (*(v7 + 32))(v59, v42, v6);
  sub_1D160FD44(&qword_1EC63DAD0, MEMORY[0x1E69695C8]);
  v44 = v32;
  v45 = sub_1D166F9B4();
  v46 = *(v7 + 8);
  v46(v43, v6);
  sub_1D160FE50(v18, sub_1D160FC80);
  sub_1D160FE50(v20, sub_1D160FC80);
  v46(v44, v6);
  sub_1D160FE50(v12, sub_1D160FC80);
  v30 = v60;
  if (v45)
  {
    goto LABEL_23;
  }

LABEL_11:
  v33 = [v30 name];
  v34 = sub_1D166FA04();
  v36 = v35;

  v37 = v63;
  if (v63)
  {
    v38 = [v63 name];
    v39 = sub_1D166FA04();
    v41 = v40;

    if (v34 == v39 && v36 == v41)
    {
    }

    else
    {
      v47 = sub_1D16705D4();

      if ((v47 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v48 = [v30 model];
    v49 = sub_1D166FA04();
    v51 = v50;

    v52 = [v37 model];
    v53 = sub_1D166FA04();
    v55 = v54;

    if (v49 == v53 && v51 == v55)
    {

      return 0;
    }

    v56 = sub_1D16705D4();

    if (v56)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_24:
  v57 = [v61 schedule];
  v58 = [v30 isCompatibleWithSchedule_];

  return v58 ^ 1;
}

uint64_t sub_1D160D144(uint64_t a1, unint64_t a2, SEL *a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_1D1670224();
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1D388D4D0](v7, a2);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_16;
          }

          v9 = *(a2 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v9 *a3])
        {
        }

        else
        {
          sub_1D1670374();
          sub_1D16703B4();
          sub_1D16703C4();
          sub_1D1670384();
          v8 = a2 & 0xFFFFFFFFFFFFFF8;
        }

        ++v7;
      }

      while (v11 != v6);
      v12 = v15;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
LABEL_22:
    sub_1D160FC34();

    v13 = sub_1D1670434();

    goto LABEL_21;
  }

LABEL_19:
  if ((v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_22;
  }

  sub_1D16705E4();
  sub_1D160FC34();
  v13 = v12;
LABEL_21:

  return v13;
}

uint64_t sub_1D160D30C(uint64_t a1)
{
  sub_1D160FC80(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D166F1A4();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1D160FE50(v5, sub_1D160FC80))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1D164A300(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D160D524(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  sub_1D160FC80(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v68 - v9);
  v11 = sub_1D166F1A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v88 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v68 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v83 = (&v68 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v69 = v10;
  v71 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v82 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v90 = (v22 & v19);
  v74 = (63 - v21) >> 6;
  v89 = v12 + 2;
  v79 = (v12 + 6);
  v80 = (v12 + 7);
  v78 = (v12 + 4);
  v85 = (a2 + 56);
  v91 = (v12 + 1);
  v81 = a1;

  v24 = 0;
  v70 = v12;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v90;
    v26 = v24;
    if (v90)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v81;
      v31 = *(v81 + 48) + v12[9] * (__clz(__rbit64(v25)) | (v26 << 6));
      v32 = v12[2];
      v33 = v69;
      v32(v69, v31, v11);
      v34 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v74 <= (v24 + 1) ? v24 + 1 : v74;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v74)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v34 = 1;
      v33 = v69;
      v30 = v81;
    }

    v76 = *v80;
    v76(v33, v34, 1, v11);
    v92 = v30;
    v93 = v20;
    v94 = v82;
    v95 = v28;
    v96 = v2;
    v75 = *v79;
    if (v75(v33, 1, v11) == 1)
    {
      sub_1D160FE50(v33, sub_1D160FC80);
      v62 = v30;
      goto LABEL_53;
    }

    v73 = *v78;
    v73(v83, v33, v11);
    v72 = sub_1D160FD44(&qword_1EC63DBC8, MEMORY[0x1E69695B8]);
    v35 = sub_1D166F974();
    v36 = -1 << *(a2 + 32);
    v24 = v35 & ~v36;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) != 0)
    {
      break;
    }

    v12 = v70;
    (*v91)(v83, v11);
LABEL_22:
    v24 = v28;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = v70[9];
  v86 = v70[2];
  v87 = v37;
  while (1)
  {
    v86(v17, *(a2 + 48) + v87 * v24, v11);
    v38 = sub_1D160FD44(&qword_1EC63DAD0, MEMORY[0x1E69695C8]);
    v39 = sub_1D166F9B4();
    v90 = *v91;
    v90(v17, v11);
    if (v39)
    {
      break;
    }

    v24 = (v24 + 1) & v84;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) == 0)
    {
      v12 = v70;
      v90(v83, v11);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v11);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v23 = 8 * v68;
  v12 = v81;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v69 = &v68;
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v26] & ~v20;
    v45 = *(a2 + 16);
    v83 = v43;
    *&v43[8 * v26] = v44;
    v46 = v45 - 1;
    v24 = v71;
    v47 = i;
    v48 = v74;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v28;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v24, v12[6] + (v52 | (v49 << 6)) * v87, v11);
      v53 = 0;
LABEL_39:
      v76(v24, v53, 1, v11);
      v92 = v12;
      v93 = v47;
      v94 = v82;
      v95 = v28;
      v96 = v2;
      if (v75(v24, 1, v11) == 1)
      {
        sub_1D160FE50(v24, sub_1D160FC80);
        a2 = sub_1D165D610(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v73(v88, v24, v11);
      v54 = sub_1D166F974();
      v55 = a2;
      v56 = -1 << *(a2 + 32);
      v57 = v54 & ~v56;
      v26 = v57 >> 6;
      v20 = 1 << v57;
      if (((1 << v57) & v85[v57 >> 6]) != 0)
      {
        v86(v17, *(v55 + 48) + v57 * v87, v11);
        v58 = sub_1D166F9B4();
        v90(v17, v11);
        if ((v58 & 1) == 0)
        {
          v59 = ~v56;
          do
          {
            v57 = (v57 + 1) & v59;
            v26 = v57 >> 6;
            v20 = 1 << v57;
            if (((1 << v57) & v85[v57 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v17, *(v55 + 48) + v57 * v87, v11);
            v60 = sub_1D166F9B4();
            v90(v17, v11);
          }

          while ((v60 & 1) == 0);
        }

        v90(v88, v11);
        v61 = v83[v26];
        v83[v26] = v61 & ~v20;
        a2 = v55;
        v12 = v81;
        v24 = v71;
        v47 = i;
        v48 = v74;
        if ((v61 & v20) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v11);
        a2 = v55;
        v12 = v81;
        v24 = v71;
        v47 = i;
        v48 = v74;
      }
    }

    if (v48 <= (v28 + 1))
    {
      v50 = v28 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v28 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v28;
      if (v2)
      {
        v28 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v64 = v23;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_1D160E240(v67, v68, v83, v24, &v92);

  MEMORY[0x1D388E250](v67, -1, -1);
LABEL_52:
  v62 = v92;
LABEL_53:
  sub_1D160FD3C(v62);
  return a2;
}

void *sub_1D160DF68(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v46 = a6;
  v47 = a3;
  v11 = sub_1D166F1A4();
  v45 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v42 = result;
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v36 = a2;
    v37 = a1;
    v15 = v47 + 56;
    v16 = 1 << *(v47 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v47 + 56);
    v19 = (v16 + 63) >> 6;
    v40 = v45 + 16;
    v41 = (v45 + 8);
    v44 = a4;
    v43 = a5;
    result = v46;
    v38 = result;
    v39 = 0;
    v20 = 0;
    while (v18)
    {
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_14:
      v24 = v21 | (v20 << 6);
      v25 = v42;
      (*(v45 + 16))(v14, *(v47 + 48) + *(v45 + 72) * v24, v42);
      v26 = sub_1D160CAE0(v14, v44, v43, v46);
      if (v6)
      {
        (*v41)(v14, v25);
        v33 = v38;

        v34 = v43;
        v29 = v44;

        return v29;
      }

      v27 = v26;
      result = (*v41)(v14, v25);
      if (v27)
      {
        *(v37 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
LABEL_19:
          v29 = sub_1D165D610(v37, v36, v39, v47);
          v30 = v38;

          v31 = v43;
          v32 = v44;

          return v29;
        }
      }
    }

    v22 = v20;
    while (1)
    {
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        goto LABEL_19;
      }

      v23 = *(v15 + 8 * v20);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v18 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D160E240(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  sub_1D160FC80(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D166F1A4();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1D160FE50(v11, sub_1D160FC80);
          v45 = v61;

          return sub_1D165D610(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1D160FD44(&qword_1EC63DBC8, MEMORY[0x1E69695B8]);
        v35 = sub_1D166F974();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1D160FD44(&qword_1EC63DAD0, MEMORY[0x1E69695C8]);
        v43 = sub_1D166F9B4();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D160E6E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v53 = *MEMORY[0x1E69E9840];
  v10 = sub_1D166F1A4();
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a4;
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = a4;
  v43 = v15;
  v50 = a3;
  v51 = a2;
  v40 = v13;
  if (v12 > 0xD)
  {
    goto LABEL_22;
  }

  v16 = v4;
  v13 = v10;
  v17 = a2;
  for (i = a3; ; i = )
  {
    v42 = &v40;
    MEMORY[0x1EEE9AC00](i);
    v41 = &v40 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v14);
    a2 = 0;
    v49 = a1;
    v19 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    a1 = v21 & *(a1 + 56);
    a3 = ((v20 + 63) >> 6);
    v44 = 0;
    v45 = v52 + 16;
    v46 = (v52 + 8);
    while (a1)
    {
      v22 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
LABEL_13:
      v10 = v22 | (a2 << 6);
      v5 = v13;
      v25 = v47;
      (*(v52 + 16))(v47);
      v26 = sub_1D160CAE0(v25, v51, v50, v48);
      if (v16)
      {
        (*v46)(v25, v5);

        swift_willThrow();

        v29 = v43;
        goto LABEL_19;
      }

      v14 = v26;
      v16 = 0;
      v27 = v25;
      v13 = v5;
      v15 = (*v46)(v27, v5);
      if (v14)
      {
        *&v41[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_18:
          v25 = sub_1D165D610(v41, v40, v44, v49);

          v29 = v43;
          goto LABEL_19;
        }
      }
    }

    v23 = a2;
    while (1)
    {
      a2 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (a2 >= a3)
      {
        goto LABEL_18;
      }

      v24 = *(v19 + 8 * a2);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        a1 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    v31 = a3;
    v32 = v15;

    v33 = a2;
    v34 = v31;
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }

    v16 = v5;
    v13 = v10;
  }

  v35 = v34;
  v36 = swift_slowAlloc();
  v37 = v33;
  v38 = v35;
  v39 = v32;
  v25 = sub_1D160DF68(v36, v13, a1, v37, v38, v48);

  MEMORY[0x1D388E250](v36, -1, -1);

  v29 = v32;
LABEL_19:

  return v25;
}

void *sub_1D160EB0C(unint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  v8 = a1;
  v21 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
  {
    v10 = 0;
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    v19 = v8 & 0xC000000000000001;
    v16 = a2;
    v17 = v8;
    while (1)
    {
      if (v19)
      {
        v11 = MEMORY[0x1D388D4D0](v10, v8);
      }

      else
      {
        if (v10 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v20 = v11;
      v14 = sub_1D160C4F0(&v20, a2, a3, a4);
      if (v4)
      {

        return a4;
      }

      if (v14)
      {
        sub_1D1670374();
        sub_1D16703B4();
        sub_1D16703C4();
        sub_1D1670384();
        a2 = v16;
        v8 = v17;
      }

      else
      {
      }

      ++v10;
      if (v13 == i)
      {
        a4 = v21;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return a4;
}

void *sub_1D160ECC0(unint64_t a1, unint64_t a2)
{
  v34 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
  {
    v5 = 0;
    v33 = a2;
    v6 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D388D4D0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v10 = *(a1 + 8 * v5 + 32);
      }

      v11 = v10;
      a2 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12 = [v10 semanticIdentifier];
      v13 = [v12 stringValue];

      v14 = sub_1D166FA04();
      v16 = v15;

      v17 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_1D16061DC(v14, v16);
      v21 = v6[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_23;
      }

      v25 = v20;
      if (v6[3] < v24)
      {
        sub_1D1606ED4(v24, isUniquelyReferenced_nonNull_native);
        v19 = sub_1D16061DC(v14, v16);
        if ((v25 & 1) != (v26 & 1))
        {
          result = sub_1D1670634();
          __break(1u);
          return result;
        }

LABEL_16:
        if (v25)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v30 = v19;
      sub_1D1648188();
      v19 = v30;
      if (v25)
      {
LABEL_4:
        v7 = v19;

        v8 = v6[7];
        v9 = *(v8 + 8 * v7);
        *(v8 + 8 * v7) = v17;

        goto LABEL_5;
      }

LABEL_17:
      v6[(v19 >> 6) + 8] |= 1 << v19;
      v27 = (v6[6] + 16 * v19);
      *v27 = v14;
      v27[1] = v16;
      *(v6[7] + 8 * v19) = v17;

      v28 = v6[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_24;
      }

      v6[2] = v29;
LABEL_5:
      ++v5;
      if (a2 == i)
      {
        v34 = v6;
        a2 = v33;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  v31 = sub_1D160BB38(a2, &v34);

  return v31;
}

uint64_t sub_1D160EF5C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = *v4;
    v13 = v12;
    v6 = v12;
    v7 = *(&v12 + 1);
    if (sub_1D160C3B8(&v13, a2))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D162302C(0, *(v5 + 16) + 1, 1);
        v5 = v14;
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D162302C((v9 > 1), v10 + 1, 1);
        v5 = v14;
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + 16 * v10 + 32) = v12;
    }

    else
    {
    }

    ++v4;
    --v2;
  }

  while (v2);
  return v5;
}

uint64_t sub_1D160F080(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D16703A4();
    v6 = (a1 + 40);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v9 = v7;
      v10 = [a2 remoteDevices];
      sub_1D160FC34();
      v11 = sub_1D166FC54();

      sub_1D160D144(v9, v11, &selRef_isCompatibleWithSchedule_);

      v12 = objc_allocWithZone(MEMORY[0x1E69A3B28]);
      v13 = v8;
      v14 = v9;
      v15 = sub_1D166FC44();

      [v12 initWithMedication:v13 schedule:v14 devices:v15];

      sub_1D1670374();
      sub_1D16703B4();
      sub_1D16703C4();
      sub_1D1670384();
      v6 += 2;
      --v3;
    }

    while (v3);
    return v16;
  }

  return result;
}

void *sub_1D160F214(unint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v5 = a2;
  v45 = MEMORY[0x1E69E7CC8];
  if (a2 >> 62)
  {
LABEL_27:
    v32 = a4;
    v33 = sub_1D1670224();
    a4 = v32;
    v7 = v33;
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_28:
    v34 = a4;
    v35 = a4;

    v36 = a3;
    v37 = sub_1D160EB0C(a1, &v45, v36, v34);

    return v37;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_3:
  v39 = a3;
  v40 = a1;
  v8 = 0;
  v44 = v5 & 0xC000000000000001;
  v41 = a4;
  v42 = v5 & 0xFFFFFFFFFFFFFF8;
  v9 = MEMORY[0x1E69E7CC8];
  v43 = v5;
  while (1)
  {
    if (v44)
    {
      v13 = MEMORY[0x1D388D4D0](v8, v5);
    }

    else
    {
      if (v8 >= *(v42 + 16))
      {
        goto LABEL_26;
      }

      v13 = *(v5 + 8 * v8 + 32);
    }

    v14 = v13;
    a1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v5 = v7;
    v15 = [v13 medicationIdentifier];
    v16 = sub_1D166FA04();
    v18 = v17;

    v19 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a3 = sub_1D16061DC(v16, v18);
    v22 = v9[2];
    v23 = (v21 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_24;
    }

    v25 = v21;
    if (v9[3] < v24)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v21)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D16481A4();
      if (v25)
      {
LABEL_4:

        v10 = v9[7];
        v11 = *(v10 + 8 * a3);
        *(v10 + 8 * a3) = v19;

        goto LABEL_5;
      }
    }

LABEL_18:
    v9[(a3 >> 6) + 8] |= 1 << a3;
    v28 = (v9[6] + 16 * a3);
    *v28 = v16;
    v28[1] = v18;
    *(v9[7] + 8 * a3) = v19;

    v29 = v9[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_25;
    }

    v9[2] = v31;
LABEL_5:
    ++v8;
    v7 = v5;
    v12 = a1 == v5;
    v5 = v43;
    if (v12)
    {
      v45 = v9;
      a1 = v40;
      a4 = v41;
      a3 = v39;
      goto LABEL_28;
    }
  }

  sub_1D1606EF0(v24, isUniquelyReferenced_nonNull_native);
  v26 = sub_1D16061DC(v16, v18);
  if ((v25 & 1) == (v27 & 1))
  {
    a3 = v26;
    if (v25)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  result = sub_1D1670634();
  __break(1u);
  return result;
}

unint64_t sub_1D160F4DC(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v72 = *v4;
      v10 = *v4;
      v11 = *(&v72 + 1);
      v12 = [v10 semanticIdentifier];
      v13 = [v12 stringValue];

      v14 = sub_1D166FA04();
      v16 = v15;

      v17 = v10;
      v18 = v11;
      v19 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v19;
      v20 = sub_1D16061DC(v14, v16);
      v22 = v19[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        break;
      }

      v26 = v21;
      if (v19[3] < v25)
      {
        sub_1D1606F0C(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_1D16061DC(v14, v16);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_47;
        }

LABEL_10:
        if (v26)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v31 = v20;
      sub_1D16481C0();
      v20 = v31;
      if (v26)
      {
LABEL_3:
        v6 = v20;

        isUniquelyReferenced_nonNull_native = v19;
        v7 = v19[7] + 16 * v6;
        v8 = *v7;
        v9 = *(v7 + 8);
        *v7 = v72;

        goto LABEL_4;
      }

LABEL_11:
      isUniquelyReferenced_nonNull_native = v19;
      v19[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (v19[6] + 16 * v20);
      *v28 = v14;
      v28[1] = v16;
      *(v19[7] + 16 * v20) = v72;

      v29 = v19[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_43;
      }

      v19[2] = v30;
LABEL_4:
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v32 = sub_1D1670224();
    if (!v32)
    {
      goto LABEL_45;
    }

LABEL_18:
    if (v32 >= 1)
    {
      v33 = 0;
      v34 = v3 & 0xC000000000000001;
      v69 = MEMORY[0x1E69E7CC0];
      v35 = &property descriptor for MedicationView.config;
      v73 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v34)
        {
          v36 = MEMORY[0x1D388D4D0](v33, v3);
        }

        else
        {
          v36 = *(v3 + 8 * v33 + 32);
        }

        v37 = v36;
        v38 = [v36 v35[193]];
        v39 = sub_1D166FA04();
        v41 = v40;

        if (*(isUniquelyReferenced_nonNull_native + 16))
        {
          v42 = sub_1D16061DC(v39, v41);
          v44 = v43;

          if (v44)
          {
            v45 = isUniquelyReferenced_nonNull_native;
            v46 = *(isUniquelyReferenced_nonNull_native + 56) + 16 * v42;
            v47 = *(v46 + 8);
            v48 = *v46;
            v49 = v47;
            v50 = v48;
            v51 = v49;
            v52 = [a3 remoteDevices];
            sub_1D160FC34();
            v53 = sub_1D166FC54();

            v54 = sub_1D160D144([v37 scheduleCompatibilityVersion], v53, &selRef_isCompatibleWithScheduleCompatibilityVersion_);

            if (v54 >> 62)
            {
              v55 = sub_1D1670224();
            }

            else
            {
              v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v56 = [a3 remoteDevices];
            v57 = sub_1D166FC54();

            v58 = sub_1D160D144(v51, v57, &selRef_isCompatibleWithSchedule_);

            if (v58 >> 62)
            {
              v59 = sub_1D1670224();

              if (!v55)
              {
                goto LABEL_33;
              }

LABEL_32:
              if (v59)
              {
                goto LABEL_33;
              }

              v60 = [a3 remoteDevices];
              v61 = sub_1D166FC54();

              sub_1D160D144(v51, v61, &selRef_isCompatibleWithSchedule_);

              v62 = objc_allocWithZone(MEMORY[0x1E69A3B28]);
              v63 = v50;
              v64 = v51;
              v65 = sub_1D166FC44();

              v66 = [v62 initWithMedication:v63 schedule:v64 devices:v65];

              v67 = v66;
              MEMORY[0x1D388CE10]();
              if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D166FC84();
              }

              sub_1D166FCC4();

              v69 = v74;
            }

            else
            {
              v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v55)
              {
                goto LABEL_32;
              }

LABEL_33:
            }

            v3 = a2;
            isUniquelyReferenced_nonNull_native = v45;
            v34 = v73;
            v35 = &property descriptor for MedicationView.config;
            goto LABEL_22;
          }
        }

        else
        {
        }

LABEL_22:
        if (v32 == ++v33)
        {

          return v69;
        }
      }
    }

    __break(1u);
LABEL_47:
    result = sub_1D1670634();
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
LABEL_16:
    v74 = MEMORY[0x1E69E7CC0];
    v3 = a2;
    if (a2 >> 62)
    {
      goto LABEL_44;
    }

    v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_18;
    }

LABEL_45:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D160FAF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D160FB38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D160FBA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D160FBE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D160FC34()
{
  result = qword_1EC63DBB8;
  if (!qword_1EC63DBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC63DBB8);
  }

  return result;
}

void sub_1D160FC80(uint64_t a1)
{
  if (!qword_1EC63DBC0)
  {
    sub_1D166F1A4();
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DBC0);
    }
  }
}

uint64_t sub_1D160FCD8(uint64_t a1, uint64_t a2)
{
  sub_1D160FC80(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D160FD44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D166F1A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D160FD88(uint64_t a1)
{
  if (!qword_1EC63DBD0)
  {
    sub_1D160FC80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DBD0);
    }
  }
}

uint64_t sub_1D160FDEC(uint64_t a1, uint64_t a2)
{
  sub_1D160FC80(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D160FE50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MedicationOntologyContentProvider.medicationsPublisher(with:)(uint64_t a1, uint64_t a2)
{
  v22 = *v2;
  sub_1D161029C(0);
  v6 = v5;
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1610318(0);
  v10 = v9;
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D16103AC(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D166FAF4() < 3)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D1614278(0, &qword_1EC63DBE0, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E62F8]);
    sub_1D166F6A4();
    sub_1D15F9218();
    sub_1D166F684();
    (*(v23 + 8))(v8, v6);
    sub_1D1610510(&qword_1EC63DC08, sub_1D1610318, MEMORY[0x1E695C0C8]);
    v20 = sub_1D166F754();
    (*(v24 + 8))(v12, v10);
  }

  else
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v19 = v22;
    v18[4] = v2;
    v18[5] = v19;
    sub_1D1610440(0);
    sub_1D1610510(&qword_1EC63DC00, sub_1D1610440, MEMORY[0x1E695BD60]);

    sub_1D166F6E4();
    sub_1D1610510(&qword_1EC63DC10, sub_1D16103AC, MEMORY[0x1E695C058]);
    v20 = sub_1D166F754();
    (*(v15 + 8))(v17, v14);
  }

  return v20;
}

void sub_1D161029C(uint64_t a1)
{
  if (!qword_1EC63DBD8)
  {
    sub_1D1614278(255, &qword_1EC63DBE0, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E62F8]);
    v1 = sub_1D166F694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DBD8);
    }
  }
}

void sub_1D1610318(uint64_t a1)
{
  if (!qword_1EC63DBE8)
  {
    sub_1D1614278(255, &qword_1EC63DBE0, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E62F8]);
    sub_1D15F9218();
    v1 = sub_1D16706F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DBE8);
    }
  }
}

void sub_1D16103AC(uint64_t a1)
{
  if (!qword_1EC63DBF0)
  {
    sub_1D1610440(255);
    sub_1D1610510(&qword_1EC63DC00, sub_1D1610440, MEMORY[0x1E695BD60]);
    v1 = sub_1D166F6F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DBF0);
    }
  }
}

void sub_1D1610440(uint64_t a1)
{
  if (!qword_1EC63DBF8)
  {
    type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(255);
    sub_1D1614278(255, &qword_1EC63DBE0, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E62F8]);
    sub_1D1610510(&qword_1EC63D990, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher, &protocol conformance descriptor for HKHealthStore.HKMedicationClusterPublisher);
    v1 = sub_1D166F594();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DBF8);
    }
  }
}

uint64_t sub_1D1610510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1610558@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v66 = a3;
  v68 = a2;
  v69 = a1;
  v77 = a5;
  v67 = type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(0);
  MEMORY[0x1EEE9AC00](v67);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1611CE8(0);
  v10 = *(v9 - 8);
  v73 = v9;
  v74 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1610440(0);
  v13 = *(v12 - 8);
  v75 = v12;
  v76 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D166F174();
  v15 = *(v78 - 8);
  v64 = *(v15 + 64);
  v16 = MEMORY[0x1EEE9AC00](v78);
  v63 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v59 - v18;
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor(0);
  v20 = Descriptor - 8;
  MEMORY[0x1EEE9AC00](Descriptor);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D166EF44();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  v81 = a2;
  sub_1D166EF24();
  sub_1D1601D38();
  v27 = MEMORY[0x1E69E6158];
  v28 = sub_1D1670114();
  (*(v24 + 8))(v26, v23);
  v80 = v28;
  v65 = MEMORY[0x1E69E62F8];
  sub_1D1614278(0, &qword_1EDECAE18, v27, MEMORY[0x1E69E62F8]);
  sub_1D160172C();
  v80 = sub_1D166F9A4();
  v81 = v29;
  v30 = sub_1D166FAB4();
  v61 = v30;
  v32 = v31;
  v60 = v31;
  v33 = *MEMORY[0x1E69A39B8];
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  v22[48] = 1;
  *(v22 + 8) = 0;
  v34 = v15;
  v35 = *(v15 + 56);
  v36 = v78;
  v35(&v22[*(v20 + 52)], 1, 1, v78);
  sub_1D166F8D4();
  *v22 = 2;
  *(v22 + 7) = v28;
  *(v22 + 1) = v33;
  v37 = v79;
  sub_1D166F154();
  v66 = v66[2];
  v38 = v66;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1D16702D4();

  v80 = 0xD000000000000014;
  v81 = 0x80000001D16770E0;
  MEMORY[0x1D388CCF0](v30, v32);
  v39 = v80;
  v40 = v81;
  sub_1D1611D94(v22, v8);
  v41 = &v8[*(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0) + 20)];
  *v41 = v39;
  *(v41 + 1) = v40;
  *&v8[*(v67 + 20)] = v38;
  v42 = v63;
  (*(v34 + 16))(v63, v37, v36);
  v43 = *(v34 + 80);
  v62 = v34;
  v44 = (v43 + 16) & ~v43;
  v45 = (v64 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v34 + 32))(v46 + v44, v42, v36);
  v47 = (v46 + v45);
  v48 = v61;
  v49 = v60;
  *v47 = v61;
  v47[1] = v49;
  v50 = v71;
  *(v46 + ((v45 + 23) & 0xFFFFFFFFFFFFFFF8)) = v71;
  sub_1D15F43AC(0);
  sub_1D1610510(&qword_1EC63D990, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher, &protocol conformance descriptor for HKHealthStore.HKMedicationClusterPublisher);
  v51 = v66;

  v52 = v70;
  sub_1D166F784();

  sub_1D1611ED0(v8, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher);
  v53 = swift_allocObject();
  v53[2] = v48;
  v53[3] = v49;
  v53[4] = v50;
  sub_1D1614278(0, &qword_1EC63DBE0, &type metadata for MedicationSearchCluster, v65);

  v55 = v72;
  v54 = v73;
  sub_1D166F584();

  (*(v74 + 8))(v52, v54);
  v56 = swift_allocObject();
  v56[2] = v48;
  v56[3] = v49;
  v56[4] = v69;
  v56[5] = v68;
  v56[6] = v50;

  v57 = v75;
  sub_1D166F584();

  (*(v76 + 8))(v55, v57);
  (*(v62 + 8))(v79, v78);
  return sub_1D1611ED0(v22, type metadata accessor for HKMedicationClusterQueryDescriptor);
}

uint64_t sub_1D1610CC4@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a6@<X8>)
{
  v10 = sub_1D166F174();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1D166F154();
  sub_1D166F104();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v17 = sub_1D166F4E4();
  __swift_project_value_buffer(v17, qword_1EDECB360);

  v18 = sub_1D166F4D4();
  v19 = sub_1D166FF34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136446722;
    v22 = sub_1D1670754();
    v24 = sub_1D15F7A30(v22, v23, &v27);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1D15F7A30(a3, a4, &v27);
    *(v20 + 22) = 2048;
    *(v20 + 24) = v16;
    _os_log_impl(&dword_1D15E6000, v18, v19, "[%{public}s] searching for [%s] took: %f", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v21, -1, -1);
    MEMORY[0x1D388E250](v20, -1, -1);
  }

  *a6 = v14;
}

void sub_1D1610F38(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v53 = a3;
  v54 = a4;
  v51 = a2;
  v49 = a5;
  v52 = sub_1D166F174();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F154();

  v7 = sub_1D1611F3C(v6);
  v47 = 0;

  v8 = v7 + 8;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7[8];
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v57 = v7;
  v58 = MEMORY[0x1E69E7CC0];
  v14 = &property descriptor for MedicationView.config;
  v55 = v12;
  v56 = v7 + 8;
LABEL_4:
  while (2)
  {
    if (v11)
    {
LABEL_9:
      v16 = *(v7[7] + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
      if (v16 >> 62)
      {
        v17 = sub_1D1670224();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 &= v11 - 1;
      if (!v17)
      {
        continue;
      }

      v63 = v16 & 0xC000000000000001;
      if ((v16 & 0xC000000000000001) != 0)
      {

        v19 = MEMORY[0x1D388D4D0](0, v16);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v18 = *(v16 + 32);

        v19 = v18;
      }

      v20 = v19;
      v21 = [v19 v14[210]];
      sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
      v22 = sub_1D166FC54();

      if (v22 >> 62)
      {
        v23 = sub_1D1670224();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v23)
      {

        v20 = 0;
      }

      v24 = 0;
      v59 = v16 & 0xFFFFFFFFFFFFFF8;
      v60 = v17;
      v61 = v20;
      v62 = v16;
      while (1)
      {
        if (v63)
        {
          v26 = MEMORY[0x1D388D4D0](v24, v16);
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v24 >= *(v59 + 16))
          {
            goto LABEL_63;
          }

          v26 = *(v16 + 8 * v24 + 32);
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_62;
          }
        }

        v28 = v26;
        v29 = [v28 v14[210]];
        v30 = sub_1D166FC54();

        v31 = v30 >> 62 ? sub_1D1670224() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v31)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_21;
        }

        if (!v20)
        {

          goto LABEL_49;
        }

        v32 = v20;
        v33 = v28;
        v34 = [v33 ingredientProducts];
        v35 = sub_1D166FC54();

        v36 = [v32 ingredientProducts];
        v37 = sub_1D166FC54();

        LOBYTE(v36) = sub_1D162059C(v35, v37);

        if ((v36 & 1) == 0)
        {
          v38 = v32;
LABEL_52:

          v45 = v33;
          v40 = v33;
LABEL_53:

          v14 = &property descriptor for MedicationView.config;
LABEL_54:

LABEL_55:
          v8 = v56;
          v7 = v57;
          v12 = v55;

          goto LABEL_4;
        }

        v38 = [v33 tradeNameProduct];
        v39 = [v32 tradeNameProduct];
        v40 = v39;
        if (v38)
        {
          if (!v39)
          {

            goto LABEL_52;
          }

          v41 = sub_1D16700A4();

          v14 = &property descriptor for MedicationView.config;
          if ((v41 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {

          if (v40)
          {
            v45 = v32;
            goto LABEL_53;
          }

          v14 = &property descriptor for MedicationView.config;
        }

LABEL_22:
        ++v24;
        v20 = v61;
        v16 = v62;
        if (v27 == v60)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1D15ED0A0(0, *(v58 + 2) + 1, 1, v58);
          }

          v12 = v55;
          v8 = v56;
          v43 = *(v58 + 2);
          v42 = *(v58 + 3);
          if (v43 >= v42 >> 1)
          {
            v58 = sub_1D15ED0A0((v42 > 1), v43 + 1, 1, v58);
          }

          v44 = v58;
          *(v58 + 2) = v43 + 1;
          *&v44[8 * v43 + 32] = v16;
          v7 = v57;
          goto LABEL_4;
        }
      }

LABEL_21:
      v25 = v20;

      if (v20)
      {

        v28 = 0;
        v20 = v61;
LABEL_49:

        v32 = v28;
        goto LABEL_55;
      }

      goto LABEL_22;
    }

    break;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v46 = v48;
      *v49 = v58;
      sub_1D16116F4(v46, v51, v53, v54, "[%{public}s] grouping for [%s] took: %f");
      (*(v50 + 8))(v46, v52);
      return;
    }

    v11 = v8[v15];
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t sub_1D1611514@<X0>(char **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v20 = a3;
  v21 = a6;
  v12 = sub_1D166F174();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1D166F154();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC8];
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  v22 = v16;
  swift_bridgeObjectRetain_n();

  sub_1D16140B4(&v22, a4, a5, sub_1D1611F30, v18);

  *a7 = v22;
  sub_1D16116F4(v15, a2, v20, v21, "[%{public}s] sorting for [%s] took: %f");
  return (*(v13 + 8))(v15, v12);
}

void sub_1D16116F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5, ...)
{
  v8 = sub_1D166F174();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F154();
  sub_1D166F104();
  v13 = v12;
  (*(v9 + 8))(v11, v8);
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v14 = sub_1D166F4E4();
  __swift_project_value_buffer(v14, qword_1EDECB360);

  v15 = sub_1D166F4D4();
  v16 = sub_1D166FF34();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136446722;
    v19 = sub_1D1670754();
    v21 = sub_1D15F7A30(v19, v20, &v23);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1D15F7A30(a2, a3, &v23);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v13;
    _os_log_impl(&dword_1D15E6000, v15, v16, a5, v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v18, -1, -1);
    MEMORY[0x1D388E250](v17, -1, -1);
  }
}

uint64_t sub_1D1611950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1614278(0, &qword_1EC63DC20, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E6EF0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  swift_beginAccess();
  v15 = *(a3 + 16);
  if (*(v15 + 16) && (v16 = sub_1D16061DC(a1, a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    swift_endAccess();
    v24 = a1;
    v25 = a2;
    v22 = a4;
    v23 = a5;
    sub_1D16141A8();
    sub_1D166F994();
    sub_1D16141FC();
    sub_1D166FE84();
    sub_1D166FEB4();
    v18 = sub_1D166FEA4();
    (*(v12 + 8))(v14, v11);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    sub_1D1608BA0(v18, a1, a2, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v22;
  }

  swift_endAccess();
  return v18;
}