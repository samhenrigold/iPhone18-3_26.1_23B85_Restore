uint64_t sub_1908B004C(uint64_t a1)
{
  v2 = sub_190D51AE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55650, &qword_190DDA1A8);
    v9 = sub_190D58280();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1908B07D4(&qword_1EAD462C8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_190D56DC0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1908B07D4(&qword_1EAD462C0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_190D56E30();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1908B0380(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_190D58280();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_190D58870();
      MEMORY[0x193AF4110](v12);
      result = sub_190D588C0();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1908B04B4(uint64_t a1)
{
  v2 = sub_190D54A10();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55630, &qword_190DDA198);
    v9 = sub_190D58280();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1908B07D4(&qword_1EAD55638, MEMORY[0x1E697C4F8], MEMORY[0x1E697C500]);
      v16 = sub_190D56DC0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1908B07D4(&qword_1EAD55640, MEMORY[0x1E697C4F8], MEMORY[0x1E697C508]);
          v23 = sub_190D56E30();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1908B07D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1908B0850@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55750, &qword_190DFBC40);
  MEMORY[0x1EEE9AC00](v43);
  v2 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = v38 - v4;
  v5 = sub_190D540E0();
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = v38 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55708, &qword_190DDA2D0);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28, &qword_190DD3D50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55700, &qword_190DDA2C8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v38 - v14;
  v16 = sub_190D55EA0();
  v17 = sub_190D54EA0();
  v18 = sub_190D55390();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_190D553F0();
  sub_19022EEA4(v12, &qword_1EAD52F28, &qword_190DD3D50);
  KeyPath = swift_getKeyPath();
  *&v48 = v16;
  DWORD2(v48) = v17;
  *&v49 = KeyPath;
  *(&v49 + 1) = v19;
  sub_190D553D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55718, &qword_190DDA2D8);
  sub_1908B1170();
  v21 = v45;
  sub_190D556F0();

  v22 = v46;

  sub_190D56500();
  sub_190D54430();
  v38[1] = v13;
  v23 = *(v13 + 36);
  v24 = v47;
  v39 = v15;
  v25 = &v15[v23];
  v26 = v53;
  *(v25 + 4) = v52;
  *(v25 + 5) = v26;
  *(v25 + 6) = v54;
  v27 = v49;
  *v25 = v48;
  *(v25 + 1) = v27;
  v28 = v51;
  *(v25 + 2) = v50;
  *(v25 + 3) = v28;
  v29 = v24[13];
  v29(v22, *MEMORY[0x1E697E718], v5);
  v29(v21, *MEMORY[0x1E697E728], v5);
  sub_1908B18AC(&qword_1EAD55758, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_190D56E20();
  if (result)
  {
    v31 = v24[4];
    v32 = v42;
    v31(v42, v22, v5);
    v33 = v43;
    v31((v32 + *(v43 + 48)), v21, v5);
    sub_1908B152C(v32, v2);
    v34 = *(v33 + 48);
    v35 = v40;
    v31(v40, v2, v5);
    v36 = v24[1];
    v36(&v2[v34], v5);
    sub_19081E40C(v32, v2, &qword_1EAD55750, &qword_190DFBC40);
    v31((v35 + *(v41 + 36)), &v2[*(v33 + 48)], v5);
    v36(v2, v5);
    sub_1908B10A8();
    sub_190233640(&qword_1EAD55738, &qword_1EAD55708, &qword_190DDA2D0, MEMORY[0x1E69E5FB8]);
    v37 = v39;
    sub_190D55870();
    sub_19022EEA4(v35, &qword_1EAD55708, &qword_190DDA2D0);
    return sub_190264E14(v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908B0E54@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556F0, &qword_190DDA2B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v14[4] = v7;
  v14[5] = v6;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556F8, &qword_190DDA2C0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55700, &qword_190DDA2C8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55708, &qword_190DDA2D0);
  v11 = sub_1908B10A8();
  v12 = sub_190233640(&qword_1EAD55738, &qword_1EAD55708, &qword_190DDA2D0, MEMORY[0x1E69E5FB8]);
  v14[6] = v9;
  v14[7] = v10;
  v14[8] = v11;
  v14[9] = v12;
  swift_getOpaqueTypeConformance2();
  sub_190D56030();
  sub_190233640(&qword_1EAD55740, &qword_1EAD556F0, &qword_190DDA2B8, MEMORY[0x1E697D680]);
  sub_1908B12E0();
  sub_190D55730();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1908B10A8()
{
  result = qword_1EAD55710;
  if (!qword_1EAD55710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55700, &qword_190DDA2C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55718, &qword_190DDA2D8);
    sub_1908B1170();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55710);
  }

  return result;
}

unint64_t sub_1908B1170()
{
  result = qword_1EAD55720;
  if (!qword_1EAD55720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55718, &qword_190DDA2D8);
    sub_1908B1228();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70, &qword_190DDA2F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55720);
  }

  return result;
}

unint64_t sub_1908B1228()
{
  result = qword_1EAD55728;
  if (!qword_1EAD55728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55730, &unk_190DDA2E0);
    sub_190233640(&qword_1EAD45208, &qword_1EAD53160, &qword_190DD4100, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55728);
  }

  return result;
}

unint64_t sub_1908B12E0()
{
  result = qword_1EAD55748;
  if (!qword_1EAD55748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55748);
  }

  return result;
}

uint64_t sub_1908B1334@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55760, &qword_190DDA380);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55768, &qword_190DDA388);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  sub_190D54F60();
  v10 = sub_190D54EA0();
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55770, &qword_190DDA390) + 36)] = v10;
  v5[*(v3 + 44)] = 0;
  if (sub_190D54F70())
  {
    v11 = 0.75;
  }

  else
  {
    v11 = 1.0;
  }

  sub_190D56690();
  v13 = v12;
  v15 = v14;
  v16 = sub_19081E40C(v5, v9, &qword_1EAD55760, &qword_190DDA380);
  v17 = &v9[*(v7 + 44)];
  *v17 = v11;
  *(v17 + 1) = v11;
  *(v17 + 2) = v13;
  *(v17 + 3) = v15;
  MEMORY[0x193AF1E10](v16, 0.5, 0.7, 0.0);
  v18 = sub_190D56560();

  v19 = sub_190D54F70();
  sub_19081E40C(v9, a1, &qword_1EAD55768, &qword_190DDA388);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55778, &qword_190DDA398);
  v21 = a1 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = v19 & 1;
  return result;
}

uint64_t sub_1908B152C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55750, &qword_190DFBC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1908B15C8()
{
  result = qword_1EAD55780;
  if (!qword_1EAD55780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55778, &qword_190DDA398);
    sub_1908B1680();
    sub_190233640(&qword_1EAD557B0, &qword_1EAD557B8, &qword_190DF1C10, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55780);
  }

  return result;
}

unint64_t sub_1908B1680()
{
  result = qword_1EAD55788;
  if (!qword_1EAD55788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55768, &qword_190DDA388);
    sub_1908B170C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55788);
  }

  return result;
}

unint64_t sub_1908B170C()
{
  result = qword_1EAD55790;
  if (!qword_1EAD55790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55760, &qword_190DDA380);
    sub_1908B17C4();
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8, &qword_190DDA3A0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55790);
  }

  return result;
}

unint64_t sub_1908B17C4()
{
  result = qword_1EAD55798;
  if (!qword_1EAD55798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55770, &qword_190DDA390);
    sub_1908B18AC(&qword_1EAD45210, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_190233640(&qword_1EAD45208, &qword_1EAD53160, &qword_190DD4100, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55798);
  }

  return result;
}

uint64_t sub_1908B18AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1908B18F4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t CKBalloonBackdropGroup.balloonBackdropGroupName.getter()
{
  v1 = *v0;
  sub_190D52690();
  return v1;
}

void CKBalloonBackdropGroup.balloonBackdropGroupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CKBalloonBackdropGroup.tapbackBackdropGroupName.getter()
{
  v1 = *(v0 + 16);
  sub_190D52690();
  return v1;
}

void CKBalloonBackdropGroup.tapbackBackdropGroupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t static CKBalloonBackdropGroup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_190D58760(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_190D58760();
    }
  }

  return result;
}

uint64_t CKBalloonBackdropGroup.hash(into:)(uint64_t a1)
{
  sub_190D56FC0();

  return sub_190D56FC0();
}

uint64_t CKBalloonBackdropGroup.hashValue.getter()
{
  sub_190D58870();
  sub_190D56FC0();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_1908B1BA4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_190D58760(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_190D58760();
    }
  }

  return result;
}

uint64_t sub_1908B1C48()
{
  sub_190D58870();
  sub_190D56FC0();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_1908B1CB0(uint64_t a1)
{
  sub_190D56FC0();

  return sub_190D56FC0();
}

uint64_t sub_1908B1D00(uint64_t a1)
{
  sub_190D58870();
  sub_190D56FC0();
  sub_190D56FC0();
  return sub_190D588C0();
}

id sub_1908B1D64(void *a1)
{
  sub_1908B1EA8();
  v2 = a1;
  sub_190D578D0();

  if (v6)
  {
    sub_190D52690();
    sub_1908B1EFC(v5, v6, v7, v8);
    v3 = sub_190D56ED0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t UITraitCollection.balloonBackdropGroupName.getter()
{
  sub_1908B1EA8();
  sub_190D578D0();
  if (!v3)
  {
    return 0;
  }

  v0 = v2;
  sub_190D52690();
  sub_1908B1EFC(v2, v3, v4, v5);
  return v0;
}

unint64_t sub_1908B1EA8()
{
  result = qword_1EAD468A0;
  if (!qword_1EAD468A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD468A0);
  }

  return result;
}

double sub_1908B1EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

id sub_1908B1F40(void *a1)
{
  sub_1908B1EA8();
  v2 = a1;
  sub_190D578D0();

  v3 = v6;
  if (v6)
  {
    sub_190D52690();
    sub_1908B1EFC(v5, v6, v7, v8);
    v3 = sub_190D56ED0();
  }

  return v3;
}

uint64_t UITraitCollection.tapbackBackdropGroupName.getter()
{
  sub_1908B1EA8();
  sub_190D578D0();
  if (!v3)
  {
    return 0;
  }

  v0 = v4;
  sub_190D52690();
  sub_1908B1EFC(v2, v3, v4, v5);
  return v0;
}

uint64_t sub_1908B2080(uint64_t a1, uint64_t a2)
{
  MEMORY[0x193AF28B0]();
  MEMORY[0x193AF28B0](a1, a2);
  sub_190D53150();
  sub_1908B1EA8();
  return sub_190D530C0();
}

Swift::Void __swiftcall UIMutableTraits.setBalloonBackdropGroupTrait(withUniqueContextString:)(Swift::String withUniqueContextString)
{
  object = withUniqueContextString._object;
  countAndFlagsBits = withUniqueContextString._countAndFlagsBits;
  MEMORY[0x193AF28B0]();
  MEMORY[0x193AF28B0](countAndFlagsBits, object);
  sub_1908B1EA8();
  sub_190D530C0();
}

Swift::Void __swiftcall UIViewController.setBalloonBackdropGroupTraitOverride(withUniqueContextString:)(Swift::String withUniqueContextString)
{
  object = withUniqueContextString._object;
  countAndFlagsBits = withUniqueContextString._countAndFlagsBits;
  v3 = sub_190D53150();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_190D577F0();
  sub_1908B2080(countAndFlagsBits, object);
  sub_190D57800();
}

void sub_1908B22D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_190D53150();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56F10();
  v7 = v6;
  v8 = a1;
  sub_190D577F0();
  sub_1908B2080(v5, v7);

  sub_190D57800();
}

uint64_t UIView.registerForBalloonBackdropGroupTraitChanges(target:action:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_190DD1D90;
  v5 = sub_1908B1EA8();
  *(v4 + 32) = &type metadata for CKBalloonBackdropGroupTrait;
  *(v4 + 40) = v5;
  v6 = MEMORY[0x193AF3560](v4, a1, a2);

  return v6;
}

unint64_t sub_1908B242C()
{
  result = qword_1EAD45A20;
  if (!qword_1EAD45A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A20);
  }

  return result;
}

id sub_1908B2490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_190DD1D90;
  v8 = sub_1908B1EA8();
  *(v7 + 32) = &type metadata for CKBalloonBackdropGroupTrait;
  *(v7 + 40) = v8;
  v9 = MEMORY[0x193AF3560](v7, v11, a4);

  __swift_destroy_boxed_opaque_existential_0(v11);

  return v9;
}

unint64_t sub_1908B2580()
{
  result = qword_1EAD557C0;
  if (!qword_1EAD557C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD557C0);
  }

  return result;
}

unint64_t sub_1908B25D8()
{
  result = qword_1EAD557C8;
  if (!qword_1EAD557C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD557C8);
  }

  return result;
}

unint64_t sub_1908B2698()
{
  result = qword_1EAD557D0;
  if (!qword_1EAD557D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD557D0);
  }

  return result;
}

uint64_t sub_1908B26FC()
{
  v0 = sub_190D51460();
  __swift_allocate_value_buffer(v0, qword_1EAD9DA40);
  __swift_project_value_buffer(v0, qword_1EAD9DA40);
  return sub_190D51430();
}

uint64_t sub_1908B2760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1908B2784, 0, 0);
}

uint64_t sub_1908B2784()
{
  v0[7] = objc_opt_self();
  v0[8] = sub_190D572A0();
  v0[9] = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1908B282C, v2, v1);
}

uint64_t sub_1908B282C()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_1908B28B4, 0, 0);
}

uint64_t sub_1908B28B4(uint64_t a1)
{
  sub_190D50810();
  *(v1 + 88) = sub_190D56ED0();

  *(v1 + 96) = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1908B2964, v3, v2);
}

uint64_t sub_1908B2964()
{
  v1 = v0[11];
  v2 = v0[10];

  v0[13] = [v2 conversationForExistingChatWithChatIdentifier_];

  return MEMORY[0x1EEE6DFA0](sub_1908B29F8, 0, 0);
}

uint64_t sub_1908B29F8(uint64_t a1)
{
  v14 = v1;
  if (v1[13])
  {
    v1[14] = sub_190D57290();
    v3 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_1908B2C44, v3, v2);
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9E840);
    sub_190D50920();
    sub_190D50920();
    v5 = sub_190D53020();
    v6 = sub_190D576A0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      sub_190D50810();
      v9 = sub_19021D9F8(v1[2], v1[3], &v13);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_19020E000, v5, v6, "Failed to find a conversation with identifier %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x193AF7A40](v8, -1, -1);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    sub_1908B3850();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_1908B2C44()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];

  sub_1908B2DB4(v1, v3, v2);
  v0[15] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1908B2CE4, 0, 0);
}

uint64_t sub_1908B2CE4()
{
  v1 = *(v0 + 104);
  sub_190D506B0();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1908B2D50()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1908B2DB4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_190D51840();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 canMuteStateBeToggled])
  {
    sub_190D50810();
    if (v33 == 1)
    {
      if (qword_1EAD521B0 != -1)
      {
        swift_once();
      }

      v9 = sub_190D53040();
      __swift_project_value_buffer(v9, qword_1EAD9E840);
      sub_190D50920();
      sub_190D50920();
      v10 = sub_190D53020();
      v11 = sub_190D57690();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v32 = a1;
        v14 = v13;
        v35 = v13;
        *v12 = 136315138;
        HIDWORD(v31) = v11;
        sub_190D50810();
        v15 = sub_19021D9F8(v33, v34, &v35);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_19020E000, v10, BYTE4(v31), "Muting conversation with identifier %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        v16 = v14;
        a1 = v32;
        MEMORY[0x193AF7A40](v16, -1, -1);
        MEMORY[0x193AF7A40](v12, -1, -1);
      }

      sub_190D51750();
      v17 = sub_190D51780();
      (*(v5 + 8))(v8, v4);
      [a1 setMutedUntilDate_];
    }

    else
    {
      if (qword_1EAD521B0 != -1)
      {
        swift_once();
      }

      v23 = sub_190D53040();
      __swift_project_value_buffer(v23, qword_1EAD9E840);
      sub_190D50920();
      sub_190D50920();
      v24 = sub_190D53020();
      v25 = sub_190D57690();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = a1;
        v28 = swift_slowAlloc();
        v35 = v28;
        *v26 = 136315138;
        sub_190D50810();
        v29 = sub_19021D9F8(v33, v34, &v35);

        *(v26 + 4) = v29;
        _os_log_impl(&dword_19020E000, v24, v25, "Unmuting conversation with identifier %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v30 = v28;
        a1 = v27;
        MEMORY[0x193AF7A40](v30, -1, -1);
        MEMORY[0x193AF7A40](v26, -1, -1);
      }

      [a1 unmute];
    }
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9E840);
    v19 = sub_190D53020();
    v20 = sub_190D57690();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_19020E000, v19, v20, "Conversation cannot be muted", v21, 2u);
      MEMORY[0x193AF7A40](v21, -1, -1);
    }

    sub_1908B3850();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1908B3268@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51998 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9DA40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1908B331C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_190221DA4;

  return sub_1908B2760(a1, v5, v4);
}

uint64_t sub_1908B33C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1908B343C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1908B33F0(uint64_t a1)
{
  v2 = sub_1908B2698();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1908B343C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E0, &unk_190DDA620);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = v24 - v1;
  v29 = sub_190D50C80();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8, &unk_190DDF120);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557F0, &unk_190DDA630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557F8, &qword_190DDA640);
  v14 = sub_190D51460();
  v15 = *(v14 - 8);
  v30 = *(v15 + 56);
  v28 = v15 + 56;
  v30(v13, 1, 1, v14);
  v16 = sub_190D56E40();
  v33 = 0;
  v34 = 0;
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_190D50590();
  v18 = *(v17 - 8);
  v26 = *(v18 + 56);
  v27 = v18 + 56;
  v26(v7, 1, 1, v17);
  v19 = *MEMORY[0x1E695A500];
  v20 = *(v2 + 104);
  v24[1] = v2 + 104;
  v25 = v20;
  v21 = v29;
  v20(v4, v19, v29);
  v31 = sub_190D508C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55800, &qword_190DDA648);
  v30(v13, 1, 1, v14);
  LOBYTE(v33) = 2;
  v22 = sub_190D57220();
  (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  v26(v7, 1, 1, v17);
  v25(v4, v19, v21);
  sub_190D508D0();
  return v31;
}

unint64_t sub_1908B3850()
{
  result = qword_1EAD55808;
  if (!qword_1EAD55808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55808);
  }

  return result;
}

unint64_t sub_1908B38B8()
{
  result = qword_1EAD55810;
  if (!qword_1EAD55810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55810);
  }

  return result;
}

id CKTranscriptBackgroundBalloonAttributes.__allocating_init(chatItemGuid:center:size:hasBalloonShape:bubblePath:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_chatItemGuid];
  *v18 = a1;
  v18[1] = a2;
  v19 = &v17[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_center];
  *v19 = a5;
  v19[1] = a6;
  v20 = &v17[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_size];
  *v20 = a7;
  v20[1] = a8;
  v17[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_hasBalloonShape] = a3;
  *&v17[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_bubblePath] = a4;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id CKTranscriptBackgroundBalloonAttributes.init(chatItemGuid:center:size:hasBalloonShape:bubblePath:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = &v8[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_chatItemGuid];
  *v9 = a1;
  v9[1] = a2;
  v10 = &v8[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_center];
  *v10 = a5;
  v10[1] = a6;
  v11 = &v8[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_size];
  *v11 = a7;
  v11[1] = a8;
  v8[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_hasBalloonShape] = a3;
  *&v8[OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_bubblePath] = a4;
  v13.receiver = v8;
  v13.super_class = type metadata accessor for CKTranscriptBackgroundBalloonAttributes();
  return objc_msgSendSuper2(&v13, sel_init);
}

id CKTranscriptBackgroundBalloonAttributes.init(chatItemGuid:cell:in:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_7:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = v8;
  v10 = a3;
  v11 = [v9 balloonView];
  if (!v11)
  {

    a4 = v10;
    goto LABEL_7;
  }

  v12 = v11;
  [v10 frame];
  v14 = v13;
  v16 = v15;
  v17 = v12;
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v17 superview];

  [v10 convertRect:v26 fromView:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  result = [v17 bubblePath];
  if (result)
  {
    v36 = result;
    v37 = sub_190D56BF0();

    v38 = sub_190D56ED0();

    v39 = [v5 initWithChatItemGuid:v38 center:objc_msgSend(v17 size:sel_hasBalloonShape) hasBalloonShape:v37 bubblePath:{v14 + v28 + v32 * 0.5, v16 + v30 + v34 * 0.5, v32, v34}];

    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKTranscriptBackgroundBalloonAttributes.chatItemGuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit39CKTranscriptBackgroundBalloonAttributes_chatItemGuid);
  sub_190D52690();
  return v1;
}

id CKTranscriptBackgroundBalloonAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTranscriptBackgroundBalloonAttributes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptBackgroundBalloonAttributes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1908B41A4()
{
  v1 = OBJC_IVAR___CKChatBotInfoController_handle;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1908B4258(uint64_t a1)
{
  v3 = OBJC_IVAR___CKChatBotInfoController_handle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1908B42B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKChatBotInfoController_handle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_1908B43EC()
{
  v1 = (v0 + OBJC_IVAR___CKChatBotInfoController_fallbackHandle);
  swift_beginAccess();
  v2 = *v1;
  sub_190D52690();
  return v2;
}

double sub_1908B44B0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CKChatBotInfoController_fallbackHandle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_1908B4510(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CKChatBotInfoController_fallbackHandle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_190D52690();

  return result;
}

id ChatBotInfoController.__allocating_init(handle:fallbackHandle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___CKChatBotInfoController_handle] = a1;
  v8 = &v7[OBJC_IVAR___CKChatBotInfoController_fallbackHandle];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

id ChatBotInfoController.init(handle:fallbackHandle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CKChatBotInfoController_handle] = a1;
  v4 = &v3[OBJC_IVAR___CKChatBotInfoController_fallbackHandle];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ChatBotInfoController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1908B47A4()
{
  v1 = v0;
  v2 = sub_190D55190();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33.receiver = v0;
  v33.super_class = type metadata accessor for ChatBotInfoController();
  objc_msgSendSuper2(&v33, sel_viewDidLoad);
  swift_beginAccess();
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55850, &unk_190DDA790);
  sub_190D55FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50, &unk_190DE54D0);
  sub_190D55FC0();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55860, &unk_190DDA7A0));
  sub_190D50920();
  v4 = v32;
  sub_190D50920();
  sub_190D52690();
  v5 = sub_190D54B60();
  [v1 addChildViewController_];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v5 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v7 addSubview_];

  [v5 didMoveToParentViewController_];
  sub_190D55170();
  sub_190D54B30();
  v10 = [v5 view];

  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_190DDA780;
  v12 = [v5 view];

  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = [v12 heightAnchor];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = [v14 heightAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v11 + 32) = v17;
  v18 = [v5 view];

  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = [v18 leadingAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v11 + 40) = v23;
  v24 = [v5 view];

  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = [v24 trailingAnchor];

  v26 = [v1 view];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 trailingAnchor];

    v29 = [v25 constraintEqualToAnchor_];
    *(v11 + 48) = v29;
    v30 = objc_opt_self();
    sub_19086225C();
    v31 = sub_190D57160();

    [v30 activateConstraints_];

    return;
  }

LABEL_19:
  __break(1u);
}

id ChatBotInfoController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ChatBotInfoController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatBotInfoController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1908B4FB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9DA58);
  __swift_project_value_buffer(v10, qword_1EAD9DA58);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_1908B5298()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080, qword_190DD5FF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v78 = v58 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v77 = v58 - v3;
  v69 = sub_190D51440();
  v4 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D51460();
  v74 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55938, &qword_190DDAA78);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53970, &qword_190DD5720);
  v83 = v16;
  v17 = *(v16 - 8);
  v81 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v63 = v19;
  *(v19 + 16) = xmmword_190DD5600;
  v84 = v19 + v18;
  v62 = *(v16 + 48);
  *(v19 + v18) = 0;
  sub_190D56E50();
  sub_190D51980();
  v20 = *MEMORY[0x1E6968DF0];
  v21 = *(v4 + 104);
  v66 = v4 + 104;
  v22 = v69;
  v21(v6, v20, v69);
  sub_190D51470();
  v23 = *(v14 + 56);
  v14 += 56;
  v73 = v23;
  v23(v77, 1, 1, v13);
  v71 = sub_190D50B50();
  v24 = *(v71 - 8);
  v75 = *(v24 + 56);
  v72 = v24 + 56;
  v75(v78, 1, 1, v71);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55940, &unk_190E04340);
  v79 = *(v14 + 16);
  v80 = v14;
  v76 = *(v14 + 24);
  v68 = (v76 + 32) & ~v76;
  v25 = swift_allocObject();
  v67 = xmmword_190DD1D90;
  *(v25 + 16) = xmmword_190DD1D90;
  v58[0] = v12;
  sub_190D56E50();
  sub_190D51980();
  v65 = v21;
  v21(v6, v20, v22);
  v26 = v9;
  v27 = v6;
  sub_190D51470();
  v28 = v84;
  v29 = v77;
  v30 = v78;
  sub_190D50B60();
  v61 = v28 + v81;
  v62 = *(v83 + 48);
  *v61 = 1;
  sub_190D56E50();
  sub_190D51980();
  v64 = v20;
  v31 = v69;
  v21(v27, v20, v69);
  sub_190D51470();
  v73(v29, 1, 1, v74);
  v75(v30, 1, 1, v71);
  *(swift_allocObject() + 16) = v67;
  sub_190D56E50();
  sub_190D51980();
  v32 = v20;
  v33 = v65;
  v65(v27, v32, v31);
  sub_190D51470();
  sub_190D50B60();
  v62 = 2 * v81;
  v60 = (v84 + 2 * v81);
  v61 = *(v83 + 48);
  *v60 = 2;
  sub_190D56E50();
  sub_190D51980();
  v34 = v27;
  v35 = v27;
  v36 = v64;
  v33(v35, v64, v31);
  sub_190D51470();
  v37 = v77;
  v73(v77, 1, 1, v74);
  v75(v30, 1, 1, v71);
  *(swift_allocObject() + 16) = v67;
  sub_190D56E50();
  v58[1] = v26;
  sub_190D51980();
  v59 = v34;
  v38 = v36;
  v39 = v36;
  v40 = v69;
  v41 = v65;
  v65(v34, v39, v69);
  sub_190D51470();
  v42 = v78;
  sub_190D50B60();
  v61 = v84 + v62 + v81;
  v62 = *(v83 + 48);
  *v61 = 3;
  sub_190D56E50();
  sub_190D51980();
  v43 = v59;
  v41(v59, v38, v40);
  v44 = v43;
  sub_190D51470();
  v73(v37, 1, 1, v74);
  v75(v42, 1, 1, v71);
  *(swift_allocObject() + 16) = xmmword_190DD1DA0;
  sub_190D56E50();
  sub_190D51980();
  v45 = v64;
  v46 = v69;
  v47 = v65;
  v65(v43, v64, v69);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v47(v43, v45, v46);
  v48 = v47;
  sub_190D51470();
  v50 = v77;
  v49 = v78;
  sub_190D50B60();
  v62 = 4 * v81;
  v60 = (v84 + 4 * v81);
  v61 = *(v83 + 48);
  *v60 = 4;
  sub_190D56E50();
  sub_190D51980();
  v51 = v64;
  v52 = v69;
  v48(v44, v64, v69);
  sub_190D51470();
  v73(v50, 1, 1, v74);
  v75(v49, 1, 1, v71);
  *(swift_allocObject() + 16) = v67;
  sub_190D56E50();
  sub_190D51980();
  v48(v44, v51, v52);
  sub_190D51470();
  v53 = v77;
  v54 = v78;
  sub_190D50B60();
  v62 += v84 + v81;
  v81 = *(v83 + 48);
  *v62 = 5;
  sub_190D56E50();
  sub_190D51980();
  v55 = v65;
  v65(v44, v51, v52);
  sub_190D51470();
  v73(v53, 1, 1, v74);
  v75(v54, 1, 1, v71);
  *(swift_allocObject() + 16) = v67;
  sub_190D56E50();
  sub_190D51980();
  v55(v44, v64, v52);
  sub_190D51470();
  sub_190D50B60();
  v56 = sub_190821D20(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EAD9DA70 = v56;
  return result;
}

unint64_t sub_1908B6220()
{
  result = qword_1EAD558D0;
  if (!qword_1EAD558D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD558D0);
  }

  return result;
}

uint64_t sub_1908B6274()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4130](v1 + 2000);
  return sub_190D588C0();
}

uint64_t sub_1908B62EC(uint64_t a1)
{
  v2 = *v1;
  sub_190D58870();
  MEMORY[0x193AF4130](v2 + 2000);
  return sub_190D588C0();
}

uint64_t sub_1908B6330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1908B6A94(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1908B6370()
{
  result = qword_1EAD558D8;
  if (!qword_1EAD558D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD558D8);
  }

  return result;
}

unint64_t sub_1908B63C8()
{
  result = qword_1EAD558E0;
  if (!qword_1EAD558E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD558E0);
  }

  return result;
}

unint64_t sub_1908B6420()
{
  result = qword_1EAD558E8;
  if (!qword_1EAD558E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD558E8);
  }

  return result;
}

unint64_t sub_1908B6484()
{
  result = qword_1EAD558F0;
  if (!qword_1EAD558F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD558F0);
  }

  return result;
}

unint64_t sub_1908B64D8()
{
  result = qword_1EAD558F8;
  if (!qword_1EAD558F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD558F8);
  }

  return result;
}

unint64_t sub_1908B6530()
{
  result = qword_1EAD55900;
  if (!qword_1EAD55900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55900);
  }

  return result;
}

uint64_t sub_1908B6584@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD519A0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9DA58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1908B667C()
{
  result = qword_1EAD55908;
  if (!qword_1EAD55908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55908);
  }

  return result;
}

uint64_t sub_1908B66D0(uint64_t a1)
{
  v2 = sub_1908B667C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1908B6720()
{
  result = qword_1EAD55910;
  if (!qword_1EAD55910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55910);
  }

  return result;
}

unint64_t sub_1908B6778()
{
  result = qword_1EAD55918;
  if (!qword_1EAD55918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55918);
  }

  return result;
}

unint64_t sub_1908B67D0()
{
  result = qword_1EAD55920;
  if (!qword_1EAD55920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55920);
  }

  return result;
}

uint64_t sub_1908B6824()
{
  if (qword_1EAD519A8 != -1)
  {
    swift_once();
  }

  return sub_190D52690();
}

uint64_t sub_1908B6880(uint64_t a1)
{
  v2 = sub_1908B6530();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1908B68D0()
{
  result = qword_1EAD55928;
  if (!qword_1EAD55928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55930, &qword_190DDAA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55928);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Tapback(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Tapback(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1908B6A94(uint64_t a1)
{
  if ((a1 - 2000) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 2000;
  }
}

uint64_t sub_1908B6AB0()
{
  swift_getKeyPath();
  sub_1908B81F0(&qword_1EAD45CF8, _s9ViewModelCMa_2, &unk_190DDAB20);
  sub_190D51C20();

  swift_beginAccess();
  return sub_190D52690();
}

uint64_t sub_1908B6B68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908B81F0(&qword_1EAD45CF8, _s9ViewModelCMa_2, &unk_190DDAB20);
  sub_190D51C20();

  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_190D52690();
}

double sub_1908B6C54(uint64_t a1)
{
  swift_beginAccess();
  if (sub_1909A7A88(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908B81F0(&qword_1EAD45CF8, _s9ViewModelCMa_2, &unk_190DDAB20);
    sub_190D51C10();
  }

  return result;
}

void sub_1908B6D8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  sub_190D52690();
}

uint64_t sub_1908B6DF4()
{
  swift_getKeyPath();
  sub_1908B81F0(&qword_1EAD45CF8, _s9ViewModelCMa_2, &unk_190DDAB20);
  sub_190D51C20();

  swift_beginAccess();
  return sub_190D52690();
}

uint64_t sub_1908B6EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908B81F0(&qword_1EAD45CF8, _s9ViewModelCMa_2, &unk_190DDAB20);
  sub_190D51C20();

  swift_beginAccess();
  *a2 = *(v3 + 24);
  return sub_190D52690();
}

double sub_1908B6F6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_190D52690();
  sub_190BA9388(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908B81F0(&qword_1EAD45CF8, _s9ViewModelCMa_2, &unk_190DDAB20);
    sub_190D51C10();
  }

  return result;
}

void sub_1908B70B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  sub_190D52690();
}

void *sub_1908B711C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = sub_190821EFC(v4);
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  [v5 setCountLimit_];
  v2[5] = v5;
  sub_190D51C50();
  v2[4] = a1;
  v6 = objc_opt_self();
  v35 = a1;
  v7 = [v6 senderIdentitiesForFromPicker];
  sub_1902188FC(0, &qword_1EAD45078, off_1E72E5710);
  v8 = sub_190D57180();

  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v10 = 0;
    v38 = v8 & 0xFFFFFFFFFFFFFF8;
    v39 = v8 & 0xC000000000000001;
    v36 = i;
    v37 = v8;
    while (v39)
    {
      v11 = MEMORY[0x193AF3B90](v10, v8);
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }

LABEL_7:
      v12 = v11;
      v13 = [v12 isValidSubscription];
      v14 = [v12 label];
      v15 = sub_190D56F10();
      v17 = v16;
      v41 = v8;
      if (v13)
      {

        v18 = [v12 shortName];
        v19 = sub_190D56F10();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0;
      }

      *&v43 = v15;
      *(&v43 + 1) = v17;
      *&v44 = v19;
      *(&v44 + 1) = v21;
      v45 = v13 ^ 1;
      swift_getKeyPath();
      v22 = v12;
      v23 = v21;
      v40 = v21;
      v24 = v17;
      v25 = v22;
      sub_1908B81B0(v15, v24, v19, v23, v13 ^ 1);
      sub_1908B81F0(&qword_1EAD45CF8, _s9ViewModelCMa_2, &unk_190DDAB20);
      sub_190D51C20();

      swift_getKeyPath();
      sub_190D51C40();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v2[3];
      v2[3] = 0x8000000000000000;
      sub_190C1C410(v25, &v43, isUniquelyReferenced_nonNull_native);
      sub_1908B8238(v15, v24, v19, v40, v13 ^ 1);
      v2[3] = v42;
      swift_endAccess();
      swift_getKeyPath();
      sub_190D51C30();

      swift_getKeyPath();
      sub_190D51C20();

      swift_getKeyPath();
      sub_190D51C40();

      swift_beginAccess();
      v27 = v2[2];
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v27;
      if ((v28 & 1) == 0)
      {
        v27 = sub_19083625C(0, *(v27 + 2) + 1, 1, v27);
        v2[2] = v27;
      }

      v8 = v37;
      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_19083625C((v29 > 1), v30 + 1, 1, v27);
      }

      *(v27 + 2) = v30 + 1;
      v31 = &v27[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v2[2] = v27;
      swift_endAccess();
      swift_getKeyPath();
      sub_190D51C30();

      ++v10;
      if (v41 == v36)
      {
        goto LABEL_21;
      }
    }

    if (v10 >= *(v38 + 16))
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 8 * v10 + 32);
    v8 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return v2;
}

double sub_1908B762C(uint64_t *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1908B81F0(&qword_1EAD45CF8, _s9ViewModelCMa_2, &unk_190DDAB20);
  sub_190D51C20();

  swift_beginAccess();
  v5 = *(v1 + 24);
  if (*(v5 + 16))
  {
    sub_190D52690();
    v6 = sub_190875D94(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      [*(v2 + 32) switchToSenderIdentity_];
    }

    else
    {
    }
  }

  return result;
}

void sub_1908B773C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v13 = sub_190D53A60();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v14 + 16))(v17, a6, v13, v15);
    _s9ViewModelC13ImageCacheKeyCMa(0);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4 & 1;
    *(v18 + 41) = a5 & 1;
    (*(v14 + 32))(v18 + OBJC_IVAR____TtCCOV7ChatKit18DetailsInfoTabView15HandleSelection9ViewModel13ImageCacheKey_colorScheme, v17, v13);
    v19 = *(v6 + 40);
    sub_190D52690();
    if ([v19 objectForKey_])
    {
LABEL_3:

      return;
    }

    v40 = v19;
    v20 = objc_opt_self();
    v21 = sub_190D56ED0();
    if (a5)
    {
      v22 = objc_opt_self();
      v23 = [v22 secondarySystemGroupedBackgroundColor];
      sub_1902188FC(0, &qword_1EAD46520, 0x1E69DC888);
      sub_190D55E10();
      v24 = sub_190D57D20();
      v25 = [v22 clearColor];
      v26 = [v22 clearColor];
      v27 = [v20 __ck_actionImageForSubscriptionShortName_isFilled_filledTextColor_filledBackgroundColor_unFilledTextColor_unFilledBackgroundColor_];

      if (!v27)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v27 = [v20 __ck_actionImageForSubscriptionShortName_isFilled_];

      if (!v27)
      {
        goto LABEL_3;
      }
    }

    if (a4)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = v27;
LABEL_15:
      v38 = v27;
      [v40 setObject:v38 forKey:v18];

      sub_19022123C(v28, v29);
      return;
    }

    v32 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
    v33 = v27;
    v34 = [v32 initWithSize_];
    v29 = swift_allocObject();
    *(v29 + 16) = v33;
    *(v29 + 24) = a3;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1908B82BC;
    *(v35 + 24) = v29;
    aBlock[4] = sub_190233B04;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190233A24;
    aBlock[3] = &block_descriptor_21;
    v36 = _Block_copy(aBlock);
    v37 = v33;
    sub_190D50920();

    v31 = [v34 imageWithActions_];

    _Block_release(v36);
    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if ((v36 & 1) == 0)
    {
      if (v31)
      {
        v27 = v31;

        v28 = sub_1908B82BC;
        v30 = v27;
      }

      else
      {
        v28 = sub_1908B82BC;
        v30 = 0;
        v31 = v27;
        v27 = v37;
      }

      goto LABEL_15;
    }

    __break(1u);
  }
}

uint64_t sub_1908B7C20(uint64_t a1)
{
  sub_190D56FC0();
  if (*(v1 + 40) == 1)
  {
    sub_190D58890();
  }

  else
  {
    v2 = *(v1 + 32);
    sub_190D58890();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x193AF4130](v3);
  }

  sub_190D58890();
  sub_190D53A60();
  sub_1908B81F0(&qword_1EAD55960, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  return sub_190D56DD0();
}

uint64_t sub_1908B7CF4()
{

  v1 = OBJC_IVAR____TtCCOV7ChatKit18DetailsInfoTabView15HandleSelection9ViewModel13ImageCacheKey_colorScheme;
  v2 = sub_190D53A60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1908B7D98()
{
  sub_190D58870();
  sub_1908B7C20(v1);
  return sub_190D588C0();
}

uint64_t sub_1908B7E00(uint64_t a1)
{
  sub_190D58870();
  sub_1908B7C20(v2);
  return sub_190D588C0();
}

uint64_t sub_1908B7E4C()
{

  v1 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15HandleSelection9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1908B7F30(uint64_t a1, __n128 a2)
{
  result = sub_190D51C60();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1908B8008(uint64_t a1)
{
  result = sub_190D53A60();
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

uint64_t sub_1908B8100(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_190D58760() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 41) != *(a2 + 41))
  {
    return 0;
  }

  return sub_190D53A50();
}

uint64_t sub_1908B81B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_190D52690();
  }

  return sub_190D52690();
}

uint64_t sub_1908B81F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1908B8238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

id sub_1908B8358(uint64_t a1, uint64_t a2, char a3)
{
  _sSo27IMCommSafetySettingsManagerC7ChatKitE24sensitiveStickerLinkText3forSSSgSb_tF_0(a3);
  if (v3)
  {
    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

Swift::String_optional __swiftcall IMCommSafetySettingsManager.sensitiveStickerAttributionText(for:)(Swift::Bool a1)
{
  v3 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_190D56EC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = sub_190D56EA0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_190D572A0();
  sub_190D58240();
  v12 = [v1 sensitiveStickerLinkText_];
  if (v12)
  {
    v23[0] = v4;
    v13 = v12;
    sub_190D56F10();

    sub_190D56E90();
    sub_190D56E80();
    sub_190D56E70();

    sub_190D56E80();
    sub_190D56EB0();
    v14 = v23[0];
    v15 = (*(v5 + 16))(v7, v10, v23[0]);
    v16 = CKFrameworkBundle(v15);
    sub_190D51980();
    v17 = sub_190D56F30();
    v19 = v18;
    (*(v5 + 8))(v10, v14);
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = v17;
  v21 = v19;
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

id sub_1908B874C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  object = IMCommSafetySettingsManager.sensitiveStickerAttributionText(for:)(a3).value._object;

  if (object)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _sSo27IMCommSafetySettingsManagerC7ChatKitE24sensitiveStickerLinkText3forSSSgSb_tF_0(char a1)
{
  v1 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_190D56EC0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  sub_190D572A0();
  sub_190D58240();
  sub_190D56E50();
  v9 = (*(v3 + 16))(v5, v8, v2);
  v10 = CKFrameworkBundle(v9);
  sub_190D51980();
  v11 = sub_190D56F30();
  (*(v3 + 8))(v8, v2);
  return v11;
}

Swift::Void __swiftcall CKMessageEntryView.moveFloatingCursorsToOrigin()()
{
  v1 = [v0 contentView];
  if (v1)
  {
    v2 = v1;
    sub_190863B08();
  }

  else
  {
    __break(1u);
  }
}

void sub_1908B8D20()
{
  sub_1909794D0();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC640]);
  sub_1908B8F40();
  v4 = sub_190D57160();
  v5 = [v3 initWithItemProviders_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69CD9F8]) initWithActivityItemsConfiguration_];
  [v0 presentViewController_];
  if (v2 >> 62)
  {
    v6 = sub_190D581C0();
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v0 completeUserInteractionTaskWithSuccess:v6 != 0 error:0];
}

id sub_1908B8EE8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosGridShareAssetActionPerformer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1908B8F40()
{
  result = qword_1EAD55968;
  if (!qword_1EAD55968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD55968);
  }

  return result;
}

uint64_t type metadata accessor for BannerView(uint64_t a1)
{
  result = qword_1EAD55978;
  if (!qword_1EAD55978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1908B9000(uint64_t a1)
{
  sub_1908B90C4(319);
  if (v1 <= 0x3F)
  {
    sub_1908B911C(319);
    if (v2 <= 0x3F)
    {
      sub_1908B9180(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIUserInterfaceIdiom(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1908B90C4(uint64_t a1)
{
  if (!qword_1EAD55988)
  {
    sub_190D53A60();
    v1 = sub_190D53A80();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD55988);
    }
  }
}

void sub_1908B911C(uint64_t a1)
{
  if (!qword_1EAD55990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55998, qword_190DDAC80);
    v1 = sub_190D56000();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD55990);
    }
  }
}

void sub_1908B9180(uint64_t a1)
{
  if (!qword_1EAD559A0)
  {
    type metadata accessor for TapPublisher(255);
    sub_1908BE740(&qword_1EAD46100, type metadata accessor for TapPublisher, &unk_190E01CEC);
    v1 = sub_190D53AC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD559A0);
    }
  }
}

uint64_t sub_1908B9230@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8, &qword_190DDADF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_19022FD14(v2, &v14 - v9, &qword_1EAD55AC8, &qword_190DDADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1908B9430()
{
  type metadata accessor for TapPublisher(0);
  v0 = swift_allocObject();
  sub_190D538D0();
  return v0;
}

uint64_t sub_1908B9490@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559A8, &qword_190DDACD8);
  MEMORY[0x1EEE9AC00](v85);
  v3 = &v72 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559B0, &unk_190DDACE0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v72 - v5;
  v7 = sub_190D55020();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559B8, &qword_190DDDA80);
  MEMORY[0x1EEE9AC00](v81);
  v10 = &v72 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559C0, &qword_190DDACF0);
  MEMORY[0x1EEE9AC00](v78);
  v12 = &v72 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559C8, &qword_190DDACF8);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v14 = &v72 - v13;
  *&v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559D0, &qword_190DDAD00);
  MEMORY[0x1EEE9AC00](v87);
  v77 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559D8, &qword_190DDAD08);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  *v12 = sub_190D54AC0();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559E0, &qword_190DDAD10) + 44)];
  *&v86 = v1;
  sub_1908B9DEC(v1, v19);
  v20 = *MEMORY[0x1E697E728];
  v21 = sub_190D540E0();
  (*(*(v21 - 8) + 104))(v10, v20, v21);
  sub_1908BE740(&unk_1EAD452A8, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  v22 = v10;
  result = sub_190D56E30();
  if (result)
  {
    v73 = v6;
    v74 = v4;
    v75 = v16;
    v76 = v18;
    v24 = sub_190233640(&qword_1EAD559E8, &qword_1EAD559C0, &qword_190DDACF0, MEMORY[0x1E6981870]);
    v25 = sub_190233640(&qword_1EAD44E28, &qword_1EAD559B8, &qword_190DDDA80, MEMORY[0x1E69E6ED8]);
    v26 = v22;
    v27 = v78;
    v28 = v81;
    sub_190D55870();
    sub_19022EEA4(v26, &qword_1EAD559B8, &qword_190DDDA80);
    sub_19022EEA4(v12, &qword_1EAD559C0, &qword_190DDACF0);
    v29 = v82;
    sub_190D55010();
    v89 = v27;
    v90 = v28;
    v91 = v24;
    v92 = v25;
    swift_getOpaqueTypeConformance2();
    v30 = v77;
    v31 = v80;
    sub_190D55A40();
    (*(v83 + 8))(v29, v84);
    (*(v79 + 8))(v14, v31);
    v83 = sub_190D56500();
    v84 = v32;
    *v3 = sub_190D54AC0();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559F0, &qword_190DDAD18);
    v34 = v86;
    sub_1908BBEC0(v86, &v3[*(v33 + 44)]);
    v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559F8, &unk_190DDAD20) + 36)] = 0;
    v35 = *(v34 + *(type metadata accessor for BannerView(0) + 32));
    v36 = v3;
    v37 = &v3[*(v85 + 36)];
    v38 = sub_190D543E0();
    v39 = *(v38 + 20);
    v40 = *MEMORY[0x1E697F468];
    v41 = sub_190D54A20();
    v42 = *(*(v41 - 8) + 104);
    v42(v37 + v39, v40, v41);
    *v37 = v35;
    v37[1] = v35;
    *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00, &qword_190DDC880) + 36)) = 256;
    v43 = [objc_opt_self() sharedFeatureFlags];
    LODWORD(v39) = [v43 isModernSplitViewControllerEnabled];

    if (v39)
    {
      v44 = sub_190D552F0();
    }

    else
    {
      v44 = sub_190D552A0();
    }

    v45 = v44;
    v46 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A08, &qword_190DDAD30) + 36)];
    v47 = sub_190D54240();
    v48 = v36;
    v49 = v73;
    sub_19081E40C(v48, v73, &qword_1EAD559A8, &qword_190DDACD8);
    v50 = v49 + *(v74 + 36);
    *v50 = v47;
    *(v50 + 8) = v45;
    v51 = v30;
    sub_19081E40C(v49, v46, &qword_1EAD559B0, &unk_190DDACE0);
    v52 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A10, &qword_190DDAD38) + 36));
    v53 = v84;
    *v52 = v83;
    v52[1] = v53;
    v54 = &v30[*(v87 + 36)];
    v55 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A18, &unk_190DDAD40) + 36)];
    v42(v55 + *(v38 + 20), v40, v41);
    *v55 = v35;
    v55[1] = v35;
    *v54 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F00, &qword_190DEC2A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1DA0;
    v57 = sub_190D552E0();
    *(inited + 32) = v57;
    v58 = sub_190D55300();
    *(inited + 33) = v58;
    v59 = sub_190D552F0();
    sub_190D552F0();
    if (sub_190D552F0() != v57)
    {
      v59 = sub_190D552F0();
    }

    sub_190D552F0();
    if (sub_190D552F0() != v58)
    {
      v59 = sub_190D552F0();
    }

    v60 = v76;
    v61 = 0uLL;
    v62 = 0uLL;
    if (v35 <= 0.0)
    {
      sub_190D539C0();
      *(&v62 + 1) = v63;
      *(&v61 + 1) = v64;
    }

    v86 = v62;
    v87 = v61;
    sub_19081E40C(v51, v60, &qword_1EAD559D0, &qword_190DDAD00);
    v65 = v60 + *(v75 + 36);
    *v65 = v59;
    v66 = v87;
    *(v65 + 24) = v86;
    *(v65 + 8) = v66;
    *(v65 + 40) = v35 > 0.0;
    v67 = sub_190D552C0();
    v68 = sub_190D54240();
    v69 = v60;
    v70 = v88;
    sub_19081E40C(v69, v88, &qword_1EAD559D8, &qword_190DDAD08);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A20, &qword_190DDAD50);
    v71 = v70 + *(result + 36);
    *v71 = v68;
    *(v71 + 8) = v67;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908B9DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A38, &qword_190DDAD68);
  v120 = *(v3 - 8);
  v121 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v113 = &v112 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A40, &qword_190DDAD70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v123 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A48, &qword_190DDAD78);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v112 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A50, &qword_190DDAD80);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v112 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A58, &qword_190DDAD88);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v112 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A60, &qword_190DDAD90);
  MEMORY[0x1EEE9AC00](v116);
  v19 = &v112 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A68, &qword_190DDAD98);
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v112 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v118 = &v112 - v25;
  *v11 = sub_190D548D0();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A70, &qword_190DDADA0);
  sub_1908BA684(a1, &v11[*(v26 + 44)]);
  v27 = sub_190D552E0();
  sub_1908BB7E4();
  v29 = v28;
  v30 = 0uLL;
  v125 = 0u;
  v31 = 0uLL;
  if ((v28 & 1) == 0)
  {
    sub_190D539C0();
    *(&v31 + 1) = v32;
    *(&v30 + 1) = v33;
  }

  v114 = v31;
  v115 = v30;
  sub_19081E40C(v11, v14, &qword_1EAD55A48, &qword_190DDAD78);
  v34 = &v14[*(v12 + 36)];
  *v34 = v27;
  *(v34 + 24) = v114;
  *(v34 + 8) = v115;
  v34[40] = v29 & 1;
  v35 = sub_190D55300();
  sub_1908BB8FC();
  v37 = v36;
  v38 = 0uLL;
  if ((v36 & 1) == 0)
  {
    sub_190D539C0();
    *(&v38 + 1) = v39;
    *(&v41 + 1) = v40;
    v125 = v41;
  }

  v115 = v38;
  sub_19081E40C(v14, v17, &qword_1EAD55A50, &qword_190DDAD80);
  v42 = &v17[*(v15 + 36)];
  *v42 = v35;
  *(v42 + 24) = v115;
  *(v42 + 8) = v125;
  v42[40] = v37 & 1;
  v43 = sub_190D552C0();
  v44 = *(a1 + *(type metadata accessor for BannerView(0) + 36));
  v45 = v122;
  if (v44 == 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
    sub_190D55FD0();
    __swift_destroy_boxed_opaque_existential_0(v126);
  }

  sub_190D539C0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_19081E40C(v17, v19, &qword_1EAD55A58, &qword_190DDAD88);
  v54 = &v19[*(v116 + 36)];
  *v54 = v43;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  v55 = sub_190D552D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
  sub_190D55FD0();
  v56 = *(__swift_project_boxed_opaque_existential_1(v126, v127)[8] + 16);
  __swift_destroy_boxed_opaque_existential_0(v126);
  if (v44 == 6 && v56 != 2)
  {
    sub_190D55FD0();
    __swift_destroy_boxed_opaque_existential_0(v126);
  }

  sub_190D539C0();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_19081E40C(v19, v23, &qword_1EAD55A60, &qword_190DDAD90);
  v65 = v118;
  v66 = &v23[*(v117 + 36)];
  *v66 = v55;
  *(v66 + 1) = v58;
  *(v66 + 2) = v60;
  *(v66 + 3) = v62;
  *(v66 + 4) = v64;
  v66[40] = 0;
  sub_19081E40C(v23, v65, &qword_1EAD55A68, &qword_190DDAD98);
  sub_190D55FD0();
  v67 = *(__swift_project_boxed_opaque_existential_1(v126, v127)[8] + 16);
  __swift_destroy_boxed_opaque_existential_0(v126);
  if (v67 == 2)
  {
    v68 = v113;
    sub_1908BBA34(v113);
    v69 = sub_190D552E0();
    sub_190D539C0();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A88, &qword_190DDADB8) + 36);
    *v78 = v69;
    *(v78 + 8) = v71;
    *(v78 + 16) = v73;
    *(v78 + 24) = v75;
    *(v78 + 32) = v77;
    *(v78 + 40) = 0;
    v79 = sub_190D55300();
    sub_190D539C0();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A90, &qword_190DDADC0) + 36);
    *v88 = v79;
    *(v88 + 8) = v81;
    *(v88 + 16) = v83;
    *(v88 + 24) = v85;
    *(v88 + 32) = v87;
    *(v88 + 40) = 0;
    v89 = sub_190D552C0();
    sub_190D539C0();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v98 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A98, &qword_190DDADC8) + 36);
    *v98 = v89;
    *(v98 + 8) = v91;
    *(v98 + 16) = v93;
    *(v98 + 24) = v95;
    *(v98 + 32) = v97;
    *(v98 + 40) = 0;
    v99 = sub_190D552D0();
    sub_190D539C0();
    v100 = v121;
    v101 = v68 + *(v121 + 36);
    *v101 = v99;
    *(v101 + 8) = v102;
    *(v101 + 16) = v103;
    *(v101 + 24) = v104;
    *(v101 + 32) = v105;
    *(v101 + 40) = 0;
    sub_19081E40C(v68, v45, &qword_1EAD55A38, &qword_190DDAD68);
    v106 = 0;
  }

  else
  {
    v106 = 1;
    v100 = v121;
  }

  (*(v120 + 56))(v45, v106, 1, v100);
  v107 = v119;
  sub_19022FD14(v65, v119, &qword_1EAD55A68, &qword_190DDAD98);
  v108 = v123;
  sub_19022FD14(v45, v123, &qword_1EAD55A40, &qword_190DDAD70);
  v109 = v124;
  sub_19022FD14(v107, v124, &qword_1EAD55A68, &qword_190DDAD98);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A80, &qword_190DDADB0);
  sub_19022FD14(v108, v109 + *(v110 + 48), &qword_1EAD55A40, &qword_190DDAD70);
  sub_19022EEA4(v45, &qword_1EAD55A40, &qword_190DDAD70);
  sub_19022EEA4(v65, &qword_1EAD55A68, &qword_190DDAD98);
  sub_19022EEA4(v108, &qword_1EAD55A40, &qword_190DDAD70);
  return sub_19022EEA4(v107, &qword_1EAD55A68, &qword_190DDAD98);
}

uint64_t sub_1908BA684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BA8, &qword_190DDAF48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v75 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v60 - v6;
  v8 = type metadata accessor for BannerView(0);
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = v9;
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BB0, &qword_190DDAF50);
  MEMORY[0x1EEE9AC00](v67);
  v11 = &v60 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BB8, &qword_190DDAF58);
  v70 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BC0, &qword_190DDAF60);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BC8, &qword_190DDAF68);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v69 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v60 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v61 = *(a1 + *(v8 + 36)) != 6;
  v28 = sub_190D53EA0();
  v29 = sub_190D53EA0();
  v68 = v15;
  v66 = v16;
  if (v28 == v29)
  {
    sub_190CB0BA0(v18);
    sub_19081E40C(v18, v27, &qword_1EAD55BC0, &qword_190DDAF60);
    v30 = *(v16 + 56);
    v31 = v27;
    v32 = 0;
  }

  else
  {
    v30 = *(v16 + 56);
    v31 = v27;
    v32 = 1;
  }

  v62 = v30;
  v30(v31, v32, 1, v15);
  v72 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
  sub_190D55FD0();
  v33 = __swift_project_boxed_opaque_existential_1(v78, v79)[3];
  __swift_destroy_boxed_opaque_existential_0(v78);
  if (v33)
  {
    v34 = sub_190D548B0();
  }

  else
  {
    v34 = sub_190D548D0();
  }

  v35 = v34;
  sub_190D55FD0();
  v36 = *(__swift_project_boxed_opaque_existential_1(v78, v79) + 72);
  __swift_destroy_boxed_opaque_existential_0(v78);
  if (v36 == 1)
  {
    v35 = sub_190D548D0();
  }

  *v11 = v35;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BD0, &qword_190DDAF70);
  sub_1908BAE84(&v11[*(v37 + 44)]);
  v38 = v65;
  sub_1908BE788(a1, v65, type metadata accessor for BannerView);
  v39 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v40 = swift_allocObject();
  sub_1908BE7F0(v38, v40 + v39, type metadata accessor for BannerView);
  sub_190233640(&qword_1EAD451B8, &qword_1EAD55BB0, &qword_190DDAF50, MEMORY[0x1E69817F8]);
  sub_190D557E0();

  sub_19022EEA4(v11, &qword_1EAD55BB0, &qword_190DDAF50);
  sub_190CB1730(v7);
  v41 = sub_190D53EA0();
  v42 = sub_190D53EA0();
  v43 = 1;
  if (v41 == v42)
  {
    sub_190CB0BA0(v18);
    sub_19081E40C(v18, v76, &qword_1EAD55BC0, &qword_190DDAF60);
    v43 = 0;
  }

  v44 = v76;
  v62(v76, v43, 1, v68);
  v45 = v73;
  sub_19022FD14(v72, v73, &qword_1EAD55BC8, &qword_190DDAF68);
  v46 = v70;
  v47 = *(v70 + 16);
  v48 = v74;
  v49 = v60;
  v47(v74, v77, v60);
  sub_19022FD14(v7, v75, &qword_1EAD55BA8, &qword_190DDAF48);
  v50 = v44;
  v51 = v69;
  sub_19022FD14(v50, v69, &qword_1EAD55BC8, &qword_190DDAF68);
  v52 = v45;
  v53 = v49;
  v68 = v7;
  v54 = v71;
  sub_19022FD14(v52, v71, &qword_1EAD55BC8, &qword_190DDAF68);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BD8, &qword_190DDAF78);
  v47((v54 + v55[12]), v48, v53);
  v56 = v54 + v55[16];
  *v56 = 0;
  *(v56 + 8) = 1;
  v57 = v75;
  sub_19022FD14(v75, v54 + v55[20], &qword_1EAD55BA8, &qword_190DDAF48);
  sub_19022FD14(v51, v54 + v55[24], &qword_1EAD55BC8, &qword_190DDAF68);
  sub_19022EEA4(v76, &qword_1EAD55BC8, &qword_190DDAF68);
  sub_19022EEA4(v68, &qword_1EAD55BA8, &qword_190DDAF48);
  v58 = *(v46 + 8);
  v58(v77, v53);
  sub_19022EEA4(v72, &qword_1EAD55BC8, &qword_190DDAF68);
  sub_19022EEA4(v51, &qword_1EAD55BC8, &qword_190DDAF68);
  sub_19022EEA4(v57, &qword_1EAD55BA8, &qword_190DDAF48);
  v58(v74, v53);
  return sub_19022EEA4(v73, &qword_1EAD55BC8, &qword_190DDAF68);
}

uint64_t sub_1908BAE84@<X0>(uint64_t a2@<X8>)
{
  v18 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BE0, &qword_190DDAFC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  sub_1908BB1E8(&v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BE8, &qword_190DDAFD0);
  sub_1908BEA94();
  sub_190D55A10();
  v21[4] = *&v34[48];
  v21[5] = *&v34[64];
  v21[6] = *&v34[80];
  v22 = *&v34[96];
  v21[0] = v33;
  v21[1] = *v34;
  v21[2] = *&v34[16];
  v21[3] = *&v34[32];
  sub_19022EEA4(v21, &qword_1EAD55BE8, &qword_190DDAFD0);
  v8 = sub_190D54AD0();
  v20 = 1;
  sub_1908BC224(&v33);
  v27 = *&v34[48];
  v28[0] = *&v34[64];
  *(v28 + 11) = *&v34[75];
  v23 = v33;
  v24 = *v34;
  v25 = *&v34[16];
  v26 = *&v34[32];
  v29[0] = v33;
  v29[1] = *v34;
  v29[2] = *&v34[16];
  v29[3] = *&v34[32];
  v29[4] = *&v34[48];
  v30[0] = *&v34[64];
  *(v30 + 11) = *&v34[75];
  sub_19022FD14(&v23, &v31, &qword_1EAD55C00, &qword_190DDAFE8);
  sub_19022EEA4(v29, &qword_1EAD55C00, &qword_190DDAFE8);
  *&v19[55] = v26;
  *&v19[71] = v27;
  *&v19[87] = v28[0];
  *&v19[98] = *(v28 + 11);
  *&v19[7] = v23;
  *&v19[23] = v24;
  *&v19[39] = v25;
  v9 = v20;
  sub_19022FD14(v7, v4, &qword_1EAD55BE0, &qword_190DDAFC8);
  v10 = v18;
  sub_19022FD14(v4, v18, &qword_1EAD55BE0, &qword_190DDAFC8);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C08, &qword_190DDAFF0) + 48);
  v31 = v8;
  v32[0] = v9;
  *&v32[81] = *&v19[80];
  *&v32[65] = *&v19[64];
  *&v32[97] = *&v19[96];
  *&v32[113] = *&v19[112];
  *&v32[1] = *v19;
  *&v32[17] = *&v19[16];
  *&v32[33] = *&v19[32];
  *&v32[49] = *&v19[48];
  *(v11 + 127) = *&v32[111];
  v12 = *&v32[96];
  *(v11 + 96) = *&v32[80];
  *(v11 + 112) = v12;
  v13 = *&v32[32];
  *(v11 + 32) = *&v32[16];
  *(v11 + 48) = v13;
  v14 = *v32;
  *v11 = v31;
  *(v11 + 16) = v14;
  v15 = *&v32[64];
  *(v11 + 64) = *&v32[48];
  *(v11 + 80) = v15;
  sub_19022FD14(&v31, &v33, &qword_1EAD55C10, &qword_190DDAFF8);
  sub_19022EEA4(v7, &qword_1EAD55BE0, &qword_190DDAFC8);
  *&v34[65] = *&v19[64];
  *&v34[81] = *&v19[80];
  *&v34[97] = *&v19[96];
  *&v34[1] = *v19;
  *&v34[17] = *&v19[16];
  *&v34[33] = *&v19[32];
  v33 = v8;
  v34[0] = v9;
  v35 = *&v19[112];
  *&v34[49] = *&v19[48];
  sub_19022EEA4(&v33, &qword_1EAD55C10, &qword_190DDAFF8);
  return sub_19022EEA4(v4, &qword_1EAD55BE0, &qword_190DDAFC8);
}

void sub_1908BB1E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BannerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
  sub_190D55FD0();
  v7 = __swift_project_boxed_opaque_existential_1(v49, v50)[6];
  if (v7)
  {
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v49);
    v9 = v8;
    sub_190D55E90();
    sub_190D50920();
    sub_190D54C50();
    v48 = BYTE8(v39);
    v25 = 0;
    v26 = v39;
    LOBYTE(v27) = BYTE8(v39);
    HIBYTE(v38) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BF8, &qword_190DDAFE0);
    sub_1908BEBA4();
    sub_19081E564();
    sub_190D54C50();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
    sub_190D55FD0();
    if (!__swift_project_boxed_opaque_existential_1(v49, v50)[7])
    {
      __swift_destroy_boxed_opaque_existential_0(v49);
      sub_190D55FD0();
      v19 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1))[5];
      if (v19)
      {
        sub_190D52690();
        __swift_destroy_boxed_opaque_existential_0(&v39);
        if (*(v19 + 16))
        {
          v20 = *(v2 + *(v4 + 28));
          sub_1908BE788(v2, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BannerView);
          v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
          v22 = swift_allocObject();
          sub_1908BE7F0(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v21, type metadata accessor for BannerView);
          v26 = 0;
          sub_190D55FC0();
          v23 = v39;
          LOBYTE(v26) = 0;
          sub_190D55FC0();
          v48 = 0;
          LOBYTE(v49[0]) = 1;
          v26 = 2;
          v27 = v20 * -0.5;
          v28 = v19;
          v29 = v20;
          v30 = xmmword_190DDAC50;
          v31 = 2;
          v32 = 257;
          v33 = v23;
          v34 = v39;
          v35 = *(&v39 + 1);
          v36 = sub_1908BEE10;
          v37 = v22;
          v38 = 256;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BF8, &qword_190DDAFE0);
          sub_1908BEBA4();
          sub_19081E564();
          sub_190D54C50();
          v10 = v39;
          v11 = v40;
          v12 = v41;
          v14 = v43;
          v13 = v44;
          v15 = v42;
          v16 = v45;
          v17 = v46;
          v18 = v47;
          goto LABEL_6;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v39);
      }

      v16 = 0;
      v17 = 0;
      v10 = 0uLL;
      v18 = -256;
      v11 = 0uLL;
      v12 = 0uLL;
      v15 = 0uLL;
      v14 = 0uLL;
      v13 = 0uLL;
      goto LABEL_6;
    }

    sub_190D50920();
    __swift_destroy_boxed_opaque_existential_0(v49);
    sub_190D50920();
    sub_190D54C50();
    v48 = BYTE8(v39);
    v25 = 0;
    v26 = v39;
    LOBYTE(v27) = BYTE8(v39);
    HIBYTE(v38) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BF8, &qword_190DDAFE0);
    sub_1908BEBA4();
    sub_19081E564();
    sub_190D54C50();
  }

  v10 = v39;
  v11 = v40;
  v12 = v41;
  v14 = v43;
  v13 = v44;
  v15 = v42;
  v16 = v45;
  v17 = v46;
  v18 = v47;
LABEL_6:
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  *(a1 + 48) = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v13;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
}

double sub_1908BB6C8(uint64_t a1)
{
  type metadata accessor for BannerView(0);
  type metadata accessor for TapPublisher(0);
  sub_1908BE740(&qword_1EAD46100, type metadata accessor for TapPublisher, &unk_190E01CEC);
  sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_190D538F0();
  *v2 = !*v2;
  v1(&v4, 0);

  return result;
}

uint64_t sub_1908BB7E4()
{
  v1 = v0;
  v2 = type metadata accessor for BannerView(0);
  if (*(v0 + *(v2 + 36)) == 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
    sub_190D55FD0();
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11)[10];
    __swift_destroy_boxed_opaque_existential_0(v10);
    if (v3)
    {
      return 0;
    }

    sub_190D55FD0();
    v4 = *(__swift_project_boxed_opaque_existential_1(v10, v11)[8] + 16);
    __swift_destroy_boxed_opaque_existential_0(v10);
    if (v4 > 1)
    {
      return 0;
    }

    else
    {
      return *(v1 + *(v2 + 32));
    }
  }

  else
  {
    v6 = sub_1908BC120();
    v7 = *(v0 + *(v2 + 32));
    v8 = v7 / 1.5;
    v9 = v7 * 0.5;
    if ((v6 & 1) == 0)
    {
      v9 = v8;
    }

    return *&v9;
  }
}

uint64_t sub_1908BB8FC()
{
  v1 = v0;
  v2 = type metadata accessor for BannerView(0);
  if (*(v0 + *(v2 + 36)) == 6)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
    sub_190D55FD0();
    v4 = *(__swift_project_boxed_opaque_existential_1(v8, v9)[8] + 16);
    __swift_destroy_boxed_opaque_existential_0(v8);
    if (v4 == 1 && (sub_190D55FD0(), v5 = *(__swift_project_boxed_opaque_existential_1(v8, v9)[8] + 16), __swift_destroy_boxed_opaque_existential_0(v8), v5) || (sub_190D55FD0(), v6 = *(__swift_project_boxed_opaque_existential_1(v8, v9)[8] + 16), __swift_destroy_boxed_opaque_existential_0(v8), v6 > 1))
    {
      *&result = 0.0;
    }

    else
    {
      return *(v1 + *(v3 + 32));
    }
  }

  else
  {
    *&result = *(v0 + *(v2 + 32)) / 2.25;
  }

  return result;
}

uint64_t sub_1908BBA34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AA0, &qword_190DDADD0);
  MEMORY[0x1EEE9AC00](v20);
  v5 = v18 - v4;
  v6 = type metadata accessor for BannerView(0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AA8, &qword_190DDADD8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
  sub_190D55FD0();
  v11 = *(__swift_project_boxed_opaque_existential_1(v22, v23)[8] + 16);
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v11 == 2)
  {
    *v10 = sub_190D56500();
    *(v10 + 1) = v12;
    *(v10 + 2) = 0;
    v10[24] = 1;
    *(v10 + 4) = 0;
    v10[40] = 1;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AB8, &qword_190DDADE0) + 44);
    v18[1] = a1;
    v14 = &v10[v13];
    *v14 = 0;
    v14[8] = 1;
    v18[0] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC0, &qword_190DDADE8) + 36);
    sub_190D55FD0();
    v21 = __swift_project_boxed_opaque_existential_1(v22, v23)[8];
    sub_1908BE788(v2, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BannerView);
    v15 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v16 = swift_allocObject();
    sub_1908BE7F0(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BannerView);
    sub_190D52690();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AD0, &qword_190DDADF8);
    sub_190D518A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AD8, &qword_190DDAE00);
    sub_190233640(&qword_1EAD45178, &qword_1EAD55AD0, &qword_190DDADF8, MEMORY[0x1E69E6338]);
    sub_1908BE128();
    sub_1908BE740(&qword_1EAD46138, type metadata accessor for BannerButton, &unk_190DE777C);
    sub_190D56290();
    __swift_destroy_boxed_opaque_existential_0(v22);
    sub_19022FD14(v10, v5, &qword_1EAD55AA8, &qword_190DDADD8);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD55AB0, &qword_1EAD55AA8, &qword_190DDADD8, MEMORY[0x1E697CD00]);
    sub_190D54C50();
    return sub_19022EEA4(v10, &qword_1EAD55AA8, &qword_190DDADD8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD55AB0, &qword_1EAD55AA8, &qword_190DDADD8, MEMORY[0x1E697CD00]);
    return sub_190D54C50();
  }
}

uint64_t sub_1908BBEC0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A28, &qword_190DDAD58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v12 = 1;
  if (*(a1 + *(type metadata accessor for BannerView(0) + 36)) == 6)
  {
    v10 = [objc_opt_self() sharedFeatureFlags];
    v11 = [v10 isTranscriptPortalEnabled];

    if (!v11)
    {
      v12 = 0;
    }
  }

  v13 = sub_190D56270();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_19022FD14(v9, v6, &qword_1EAD55A28, &qword_190DDAD58);
  *a2 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A30, &qword_190DDAD60);
  sub_19022FD14(v6, &a2[*(v14 + 48)], &qword_1EAD55A28, &qword_190DDAD58);
  sub_19022EEA4(v9, &qword_1EAD55A28, &qword_190DDAD58);
  return sub_19022EEA4(v6, &qword_1EAD55A28, &qword_190DDAD58);
}

uint64_t sub_1908BC07C(uint64_t a1)
{
  type metadata accessor for BannerView(0);
  type metadata accessor for TapPublisher(0);
  sub_1908BE740(&qword_1EAD46100, type metadata accessor for TapPublisher, &unk_190E01CEC);

  return sub_190D53AA0();
}

uint64_t sub_1908BC120()
{
  type metadata accessor for BannerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
  sub_190D55FD0();
  v0 = __swift_project_boxed_opaque_existential_1(v5, v6)[6];
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (v0)
  {
    return 1;
  }

  sub_190D55FD0();
  v1 = __swift_project_boxed_opaque_existential_1(v5, v6)[7];
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (v1)
  {
    return 1;
  }

  sub_190D55FD0();
  v3 = __swift_project_boxed_opaque_existential_1(v5, v6)[5];
  if (v3)
  {
    sub_190D52690();
    __swift_destroy_boxed_opaque_existential_0(v5);
    v4 = *(v3 + 16);

    if (v4)
    {
      return 1;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return 0;
}

double sub_1908BC224@<D0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = sub_190D55430();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D55320();
  sub_190D55370();

  v5 = *MEMORY[0x1E6980EA8];
  v6 = *(v2 + 104);
  v6(v4, v5, v1);
  v72 = sub_190D55460();

  v7 = *(v2 + 8);
  v7(v4, v1);
  sub_190D55320();
  v6(v4, v5, v1);
  v8 = sub_190D55460();

  v7(v4, v1);
  type metadata accessor for BannerView(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78, &qword_190DDADA8);
  sub_190D55FD0();
  v10 = __swift_project_boxed_opaque_existential_1(&v84, v86);
  v11 = v10[1];
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_0(&v84);
LABEL_10:
    v80 = 0;
    v81 = 0;
    v68 = 0;
    v82 = 0;
    KeyPath = 0;
    v79 = 0;
    v77 = 0;
    goto LABEL_11;
  }

  v12 = *v10;
  sub_190D52690();
  __swift_destroy_boxed_opaque_existential_0(&v84);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_10;
  }

  v84 = v12;
  v85 = v11;
  sub_19081E484();
  v14 = sub_190D555F0();
  v16 = v15;
  v18 = v17;
  sub_190D50920();
  v19 = sub_190D555B0();
  v80 = v20;
  v81 = v19;
  v22 = v21;
  v82 = v23;

  sub_19081E474(v14, v16, v18 & 1);

  sub_190D55FD0();
  v24 = *(__swift_project_boxed_opaque_existential_1(&v84, v86) + 32);
  __swift_destroy_boxed_opaque_existential_0(&v84);
  v25 = 3;
  if (!v24)
  {
    v25 = 0;
  }

  v79 = v25;
  KeyPath = swift_getKeyPath();
  LOBYTE(v84) = v22 & 1;
  v83 = v24 ^ 1;
  v68 = v22 & 1;
  v77 = v24 ^ 1 | 0x10000;
LABEL_11:
  sub_190D55FD0();
  v26 = __swift_project_boxed_opaque_existential_1(&v84, v86);
  v27 = v26[3];
  v69 = v8;
  if (v27)
  {
    v28 = v26[2];
    sub_190D52690();
    __swift_destroy_boxed_opaque_existential_0(&v84);
    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v84 = v28;
      v85 = v27;
      sub_19081E484();
      v30 = sub_190D555F0();
      v32 = v31;
      v34 = v33;
      v75 = v9;
      sub_190D50920();
      v35 = sub_190D555B0();
      v37 = v36;
      v39 = v38;

      sub_19081E474(v30, v32, v34 & 1);

      LODWORD(v84) = sub_190D54EB0();
      v73 = sub_190D55580();
      v70 = v40;
      v42 = v41;
      v76 = v43;
      sub_19081E474(v35, v37, v39 & 1);

      sub_190D55FD0();
      v44 = *(__swift_project_boxed_opaque_existential_1(&v84, v86) + 32);
      __swift_destroy_boxed_opaque_existential_0(&v84);
      v45 = 5;
      if (!v44)
      {
        v45 = 0;
      }

      v75 = v45;
      v74 = swift_getKeyPath();
      LOBYTE(v84) = v42 & 1;
      v83 = v44 ^ 1;
      v46 = v42 & 1;
      LODWORD(v27) = v44 ^ 1 | 0x10000;
    }

    else
    {

      v73 = 0;
      v70 = 0;
      v46 = 0;
      v75 = 0;
      v76 = 0;
      v74 = 0;
      LODWORD(v27) = 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v84);
    v73 = 0;
    v70 = 0;
    v46 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
  }

  v48 = v80;
  v47 = v81;
  v49 = v68;
  v50 = v82;
  v51 = KeyPath;
  sub_1908BEC28(v81, v80, v68, v82, KeyPath);
  v52 = v70;
  sub_1908BEC28(v73, v70, v46, v76, v74);
  sub_1908BEC28(v47, v48, v49, v50, v51);
  v53 = v73;
  v67 = v46;
  v54 = v76;
  v55 = v74;
  sub_1908BEC28(v73, v52, v46, v76, v74);

  sub_1908BEC78(v53, v52, v46, v54, v55);
  v56 = v80;
  v57 = v81;
  v58 = v82;
  v59 = KeyPath;
  v60 = v79;
  LODWORD(v54) = v77;
  sub_1908BEC78(v81, v80, v49, v82, KeyPath);
  v61 = v71;
  *v71 = v57;
  v61[1] = v56;
  v61[2] = v49;
  v61[3] = v58;
  v61[4] = v59;
  v61[5] = v60;
  *(v61 + 50) = BYTE2(v54);
  *(v61 + 24) = v54;
  v61[7] = v53;
  v61[8] = v52;
  v62 = v67;
  v64 = v75;
  v63 = v76;
  v61[9] = v67;
  v61[10] = v63;
  v65 = v74;
  v61[11] = v74;
  v61[12] = v64;
  *(v61 + 106) = BYTE2(v27);
  *(v61 + 52) = v27;
  sub_1908BEC78(v53, v52, v62, v63, v65);
  return sub_1908BEC78(v57, v56, v49, v82, v59);
}

__n128 sub_1908BC8A8@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v25 = a3;
  v4 = sub_190D54A80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B08, &qword_190DDAE18);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AF0, &qword_190DDAE08);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  sub_1908BCBC8(a1, v10);
  sub_190D54A70();
  sub_1908BE3B0();
  sub_1908BE740(&qword_1EAD45268, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  sub_190D55720();
  (*(v5 + 8))(v7, v4);
  sub_19022EEA4(v10, &qword_1EAD55B08, &qword_190DDAE18);
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B00, &qword_190DDAE10) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8, &qword_190DDC720);
  sub_190D54480();
  *v15 = swift_getKeyPath();
  v16 = sub_190D55320();
  KeyPath = swift_getKeyPath();
  v18 = &v14[*(v12 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_190D56500();
  sub_190D54430();
  v19 = v25;
  sub_19081E40C(v14, v25, &qword_1EAD55AF0, &qword_190DDAE08);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AD8, &qword_190DDAE00) + 36);
  v21 = v31;
  *(v20 + 64) = v30;
  *(v20 + 80) = v21;
  *(v20 + 96) = v32;
  v22 = v27;
  *v20 = v26;
  *(v20 + 16) = v22;
  result = v29;
  *(v20 + 32) = v28;
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_1908BCBC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BannerButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B40, &qword_190DDAE98);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v30 - v12);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B30, &qword_190DDAE28);
  v14 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v17 = &v30 - v16;
  v18 = *(a1 + 32);
  if (v18 && *(v18 + 16))
  {
    v31 = &v30;
    MEMORY[0x1EEE9AC00](v15);
    *(&v30 - 2) = v19;
    MEMORY[0x1EEE9AC00](v20);
    *(&v30 - 2) = v21;
    *(&v30 - 1) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD596C0, &unk_190DDAEA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B48, &unk_190E02EB0);
    sub_1908BE60C();
    sub_1908BE690();
    sub_190D554F0();
    v23 = v32;
    (*(v14 + 16))(v13, v17, v32);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B38, &qword_190DDAE30);
    sub_190233640(&qword_1EAD55B28, &qword_1EAD55B30, &qword_190DDAE28, MEMORY[0x1E697CD28]);
    sub_190233640(&qword_1EAD45700, &qword_1EAD55B38, &qword_190DDAE30, &unk_190DDB2D8);
    sub_190D54C50();
    return (*(v14 + 8))(v17, v23);
  }

  else
  {
    sub_1908BE788(a1, v10, type metadata accessor for BannerButton);
    v25 = *(v5 + 80);
    v31 = a2;
    v26 = (v25 + 16) & ~v25;
    v27 = swift_allocObject();
    sub_1908BE7F0(v10, v27 + v26, type metadata accessor for BannerButton);
    sub_1908BE788(a1, v7, type metadata accessor for BannerButton);
    v28 = swift_allocObject();
    sub_1908BE7F0(v7, v28 + v26, type metadata accessor for BannerButton);
    v33 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    sub_190D55FC0();
    v29 = v35;
    *v13 = v34;
    v13[1] = v29;
    v13[2] = sub_1908BE518;
    v13[3] = v27;
    v13[4] = sub_1908BE58C;
    v13[5] = v28;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B38, &qword_190DDAE30);
    sub_190233640(&qword_1EAD55B28, &qword_1EAD55B30, &qword_190DDAE28, MEMORY[0x1E697CD28]);
    sub_190233640(&qword_1EAD45700, &qword_1EAD55B38, &qword_190DDAE30, &unk_190DDB2D8);
    return sub_190D54C50();
  }
}

__n128 sub_1908BD0E4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *a1;
  sub_19081E484();
  sub_190D52690();
  v3 = sub_190D555F0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v18 = sub_190D56500();
  v19 = v10;
  LOBYTE(v17) = 1;
  LOBYTE(v16) = 1;
  sub_190D54430();
  v11 = v7 & 1;
  v12 = [objc_opt_self() labelColor];
  v13 = sub_190D55CE0();
  KeyPath = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v9;
  *(a2 + 96) = v24;
  *(a2 + 112) = v25;
  *(a2 + 128) = v26;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  result = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v23;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v13;
  return result;
}

uint64_t sub_1908BD214(uint64_t a1)
{
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD59920, &qword_190DE7730);
  sub_190D518A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B68, &unk_190DDAEB0);
  sub_190233640(&unk_1EAD59AE0, &unk_1EAD59920, &qword_190DE7730, MEMORY[0x1E69E6338]);
  sub_190233640(&qword_1EAD55B60, &qword_1EAD55B68, &unk_190DDAEB0, MEMORY[0x1E697D680]);
  sub_1908BE740(&qword_1EAD55B70, type metadata accessor for MenuItem, &unk_190DE7744);
  return sub_190D56290();
}

uint64_t sub_1908BD370(uint64_t a1)
{
  v2 = type metadata accessor for MenuItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1908BE788(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MenuItem);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1908BE7F0(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for MenuItem);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B78, &qword_190DDAEC0);
  sub_1908BE8C4();
  return sub_190D56030();
}

uint64_t sub_1908BD4DC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B90, &qword_190DDAEC8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55BA0, &qword_190DDAEE0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  if (a1[3])
  {
    v8 = *a1;
    v9 = a1[1];
    v18 = v8;
    v19 = v9;
    sub_19081E484();
    sub_190D52690();
    sub_190D52690();
    sub_190D55F40();
    v10 = sub_190D55E00();
    KeyPath = swift_getKeyPath();
    v12 = &v4[*(v2 + 36)];
    *v12 = KeyPath;
    v12[1] = v10;
    sub_19022FD14(v4, v7, &qword_1EAD55B90, &qword_190DDAEC8);
    swift_storeEnumTagMultiPayload();
    sub_1908BE950();
    sub_190D54C50();
    return sub_19022EEA4(v4, &qword_1EAD55B90, &qword_190DDAEC8);
  }

  else
  {
    v14 = a1[1];
    v18 = *a1;
    v19 = v14;
    sub_19081E484();
    sub_190D52690();
    *v7 = sub_190D555F0();
    *(v7 + 1) = v15;
    v7[16] = v16 & 1;
    *(v7 + 3) = v17;
    swift_storeEnumTagMultiPayload();
    sub_1908BE950();
    return sub_190D54C50();
  }
}

void sub_1908BD720(uint64_t a3@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  v4 = sub_190D555F0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_190D552B0();
  sub_190D539C0();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
  *(a3 + 56) = v14;
  *(a3 + 64) = v15;
  *(a3 + 72) = 0;
}

uint64_t sub_1908BD7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1908BF444();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1908BD834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1908BF444();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1908BD898(uint64_t a1)
{
  sub_1908BF444();
  sub_190D54C10();
  __break(1u);
}

uint64_t sub_1908BD8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = sub_190D56090();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55C38, &qword_190DDB328);
  v8 = sub_190D54200();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v25 = &v23 - v11;
  v12 = *v2;
  v38 = v2[1];
  v39 = v12;
  v13 = v2[2];
  v14 = v2[3];
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v3;
  v16 = *(v2 + 1);
  *(v15 + 32) = *v2;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(v2 + 2);
  v32 = v4;
  v33 = v3;
  v34 = v2;
  sub_1908BF39C(&v39, v37);
  sub_19022FD14(&v38, v37, &qword_1EAD55C40, &qword_190DDB330);
  sub_19029063C(v13, v14);
  sub_190D50920();
  sub_190D56030();
  v29 = v4;
  v30 = v3;
  v31 = v2;
  sub_190D56500();
  WitnessTable = swift_getWitnessTable();
  sub_1908BF2EC();
  v18 = v24;
  sub_190D556C0();
  (*(v26 + 8))(v7, v5);
  v19 = sub_190233640(&unk_1EAD45258, &qword_1EAD55C38, &qword_190DDB328, MEMORY[0x1E697F940]);
  v35 = WitnessTable;
  v36 = v19;
  swift_getWitnessTable();
  v20 = v25;
  sub_19096BC74();
  v21 = *(v27 + 8);
  v21(v18, v8);
  sub_19096BC74();
  return (v21)(v20, v8);
}

void sub_1908BDC58(__int128 *a1)
{
  v1 = *(a1 + 2);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C48, &qword_190DDB338);
    sub_190D55FD0();
    v1();
  }
}

uint64_t sub_1908BDCD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v10 + 32))(v7);
  sub_19096BC74();
  v11 = *(v3 + 8);
  v11(v5, a2);
  sub_19096BC74();
  return (v11)(v9, a2);
}

id sub_1908BDE40()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v1 = [objc_opt_self() effectWithStyle_];
  [v0 setEffect_];

  return v0;
}

uint64_t sub_1908BDEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1908BF498();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1908BDF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1908BF498();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1908BDF84(uint64_t a1)
{
  sub_1908BF498();
  sub_190D54C10();
  __break(1u);
}

void sub_1908BDFAC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  *a2 = v3;
}

uint64_t sub_1908BE02C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D50920();
  return sub_190D53910();
}

double sub_1908BE0A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for BannerView(0);

  *&result = sub_1908BC8A8(a1, a2).n128_u64[0];
  return result;
}

unint64_t sub_1908BE128()
{
  result = qword_1EAD55AE0;
  if (!qword_1EAD55AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55AD8, &qword_190DDAE00);
    sub_1908BE1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55AE0);
  }

  return result;
}

unint64_t sub_1908BE1B4()
{
  result = qword_1EAD55AE8;
  if (!qword_1EAD55AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55AF0, &qword_190DDAE08);
    sub_1908BE26C();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70, &qword_190DDA2F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55AE8);
  }

  return result;
}

unint64_t sub_1908BE26C()
{
  result = qword_1EAD55AF8;
  if (!qword_1EAD55AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B00, &qword_190DDAE10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B08, &qword_190DDAE18);
    sub_190D54A80();
    sub_1908BE3B0();
    sub_1908BE740(&qword_1EAD45268, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8, &qword_190DDC720, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55AF8);
  }

  return result;
}

unint64_t sub_1908BE3B0()
{
  result = qword_1EAD55B10;
  if (!qword_1EAD55B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B08, &qword_190DDAE18);
    sub_1908BE434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55B10);
  }

  return result;
}

unint64_t sub_1908BE434()
{
  result = qword_1EAD55B18;
  if (!qword_1EAD55B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B20, &qword_190DDAE20);
    sub_190233640(&qword_1EAD55B28, &qword_1EAD55B30, &qword_190DDAE28, MEMORY[0x1E697CD28]);
    sub_190233640(&qword_1EAD45700, &qword_1EAD55B38, &qword_190DDAE30, &unk_190DDB2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55B18);
  }

  return result;
}

uint64_t sub_1908BE518(uint64_t a1)
{
  v3 = type metadata accessor for BannerButton(0);
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = *(v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 16);
  if (v6)
  {
    return v6(a1);
  }

  return result;
}

double sub_1908BE58C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerButton(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_1908BD0E4(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_1908BE60C()
{
  result = qword_1EAD55B50;
  if (!qword_1EAD55B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD596C0, &unk_190DDAEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55B50);
  }

  return result;
}

unint64_t sub_1908BE690()
{
  result = qword_1EAD55B58;
  if (!qword_1EAD55B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B48, &unk_190E02EB0);
    sub_190233640(&qword_1EAD55B60, &qword_1EAD55B68, &unk_190DDAEB0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55B58);
  }

  return result;
}

uint64_t sub_1908BE740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1908BE788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1908BE7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1908BE8C4()
{
  result = qword_1EAD55B80;
  if (!qword_1EAD55B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B78, &qword_190DDAEC0);
    sub_1908BE950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55B80);
  }

  return result;
}

unint64_t sub_1908BE950()
{
  result = qword_1EAD55B88;
  if (!qword_1EAD55B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B90, &qword_190DDAEC8);
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98, &unk_190DDAED0, MEMORY[0x1E697D658]);
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8, &unk_190DDF770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55B88);
  }

  return result;
}

double sub_1908BEA34()
{
  v1 = *(type metadata accessor for BannerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1908BB6C8(v2);
}

unint64_t sub_1908BEA94()
{
  result = qword_1EAD45230;
  if (!qword_1EAD45230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55BE8, &qword_190DDAFD0);
    sub_1908BEB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45230);
  }

  return result;
}

unint64_t sub_1908BEB18()
{
  result = qword_1EAD45238;
  if (!qword_1EAD45238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55BF0, &qword_190DDAFD8);
    sub_1908BEBA4();
    sub_19081E564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45238);
  }

  return result;
}

unint64_t sub_1908BEBA4()
{
  result = qword_1EAD45240;
  if (!qword_1EAD45240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55BF8, &qword_190DDAFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45240);
  }

  return result;
}

double sub_1908BEC28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_19081BE48(a1, a2, a3 & 1);
    sub_190D52690();

    sub_190D50920();
  }

  return result;
}

double sub_1908BEC78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_19081E474(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for BannerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8, &qword_190DDADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D53A60();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v5 + *(v1 + 20)));

  sub_1908BE0A0(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1908BEE10()
{
  v1 = *(type metadata accessor for BannerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1908BC07C(v2);
}

uint64_t sub_1908BEE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewCIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1908BEEFC()
{
  result = qword_1EAD55C18;
  if (!qword_1EAD55C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55A20, &qword_190DDAD50);
    sub_1908BEF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55C18);
  }

  return result;
}

unint64_t sub_1908BEF88()
{
  result = qword_1EAD55C20;
  if (!qword_1EAD55C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD559D8, &qword_190DDAD08);
    sub_1908BF014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55C20);
  }

  return result;
}

unint64_t sub_1908BF014()
{
  result = qword_1EAD55C28;
  if (!qword_1EAD55C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD559D0, &qword_190DDAD00);
    sub_1908BF0CC();
    sub_190233640(qword_1EAD46980, &qword_1EAD55A18, &unk_190DDAD40, &unk_190DDF928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55C28);
  }

  return result;
}

unint64_t sub_1908BF0CC()
{
  result = qword_1EAD55C30;
  if (!qword_1EAD55C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55A08, &qword_190DDAD30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD559C8, &qword_190DDACF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD559C0, &qword_190DDACF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD559B8, &qword_190DDDA80);
    sub_190233640(&qword_1EAD559E8, &qword_1EAD559C0, &qword_190DDACF0, MEMORY[0x1E6981870]);
    sub_190233640(&qword_1EAD44E28, &qword_1EAD559B8, &qword_190DDDA80, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD45248, &qword_1EAD55A10, &qword_190DDAD38, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55C30);
  }

  return result;
}

unint64_t sub_1908BF294()
{
  result = qword_1EAD46010;
  if (!qword_1EAD46010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46010);
  }

  return result;
}

unint64_t sub_1908BF2EC()
{
  result = qword_1EAD45FB0;
  if (!qword_1EAD45FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45FB0);
  }

  return result;
}

void *sub_1908BF3E8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C48, &qword_190DDB338);
  result = sub_190D55FD0();
  *a1 = v3;
  return result;
}

unint64_t sub_1908BF444()
{
  result = qword_1EAD45FA8;
  if (!qword_1EAD45FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45FA8);
  }

  return result;
}

unint64_t sub_1908BF498()
{
  result = qword_1EAD46008;
  if (!qword_1EAD46008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46008);
  }

  return result;
}

unint64_t CKTranscriptBackgroundPresentationStyle.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1908BF504()
{
  result = qword_1EAD55C50;
  if (!qword_1EAD55C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55C50);
  }

  return result;
}

void AcceptedContactBannerView.init(title:subtitle:update:actionButtonHandler:actionButtonMenuItems:xButtonHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v75 = a3;
  *(&v75 + 1) = a4;
  v76 = a2;
  v74 = a1;
  v14 = type metadata accessor for BannerButton(0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v71 = (v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for BannerView(0);
  MEMORY[0x1EEE9AC00](v72);
  v17 = (v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v10[OBJC_IVAR____TtC7ChatKit25AcceptedContactBannerView_banner] = 0;
  v18 = type metadata accessor for AcceptedContactBannerView();
  v87.receiver = v10;
  v87.super_class = v18;
  v19 = objc_msgSendSuper2(&v87, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a6;
  v21[4] = a7;
  v22 = v19;
  v23 = sub_190D50920();
  v24 = CKFrameworkBundle(v23);
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = v24;
  v66 = v22;
  v67 = a5;
  v26 = sub_190D56ED0();
  v27 = sub_190D56ED0();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  if (!v28)
  {
    sub_190D56F10();
    v28 = sub_190D56ED0();
  }

  v29 = objc_allocWithZone(CKBannerButtonObject);
  *&v82 = sub_1908C0220;
  *(&v82 + 1) = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v81 = sub_19084156C;
  *(&v81 + 1) = &block_descriptor_22;
  v30 = _Block_copy(&aBlock);
  v65 = v21;
  sub_190D50920();

  sub_1908C0318();
  v31 = sub_190D57160();

  v32 = [v29 initWithTitle:v28 handler:v30 menuItems:v31];

  _Block_release(v30);
  v33 = objc_opt_self();
  v34 = sub_190D56ED0();
  v70 = [v33 ckImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  *(inited + 32) = v32;
  v36 = MEMORY[0x1E69E7CC0];
  v86 = MEMORY[0x1E69E7CC0];
  v37 = v32;
  v69 = a10;
  sub_190D50920();
  sub_19082DE38(0, 1, 0);
  v38 = v86;
  v68 = a7;
  v63[1] = inited + 32;
  v64 = v37;
  if ((inited & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x193AF3B90](0, inited);
    goto LABEL_8;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v39 = *(inited + 32);
LABEL_8:
  v40 = v39;
  *&aBlock = v39;
  v41 = v71;
  sub_190925EB0(&aBlock, v71);

  v43 = *(v38 + 16);
  v42 = *(v38 + 24);
  if (v43 >= v42 >> 1)
  {
    sub_19082DE38((v42 > 1), v43 + 1, 1);
    v38 = v86;
  }

  *(v38 + 16) = v43 + 1;
  sub_1908C0364(v41, v38 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v43);
  *&aBlock = v74;
  *(&aBlock + 1) = v76;
  v81 = v75;
  LOBYTE(v82) = 1;
  *(&v82 + 1) = v36;
  v44 = v70;
  v83 = v70;
  *&v84 = v38;
  BYTE8(v84) = 1;
  *&v85 = a9;
  *(&v85 + 1) = v69;
  v79[3] = &type metadata for BannerModel;
  v79[4] = &off_1F0412848;
  v45 = swift_allocObject();
  v79[0] = v45;
  v46 = v83;
  v45[3] = v82;
  v45[4] = v46;
  v47 = v85;
  v45[5] = v84;
  v45[6] = v47;
  v48 = v81;
  v45[1] = aBlock;
  v45[2] = v48;
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8, &qword_190DDADF0);
  swift_storeEnumTagMultiPayload();
  v49 = v72;
  sub_19083B854(v79, &v78);
  sub_190D50920();
  sub_190D52690();
  sub_190D52690();
  sub_190D50920();
  v50 = v44;
  sub_1908C03C8(&aBlock, &v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55998, qword_190DDAC80);
  sub_190D55FC0();
  __swift_destroy_boxed_opaque_existential_0(v79);
  v51 = v17 + v49[6];
  *v51 = sub_1908B9430;
  *(v51 + 1) = 0;
  v51[16] = 0;
  *(v17 + v49[7]) = 0x4042000000000000;
  *(v17 + v49[8]) = 0x403C000000000000;
  v52 = v49[9];
  v53 = [objc_opt_self() currentDevice];
  v54 = [v53 userInterfaceIdiom];

  *(v17 + v52) = v54;
  v55 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C68, &unk_190DDF700));
  v56 = sub_190D54B60();
  v57 = [v56 view];
  if (!v57)
  {
    goto LABEL_15;
  }

  v58 = v57;
  v59 = [objc_opt_self() clearColor];
  [v58 setBackgroundColor_];

  sub_190D54B40();
  v60 = [v56 view];

  if (v60)
  {

    sub_1908C0424(&aBlock);

    swift_setDeallocating();
    swift_arrayDestroy();
    v61 = v66;
    [v66 addSubview_];

    v62 = *&v61[OBJC_IVAR____TtC7ChatKit25AcceptedContactBannerView_banner];
    *&v61[OBJC_IVAR____TtC7ChatKit25AcceptedContactBannerView_banner] = v60;

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1908BFDCC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(Strong, a1);
  }
}

id sub_1908C0014(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AcceptedContactBannerView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC7ChatKit25AcceptedContactBannerView_banner;
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit25AcceptedContactBannerView_banner];
  if (v3)
  {
    v4 = v3;
    [v1 bounds];
    [v4 setFrame_];

    v5 = *&v1[v2];
  }

  else
  {
    v5 = 0;
  }

  return [v5 sizeToFit];
}

id AcceptedContactBannerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AcceptedContactBannerView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AcceptedContactBannerView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1908C0250(uint64_t a1)
{
  v2 = sub_190D53A60();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_190D54560();
}

unint64_t sub_1908C0318()
{
  result = qword_1EAD55C60;
  if (!qword_1EAD55C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD55C60);
  }

  return result;
}

uint64_t sub_1908C0364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BannerButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1908C04C4()
{
  v1 = [v0 associatedMessageType];
  v2 = 0;
  if (v1 > 2999)
  {
    if (v1 <= 3003)
    {
      if (v1 <= 3001)
      {
        if (v1 != 3000)
        {
LABEL_10:
          result = CKFrameworkBundle(v1);
          if (result)
          {
            goto LABEL_37;
          }

          __break(1u);
          goto LABEL_48;
        }

LABEL_32:
        result = CKFrameworkBundle(v1);
        if (result)
        {
          goto LABEL_37;
        }

        goto LABEL_50;
      }

      if (v1 != 3002)
      {
LABEL_22:
        result = CKFrameworkBundle(v1);
        if (result)
        {
          goto LABEL_37;
        }

        goto LABEL_49;
      }

LABEL_36:
      result = CKFrameworkBundle(v1);
      if (result)
      {
LABEL_37:
        v6 = result;
        v7 = sub_190D56ED0();
        v8 = sub_190D56ED0();
        v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

        v2 = sub_190D56F10();
LABEL_38:

        return v2;
      }

      goto LABEL_52;
    }

    if (v1 <= 3005)
    {
      if (v1 != 3004)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }

    if (v1 != 3006)
    {
      if (v1 != 3007)
      {
        return v2;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (v1 <= 2003)
    {
      if (v1 <= 2001)
      {
        if (v1 != 2000)
        {
          if (v1 != 2001)
          {
            return v2;
          }

          goto LABEL_10;
        }

        goto LABEL_32;
      }

      if (v1 != 2002)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }

    if (v1 <= 2005)
    {
      if (v1 != 2004)
      {
LABEL_17:
        result = CKFrameworkBundle(v1);
        if (result)
        {
          goto LABEL_37;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_34:
      result = CKFrameworkBundle(v1);
      if (result)
      {
        goto LABEL_37;
      }

      goto LABEL_51;
    }

    if (v1 != 2006)
    {
      if (v1 != 2007)
      {
        return v2;
      }

LABEL_29:
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4 || (v4 = sub_1908C0AAC(), !v5))
      {
        result = CKFrameworkBundle(v4);
        if (result)
        {
          v12 = result;
          v13 = sub_190D56ED0();
          v14 = sub_190D56ED0();
          v9 = [v12 localizedStringForKey:v13 value:0 table:v14];

          v2 = sub_190D56F10();

          goto LABEL_38;
        }

        goto LABEL_53;
      }

      return v4;
    }
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 associatedMessageEmoji];
LABEL_46:
    v2 = sub_190D56F10();

    return v2;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v15 = result;
    v16 = sub_190D56ED0();
    v17 = sub_190D56ED0();
    v11 = [v15 localizedStringForKey:v16 value:0 table:v17];

    goto LABEL_46;
  }

LABEL_54:
  __break(1u);
  return result;
}

id sub_1908C0AAC()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [v0 transferGUID];
  if (!v3)
  {
    sub_190D56F10();
    v3 = sub_190D56ED0();
  }

  v4 = [v2 transferForGUID_];

  if (v4)
  {
    if ([v4 isSticker])
    {
      v5 = [v4 attributionInfo];
      if (v5)
      {
        v6 = v5;
        v7 = sub_190D56D90();

        sub_190D56F10();
        sub_190D58230();
        if (*(v7 + 16))
        {
          v8 = sub_190875C84(&v10);
          if (v9)
          {
            sub_19021834C(*(v7 + 56) + 32 * v8, &v11);

            sub_19084CFD0(&v10);

            if (*(&v12 + 1))
            {
              if (swift_dynamicCast())
              {
                return v10;
              }

              return 0;
            }

            goto LABEL_16;
          }
        }

        sub_19084CFD0(&v10);
      }

      else
      {
      }

      v11 = 0u;
      v12 = 0u;
LABEL_16:
      sub_19021E7D8(&v11);
      return 0;
    }
  }

  return 0;
}

void sub_1908C0F2C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_190D55D00();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v5);
  sub_190D55E20();
  v8 = sub_190D55DF0();

  *a3 = v8;
}

double sub_1908C105C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  sub_190D50920();
  return result;
}

id StyleSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StyleSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StyleSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StyleSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StyleSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static CKComposition.composition(forWritingToolsText:)(void *a1)
{
  v10 = [objc_allocWithZone(CKComposition) init];
  v3 = [a1 length];
  v9 = 1;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = &v10;
  v4[4] = &v9;
  v4[5] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1908C1BA4;
  *(v5 + 24) = v4;
  v8[4] = sub_1908C1BB0;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1908C1A40;
  v8[3] = &block_descriptor_23;
  v6 = _Block_copy(v8);
  v7 = a1;
  sub_190D50920();

  [v7 enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1908C17A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, id *a6, unsigned __int8 *a7, id a8)
{
  if (!*(a1 + 16) || (v14 = sub_1908789E0(), (v15 & 1) == 0) || (sub_19021834C(*(a1 + 56) + 32 * v14, v33), sub_1908C1BD8(), (swift_dynamicCast() & 1) == 0))
  {
    v21 = [a8 attributedSubstringFromRange_];
    v22 = [objc_opt_self() trimUnwantedAttributesFromAttributedString_];
    v23 = [v22 ck_attributedStringByReplacingBIUSWithIMTextStyles];
    v24 = [v23 ck_attributedStringByPostProcessingURLTextForRichLinks];
    v25 = [*a6 _compositionByAppendingText_isExpirable_shelfPluginPayload_shelfMediaObject_addingNewLineIfNedded_];
    if (v25)
    {
      v26 = v25;

      v27 = *a6;
      *a6 = v26;

      *a7 = 0;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v16 = sub_1908C1C24(v32);
  if (v16)
  {
    v17 = v16;
    v18 = [*a6 compositionByAppendingComposition_];
    if (v18)
    {
      v19 = v18;

      v20 = *a6;
      *a6 = v19;

      *a7 = 1;
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (qword_1EAD519C0 != -1)
  {
    swift_once();
  }

  v28 = sub_190D53040();
  __swift_project_value_buffer(v28, qword_1EAD9DA80);
  v29 = sub_190D53020();
  v30 = sub_190D576A0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_19020E000, v29, v30, "Could not create composition from writing tools text attachment", v31, 2u);
    MEMORY[0x193AF7A40](v31, -1, -1);
  }
}

double sub_1908C1A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_19082B370();
  v9 = sub_190D56D90();
  v8(v9, a3, a4, a5);

  return result;
}

uint64_t sub_1908C1B30()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DA80);
  __swift_project_value_buffer(v0, qword_1EAD9DA80);
  sub_190D53010();
  return sub_190D53030();
}

unint64_t sub_1908C1BD8()
{
  result = qword_1EAD55C80;
  if (!qword_1EAD55C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD55C80);
  }

  return result;
}

NSObject *sub_1908C1C24(void *a1)
{
  v2 = [a1 contents];
  if (v2)
  {
    v3 = sub_190D51670();
    v5 = v4;
    v6 = v2;
  }

  else
  {
    v7 = [a1 image];
    v8 = CKCreatePNGRepresentationFromUIImageFilterTypeNone(v7);
    if (!v8)
    {

      if (qword_1EAD519C0 != -1)
      {
        swift_once();
      }

      v20 = sub_190D53040();
      __swift_project_value_buffer(v20, qword_1EAD9DA80);
      v11 = sub_190D53020();
      v21 = sub_190D576A0();
      if (os_log_type_enabled(v11, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_19020E000, v11, v21, "Could not extract attachment data from writing tools text attachment", v22, 2u);
        MEMORY[0x193AF7A40](v22, -1, -1);
      }

      goto LABEL_16;
    }

    v6 = v8;
    v3 = sub_190D51670();
    v5 = v9;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = sub_190D51660();
    if (v2)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_190D56ED0();
    }

    v14 = [v11 mediaObjectWithData:v12 UTIType:v13 filename:0 transcoderUserInfo:0];

    if (v14)
    {
      v15 = [objc_opt_self() compositionWithMediaObject:v14 subject:0];
      sub_19083B6D4(v3, v5);

      v11 = v14;
LABEL_17:

      return v15;
    }

    if (qword_1EAD519C0 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    __swift_project_value_buffer(v16, qword_1EAD9DA80);
    v17 = sub_190D53020();
    v18 = sub_190D576A0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_19020E000, v17, v18, "Could not create media object from writing tools text attachment", v19, 2u);
      MEMORY[0x193AF7A40](v19, -1, -1);
    }

    sub_19083B6D4(v3, v5);

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908C1F64()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD55C90);
  __swift_project_value_buffer(v0, qword_1EAD55C90);
  return sub_190D53030();
}

Swift::Bool __swiftcall CKConversationListCollectionViewController.shouldShowAlertForRemotelyManagedUser()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C9DD0]) init];
  v1 = [v0 shouldRequestMoreTime];

  return v1;
}

void CKConversationListCollectionViewController.getAddToContactsRemoteAlert(conversation:sender:)(void *a1, void *a2)
{
  v5 = [a1 handles];
  sub_19086E9EC();
  v6 = sub_190D57180();

  if (v6 >> 62)
  {
    v7 = sub_190D581C0();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = a2;
  v81 = v2;
  if (!v7)
  {

    v21 = [a1 isGroupConversation];
    v22 = v21;
    v23 = CKFrameworkBundle(v21);
    v24 = v23;
    if (v22)
    {
      if (!v23)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else if (!v23)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v35 = sub_190D56ED0();
    v36 = sub_190D56ED0();
    v37 = [v24 localizedStringForKey:v35 value:0 table:v36];

    sub_190D56F10();
    goto LABEL_20;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x193AF3B90](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v8 = *(v6 + 32);
  }

  a2 = v8;

  v9 = [a1 isGroupConversation];
  v2 = MEMORY[0x1E69E6158];
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_190DD1DA0;
    v10 = [a2 displayID];
    v11 = sub_190D56F10();
    v13 = v12;

    *(v6 + 56) = v2;
    *(v6 + 64) = sub_19081EA10();
    *(v6 + 32) = v11;
    *(v6 + 40) = v13;
    v14 = [a1 handles];
    v15 = sub_190D57180();

    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

      if (__OFSUB__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      v17 = MEMORY[0x1E69E65A8];
      *(v6 + 96) = MEMORY[0x1E69E6530];
      *(v6 + 104) = v17;
      *(v6 + 72) = v16 - 1;
      v18 = sub_1908E9E4C(0xD000000000000015, 0x8000000190E62FF0, v6);
      v20 = v19;

      goto LABEL_16;
    }

LABEL_30:
    v16 = sub_190D581C0();
    goto LABEL_10;
  }

  v25 = [a2 displayID];
  v18 = sub_190D56F10();
  v20 = v26;

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_190DD1D90;
  *(v27 + 56) = v2;
  v28 = sub_19081EA10();
  *(v27 + 64) = v28;
  *(v27 + 32) = v18;
  *(v27 + 40) = v20;
  v29 = CKFrameworkBundle(v28);
  if (!v29)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v30 = v29;
  v31 = sub_190D56ED0();
  v32 = sub_190D56ED0();
  v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

  sub_190D56F10();
  sub_190D56EE0();

LABEL_20:
  v38 = CKFrameworkBundle(v34);
  if (!v38)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v39 = v38;
  v40 = sub_190D56ED0();
  v41 = sub_190D56ED0();
  v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

  sub_190D56F10();
  v43 = sub_190D56ED0();

  v44 = sub_190D56ED0();

  v45 = [objc_opt_self() alertControllerWithTitle:v43 message:v44 preferredStyle:0];

  v47 = CKFrameworkBundle(v46);
  if (!v47)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v48 = v47;
  v49 = sub_190D56ED0();
  v50 = sub_190D56ED0();
  v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

  sub_190D56F10();
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  v53 = a1;
  v54 = sub_190D56ED0();

  v87 = sub_1908C3264;
  v88 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v84 = 1107296256;
  v85 = sub_19084156C;
  v86 = &block_descriptor_24;
  v55 = _Block_copy(&aBlock);

  v56 = objc_opt_self();
  v57 = [v56 actionWithTitle:v54 style:0 handler:v55];
  _Block_release(v55);

  v79 = v57;
  v58 = CKFrameworkBundle([v45 addAction_]);
  if (!v58)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v59 = v58;
  v60 = sub_190D56ED0();
  v61 = sub_190D56ED0();
  v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

  sub_190D56F10();
  sub_19023C414(v80, v82);
  v63 = swift_allocObject();
  *(v63 + 16) = v53;
  *(v63 + 24) = v81;
  v64 = v82[1];
  *(v63 + 32) = v82[0];
  *(v63 + 48) = v64;
  v65 = v53;
  v66 = v81;
  v67 = sub_190D56ED0();

  v87 = sub_1908C326C;
  v88 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v84 = 1107296256;
  v85 = sub_19084156C;
  v86 = &block_descriptor_6_2;
  v68 = _Block_copy(&aBlock);

  v69 = [v56 actionWithTitle:v67 style:0 handler:v68];
  _Block_release(v68);

  v70 = CKFrameworkBundle([v45 addAction_]);
  if (!v70)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v71 = v70;
  v72 = sub_190D56ED0();
  v73 = sub_190D56ED0();
  v74 = [v71 &selRef_messageContext + 4];

  sub_190D56F10();
  v75 = sub_190D56ED0();

  v87 = nullsub_10;
  v88 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v84 = 1107296256;
  v85 = sub_19084156C;
  v86 = &block_descriptor_9_3;
  v76 = _Block_copy(&aBlock);

  v77 = 1;
  v78 = [v56 actionWithTitle:v75 style:1 handler:v76];
  _Block_release(v76);

  [v45 addAction_];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0)
  {
    v77 = CKIsRunningInMacCatalyst() != 0;
  }

  [v45 setPreferredStyle_];
}

void sub_1908C2B14(int a1, id a2)
{
  v2 = [a2 chat];
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    goto LABEL_15;
  }

  v4 = v2;
  v5 = [v2 participants];

  sub_19086E9EC();
  v6 = sub_190D57180();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:

LABEL_15:
    v19 = objc_opt_self();
    v20 = sub_190D57160();

    v22[4] = sub_1908C2D6C;
    v22[5] = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_190BB9AE8;
    v22[3] = &block_descriptor_12_3;
    v21 = _Block_copy(v22);
    [v19 sendCommLimitsQuestionForHandles:v20 withReply:v21];
    _Block_release(v21);

    return;
  }

  v7 = sub_190D581C0();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  v22[0] = v3;
  sub_19082DBB4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v22[0];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x193AF3B90](v8, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 ID];
      v13 = sub_190D56F10();
      v15 = v14;

      v22[0] = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_19082DBB4((v16 > 1), v17 + 1, 1);
        v9 = v22[0];
      }

      ++v8;
      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v7 != v8);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1908C2D6C(void *a1)
{
  if (qword_1EAD519C8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD55C90);
  v3 = a1;
  oslog = sub_190D53020();
  v4 = sub_190D576A0();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    if (a1)
    {
      swift_getErrorValue();
      v7 = sub_190D58800();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 7104878;
    }

    v10 = sub_19021D9F8(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_19020E000, oslog, v4, "Finished call to Contacts to send Communication Limits question to AskTo. Error: %{public}s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  else
  {
  }
}

id _sSo42CKConversationListCollectionViewControllerC7ChatKitE021getScreenTimePasscodeE012conversationSo012UINavigationE0CSo0A0C_tF_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_190DD55F0;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 descriptorForRequiredKeys];
  v4 = [a1 recipient];
  v5 = v4;
  if (!v4 || (v6 = v4, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80), v7 = sub_190D57160(), v8 = [v6 cnContactWithKeys:v7 shouldFetchSuggestedContact:1], v6, v7, !v8))
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  }

  v9 = [v3 viewControllerForNewContact_];
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 getContactStore];

  [v9 setContactStore_];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v13 = result;

    v14 = [objc_opt_self() defaultCenter];
    v15 = objc_allocWithZone(MEMORY[0x1E695CE78]);
    v16 = v11;
    v17 = [v15 initWithContactStore:v16 accountStore:v13 notificationCenter:v14];

    v18 = [v17 downtimeWhitelistContainer];
    [v9 setParentContainer_];

    v19 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKPosterRenderingContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKPosterRenderingContext.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPosterRenderingContext();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKPosterRenderingContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPosterRenderingContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TranscriptTextEffectsState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptTextEffectsState.init()()
{
  v0[OBJC_IVAR___CKTranscriptTextEffectsState_inTransition] = 0;
  v0[OBJC_IVAR___CKTranscriptTextEffectsState_isReady] = 0;
  v0[OBJC_IVAR___CKTranscriptTextEffectsState_hasAttention] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptTextEffectsState();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1908C34F4()
{
  v1 = OBJC_IVAR___CKTranscriptTextEffectsState_inTransition;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1908C358C(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptTextEffectsState_inTransition;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1908C3684()
{
  v1 = OBJC_IVAR___CKTranscriptTextEffectsState_isReady;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1908C371C(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptTextEffectsState_isReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1908C3814()
{
  v1 = OBJC_IVAR___CKTranscriptTextEffectsState_hasAttention;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1908C38AC(char a1)
{
  v3 = OBJC_IVAR___CKTranscriptTextEffectsState_hasAttention;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1908C3A00()
{
  v1 = OBJC_IVAR___CKTranscriptTextEffectsState_isReady;
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (v2 = OBJC_IVAR___CKTranscriptTextEffectsState_inTransition, swift_beginAccess(), (*(v0 + v2) & 1) == 0))
  {
    v4 = OBJC_IVAR___CKTranscriptTextEffectsState_hasAttention;
    swift_beginAccess();
    v3 = *(v0 + v4) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

id TranscriptTextEffectsState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptTextEffectsState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1908C3CF4()
{
  type metadata accessor for CKTranslationCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_190822028(MEMORY[0x1E69E7CC0]);
  *(v0 + 112) = result;
  qword_1EAD9D898 = v0;
  return result;
}

uint64_t sub_1908C3D40()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_1908C3DA8()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD55D30 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908C3DEC()
{
  swift_getKeyPath();
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D51C20();

  swift_getKeyPath();
  sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  v2 = v1;
  sub_190D51C20();

  v3 = [*&v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] isBusinessConversation];

  return v3 ^ 1;
}

id sub_1908C3F94()
{
  v1 = v0;
  if (!CKIsRunningInMacCatalyst())
  {
    swift_getKeyPath();
    sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
    sub_190D51C20();

    v2 = *(v0 + 16);
    swift_getKeyPath();
    sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    v3 = v2;
    sub_190D51C20();

    LOBYTE(v2) = v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasLeftConversation];

    if (v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  swift_getKeyPath();
  sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v5 = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  v6 = sub_1908C4658(v5);

  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v7 = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  v8 = sub_1908C4A54(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DD5CE0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v30 = v9;
  v10 = v6;
  v11 = v8;
  if (!CKIsRunningInMacCatalyst() || (swift_getKeyPath(), sub_190D51C20(), , swift_getKeyPath(), sub_190D51C20(), , (v12 = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat]) == 0) || (v13 = v12, v14 = objc_msgSend(v12, sel_chatStyle), v13, v14 != 45))
  {
LABEL_11:
    swift_getKeyPath();
    sub_190D51C20();

    swift_getKeyPath();
    sub_190D51C20();

    v27 = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
    sub_1908C9810();

    MEMORY[0x193AF29E0]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v4 = v30;
    v28 = sub_1908C5324();
    if (v28)
    {
      v29 = v28;
      MEMORY[0x193AF29E0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      return v30;
    }

    else
    {
    }

    return v4;
  }

  result = CKFrameworkBundle(v15);
  if (result)
  {
    v17 = result;
    v18 = sub_190D56ED0();
    v19 = sub_190D56ED0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    sub_190D56F10();
    v21 = objc_allocWithZone(MEMORY[0x1E695D160]);
    v22 = @"ScreenSharing";
    v23 = sub_190D56ED0();

    v24 = sub_190D56ED0();
    v25 = [v21 initWithTitle:v23 actionType:v22 systemImageName:v24 overrideEnabledState:1 actionBlock:0];

    [v25 setShouldPresentDisambiguationUI_];
    v26 = v25;
    MEMORY[0x193AF29E0]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_1908C4658(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  v25[0] = v1;
  sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
  sub_190D51C20();

  v4 = *(v1 + 16);
  v5 = sub_190CEB5DC();

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    swift_getKeyPath();
    v25[0] = v2;
    sub_190D51C20();

    v8 = *(v2 + 16);
    swift_getKeyPath();
    v25[0] = v8;
    sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    v9 = v8;
    sub_190D51C20();

    LOBYTE(v8) = v9[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation];

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      swift_getKeyPath();
      v25[0] = v2;
      sub_190D51C20();

      v10 = *(v2 + 16);
      swift_getKeyPath();
      v11 = v10;
      sub_190D51C20();

      v7 = [objc_opt_self() isTelephonyAvailable];
    }
  }

  result = CKFrameworkBundle(v6);
  if (result)
  {
    v13 = result;
    v14 = sub_190D56ED0();
    v15 = sub_190D56ED0();
    v16 = [v13 localizedStringForKey:v14 value:0 table:{v15, v25[0]}];

    sub_190D56F10();
    v17 = *MEMORY[0x1E695C150];
    v18 = swift_allocObject();
    *(v18 + 16) = v7;
    *(v18 + 24) = a1;
    v19 = objc_allocWithZone(MEMORY[0x1E695D160]);
    v20 = a1;
    v21 = v17;
    v22 = sub_190D56ED0();

    v25[4] = sub_1908C97E0;
    v25[5] = v18;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1107296256;
    v25[2] = sub_1908C93E4;
    v25[3] = &block_descriptor_115;
    v23 = _Block_copy(v25);

    v24 = [v19 initWithTitle:v22 actionType:v21 actionBlock:v23];
    _Block_release(v23);

    [v24 setShouldOverrideEnabledState_];
    [v24 setOverrideEnabledState_];
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908C4A54(void *a1)
{
  swift_getKeyPath();
  sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
  sub_190D51C20();

  v3 = *(v1 + 16);
  swift_getKeyPath();
  v25[0] = v3;
  sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  v4 = v3;
  sub_190D51C20();

  v5 = objc_opt_self();
  v6 = *&v4[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];
  v7 = [v5 isFaceTimeVideoAvailable_];
  v8 = [v6 chat];
  if (!v8)
  {

    goto LABEL_5;
  }

  v9 = v8;
  v10 = [v8 supportsCapabilities_];

  if ((v10 & 1) == 0)
  {
LABEL_5:
    v7 = 0;
  }

  result = CKFrameworkBundle(v11);
  if (result)
  {
    v13 = result;
    v14 = sub_190D56ED0();
    v15 = sub_190D56ED0();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    sub_190D56F10();
    v17 = *MEMORY[0x1E695C1B8];
    v18 = swift_allocObject();
    *(v18 + 16) = v7;
    *(v18 + 24) = a1;
    v19 = objc_allocWithZone(MEMORY[0x1E695D160]);
    v20 = a1;
    v21 = v17;
    v22 = sub_190D56ED0();

    v25[4] = sub_1908C97D8;
    v25[5] = v18;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1107296256;
    v25[2] = sub_1908C93E4;
    v25[3] = &block_descriptor_106;
    v23 = _Block_copy(v25);

    v24 = [v19 initWithTitle:v22 actionType:v21 actionBlock:v23];
    _Block_release(v23);

    [v24 setShouldOverrideEnabledState_];
    [v24 setOverrideEnabledState_];
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908C4DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = aBlock - v12;
  sub_19022FD14(a3, v6, &unk_1EAD55F20, &unk_190DD75D0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_19022EEA4(v6, &unk_1EAD55F20, &unk_190DD75D0);
  }

  v15 = *(v8 + 32);
  v15(v13, v6, v7);
  v16 = [objc_opt_self() sharedApplication];
  v17 = sub_190D51570();
  (*(v8 + 16))(v10, v13, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v15((v19 + v18), v10, v7);
  aBlock[4] = sub_1908C9F54;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190896518;
  aBlock[3] = &block_descriptor_131;
  v20 = _Block_copy(aBlock);

  [v16 openURL:v17 withCompletionHandler:v20];
  _Block_release(v20);

  return (*(v8 + 8))(v13, v7);
}

void sub_1908C50A0(char a1, uint64_t a2)
{
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9DC20);
  (*(v5 + 16))(v7, a2, v4);
  v9 = sub_190D53020();
  v10 = sub_190D576C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    sub_1908C9FC4(&qword_1EAD55F30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v13 = sub_190D58720();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_19021D9F8(v13, v15, &v18);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_19020E000, v9, v10, "Opened URL: %s success: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

id sub_1908C5324()
{
  swift_getKeyPath();
  sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  v16[0] = v1;
  sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  v2 = v1;
  sub_190D51C20();

  LOBYTE(v1) = v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation];

  if ((v1 & 1) == 0)
  {
    result = CKFrameworkBundle(v3);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:{v7, v16[0]}];

    sub_190D56F10();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = objc_allocWithZone(MEMORY[0x1E695D160]);
    v11 = @"OpenInContacts";
    sub_190D50920();
    v12 = sub_190D56ED0();

    v13 = sub_190D56ED0();
    v16[4] = sub_1908C97D0;
    v16[5] = v9;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1908C93E4;
    v16[3] = &block_descriptor_25;
    v14 = _Block_copy(v16);

    v15 = [v10 initWithTitle:v12 actionType:v11 systemImageName:v13 overrideEnabledState:1 actionBlock:v14];
    _Block_release(v14);

    if (v15)
    {
      [v15 setShouldPresentDisambiguationUI_];
      return v15;
    }
  }

  return 0;
}

double sub_1908C565C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
    sub_190D51C20();

    v6 = *(v5 + 16);

    swift_getKeyPath();
    v10 = v6;
    sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C20();

    v7 = *&v6[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
    sub_190D52690();

    if (*(v7 + 16))
    {
      v8 = *(v7 + 32);

      v9 = [v8 entity];

      if (v9)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1908C6004(v9);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1908C5838(void *a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ContactCardNavigationDestination(0);
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    return;
  }

  v7 = [a1 defaultIMHandle];
  if (!v7)
  {
    __break(1u);
    goto LABEL_29;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
  v9 = sub_190D57160();
  v10 = [v8 cnContactWithKeys_];

  if (!v10 || (v11 = [objc_opt_self() isCNContactAKnownContact_], v10, !v11))
  {
    v50 = 0;
    goto LABEL_14;
  }

  v12 = [a1 defaultIMHandle];
  if (!v12)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_190D57160();
  v15 = [v13 cnContactWithKeys_];

  if (v15)
  {
    v16 = [v15 identifier];

    if (!v16)
    {
      sub_190D56F10();
      v16 = sub_190D56ED0();
    }

    if (qword_1EAD519E0 != -1)
    {
      swift_once();
    }

    v17 = qword_1EAD9DA98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_190DD55F0;
    v19 = objc_opt_self();
    v20 = v17;
    *(v18 + 32) = [v19 descriptorForRequiredKeys];
    v21 = sub_190D57160();

    *&v51 = 0;
    v22 = [v20 unifiedContactWithIdentifier:v16 keysToFetch:v21 error:&v51];

    if (v22)
    {
      v23 = v51;
      v50 = v22;
LABEL_14:
      swift_getKeyPath();
      *&v51 = v1;
      sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
      v24 = a1;
      v25 = v1;
      sub_190D51C20();

      v26 = *(v1 + 16);
      *v6 = 0x43746361746E6F63;
      v6[1] = 0xEB00000000647261;
      v6[2] = v24;
      type metadata accessor for DetailsViewConfiguration(0);
      sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
      v27 = v26;
      sub_190D56340();
      v28 = v6 + *(v3 + 28);
      LOBYTE(v55) = 0;
      sub_190D55FC0();
      v29 = *(&v51 + 1);
      *v28 = v51;
      *(v28 + 1) = v29;
      v30 = v6 + *(v3 + 32);
      v55 = 0;
      v56 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55F90, &unk_190DDB840);
      sub_190D55FC0();
      v31 = v52;
      *v30 = v51;
      *(v30 + 2) = v31;
      swift_getKeyPath();
      *&v51 = v25;
      sub_190D51C20();

      v32 = *(v25 + 16);
      swift_getKeyPath();
      *&v51 = v32;
      v33 = v32;
      sub_190D51C20();

      v34 = *&v33[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState];

      v53 = v3;
      v54 = sub_1908C9FC4(&unk_1EAD55F10, type metadata accessor for ContactCardNavigationDestination, &unk_190DDBA68);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
      sub_1908C976C(v6, boxed_opaque_existential_1);
      sub_190865684(&v51);

      sub_19083EC5C(v6);
      sub_19083EC08(&v51);
      return;
    }

    v40 = v51;
    v41 = sub_190D51420();

    swift_willThrow();
    if (qword_1EAD51A68 != -1)
    {
      swift_once();
    }

    v42 = sub_190D53040();
    __swift_project_value_buffer(v42, qword_1EAD9DC20);
    v43 = v41;
    v44 = sub_190D53020();
    v45 = sub_190D576A0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v41;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_19020E000, v44, v45, "Failed to get unifiedContact from suggestionsEnabledContactStore with error: %@", v46, 0xCu);
      sub_19022EEA4(v47, &unk_1EAD54610, &qword_190DD6010);
      MEMORY[0x193AF7A40](v47, -1, -1);
      MEMORY[0x193AF7A40](v46, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EAD51A68 != -1)
    {
      swift_once();
    }

    v36 = sub_190D53040();
    __swift_project_value_buffer(v36, qword_1EAD9DC20);
    v50 = sub_190D53020();
    v37 = sub_190D576C0();
    if (os_log_type_enabled(v50, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_19020E000, v50, v37, "cannot get identifier from entity", v38, 2u);
      MEMORY[0x193AF7A40](v38, -1, -1);
    }

    v39 = v50;
  }
}

void sub_1908C6004(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_190DD55F0;
  *(v2 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
  v3 = sub_190D57160();

  v4 = [a1 cnContactWithKeys:v3 shouldFetchSuggestedContact:1];

  if (!CKIsRunningInMacCatalyst())
  {
    goto LABEL_4;
  }

  if (!v4)
  {
    return;
  }

  if ([objc_opt_self() isCNContactAKnownContact_])
  {
LABEL_4:
    sub_1908C5838(a1);
  }
}

uint64_t sub_1908C6178()
{
  swift_getKeyPath();
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel);
}

void sub_1908C6220(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
    sub_190D51C10();
  }
}

uint64_t sub_1908C6338()
{
  swift_getKeyPath();
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName);
  sub_190D52690();
  return v1;
}

uint64_t sub_1908C63F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName);
  a2[1] = v4;
  return sub_190D52690();
}

double sub_1908C64AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName);
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
    sub_190D51C10();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1908C663C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D51C20();

  return *(v2 + *a2);
}

void sub_1908C66E4(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D51C20();

  v7 = (v6 + *a3);
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *a4 = v8;
  *(a4 + 8) = v7;
}

double sub_1908C67CC(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + *a3;
  if ((*(v6 + 8) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *v6;
    if (*v6 != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v6 = *&a1;
    *(v6 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D51C10();

  return result;
}

void sub_1908C6904(double a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D51C20();

  if (*(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__headerViewYOriginInScrollView + 8))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__headerViewYOriginInScrollView);
  }

  swift_getKeyPath();
  sub_190D51C20();

  if (*(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupHeaderViewTitleScrollThreshold + 8) == 1)
  {
    if (a1 > 0.0)
    {
      v5 = v4 + 0.0;
      goto LABEL_9;
    }

LABEL_11:
    v7 = 0;
    v8 = 0;
LABEL_20:
    swift_getKeyPath();
    sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
    sub_190D51C20();

    v18 = *(v2 + 16);
    swift_getKeyPath();
    sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    v19 = v18;
    sub_190D51C20();

    v20 = *&v19[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState];

    sub_190865508(v7, v8);
    return;
  }

  if (a1 <= 0.0)
  {
    goto LABEL_11;
  }

  v5 = v4 + *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupHeaderViewTitleScrollThreshold);
LABEL_9:
  if (((v5 < a1) ^ *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190D51C10();

    if (v5 >= a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel) = v5 < a1;
    if (v5 >= a1)
    {
      goto LABEL_11;
    }
  }

  swift_getKeyPath();
  sub_190D51C20();

  if (*(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName + 8))
  {
    v7 = *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName);
    v8 = *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName + 8);
LABEL_19:
    sub_190D52690();
    goto LABEL_20;
  }

  swift_getKeyPath();
  sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v9 = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) name];
  if (v9)
  {
    v10 = v9;
    v7 = sub_190D56F10();
    v8 = v11;

    goto LABEL_19;
  }

  v12 = CKFrameworkBundle(0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_190D56ED0();
    v15 = sub_190D56ED0();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    v7 = sub_190D56F10();
    v8 = v17;

    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1908C6E00(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__isPresentingEditNameAndPhoto) = 0;
  v3 = OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel_shouldPlaceGroupIdentityInHeader;
  *(v1 + v3) = [objc_opt_self() __ck_currentDeviceIsMac] ^ 1;
  v4 = v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupHeaderViewTitleScrollThreshold;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel) = 0;
  v5 = (v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName);
  *v5 = 0;
  v5[1] = 0;
  v6 = v1 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__headerViewYOriginInScrollView;
  *v6 = 0;
  *(v6 + 8) = 1;
  sub_190D51C50();
  sub_190D51C50();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1908C6ECC()
{

  v1 = OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1908C6F48()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_190D50920();

  v3(v0 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsGroupIdentityViewModel(uint64_t a1)
{
  result = qword_1EAD55D70;
  if (!qword_1EAD55D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1908C7098(uint64_t a1, __n128 a2)
{
  result = sub_190D51C60();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1908C714C(uint64_t a1)
{
  sub_1908C72F8(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration);
  if (v1 <= 0x3F)
  {
    sub_1908C72F8(319, &qword_1EAD55E10, type metadata accessor for DetailsGroupIdentityViewModel);
    if (v2 <= 0x3F)
    {
      sub_1908C739C(319, &qword_1EAD44E10, &qword_1EAD55E20, qword_190DDB640, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1908C734C();
        if (v4 <= 0x3F)
        {
          sub_1908C739C(319, &unk_1EAD55E30, &qword_1EAD57F80, &unk_190DDD1A0, MEMORY[0x1E6981948]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1908C72F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D56360();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1908C734C()
{
  if (!qword_1EAD55E28)
  {
    v0 = sub_190D56250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD55E28);
    }
  }
}

void sub_1908C739C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_1908C7444(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = v2[1];
  v4 = v2[2];
  v7[1] = *v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55EF0, &qword_190DDB710);
  MEMORY[0x193AF1A80](v7, v5);
  return *v7;
}

uint64_t sub_1908C74A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55EE8, &qword_190DDB708);
  return sub_190D56200();
}

void sub_1908C7548(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = 0;
  v18 = type metadata accessor for DetailsViewConversationIdentity(0, a12, a13, a4);
  v19 = &a9[v18[11]];
  type metadata accessor for DetailsViewConfiguration(0);
  sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  v20 = a1;
  sub_190D56340();
  type metadata accessor for DetailsGroupIdentityViewModel(0);
  swift_allocObject();
  v21 = v20;
  sub_1908C6E00(v21);
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D56340();

  *v19 = a8;
  v19[1] = a11;
  v22 = &a9[v18[12]];
  *v22 = a2;
  *(v22 + 1) = a3;
  *(v22 + 2) = a10;
  v23 = &a9[v18[13]];
  *v23 = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
}

uint64_t sub_1908C76E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v4 = *(a1 + 16);
  v79 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v91 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40, &qword_190DDB6B0);
  v92 = v4;
  v94 = sub_190D54200();
  v6 = sub_190D58050();
  v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v67 - v11;
  v78 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v83 = v13;
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55E48, &qword_190DDB6B8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55E50, &qword_190DDB6C0);
  MEMORY[0x1EEE9AC00](v74);
  v18 = &v67 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55E58, &qword_190DDB6C8);
  MEMORY[0x1EEE9AC00](v80);
  v72 = &v67 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55E60, &qword_190DDB6D0);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v67 - v20;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55E68, &qword_190DDB6D8);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v71 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v67 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55E70, &qword_190DDB6E0);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v67 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
  v27 = v2;
  sub_190D56320();
  v28 = sub_1908C3DEC();

  if (v28)
  {
    v68 = v16;
    sub_1908C82B8(a1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
    sub_190D56320();

    v29 = [objc_opt_self() currentDevice];
    v30 = [v29 userInterfaceIdiom];

    v69 = v6;
    if (v30 == 5)
    {
      v98[0] = sub_190D55DA0();
      v31 = sub_190D561E0();
    }

    else
    {
      v31 = 0;
    }

    sub_19081E40C(v68, v18, &qword_1EAD55E48, &qword_190DDB6B8);
    *&v18[*(v74 + 36)] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
    v35 = v27;
    sub_190D56320();

    v36 = v72;
    sub_19081E40C(v18, v72, &qword_1EAD55E50, &qword_190DDB6C0);
    v37 = v36 + *(v80 + 36);
    *v37 = xmmword_190DDB580;
    *(v37 + 16) = xmmword_190DDB590;
    *(v37 + 32) = 0;
    v98[0] = sub_1908C7444(a1);
    v38 = v78;
    v68 = *(v78 + 16);
    v39 = v77;
    v68(v77, v35, a1);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    v67 = *(a1 + 24);
    v42 = v67;
    v74 = v35;
    *(v41 + 16) = v92;
    *(v41 + 24) = v42;
    v78 = *(v38 + 32);
    (v78)(v41 + v40, v39, a1);
    sub_1908C8D7C();
    sub_1908C90F0();
    v43 = v73;
    sub_190D55C20();

    sub_19022EEA4(v36, &qword_1EAD55E58, &qword_190DDB6C8);
    v68(v39, v74, a1);
    v44 = swift_allocObject();
    v27 = v74;
    v45 = v67;
    *(v44 + 16) = v92;
    *(v44 + 24) = v45;
    (v78)(v44 + v40, v39, a1);
    v46 = v71;
    (*(v75 + 32))(v71, v43, v76);
    v34 = v82;
    v47 = (v46 + *(v82 + 36));
    *v47 = sub_1908C91E0;
    v47[1] = v44;
    v47[2] = 0;
    v47[3] = 0;
    v48 = v70;
    sub_190265A04(v46, v70);
    v49 = v48;
    v33 = v93;
    sub_190265A04(v49, v93);
    v32 = 0;
    v6 = v69;
  }

  else
  {
    v32 = 1;
    v33 = v93;
    v34 = v82;
  }

  (*(v81 + 56))(v33, v32, 1, v34);
  v50 = *&v27[*(a1 + 44)];
  v51 = v86;
  if (v50)
  {
    LOBYTE(v98[0]) = *v27;
    v50(v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
    sub_190D56320();

    v52 = [objc_opt_self() currentDevice];
    v53 = [v52 userInterfaceIdiom];

    if (v53 == 5)
    {
      v54 = sub_190D55DA0();
    }

    else
    {
      v54 = 0;
    }

    v98[0] = v54;
    v55 = *(a1 + 24);
    v56 = v91;
    v57 = v92;
    sub_190D55940();

    (*(v79 + 8))(v56, v57);
    (*(*(v94 - 8) + 56))(v51, 0, 1);
  }

  else
  {
    (*(*(v94 - 8) + 56))(v86, 1, 1);
    v55 = *(a1 + 24);
  }

  v58 = sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
  v98[3] = v55;
  v98[4] = v58;
  v98[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v60 = v88;
  sub_19096BC74();
  v61 = v87;
  v62 = *(v87 + 8);
  v62(v51, v6);
  v63 = v93;
  v64 = v85;
  sub_190265928(v93, v85);
  v98[0] = v64;
  v65 = v89;
  (*(v61 + 16))(v89, v60, v6);
  v98[1] = v65;
  v97[0] = v84;
  v97[1] = v6;
  v95 = sub_1908C8C14();
  v96 = WitnessTable;
  sub_190B74A3C(v98, 2uLL, v97);
  v62(v60, v6);
  sub_190265998(v63);
  v62(v65, v6);
  return sub_190265998(v64);
}

uint64_t sub_1908C82B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55EF8, &qword_190DDB718);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55EC0, &qword_190DDB6F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55EB0, &qword_190DDB6E8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
  sub_190D56320();
  v13 = *(v17[1] + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel_shouldPlaceGroupIdentityInHeader);

  if (v13 == 1)
  {
    v15 = type metadata accessor for DetailsViewConversationIdentity(0, *(a1 + 16), *(a1 + 24), v14);
    sub_1908C87E4(v15, v8);
    sub_1908C9008();
    sub_190D562C0();
    (*(v10 + 16))(v5, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_1908C8F78();
    sub_190D54C50();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_1908C87E4(a1, v8);
    sub_19022FD14(v8, v5, &qword_1EAD55EC0, &qword_190DDB6F0);
    swift_storeEnumTagMultiPayload();
    sub_1908C8F78();
    sub_1908C9008();
    sub_190D54C50();
    return sub_19022EEA4(v8, &qword_1EAD55EC0, &qword_190DDB6F0);
  }
}

void sub_1908C85B4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  type metadata accessor for DetailsViewConversationIdentity(0, a4, a5, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
  sub_190D56320();
  sub_1908C6904(v5);
}

uint64_t sub_1908C8630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DetailsViewConversationIdentity(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_1908C74A4(sub_1908C9264, v13, v7);
}

void sub_1908C8770(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DetailsViewConversationIdentity(0, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
  sub_190D56320();
  sub_1908C6904(a1);
}

uint64_t sub_1908C87E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
  sub_190D56320();
  type metadata accessor for DetailsGroupIdentityViewModel(0);
  sub_1908C9FC4(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel, &unk_190DE6E60);
  sub_190D56340();
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a1 + 16);
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55EC0, &qword_190DDB6F0);
  v10 = (a2 + *(result + 36));
  *v10 = sub_1908C89C0;
  v10[1] = 0;
  v10[2] = sub_1908C963C;
  v10[3] = v8;
  return result;
}

void sub_1908C89C0(CGFloat *a1@<X8>)
{
  v2 = sub_190D54CC0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D54F00();
  sub_190D53D40();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15.origin.x = v7;
  v15.origin.y = v9;
  v15.size.width = v11;
  v15.size.height = v13;
  *a1 = CGRectGetMinY(v15);
}

double sub_1908C8ADC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for DetailsViewConversationIdentity(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
  sub_190D56320();
  sub_1908C67A4(v4, 0);

  return result;
}

void sub_1908C8B60()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v0 setIncludeDonatedContacts_];
  [v0 setIncludeIncludeManagedAppleIDs_];
  [v0 setIncludeSuggestedContacts_];
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  qword_1EAD9DA98 = v1;
}

unint64_t sub_1908C8C14()
{
  result = qword_1EAD55E80;
  if (!qword_1EAD55E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55E70, &qword_190DDB6E0);
    sub_1908C8C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55E80);
  }

  return result;
}

unint64_t sub_1908C8C98()
{
  result = qword_1EAD55E88;
  if (!qword_1EAD55E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E68, &qword_190DDB6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E58, &qword_190DDB6C8);
    sub_1908C8D7C();
    sub_1908C90F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55E88);
  }

  return result;
}

unint64_t sub_1908C8D7C()
{
  result = qword_1EAD55E90;
  if (!qword_1EAD55E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E58, &qword_190DDB6C8);
    sub_1908C8E34();
    sub_190233640(&unk_1EAD52E20, &qword_1EAD594B0, &qword_190DD3C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55E90);
  }

  return result;
}

unint64_t sub_1908C8E34()
{
  result = qword_1EAD55E98;
  if (!qword_1EAD55E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E50, &qword_190DDB6C0);
    sub_1908C8EEC();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55E98);
  }

  return result;
}

unint64_t sub_1908C8EEC()
{
  result = qword_1EAD55EA0;
  if (!qword_1EAD55EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E48, &qword_190DDB6B8);
    sub_1908C8F78();
    sub_1908C9008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55EA0);
  }

  return result;
}

unint64_t sub_1908C8F78()
{
  result = qword_1EAD55EA8;
  if (!qword_1EAD55EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55EB0, &qword_190DDB6E8);
    sub_1908C9008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55EA8);
  }

  return result;
}

unint64_t sub_1908C9008()
{
  result = qword_1EAD55EB8;
  if (!qword_1EAD55EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55EC0, &qword_190DDB6F0);
    sub_1908C9FC4(&qword_1EAD55EC8, type metadata accessor for GroupIdentityViewController, &unk_190DF159C);
    sub_190233640(&qword_1EAD55ED0, &qword_1EAD55ED8, &unk_190DDB6F8, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55EB8);
  }

  return result;
}

unint64_t sub_1908C90F0()
{
  result = qword_1EAD55EE0;
  if (!qword_1EAD55EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55EE0);
  }

  return result;
}

void sub_1908C9144(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for DetailsViewConversationIdentity(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_1908C85B4(a1, a2, v10, v7, v8);
}

uint64_t sub_1908C91E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for DetailsViewConversationIdentity(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1908C8630(v9, v5, v6, v7);
}

void sub_1908C9264(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = *(type metadata accessor for DetailsViewConversationIdentity(0, v7, v8, a5) - 8);
  v11 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  sub_1908C8770(a1, v11, v7, v8, v9);
}

uint64_t sub_1908C92F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CEB7A8();
  *a1 = result & 1;
  return result;
}

id sub_1908C9328@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1908C9FC4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  result = [objc_opt_self() isTelephonyAvailable];
  *a2 = result;
  return result;
}

double sub_1908C93E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_190D56F10();
  v5 = v4;
  sub_190D50920();
  v2(v3, v5);

  return result;
}

uint64_t objectdestroyTm_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DetailsViewConversationIdentity(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v5[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);
  v11 = v5[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80, &unk_190DDB610);
  (*(*(v12 - 8) + 8))(v4 + v7 + v11, v12);
  if (*(v4 + v7 + v5[11]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

double sub_1908C963C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for DetailsViewConversationIdentity(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1908C8ADC(a1, v9, v6, v7);
}

void sub_1908C96E0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__headerViewYOriginInScrollView;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_1908C9700()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupIdentityGroupName);
  *v2 = v0[3];
  v2[1] = v1;
  sub_190D52690();
}

void sub_1908C974C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__groupHeaderViewTitleScrollThreshold;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_1908C976C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardNavigationDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1908C97E8(uint64_t a1, uint64_t a2, char a3)
{
  result = *(v3 + 24);
  if (*(v3 + 16) == 1 && result != 0)
  {
    return [result initiateTUConversationWithVideoEnabled_];
  }

  return result;
}

id sub_1908C9810()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  v37 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - v4;
  v38 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v36 - v8;
  v41 = [objc_allocWithZone(MEMORY[0x1E695CEF0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DD5CE0;
  *(v9 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  *(v9 + 40) = [objc_opt_self() descriptorForRequiredKeys];
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1908C9FC4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
  sub_190D51C20();

  swift_getKeyPath();
  aBlock[0] = v0;
  sub_190D51C20();

  v10 = *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
  v11 = sub_190D57160();

  swift_getKeyPath();
  aBlock[0] = v0;
  sub_190D51C20();

  v12 = [v10 conversationVisualIdentityWithKeys:v11 requestedNumberOfContactsToFetch:{objc_msgSend(*(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation), sel_recipientCount)}];

  v36 = v12;
  v13 = [v12 contacts];
  if (!v13)
  {
    sub_1908C9E7C();
    sub_190D57180();
    v13 = sub_190D57160();
  }

  v14 = 1;
  v15 = [v41 mailUrlForContacts:v13 needsEmailAddresses:1];

  if (v15)
  {
    sub_190D515B0();

    v14 = 0;
  }

  v16 = v40;
  v17 = sub_190D515F0();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v5, v14, 1, v17);
  sub_19081E40C(v5, v16, &unk_1EAD55F20, &unk_190DD75D0);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v20 = v19;
  result = CKFrameworkBundle(v19);
  if (result)
  {
    v22 = result;
    v23 = v20 != 1;
    v24 = sub_190D56ED0();
    v25 = sub_190D56ED0();
    v26 = [v22 localizedStringForKey:v24 value:0 table:v25];

    sub_190D56F10();
    v27 = *MEMORY[0x1E695C170];
    v28 = v39;
    sub_19022FD14(v16, v39, &unk_1EAD55F20, &unk_190DD75D0);
    v29 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v30 = swift_allocObject();
    sub_19081E40C(v28, v30 + v29, &unk_1EAD55F20, &unk_190DD75D0);
    v31 = objc_allocWithZone(MEMORY[0x1E695D160]);
    v32 = v27;
    v33 = sub_190D56ED0();

    aBlock[4] = sub_1908C9EC8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1908C93E4;
    aBlock[3] = &block_descriptor_125;
    v34 = _Block_copy(aBlock);

    v35 = [v31 initWithTitle:v33 actionType:v32 actionBlock:v34];
    _Block_release(v34);

    [v35 setShouldOverrideEnabledState_];
    [v35 setOverrideEnabledState_];

    sub_19022EEA4(v16, &unk_1EAD55F20, &unk_190DD75D0);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1908C9E7C()
{
  result = qword_1EAD44E40;
  if (!qword_1EAD44E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44E40);
  }

  return result;
}

uint64_t sub_1908C9EC8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1908C4DC0(a1, a2, v6);
}

void sub_1908C9F54(char a1)
{
  v3 = *(sub_190D515F0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1908C50A0(a1, v4);
}

uint64_t sub_1908C9FC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1908CA064(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v9 = *&v3[*a2];
  *&v3[*a2] = a1;
  v6 = a1;
  [v9 removeFromSuperview];
  v7 = *&v3[v5];
  if (v7)
  {
    v8 = v7;
    [v3 insertSubview:v8 atIndex:a3];
    sub_1908CA104();
  }
}

void sub_1908CA104()
{
  v1 = [v0 layer];
  v2 = OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_wantsPileDestOut;
  [v1 setAllowsGroupBlending_];

  v3 = *&v0[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_primaryBalloon];
  if (v3)
  {
    v4 = [v3 layer];
    [v4 setAllowsGroupBlending_];
  }

  v5 = *&v0[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon];
  if (v5)
  {
    v6 = [v5 layer];
    [v6 setAllowsGroupBlending_];
  }
}

void sub_1908CA214()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_primaryBalloon];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      if ([v3 wantsTapbackPickerBackingBubble] && *&v0[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon])
      {
        v5 = [v3 color];

        goto LABEL_10;
      }
    }
  }

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v7 == 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = 4;
  }

LABEL_10:
  v8 = [objc_opt_self() sharedBehaviors];
  if (!v8)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = v8;
  v10 = [v8 theme];

  if (v10)
  {
    v11 = [v10 balloonColorsForColorType_];

    if (!v11)
    {
LABEL_31:
      __break(1u);
      return;
    }

    sub_1902495E8();
    v12 = sub_190D57180();

    if (v12 >> 62)
    {
      v13 = sub_190D581C0();
      if (v13)
      {
LABEL_15:
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v14)
        {
          __break(1u);
        }

        else if ((v12 & 0xC000000000000001) == 0)
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v16 = *(v12 + 8 * v15 + 32);
LABEL_20:

            return;
          }

          __break(1u);
          goto LABEL_30;
        }

        MEMORY[0x193AF3B90](v15, v12);
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_15;
      }
    }
  }

  v17 = [objc_opt_self() whiteColor];

  v18 = v17;
}

void sub_1908CA448()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TapbackPickerTintableMessageBalloonView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = 1.0;
    if (v4 == 2)
    {
      v5 = 0.0;
    }

    [v2 setAlpha_];
  }
}

id TapbackPickerTintableMessageBalloonView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TapbackPickerTintableMessageBalloonView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_wantsPileDestOut] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_primaryBalloon] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TapbackPickerTintableMessageBalloonView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TapbackPickerTintableMessageBalloonView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TapbackPickerTintableMessageBalloonView.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_wantsPileDestOut] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_primaryBalloon] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TapbackPickerTintableMessageBalloonView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1908CA8B4()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon];
  if (v1)
  {
    [v1 setAlpha_];
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:2313.63 damping:94.0985 initialVelocity:{0.0, 0.0}];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v2 timingParameters:0.0];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_1908CAFE4;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_190840E6C;
  v7[3] = &block_descriptor_54;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v3 addAnimations_];
  _Block_release(v5);
  [v3 startAnimation];
}

void sub_1908CAA24(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon];
  if (v1)
  {
    v6 = v1;
    v3 = [a1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = 1.0;
    if (v4 == 2)
    {
      v5 = 0.0;
    }

    [v6 setAlpha_];
  }
}

void sub_1908CAACC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:2013.63 damping:94.0985 initialVelocity:{0.0, 0.0}];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v1 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1908CAFBC;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_190840E6C;
  v6[3] = &block_descriptor_26;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 addAnimations_];
  _Block_release(v4);
  [v2 startAnimationAfterDelay_];
}

void sub_1908CAC24(id a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon;
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon];
  if (a1)
  {
    v5 = a1;
    if (v4)
    {
      type metadata accessor for TapbackPickerTintableMessageBalloonView();
      v6 = v4;
      v5 = v5;
      v7 = sub_190D57D90();

      if (v7)
      {
        return;
      }
    }

    [v5 removeFromSuperview];
    v4 = *&v2[v3];
  }

  if (v4)
  {
    [v2 addSubview_];
    v8 = *&v2[v3];
    if (v8)
    {
      v8[OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_wantsPileDestOut] = v2[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_wantsPileDestOut];
      v9 = v8;
      sub_1908CA104();
    }
  }
}

char *sub_1908CAD34(void *a1, void *a2)
{
  *(v2 + OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon) = 0;
  v4 = a1;
  v5 = sub_190C76818(v4);
  v6 = *&v5[OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon];
  *&v5[OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon] = a2;
  v7 = v5;
  v8 = a2;

  v7[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A87064(v9);

  v7[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A87064(v10);

  return v7;
}

void sub_1908CAE30()
{
  sub_190C76C8C();
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon);
  if (v1)
  {
    v2 = v1;
    sub_1908CA8B4();
  }
}

void sub_1908CAE9C()
{
  sub_190C76A0C(0.2);
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon);
  if (v1)
  {
    v2 = v1;
    sub_1908CAACC();
  }
}

id sub_1908CAF38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1908CAFBC()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t type metadata accessor for ContactCardNavigationDestination(uint64_t a1)
{
  result = qword_1EAD55F70;
  if (!qword_1EAD55F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1908CB06C(uint64_t a1)
{
  sub_19084E158();
  if (v1 <= 0x3F)
  {
    sub_1908CB130(319);
    if (v2 <= 0x3F)
    {
      sub_1908CB188();
      if (v3 <= 0x3F)
      {
        sub_1908CB1D8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1908CB130(uint64_t a1)
{
  if (!qword_1EAD52C00)
  {
    type metadata accessor for DetailsViewConfiguration(255);
    v1 = sub_190D56360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD52C00);
    }
  }
}

void sub_1908CB188()
{
  if (!qword_1EAD55F80)
  {
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD55F80);
    }
  }
}

void sub_1908CB1D8(uint64_t a1)
{
  if (!qword_1EAD55F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55F90, &unk_190DDB840);
    v1 = sub_190D56000();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD55F88);
    }
  }
}

uint64_t sub_1908CB23C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FA0, &qword_190DDBA88);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - v4;
  v6 = type metadata accessor for ContactViewController(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FA8, &qword_190DDBA90);
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v66 = &v55 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FB0, &qword_190DDBA98);
  v68 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FB8, &unk_190DDBAA0);
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v55 - v12;
  v13 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD55F0;
  *(v14 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
  v15 = sub_190D57160();

  v16 = [v13 cnContactWithKeys:v15 shouldFetchSuggestedContact:1];

  if (v16)
  {
    v17 = type metadata accessor for ContactCardNavigationDestination(0);
    v64 = v3;
    v65 = a1;
    v18 = v17;
    v19 = v13;
    v20 = v16;
    v21 = v6;
    v22 = v20;
    v63 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
    sub_190D56320();
    *&v56 = v76;
    v23 = (v1 + *(v18 + 28));
    v60 = v1;
    LODWORD(v59) = *v23;
    v58 = *(v23 + 1);
    LOBYTE(v74) = v59;
    *(&v74 + 1) = v58;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
    sub_190D55FF0();
    v61 = v5;
    v62 = v11;
    v24 = v76;
    v25 = v77;
    v26 = (v1 + *(v18 + 32));
    v27 = *(v26 + 2);
    v74 = *v26;
    v75 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56000, &unk_190DDBAD0);
    sub_190D55FF0();
    v55 = v76;
    v29 = v77;
    v28 = v78;
    *v8 = v19;
    v8[1] = v22;
    type metadata accessor for DetailsViewConfiguration(0);
    sub_1908CCEE4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D56340();
    v30 = v21;
    v31 = v8 + *(v21 + 28);
    *v31 = v24;
    v31[16] = v25;
    v32 = v8 + *(v21 + 32);
    *v32 = v55;
    *(v32 + 2) = v29;
    *(v32 + 3) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56010, &unk_190DDC490);
    sub_190D54410();
    v33 = swift_allocObject();
    v56 = xmmword_190DD1D90;
    *(v33 + 16) = xmmword_190DD1D90;
    sub_190D54400();
    v34 = sub_1908CCEE4(&qword_1EAD5C790, type metadata accessor for ContactViewController, &unk_190DEEF40);
    v35 = v66;
    MEMORY[0x193AF11F0](2, v33, v21, v34);

    sub_1908CCF2C(v8);
    v36 = swift_allocObject();
    *(v36 + 16) = v56;
    sub_190D54400();
    *&v76 = v30;
    *(&v76 + 1) = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v71;
    MEMORY[0x193AF1360](2, v36, v71, OpaqueTypeConformance2);

    (*(v67 + 8))(v35, v38);
    v67 = sub_190D549E0();
    LODWORD(v66) = v39;
    LOBYTE(v74) = v59;
    *(&v74 + 1) = v58;
    v40 = sub_190D55FF0();
    v59 = &v55;
    MEMORY[0x1EEE9AC00](v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55FC0, &unk_190DDBAB0);
    *&v76 = v38;
    *(&v76 + 1) = OpaqueTypeConformance2;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = sub_1908CCDD4();
    v42 = v72;
    v43 = v69;
    v44 = v73;
    sub_190D559A0();

    (*(v68 + 8))(v44, v42);
    v45 = v70;
    v46 = v62;
    (*(v70 + 16))(v61, v43, v62);
    swift_storeEnumTagMultiPayload();
    *&v76 = v42;
    *(&v76 + 1) = v41;
    v77 = v53;
    v78 = v54;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();

    return (*(v45 + 8))(v43, v46);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55FC0, &unk_190DDBAB0);
    v49 = sub_1908CCEE4(&qword_1EAD5C790, type metadata accessor for ContactViewController, &unk_190DEEF40);
    *&v76 = v6;
    *(&v76 + 1) = v49;
    v50 = swift_getOpaqueTypeConformance2();
    *&v76 = v71;
    *(&v76 + 1) = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = sub_1908CCDD4();
    *&v76 = v72;
    *(&v76 + 1) = v48;
    v77 = v51;
    v78 = v52;
    swift_getOpaqueTypeConformance2();
    return sub_190D54C50();
  }
}

id sub_1908CBBA0@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55FF0, &unk_190DDBAC0);
  MEMORY[0x1EEE9AC00](v66);
  v58 = &v56 - v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56018, &qword_190DDBAE0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v56 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0, &unk_190DE27B0);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v56 - v4;
  v5 = type metadata accessor for ContactCardNavigationDestination(0);
  v59 = *(v5 - 8);
  v6 = *(v59 + 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v56 - v23;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v25 = result;
    v26 = v1;
    v27 = [*(v1 + 16) defaultIMHandle];
    v28 = [v25 handleIsFollowingMyLocation_];

    if (v28)
    {
      sub_190D53970();
      v29 = sub_190D539A0();
      v30 = *(*(v29 - 8) + 56);
      v30(v9, 0, 1, v29);
      sub_1908C976C(v26, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = (v59[80] + 16) & ~v59[80];
      v32 = swift_allocObject();
      sub_1908CCFAC(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
      v33 = v69;
      sub_190D56020();
      sub_190D53980();
      v30(v9, 0, 1, v29);
      v34 = v68;
      sub_190D56020();
      v35 = v60;
      v36 = *(v60 + 16);
      v37 = v62;
      v38 = v33;
      v36(v62, v33, v10);
      v39 = v61;
      v36(v61, v34, v10);
      v40 = v57;
      v36(v57, v37, v10);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160, &qword_190DDBAF0);
      v36((v40 + *(v41 + 48)), v39, v10);
      v42 = *(v35 + 8);
      v42(v39, v10);
      v42(v37, v10);
      sub_19022FD14(v40, v65, &qword_1EAD55FE0, &unk_190DE27B0);
      swift_storeEnumTagMultiPayload();
      sub_1908CCE90(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0);
      sub_1908CCE90(&qword_1EAD55FE8, &unk_1EAD55FF0, &unk_190DDBAC0);
      sub_190D54C50();
      sub_19022EEA4(v40, &qword_1EAD55FE0, &unk_190DE27B0);
      v42(v34, v10);
      v43 = v38;
    }

    else
    {
      sub_1908C976C(v26, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v44 = (v59[80] + 16) & ~v59[80];
      v45 = swift_allocObject();
      sub_1908CCFAC(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44);
      sub_190D56030();
      sub_1908C976C(v26, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = swift_allocObject();
      sub_1908CCFAC(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v44);
      v47 = v68;
      v59 = v15;
      sub_190D56030();
      sub_1908C976C(v26, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v48 = swift_allocObject();
      sub_1908CCFAC(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v44);
      v49 = v62;
      sub_190D56030();
      v51 = v60;
      v50 = v61;
      v52 = *(v60 + 16);
      v52(v61, v69, v10);
      v53 = v59;
      v52(v59, v47, v10);
      v52(v12, v49, v10);
      v54 = v58;
      v52(v58, v50, v10);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56020, &qword_190DDBAE8);
      v52((v54 + *(v55 + 48)), v53, v10);
      v52((v54 + *(v55 + 64)), v12, v10);
      v42 = *(v51 + 8);
      v42(v12, v10);
      v42(v53, v10);
      v42(v50, v10);
      sub_19022FD14(v54, v65, &unk_1EAD55FF0, &unk_190DDBAC0);
      swift_storeEnumTagMultiPayload();
      sub_1908CCE90(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0);
      sub_1908CCE90(&qword_1EAD55FE8, &unk_1EAD55FF0, &unk_190DDBAC0);
      sub_190D54C50();
      sub_19022EEA4(v54, &unk_1EAD55FF0, &unk_190DDBAC0);
      v42(v49, v10);
      v42(v68, v10);
      v43 = v69;
    }

    return (v42)(v43, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1908CC568(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [*(a1 + 16) defaultIMHandle];
    v5 = type metadata accessor for ContactCardNavigationDestination(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
    sub_190D56320();
    v6 = *(v12 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

    v7 = [v6 chat];
    [v3 stopSharingWithHandle:v4 inChat:v7];

    v8 = (a1 + *(v5 + 32));
    v9 = *(v8 + 2);
    v12 = *v8;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56000, &unk_190DDBAD0);
    result = sub_190D55FD0();
    if (v10)
    {
      LOBYTE(v12) = 0;
      v10(&v12);
      return sub_19022123C(v10, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908CC6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908CC7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908CC8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908CC9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1908CCAD4(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = [*(a1 + 16) defaultIMHandle];
    v7 = type metadata accessor for ContactCardNavigationDestination(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
    sub_190D56320();
    v8 = *(v14 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

    v9 = [v8 chat];
    [v5 startSharingWithHandle:v6 inChat:v9 withDuration:a2];

    v10 = (a1 + *(v7 + 32));
    v11 = *(v10 + 2);
    v14 = *v10;
    v15 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56000, &unk_190DDBAD0);
    result = sub_190D55FD0();
    if (v12)
    {
      LOBYTE(v14) = 1;
      v12(&v14);
      return sub_19022123C(v12, v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908CCC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908CCD7C(uint64_t a1)
{
  result = sub_1908CCEE4(&qword_1EAD55F98, type metadata accessor for ContactCardNavigationDestination, &unk_190DDBA30);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1908CCDD4()
{
  result = qword_1EAD55FD0;
  if (!qword_1EAD55FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55FC0, &unk_190DDBAB0);
    sub_1908CCE90(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0);
    sub_1908CCE90(&qword_1EAD55FE8, &unk_1EAD55FF0, &unk_190DDBAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55FD0);
  }

  return result;
}

uint64_t sub_1908CCE90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1908CCEE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1908CCF2C(uint64_t a1)
{
  v2 = type metadata accessor for ContactViewController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1908CCFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardNavigationDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for ContactCardNavigationDestination(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  if (*(v0 + v3 + v1[10]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void *sub_1908CD1C0()
{
  v1 = *(type metadata accessor for ContactCardNavigationDestination(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1908CC568(v2);
}

unint64_t sub_1908CD220()
{
  result = qword_1EAD56028;
  if (!qword_1EAD56028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD56030, qword_190DDBAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FB0, &qword_190DDBA98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55FC0, &unk_190DDBAB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FA8, &qword_190DDBA90);
    type metadata accessor for ContactViewController(255);
    sub_1908CCEE4(&qword_1EAD5C790, type metadata accessor for ContactViewController, &unk_190DEEF40);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1908CCDD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56028);
  }

  return result;
}

void sub_1908CD3B8(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = v1;
  type metadata accessor for RichLinkCardStackChatItem();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = OBJC_IVAR___CKRichCardCarouselBalloonView_richCards;
  v7 = *&v2[OBJC_IVAR___CKRichCardCarouselBalloonView_richCards];
  v8 = v7;
  v36 = a1;
  v9 = [v5 IMChatItem];
  if (!v9)
  {
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_30:

    return;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
  }

  v12 = [v11 richCards];

  if (!v7)
  {
    v8 = v12;
    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if (!v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_190D575D0();
  v13 = sub_190D57D90();

  if (v13)
  {
    goto LABEL_30;
  }

LABEL_12:
  v14 = [v5 IMChatItem];
  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {
    }

    v14 = [v15 richCards];
  }

  v16 = *&v2[v6];
  *&v2[v6] = v14;

  sub_190CE8160();
  v17 = [objc_allocWithZone(type metadata accessor for CarouselBalloonViewDataSource()) init];
  v18 = [v5 IMChatItem];
  if (v18)
  {
    v19 = v18;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {
    }

    v21 = [v20 richCards];

    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v23 = [v21 cards];

      sub_190D575A0();
      v24 = sub_190D57180();

      if (v24 >> 62)
      {
        v25 = sub_190D581C0();
        if (v25)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
LABEL_22:
          v38 = v22;
          sub_190D58390();
          if (v25 < 0)
          {
            __break(1u);
            return;
          }

          v26 = 0;
          do
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x193AF3B90](v26, v24);
            }

            else
            {
              v27 = *(v24 + 8 * v26 + 32);
            }

            v28 = v27;
            ++v26;
            v29 = type metadata accessor for RichCarouselItem();
            v30 = objc_allocWithZone(v29);
            swift_unknownObjectWeakInit();
            *&v30[OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card] = v28;
            swift_unknownObjectWeakAssign();
            v37.receiver = v30;
            v37.super_class = v29;
            objc_msgSendSuper2(&v37, sel_init);
            sub_190D58360();
            sub_190D583B0();
            sub_190D583C0();
            sub_190D58370();
          }

          while (v25 != v26);

          v22 = v38;
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

LABEL_36:
  *&v17[OBJC_IVAR____TtC7ChatKit29CarouselBalloonViewDataSource_items] = v22;

  v31 = *&v2[OBJC_IVAR___CKCarouselBalloonView_carouselStackView];
  if (v31)
  {
    v32 = [v31 dataSourceManager];
    if (v32)
    {
      v33 = v32;
      [v32 setDataSource:v17 changeDetails:0];
    }
  }

  v34 = *&v2[OBJC_IVAR___CKCarouselBalloonView_dataSource];
  *&v2[OBJC_IVAR___CKCarouselBalloonView_dataSource] = v17;
  v35 = v17;

  [v2 setNeedsLayout];
}

void sub_1908CDC84(uint64_t a1@<X0>, void *a2@<X8>)
{
  [*(v2 + OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card) copyWithZone_];
  sub_190D58140();
  swift_unknownObjectRelease();
  sub_190D575A0();
  if (swift_dynamicCast())
  {
    v4 = v10;
    swift_unknownObjectWeakLoadStrong();
    v5 = type metadata accessor for RichCarouselItem();
    v6 = objc_allocWithZone(v5);
    swift_unknownObjectWeakInit();
    *&v6[OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card] = v10;
    swift_unknownObjectWeakAssign();
    v9.receiver = v6;
    v9.super_class = v5;
    v7 = v4;
    v8 = objc_msgSendSuper2(&v9, sel_init);

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v5 = sub_1902188FC(0, &unk_1EAD56058, 0x1E695DFB0);
  }

  a2[3] = v5;
  *a2 = v8;
}

uint64_t sub_1908CDE50(uint64_t a1)
{
  sub_19023C414(a1, v5);
  if (!v6)
  {
    sub_19021E7D8(v5);
    goto LABEL_5;
  }

  type metadata accessor for RichCarouselItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  sub_1902188FC(0, &qword_1EAD46500, 0x1E69E58C0);
  v1 = *&v4[OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card];
  v2 = sub_190D57D90();

  return v2 & 1;
}

id sub_1908CDFF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1908CE09C(double a1, double a2)
{
  if (a1 <= 350.0)
  {
    v4 = a1;
  }

  else
  {
    v4 = 350.0;
  }

  v5 = [objc_allocWithZone(type metadata accessor for RichLinkCardStackItemView()) initWithFrame_];
  v6 = OBJC_IVAR___CKRichCardCarouselBalloonView_richCards;
  v7 = *(v2 + OBJC_IVAR___CKRichCardCarouselBalloonView_richCards);
  if (v7)
  {
    v8 = [v7 cards];
    sub_190D575A0();
    v9 = sub_190D57180();

    v10 = v9;
    if (!(v9 >> 62))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_6:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_7;
      }

LABEL_23:

      v32 = *(v2 + v6);
      if (v32)
      {
        goto LABEL_19;
      }

LABEL_24:

      return v4;
    }
  }

  v35 = v10;
  v11 = sub_190D581C0();
  v10 = v35;
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v37 = v6;
  v38 = v2;
  v12 = 0;
  v41 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData;
  v39 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon;
  v40 = v10 & 0xC000000000000001;
  v13 = 0.0;
  v42 = v10;
  do
  {
    v19 = v11;
    if (v40)
    {
      v20 = MEMORY[0x193AF3B90](v12);
    }

    else
    {
      v20 = *(v10 + 8 * v12 + 32);
    }

    v21 = v20;
    v22 = type metadata accessor for RichCarouselItem();
    v23 = objc_allocWithZone(v22);
    swift_unknownObjectWeakInit();
    *&v23[OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card] = v21;
    swift_unknownObjectWeakAssign();
    v43.receiver = v23;
    v43.super_class = v22;
    v24 = v21;
    v25 = objc_msgSendSuper2(&v43, sel_init);
    *&v5[v41] = v25;
    v26 = v25;
    swift_unknownObjectRelease();
    v27 = *&v26[OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card];
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = sub_190D17C78(v5[v39]);
    v30 = [objc_allocWithZone(MEMORY[0x1E696ECC8]) initWithPresentationProperties:v29 URL:0];

    [v30 _setDisableAutoPlay_];
    [v30 _setDisableTapGesture_];
    v31 = [v28 chipList];
    if (v31)
    {
      v14 = v31;
      v15 = [v31 suggestedActions];

      sub_190D57620();
      v16 = sub_190D57180();
    }

    else
    {
      v16 = 0;
    }

    ++v12;
    sub_1908DDCE8(v30, v16);

    [v5 sizeThatFits:0 textAlignmentInsets:0 tailInsets:{v4, a2}];
    v18 = v17;

    if (v13 <= v18)
    {
      v13 = v18;
    }

    v11 = v19;
    v10 = v42;
  }

  while (v19 != v12);

  v32 = *(v38 + v37);
  if (!v32)
  {
    goto LABEL_24;
  }

LABEL_19:
  v33 = [v32 cards];
  sub_190D575A0();
  v34 = sub_190D57180();

  if (v34 >> 62)
  {
LABEL_27:
    sub_190D581C0();
  }

  return v4;
}