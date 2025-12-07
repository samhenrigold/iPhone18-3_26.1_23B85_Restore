uint64_t sub_20DA88A1C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D40, &unk_20DD94230);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_20DD63FE4();
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
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
        v23 = *a5;
        v24 = a5[1];
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

            v27 = *(v24 + 8 * v28);
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
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_20D9D76EC(v11, &qword_27C843D40, &unk_20DD94230);
          v45 = v61;

          return sub_20D9F86AC(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_20DA893C4(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
        v35 = sub_20DD64E24();
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
        sub_20DA893C4(&qword_27C8434C0, MEMORY[0x277D15B60], MEMORY[0x277D15B70]);
        v43 = sub_20DD64E64();
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

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_20DA88EF0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_20DD63744();
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
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
        v23 = *a5;
        v24 = a5[1];
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

            v27 = *(v24 + 8 * v28);
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
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_20D9D76EC(v11, &unk_27C843A70, &qword_20DD94260);
          v45 = v61;

          return sub_20D9F8BD4(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_20DA893C4(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v35 = sub_20DD64E24();
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
        sub_20DA893C4(&qword_280E02288, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v43 = sub_20DD64E64();
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

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_20DA893C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DA8940C(uint64_t a1, uint64_t a2)
{

  return sub_20D9C3ED4(a1, a2);
}

uint64_t sub_20DA89464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20D9D7558(a3, v22 - v9, &qword_27C8443F0, &qword_20DD93820);
  v11 = sub_20DD65114();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20D9D76EC(v10, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20DD65094();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20DD64EF4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20DA89720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20D9D7558(a3, v22 - v9, &qword_27C8443F0, &qword_20DD93820);
  v11 = sub_20DD65114();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20D9D76EC(v10, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20DD65094();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20DD64EF4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_20DA899CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_20DA89A38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_20DA89B14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_20D9D7558(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_20DA89D04(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_20DA89C08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_20D9D7558(v4 + v8, a4, a2, a3);
}

uint64_t sub_20DA89C90(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_20DA89D04(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_20DA89D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DA89DCC()
{
  v1 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20DA89E10(char a1)
{
  v3 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_20DA8FD3C();
}

uint64_t (*sub_20DA89E64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20DA89EC8;
}

uint64_t sub_20DA89EC8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_20DA8FD3C();
  }

  return result;
}

uint64_t sub_20DA89EFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19[-v2];
  v4 = type metadata accessor for HFHomeActivityState(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  result = 0;
  v13 = *(v0 + v11);
  if (v13 != 2)
  {
    if (v13)
    {
      v14 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
      swift_beginAccess();
      sub_20D9D7558(v0 + v14, v3, &qword_27C844AF0, &qword_20DD96860);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_20D9D76EC(v3, &qword_27C844AF0, &qword_20DD96860);
        swift_storeEnumTagMultiPayload();
        v15 = HFHomeActivityState.title.getter();
        v16 = v8;
      }

      else
      {
        sub_20DA900E8(v3, v10, type metadata accessor for HFHomeActivityState);
        v15 = HFHomeActivityState.title.getter();
        v16 = v10;
      }

      sub_20DA90088(v16, type metadata accessor for HFHomeActivityState);
    }

    else
    {
      v17 = sub_20DD64E74();
      v18 = HFLocalizedString(v17);

      v15 = sub_20DD64EB4();
    }

    return v15;
  }

  return result;
}

uint64_t sub_20DA8A198()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-v5];
  v7 = type metadata accessor for HFHomeActivityState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    v13 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
    swift_beginAccess();
    sub_20D9D7558(v0 + v13, v6, &qword_27C844AF0, &qword_20DD96860);
    v14 = *(v8 + 48);
    if (v14(v6, 1, v7) == 1)
    {
      v15 = v6;
    }

    else
    {
      sub_20DA900E8(v6, v10, type metadata accessor for HFHomeActivityState);
      HFHomeActivityState.mainState.getter(v4);
      if (v14(v4, 1, v7) != 1)
      {
        v17 = HFHomeActivityState.symbolName.getter();
        sub_20DA90088(v10, type metadata accessor for HFHomeActivityState);
        sub_20DA90088(v4, type metadata accessor for HFHomeActivityState);
        return v17;
      }

      sub_20DA90088(v10, type metadata accessor for HFHomeActivityState);
      v15 = v4;
    }

    sub_20D9D76EC(v15, &qword_27C844AF0, &qword_20DD96860);
  }

  return 0;
}

uint64_t sub_20DA8A42C()
{
  v81 = sub_20DD63554();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_20DD63574();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v73 - v4;
  v5 = sub_20DD636C4();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HoldState(0);
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE0, &qword_20DD96878);
  MEMORY[0x28223BE20](v11);
  v89 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v85 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v84 = &v73 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v73 - v19;
  MEMORY[0x28223BE20](v18);
  v93 = &v73 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v73 - v22;
  v24 = type metadata accessor for HFHomeActivityState(0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v73 - v30;
  MEMORY[0x28223BE20](v29);
  v94 = &v73 - v32;
  v33 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v34 = 0;
  v35 = *(v0 + v33);
  if (v35 != 2)
  {
    if ((v35 & 1) == 0)
    {
      v40 = sub_20DD64E74();
      v41 = HFLocalizedString(v40);

      v34 = sub_20DD64EB4();
      return v34;
    }

    v36 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
    swift_beginAccess();
    sub_20D9D7558(v0 + v36, v23, &qword_27C844AF0, &qword_20DD96860);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v37 = &qword_27C844AF0;
      v38 = &qword_20DD96860;
      v39 = v23;
LABEL_5:
      sub_20D9D76EC(v39, v37, v38);
      return 0;
    }

    v43 = v94;
    sub_20DA900E8(v23, v94, type metadata accessor for HFHomeActivityState);
    v44 = OBJC_IVAR___HFActivityStateManager_holdState;
    swift_beginAccess();
    v45 = v93;
    sub_20D9D7558(v0 + v44, v93, &unk_27C844DD0, &unk_20DD96868);
    sub_20DA90020(v43, v31, type metadata accessor for HFHomeActivityState);
    if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFC) != 4)
    {
      sub_20DA90088(v31, type metadata accessor for HFHomeActivityState);
      v34 = HFHomeActivityState.transitionalStateETA.getter();
      sub_20D9D76EC(v45, &unk_27C844DD0, &unk_20DD96868);
      sub_20DA90088(v43, type metadata accessor for HFHomeActivityState);
      return v34;
    }

    sub_20DA90020(v43, v28, type metadata accessor for HFHomeActivityState);
    if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFC) != 4)
    {
      sub_20DA90088(v28, type metadata accessor for HFHomeActivityState);
      sub_20D9D76EC(v45, &unk_27C844DD0, &unk_20DD96868);
      sub_20DA90088(v43, type metadata accessor for HFHomeActivityState);
      return 0;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
    v73 = *(v46 - 8);
    v47 = *(v73 + 56);
    v48 = v92;
    v74 = v46;
    v47(v92, 1, 1);
    v49 = v90;
    v50 = v91;
    (*(v90 + 56))(v48, 0, 1, v91);
    v51 = *(v11 + 48);
    v52 = v89;
    sub_20D9D7558(v45, v89, &unk_27C844DD0, &unk_20DD96868);
    sub_20D9D7558(v48, v52 + v51, &unk_27C844DD0, &unk_20DD96868);
    v53 = *(v49 + 48);
    if (v53(v52, 1, v50) == 1)
    {
      sub_20D9D76EC(v48, &unk_27C844DD0, &unk_20DD96868);
      if (v53(v52 + v51, 1, v50) == 1)
      {
        sub_20D9D76EC(v52, &unk_27C844DD0, &unk_20DD96868);
LABEL_24:
        sub_20D9D76EC(v45, &unk_27C844DD0, &unk_20DD96868);
        sub_20DA90088(v43, type metadata accessor for HFHomeActivityState);
        return 0;
      }
    }

    else
    {
      v54 = v84;
      sub_20D9D7558(v52, v84, &unk_27C844DD0, &unk_20DD96868);
      if (v53(v52 + v51, 1, v50) != 1)
      {
        v61 = v52 + v51;
        v62 = v82;
        sub_20DA900E8(v61, v82, type metadata accessor for HoldState);
        v63 = _s4Home9HoldStateO2eeoiySbAC_ACtFZ_0(v54, v62);
        sub_20DA90088(v62, type metadata accessor for HoldState);
        sub_20D9D76EC(v92, &unk_27C844DD0, &unk_20DD96868);
        sub_20DA90088(v54, type metadata accessor for HoldState);
        sub_20D9D76EC(v52, &unk_27C844DD0, &unk_20DD96868);
        if (v63)
        {
          goto LABEL_24;
        }

LABEL_19:
        v55 = v85;
        sub_20D9D7558(v45, v85, &unk_27C844DD0, &unk_20DD96868);
        if (v53(v55, 1, v50) == 1)
        {
          sub_20D9D76EC(v45, &unk_27C844DD0, &unk_20DD96868);
          sub_20DA90088(v43, type metadata accessor for HFHomeActivityState);
          sub_20D9D76EC(v55, &unk_27C844DD0, &unk_20DD96868);
          v56 = v86;
          (*(v87 + 56))(v86, 1, 1, v88);
        }

        else
        {
          v57 = v83;
          sub_20DA90020(v55, v83, type metadata accessor for HoldState);
          v58 = (*(v73 + 48))(v57, 1, v74);
          v60 = v87;
          v59 = v88;
          v56 = v86;
          if (v58 == 1)
          {
            (*(v87 + 56))(v86, 1, 1, v88);
            sub_20DA90088(v57, type metadata accessor for HoldState);
          }

          else
          {
            (*(v87 + 32))(v86, v57, v88);
            (*(v60 + 56))(v56, 0, 1, v59);
          }

          sub_20DA90088(v55, type metadata accessor for HoldState);
          if ((*(v60 + 48))(v56, 1, v59) != 1)
          {
            v64 = v75;
            (*(v60 + 32))(v75, v56, v59);
            v65 = sub_20DD64E74();
            v66 = HFLocalizedString(v65);

            sub_20DD64EB4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_20DD93A70;
            v68 = v76;
            sub_20DD63564();
            v69 = v78;
            sub_20DD63544();
            v70 = sub_20DD636A4();
            v72 = v71;
            (*(v80 + 8))(v69, v81);
            (*(v77 + 8))(v68, v79);
            *(v67 + 56) = MEMORY[0x277D837D0];
            *(v67 + 64) = sub_20DA52BE8();
            *(v67 + 32) = v70;
            *(v67 + 40) = v72;
            v34 = sub_20DD64EC4();

            (*(v60 + 8))(v64, v59);
            sub_20D9D76EC(v93, &unk_27C844DD0, &unk_20DD96868);
            sub_20DA90088(v94, type metadata accessor for HFHomeActivityState);
            return v34;
          }

          sub_20D9D76EC(v45, &unk_27C844DD0, &unk_20DD96868);
          sub_20DA90088(v94, type metadata accessor for HFHomeActivityState);
        }

        v37 = &unk_27C843810;
        v38 = &qword_20DD93F00;
        v39 = v56;
        goto LABEL_5;
      }

      sub_20D9D76EC(v92, &unk_27C844DD0, &unk_20DD96868);
      sub_20DA90088(v54, type metadata accessor for HoldState);
    }

    sub_20D9D76EC(v52, &qword_27C844DE0, &qword_20DD96878);
    goto LABEL_19;
  }

  return v34;
}

id ActivityStateManager.init(home:)(void *a1)
{
  v3 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
  v4 = type metadata accessor for HFHomeActivityState(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR___HFActivityStateManager_holdState;
  v6 = type metadata accessor for HoldState(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  v1[OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable] = 2;
  *&v1[OBJC_IVAR___HFActivityStateManager_home] = a1;
  v8 = a1;
  v9 = [v8 residentDevices];
  sub_20D9D7510(0, &qword_27C844E08, 0x277CD1D68);
  v10 = sub_20DD64FD4();

  v28 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v24 = v7;
    v25 = v1;
    v26 = v8;
    v8 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F326680](v8, v10);
      }

      else
      {
        if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(v10 + 8 * v8 + 32);
      }

      v13 = v12;
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([v12 hf_isReachable])
      {
        sub_20DD65754();
        sub_20DD65784();
        sub_20DD65794();
        v1 = &v28;
        sub_20DD65764();
      }

      else
      {
      }

      ++v8;
      if (v7 == i)
      {
        v14 = v28;
        v1 = v25;
        v8 = v26;
        v7 = v24;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    v15 = sub_20DD655B4();
  }

  else
  {
    v15 = *(v14 + 16);
  }

  swift_beginAccess();
  v1[v7] = v15 != 0;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for ActivityStateManager(0);
  v16 = objc_msgSendSuper2(&v27, sel_init);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 sharedDispatcher];
  [v19 addHomeObserver_];

  v20 = [v17 sharedDispatcher];
  [v20 addResidentDeviceObserver_];

  v21 = [v17 sharedDispatcher];
  [v21 addHomeManagerObserver_];

  v22 = [objc_opt_self() defaultCenter];
  [v22 addObserver:v18 selector:sel_fetchActivityState name:*MEMORY[0x277D76758] object:0];

  return v18;
}

uint64_t sub_20DA8B628()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v8 = v0[1];

    return v8();
  }

  else
  {
    v4 = v0[5];
    v5 = swift_task_alloc();
    v0[6] = v5;
    *(v5 + 16) = v4;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_20DA8B784;
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001ELL, 0x800000020DD9A580, sub_20DA92850, v5, v7);
  }
}

uint64_t sub_20DA8B784()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20DA8B8B8;
  }

  else
  {

    v2 = sub_20DA8B8A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA8B8B8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20DA8B91C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v8 = sub_20DD64C44();
  __swift_project_value_buffer(v8, qword_27C844DB0);
  v9 = a2;
  v10 = sub_20DD64C24();
  v11 = sub_20DD65384();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v4;
    aBlock[0] = v28;
    *v12 = 136315650;
    *(v12 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, aBlock);
    v27 = v11;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A580, aBlock);
    *(v12 + 22) = 2080;
    v13 = [*&v9[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
    v14 = v7;
    v15 = a1;
    v16 = sub_20DD64EB4();
    v18 = v17;

    v19 = sub_20D9E0B38(v16, v18, aBlock);

    *(v12 + 24) = v19;
    a1 = v15;
    v7 = v14;
    _os_log_impl(&dword_20D9BF000, v10, v27, "%s - %s: Fetching home activity state for home: %s", v12, 0x20u);
    v20 = v28;
    swift_arrayDestroy();
    v4 = v29;
    MEMORY[0x20F327D10](v20, -1, -1);
    MEMORY[0x20F327D10](v12, -1, -1);
  }

  v21 = *&v9[OBJC_IVAR___HFActivityStateManager_home];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a1, v4);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v5 + 32))(v24 + v23, v7, v4);
  aBlock[4] = sub_20DA9403C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA8CC94;
  aBlock[3] = &block_descriptor_100;
  v25 = _Block_copy(aBlock);

  [v21 fetchCurrentHomeActivityState_];
  _Block_release(v25);
}

void sub_20DA8BCE4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v130 = a3;
  v129 = a2;
  v132 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v107 - v11;
  v131 = sub_20DD636C4();
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v116 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HoldState(0);
  v125 = *(v13 - 8);
  v126 = v13;
  MEMORY[0x28223BE20](v13);
  v127 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20DD63554();
  v122 = *(v15 - 8);
  v123 = v15;
  MEMORY[0x28223BE20](v15);
  v120 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_20DD63574();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HFHomeActivityState(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v124 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v117 = &v107 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v107 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v107 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v107 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v107 - v35;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v38 = Strong;
  if (a5)
  {
    v39 = a5;
    if (qword_27C842520 != -1)
    {
      swift_once();
    }

    v40 = sub_20DD64C44();
    __swift_project_value_buffer(v40, qword_27C844DB0);
    v41 = a5;
    v42 = v38;
    v43 = sub_20DD64C24();
    v44 = sub_20DD65364();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v115 = a7;
      v48 = v47;
      v134[0] = v47;
      *v45 = 136315906;
      *(v45 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v134);
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A580, v134);
      *(v45 + 22) = 2080;
      v49 = [*&v42[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
      v50 = sub_20DD64EB4();
      v52 = v51;

      v53 = sub_20D9E0B38(v50, v52, v134);

      *(v45 + 24) = v53;
      *(v45 + 32) = 2112;
      v54 = a5;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 34) = v55;
      *v46 = v55;
      _os_log_impl(&dword_20D9BF000, v43, v44, "%s - %s: Error fetching home activity state for home: %s, error: %@", v45, 0x2Au);
      sub_20D9D76EC(v46, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v46, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v48, -1, -1);
      MEMORY[0x20F327D10](v45, -1, -1);
    }

    v134[0] = a5;
    v56 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18);
    sub_20DD650A4();
    sub_20DA902F8(a5);

    return;
  }

  v114 = a4;
  v115 = a7;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v57 = sub_20DD64C44();
  __swift_project_value_buffer(v57, qword_27C844DB0);
  sub_20D9D7558(v130, v36, &unk_27C843810, &qword_20DD93F00);
  sub_20D9D7558(v114, v34, &unk_27C843810, &qword_20DD93F00);
  v58 = v38;
  v59 = sub_20DD64C24();
  v60 = sub_20DD65384();
  v113 = v58;

  if (os_log_type_enabled(v59, v60))
  {
    v111 = v60;
    v61 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v134[0] = v110;
    *v61 = 136316674;
    *(v61 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v134);
    *(v61 + 12) = 2080;
    *(v61 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A580, v134);
    *(v61 + 22) = 2080;
    (*(v133 + 56))(v31, 1, 1, v131);
    v112 = v59;
    if (v132 > 3)
    {
      if (v132 > 5)
      {
        if (v132 == 6 || v132 == 7)
        {
          goto LABEL_14;
        }
      }

      else if (v132 == 5)
      {
LABEL_14:
        sub_20DA47868(v31, v20);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v65 = HFHomeActivityState.title.getter();
        v67 = v66;
        sub_20DA90088(v20, type metadata accessor for HFHomeActivityState);
        v68 = sub_20D9E0B38(v65, v67, v134);

        *(v61 + 24) = v68;
        *(v61 + 32) = 2080;
        v69 = [*&v113[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
        v70 = sub_20DD64EB4();
        v72 = v71;

        v73 = sub_20D9E0B38(v70, v72, v134);

        *(v61 + 34) = v73;
        *(v61 + 42) = 2080;
        if (v129)
        {
          v74 = 1702195828;
        }

        else
        {
          v74 = 0x65736C6166;
        }

        if (v129)
        {
          v75 = 0xE400000000000000;
        }

        else
        {
          v75 = 0xE500000000000000;
        }

        v76 = sub_20D9E0B38(v74, v75, v134);

        *(v61 + 44) = v76;
        *(v61 + 52) = 2080;
        sub_20D9D7558(v36, v28, &unk_27C843810, &qword_20DD93F00);
        v77 = v133;
        v78 = *(v133 + 48);
        v79 = v131;
        if (v78(v28, 1, v131) == 1)
        {
          sub_20D9D76EC(v28, &unk_27C843810, &qword_20DD93F00);
          v80 = 0xE400000000000000;
          v81 = 1701736270;
        }

        else
        {
          v82 = v118;
          sub_20DD63564();
          v109 = v78;
          v83 = v120;
          sub_20DD63544();
          v108 = sub_20DD636A4();
          v80 = v84;
          v85 = v83;
          v78 = v109;
          (*(v122 + 8))(v85, v123);
          v86 = v82;
          v81 = v108;
          (*(v119 + 8))(v86, v121);
          (*(v77 + 8))(v28, v79);
        }

        v63 = v79;
        sub_20D9D76EC(v36, &unk_27C843810, &qword_20DD93F00);
        v87 = sub_20D9E0B38(v81, v80, v134);

        *(v61 + 54) = v87;
        *(v61 + 62) = 2080;
        v88 = v117;
        sub_20D9D7558(v34, v117, &unk_27C843810, &qword_20DD93F00);
        v89 = v78(v88, 1, v79);
        v90 = 1701736270;
        if (v89 == 1)
        {
          sub_20D9D76EC(v88, &unk_27C843810, &qword_20DD93F00);
          v91 = 0xE400000000000000;
          v62 = v127;
          v64 = v133;
        }

        else
        {
          v92 = v118;
          sub_20DD63564();
          v93 = v120;
          sub_20DD63544();
          v90 = sub_20DD636A4();
          v91 = v94;
          (*(v122 + 8))(v93, v123);
          (*(v119 + 8))(v92, v121);
          v64 = v133;
          (*(v133 + 8))(v88, v63);
          v62 = v127;
        }

        sub_20D9D76EC(v34, &unk_27C843810, &qword_20DD93F00);
        v95 = sub_20D9E0B38(v90, v91, v134);

        *(v61 + 64) = v95;
        v96 = v112;
        _os_log_impl(&dword_20D9BF000, v112, v111, "%s - %s: Fetched new activity state: %s for home: %s, isActivityStateHoldActive: %s , activityStateHoldEnd: %s, transitionalStateEnd: %s", v61, 0x48u);
        v97 = v110;
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v97, -1, -1);
        MEMORY[0x20F327D10](v61, -1, -1);

        goto LABEL_36;
      }
    }

    sub_20D9D76EC(v31, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_23;
  }

  sub_20D9D76EC(v34, &unk_27C843810, &qword_20DD93F00);
  sub_20D9D76EC(v36, &unk_27C843810, &qword_20DD93F00);
  v62 = v127;
  v63 = v131;
  v64 = v133;
LABEL_36:
  v98 = 1;
  if (v129)
  {
    v99 = v124;
    sub_20D9D7558(v130, v124, &unk_27C843810, &qword_20DD93F00);
    if ((*(v64 + 48))(v99, 1, v63) == 1)
    {
      sub_20D9D76EC(v99, &unk_27C843810, &qword_20DD93F00);
      v98 = 1;
    }

    else
    {
      v100 = *(v64 + 32);
      v101 = v116;
      v100(v116, v99, v63);
      v100(v62, v101, v63);
      v98 = 0;
    }
  }

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  (*(*(v102 - 8) + 56))(v62, v98, 1, v102);
  v103 = v128;
  sub_20DA90020(v62, v128, type metadata accessor for HoldState);
  (*(v125 + 56))(v103, 0, 1, v126);
  v104 = OBJC_IVAR___HFActivityStateManager_holdState;
  v105 = v113;
  swift_beginAccess();
  sub_20DA89D04(v103, &v105[v104], &unk_27C844DD0, &unk_20DD96868);
  swift_endAccess();
  sub_20DA8D0C8(v132, v114);
  v106 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v105[v106] = 1;
  sub_20DA8FD3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18);
  sub_20DD650B4();

  sub_20DA90088(v62, type metadata accessor for HoldState);
}

uint64_t sub_20DA8CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(a1 + 32);
  if (a4)
  {
    sub_20DD63674();
    v19 = sub_20DD636C4();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  }

  else
  {
    v20 = sub_20DD636C4();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  if (a5)
  {
    sub_20DD63674();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_20DD636C4();
  (*(*(v22 - 8) + 56))(v15, v21, 1, v22);

  v23 = a6;
  v18(a2, a3, v17, v15, a6);

  sub_20D9D76EC(v15, &unk_27C843810, &qword_20DD93F00);
  return sub_20D9D76EC(v17, &unk_27C843810, &qword_20DD93F00);
}

uint64_t sub_20DA8D020(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DA8021C;

  return sub_20DA8B608();
}

uint64_t sub_20DA8D0C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HFHomeActivityState(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_20D9D7558(a2, v11, &unk_27C843810, &qword_20DD93F00);
  if (a1 <= 3)
  {
    goto LABEL_11;
  }

  if (a1 > 5)
  {
    if (a1 == 6 || a1 == 7)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_20D9D76EC(v11, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_12;
  }

  if (a1 == 4)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_20DA47868(v11, v8);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  sub_20DA900E8(v8, v14, type metadata accessor for HFHomeActivityState);
  (*(v6 + 56))(v14, 0, 1, v5);
  v15 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
  swift_beginAccess();
  sub_20DA89D04(v14, v2 + v15, &qword_27C844AF0, &qword_20DD96860);
  return swift_endAccess();
}

uint64_t sub_20DA8D3EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v4 = sub_20DD64C44();
  __swift_project_value_buffer(v4, qword_27C844DB0);
  v5 = v0;
  v6 = sub_20DD64C24();
  v7 = sub_20DD65384();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v20);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9A740, &v20);
    *(v8 + 22) = 2080;
    v10 = [*&v5[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
    v11 = sub_20DD64EB4();
    v13 = v12;

    v14 = sub_20D9E0B38(v11, v13, &v20);

    *(v8 + 24) = v14;
    _os_log_impl(&dword_20D9BF000, v6, v7, "%s - %s: App entering foreground. Updating home activity state for home: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  v15 = sub_20DD65114();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v5;
  v17 = v5;
  sub_20DA89720(0, 0, v3, &unk_20DD969A8, v16);
}

uint64_t sub_20DA8D6E4()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v8 = v0[1];

    return v8();
  }

  else
  {
    v4 = v0[5];
    v5 = swift_task_alloc();
    v0[6] = v5;
    *(v5 + 16) = v4;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_20DA8D840;
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001ELL, 0x800000020DD9A580, sub_20DA94138, v5, v7);
  }
}

uint64_t sub_20DA8D840()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20DA94134;
  }

  else
  {

    v2 = sub_20DA94114;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA8D9A4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for HFHomeActivityState(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA8DA70, 0, 0);
}

uint64_t sub_20DA8DA70()
{
  v30 = v0;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C844DB0);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v29);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A5C0, &v29);
    *(v8 + 22) = 2080;
    v10 = sub_20DD636C4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    if (v7 > 3)
    {
      if (v7 > 5)
      {
        if (v7 == 6 || v7 == 7)
        {
          goto LABEL_7;
        }
      }

      else if (v7 != 4)
      {
LABEL_7:
        sub_20DA47868(v0[10], v0[12]);
LABEL_15:
        v11 = v0[12];
        v12 = v0[9];
        swift_storeEnumTagMultiPayload();
        v13 = HFHomeActivityState.title.getter();
        v15 = v14;
        sub_20DA90088(v11, type metadata accessor for HFHomeActivityState);
        v16 = sub_20D9E0B38(v13, v15, &v29);

        *(v8 + 24) = v16;
        *(v8 + 32) = 2080;
        v17 = [*(v12 + OBJC_IVAR___HFActivityStateManager_home) hf_displayName];
        v18 = sub_20DD64EB4();
        v20 = v19;

        v21 = sub_20D9E0B38(v18, v20, &v29);

        *(v8 + 34) = v21;
        _os_log_impl(&dword_20D9BF000, v4, v5, "%s - %s: Updating home activity state to: %s for home: %s", v8, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v9, -1, -1);
        MEMORY[0x20F327D10](v8, -1, -1);
        goto LABEL_16;
      }
    }

    sub_20D9D76EC(v0[10], &unk_27C843810, &qword_20DD93F00);
    goto LABEL_15;
  }

LABEL_16:

  v22 = v0[8];
  v23 = *(v0[9] + OBJC_IVAR___HFActivityStateManager_home);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v22;
  v0[6] = sub_20DA92858;
  v0[7] = v25;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA899CC;
  v0[5] = &block_descriptor_14;
  v26 = _Block_copy(v0 + 2);

  [v23 changeHomeActivityState:v22 completionHandler:v26];
  _Block_release(v26);

  v27 = v0[1];

  return v27();
}

void sub_20DA8DF54(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for HFHomeActivityState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      v13 = a1;
      if (qword_27C842520 != -1)
      {
        swift_once();
      }

      v14 = sub_20DD64C44();
      __swift_project_value_buffer(v14, qword_27C844DB0);
      v15 = a1;
      v16 = v12;
      v17 = sub_20DD64C24();
      v18 = sub_20DD65364();

      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_23;
      }

      v19 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v19 = 136316162;
      *(v19 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v47);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A5C0, &v47);
      *(v19 + 22) = 2080;
      v20 = sub_20DD636C4();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
      if (a3 > 3)
      {
        if (a3 > 5)
        {
          if (a3 == 6 || a3 == 7)
          {
            goto LABEL_9;
          }
        }

        else if (a3 != 4)
        {
LABEL_9:
          sub_20DA47868(v7, v10);
LABEL_22:
          v33 = v45;
          v32 = v46;
          swift_storeEnumTagMultiPayload();
          v34 = HFHomeActivityState.title.getter();
          v36 = v35;
          sub_20DA90088(v10, type metadata accessor for HFHomeActivityState);
          v37 = sub_20D9E0B38(v34, v36, &v47);

          *(v19 + 24) = v37;
          *(v19 + 32) = 2080;
          v38 = [*&v16[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
          v39 = sub_20DD64EB4();
          v41 = v40;

          v42 = sub_20D9E0B38(v39, v41, &v47);

          *(v19 + 34) = v42;
          *(v19 + 42) = 2112;
          v43 = a1;
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 44) = v44;
          *v33 = v44;
          _os_log_impl(&dword_20D9BF000, v17, v18, "%s - %s: Error updating home activity state to: %s, for home: %s, error: %@", v19, 0x34u);
          sub_20D9D76EC(v33, &unk_27C843630, &qword_20DD94080);
          MEMORY[0x20F327D10](v33, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x20F327D10](v32, -1, -1);
          MEMORY[0x20F327D10](v19, -1, -1);
LABEL_23:

          sub_20DA902F8(a1);
          return;
        }
      }

      sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
      goto LABEL_22;
    }

    if (qword_27C842520 != -1)
    {
      swift_once();
    }

    v21 = sub_20DD64C44();
    __swift_project_value_buffer(v21, qword_27C844DB0);
    v22 = v12;
    v23 = sub_20DD64C24();
    v24 = sub_20DD65384();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v47);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A5C0, &v47);
      *(v25 + 22) = 2080;
      v27 = [*&v22[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
      v28 = sub_20DD64EB4();
      v30 = v29;

      v31 = sub_20D9E0B38(v28, v30, &v47);

      *(v25 + 24) = v31;
      _os_log_impl(&dword_20D9BF000, v23, v24, "%s - %s: Successfully updated home activity state for home: %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v26, -1, -1);
      MEMORY[0x20F327D10](v25, -1, -1);
    }
  }
}

uint64_t sub_20DA8E7A0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20DA814E0;

  return sub_20DA8D9A4(a1);
}

uint64_t sub_20DA8E85C()
{
  v1[14] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  v1[15] = swift_task_alloc();
  v2 = type metadata accessor for HFHomeActivityState(0);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for HoldState(0);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE0, &qword_20DD96878);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA8EA30, 0, 0);
}

uint64_t sub_20DA8EA30()
{
  v60 = v0;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C844DB0);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v59 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v59);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D9E0B38(0xD00000000000001DLL, 0x800000020DD9A5E0, &v59);
    *(v7 + 22) = 2080;
    v9 = [*(v6 + OBJC_IVAR___HFActivityStateManager_home) hf_displayName];
    v10 = sub_20DD64EB4();
    v12 = v11;

    v13 = sub_20D9E0B38(v10, v12, &v59);

    *(v7 + 24) = v13;
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s - %s: Updating home activity hold state for home: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v8, -1, -1);
    MEMORY[0x20F327D10](v7, -1, -1);
  }

  v14 = v0[25];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[19];
  v18 = v0[20];
  v19 = v0[14];
  v20 = OBJC_IVAR___HFActivityStateManager_holdState;
  swift_beginAccess();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  (*(v18 + 56))(v14, 0, 1, v17);
  v22 = *(v16 + 48);
  sub_20D9D7558(v19 + v20, v15, &unk_27C844DD0, &unk_20DD96868);
  sub_20D9D7558(v14, v15 + v22, &unk_27C844DD0, &unk_20DD96868);
  v23 = *(v18 + 48);
  if (v23(v15, 1, v17) == 1)
  {
    v24 = v0[19];
    sub_20D9D76EC(v0[25], &unk_27C844DD0, &unk_20DD96868);
    v25 = &qword_27C844000;
    if (v23(v15 + v22, 1, v24) == 1)
    {
      sub_20D9D76EC(v0[23], &unk_27C844DD0, &unk_20DD96868);
      goto LABEL_12;
    }

LABEL_10:
    v30 = v0[23];
    v31 = &qword_27C844DE0;
    v32 = &qword_20DD96878;
LABEL_14:
    sub_20D9D76EC(v30, v31, v32);
    goto LABEL_15;
  }

  v26 = v0[19];
  sub_20D9D7558(v0[23], v0[24], &unk_27C844DD0, &unk_20DD96868);
  v27 = v23(v15 + v22, 1, v26);
  v28 = v0[24];
  v29 = v0[25];
  if (v27 == 1)
  {
    sub_20D9D76EC(v0[25], &unk_27C844DD0, &unk_20DD96868);
    sub_20DA90088(v28, type metadata accessor for HoldState);
    v25 = &qword_27C844000;
    goto LABEL_10;
  }

  v33 = v0[23];
  v34 = v0[21];
  sub_20DA900E8(v15 + v22, v34, type metadata accessor for HoldState);
  v35 = _s4Home9HoldStateO2eeoiySbAC_ACtFZ_0(v28, v34);
  sub_20DA90088(v34, type metadata accessor for HoldState);
  sub_20D9D76EC(v29, &unk_27C844DD0, &unk_20DD96868);
  sub_20DA90088(v28, type metadata accessor for HoldState);
  sub_20D9D76EC(v33, &unk_27C844DD0, &unk_20DD96868);
  v25 = &qword_27C844000;
  if ((v35 & 1) == 0)
  {
LABEL_15:
    v41 = v0[14];
    v42 = sub_20DD64C24();
    v43 = sub_20DD65384();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v0[14];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v59 = v46;
      *v45 = 136315650;
      *(v45 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v59);
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_20D9E0B38(0xD00000000000001DLL, 0x800000020DD9A5E0, &v59);
      *(v45 + 22) = 2080;
      v47 = [*(v44 + v25[448]) hf_displayName];
      v48 = sub_20DD64EB4();
      v50 = v49;

      v51 = sub_20D9E0B38(v48, v50, &v59);

      *(v45 + 24) = v51;
      _os_log_impl(&dword_20D9BF000, v42, v43, "%s - %s: Cancelling home activity hold state for home: %s", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v46, -1, -1);
      MEMORY[0x20F327D10](v45, -1, -1);
    }

    v52 = *(v0[14] + v25[448]);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[6] = sub_20DA92878;
    v0[7] = v53;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_20DA899CC;
    v0[5] = &block_descriptor_9;
    v54 = _Block_copy(v0 + 2);

    [v52 cancelHomeActivityStateHoldWithCompletionHandler_];
    _Block_release(v54);

    v55 = v0[1];

    return v55();
  }

LABEL_12:
  v36 = v0[16];
  v37 = v0[17];
  v39 = v0[14];
  v38 = v0[15];
  v40 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
  swift_beginAccess();
  sub_20D9D7558(v39 + v40, v38, &qword_27C844AF0, &qword_20DD96860);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    v30 = v0[15];
    v31 = &qword_27C844AF0;
    v32 = &qword_20DD96860;
    goto LABEL_14;
  }

  sub_20DA900E8(v0[15], v0[18], type metadata accessor for HFHomeActivityState);
  v57 = HFHomeActivityState.hm_homeActivityState.getter();
  v58 = swift_task_alloc();
  v0[26] = v58;
  *v58 = v0;
  v58[1] = sub_20DA8F268;

  return sub_20DA8D9A4(v57);
}

uint64_t sub_20DA8F268()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_20DA8F444;
  }

  else
  {
    v2 = sub_20DA8F37C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA8F37C()
{
  sub_20DA90088(*(v0 + 144), type metadata accessor for HFHomeActivityState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA8F444()
{
  sub_20DA90088(*(v0 + 144), type metadata accessor for HFHomeActivityState);

  v1 = *(v0 + 8);

  return v1();
}

void sub_20DA8F510(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for HoldState(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = a1;
      if (qword_27C842520 != -1)
      {
        swift_once();
      }

      v13 = sub_20DD64C44();
      __swift_project_value_buffer(v13, qword_27C844DB0);
      v14 = a1;
      v15 = v11;
      v16 = sub_20DD64C24();
      v17 = sub_20DD65364();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48[0] = v47;
        *v18 = 136315906;
        *(v18 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v48);
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_20D9E0B38(0xD00000000000001DLL, 0x800000020DD9A5E0, v48);
        *(v18 + 22) = 2080;
        v20 = [*&v15[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
        v21 = sub_20DD64EB4();
        v23 = v22;

        v24 = sub_20D9E0B38(v21, v23, v48);

        *(v18 + 24) = v24;
        *(v18 + 32) = 2112;
        v25 = a1;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 34) = v26;
        *v19 = v26;
        _os_log_impl(&dword_20D9BF000, v16, v17, "%s - %s: Error canceling home activity state hold for home: %s, error: %@", v18, 0x2Au);
        sub_20D9D76EC(v19, &unk_27C843630, &qword_20DD94080);
        MEMORY[0x20F327D10](v19, -1, -1);
        v27 = v47;
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v27, -1, -1);
        MEMORY[0x20F327D10](v18, -1, -1);
      }

      sub_20DA902F8(a1);
    }

    else
    {
      if (qword_27C842520 != -1)
      {
        swift_once();
      }

      v28 = sub_20DD64C44();
      __swift_project_value_buffer(v28, qword_27C844DB0);
      v29 = v11;
      v30 = sub_20DD64C24();
      v31 = sub_20DD65384();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48[0] = v47;
        *v32 = 136315650;
        *(v32 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v48);
        v46 = v31;
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_20D9E0B38(0xD00000000000001DLL, 0x800000020DD9A5E0, v48);
        *(v32 + 22) = 2080;
        v33 = [*&v29[OBJC_IVAR___HFActivityStateManager_home] hf_displayName];
        v34 = sub_20DD64EB4();
        v45 = v30;
        v35 = v29;
        v36 = v34;
        v38 = v37;

        v39 = sub_20D9E0B38(v36, v38, v48);

        *(v32 + 24) = v39;
        v29 = v35;
        v40 = v45;
        _os_log_impl(&dword_20D9BF000, v45, v46, "%s - %s: Successfully cancelled home activity state hold for home: %s", v32, 0x20u);
        v41 = v47;
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v41, -1, -1);
        MEMORY[0x20F327D10](v32, -1, -1);
      }

      else
      {
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
      (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
      sub_20DA900E8(v9, v5, type metadata accessor for HoldState);
      (*(v7 + 56))(v5, 0, 1, v6);
      v43 = OBJC_IVAR___HFActivityStateManager_holdState;
      swift_beginAccess();
      sub_20DA89D04(v5, &v29[v43], &unk_27C844DD0, &unk_20DD96868);
      swift_endAccess();
    }
  }
}

uint64_t sub_20DA8FC94(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DA814E0;

  return sub_20DA8E85C();
}

uint64_t sub_20DA8FD3C()
{
  v1 = sub_20DD64D74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD64D94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9D7510(0, &unk_280E020E0, 0x277D85C78);
  v9 = sub_20DD653C4();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_20DA940EC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA89A38;
  aBlock[3] = &block_descriptor_106;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_20DD64D84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20DA93250(&qword_280E02168, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F20, &unk_20DD96990);
  sub_20DA93C1C();
  sub_20DD65504();
  MEMORY[0x20F326330](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20DA90020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DA90088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20DA900E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20DA90150()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_20DA940F4;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_20DA2E46C;
  v3[3] = &block_descriptor_110;
  v2 = _Block_copy(v3);

  [v0 dispatchHomeObserverMessage:v2 sender:0];
  _Block_release(v2);
}

void sub_20DA90258(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 respondsToSelector_])
    {
      v5 = *&v4[OBJC_IVAR___HFActivityStateManager_home];
      [a1 homeDidUpdateActivityState_];
    }
  }
}

uint64_t sub_20DA902F8(void *a1)
{
  v3 = sub_20DD64D74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20DD64D94();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9D7510(0, &unk_280E020E0, 0x277D85C78);
  v10 = sub_20DD653C4();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_20DA93C14;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA89A38;
  aBlock[3] = &block_descriptor_29;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  sub_20DD64D84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20DA93250(&qword_280E02168, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F20, &unk_20DD96990);
  sub_20DA93C1C();
  sub_20DD65504();
  MEMORY[0x20F326330](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

void sub_20DA905C8(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedDispatcher];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  v8[4] = sub_20DA93C80;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20DA2E46C;
  v8[3] = &block_descriptor_36;
  v6 = _Block_copy(v8);
  v7 = a2;

  [v3 dispatchHomeObserverMessage:v6 sender:0];
  _Block_release(v6);
}

void sub_20DA906F8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([a1 respondsToSelector_])
    {
      v6 = *&v5[OBJC_IVAR___HFActivityStateManager_home];
      swift_unknownObjectRetain();
      v7 = v6;
      v8 = sub_20DD63494();
      [a1 home:v7 failedToUpdateActivityStateWithError:v8];

      swift_unknownObjectRelease();
      v5 = v8;
    }
  }
}

uint64_t sub_20DA907CC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v120 = a3;
  v119 = a2;
  v116 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DD0, &unk_20DD96868);
  MEMORY[0x28223BE20](v9 - 8);
  v117 = &v95 - v10;
  v11 = sub_20DD636C4();
  v12 = *(v11 - 8);
  v121 = v11;
  v122 = v12;
  MEMORY[0x28223BE20](v11);
  v101 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  MEMORY[0x28223BE20](v14 - 8);
  v114 = &v95 - v15;
  v16 = sub_20DD63554();
  v108 = *(v16 - 8);
  v109 = v16;
  MEMORY[0x28223BE20](v16);
  v106 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_20DD63574();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for HFHomeActivityState(0);
  v113 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v110 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v95 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v103 = &v95 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v102 = &v95 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v95 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v95 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v95 - v36;
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v38 = sub_20DD64C44();
  __swift_project_value_buffer(v38, qword_27C844DB0);
  v115 = a4;
  sub_20D9D7558(a4, v37, &unk_27C843810, &qword_20DD93F00);
  v112 = a5;
  sub_20D9D7558(a5, v35, &unk_27C843810, &qword_20DD93F00);
  v39 = v116;
  v40 = sub_20DD64C24();
  v41 = sub_20DD65384();

  if (!os_log_type_enabled(v40, v41))
  {

    sub_20D9D76EC(v35, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v37, &unk_27C843810, &qword_20DD93F00);
    v44 = v121;
    v45 = v122;
    v46 = v112;
    goto LABEL_29;
  }

  v100 = v37;
  v97 = v41;
  v98 = v40;
  v42 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v123[0] = v96;
  *v42 = 136316674;
  *(v42 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v123);
  *(v42 + 12) = 2080;
  *(v42 + 14) = sub_20D9E0B38(0xD000000000000056, 0x800000020DD9A600, v123);
  *(v42 + 22) = 2080;
  (*(v122 + 56))(v32, 1, 1, v121);
  v99 = v6;
  if (v119 <= 3)
  {
    v43 = v100;
    goto LABEL_15;
  }

  v43 = v100;
  if (v119 > 5)
  {
    if (v119 == 6 || v119 == 7)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_20D9D76EC(v32, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_16;
  }

  if (v119 != 5)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_20DA47868(v32, v20);
LABEL_16:
  v116 = v35;
  swift_storeEnumTagMultiPayload();
  v47 = HFHomeActivityState.title.getter();
  v49 = v48;
  sub_20DA90088(v20, type metadata accessor for HFHomeActivityState);
  v50 = sub_20D9E0B38(v47, v49, v123);

  *(v42 + 24) = v50;
  *(v42 + 32) = 2080;
  v51 = [v39 hf_displayName];
  v52 = sub_20DD64EB4();
  v54 = v53;

  v55 = sub_20D9E0B38(v52, v54, v123);

  *(v42 + 34) = v55;
  *(v42 + 42) = 2080;
  if (v120)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v120)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  v58 = sub_20D9E0B38(v56, v57, v123);

  *(v42 + 44) = v58;
  *(v42 + 52) = 2080;
  v59 = v102;
  sub_20D9D7558(v43, v102, &unk_27C843810, &qword_20DD93F00);
  v60 = v121;
  v61 = v122;
  v62 = *(v122 + 48);
  if (v62(v59, 1, v121) == 1)
  {
    sub_20D9D76EC(v59, &unk_27C843810, &qword_20DD93F00);
    v63 = 0xE400000000000000;
    v64 = 1701736270;
  }

  else
  {
    v65 = v104;
    sub_20DD63564();
    v66 = v106;
    sub_20DD63544();
    v64 = sub_20DD636A4();
    v63 = v67;
    v68 = v66;
    v43 = v100;
    (*(v108 + 8))(v68, v109);
    (*(v105 + 8))(v65, v107);
    (*(v61 + 8))(v59, v60);
  }

  sub_20D9D76EC(v43, &unk_27C843810, &qword_20DD93F00);
  v69 = sub_20D9E0B38(v64, v63, v123);

  *(v42 + 54) = v69;
  *(v42 + 62) = 2080;
  v70 = v103;
  sub_20D9D7558(v116, v103, &unk_27C843810, &qword_20DD93F00);
  v44 = v60;
  if (v62(v70, 1, v60) == 1)
  {
    sub_20D9D76EC(v70, &unk_27C843810, &qword_20DD93F00);
    v71 = 0xE400000000000000;
    v6 = v99;
    v45 = v122;
    v46 = v112;
    v72 = 1701736270;
  }

  else
  {
    v73 = v104;
    sub_20DD63564();
    v74 = v106;
    sub_20DD63544();
    v72 = sub_20DD636A4();
    v71 = v75;
    (*(v108 + 8))(v74, v109);
    (*(v105 + 8))(v73, v107);
    v45 = v122;
    (*(v122 + 8))(v70, v44);
    v6 = v99;
    v46 = v112;
  }

  sub_20D9D76EC(v116, &unk_27C843810, &qword_20DD93F00);
  v76 = sub_20D9E0B38(v72, v71, v123);

  *(v42 + 64) = v76;
  v77 = v98;
  _os_log_impl(&dword_20D9BF000, v98, v97, "%s - %s: ActivityStateManager received new activity state: %s, for home: %s, isActivityStateHoldActive: %s, activityStateHoldEndDate: %s, transitionalStateEnd: %s", v42, 0x48u);
  v78 = v96;
  swift_arrayDestroy();
  MEMORY[0x20F327D10](v78, -1, -1);
  MEMORY[0x20F327D10](v42, -1, -1);

LABEL_29:
  v79 = v111;
  sub_20D9D7558(v46, v111, &unk_27C843810, &qword_20DD93F00);
  v81 = v114;
  v80 = v115;
  if (v119 > 3)
  {
    if (v119 > 5)
    {
      if (v119 == 6 || v119 == 7)
      {
        goto LABEL_32;
      }
    }

    else if (v119 == 5)
    {
LABEL_32:
      sub_20DA47868(v79, v114);
      goto LABEL_40;
    }
  }

  sub_20D9D76EC(v79, &unk_27C843810, &qword_20DD93F00);
LABEL_40:
  v82 = v118;
  swift_storeEnumTagMultiPayload();
  (*(v113 + 56))(v81, 0, 1, v82);
  v83 = OBJC_IVAR___HFActivityStateManager_currentHomeActivityState;
  swift_beginAccess();
  sub_20DA89D04(v81, v6 + v83, &qword_27C844AF0, &qword_20DD96860);
  swift_endAccess();
  if (v120)
  {
    v84 = v80;
    v85 = v110;
    sub_20D9D7558(v84, v110, &unk_27C843810, &qword_20DD93F00);
    if ((*(v45 + 48))(v85, 1, v44) != 1)
    {
      v88 = *(v45 + 32);
      v89 = v101;
      v88(v101, v85, v44);
      v87 = v117;
      v88(v117, v89, v44);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
      (*(*(v90 - 8) + 56))(v87, 0, 1, v90);
      goto LABEL_45;
    }

    sub_20D9D76EC(v85, &unk_27C843810, &qword_20DD93F00);
  }

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, 1, 1, v86);
LABEL_45:
  v91 = type metadata accessor for HoldState(0);
  (*(*(v91 - 8) + 56))(v87, 0, 1, v91);
  v92 = OBJC_IVAR___HFActivityStateManager_holdState;
  swift_beginAccess();
  sub_20DA89D04(v87, v6 + v92, &unk_27C844DD0, &unk_20DD96868);
  swift_endAccess();
  v93 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  swift_beginAccess();
  *(v6 + v93) = 1;
  return sub_20DA8FD3C();
}

id ActivityStateManager.__deallocating_deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedDispatcher];
  [v2 removeHomeObserver_];

  v3 = [v1 sharedDispatcher];
  [v3 removeHomeManagerObserver_];

  v4 = [v1 sharedDispatcher];
  [v4 removeResidentDeviceObserver_];

  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver_];

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ActivityStateManager(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id ActivityStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t HoldState.hash(into:)(uint64_t a1)
{
  v2 = sub_20DD636C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HoldState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA90020(v1, v8, type metadata accessor for HoldState);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return MEMORY[0x20F3269D0](1);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x20F3269D0](0);
  sub_20DA93250(&qword_27C844E10, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_20DD64E34();
  return (*(v3 + 8))(v5, v2);
}

uint64_t HoldState.hashValue.getter()
{
  v1 = v0;
  v2 = sub_20DD636C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HoldState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65A64();
  sub_20DA90020(v1, v8, type metadata accessor for HoldState);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    MEMORY[0x20F3269D0](1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F3269D0](0);
    sub_20DA93250(&qword_27C844E10, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_20DD64E34();
    (*(v3 + 8))(v5, v2);
  }

  return sub_20DD65AA4();
}

uint64_t sub_20DA91FD8(uint64_t a1)
{
  v2 = sub_20DD636C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA90020(v1, v8, type metadata accessor for HoldState);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return MEMORY[0x20F3269D0](1);
  }

  (*(v3 + 32))(v6, v8, v2);
  MEMORY[0x20F3269D0](0);
  sub_20DA93250(&qword_27C844E10, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_20DD64E34();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20DA921CC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20DD636C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65A64();
  sub_20DA90020(v2, v9, type metadata accessor for HoldState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    MEMORY[0x20F3269D0](1);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x20F3269D0](0);
    sub_20DA93250(&qword_27C844E10, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_20DD64E34();
    (*(v4 + 8))(v7, v3);
  }

  return sub_20DD65AA4();
}

uint64_t sub_20DA923EC()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C844DB0);
  __swift_project_value_buffer(v0, qword_27C844DB0);
  return sub_20DD64C34();
}

uint64_t static Logger.homeActivityStateLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C842520 != -1)
  {
    swift_once();
  }

  v2 = sub_20DD64C44();
  v3 = __swift_project_value_buffer(v2, qword_27C844DB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s4Home9HoldStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DD636C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HoldState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F38, &qword_20DD96A20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_20DA90020(a1, &v21 - v13, type metadata accessor for HoldState);
  sub_20DA90020(a2, &v14[v15], type metadata accessor for HoldState);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844DE8, &unk_20DD96880);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) != 1)
  {
    sub_20DA90020(v14, v10, type metadata accessor for HoldState);
    if (v17(&v14[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_20DD63664();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_20DA90088(v14, type metadata accessor for HoldState);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_20D9D76EC(v14, &qword_27C844F38, &qword_20DD96A20);
    v18 = 0;
    return v18 & 1;
  }

  sub_20DA90088(v14, type metadata accessor for HoldState);
  v18 = 1;
  return v18 & 1;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20DA92880()
{
  if (qword_27C842520 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v1 = sub_20DD64C44();
    __swift_project_value_buffer(v1, qword_27C844DB0);
    v2 = v0;
    v3 = sub_20DD64C24();
    v4 = sub_20DD65384();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v46[0] = v6;
      *v5 = 136315650;
      *(v5 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, v46);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A790, v46);
      *(v5 + 22) = 2080;
      v7 = [*(v2 + OBJC_IVAR___HFActivityStateManager_home) hf_displayName];
      v8 = sub_20DD64EB4();
      v10 = v9;

      v11 = sub_20D9E0B38(v8, v10, v46);

      *(v5 + 24) = v11;
      _os_log_impl(&dword_20D9BF000, v3, v4, "%s - %s: Resident status was updated. Updating home activity state for: %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v6, -1, -1);
      MEMORY[0x20F327D10](v5, -1, -1);
    }

    v43 = *(v2 + OBJC_IVAR___HFActivityStateManager_home);
    v0 = [v43 residentDevices];
    sub_20D9D7510(0, &qword_27C844E08, 0x277CD1D68);
    v12 = sub_20DD64FD4();

    v46[0] = MEMORY[0x277D84F90];
    if (v12 >> 62)
    {
      break;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_6:
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x20F326680](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v15 hf_isReachable])
      {
        sub_20DD65754();
        sub_20DD65784();
        sub_20DD65794();
        v0 = v46;
        sub_20DD65764();
      }

      else
      {
      }

      ++v14;
      if (v17 == v13)
      {
        v18 = v46[0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v13 = sub_20DD655B4();
  if (v13)
  {
    goto LABEL_6;
  }

LABEL_21:
  v18 = MEMORY[0x277D84F90];
LABEL_22:

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = sub_20DD655B4();
  }

  else
  {
    v19 = *(v18 + 16);
  }

  v20 = OBJC_IVAR___HFActivityStateManager_isHomeActivityStateAvailable;
  if (v19 < 1)
  {
    swift_beginAccess();
    *(v2 + v20) = 0;
    sub_20DA8FD3C();
    v33 = v2;
    v34 = sub_20DD64C24();
    v35 = sub_20DD65364();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45 = v37;
      *v36 = 136315650;
      *(v36 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v45);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A790, &v45);
      *(v36 + 22) = 2080;
      v38 = [v43 hf_displayName];
      v39 = sub_20DD64EB4();
      v41 = v40;

      v42 = sub_20D9E0B38(v39, v41, &v45);

      *(v36 + 24) = v42;
      _os_log_impl(&dword_20D9BF000, v34, v35, "%s - %s: Cannot update home activity state. No reachable residents found for home: %s.", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v37, -1, -1);
      MEMORY[0x20F327D10](v36, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v21 = *(v2 + v20);
    if (v21 != 2 && (v21 & 1) == 0)
    {
      v22 = v2;
      v23 = sub_20DD64C24();
      v24 = sub_20DD65364();

      if (os_log_type_enabled(v23, v24))
      {
        v44 = v2;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v45 = v26;
        *v25 = 136315650;
        *(v25 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v45);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A790, &v45);
        *(v25 + 22) = 2080;
        v27 = [v43 hf_displayName];
        v28 = sub_20DD64EB4();
        v30 = v29;

        v31 = sub_20D9E0B38(v28, v30, &v45);

        *(v25 + 24) = v31;
        _os_log_impl(&dword_20D9BF000, v23, v24, "%s - %s: Resident became available. Updating home activity state for home: %s.", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v26, -1, -1);
        v32 = v25;
        v2 = v44;
        MEMORY[0x20F327D10](v32, -1, -1);
      }

      *(v2 + v20) = 1;
      sub_20DA8FD3C();
      sub_20DA8D3EC();
    }
  }
}

void sub_20DA92F24(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  if (a1)
  {
    v7 = qword_27C842520;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_20DD64C44();
    __swift_project_value_buffer(v9, qword_27C844DB0);
    v10 = v8;
    v11 = sub_20DD64C24();
    v12 = sub_20DD65384();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_20D9E0B38(0xD00000000000001FLL, 0x800000020DD9A5A0, &v24);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_20D9E0B38(0xD000000000000027, 0x800000020DD9A760, &v24);
      *(v13 + 22) = 2080;
      v15 = [v10 hf_displayName];
      v16 = sub_20DD64EB4();
      v18 = v17;

      v19 = sub_20D9E0B38(v16, v18, &v24);

      *(v13 + 24) = v19;
      _os_log_impl(&dword_20D9BF000, v11, v12, "%s - %s: Home was changed. Fetching activity state for home: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v14, -1, -1);
      MEMORY[0x20F327D10](v13, -1, -1);
    }

    v20 = sub_20DD65114();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v2;
    v22 = v2;
    sub_20DA89720(0, 0, v6, &unk_20DD96A08, v21);
  }
}

uint64_t sub_20DA93250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_20D9D7558(v8 + v9, a5, a3, a4);
}

void sub_20DA93310(uint64_t a1)
{
  sub_20DA93AF8(319, &qword_27C844EF8, type metadata accessor for HFHomeActivityState);
  if (v1 <= 0x3F)
  {
    sub_20DA93AF8(319, &qword_27C844F00, type metadata accessor for HoldState);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ActivityStateManager.fetchHomeActivityStateStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20D9C76B4;

  return v5();
}

uint64_t dispatch thunk of ActivityStateManager.updateHomeActivityState(to:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x100);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D77C4;

  return v7(a1);
}

uint64_t dispatch thunk of ActivityStateManager.updateHomeActivityHoldState()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20D9D77C4;

  return v5();
}

void sub_20DA93AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20DD65494();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20DA93B74(uint64_t a1)
{
  sub_20DA93BCC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_20DA93BCC()
{
  if (!qword_27C844F18)
  {
    v0 = sub_20DD636C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C844F18);
    }
  }
}

unint64_t sub_20DA93C1C()
{
  result = qword_280E02158;
  if (!qword_280E02158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C844F20, &unk_20DD96990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02158);
  }

  return result;
}

uint64_t sub_20DA93C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA8D6C4(a1, v4, v5, v6);
}

uint64_t sub_20DA93D3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DA8FC94(v2, v3);
}

uint64_t sub_20DA93DE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DA8E7A0(v2, v3, v4);
}

uint64_t objectdestroy_45Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20DA93EDC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20DA8D020(v2, v3);
}

uint64_t sub_20DA93F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA8D6C4(a1, v4, v5, v6);
}

void sub_20DA9403C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844F30, &qword_20DD96A18) - 8);
  v12 = *(v5 + 16);
  v13 = v5 + ((*(v11 + 80) + 24) & ~*(v11 + 80));

  sub_20DA8BCE4(a1, a2, a3, a4, a5, v12, v13);
}

id HFTileResizable.tileSize.getter()
{
  v1 = [v0 hf_tileSize];

  return v1;
}

id HFTileResizable.set(tileSize:)(uint64_t a1)
{
  v2 = [v1 hf:a1 setTileSize:?];

  return v2;
}

void MatterAccessoryLikeItem.currentStateActionBuilders(for:)(uint64_t a1)
{
  v85 = a1;
  v101 = sub_20DD63D84();
  v83 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_20DD644C4();
  v84 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v99 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_20DD644D4();
  v89 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845070, &unk_20DD96A30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v86 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A50, &qword_20DD940D8);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v78 - v11;
  v88 = sub_20DD64054();
  v12 = *(v88 - 8);
  v13 = MEMORY[0x28223BE20](v88);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v96 = &v78 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v78 - v21;
  v23 = sub_20DD64294();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v28 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  v103 = v27;
  sub_20D9FA458(v27 + v28, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v29 = &qword_27C843A20;
    v30 = &qword_20DD940B0;
    v31 = v22;
LABEL_18:
    sub_20D9D76EC(v31, v29, v30);
    sub_20D9D7510(0, &qword_27C8439F0, 0x277CBEB98);
    v58 = MEMORY[0x20F326340](MEMORY[0x277D84F90]);
    [objc_opt_self() futureWithResult_];

    return;
  }

  v92 = v15;
  v102 = v19;
  v79 = v5;
  v80 = v24;
  v32 = *(v24 + 32);
  v82 = v23;
  v32(v26, v22, v23);
  v81 = v26;
  v33 = sub_20DD64284();
  v34 = v33;
  v35 = v33 + 64;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v33 + 64);
  v39 = (v36 + 63) >> 6;
  v90 = v12 + 16;
  v94 = (v89 + 48);
  v95 = (v12 + 32);
  v93 = (v12 + 8);

  v40 = 0;
  v41 = v88;
  v91 = v12;
  if (v38)
  {
    while (1)
    {
      v42 = v40;
LABEL_10:
      v43 = v34;
      v44 = *(v34 + 56) + *(v12 + 72) * (__clz(__rbit64(v38)) | (v42 << 6));
      v45 = v96;
      (*(v12 + 16))(v96, v44, v41);
      v46 = *(v12 + 32);
      v47 = v92;
      v46(v92, v45, v41);
      v48 = v97;
      sub_20DD63F74();
      if ((*v94)(v48, 1, v98) != 1)
      {
        break;
      }

      v38 &= v38 - 1;
      sub_20D9D76EC(v48, &unk_27C845070, &unk_20DD96A30);
      (*v93)(v47, v41);
      v40 = v42;
      v34 = v43;
      v12 = v91;
      if (!v38)
      {
        goto LABEL_7;
      }
    }

    sub_20D9D76EC(v48, &unk_27C845070, &unk_20DD96A30);
    v51 = v87;
    v46(v87, v47, v41);
    v49 = 0;
    v50 = v89;
    v12 = v91;
LABEL_14:
    (*(v12 + 56))(v51, v49, 1, v41);

    v52 = (*(v12 + 48))(v51, 1, v41);
    v53 = v102;
    v54 = v82;
    v55 = v81;
    if (v52 == 1)
    {
      (*(v80 + 8))(v81, v82);
      v29 = &qword_27C843A50;
      v30 = &qword_20DD940D8;
      v31 = v51;
      goto LABEL_18;
    }

    (*v95)(v102, v51, v41);
    v56 = v86;
    sub_20DD63F74();
    v57 = v98;
    if ((*v94)(v56, 1, v98) == 1)
    {
      (*v93)(v53, v41);
      (*(v80 + 8))(v55, v54);
      v29 = &unk_27C845070;
      v30 = &unk_20DD96A30;
      v31 = v56;
      goto LABEL_18;
    }

    (*(v50 + 32))(v79, v56, v57);
    sub_20DD64484();
    v97 = sub_20DA94DBC();
    v59 = sub_20DD64FF4();

    v105 = MEMORY[0x277D84F90];
    v60 = *(v59 + 16);
    if (v60)
    {
      v96 = OBJC_IVAR___HFMatterAccessoryRepresentable_accessory;
      v95 = *(v84 + 16);
      v61 = *(v84 + 80);
      v92 = v59;
      v62 = v59 + ((v61 + 32) & ~v61);
      v63 = *(v84 + 72);
      v64 = (v83 + 8);
      v65 = (v84 + 8);
      v94 = MEMORY[0x277D84F90];
      v66 = v99;
      do
      {
        v67 = v104;
        (v95)(v66, v62, v104);
        v68 = v100;
        sub_20DD64014();
        sub_20DD63D74();
        (*v64)(v68, v101);
        v69 = *&v96[v103];
        v70 = sub_20DD63E14();

        (*v65)(v66, v67);
        if (v70)
        {
          v71 = v70;
          MEMORY[0x20F325F00]();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20DD65014();
          }

          sub_20DD65054();

          v94 = v105;
        }

        v62 += v63;
        --v60;
      }

      while (v60);

      v50 = v89;
      v53 = v102;
      v54 = v82;
      v55 = v81;
    }

    else
    {
    }

    v72 = *(v103 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
    v73 = objc_allocWithZone(HFMatterCommandActionBuilder);
    sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
    v74 = v72;
    v75 = sub_20DD64FB4();

    v76 = [v73 initWithHome:v85 commands:v75 accessory:v74 enforceExecutionOrder:1];

    v77 = [objc_opt_self() setWithObject_];
    [objc_opt_self() futureWithResult_];

    (*(v50 + 8))(v79, v98);
    (*v93)(v53, v88);
    (*(v80 + 8))(v55, v54);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= v39)
      {

        v49 = 1;
        v50 = v89;
        v51 = v87;
        goto LABEL_14;
      }

      v38 = *(v35 + 8 * v42);
      ++v40;
      if (v38)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_20DA94DBC()
{
  result = qword_27C845080;
  if (!qword_27C845080)
  {
    sub_20DD644C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C845080);
  }

  return result;
}

Home::DashboardStaticSectionListItemType_optional __swiftcall DashboardStaticSectionListItemType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20DA94F84()
{
  v1 = (v0 + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_20DA95048(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_20DA950A8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id DashboardStaticSectionListItem.init(results:type:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v2[OBJC_IVAR___HFDashboardStaticSectionListItem_sectionType] = v3;
  v4 = 0xED00006E6F697463;
  v5 = 0x655373656E656373;
  if (v3 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000020DD98860;
  }

  v6 = v3 == 0;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53736172656D6163;
  }

  if (v6)
  {
    v4 = 0xEE006E6F69746365;
  }

  v8 = &v2[OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString];
  *v8 = v7;
  v8[1] = v4;
  v9 = sub_20DD64DB4();

  v12.receiver = v2;
  v12.super_class = type metadata accessor for DashboardStaticSectionListItem();
  v10 = objc_msgSendSuper2(&v12, sel_initWithResults_, v9);

  return v10;
}

id DashboardStaticSectionListItem.__allocating_init(results:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_20DD64DB4();

  v4 = [v2 initWithResults_];

  return v4;
}

id DashboardStaticSectionListItem.__allocating_init(resultsBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20DA954A8;
  v9[3] = &block_descriptor_15;
  v6 = _Block_copy(v9);
  v7 = [v5 initWithResultsBlock_];
  _Block_release(v6);

  return v7;
}

id sub_20DA954A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DashboardStaticSectionListItem.__allocating_init(resultsAndItemBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20DA055A4;
  v9[3] = &block_descriptor_3;
  v6 = _Block_copy(v9);
  v7 = [v5 initWithResultsAndItemBlock_];
  _Block_release(v6);

  return v7;
}

void sub_20DA95650(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  _Block_copy(aBlock);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id DashboardStaticSectionListItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardStaticSectionListItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20DA956C4()
{
  result = qword_27C845100;
  if (!qword_27C845100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C845100);
  }

  return result;
}

id static HFServiceItem.serviceItem(for:valueSource:)(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() serviceItemForService:a1 valueSource:a2];
  if (result)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  return result;
}

id HFTransformItem.transformedSourceItem.getter()
{
  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v1 = [v0 sourceItem];

  return v1;
}

id sub_20DA9592C()
{
  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v1 = [*v0 transformedSourceItem];

  return v1;
}

double sub_20DA9598C()
{
  sub_20DA97288();

  return result;
}

uint64_t sub_20DA959B4(uint64_t a1)
{
  v3 = qword_27C845110;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_20DA95A6C()
{
  v0 = sub_20DA97278();

  return v0;
}

id ConfigurableTransformItem.init(sourceItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x277D85000];
  *(v4 + qword_27C845110) = MEMORY[0x277D84F90];
  *(v4 + qword_27C845108) = a1;
  v7 = type metadata accessor for ConfigurableTransformItem(0, *((v6 & v5) + 0x50), a3, a4);
  v9.receiver = v4;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_20DA95B48(uint64_t a1)
{
  v2 = *&v1[qword_27C845108];
  sub_20DA95CA0(a1);
  type metadata accessor for HFItemUpdateOption(0);
  sub_20DA972E4();
  v3 = sub_20DD64DB4();

  v4 = [v2 updateWithOptions_];

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v10[4] = sub_20DA9733C;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20DA055A4;
  v10[3] = &block_descriptor_16;
  v6 = _Block_copy(v10);
  v7 = v1;

  v8 = [v4 flatMap_];

  _Block_release(v6);
  return v8;
}

void sub_20DA95CA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845290, &qword_20DD96CE0);
    v1 = sub_20DD65884();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    sub_20D9D7288(*(a1 + 48) + 40 * v10, &v26);
    sub_20D9D7174(*(a1 + 56) + 32 * v10, v28 + 8);
    v24[0] = v28[0];
    v24[1] = v28[1];
    v25 = v29;
    *&v23[5] = v26;
    *&v23[7] = v27;
    v21[4] = v26;
    v21[5] = v27;
    v22 = *&v28[0];
    type metadata accessor for HFItemUpdateOption(0);
    swift_dynamicCast();
    sub_20D9D77C8((v24 + 8), &v23[1]);
    v11 = v23[0];
    sub_20D9D77C8(&v23[1], v21);
    sub_20D9D77C8(v21, v23);
    sub_20DD64EB4();
    sub_20DD65A64();
    sub_20DD64F24();
    v12 = sub_20DD65AA4();

    v13 = -1 << *(v1 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v6 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v6 + 8 * v15);
        if (v19 != -1)
        {
          v8 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v14) & ~*(v6 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v11;
    sub_20D9D77C8(v23, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

id sub_20DA95F88(void *a1, void *a2)
{
  [a1 mutableCopy];
  sub_20DD654E4();
  swift_unknownObjectRelease();
  sub_20D9D7510(0, &unk_27C845280, off_277DEFDC8);
  swift_dynamicCast();
  (*((*MEMORY[0x277D85000] & *a2) + 0x90))();
  [v5 copy];
  sub_20DD654E4();
  swift_unknownObjectRelease();
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  swift_dynamicCast();
  v3 = [objc_opt_self() futureWithResult_];

  return v3;
}

id sub_20DA960D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20DD64DC4();
  v5 = a1;
  v6 = sub_20DA95B48(v4);

  return v6;
}

void sub_20DA96160(void *a1)
{
  v2 = v1;
  v4 = &unk_27C845000;
  v5 = qword_27C845110;
  swift_beginAccess();
  if (!*(*(v2 + v5) + 16))
  {
    return;
  }

  v67 = a1;
  v6 = [a1 results];
  v7 = sub_20DD64DC4();

  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v68 = v2;
    v83 = MEMORY[0x277D84F90];
    sub_20DA4B0EC(0, v8, 0);
    v10 = v83;
    v11 = v7 + 64;
    v12 = sub_20DD65514();
    v13 = 0;
    v14 = *(v7 + 36);
    v70 = v8;
    v72 = v14;
    do
    {
      if (v12 < 0 || v12 >= 1 << *(v7 + 32))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v17 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_56;
      }

      if (v14 != *(v7 + 36))
      {
        goto LABEL_57;
      }

      v18 = v11;
      sub_20D9D7288(*(v7 + 48) + 40 * v12, &v78);
      sub_20D9D7174(*(v7 + 56) + 32 * v12, v80 + 8);
      v75[0] = v78;
      v75[1] = v79;
      v76 = *&v80[0];
      sub_20D9D77C8((v80 + 8), v77);
      sub_20D9D7288(v75, v74);
      swift_dynamicCast();
      v19 = sub_20DD64E74();

      sub_20D9D7174(v77, v81 + 8);
      *&v81[0] = v19;
      sub_20D9D76EC(v75, &unk_27C845120, &unk_20DD96B90);
      v83 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_20DA4B0EC((v20 > 1), v21 + 1, 1);
        v10 = v83;
      }

      *(v10 + 16) = v21 + 1;
      v22 = v10 + 40 * v21;
      v23 = v81[0];
      v24 = v81[1];
      *(v22 + 64) = v82;
      *(v22 + 32) = v23;
      *(v22 + 48) = v24;
      v15 = 1 << *(v7 + 32);
      if (v12 >= v15)
      {
        goto LABEL_58;
      }

      v25 = *(v18 + 8 * v17);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_59;
      }

      v11 = v18;
      v14 = v72;
      if (v72 != *(v7 + 36))
      {
        goto LABEL_60;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v15 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v16 = v70;
      }

      else
      {
        v27 = v17 << 6;
        v28 = v17 + 1;
        v16 = v70;
        v29 = (v7 + 72 + 8 * v17);
        while (v28 < (v15 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_20D9EF46C(v12, v72, 0);
            v15 = __clz(__rbit64(v30)) + v27;
            goto LABEL_5;
          }
        }

        sub_20D9EF46C(v12, v72, 0);
      }

LABEL_5:
      ++v13;
      v12 = v15;
    }

    while (v13 != v16);

    v9 = MEMORY[0x277D84F90];
    v2 = v68;
    v4 = &unk_27C845000;
    if (!*(v10 + 16))
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v10 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8434B0, &qword_20DD93B60);
    v32 = sub_20DD65884();
    goto LABEL_25;
  }

LABEL_24:
  v32 = MEMORY[0x277D84F98];
LABEL_25:
  *&v78 = v32;
  v7 = 0;
  sub_20DA9735C(v10, 1, &v78);

  v33 = v78;
  v34 = v4[34];
  swift_beginAccess();
  v35 = *(v2 + v34);
  v36 = *(v35 + 16);
  if (v36)
  {

    v37 = v35 + 40;
    do
    {
      v38 = *(v37 - 8);
      *&v78 = v33;

      v38(v75, &v78);

      v33 = *&v75[0];
      v37 += 16;
      --v36;
    }

    while (v36);
  }

  v39 = *(v33 + 16);
  if (v39)
  {
    sub_20DA4B0CC(0, v39, 0);
    v73 = v9;
    v40 = v33 + 64;
    v41 = sub_20DD65514();
    v42 = 0;
    v43 = *(v33 + 36);
    v69 = v39;
    v71 = v43;
    while ((v41 & 0x8000000000000000) == 0 && v41 < 1 << *(v33 + 32))
    {
      v45 = v41 >> 6;
      if ((*(v40 + 8 * (v41 >> 6)) & (1 << v41)) == 0)
      {
        goto LABEL_62;
      }

      if (v43 != *(v33 + 36))
      {
        goto LABEL_63;
      }

      v46 = v40;
      v47 = *(*(v33 + 48) + 8 * v41);
      sub_20D9D7174(*(v33 + 56) + 32 * v41, v75 + 8);
      *&v81[0] = v47;
      sub_20D9D77C8((v75 + 8), (v81 + 8));
      v48 = sub_20DD64EB4();
      v50 = v49;
      sub_20D9D7174(v81 + 8, &v79);
      *&v78 = v48;
      *(&v78 + 1) = v50;
      v51 = v47;
      sub_20D9D76EC(v81, &unk_27C845130, &unk_20DD96BA0);
      v53 = *(v73 + 16);
      v52 = *(v73 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_20DA4B0CC((v52 > 1), v53 + 1, 1);
      }

      *(v73 + 16) = v53 + 1;
      v54 = (v73 + 48 * v53);
      v55 = v78;
      v56 = v80[0];
      v54[3] = v79;
      v54[4] = v56;
      v54[2] = v55;
      v7 = 1 << *(v33 + 32);
      if (v41 >= v7)
      {
        goto LABEL_64;
      }

      v40 = v46;
      v57 = *(v46 + 8 * v45);
      if ((v57 & (1 << v41)) == 0)
      {
        goto LABEL_65;
      }

      v43 = v71;
      if (v71 != *(v33 + 36))
      {
        goto LABEL_66;
      }

      v58 = v57 & (-2 << (v41 & 0x3F));
      if (v58)
      {
        v7 = __clz(__rbit64(v58)) | v41 & 0x7FFFFFFFFFFFFFC0;
        v44 = v69;
      }

      else
      {
        v59 = v45 << 6;
        v60 = v45 + 1;
        v44 = v69;
        v61 = (v33 + 72 + 8 * v45);
        while (v60 < (v7 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            sub_20D9EF46C(v41, v71, 0);
            v7 = __clz(__rbit64(v62)) + v59;
            goto LABEL_32;
          }
        }

        sub_20D9EF46C(v41, v71, 0);
      }

LABEL_32:
      ++v42;
      v41 = v7;
      if (v42 == v44)
      {

        goto LABEL_50;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);

    __break(1u);
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
LABEL_50:
    v64 = sub_20DA0B894(v73);

    if (*(v64 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434A8, &qword_20DD93B58);
      v65 = sub_20DD65884();
    }

    else
    {
      v65 = MEMORY[0x277D84F98];
    }

    *&v78 = v65;
    sub_20DA97618(v64, 1, &v78);

    v66 = sub_20DD64DB4();

    [v67 setResults_];
  }
}

id ConfigurableTransformItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigurableTransformItem.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ConfigurableTransformItem(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_20DA969F0(uint64_t a1)
{
}

id sub_20DA96A3C()
{
  v0 = sub_20DA97278();

  return v0;
}

id SelectableTransformItem.__allocating_init(sourceItem:selectionControllerContainer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_20DA97954(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id SelectableTransformItem.init(sourceItem:selectionControllerContainer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20DA97954(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

void sub_20DA96B38(void *a1)
{
  sub_20DA96160(a1);
  v3 = &v1[qword_27C845140];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  if (!v6)
  {
    return;
  }

  v9 = swift_getObjectType();
  v10 = (*(v8 + 32))(v1, v9, v8);
  v11 = [v1 latestResults];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_20DD64DC4();

  v14 = sub_20DD64EB4();
  if (!*(v13 + 16))
  {

    goto LABEL_10;
  }

  v16 = sub_20D9CB170(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_20D9D7174(*(v13 + 56) + 32 * v16, v33);

  sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v20 = 0;
    v21 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  v19 = v31[0];
  v20 = [v31[0] integerValue];
  v21 = 1;
LABEL_12:
  v22 = HFPrimaryStateFromBOOL(v10 & 1);
  sub_20DD64EB4();
  v31[1] = v23;
  sub_20DD65684();
  v32 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  v31[0] = sub_20DD65434();
  v24 = [a1 results];
  v25 = sub_20DD64DC4();

  v30 = v25;
  if (v32)
  {
    sub_20D9D77C8(v31, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v29, v33, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_20D9D76EC(v31, &unk_27C843A80, &qword_20DD94100);
    sub_20DA2769C(v33, v29);
    sub_20D9D76EC(v29, &unk_27C843A80, &qword_20DD94100);
  }

  sub_20D9D4298(v33);
  v27 = sub_20DD64DB4();

  [a1 setResults_];

  if (v20 == v22)
  {
    v28 = v21;
  }

  else
  {
    v28 = 0;
  }

  if ((v28 & 1) == 0)
  {
    [a1 setOutcomeType_];
  }

  swift_unknownObjectRelease();
}

id SelectableTransformItem.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SelectableTransformItem(0, *((*MEMORY[0x277D85000] & *v4) + 0x98), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_20DA96F9C(uint64_t a1)
{
  v1 = [*(a1 + qword_27C845108) accessoryRepresentableObject];

  return v1;
}

id sub_20DA96FE0()
{
  v1 = [*(v0 + qword_27C845108) accessoryRepresentableObject];

  return v1;
}

id sub_20DA97020(uint64_t a1)
{
  v1 = [*(a1 + qword_27C845108) homeKitObject];

  return v1;
}

id sub_20DA97064()
{
  v1 = [*(v0 + qword_27C845108) homeKitObject];

  return v1;
}

id AccessoryRepresentableSelectableTransformItem.__allocating_init(sourceItem:selectionControllerContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  *&v6[qword_27C845140 + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a3;
  swift_unknownObjectWeakAssign();
  *&v6[qword_27C845110] = MEMORY[0x277D84F90];
  *&v6[qword_27C845108] = a1;
  v7 = a1;
  v10.receiver = v6;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C845148, &qword_20DD96BB0);
  v8 = objc_msgSendSuper2(&v10, sel_init);

  swift_unknownObjectRelease();
  return v8;
}

id AccessoryRepresentableSelectableTransformItem.init(sourceItem:selectionControllerContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[qword_27C845140 + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a3;
  swift_unknownObjectWeakAssign();
  *&v3[qword_27C845110] = MEMORY[0x277D84F90];
  *&v3[qword_27C845108] = a1;
  v5 = a1;
  v8.receiver = v3;
  v8.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C845148, &qword_20DD96BB0);
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_unknownObjectRelease();
  return v6;
}

id AccessoryRepresentableSelectableTransformItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryRepresentableSelectableTransformItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA97288()
{
  v1 = qword_27C845110;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_20DA972E4()
{
  result = qword_27C842880;
  if (!qword_27C842880)
  {
    type metadata accessor for HFItemUpdateOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C842880);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20DA9735C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_20D9D7558(result + 32, &v35, &qword_27C8452C0, &qword_20DD96DA0);
  v7 = v35;
  sub_20D9D77C8(v36, v34);
  v8 = *a3;
  result = sub_20D9CB1D0(v7);
  v10 = v8[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v14) = v9;
  if (v8[3] < v13)
  {
    sub_20D9CC2F4(v13, v5 & 1);
    result = sub_20D9CB1D0(v7);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for HFItemResultKey(0);
    result = sub_20DD659E4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v16 = *a3;
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = v7;
    result = sub_20D9D77C8(v34, (v16[7] + 32 * result));
    v20 = v16[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v12)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v16[2] = v21;
    if (--v3)
    {
      goto LABEL_14;
    }

    return result;
  }

  v19 = result;
  sub_20D9D23EC();
  result = v19;
  v16 = *a3;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = result;

  v18 = (v16[7] + 32 * v17);
  __swift_destroy_boxed_opaque_existential_0(v18);
  result = sub_20D9D77C8(v34, v18);
  if (--v3)
  {
LABEL_14:
    v6 += 72;
    v7 = &qword_27C8452C0;
    v14 = &qword_20DD96DA0;
    while (1)
    {
      sub_20D9D7558(v6, &v35, &qword_27C8452C0, &qword_20DD96DA0);
      v5 = v35;
      sub_20D9D77C8(v36, v34);
      v24 = *a3;
      result = sub_20D9CB1D0(v5);
      v26 = v24[2];
      v27 = (v25 & 1) == 0;
      v12 = __OFADD__(v26, v27);
      v28 = v26 + v27;
      if (v12)
      {
        goto LABEL_23;
      }

      v29 = v25;
      if (v24[3] < v28)
      {
        sub_20D9CC2F4(v28, 1);
        result = sub_20D9CB1D0(v5);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v29)
      {
        v22 = result;

        v23 = (v31[7] + 32 * v22);
        __swift_destroy_boxed_opaque_existential_0(v23);
        result = sub_20D9D77C8(v34, v23);
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        *(v31[6] + 8 * result) = v5;
        result = sub_20D9D77C8(v34, (v31[7] + 32 * result));
        v32 = v31[2];
        v12 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v12)
        {
          goto LABEL_24;
        }

        v31[2] = v33;
      }

      v6 += 40;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_20DA97618(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_20D9D7558(result + 32, &v43, &unk_27C845270, &unk_20DD96CD0);
  v40 = v43;
  v41 = v44;
  v42 = v45;
  sub_20D9D77C8(v46, v39);
  v7 = *a3;
  result = sub_20D9CB264(&v40);
  v9 = v7[2];
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v13) = v8;
  if (v7[3] < v12)
  {
    sub_20D9CD30C(v12, v5 & 1);
    result = sub_20D9CB264(&v40);
    if ((v13 & 1) == (v14 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_20DD659E4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v15 = *a3;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_11:
    v15[(result >> 6) + 8] |= 1 << result;
    v20 = v15[6] + 40 * result;
    v21 = v40;
    v22 = v41;
    *(v20 + 32) = v42;
    *v20 = v21;
    *(v20 + 16) = v22;
    result = sub_20D9D77C8(v39, (v15[7] + 32 * result));
    v23 = v15[2];
    v11 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v11)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v15[2] = v24;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v19 = result;
  sub_20D9D2924();
  result = v19;
  v15 = *a3;
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v16 = result;
  sub_20D9D4298(&v40);
  v17 = (v15[7] + 32 * v16);
  __swift_destroy_boxed_opaque_existential_0(v17);
  result = sub_20D9D77C8(v39, v17);
  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 104;
    v5 = &unk_27C845270;
    v13 = &unk_20DD96CD0;
    while (1)
    {
      sub_20D9D7558(v6, &v43, &unk_27C845270, &unk_20DD96CD0);
      v40 = v43;
      v41 = v44;
      v42 = v45;
      sub_20D9D77C8(v46, v39);
      v27 = *a3;
      result = sub_20D9CB264(&v40);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v11 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v11)
      {
        goto LABEL_23;
      }

      v3 = v28;
      if (v27[3] < v31)
      {
        sub_20D9CD30C(v31, 1);
        result = sub_20D9CB264(&v40);
        if ((v3 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v3)
      {
        v25 = result;
        sub_20D9D4298(&v40);
        v26 = (v33[7] + 32 * v25);
        __swift_destroy_boxed_opaque_existential_0(v26);
        result = sub_20D9D77C8(v39, v26);
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = v33[6] + 40 * result;
        v35 = v40;
        v36 = v41;
        *(v34 + 32) = v42;
        *v34 = v35;
        *(v34 + 16) = v36;
        result = sub_20D9D77C8(v39, (v33[7] + 32 * result));
        v37 = v33[2];
        v11 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v11)
        {
          goto LABEL_24;
        }

        v33[2] = v38;
      }

      v6 += 72;
      if (!--v18)
      {
        return result;
      }
    }
  }

  return result;
}

id sub_20DA97954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_27C845140 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a3;
  swift_unknownObjectWeakAssign();

  return ConfigurableTransformItem.init(sourceItem:)(a1, v5, v6, v7);
}

uint64_t type metadata accessor for AccessoryRepresentableSelectableTransformItem(uint64_t a1)
{
  result = qword_27C845258;
  if (!qword_27C845258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_20DA97D40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
  if (a3)
  {
    a3 = sub_20DD64E74();
  }

  [v9 setDescriptor_];

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = v9;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD96D60;
  v11[5] = v10;

  v12 = v9;

  sub_20D9D6B40(0, 0, a1, 0, 0, &unk_20DD96D68, v11);

  return v12;
}

id _s4Home14NAFutureHelperO6future8priority10descriptor4withSo0B0CyxGScPSg_SSSgxyYaYbKYActRlzClFZ(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8452A0, &qword_20DD96CE8);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    a3 = sub_20DD64E74();
  }

  [v11 setDescriptor_];

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a6;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = v11;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD96CF8;
  v13[5] = v12;

  v14 = v11;

  sub_20D9D6B40(0, 0, a1, 0, 0, &unk_20DD95DF0, v13);

  return v14;
}

id NAFuture.asGeneric()()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();

  return v0;
}

id sub_20DA98020()
{
  v0 = NAFuture.asGeneric()();

  return v0;
}

uint64_t sub_20DA98054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27[2] = a1;
  v27[3] = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v27 - v15;
  v29[6] = a4;
  v29[7] = a5;
  v27[0] = a5;
  v27[1] = a6;
  v29[4] = a6;
  v29[5] = a7;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_20DD65094();
    v19 = v18;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v17 = 0;
    v19 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_20DA9A680(a3, v16);
  v21 = sub_20DD65114();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_20D9C7BC4(v16);
  }

  else
  {
    sub_20DD65104();
    (*(v22 + 8))(v16, v21);
  }

  if (!a2)
  {
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v29[0] = 0;
      v29[1] = 0;
      v26 = v29;
      v29[2] = v17;
      v29[3] = v19;
      if (a4 == 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_14:
        v24 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    v28[1] = 6;
    v28[2] = v26;
    v28[3] = a4;
    v28[4] = v27[0];
    goto LABEL_14;
  }

  v23 = sub_20DD64EF4();
  sub_20DA99F6C(v23 + 32, v28);

  v24 = v28[0];
  if (isCurrentExecutorWithFlags)
  {
LABEL_9:
    swift_task_immediate();
  }

LABEL_10:

  swift_unknownObjectRelease();
  return v24;
}

uint64_t static Task<>.executeOnMainActor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_20DD65114();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20DD650F4();

  v10 = sub_20DD650E4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a2;
  v13 = sub_20DA98054(0, 0, v8, 0, 0, &unk_20DD96D08, v11, a3);

  sub_20D9C7BC4(v8);
  return v13;
}

uint64_t sub_20DA98460(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_20DD650F4();
  v4[3] = sub_20DD650E4();
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_20DA98580;

  return v9(a1);
}

uint64_t sub_20DA98580()
{
  *(*v1 + 40) = v0;

  v3 = sub_20DD65094();
  if (v0)
  {
    v4 = sub_20DA9A818;
  }

  else
  {
    v4 = sub_20DA9A81C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20DA986DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_20DD650F4();
  v4[3] = sub_20DD650E4();
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_20DA987FC;

  return v9(a1);
}

uint64_t sub_20DA987FC()
{
  *(*v1 + 40) = v0;

  v3 = sub_20DD65094();
  if (v0)
  {
    v4 = sub_20DA989BC;
  }

  else
  {
    v4 = sub_20DA98958;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20DA98958()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA989BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static NAFutureHelper.continuation<A>(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_20DA98A40, 0, 0);
}

uint64_t sub_20DA98A40()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_20DA98B30;
  v3 = *(v0 + 32);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x800000020DD9AA20, sub_20DA9A128, v1, v3);
}

uint64_t sub_20DA98B30()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20DA98C68;
  }

  else
  {

    v2 = sub_20DA98C4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA98C68()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20DA98CCC(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v6 = sub_20DD650C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_20DA9A5BC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA98F98;
  aBlock[3] = &block_descriptor_17;
  v12 = _Block_copy(aBlock);

  v13 = [a2 addCompletionBlock_];
  _Block_release(v12);
}

id sub_20DA98EAC(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
    sub_20DD650C4();
    return sub_20DD650A4();
  }

  if (a1)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
    sub_20DD650C4();
    return sub_20DD650B4();
  }

  else
  {
    result = [objc_opt_self() na_genericError];
    if (result)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA98F98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20DA99018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_20DA9903C, 0, 0);
}

uint64_t sub_20DA9903C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_20DA9914C;
  v7 = *(v0 + 48);

  return MEMORY[0x282200830](v0 + 16, &unk_20DD96D88, v3, sub_20DA9A814, v5, 0, 0, v7);
}

uint64_t sub_20DA9914C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_20DA99300;
  }

  else
  {

    v2 = sub_20DA99270;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA99270()
{
  v1 = *(v0 + 16);
  if (([*(v0 + 40) isCancelled] & 1) == 0)
  {
    [*(v0 + 40) finishWithResult_];
  }

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DA99300()
{
  v1 = v0[5];

  v2 = [v1 isCancelled];
  v3 = v0[10];
  if (v2)
  {
  }

  else
  {
    v4 = v0[5];
    v5 = sub_20DD63494();
    [v4 finishWithError_];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA993CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20D9D77C4;

  return sub_20DA99018(a1, v4, v5, v7, v9, v8, v6);
}

id static NAFutureHelper.futureOnMainActor<A>(descriptor:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8452A0, &qword_20DD96CE8);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = a2;
  v14 = v12;
  if (v13)
  {
    v15 = sub_20DD64E74();
  }

  else
  {
    v15 = 0;
  }

  [v14 setDescriptor_];

  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = v14;
  v17 = sub_20DD65114();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_20DD650F4();

  v18 = v14;

  v19 = sub_20DD650E4();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = &unk_20DD96D20;
  v20[5] = v16;
  sub_20D9D6B40(0, 0, v11, 0, 0, &unk_20DD96D30, v20);

  sub_20D9C7BC4(v11);
  return v18;
}

uint64_t sub_20DA996A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[7] = sub_20DD650F4();
  v5[8] = sub_20DD650E4();
  v7 = sub_20DD65094();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_20DA99748, v7, v6);
}

uint64_t sub_20DA99748()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = sub_20DD650E4();
  *(v0 + 104) = v6;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_20DA99874;
  v8 = *(v0 + 48);
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v0 + 16, &unk_20DD96D78, v3, sub_20DA9A5B8, v5, v6, v9, v8);
}

uint64_t sub_20DA99874()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_20DA99A48;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_20DA999AC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20DA999AC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);
  if (([v1 isCancelled] & 1) == 0)
  {
    [*(v0 + 40) finishWithResult_];
  }

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20DA99A48()
{
  v1 = v0[5];

  v2 = [v1 isCancelled];
  v3 = v0[15];
  if (v2)
  {
  }

  else
  {
    v4 = v0[5];
    v5 = sub_20DD63494();
    [v4 finishWithError_];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA99B2C(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v2[3] = sub_20DD650F4();
  v2[4] = sub_20DD650E4();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_20DA3FE3C;

  return v6();
}

id static NAFutureHelper.future(priority:descriptor:with:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a4;
  v10[5] = a5;

  v11 = sub_20DA97D40(a1, a2, a3, &unk_20DD96D40, v10);

  return v11;
}

uint64_t sub_20DA99CE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_20DA99DC8;

  return v6();
}

uint64_t sub_20DA99DC8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DA99EF8, 0, 0);
  }
}

uint64_t sub_20DA99EF8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20DA99F6C@<X0>(uint64_t result@<X0>, uint64_t *a8@<X8>)
{
  if (result)
  {
    swift_unknownObjectRetain();

    result = swift_task_create();
    *a8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA9A060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA986DC(a1, v4, v5, v6);
}

uint64_t sub_20DA9A130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9C76B4;

  return sub_20DA996A8(a1, v5, v7, v6, v4);
}

uint64_t sub_20DA9A1F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA98460(a1, v4, v5, v6);
}

uint64_t sub_20DA9A2B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D7010;

  return sub_20DA99CE0(v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for NAFutureHelper(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NAFutureHelper(_WORD *result, int a2, int a3)
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

uint64_t sub_20DA9A43C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9D77C4;

  return sub_20D9CAFD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20DA9A504(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D77C4;

  return sub_20DA99B2C(a1, v4);
}

id sub_20DA9A5BC(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v6 = *(sub_20DD650C4() - 8);
  v7 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_20DA98EAC(a1, a2, v7, v5);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA9A680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA9A6F0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D77C4;

  return sub_20D9D4460(a1, v4);
}

id sub_20DA9A7A4()
{
  v1 = *(v0 + 24);
  result = [v1 isFinished];
  if ((result & 1) == 0)
  {
    result = [v1 isCancelled];
    if ((result & 1) == 0)
    {

      return [v1 cancel];
    }
  }

  return result;
}

id _sSo15HFAccessoryItemC4HomeE14iconDescriptor3forSo011HFImageIconE0CSo11HMAccessoryC_tF_0(void *a1)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v43 - v2;
  v3 = sub_20DD641A4();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v43 - v6;
  v7 = sub_20DD645F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DD64604();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D76A20];
  v45 = objc_opt_self();
  v16 = [v45 configurationWithTextStyle:v15 scale:3];
  sub_20DD645C4();
  sub_20DD645B4();
  v48 = *(v12 + 8);
  v49 = v11;
  v48(v14, v11);
  sub_20DD645E4();
  v17 = *(v8 + 8);
  v47 = v7;
  v17(v10, v7);
  v18 = objc_allocWithZone(HFImageIconDescriptor);
  v19 = v16;
  v20 = sub_20DD64E74();
  v21 = v54;

  v22 = [v18 initWithSystemImageNamed:v20 configuration:v19];

  if ([v21 hf_isMatterOnlyAccessory] && (v23 = objc_allocWithZone(type metadata accessor for MatterAccessoryRepresentable(0)), v24 = v21, (v29 = MatterAccessoryRepresentable.init(accessory:)(v24, v25, v26, v27, v28)) != 0))
  {
    v30 = v29;
    v54 = v22;
    v31 = v51;
    sub_20D9F1C2C(v51);
    v32 = v53;
    v33 = v52;
    if ((*(v52 + 48))(v31, 1, v53) == 1)
    {

      sub_20DA9ADB0(v31);
      return v54;
    }

    else
    {
      v35 = *(v33 + 32);
      v44 = v30;
      v36 = v50;
      v35();
      (*(v33 + 16))(v46, v36, v32);
      sub_20DD645D4();
      sub_20DD645B4();
      v51 = sub_20DD645E4();
      v17(v10, v47);
      sub_20DD64174();
      v37 = sub_20DD64D64();

      v38 = [v45 configurationWithHierarchicalColor_];

      v39 = [v19 configurationByApplyingConfiguration_];
      v40 = objc_allocWithZone(HFImageIconDescriptor);
      v41 = sub_20DD64E74();

      v42 = [v40 initWithSystemImageNamed:v41 configuration:v39];

      v48(v14, v49);
      (*(v33 + 8))(v36, v53);
      return v42;
    }
  }

  else
  {
  }

  return v22;
}

uint64_t sub_20DA9ADB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA9AE18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D38, &unk_20DD96E60);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = *(v5 + 56);
  *(&v22 - v6) = a1;
  v9 = sub_20DD64674();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], v2, v9);
  v11 = (*(v10 + 88))(&v7[v8], v9);
  if (v11 == *MEMORY[0x277D17670])
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_20DD93A70;
      *(v12 + 32) = sub_20DD64EB4();
      *(v12 + 40) = v13;
LABEL_13:
      (*(v10 + 8))(&v7[v8], v9);
      return v12;
    }

    goto LABEL_19;
  }

  if (v11 == *MEMORY[0x277D17658])
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_20DD96300;
      *(v12 + 32) = sub_20DD64EB4();
      *(v12 + 40) = v14;
      *(v12 + 48) = sub_20DD64EB4();
      *(v12 + 56) = v15;
      *(v12 + 64) = sub_20DD64EB4();
      *(v12 + 72) = v16;
      *(v12 + 80) = sub_20DD64EB4();
      *(v12 + 88) = v17;
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (v11 == *MEMORY[0x277D17678])
  {
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  else if (v11 == *MEMORY[0x277D17680])
  {
    if (a1 == 1)
    {
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_20DD94280;
      *(v12 + 32) = sub_20DD64EB4();
      *(v12 + 40) = v18;
      *(v12 + 48) = sub_20DD64EB4();
      *(v12 + 56) = v19;
      goto LABEL_13;
    }
  }

  else if (v11 == *MEMORY[0x277D17668] || (v11 == *MEMORY[0x277D17660] ? (v21 = a1 == 0) : (v21 = 0), v21))
  {
    (*(v10 + 8))(&v7[v8], v9);
    return MEMORY[0x277D84F90];
  }

LABEL_19:
  sub_20D9D76EC(v7, &qword_27C844D38, &unk_20DD96E60);
  return MEMORY[0x277D84F90];
}

id ActivityEventStatusItem.__allocating_init(home:room:valueSource:targetKind:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v19 = a1;
  v20 = a3;
  v8 = sub_20DD636C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v5);
  v13 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v14 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v15 = [v14 hf_startOfDay];

  sub_20DD63674();
  (*(v9 + 32))(&v12[v13], v11, v8);
  *&v12[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_targetKind] = a4;
  type metadata accessor for ActivityLogCoordinator(0);
  swift_allocObject();
  v16 = v19;
  *&v12[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator] = ActivityLogCoordinator.init(home:targetKind:)(v16, a4);
  v21.receiver = v12;
  v21.super_class = v5;
  v17 = objc_msgSendSuper2(&v21, sel_initWithHome_room_valueSource_, v16, a2, v20);

  swift_unknownObjectRelease();
  return v17;
}

id ActivityEventStatusItem.init(home:room:valueSource:targetKind:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = a1;
  v9 = sub_20DD636C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v14 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v15 = [v14 hf_startOfDay];

  sub_20DD63674();
  (*(v10 + 32))(&v5[v13], v12, v9);
  *&v5[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_targetKind] = a4;
  type metadata accessor for ActivityLogCoordinator(0);
  swift_allocObject();
  v16 = v21;
  *&v5[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator] = ActivityLogCoordinator.init(home:targetKind:)(v16, a4);
  v17 = type metadata accessor for ActivityEventStatusItem(0);
  v22.receiver = v5;
  v22.super_class = v17;
  v18 = objc_msgSendSuper2(&v22, sel_initWithHome_room_valueSource_, v16, a2, a3);

  swift_unknownObjectRelease();
  return v18;
}

void ActivityEventStatusItem.init(home:room:valueSource:)()
{
  v1 = sub_20DD636C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v6 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v7 = [v6 hf_startOfDay];

  sub_20DD63674();
  (*(v2 + 32))(v0 + v5, v4, v1);
  sub_20DD65814();
  __break(1u);
}

id sub_20DA9B814(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v61 - v6;
  v8 = sub_20DD64C44();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    return result;
  }

  v13 = HFItemUpdateOptionFastInitialUpdate;
  v65 = HFItemUpdateOptionFastInitialUpdate;
  type metadata accessor for HFItemUpdateOption(0);
  sub_20DA972E4();
  v14 = v13;
  sub_20DD65684();
  v15 = *(a1 + 16);
  v63 = v8;
  v62 = v9;
  v61 = ObjectType;
  if (v15 && (v16 = sub_20D9CB264(v66), (v17 & 1) != 0))
  {
    sub_20D9D7174(*(a1 + 56) + 32 * v16, v67);
    sub_20D9D4298(v66);
    sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v18 = v65;
      v19 = [(__CFString *)v65 BOOLValue];

      goto LABEL_8;
    }
  }

  else
  {
    sub_20D9D4298(v66);
  }

  v19 = 0;
LABEL_8:
  v20 = [v2 home];
  v21 = [v2 home];
  v22 = [v21 currentUser];

  v23 = [v20 homeAccessControlForUser_];
  v64 = [v23 isRemoteAccessAllowed];

  v24 = [v2 home];
  v25 = [v24 homeLocationStatus];

  v26 = [v2 home];
  v27 = *&v2[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_targetKind];
  v28 = [v26 activityLogAvailableForTargetKind_];

  if (!v28)
  {
    goto LABEL_14;
  }

  v29 = [v2 home];
  v30 = [v29 isEventLogEnabled];

  v31 = v64;
  if (v25 == 1)
  {
    v31 = 1;
  }

  if (v30 && (v31 & 1) != 0)
  {
    v32 = sub_20DD65114();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v19;
    v35 = v61;
    *(v34 + 40) = v33;
    *(v34 + 48) = v35;
    v36 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
    [v36 setDescriptor_];
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = &unk_20DD96DB0;
    v37[5] = v34;
    v37[6] = v36;
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = &unk_20DD93AA0;
    v38[5] = v37;

    v39 = v36;

    sub_20D9D6B40(0, 0, v7, 0, 0, &unk_20DD95DF0, v38);

    sub_20D9D76EC(v7, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
LABEL_14:
    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v40 = qword_27C84C658;
    sub_20DD64C54();
    v41 = v2;
    v42 = sub_20DD64C24();
    v43 = sub_20DD65384();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66[0] = v45;
      *v44 = 67110146;
      v46 = [v41 home];
      v47 = [v46 activityLogAvailableForTargetKind_];

      *(v44 + 4) = v47;
      *(v44 + 8) = 1024;
      v48 = [v41 home];
      LODWORD(v46) = [v48 isEventLogEnabled];

      *(v44 + 10) = v46;
      *(v44 + 14) = 1024;
      *(v44 + 16) = v64;
      *(v44 + 20) = 1024;
      v49 = [v41 home];
      LODWORD(v48) = [v49 userSupportsActivityLog];

      *(v44 + 22) = v48;
      *(v44 + 26) = 2080;
      v50 = [v41 home];
      v51 = [v50 homeLocationStatus];

      v67[0] = v51;
      type metadata accessor for HMHomeLocation(0);
      v52 = sub_20DD64ED4();
      v54 = sub_20D9E0B38(v52, v53, v66);

      *(v44 + 28) = v54;
      _os_log_impl(&dword_20D9BF000, v42, v43, "Hiding activity status, available %{BOOL}d enabled %{BOOL}d remoteAccess %{BOOL}d. userSupportsActivityLog = %{BOOL}d. atHome %s", v44, 0x24u);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F327D10](v45, -1, -1);
      MEMORY[0x20F327D10](v44, -1, -1);
    }

    else
    {
    }

    (*(v62 + 8))(v12, v63);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D0, &unk_20DD95640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20DD93A70;
    *(inited + 32) = @"hidden";
    v56 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    v57 = @"hidden";
    v58 = sub_20DD65424();
    *(inited + 64) = v56;
    *(inited + 40) = v58;
    v59 = sub_20D9D4AFC(inited);
    swift_setDeallocating();
    sub_20D9D76EC(inited + 32, &qword_27C8452C0, &qword_20DD96DA0);
    v60 = HFItemUpdateOutcome.init(results:)(v59);
    v39 = [objc_opt_self() futureWithResult_];
  }

  return v39;
}

uint64_t sub_20DA9C044(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 512) = a4;
  *(v4 + 744) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  *(v4 + 520) = swift_task_alloc();
  v5 = sub_20DD64C44();
  *(v4 + 528) = v5;
  *(v4 + 536) = *(v5 - 8);
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_task_alloc();
  v6 = sub_20DD636C4();
  *(v4 + 600) = v6;
  v7 = *(v6 - 8);
  *(v4 + 608) = v7;
  *(v4 + 616) = *(v7 + 64);
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA9C224, 0, 0);
}

uint64_t sub_20DA9C224()
{
  v1 = *(v0 + 744);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D0, &unk_20DD95640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD95210;
  *(inited + 32) = @"title";
  v3 = @"title";
  v4 = sub_20DD64E74();
  v5 = HFLocalizedString(v4);

  v6 = sub_20DD64EB4();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = @"icon";
  v10 = objc_allocWithZone(HFImageIconDescriptor);
  v11 = @"icon";
  v12 = sub_20DD64E74();
  v13 = [v10 initWithSystemImageNamed_];

  v14 = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  *(inited + 80) = v13;
  *(inited + 104) = v14;
  *(inited + 112) = @"statusItemCategory";
  v15 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v16 = @"statusItemCategory";
  v17 = [v15 initWithUnsignedInteger_];
  v18 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  *(v0 + 640) = v18;
  *(inited + 144) = v18;
  *(inited + 120) = v17;
  v19 = sub_20D9D4AFC(inited);
  *(v0 + 648) = v19;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8452C0, &qword_20DD96DA0);
  swift_arrayDestroy();
  if (v1 == 1)
  {
    v20 = sub_20DD65424();
    *(v0 + 448) = v18;
    *(v0 + 424) = v20;
    sub_20D9D77C8((v0 + 424), (v0 + 456));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0070((v0 + 456), @"hidden", isUniquelyReferenced_nonNull_native);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v37 = HFItemUpdateOutcome.init(results:)(v19);

    v22 = *(v0 + 8);

    return v22(v37);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 656) = Strong;
    v25 = *(v0 + 632);
    if (Strong)
    {
      v26 = *(v0 + 608);
      v27 = *(v0 + 600);
      v28 = *(v0 + 592);
      v29 = *(v0 + 584);
      v30 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
      v31 = *(v26 + 16);
      *(v0 + 664) = v31;
      *(v0 + 672) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v31(v25, Strong + v30, v27);
      *(v0 + 680) = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator;
      v31(v28, v25, v27);
      v32 = *(v26 + 56);
      *(v0 + 688) = v32;
      *(v0 + 696) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v32(v28, 0, 1, v27);
      v32(v29, 1, 1, v27);
      v33 = swift_task_alloc();
      *(v0 + 704) = v33;
      *v33 = v0;
      v33[1] = sub_20DA9C7C0;
      v34 = *(v0 + 592);
      v35 = *(v0 + 584);

      return sub_20DA45D84(v34, v35);
    }

    else
    {

      [objc_opt_self() hf:37 errorWithCode:?];
      swift_willThrow();

      v36 = *(v0 + 8);

      return v36();
    }
  }
}

uint64_t sub_20DA9C7C0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 712) = a1;

  v4 = *(v3 + 592);
  v5 = *(v3 + 584);
  if (v1)
  {

    sub_20D9D76EC(v5, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v4, &unk_27C843810, &qword_20DD93F00);
    v6 = sub_20DA9CD34;
  }

  else
  {
    sub_20D9D76EC(v5, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v4, &unk_27C843810, &qword_20DD93F00);
    v6 = sub_20DA9C974;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DA9C974()
{
  v1 = *(v0 + 712);
  if (v1)
  {
    v2._rawValue = *(v0 + 648);
    v3 = sub_20DD64E74();
    v4 = HFLocalizedString(v3);

    sub_20DD64EB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D83B88];
    *(v5 + 16) = xmmword_20DD93A70;
    v7 = MEMORY[0x277D83C10];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v1;
    v8 = sub_20DD64E84();
    v10 = v9;

    *(v0 + 232) = v8;
    *(v0 + 256) = MEMORY[0x277D837D0];
    *(v0 + 240) = v10;
    sub_20D9D77C8((v0 + 232), (v0 + 264));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v2._rawValue;
    sub_20D9D0070((v0 + 264), @"description", isUniquelyReferenced_nonNull_native);
    if (v1 <= 40)
    {
      v12 = *(v0 + 664);
      v13 = *(v0 + 632);
      v14 = *(v0 + 624);
      v15 = *(v0 + 608);
      v16 = *(v0 + 600);
      v17 = *(v0 + 520);
      v18 = *(*(v0 + 656) + *(v0 + 680));
      v19 = sub_20DD65114();
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
      v12(v14, v13, v16);
      v20 = (*(v15 + 80) + 40) & ~*(v15 + 80);
      v21 = swift_allocObject();
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 4) = v18;
      (*(v15 + 32))(&v21[v20], v14, v16);
      v2._rawValue = rawValue;

      sub_20DA1CB28(0, 0, v17, &unk_20DD96E78, v21);
    }

    v22 = *(v0 + 656);
    v23 = *(v0 + 632);
    v24 = *(v0 + 608);
    v25 = *(v0 + 600);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v29 = HFItemUpdateOutcome.init(results:)(v2);

    (*(v24 + 8))(v23, v25);

    v26 = *(v0 + 8);

    return v26(v29);
  }

  else
  {
    v28 = *(*(v0 + 656) + *(v0 + 680));
    *(v0 + 720) = v28;

    return MEMORY[0x2822009F8](sub_20DA9CFF4, v28, 0);
  }
}

uint64_t sub_20DA9CD34()
{
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v1 = qword_27C84C658;
  sub_20DD64C54();
  v2 = sub_20DD64C24();
  v3 = sub_20DD65364();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20D9BF000, v2, v3, "Failed to determine today event count", v4, 2u);
    MEMORY[0x20F327D10](v4, -1, -1);
  }

  v5 = *(v0 + 656);
  v6._rawValue = *(v0 + 648);
  v7 = *(v0 + 632);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 560);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);

  (*(v11 + 8))(v10, v12);
  v13 = sub_20DD64E74();
  v14 = HFLocalizedString(v13);

  v15 = sub_20DD64EB4();
  v17 = v16;

  *(v0 + 192) = MEMORY[0x277D837D0];
  *(v0 + 168) = v15;
  *(v0 + 176) = v17;
  sub_20D9D77C8((v0 + 168), (v0 + 200));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070((v0 + 200), @"description", isUniquelyReferenced_nonNull_native);
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  v21 = HFItemUpdateOutcome.init(results:)(v6);

  (*(v8 + 8))(v7, v9);

  v19 = *(v0 + 8);

  return v19(v21);
}

uint64_t sub_20DA9CFF4()
{
  v1 = v0[86];
  v2 = v0[75];
  v3 = v0[71];
  v1(v0[72], 1, 1, v2);
  v1(v3, 1, 1, v2);
  v4 = swift_task_alloc();
  v0[91] = v4;
  *v4 = v0;
  v4[1] = sub_20DA9D0D8;
  v5 = v0[72];
  v6 = v0[71];

  return sub_20DA3B25C(v5, v6, 1, 0);
}

uint64_t sub_20DA9D0D8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = v4[90];
    v6 = v4[72];
    v7 = v4[71];

    sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v6, &unk_27C843810, &qword_20DD93F00);
    v8 = sub_20DA9D780;
    v9 = v5;
  }

  else
  {
    v10 = v4[72];
    v11 = v4[71];
    v4[92] = a1;
    sub_20D9D76EC(v11, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v10, &unk_27C843810, &qword_20DD93F00);
    v8 = sub_20DA9D280;
    v9 = 0;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_20DA9D280()
{
  if (*(v0 + 736) <= 0)
  {
    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v26 = qword_27C84C658;
    sub_20DD64C54();
    v27 = sub_20DD64C24();
    v28 = sub_20DD65384();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20D9BF000, v27, v28, "Hiding activity status, no events found", v29, 2u);
      MEMORY[0x20F327D10](v29, -1, -1);
    }

    v30 = *(v0 + 656);
    v31._rawValue = *(v0 + 648);
    v32 = *(v0 + 640);
    v42 = *(v0 + 632);
    v33 = *(v0 + 608);
    v34 = *(v0 + 600);
    v35 = *(v0 + 544);
    v36 = *(v0 + 536);
    v37 = *(v0 + 528);

    (*(v36 + 8))(v35, v37);
    v38 = sub_20DD65424();
    *(v0 + 384) = v32;
    *(v0 + 360) = v38;
    sub_20D9D77C8((v0 + 360), (v0 + 392));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0070((v0 + 392), @"hidden", isUniquelyReferenced_nonNull_native);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v43 = HFItemUpdateOutcome.init(results:)(v31);

    (*(v33 + 8))(v42, v34);
  }

  else
  {
    v1 = *(v0 + 712);
    v2._rawValue = *(v0 + 648);
    v3 = sub_20DD64E74();
    v4 = HFLocalizedString(v3);

    sub_20DD64EB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D83B88];
    *(v5 + 16) = xmmword_20DD93A70;
    v7 = MEMORY[0x277D83C10];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v1;
    v8 = sub_20DD64E84();
    v10 = v9;

    *(v0 + 232) = v8;
    *(v0 + 256) = MEMORY[0x277D837D0];
    *(v0 + 240) = v10;
    sub_20D9D77C8((v0 + 232), (v0 + 264));
    v11 = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v2._rawValue;
    sub_20D9D0070((v0 + 264), @"description", v11);
    if (v1 <= 40)
    {
      v12 = *(v0 + 664);
      v13 = *(v0 + 632);
      v14 = *(v0 + 624);
      v15 = *(v0 + 608);
      v16 = *(v0 + 600);
      v17 = *(v0 + 520);
      v18 = *(*(v0 + 656) + *(v0 + 680));
      v19 = sub_20DD65114();
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
      v12(v14, v13, v16);
      v20 = (*(v15 + 80) + 40) & ~*(v15 + 80);
      v21 = swift_allocObject();
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 4) = v18;
      (*(v15 + 32))(&v21[v20], v14, v16);
      v2._rawValue = rawValue;

      sub_20DA1CB28(0, 0, v17, &unk_20DD96E78, v21);
    }

    v22 = *(v0 + 656);
    v23 = *(v0 + 632);
    v24 = *(v0 + 608);
    v25 = *(v0 + 600);
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v43 = HFItemUpdateOutcome.init(results:)(v2);

    (*(v24 + 8))(v23, v25);
  }

  v40 = *(v0 + 8);

  return v40(v43);
}

uint64_t sub_20DA9D79C()
{
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v1 = qword_27C84C658;
  sub_20DD64C54();
  v2 = sub_20DD64C24();
  v3 = sub_20DD65364();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20D9BF000, v2, v3, "Failed to determine if any events exist", v4, 2u);
    MEMORY[0x20F327D10](v4, -1, -1);
  }

  v5 = *(v0 + 656);
  v6._rawValue = *(v0 + 648);
  v7 = *(v0 + 632);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 552);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);

  (*(v11 + 8))(v10, v12);
  v13 = sub_20DD64E74();
  v14 = HFLocalizedString(v13);

  v15 = sub_20DD64EB4();
  v17 = v16;

  *(v0 + 320) = MEMORY[0x277D837D0];
  *(v0 + 296) = v15;
  *(v0 + 304) = v17;
  sub_20D9D77C8((v0 + 296), (v0 + 328));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070((v0 + 328), @"description", isUniquelyReferenced_nonNull_native);
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  v21 = HFItemUpdateOutcome.init(results:)(v6);

  (*(v8 + 8))(v7, v9);

  v19 = *(v0 + 8);

  return v19(v21);
}

uint64_t sub_20DA9DA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_20DA9DAF8;

  return sub_20DA3CFC4(a5);
}

uint64_t sub_20DA9DAF8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_20DA9DBF8, 0, 0);
}

uint64_t HMHome.hasCompatibleActivityLogAccessories(targetKind:)(uint64_t a1)
{
  v2 = v1;
  v92 = sub_20DD64674();
  v4 = *(v92 - 8);
  v5 = MEMORY[0x28223BE20](v92);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v86 - v8;
  if (a1 != 1)
  {
    v89 = v2;
    if (a1)
    {
      goto LABEL_70;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844620, &qword_20DD955A0);
    v18 = *(v4 + 72);
    v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v88 = swift_allocObject();
    v20 = v88 + v19;
    v21 = *(v4 + 104);
    v22 = v92;
    v21(v88 + v19, *MEMORY[0x277D17670], v92);
    v23 = *MEMORY[0x277D17658];
    v90 = v18;
    v21(v20 + v18, v23, v22);
    v21(v20 + 2 * v18, *MEMORY[0x277D17678], v22);
    v25 = *(v4 + 16);
    v24 = v4 + 16;
    v91 = v25;
    v26 = (v24 - 8);
    v27 = MEMORY[0x277D84F90];
    v28 = 3;
    v87 = v20;
    while (1)
    {
      v29 = v92;
      v30 = v24;
      v91(v9, v20, v92);
      v31 = sub_20DA9AE18(0);
      (*v26)(v9, v29);
      v32 = *(v31 + 16);
      v33 = *(v27 + 2);
      v34 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v34 <= *(v27 + 3) >> 1)
      {
        if (!*(v31 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v33 <= v34)
        {
          v36 = v33 + v32;
        }

        else
        {
          v36 = v33;
        }

        v27 = sub_20D9E0040(isUniquelyReferenced_nonNull_native, v36, 1, v27);
        if (!*(v31 + 16))
        {
LABEL_6:

          if (v32)
          {
            goto LABEL_65;
          }

          goto LABEL_7;
        }
      }

      if ((*(v27 + 3) >> 1) - *(v27 + 2) < v32)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v32)
      {
        v37 = *(v27 + 2);
        v38 = __OFADD__(v37, v32);
        v39 = v37 + v32;
        if (v38)
        {
          goto LABEL_69;
        }

        *(v27 + 2) = v39;
      }

LABEL_7:
      v20 += v90;
      --v28;
      v24 = v30;
      if (!v28)
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v40 = [v89 hf_allVisibleServices];
        v41 = sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
        sub_20DA6C1EC();
        v42 = sub_20DD651E4();

        v87 = v41;
        v88 = v42;
        if ((v42 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_20DD65564();
          sub_20DD65284();
          v42 = v96;
          v43 = v97;
          v44 = v98;
          v45 = v99;
          v46 = v100;
        }

        else
        {
          v66 = -1 << *(v42 + 32);
          v43 = v42 + 56;
          v44 = ~v66;
          v67 = -v66;
          if (v67 < 64)
          {
            v68 = ~(-1 << v67);
          }

          else
          {
            v68 = -1;
          }

          v46 = v68 & *(v42 + 56);

          v45 = 0;
        }

        v92 = 0;
        v86 = v44;
        v69 = (v44 + 64) >> 6;
        if (v42 < 0)
        {
          goto LABEL_54;
        }

LABEL_48:
        v70 = v45;
        v71 = v46;
        v72 = v45;
        if (v46)
        {
LABEL_52:
          v73 = (v71 - 1) & v71;
          v74 = *(*(v42 + 48) + ((v72 << 9) | (8 * __clz(__rbit64(v71)))));
          if (!v74)
          {
            goto LABEL_59;
          }

          while (1)
          {
            v91 = v74;
            v76 = [v74 serviceType];
            v77 = sub_20DD64EB4();
            v79 = v78;

            v94 = v77;
            v95 = v79;
            MEMORY[0x28223BE20](v80);
            v84 = &v94;
            v81 = v92;
            LOBYTE(v77) = sub_20D9DFE38(sub_20DA9F064, (&v86 - 4), v27);

            if (v77)
            {
              break;
            }

            v92 = v81;

            v45 = v72;
            v46 = v73;
            if ((v42 & 0x8000000000000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_54:
            v75 = sub_20DD655F4();
            if (v75)
            {
              v93 = v75;
              swift_dynamicCast();
              v74 = v94;
              v72 = v45;
              v73 = v46;
              if (v94)
              {
                continue;
              }
            }

            goto LABEL_59;
          }

          sub_20D9C51CC(v42);

LABEL_63:
          v82 = 1;
        }

        else
        {
          while (1)
          {
            v72 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_67;
            }

            if (v72 >= v69)
            {
              break;
            }

            v71 = *(v43 + 8 * v72);
            ++v70;
            if (v71)
            {
              goto LABEL_52;
            }
          }

LABEL_59:

          v65 = v42;
LABEL_60:
          sub_20D9C51CC(v65);
          v82 = 0;
        }

        return v82;
      }
    }
  }

  v10 = v92;
  (*(v4 + 104))(v7, *MEMORY[0x277D17680], v92);
  v91 = sub_20DA9AE18(1);
  (*(v4 + 8))(v7, v10);
  v11 = [v2 hf_allVisibleServices];
  v12 = sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  sub_20DA6C1EC();
  v13 = sub_20DD651E4();

  v87 = v12;
  v88 = v13;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20DD65284();
    v13 = v96;
    v14 = v97;
    v15 = v98;
    v16 = v99;
    v17 = v100;
  }

  else
  {
    v47 = -1 << *(v13 + 32);
    v14 = v13 + 56;
    v15 = ~v47;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v17 = v49 & *(v13 + 56);

    v16 = 0;
  }

  v86 = v15;
  v50 = (v15 + 64) >> 6;
  v92 = v13;
  while (v13 < 0)
  {
    v56 = sub_20DD655F4();
    if (!v56 || (v93 = v56, swift_dynamicCast(), v55 = v94, v53 = v16, v54 = v17, !v94))
    {
LABEL_42:

      v65 = v13;
      goto LABEL_60;
    }

LABEL_38:
    v57 = [v55 serviceType];
    v58 = sub_20DD64EB4();
    v60 = v59;

    v94 = v58;
    v95 = v60;
    MEMORY[0x28223BE20](v61);
    v84 = &v94;
    LOBYTE(v57) = sub_20D9DFE38(sub_20DA83EFC, (&v86 - 4), v91);

    if (v57)
    {
      v62 = [v55 accessory];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 supportsAdaptiveTemperatureAutomations];

        if (v64)
        {

          sub_20D9C51CC(v92);

          goto LABEL_63;
        }
      }
    }

    v16 = v53;
    v17 = v54;
    v13 = v92;
  }

  v51 = v16;
  v52 = v17;
  v53 = v16;
  if (v17)
  {
LABEL_34:
    v54 = (v52 - 1) & v52;
    v55 = *(*(v13 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v52)))));
    if (!v55)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v50)
    {
      goto LABEL_42;
    }

    v52 = *(v14 + 8 * v53);
    ++v51;
    if (v52)
    {
      goto LABEL_34;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  v85 = 0;
  v84 = 144;
  result = sub_20DD65814();
  __break(1u);
  return result;
}

uint64_t sub_20DA9E618(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = HMHome.hasCompatibleActivityLogAccessories(targetKind:)(a3);

  return a3 & 1;
}

Swift::Bool __swiftcall HMHome.hasActivityLogPrerequisites()()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = [v0 homeManager];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 hasOptedToHH2];

  return v2;
}

id sub_20DA9E6D8()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = [v0 homeManager];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 hasOptedToHH2];

  return v2;
}

Swift::Bool __swiftcall HMHome.userSupportsActivityLog()()
{
  v1 = [v0 currentUser];
  v2 = [v0 hf:v1 userIsRestrictedGuest:?];

  return v2 ^ 1;
}

uint64_t sub_20DA9E7B4(void *a1)
{
  v1 = a1;
  v2 = [v1 currentUser];
  v3 = [v1 hf:v2 userIsRestrictedGuest:?];

  return v3 ^ 1;
}

id HMHome.activityLogAvailable(targetKind:)(uint64_t a1)
{
  result = [v1 hasCompatibleActivityLogAccessoriesForTargetKind_];
  if (result)
  {
    result = [v1 hasActivityLogPrerequisites];
    if (result)
    {
      return [v1 userSupportsActivityLog];
    }
  }

  return result;
}

id sub_20DA9E86C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if ([v4 hasCompatibleActivityLogAccessoriesForTargetKind_] && objc_msgSend(v4, sel_hasActivityLogPrerequisites))
  {
    v5 = [v4 userSupportsActivityLog];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id SecurityActivityEventStatusItem.init(home:room:valueSource:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_20DA9EC74(a1, a2, a3, 0);

  swift_unknownObjectRelease();
  return v5;
}

id sub_20DA9E980(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s4Home23ActivityEventStatusItemC4home4room11valueSourceACSo6HMHomeC_So6HMRoomCSgSo021HFCharacteristicValueI0_ptcfC_0(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithHome:a1 room:a2 valueSource:a3];

  swift_unknownObjectRelease();
  return v6;
}

id ClimateActivityEventStatusItem.init(home:room:valueSource:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_20DA9EC74(a1, a2, a3, 1);

  swift_unknownObjectRelease();
  return v5;
}

id sub_20DA9EA80(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = sub_20DA9EC74(v9, a4, a5, a6);

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_20DA9EB4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20D9D7010;

  return sub_20DA9C044(v2, v3, v4, v5);
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

id sub_20DA9EC74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v20 = a3;
  v9 = sub_20DD636C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v14 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v15 = [v14 hf_startOfDay];

  sub_20DD63674();
  (*(v10 + 32))(&v6[v13], v12, v9);
  *&v6[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_targetKind] = a4;
  type metadata accessor for ActivityLogCoordinator(0);
  swift_allocObject();
  v16 = a1;
  *&v6[OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator] = ActivityLogCoordinator.init(home:targetKind:)(v16, a4);
  v17 = type metadata accessor for ActivityEventStatusItem(0);
  v21.receiver = v6;
  v21.super_class = v17;
  return objc_msgSendSuper2(&v21, sel_initWithHome_room_valueSource_, v16, a2, v20);
}

uint64_t sub_20DA9EE44(uint64_t a1)
{
  result = sub_20DD636C4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20DA9EF64(uint64_t a1)
{
  v4 = *(sub_20DD636C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9C76B4;

  return sub_20DA9DA58(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_20DA9F0A4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a2;
  v6 = sub_20DD64294();
  v7 = MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v40 - v10;
  result = MEMORY[0x28223BE20](v9);
  v50 = a3;
  v51 = &v40 - v13;
  v14 = 0;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v48 = v12;
  v49 = v12 + 32;
  v43 = (v12 + 8);
  v44 = v12 + 16;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

    v23 = v4;
LABEL_10:
    v24 = *(v50 + 56);
    v25 = v48;
    v42 = *(v48 + 72);
    v26 = v45;
    (*(v48 + 16))(v45, v24 + v42 * (__clz(__rbit64(v20)) | (v14 << 6)), v6);
    v27 = *(v25 + 32);
    v28 = v6;
    v29 = v51;
    v30 = v28;
    v27(v51, v26);
    v31 = v46(v29);
    v4 = v23;
    if (v23)
    {
      (*v43)(v51, v30);
      v39 = v41;

      return v39;
    }

    v20 &= v20 - 1;
    if (v31)
    {
      v6 = v30;
      (v27)(v40, v51, v30);
      v32 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20DA4B10C(0, *(v32 + 16) + 1, 1);
        v6 = v30;
        v32 = v52;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v38 = v35 + 1;
        v41 = v35;
        sub_20DA4B10C((v34 > 1), v35 + 1, 1);
        v36 = v38;
        v35 = v41;
        v6 = v30;
        v32 = v52;
      }

      *(v32 + 16) = v36;
      v37 = *(v48 + 80);
      v41 = v32;
      result = (v27)(v32 + ((v37 + 32) & ~v37) + v35 * v42, v40, v6);
    }

    else
    {
      v6 = v30;
      result = (*v43)(v51, v30);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v41;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      v23 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA9F464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[86] = a3;
  v4 = sub_20DD641A4();
  v3[87] = v4;
  v3[88] = *(v4 - 8);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v5 = sub_20DD64294();
  v3[91] = v5;
  v3[92] = *(v5 - 8);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v6 = sub_20DD63744();
  v3[96] = v6;
  v3[97] = *(v6 - 8);
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v7 = sub_20DD63E94();
  v3[100] = v7;
  v3[101] = *(v7 - 8);
  v3[102] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845330, &qword_20DD96E98);
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v8 = sub_20DD63CA4();
  v3[105] = v8;
  v3[106] = *(v8 - 8);
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v9 = sub_20DD64354();
  v3[110] = v9;
  v3[111] = *(v9 - 8);
  v3[112] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA9F77C, 0, 0);
}

uint64_t sub_20DA9F77C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[113] = Strong;
  if (Strong)
  {
    v0[114] = sub_20DD63C84();
    v0[115] = sub_20DD650F4();
    v0[116] = sub_20DD650E4();
    v3 = sub_20DD65094();

    return MEMORY[0x2822009F8](sub_20DA9F994, v3, v2);
  }

  else
  {
    [objc_opt_self() hf:37 errorWithCode:?];
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20DA9F994()
{

  *(v0 + 936) = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA9FA08, 0, 0);
}

uint64_t sub_20DA9FA08(__n128 a1)
{
  *(v1 + 944) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA9FA94, v3, v2);
}

uint64_t sub_20DA9FA94()
{
  v1 = *(v0 + 936);

  sub_20DD63BF4();

  return MEMORY[0x2822009F8](sub_20DA9FB10, 0, 0);
}

uint64_t sub_20DA9FB10(__n128 a1)
{
  *(v1 + 952) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA9FB9C, v3, v2);
}

uint64_t sub_20DA9FB9C()
{

  *(v0 + 960) = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA9FC10, 0, 0);
}

uint64_t sub_20DA9FC10(__n128 a1)
{
  *(v1 + 968) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA9FC9C, v3, v2);
}

uint64_t sub_20DA9FC9C()
{
  v1 = *(v0 + 960);

  sub_20DD63BE4();

  return MEMORY[0x2822009F8](sub_20DA9FD18, 0, 0);
}

uint64_t sub_20DA9FD18()
{
  v1 = v0[106];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[97];
  v6 = sub_20DD63E54();
  v7 = sub_20DAA1774(v6);
  (*(v3 + 8))(v2, v4);
  v8 = v7 + 56;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 56);
  v12 = (63 - v10) >> 6;
  v143 = (v1 + 16);
  v145 = (v1 + 32);
  v138 = (v5 + 8);
  v140 = v1;
  v141 = (v1 + 8);
  v146 = v7;

  v13 = 0;
  v153 = v0;
  for (i = v7 + 56; ; v8 = i)
  {
    if (!v11)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          v34 = 1;
          goto LABEL_17;
        }

        v11 = *(v8 + 8 * v14);
        ++v13;
        if (v11)
        {
          v13 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      return MEMORY[0x2821700F0]();
    }

LABEL_11:
    v150 = v0[113];
    v15 = v0[108];
    v16 = v0[107];
    v17 = v0[105];
    v18 = v0[99];
    v19 = v0[96];
    (*(v140 + 16))(v15, *(v146 + 48) + *(v140 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v17);
    v20 = *(v140 + 32);
    v20(v16, v15, v17);
    sub_20DD63C94();
    v148 = sub_20DD636E4();
    v22 = v21;
    v23 = *v138;
    (*v138)(v18, v19);
    v24 = [v150 room];
    if (!v24)
    {

      goto LABEL_5;
    }

    v151 = v20;
    v25 = v0[98];
    v26 = v0[96];
    v27 = v22;
    v28 = v24;
    v29 = [v24 uniqueIdentifier];

    sub_20DD63714();
    v30 = sub_20DD636E4();
    v32 = v31;
    v23(v25, v26);
    if (v148 == v30 && v27 == v32)
    {
      break;
    }

    v33 = sub_20DD65974();

    if (v33)
    {
      goto LABEL_50;
    }

LABEL_5:
    v11 &= v11 - 1;
    v0 = v153;
    (*v141)(v153[107], v153[105]);
  }

LABEL_50:

  v0 = v153;
  v151(v153[104], v153[107], v153[105]);
  v34 = 0;
LABEL_17:
  v35 = v0[106];
  v36 = v0[105];
  v37 = v0[104];
  v38 = *(v35 + 56);
  v38(v37, v34, 1, v36);

  if ((*(v35 + 48))(v37, 1, v36) == 1)
  {
    v39 = v0[105];
    v40 = v0[103];
    v144 = v0[92];
    v132 = v0[88];
    sub_20D9D76EC(v0[104], &qword_27C845330, &qword_20DD96E98);
    v38(v40, 1, 1, v39);
    v41 = sub_20DD642F4();
    v43 = v42;
    sub_20D9D76EC(v40, &qword_27C845330, &qword_20DD96E98);
    v153[5] = MEMORY[0x277D837D0];
    v153[2] = v41;
    v153[3] = v43;
    sub_20D9D77C8(v153 + 1, v153 + 3);
    v44 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0070(v153 + 3, @"title", isUniquelyReferenced_nonNull_native);
    v46 = v44;
    v38(v40, 1, 1, v39);
    v47 = sub_20DD64314();
    v49 = v48;
    sub_20D9D76EC(v40, &qword_27C845330, &qword_20DD96E98);
    v153[13] = MEMORY[0x277D837D0];
    v153[10] = v47;
    v153[11] = v49;
    sub_20D9D77C8(v153 + 5, v153 + 7);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0070(v153 + 7, @"description", v50);
    v38(v40, 1, 1, v39);
    LOBYTE(v47) = sub_20DD64304();
    sub_20D9D76EC(v40, &qword_27C845330, &qword_20DD96E98);
    v153[21] = MEMORY[0x277D839B0];
    *(v153 + 144) = v47 & 1;
    sub_20D9D77C8(v153 + 9, v153 + 11);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v46;
    v52 = v153;
    sub_20D9D0070(v153 + 11, @"hidden", v51);
    v53 = v154;
    v54 = sub_20DD642E4();
    v55 = 0;
    v57 = v54 + 64;
    v56 = *(v54 + 64);
    v142 = v54;
    v58 = -1 << *(v54 + 32);
    if (-v58 < 64)
    {
      v59 = ~(-1 << -v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & v56;
    v61 = (63 - v58) >> 6;
    v135 = *MEMORY[0x277D15EE8];
    v149 = (v132 + 8);
    v131 = (v144 + 32);
    v133 = MEMORY[0x277D84F90];
    v137 = v61;
    v139 = v54 + 64;
    if ((v59 & v56) != 0)
    {
      do
      {
LABEL_28:
        while (1)
        {
          v67 = v52[90];
          v68 = v52[87];
          v69 = __clz(__rbit64(v60));
          v60 &= v60 - 1;
          v134 = *(v144 + 72);
          (*(v144 + 16))(v52[95], *(v142 + 56) + v134 * (v69 | (v55 << 6)), v52[91]);
          v70 = sub_20DD64214();
          (*(v132 + 104))(v67, v135, v68);
          v152 = v70;
          if (*(v70 + 16))
          {
            sub_20DAA2AB0(&qword_27C8435C0, MEMORY[0x277D15F40], MEMORY[0x277D15F50]);
            v71 = sub_20DD64E24();
            v72 = -1 << *(v70 + 32);
            v73 = v71 & ~v72;
            v147 = v70 + 56;
            if ((*(v70 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
            {
              break;
            }
          }

LABEL_23:
          v62 = v52[95];
          v63 = v52[91];
          v64 = v52[90];
          v65 = v52[87];

          (*v149)(v64, v65);
          (*(v144 + 8))(v62, v63);
          v57 = v139;
          v53 = v154;
          v61 = v137;
          if (!v60)
          {
            goto LABEL_24;
          }
        }

        v74 = ~v72;
        v75 = *(v132 + 72);
        v76 = *(v132 + 16);
        while (1)
        {
          v77 = v52[89];
          v78 = v52[87];
          v76(v77, *(v152 + 48) + v73 * v75, v78);
          sub_20DAA2AB0(&qword_27C8435D0, MEMORY[0x277D15F40], MEMORY[0x277D15F60]);
          v79 = sub_20DD64E64();
          v80 = *v149;
          (*v149)(v77, v78);
          if (v79)
          {
            break;
          }

          v73 = (v73 + 1) & v74;
          v52 = v153;
          if (((*(v147 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v81 = v153[95];
        v82 = v153[94];
        v83 = v153[91];
        v84 = v153[90];
        v85 = v153[87];

        v80(v84, v85);
        v86 = *v131;
        (*v131)(v82, v81, v83);
        v87 = v133;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20DA4B10C(0, *(v133 + 16) + 1, 1);
          v87 = v133;
        }

        v57 = v139;
        v53 = v154;
        v61 = v137;
        v89 = *(v87 + 16);
        v88 = *(v87 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_20DA4B10C((v88 > 1), v89 + 1, 1);
          v87 = v133;
        }

        v90 = v153[94];
        v91 = v153[91];
        *(v87 + 16) = v89 + 1;
        v52 = v153;
        v133 = v87;
        v86(v87 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + v89 * v134, v90, v91);
      }

      while (v60);
    }

LABEL_24:
    while (1)
    {
      v66 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_52;
      }

      if (v66 >= v61)
      {

        v109 = v133;
        goto LABEL_42;
      }

      v60 = *(v57 + 8 * v66);
      ++v55;
      if (v60)
      {
        v55 = v66;
        goto LABEL_28;
      }
    }
  }

  v92 = v153[109];
  v93 = v153[105];
  v94 = v153[103];
  (*v145)(v92, v153[104], v93);
  v95 = *v143;
  (*v143)(v94, v92, v93);
  v38(v94, 0, 1, v93);
  v96 = sub_20DD642F4();
  v98 = v97;
  sub_20D9D76EC(v94, &qword_27C845330, &qword_20DD96E98);
  v153[61] = MEMORY[0x277D837D0];
  v153[58] = v96;
  v153[59] = v98;
  sub_20D9D77C8(v153 + 29, v153 + 31);
  v99 = MEMORY[0x277D84F98];
  v100 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v153 + 31, @"title", v100);
  v101 = v99;
  v95(v94, v92, v93);
  v38(v94, 0, 1, v93);
  v102 = sub_20DD64314();
  v104 = v103;
  sub_20D9D76EC(v94, &qword_27C845330, &qword_20DD96E98);
  v153[69] = MEMORY[0x277D837D0];
  v153[66] = v102;
  v153[67] = v104;
  sub_20D9D77C8(v153 + 33, v153 + 35);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v153 + 35, @"description", v105);
  v95(v94, v92, v93);
  v38(v94, 0, 1, v93);
  LOBYTE(v102) = sub_20DD64304();
  sub_20D9D76EC(v94, &qword_27C845330, &qword_20DD96E98);
  v153[77] = MEMORY[0x277D839B0];
  *(v153 + 592) = v102 & 1;
  sub_20D9D77C8(v153 + 37, v153 + 39);
  v106 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v153 + 39, @"hidden", v106);
  v53 = v101;
  v107 = sub_20DD642E4();
  v108 = swift_task_alloc();
  *(v108 + 16) = v92;
  v109 = sub_20DA9F0A4(sub_20DAA2A90, v108, v107);

  v52 = v153;
  (*v141)(v92, v93);
LABEL_42:
  v52[123] = v109;
  v52[122] = v53;
  v52[85] = MEMORY[0x277D84FA0];
  v110 = *(v109 + 16);
  v52[124] = v110;
  if (v110)
  {
    v111 = v52[92];
    v112 = *(v111 + 16);
    v111 += 16;
    v113 = *(v111 + 64);
    *(v52 + 260) = v113;
    v52[125] = *(v111 + 56);
    v52[126] = v112;
    v52[127] = 0;
    v112(v52[93], v109 + ((v113 + 32) & ~v113), v52[91]);
    v114 = swift_task_alloc();
    v52[128] = v114;
    *v114 = v52;
    v114[1] = sub_20DAA0E04;

    return MEMORY[0x2821700F0]();
  }

  v115._rawValue = v52[122];
  v116 = v52[113];
  v117 = v52;
  v118 = v52[112];
  v119 = v117[111];
  v120 = v117[110];
  v121 = v117[85];
  v117[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845338, &qword_20DD96EA0);
  v117[26] = v121;
  sub_20D9D77C8(v117 + 13, v117 + 15);
  v122 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v117 + 15, @"representedHomeKitObjects", v122);
  v123 = [objc_allocWithZone(HFImageIconDescriptor) initWithSystemImageNamed_];
  v117[37] = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  v117[34] = v123;
  sub_20D9D77C8(v117 + 17, v117 + 19);
  v124 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v117 + 19, @"icon", v124);
  v117[45] = MEMORY[0x277D839B0];
  *(v117 + 336) = 1;
  sub_20D9D77C8(v117 + 21, v117 + 23);
  v125 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v117 + 23, @"dependentOnMatterSnapshot", v125);
  v126 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v117[53] = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  v117[50] = v126;
  sub_20D9D77C8(v117 + 25, v117 + 27);
  v127 = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070(v117 + 27, @"state", v127);
  sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
  v128 = HFItemUpdateOutcome.init(results:)(v115);

  (*(v119 + 8))(v118, v120);

  v129 = v117[1];

  return v129(v128);
}

uint64_t sub_20DAA0E04(uint64_t a1)
{
  v2 = *(*v1 + 744);
  v3 = *(*v1 + 736);
  v4 = *(*v1 + 728);
  *(*v1 + 1032) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_20DAA0F64, 0, 0);
}

uint64_t sub_20DAA0F64()
{
  v24 = v0;
  v1 = *(v0 + 1032);
  if (v1)
  {
    sub_20D9E3550(&v23, v1);
  }

  v2 = *(v0 + 1016) + 1;
  if (v2 == *(v0 + 992))
  {

    v3 = *(v0 + 976);
    v4 = *(v0 + 904);
    v5 = *(v0 + 896);
    v6 = *(v0 + 888);
    v7 = *(v0 + 880);
    v8 = *(v0 + 680);
    *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845338, &qword_20DD96EA0);
    *(v0 + 208) = v8;
    sub_20D9D77C8((v0 + 208), (v0 + 240));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v3;
    sub_20D9D0070((v0 + 240), @"representedHomeKitObjects", isUniquelyReferenced_nonNull_native);
    v10 = v23;
    v11 = [objc_allocWithZone(HFImageIconDescriptor) initWithSystemImageNamed_];
    *(v0 + 296) = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
    *(v0 + 272) = v11;
    sub_20D9D77C8((v0 + 272), (v0 + 304));
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v10;
    sub_20D9D0070((v0 + 304), @"icon", v12);
    v13 = v23;
    *(v0 + 360) = MEMORY[0x277D839B0];
    *(v0 + 336) = 1;
    sub_20D9D77C8((v0 + 336), (v0 + 368));
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v13;
    sub_20D9D0070((v0 + 368), @"dependentOnMatterSnapshot", v14);
    v15 = v23;
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(v0 + 424) = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    *(v0 + 400) = v16;
    sub_20D9D77C8((v0 + 400), (v0 + 432));
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v15;
    sub_20D9D0070((v0 + 432), @"state", v17);
    v18._rawValue = v23;
    sub_20D9D7510(0, &unk_27C8433C0, off_277DEFC30);
    v19 = HFItemUpdateOutcome.init(results:)(v18);

    (*(v6 + 8))(v5, v7);

    v20 = *(v0 + 8);

    return v20(v19);
  }

  else
  {
    *(v0 + 1016) = v2;
    (*(v0 + 1008))(*(v0 + 744), *(v0 + 984) + ((*(v0 + 1040) + 32) & ~*(v0 + 1040)) + *(v0 + 1000) * v2, *(v0 + 728));
    v22 = swift_task_alloc();
    *(v0 + 1024) = v22;
    *v22 = v0;
    v22[1] = sub_20DAA0E04;

    return MEMORY[0x2821700F0]();
  }
}

uint64_t sub_20DAA13A0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = sub_20DD63744();
  v2 = *(v19 - 8);
  v3 = MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_20DD641A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DD64214();
  (*(v9 + 104))(v11, *MEMORY[0x277D15EE8], v8);
  v13 = sub_20D9EFDCC(v11, v12);

  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    sub_20DD64264();
    sub_20DD63C94();
    v14 = sub_20DD63704();
    v15 = *(v2 + 8);
    v16 = v19;
    v15(v5, v19);
    v15(v7, v16);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

id HFVacuumStatusItem.init(home:room:valueSource:)(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHome:a1 room:a2 valueSource:a3];

  swift_unknownObjectRelease();
  return v5;
}

{
  v7.super_class = HFVacuumStatusItem;
  v5 = objc_msgSendSuper2(&v7, sel_initWithHome_room_valueSource_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_20DAA1774(uint64_t a1)
{
  v2 = sub_20DD63CA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480], MEMORY[0x277D15498]);
  result = MEMORY[0x20F326190](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_20DAA1988(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DAA1988(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD63CA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480], MEMORY[0x277D15498]);
  v33 = a2;
  v11 = sub_20DD64E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20DAA2AB0(&qword_27C845348, MEMORY[0x277D15480], MEMORY[0x277D154A0]);
      v21 = sub_20DD64E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20DAA1C68(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20DAA1C68(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_20DD63CA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_20DAA2454(v12);
    }

    else
    {
      sub_20DAA2138(v12);
    }

    v13 = *v3;
    sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480], MEMORY[0x277D15498]);
    v14 = sub_20DD64E24();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_20DAA2AB0(&qword_27C845348, MEMORY[0x277D15480], MEMORY[0x277D154A0]);
        v22 = sub_20DD64E64();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_20DAA1F00();
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void *sub_20DAA1F00()
{
  v1 = v0;
  v2 = sub_20DD63CA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845350, &qword_20DD96EA8);
  v6 = *v0;
  v7 = sub_20DD656A4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_20DAA2138(uint64_t a1)
{
  v2 = v1;
  v33 = sub_20DD63CA4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845350, &qword_20DD96EA8);
  v7 = sub_20DD656B4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480], MEMORY[0x277D15498]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_20DAA2454(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20DD63CA4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C845350, &qword_20DD96EA8);
  result = sub_20DD656B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_20DAA2AB0(&qword_27C845340, MEMORY[0x277D15480], MEMORY[0x277D15498]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

id _sSo18HFVacuumStatusItemC4HomeE16_subclass_update7optionsSo8NAFutureCySo19HFItemUpdateOutcomeCGSgSDys11AnyHashableVypGSg_tF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_20DD65114();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
  [v6 setDescriptor_];
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = &unk_20DD96E90;
  v7[5] = v5;
  v7[6] = v6;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_20DD93AA0;
  v8[5] = v7;

  v9 = v6;

  sub_20D9D6B40(0, 0, v2, 0, 0, &unk_20DD95DF0, v8);

  sub_20D9D76EC(v2, &qword_27C8443F0, &qword_20DD93820);
  return v9;
}

uint64_t sub_20DAA29E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D7010;

  return sub_20DA9F464(v2, v3, v4);
}

uint64_t sub_20DAA2AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id HFHomeEnergyManager.__allocating_init(home:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  type metadata accessor for RealUtilityServices();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(type metadata accessor for HFHomeEnergyManager());
  v7 = sub_20DAB3898(a1, v4, v5, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id HFHomeEnergyManager.init(home:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  type metadata accessor for RealUtilityServices();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(type metadata accessor for HFHomeEnergyManager());
  v5 = sub_20DAB3898(a1, v2, v3, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id HFHomeEnergyManager.__allocating_init(home:geocoder:utilityService:)(uint64_t a1, void *a2, void *a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = sub_20DAB3BCC(a1, v9, v12, v3, v7, v10, v8, v11);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v13;
}

id HFHomeEnergyManager.init(home:geocoder:utilityService:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a3[3];
  v15 = a3[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_20DAB3A08(a1, v12, v18, v4, v9, v14, v8, v15);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v20;
}

uint64_t sub_20DAA2FD4()
{
  v1 = sub_20DD64C44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D9FF4D0(v0 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC0, &qword_20DD945E8);
  type metadata accessor for RealUtilityServices();
  if (swift_dynamicCast())
  {

    sub_20DAB140C();
  }

  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v5 = qword_280E03EB0;
  sub_20DD64C54();
  v6 = v0;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65384();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
    swift_beginAccess();
    v16[15] = *(v6 + v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453C0, &qword_20DD97158);
    v12 = sub_20DD64ED4();
    v14 = sub_20D9E0B38(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_20D9BF000, v7, v8, "HFHomeEnergyManager-->didSet: isGridForecastSupported: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F327D10](v10, -1, -1);
    MEMORY[0x20F327D10](v9, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_20DAA3258()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20DAA329C(char a1)
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_20DAA2FD4();
}

uint64_t (*sub_20DAA32F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20DAA3354;
}

uint64_t sub_20DAA3354(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_20DAA2FD4();
  }

  return result;
}

void *sub_20DAA33D4()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20DAA3480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20DAA34D8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_20DAA35CC()
{
  if (![objc_opt_self() isInternalInstall] || (v1 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), v2 = objc_msgSend(v1, sel_BOOLForKey_, @"ForceShowHomeEnergyFeatures"), v1, (v2 & 1) == 0))
  {
    v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5 == 2)
    {
      if ((sub_20DAA3D58() & 1) == 0)
      {
LABEL_6:
        v3 = 0;
        return v3 & 1;
      }
    }

    else if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = sub_20DAA36DC();
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_20DAA36DC()
{
  v1 = sub_20DD63744();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [v5 dictionaryForKey_];

  if (!v6)
  {
    return 1;
  }

  v7 = sub_20DD64DC4();

  v8 = [*(v0 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v9 = sub_20DD636E4();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v12 = sub_20D9CB170(v9, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_7:

    return 1;
  }

  sub_20D9D7174(*(v7 + 56) + 32 * v12, v17);

  if (swift_dynamicCast())
  {
    return v16[15];
  }

  return 1;
}

uint64_t sub_20DAA3940(char a1)
{
  v2 = v1;
  v4 = sub_20DD63744();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = [v9 dictionaryForKey_];

  if (v10)
  {
    v11 = sub_20DD64DC4();
  }

  else
  {
    v11 = sub_20D9D4C24(MEMORY[0x277D84F90]);
  }

  v12 = [*(v2 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v13 = sub_20DD636E4();
  v21[0] = v2;
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v24 = MEMORY[0x277D839B0];
  LOBYTE(v23) = a1 & 1;
  sub_20D9C29D8(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[1] = v11;
  sub_20D9D01B0(v22, v13, v15, isUniquelyReferenced_nonNull_native);

  v17 = [v8 standardUserDefaults];
  v18 = sub_20DD64DB4();

  [v17 setObject:v18 forKey:@"showHomeEnergy"];

  v19 = [objc_opt_self() defaultCenter];
  if (qword_280E020C8 != -1)
  {
    swift_once();
  }

  [v19 postNotificationName:qword_280E020D0 object:0];

  return sub_20DAB140C();
}

uint64_t (*sub_20DAA3C24(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20DAA36DC() & 1;
  return sub_20DAA3C70;
}

uint64_t sub_20DAA3D04()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_20DAA3D58();
  }

  return v2 & 1;
}

uint64_t sub_20DAA3D58()
{
  v1 = sub_20DD63744();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [v5 dictionaryForKey_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_20DD64DC4();

  v8 = [*(v0 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v9 = sub_20DD636E4();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v12 = sub_20D9CB170(v9, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_20D9D7174(*(v7 + 56) + 32 * v12, v17);

  if (swift_dynamicCast())
  {
    return v16[15];
  }

  return 0;
}

void sub_20DAA3F68(char a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9 = [v8 dictionaryForKey_];

  if (v9)
  {
    v10 = sub_20DD64DC4();
  }

  else
  {
    v10 = sub_20D9D4C24(MEMORY[0x277D84F90]);
  }

  v11 = [*(v1 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v12 = sub_20DD636E4();
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  v21 = MEMORY[0x277D839B0];
  LOBYTE(v20) = a1 & 1;
  sub_20D9C29D8(&v20, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18[1] = v10;
  sub_20D9D01B0(v19, v12, v14, isUniquelyReferenced_nonNull_native);

  v16 = [v7 standardUserDefaults];
  v17 = sub_20DD64DB4();

  [v16 setObject:v17 forKey:@"homeEnergyAvailableCache"];
}

void (*sub_20DAA41D4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20DAA3D58() & 1;
  return sub_20DAA4220;
}

uint64_t sub_20DAA4248()
{
  v1[5] = v0;
  v2 = sub_20DD64C44();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAA4314, 0, 0);
}

uint64_t sub_20DAA4314()
{
  v15 = v0;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v1 = qword_280E03EB0;
  v0[10] = qword_280E03EB0;
  v2 = v1;
  sub_20DD64C54();
  v3 = sub_20DD64C24();
  v4 = sub_20DD65384();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20D9E0B38(0xD000000000000023, 0x800000020DD9AD90, &v14);
    _os_log_impl(&dword_20D9BF000, v3, v4, "%s async call started", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F327D10](v10, -1, -1);
    MEMORY[0x20F327D10](v9, -1, -1);
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  v0[11] = v11;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_20DAA44F4;

  return sub_20DAA5BA0();
}

uint64_t sub_20DAA44F4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v2;
  v3[1] = sub_20DAA4634;

  return sub_20DAAE8FC();
}

uint64_t sub_20DAA4634(char a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_20DAA4734, 0, 0);
}

uint64_t sub_20DAA4734()
{
  v19 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  *(v2 + v3) = v1;
  sub_20DAA2FD4();
  sub_20DAA3F68(v1);
  sub_20DD64C54();
  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_20D9E0B38(0xD000000000000023, 0x800000020DD9AD90, &v18);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s async call finished: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);

    v7(v8, v9);
  }

  else
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 48);

    v12(v13, v14);
  }

  v15 = *(v0 + 8);
  v16 = *(v0 + 112);

  return v15(v16);
}

uint64_t sub_20DAA4AA8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAA4B50;

  return sub_20DAA4248();
}

uint64_t sub_20DAA4B50(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_20DD63494();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

void sub_20DAA4D74(char a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = [v7 standardUserDefaults];
    v9 = sub_20DD64E74();
    v10 = [v8 dictionaryForKey_];

    if (v10)
    {
      v11 = sub_20DD64DC4();
    }

    else
    {
      v11 = sub_20D9D4C24(MEMORY[0x277D84F90]);
    }

    v12 = [*(v1 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
    sub_20DD63714();

    v13 = sub_20DD636E4();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v23 = MEMORY[0x277D839B0];
    LOBYTE(v22) = 1;
    sub_20D9C29D8(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[1] = v11;
    sub_20D9D01B0(v21, v13, v15, isUniquelyReferenced_nonNull_native);

    v17 = [v7 standardUserDefaults];
    v18 = sub_20DD64DB4();

    v19 = sub_20DD64E74();
    [v17 setObject:v18 forKey:v19];
  }
}

void (*sub_20DAA5014(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20DAA4D14() & 1;
  return sub_20DAA5060;
}

uint64_t sub_20DAA50D0()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20DAA51A8(void *a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_20DD64E74();
  v8 = [v6 dictionaryForKey_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_20DD64DC4();

  v10 = [*(v1 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v11 = sub_20DD636E4();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  if (!*(v9 + 16))
  {

    goto LABEL_7;
  }

  v14 = sub_20D9CB170(v11, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_20D9D7174(*(v9 + 56) + 32 * v14, v19);

  if (swift_dynamicCast())
  {
    return v18[15];
  }

  return 0;
}

uint64_t sub_20DAA53D0(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 120) = a1;
  v3 = sub_20DD63744();
  *(v2 + 88) = v3;
  *(v2 + 96) = *(v3 - 8);
  *(v2 + 104) = swift_task_alloc();
  sub_20DD650F4();
  *(v2 + 112) = sub_20DD650E4();
  v5 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DAA54C8, v5, v4);
}

uint64_t sub_20DAA54C8()
{
  v1 = *(v0 + 120);

  if (v1 != (sub_20DAA519C() & 1))
  {
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4 = sub_20DD64E74();
    v5 = [v3 dictionaryForKey_];

    if (v5)
    {
      sub_20DD64DC4();
    }

    else
    {
      sub_20D9D4C24(MEMORY[0x277D84F90]);
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = *(v0 + 120);
    v10 = [*(*(v0 + 80) + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
    sub_20DD63714();

    v11 = sub_20DD636E4();
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    *(v0 + 40) = MEMORY[0x277D839B0];
    *(v0 + 16) = v9;
    sub_20D9C29D8((v0 + 16), (v0 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D01B0((v0 + 48), v11, v13, isUniquelyReferenced_nonNull_native);

    v15 = [v2 standardUserDefaults];
    v16 = sub_20DD64DB4();

    v17 = sub_20DD64E74();
    [v15 setObject:v16 forKey:v17];

    v18 = [objc_opt_self() defaultCenter];
    if (qword_280E020B0 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:qword_280E020B8 object:0];

    sub_20DAB140C();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_20DAA580C()
{
  if ([objc_opt_self() isInternalInstall])
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = [v1 BOOLForKey_];

    if (v2)
    {
      goto LABEL_8;
    }
  }

  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 == 2)
  {
    if ((sub_20DAA3D58() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v4 & 1) == 0)
  {
LABEL_9:
    v5 = sub_20DAA519C();
    return v5 & 1;
  }

  if ((sub_20DAA36DC() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v5 = 1;
  return v5 & 1;
}

uint64_t sub_20DAA5934()
{
  v1 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}