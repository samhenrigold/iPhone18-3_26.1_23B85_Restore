id sub_22C7486CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C36E278(0, &qword_27D9BFB48, 0x277CBFF48);
  v5 = sub_22C90A5DC();

  v6 = [swift_getObjCClassFromMetadata() multiArrayByConcatenatingMultiArrays:v5 alongAxis:a2 dataType:a3];

  return v6;
}

void sub_22C748778(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v27 = a1[6];
  v28 = a1[5];
  v25 = a1[7];
  v23 = a1[9];
  v24 = a1[8];
  v6 = *a2;
  v7 = a2[1];
  v32 = a2[2];
  v30 = a1[4];
  v31 = a2[3];
  v8 = a2[5];
  v29 = a2[4];
  v9 = a2[6];
  v10 = a2[7];
  v11 = *a1 == *a2 && v3 == v7;
  v12 = a2[8];
  v26 = a2[9];
  if (!v11 && (sub_22C90B4FC() & 1) == 0 || (v4 == v32 ? (v13 = v5 == v31) : (v13 = 0), !v13 && (sub_22C37170C(), (sub_22C90B4FC() & 1) == 0) || (sub_22C749DA0(v30, v29), (v14 & 1) == 0) || (v28 == v8 ? (v15 = v27 == v9) : (v15 = 0), !v15 && (sub_22C90B4FC() & 1) == 0 || (v25 == v10 ? (v16 = v24 == v12) : (v16 = 0), !v16 && (sub_22C90B4FC() & 1) == 0 || (sub_22C749DA0(v23, v26), (v17 & 1) == 0)))))
  {
    v18 = v2 == v8 && v3 == v9;
    if (v18 || (sub_22C90B4FC() & 1) != 0)
    {
      v19 = v4 == v10 && v5 == v12;
      if (v19 || (sub_22C37170C(), (sub_22C90B4FC() & 1) != 0))
      {
        sub_22C749DA0(v30, v26);
        if (v20)
        {
          v21 = v28 == v6 && v27 == v7;
          if (v21 || (sub_22C90B4FC() & 1) != 0)
          {
            v22 = v25 == v32 && v24 == v31;
            if (v22 || (sub_22C90B4FC() & 1) != 0)
            {

              sub_22C749DA0(v23, v29);
            }
          }
        }
      }
    }
  }
}

uint64_t JointResolution.UserAlignment.init(for:)()
{
  sub_22C3727F4();
  sub_22C9032FC();
  sub_22C369824();
  v1 = sub_22C37170C();
  result = v2(v1);
  if (result != *MEMORY[0x277D1F2D8])
  {
    if (result == *MEMORY[0x277D1F2B8])
    {
      v4 = 0;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2C8])
    {
      v4 = 2;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2E0])
    {
      v4 = 4;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2C0])
    {
      v4 = 3;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2B0])
    {
      v4 = 1;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2D0])
    {
      v4 = 6;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F298])
    {
      v4 = 7;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2A0])
    {
      v4 = 8;
      goto LABEL_21;
    }

    if (result == *MEMORY[0x277D1F2A8])
    {
      v4 = 9;
      goto LABEL_21;
    }

    v5 = sub_22C37170C();
    result = v6(v5);
  }

  v4 = 5;
LABEL_21:
  *v0 = v4;
  return result;
}

void JointResolution.UserAlignment.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 0.0)
  {
    v2 = 0;
  }

  else if (a2 == 1.0)
  {
    v2 = 1;
  }

  else if (a2 == 0.1)
  {
    v2 = 2;
  }

  else if (a2 == 0.9)
  {
    v2 = 3;
  }

  else if (a2 == 0.55)
  {
    v2 = 4;
  }

  else if (a2 == 0.5)
  {
    v2 = 5;
  }

  else if (a2 == 0.45)
  {
    v2 = 6;
  }

  else if (a2 == 0.48)
  {
    v2 = 7;
  }

  else if (a2 == 0.49)
  {
    v2 = 8;
  }

  else if (a2 == 0.4)
  {
    v2 = 9;
  }

  else
  {
    v2 = 10;
  }

  *a1 = v2;
}

unint64_t sub_22C748D7C()
{
  result = qword_27D9BFB30;
  if (!qword_27D9BFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB30);
  }

  return result;
}

unint64_t sub_22C748DD4()
{
  result = qword_27D9BFB38;
  if (!qword_27D9BFB38)
  {
    sub_22C3AC1A0(&qword_27D9BFB40, &qword_22C9244A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB38);
  }

  return result;
}

uint64_t sub_22C748E60(uint64_t a1)
{
  result = type metadata accessor for JointResolution.DeviceContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C748F0C(uint64_t a1)
{
  type metadata accessor for JointResolution.DeviceContext(319);
  if (v1 <= 0x3F)
  {
    sub_22C748F98();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C748F98()
{
  if (!qword_28142FA08)
  {
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_28142FA08);
    }
  }
}

uint64_t _s13UserAlignmentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13UserAlignmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C74914C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v5(v4);
  sub_22C36985C();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22C7491A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v5(v4);
  sub_22C36985C();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22C749204(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFB18, qword_22C9245B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C74926C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22C7492C4()
{
  result = qword_27D9BFB70;
  if (!qword_27D9BFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFB70);
  }

  return result;
}

uint64_t sub_22C749318(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C749358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_22C7493E0(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  return result;
}

__n128 sub_22C7493F0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t sub_22C749400()
{

  return sub_22C90A5DC();
}

uint64_t sub_22C749440()
{
}

uint64_t sub_22C749458(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_22C90ABEC();
}

id sub_22C749470(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t sub_22C74948C()
{

  return type metadata accessor for JointResolution.DeviceContext(0);
}

uint64_t sub_22C7494AC()
{

  return sub_22C90ABEC();
}

void sub_22C7494C4(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    v21 = a1 + 8;
    sub_22C378630();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = *(a1[6] + 16 * v13 + 8);
      v15 = *(a1[7] + v13);

      if (v14)
      {
        v16 = sub_22C36EBF0();
        v18 = sub_22C36E2BC(v16, v17);
        v20 = v19;

        if ((v20 & 1) != 0 && *(a2[7] + v18) == v15)
        {
          continue;
        }
      }

      return;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return;
      }

      v12 = v21[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22C74960C()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  v2 = sub_22C902D0C();
  sub_22C369824();
  v75 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v69 = &v61 - v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v68 = &v61 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v74 = v13;
  v14 = sub_22C3A5908(&qword_27D9BC218, &unk_22C912410);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v16);
  sub_22C36DA38();
  v71 = v1;
  if (v0 != v1 && (sub_22C74FF38(), v19))
  {
    v67 = v17;
    v70 = v18;
    v20 = 0;
    v65 = v0;
    sub_22C36FE34();
    sub_22C36B564();
    v62 = v21 >> 6;
    v63 = v0;
    sub_22C3768E0();
    v66 = v23;
    v64 = v7;
    while (v22)
    {
      sub_22C36C050();
      v73 = v24;
      v26 = v25 | (v20 << 6);
LABEL_12:
      v29 = v65;
      v30 = v75;
      v31 = *(v75 + 72) * v26;
      v32 = *(v75 + 16);
      v32(v74, *(v65 + 48) + v31, v2);
      v33 = v68;
      v32(v68, *(v29 + 56) + v31, v2);
      v34 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
      v35 = *(v34 + 48);
      v36 = *(v30 + 32);
      v27 = v70;
      v36();
      (v36)(v27 + v35, v33, v2);
      sub_22C36BECC();
      sub_22C36C640(v37, v38, v39, v34);
      v7 = v64;
LABEL_13:
      v40 = v27;
      v41 = v67;
      sub_22C74FC0C(v40, v67, &qword_27D9BC218, &unk_22C912410);
      v42 = sub_22C36BA00();
      v44 = sub_22C3A5908(v42, v43);
      if (sub_22C370B74(v41, 1, v44) == 1)
      {
        goto LABEL_20;
      }

      v45 = *(v44 + 48);
      v46 = *v72;
      (*v72)(v69, v41, v2);
      v46(v7, v41 + v45, v2);
      v47 = v71;
      sub_22C6280AC();
      v49 = v48;
      LOBYTE(v45) = v50;
      v51 = *v66;
      v52 = sub_22C36EBF0();
      v51(v52);
      if ((v45 & 1) == 0)
      {
        v60 = sub_22C37F8AC();
        v51(v60);
        goto LABEL_20;
      }

      (*(v75 + 16))(v74, *(v47 + 56) + *(v75 + 72) * v49, v2);
      sub_22C37BC14();
      sub_22C74F76C(&qword_27D9BC488, v53, MEMORY[0x277D1D810]);
      v54 = sub_22C90A0BC();
      v55 = sub_22C36EBF0();
      v51(v55);
      v56 = sub_22C37F8AC();
      v51(v56);
      v22 = v73;
      if ((v54 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v27 = v70;
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v62)
      {
        v57 = sub_22C36BA00();
        v59 = sub_22C3A5908(v57, v58);
        sub_22C375FC8(v59);
        goto LABEL_13;
      }

      ++v20;
      if (*(v63 + 8 * v28))
      {
        sub_22C371C3C();
        sub_22C3813B8();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C36CC48();
  }
}

void sub_22C749A3C()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  v65 = sub_22C90430C();
  sub_22C369824();
  v59 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v60 = v4 - v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  sub_22C36BA64();
  v58 = v7;
  v8 = sub_22C3A5908(&qword_27D9BFC70, &unk_22C926C90);
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v62 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36DA38();
  if (v0 != v1 && (sub_22C38340C(), v14))
  {
    v61 = v13;
    v15 = 0;
    v56 = v0;
    sub_22C36FE34();
    sub_22C36B564();
    v18 = v17 >> 6;
    v54 = v0;
    v55 = v59 + 16;
    v63 = v59 + 32;
    v57 = (v59 + 8);
    while (v16)
    {
      sub_22C36C050();
      v64 = v19;
      v21 = v20 | (v15 << 6);
LABEL_12:
      (*(v59 + 16))(v58, *(v56 + 48) + *(v59 + 72) * v21, v65);
      v28 = *(*(v56 + 56) + 8 * v21);
      v29 = sub_22C3A5908(&qword_27D9BFC78, &qword_22C925060);
      v30 = *(v29 + 48);
      v23 = v62;
      (*(v59 + 32))(v62, v58, v65);
      *(v62 + v30) = v28;
      sub_22C36BECC();
      sub_22C36C640(v31, v32, v33, v29);

      v22 = v61;
LABEL_13:
      sub_22C74FC0C(v23, v22, &qword_27D9BFC70, &unk_22C926C90);
      v34 = sub_22C38A024();
      v36 = sub_22C3A5908(v34, v35);
      if (sub_22C370B74(v22, 1, v36) == 1)
      {
        goto LABEL_20;
      }

      v37 = *(v36 + 48);
      v38 = sub_22C371510();
      v39(v38);
      v40 = *(v22 + v37);
      sub_22C628164();
      LOBYTE(v37) = v41;
      (*v57)(v60, v65);
      if ((v37 & 1) == 0)
      {

        goto LABEL_20;
      }

      sub_22C46D710(v42, v40, v43, v44, v45, v46, v47, v48, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
      v50 = v49;

      v16 = v64;
      if ((v50 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v22 = v61;
    v23 = v62;
    while (1)
    {
      v24 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24 >= v18)
      {
        v51 = sub_22C3A5908(&qword_27D9BFC78, &qword_22C925060);
        sub_22C37B39C(v62, v52, v53, v51);
        goto LABEL_13;
      }

      ++v15;
      if (*(v54 + 8 * v24))
      {
        sub_22C371C3C();
        v64 = v25;
        v21 = v27 | (v26 << 6);
        v15 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C750078();
    sub_22C36CC48();
  }
}

void sub_22C749DA0(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    sub_22C378630();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v4 << 6);
LABEL_10:
      v14 = *(a1[6] + v11) | (*(a1[7] + 4 * v11) << 32);
LABEL_11:
      if (v14 != 8)
      {
        v15 = sub_22C633A1C();
        if ((v16 & 1) != 0 && *(a2[7] + 4 * v15) == *(&v14 + 1))
        {
          continue;
        }
      }

      return;
    }

    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v7 = 0;
        v14 = 8;
        goto LABEL_11;
      }

      v13 = a1[v12 + 8];
      ++v4;
      if (v13)
      {
        v7 = (v13 - 1) & v13;
        v11 = __clz(__rbit64(v13)) | (v12 << 6);
        v4 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_22C749ED4()
{
  sub_22C36BA7C();
  v3 = sub_22C3716E4();
  v4 = type metadata accessor for _PromptMapper._ToolPromptMap(v3);
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  sub_22C381AEC();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v69 = v11;
  v12 = sub_22C3A5908(&qword_27D9BFC80, &unk_22C92B6F0);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v16 = (v14 - v15);
  v18 = MEMORY[0x28223BE20](v17);
  sub_22C36EC2C(v18, v19, v20, v21, v22, v23, v24, v25, v63);
  if (v0 != v1 && (sub_22C38340C(), v26))
  {
    v67 = v8;
    v68 = v2;
    v27 = 0;
    v66 = v0;
    sub_22C36FE34();
    sub_22C36B564();
    v64 = v29 >> 6;
    v65 = v0;
    v30 = &qword_27D9BC4B0;
    v31 = &unk_22C9134C0;
    while (v28)
    {
      sub_22C36C050();
      v71 = v32;
      v34 = v33 | (v27 << 6);
LABEL_12:
      v40 = *(*(v66 + 48) + 8 * v34);
      v41 = sub_22C74FF28();
      sub_22C74FB64(v41, v69);
      v42 = sub_22C3A5908(v30, v31);
      v43 = *(v42 + 48);
      *v16 = v40;
      sub_22C74FBB8(v69, v16 + v43);
      sub_22C36BECC();
      sub_22C36C640(v44, v45, v46, v42);

      v35 = v70;
LABEL_13:
      sub_22C74FC0C(v16, v35, &qword_27D9BFC80, &unk_22C92B6F0);
      v47 = sub_22C3A5908(v30, v31);
      if (sub_22C370B74(v35, 1, v47) == 1)
      {
        goto LABEL_23;
      }

      v48 = v31;
      v49 = v30;
      v50 = v16;
      v51 = v4;
      sub_22C37B760();
      sub_22C74FBB8(v35 + v52, v68);
      sub_22C62821C();
      v54 = v53;

      if ((v54 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_22C74FEE0();
      sub_22C37B760();
      sub_22C74FB64(v55, v67);
      v56 = sub_22C36BC58();
      if (!sub_22C483418(v56, v57) || (v4 = v51, sub_22C74A28C(), (v58 & 1) == 0))
      {
        sub_22C74FC64();
LABEL_22:
        sub_22C74FC64();
        goto LABEL_23;
      }

      v59 = sub_22C48819C(*(v67 + *(v51 + 24)), *(v68 + *(v51 + 24)));
      sub_22C74FC64();
      sub_22C36EBF0();
      sub_22C74FC64();
      v16 = v50;
      v30 = v49;
      v31 = v48;
      v28 = v71;
      if ((v59 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v35 = v70;
    while (1)
    {
      v36 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v36 >= v64)
      {
        v60 = sub_22C3A5908(v30, v31);
        sub_22C37B39C(v16, v61, v62, v60);
        goto LABEL_13;
      }

      ++v27;
      if (*(v65 + 8 * v36))
      {
        sub_22C371C3C();
        v71 = v37;
        v34 = v39 | (v38 << 6);
        v27 = v38;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    sub_22C36CC48();
  }
}

void sub_22C74A28C()
{
  sub_22C36BA7C();
  v5 = v4;
  v6 = sub_22C3704C4();
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(v6);
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  sub_22C74FEF0();
  MEMORY[0x28223BE20](v8);
  sub_22C385F64();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v48 = v10;
  v11 = sub_22C3A5908(&qword_27D9BFC50, &qword_22C924F10);
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v13);
  sub_22C36DA38();
  if (v0 == v5 || *(v0 + 16) != *(v5 + 16))
  {
LABEL_21:
    sub_22C75001C();
    sub_22C36CC48();
  }

  else
  {
    v47 = v14;
    v49 = v15;
    v16 = 0;
    v46 = v2;
    sub_22C36FE34();
    sub_22C36B564();
    v44 = v18 >> 6;
    v45 = v0;
    v19 = &qword_27D9BC398;
    v20 = &qword_22C912AC8;
    while (v17)
    {
      sub_22C36C050();
      v50 = v21;
LABEL_11:
      sub_22C386850();
      v24 = sub_22C74FF28();
      v22 = v48;
      sub_22C74FB64(v24, v48);
      v25 = sub_22C377B94();
      v27 = sub_22C3A5908(v25, v26);
      sub_22C74FF4C(v27);
      sub_22C36BECC();
      sub_22C36C640(v28, v29, v30, v1);

      v2 = v46;
LABEL_12:
      sub_22C74FC0C(v22, v47, &qword_27D9BFC50, &qword_22C924F10);
      v19 = v20;
      v31 = sub_22C3A5908(v20, v3);
      if (sub_22C370B74(v47, 1, v31) == 1)
      {
        goto LABEL_21;
      }

      sub_22C750028();
      sub_22C370334();
      sub_22C74FBB8(v33 + v32, v2);
      sub_22C36E2BC(v31, v47);
      v3 = v34;

      if ((v3 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_22C74FEE0();
      sub_22C370334();
      sub_22C74FB64(v35, v22);
      sub_22C37FE24();
      if ((sub_22C9097CC() & 1) == 0)
      {
        sub_22C74FC64();
LABEL_20:
        sub_22C74FC64();
        goto LABEL_21;
      }

      v36 = sub_22C750064();
      v38 = sub_22C48819C(v36, v37);
      v1 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap;
      sub_22C74FC64();
      sub_22C3720DC();
      sub_22C74FC64();
      v17 = v50;
      if ((v38 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v22 = v49;
    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v44)
      {
        v39 = sub_22C377B94();
        v41 = sub_22C3A5908(v39, v40);
        sub_22C37B39C(v49, v42, v43, v41);
        v3 = v20;
        v20 = v19;
        goto LABEL_12;
      }

      ++v16;
      if (*(v45 + 8 * v23))
      {
        sub_22C371C3C();
        sub_22C3838AC();
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22C74A5DC()
{
  sub_22C36BA7C();
  v5 = v4;
  v6 = sub_22C3704C4();
  type metadata accessor for ParameterPromptMap(v6);
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  sub_22C74FEF0();
  MEMORY[0x28223BE20](v8);
  sub_22C385F64();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v47 = v10;
  v11 = sub_22C3A5908(&qword_27D9BDE20, &qword_22C91BED0);
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v13);
  sub_22C36DA38();
  if (v0 == v5 || *(v0 + 16) != *(v5 + 16))
  {
LABEL_21:
    sub_22C75001C();
    sub_22C36CC48();
  }

  else
  {
    v46 = v14;
    v48 = v15;
    v16 = 0;
    v45 = v2;
    sub_22C36FE34();
    sub_22C36B564();
    v43 = v18 >> 6;
    v44 = v0;
    v19 = &qword_27D9BC478;
    v20 = &unk_22C9134A0;
    while (v17)
    {
      sub_22C36C050();
      v49 = v21;
LABEL_11:
      sub_22C386850();
      v24 = sub_22C74FF28();
      v22 = v47;
      sub_22C74FB64(v24, v47);
      v25 = sub_22C377B94();
      v27 = sub_22C3A5908(v25, v26);
      sub_22C74FF4C(v27);
      sub_22C36BECC();
      sub_22C36C640(v28, v29, v30, v1);

      v2 = v45;
LABEL_12:
      sub_22C74FC0C(v22, v46, &qword_27D9BDE20, &qword_22C91BED0);
      v19 = v20;
      v31 = sub_22C3A5908(v20, v3);
      if (sub_22C370B74(v46, 1, v31) == 1)
      {
        goto LABEL_21;
      }

      sub_22C750028();
      sub_22C3857A4();
      sub_22C74FBB8(v33 + v32, v2);
      sub_22C36E2BC(v31, v46);
      v3 = v34;

      if ((v3 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_22C74FEE0();
      sub_22C3857A4();
      sub_22C74FB64(v35, v22);
      sub_22C37FE24();
      if ((sub_22C9097CC() & 1) == 0)
      {
        sub_22C74FC64();
LABEL_20:
        sub_22C74FC64();
        goto LABEL_21;
      }

      sub_22C750064();
      sub_22C74960C();
      v37 = v36;
      v1 = type metadata accessor for ParameterPromptMap;
      sub_22C74FC64();
      sub_22C3720DC();
      sub_22C74FC64();
      v17 = v49;
      if ((v37 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v22 = v48;
    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v43)
      {
        v38 = sub_22C377B94();
        v40 = sub_22C3A5908(v38, v39);
        sub_22C37B39C(v48, v41, v42, v40);
        v3 = v20;
        v20 = v19;
        goto LABEL_12;
      }

      ++v16;
      if (*(v44 + 8 * v23))
      {
        sub_22C371C3C();
        sub_22C3838AC();
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22C74A92C()
{
  sub_22C36BA7C();
  v2 = sub_22C3716E4();
  v3 = type metadata accessor for ToolPromptMap(v2);
  sub_22C369824();
  v69 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  sub_22C36EC2C(v13, v14, v15, v16, v17, v18, v19, v20, v60);
  v21 = sub_22C3A5908(&qword_27D9BFC48, &unk_22C924F00);
  v22 = sub_22C369914(v21);
  MEMORY[0x28223BE20](v22);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v23);
  sub_22C36DA38();
  if (v0 != v1 && (sub_22C38340C(), v26))
  {
    v64 = v12;
    v65 = v24;
    v67 = v25;
    v27 = 0;
    v62 = v0;
    v63 = v3;
    sub_22C36FE34();
    v61 = v0;
    sub_22C36B564();
    v30 = v29 >> 6;
    while (v28)
    {
      sub_22C36C050();
      v68 = v31;
LABEL_12:
      sub_22C386850();
      v36 = *v34;
      v35 = v34[1];
      v37 = sub_22C74FF28();
      v38 = v66;
      sub_22C74FB64(v37, v66);
      v39 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
      v40 = *(v39 + 48);
      v41 = v67;
      *v67 = v36;
      v41[1] = v35;
      v32 = v41;
      sub_22C74FBB8(v38, v41 + v40);
      sub_22C36BECC();
      sub_22C36C640(v42, v43, v44, v39);

LABEL_13:
      v45 = v32;
      v46 = v65;
      sub_22C74FC0C(v45, v65, &qword_27D9BFC48, &unk_22C924F00);
      v47 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
      if (sub_22C370B74(v46, 1, v47) == 1)
      {
        goto LABEL_23;
      }

      v48 = v8;
      v49 = *v46;
      v50 = v46[1];
      sub_22C375AE4();
      sub_22C74FBB8(v46 + v51, v64);
      sub_22C36E2BC(v49, v50);
      LOBYTE(v49) = v52;

      if ((v49 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_22C74FEE0();
      sub_22C375AE4();
      v8 = v48;
      sub_22C74FB64(v53, v48);
      v54 = sub_22C37FE24();
      if (!sub_22C483418(v54, v55) || (sub_22C74A5DC(), (v56 & 1) == 0))
      {
        sub_22C74FC64();
LABEL_22:
        sub_22C74FC64();
        goto LABEL_23;
      }

      sub_22C74960C();
      v58 = v57;
      sub_22C74FC64();
      sub_22C3720DC();
      sub_22C74FC64();
      v28 = v68;
      if ((v58 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v32 = v67;
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
        v59 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
        sub_22C381768(v59);
        v68 = 0;
        goto LABEL_13;
      }

      ++v27;
      if (*(v61 + 8 * v33))
      {
        sub_22C371C3C();
        sub_22C3838AC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    sub_22C75001C();
    sub_22C36CC48();
  }
}

void sub_22C74ACCC()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C3704C4();
  sub_22C908EAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  sub_22C74FEF0();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  v6 = sub_22C3A5908(&qword_27D9BFC40, &unk_22C924EF0);
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v8);
  sub_22C36DA38();
  if (v0 != v3 && (sub_22C74FF38(), v11))
  {
    v41 = v9;
    v42 = v10;
    v12 = 0;
    sub_22C36FE34();
    v40 = v0;
    sub_22C36B564();
    v14 = v13 >> 6;
    sub_22C3768E0();
    while (v15)
    {
      sub_22C36C050();
      v43 = v16;
LABEL_11:
      v18 = sub_22C379AD8();
      v19(v18);
      v20 = sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0);
      v21 = sub_22C74FFA8(v20);
      v22(v21);
      sub_22C36BECC();
      sub_22C36C640(v23, v24, v25, &qword_27D9BDDF8);

LABEL_12:
      sub_22C74FC0C(v42, v41, &qword_27D9BFC40, &unk_22C924EF0);
      v26 = sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0);
      sub_22C3709CC(v26);
      if (v11)
      {
        goto LABEL_19;
      }

      v27 = sub_22C74FF00();
      v28(v27);
      v1 = sub_22C36E2BC(v1, &qword_22C91BEA0);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        v38 = sub_22C38A024();
        v39(v38);
        goto LABEL_19;
      }

      v31 = sub_22C74FF84();
      v32(v31);
      v33 = sub_22C74F76C(&qword_27D9BC800, MEMORY[0x277D72238], MEMORY[0x277D72250]);
      v34 = sub_22C37E7A0(v33);
      v35 = sub_22C36D384();
      MEMORY[0x900024ABE](v35);
      v36 = sub_22C38A024();
      MEMORY[0x900024ABE](v36);
      v15 = v43;
      if ((v34 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v37 = sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0);
        sub_22C375FC8(v37);
        goto LABEL_12;
      }

      ++v12;
      if (*(v40 + 8 * v17))
      {
        sub_22C371C3C();
        sub_22C3813B8();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22C75001C();
    sub_22C36CC48();
  }
}

void sub_22C74AFDC()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C3704C4();
  sub_22C90941C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  sub_22C74FEF0();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  v6 = sub_22C3A5908(&qword_27D9BFC38, &unk_22C924EE0);
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v8);
  sub_22C36DA38();
  if (v0 != v3 && (sub_22C74FF38(), v11))
  {
    v41 = v9;
    v42 = v10;
    v12 = 0;
    sub_22C36FE34();
    v40 = v0;
    sub_22C36B564();
    v14 = v13 >> 6;
    sub_22C3768E0();
    while (v15)
    {
      sub_22C36C050();
      v43 = v16;
LABEL_11:
      v18 = sub_22C379AD8();
      v19(v18);
      v20 = sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80);
      v21 = sub_22C74FFA8(v20);
      v22(v21);
      sub_22C36BECC();
      sub_22C36C640(v23, v24, v25, &qword_27D9BDDD8);

LABEL_12:
      sub_22C74FC0C(v42, v41, &qword_27D9BFC38, &unk_22C924EE0);
      v26 = sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80);
      sub_22C3709CC(v26);
      if (v11)
      {
        goto LABEL_19;
      }

      v27 = sub_22C74FF00();
      v28(v27);
      v1 = sub_22C36E2BC(v1, &qword_22C91BE80);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        v38 = sub_22C38A024();
        v39(v38);
        goto LABEL_19;
      }

      v31 = sub_22C74FF84();
      v32(v31);
      v33 = sub_22C74F76C(&qword_27D9BF510, MEMORY[0x277D72B00], MEMORY[0x277D72B18]);
      v34 = sub_22C37E7A0(v33);
      v35 = sub_22C36D384();
      MEMORY[0x900024AA4](v35);
      v36 = sub_22C38A024();
      MEMORY[0x900024AA4](v36);
      v15 = v43;
      if ((v34 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v37 = sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80);
        sub_22C375FC8(v37);
        goto LABEL_12;
      }

      ++v12;
      if (*(v40 + 8 * v17))
      {
        sub_22C371C3C();
        sub_22C3813B8();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22C75001C();
    sub_22C36CC48();
  }
}

void sub_22C74B2EC()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  sub_22C381AEC();
  v5 = MEMORY[0x28223BE20](v4);
  sub_22C36EC2C(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  sub_22C902C9C();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C386318();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v15 = sub_22C3A5908(&qword_27D9BC2A0, &qword_22C912640);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  sub_22C386D7C(v18);
  if (!v19 && (sub_22C38340C(), v19))
  {
    v56 = v20;
    v55 = v0;
    v21 = 0;
    sub_22C3738B8();
    sub_22C372C8C();
    while (v1)
    {
      sub_22C38AA58();
LABEL_12:
      v24 = sub_22C74FE38();
      v25(v24);
      v26 = sub_22C374F48();
      v27(v26);
      sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
      v28 = sub_22C38921C();
      v29(v28);
      sub_22C74FFFC();
      v30();
      sub_22C36BECC();
      sub_22C36C640(v31, v32, v33, v0);
      v22 = v57;
      v1 = v58;
LABEL_13:
      sub_22C74FC0C(v2, v22, &qword_27D9BC2A0, &qword_22C912640);
      v34 = sub_22C36D384();
      v36 = sub_22C3A5908(v34, v35);
      sub_22C3709CC(v36);
      if (v19)
      {
        goto LABEL_20;
      }

      v37 = sub_22C3874A8();
      v38(v37);
      v39 = sub_22C37A308();
      v40(v39);
      v0 = v55;
      sub_22C6287BC();
      v41 = sub_22C37F4A8();
      v42(v41);
      if ((&qword_27D9BAF30 & 1) == 0)
      {
        v50 = sub_22C36EBF0();
        v51(v50);
        goto LABEL_20;
      }

      v43 = sub_22C74FE64();
      v44(v43);
      sub_22C37BC14();
      v46 = sub_22C74F76C(&qword_27D9BC488, v45, MEMORY[0x277D1D810]);
      sub_22C74FEBC(v46);
      v47 = sub_22C74FE8C();
      (qword_27D9BAF30)(v47);
      v48 = sub_22C36EBF0();
      (qword_27D9BAF30)(v48);
      if ((v55 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v2 = v56;
    v22 = v57;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v53)
      {
        v49 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
        sub_22C381768(v49);
        v1 = 0;
        goto LABEL_13;
      }

      ++v21;
      if (*(v54 + 8 * v23))
      {
        sub_22C371C3C();
        sub_22C74FFEC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C750078();
    sub_22C36CC48();
  }
}

void sub_22C74B664()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  sub_22C381AEC();
  v5 = MEMORY[0x28223BE20](v4);
  sub_22C36EC2C(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  sub_22C9069BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C386318();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v15 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  sub_22C386D7C(v18);
  if (!v19 && (sub_22C38340C(), v19))
  {
    v56 = v20;
    v55 = v0;
    v21 = 0;
    sub_22C3738B8();
    sub_22C372C8C();
    while (v1)
    {
      sub_22C38AA58();
LABEL_12:
      v24 = sub_22C74FE38();
      v25(v24);
      v26 = sub_22C374F48();
      v27(v26);
      sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
      v28 = sub_22C38921C();
      v29(v28);
      sub_22C74FFFC();
      v30();
      sub_22C36BECC();
      sub_22C36C640(v31, v32, v33, v0);
      v22 = v57;
      v1 = v58;
LABEL_13:
      sub_22C74FC0C(v2, v22, &qword_27D9BF108, &unk_22C921F70);
      v34 = sub_22C36D384();
      v36 = sub_22C3A5908(v34, v35);
      sub_22C3709CC(v36);
      if (v19)
      {
        goto LABEL_20;
      }

      v37 = sub_22C3874A8();
      v38(v37);
      v39 = sub_22C37A308();
      v40(v39);
      v0 = v55;
      sub_22C628D18();
      v41 = sub_22C37F4A8();
      v42(v41);
      if ((&qword_27D9BF110 & 1) == 0)
      {
        v50 = sub_22C36EBF0();
        v51(v50);
        goto LABEL_20;
      }

      v43 = sub_22C74FE64();
      v44(v43);
      sub_22C74FEA4();
      v46 = sub_22C74F76C(&qword_27D9BF838, v45, MEMORY[0x277D1E978]);
      sub_22C74FEBC(v46);
      v47 = sub_22C74FE8C();
      (qword_27D9BF110)(v47);
      v48 = sub_22C36EBF0();
      (qword_27D9BF110)(v48);
      if ((v55 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v2 = v56;
    v22 = v57;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v53)
      {
        v49 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
        sub_22C381768(v49);
        v1 = 0;
        goto LABEL_13;
      }

      ++v21;
      if (*(v54 + 8 * v23))
      {
        sub_22C371C3C();
        sub_22C74FFEC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C750078();
    sub_22C36CC48();
  }
}

void sub_22C74B9DC()
{
  sub_22C36BA7C();
  sub_22C3716E4();
  sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  sub_22C381AEC();
  v5 = MEMORY[0x28223BE20](v4);
  sub_22C36EC2C(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C386318();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v15 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C74FE04();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  sub_22C386D7C(v18);
  if (!v19 && (sub_22C38340C(), v19))
  {
    v56 = v20;
    v55 = v0;
    v21 = 0;
    sub_22C3738B8();
    sub_22C372C8C();
    while (v1)
    {
      sub_22C38AA58();
LABEL_12:
      v24 = sub_22C74FE38();
      v25(v24);
      v26 = sub_22C374F48();
      v27(v26);
      sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
      v28 = sub_22C38921C();
      v29(v28);
      sub_22C74FFFC();
      v30();
      sub_22C36BECC();
      sub_22C36C640(v31, v32, v33, v0);
      v22 = v57;
      v1 = v58;
LABEL_13:
      sub_22C74FC0C(v2, v22, &qword_27D9BF0F0, &qword_22C921F58);
      v34 = sub_22C36D384();
      v36 = sub_22C3A5908(v34, v35);
      sub_22C3709CC(v36);
      if (v19)
      {
        goto LABEL_20;
      }

      v37 = sub_22C3874A8();
      v38(v37);
      v39 = sub_22C37A308();
      v40(v39);
      v0 = v55;
      sub_22C628274();
      v41 = sub_22C37F4A8();
      v42(v41);
      if ((&qword_27D9BF100 & 1) == 0)
      {
        v50 = sub_22C36EBF0();
        v51(v50);
        goto LABEL_20;
      }

      v43 = sub_22C74FE64();
      v44(v43);
      sub_22C74FEA4();
      v46 = sub_22C74F76C(&qword_27D9BF838, v45, MEMORY[0x277D1E978]);
      sub_22C74FEBC(v46);
      v47 = sub_22C74FE8C();
      (qword_27D9BF100)(v47);
      v48 = sub_22C36EBF0();
      (qword_27D9BF100)(v48);
      if ((v55 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v2 = v56;
    v22 = v57;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v53)
      {
        v49 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
        sub_22C381768(v49);
        v1 = 0;
        goto LABEL_13;
      }

      ++v21;
      if (*(v54 + 8 * v23))
      {
        sub_22C371C3C();
        sub_22C74FFEC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C750078();
    sub_22C36CC48();
  }
}

uint64_t JointResolution.CandidateIdentifier.init(typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_22C9093BC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = (v8 - v7);
  v10 = sub_22C3A5908(&qword_27D9BF2F8, &unk_22C922540);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22C9032BC();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  (*(v5 + 16))(v9, a1, v3);
  sub_22C766C2C(v9, v13);
  if (sub_22C370B74(v13, 1, v14) == 1)
  {
    sub_22C74D6D0(v13);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](0xD00000000000001DLL, 0x800000022C933230);
    sub_22C90B12C();
    MEMORY[0x2318B7850](0xD000000000000029, 0x800000022C933250);
    v21 = v39;
    v22 = v40;
    v23 = sub_22C5F2300();
    sub_22C36FBE4(&type metadata for JointResolverError, v23);
    *v24 = v21;
    v24[1] = v22;
    swift_willThrow();
    v25 = sub_22C37F8AC();
    return v26(v25);
  }

  else
  {
    (*(v16 + 32))(v20, v13, v14);
    v28 = sub_22C90329C();
    v37 = v29;
    v38 = v28;
    v30 = sub_22C9032AC();
    v32 = v31;
    v33 = sub_22C37F8AC();
    v34(v33);
    result = (*(v16 + 8))(v20, v14);
    v35 = v41;
    v36 = v37;
    *v41 = v38;
    v35[1] = v36;
    v35[2] = v30;
    v35[3] = v32;
  }

  return result;
}

double JointResolution.Candidate.init(typedValue:signals:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_22C9093BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C3720DC();
  v10(v9);
  JointResolution.CandidateIdentifier.init(typedValue:)(v8, &v16);
  v11 = sub_22C36FBFC();
  v12(v11);
  if (v2)
  {
  }

  else
  {
    result = *&v16;
    v14 = v17;
    v15 = v18;
    *a2 = v16;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = a1;
  }

  return result;
}

uint64_t sub_22C74C164(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v79 = MEMORY[0x277D84F90];

    sub_22C3B7698(0, v8, 0);
    v10 = a1;
    v9 = v79;
    v4 = v79[2];
    v11 = 32;
    do
    {
      v5 = *(*(v10 + v11) + 16);
      v12 = v79[3];
      if (v4 >= v12 >> 1)
      {
        sub_22C3B7698(v12 > 1, v4 + 1, 1);
        v10 = a1;
      }

      v79[2] = v4 + 1;
      v79[v4 + 4] = v5;
      v11 += 8;
      ++v4;
      --v8;
    }

    while (v8);
  }

  v13 = sub_22C3D0D14(v9);
  v15 = v14;

  if (v15)
  {

    v16 = 0xEF7974706D652073;
    v17 = 0x692073656C707554;
LABEL_14:
    v19 = sub_22C5F2300();
    sub_22C36FBE4(&type metadata for JointResolverError, v19);
    *v20 = v17;
    v20[1] = v16;
    swift_willThrow();
    return a3;
  }

  if (v13 < *(a2 + 16))
  {
    v17 = 0xD00000000000002DLL;

    v18 = "Size of columnType is greater than the matrix";
LABEL_11:
    v16 = (v18 - 32) | 0x8000000000000000;
    goto LABEL_14;
  }

  if (v13 < *(a3 + 16))
  {

    v16 = 0x800000022C9347B0;
    v17 = 0xD000000000000032;
    goto LABEL_14;
  }

  if (v13 < *(a4 + 16))
  {
    v17 = 0xD00000000000002DLL;

    v18 = "Size of isResolved is greater than the matrix";
    goto LABEL_11;
  }

  v72 = *(a2 + 16);
  v69 = *(a4 + 16);
  v70 = *(a3 + 16);
  v71 = a3;
  v73 = *(a1 + 16);

  v23 = 0;
  a3 = v22;
  v74 = v13;
  while (v23 != v73)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v77 = a3;
    v24 = *(a1 + 32 + 8 * v23);
    v25 = *(v24 + 16);
    a3 = v13 - v25;
    if ((v13 - v25) < 0)
    {
      goto LABEL_64;
    }

    v76 = v23;
    if (v13 == v25)
    {
    }

    else
    {
      sub_22C5F8D4C();

      do
      {
        v5 = sub_22C909F0C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_22C36D270();
          sub_22C594258(v28, v29, v30, v24);
          v24 = v31;
        }

        v23 = *(v24 + 16);
        v26 = *(v24 + 24);
        v4 = v23 + 1;
        if (v23 >= v26 >> 1)
        {
          sub_22C594258(v26 > 1, v23 + 1, 1, v24);
          v24 = v32;
        }

        *(v24 + 16) = v4;
        v27 = (v24 + 40 * v23);
        v27[4] = 0;
        v27[5] = 0xE000000000000000;
        v27[6] = 0;
        v27[7] = 0xE000000000000000;
        v27[8] = v5;
        --a3;
      }

      while (a3);
    }

    a3 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C887668();
      a3 = v33;
    }

    v13 = v74;
    if (v76 >= *(a3 + 16))
    {
      goto LABEL_65;
    }

    v23 = v76 + 1;
    *(a3 + 8 * v76 + 32) = v24;

    v22 = a1;
  }

  v23 = v13 - v72;
  if ((v13 - v72) >= 0)
  {
    v5 = v71;
    v4 = a4;
    if (v13 != v72)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      goto LABEL_69;
    }

    goto LABEL_38;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  do
  {
    __break(1u);
LABEL_69:
    v56 = sub_22C36D270();
    sub_22C594174(v56, v57, v58, v59);
    a2 = v60;
LABEL_51:
    v41 = a2;
    v42 = *(a2 + 16);
    do
    {
      v43 = *(v41 + 24);
      if (v42 >= v43 >> 1)
      {
        v44 = sub_22C37090C(v43);
        sub_22C594174(v44, v45, v46, v47);
        v41 = v48;
      }

      *(v41 + 16) = v42 + 1;
      *(v41 + v42++ + 32) = 12;
      --v23;
    }

    while (v23);
LABEL_38:
    v23 = v74 - v70;
    if ((v74 - v70) < 0)
    {
      goto LABEL_67;
    }

    if (v74 != v70)
    {
      v49 = swift_isUniquelyReferenced_nonNull_native();
      if ((v49 & 1) == 0)
      {
        v61 = sub_22C36D270();
        sub_22C59414C(v61, v62, v63, v5);
        v5 = v64;
      }

      v50 = *(v5 + 16);
      do
      {
        v51 = *(v5 + 24);
        if (v50 >= v51 >> 1)
        {
          v52 = sub_22C37090C(v51);
          sub_22C59414C(v52, v53, v54, v5);
          v5 = v55;
        }

        *(v5 + 16) = v50 + 1;
        *(v5 + v50++ + 32) = 0;
        --v23;
      }

      while (v23);
    }

    v23 = v74 - v69;
  }

  while ((v74 - v69) < 0);
  if (v74 != v69)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_22C36D270();
      sub_22C594124(v65, v66, v67, v4);
      v4 = v68;
    }

    v34 = *(v4 + 16);
    do
    {
      v35 = *(v4 + 24);
      if (v34 >= v35 >> 1)
      {
        v36 = sub_22C37090C(v35);
        sub_22C594124(v36, v37, v38, v4);
        v4 = v39;
      }

      *(v4 + 16) = v34 + 1;
      *(v4 + v34++ + 32) = 0;
      --v23;
    }

    while (v23);
  }

  return a3;
}

uint64_t ToolDefinition.toCandidateIdentifier()@<X0>(uint64_t *a1@<X8>)
{
  sub_22C90977C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v3 = sub_22C908E7C();
  v5 = v4;
  sub_22C908DDC();
  v6 = sub_22C9096FC();
  v8 = v7;
  v9 = sub_22C36BC58();
  result = v10(v9);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v8;
  return result;
}

unint64_t sub_22C74C7C4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

void static JointResolution.Candidate.== infix(_:_:)(void *a1)
{
  v3 = a1[2];
  v4 = a1[3];
  sub_22C750084();
  v7 = v7 && v5 == v6;
  if (v7 || (sub_22C90B4FC() & 1) != 0)
  {
    v8 = v3 == v1 && v4 == v2;
    if (v8 || (sub_22C750040() & 1) != 0)
    {
      v9 = sub_22C36BA00();

      sub_22C749DA0(v9, v10);
    }
  }
}

uint64_t JointResolution.CandidateIdentifier.init(id:bundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 JointResolution.Candidate.init(candidateId:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  sub_22C5F8D4C();
  v5 = sub_22C909F0C();
  result = v7;
  *a2 = v7;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = v5;
  return result;
}

void sub_22C74C940(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v11 = *(a2 + 2);
  sub_22C7439E0(a2);
  if (v5)
  {
    return;
  }

  v65 = a1;
  v62 = a3;
  v61 = a4;
  v12 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C922270;
  *(v13 + 32) = sub_22C90A91C();
  *(v13 + 40) = sub_22C90A91C();
  *(v13 + 48) = sub_22C90A91C();
  objc_allocWithZone(MEMORY[0x277CBFF48]);
  v60 = a5;
  v70 = sub_22C5F2214(v13, 65568);
  v14 = 0;
  v64 = v9 + 32;
  v71 = v12;
  v63 = v11;
LABEL_3:
  if (v14 == v11)
  {
    v35 = sub_22C387490(v12);
    *(v35 + 16) = xmmword_22C922290;
    v9 = *(v62 + 16);
    *(v35 + 32) = sub_22C90A91C();
    v36 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v15 = sub_22C38664C();
    goto LABEL_29;
  }

  v66 = *&v64[8 * v14] + 32;
  v67 = *&v64[8 * v14];

  for (i = 0; ; ++i)
  {
    v17 = *(v67 + 16);
    if (i == v17)
    {

      ++v14;
      v11 = v63;
      goto LABEL_3;
    }

    if (i >= v17)
    {
      break;
    }

    v18 = (v66 + 40 * i);
    v20 = *v18;
    v19 = v18[1];
    v21 = v18[3];
    v68 = v18[2];
    v9 = v18[4];
    v22 = swift_allocObject();
    sub_22C36EDDC(v22);

    v22[2].n128_u64[0] = sub_22C90A91C();
    v22[2].n128_u64[1] = sub_22C90A91C();
    v22[3].n128_u64[0] = sub_22C90A91C();
    sub_22C5F8D4C();
    v23 = sub_22C909F0C();
    v69 = v19;
    if (v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19 == 0xE000000000000000;
    }

    if (!v24 && (sub_22C90B4FC() & 1) == 0 || (!v68 ? (v25 = v21 == 0xE000000000000000) : (v25 = 0), !v25 && (sub_22C90B4FC() & 1) == 0))
    {

      swift_bridgeObjectRelease_n();
LABEL_20:

      v29 = sub_22C909F0C();
      v73[0] = v20;
      v73[1] = v69;
      v73[2] = v68;
      v73[3] = v21;
      v73[4] = v29;
      MEMORY[0x28223BE20](v29);
      os_unfair_lock_lock((v65 + 24));
      sub_22C7432B4((v65 + 16), &v74);
      os_unfair_lock_unlock((v65 + 24));
      v28 = v74;
      sub_22C740224(v73);
      goto LABEL_21;
    }

    sub_22C749DA0(v9, v23);
    v27 = v26;

    swift_bridgeObjectRelease_n();
    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }

    v28 = -1;
LABEL_21:
    sub_22C90A91C();
    sub_22C369A48();
    sub_22C3D3108();
    sub_22C37FE24();
    v30 = sub_22C90A5DC();

    [v70 setObject:v28 forKeyedSubscript:v30];

    v31 = 0;
    do
    {
      if (*(v9 + 2))
      {
        sub_22C633A1C();
      }

      ++v31;
      v32 = swift_allocObject();
      sub_22C36EDDC(v32);
      v32[2].n128_u64[0] = sub_22C90A91C();
      v32[2].n128_u64[1] = sub_22C90A91C();
      v32[3].n128_u64[0] = sub_22C90A91C();
      v33 = sub_22C90A86C();
      v34 = sub_22C90A5DC();

      [v70 setObject:v33 forKeyedSubscript:v34];
    }

    while (v31 != 8);

    v12 = v71;
  }

  __break(1u);
LABEL_29:
  v37 = v15;
  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v39 = sub_22C387490(v12);
      sub_22C36EDDC(v39);
      v39[2].n128_u64[0] = sub_22C90A91C();
      sub_22C90A91C();
      sub_22C369A48();
      sub_22C3D3108();
      v40 = sub_22C90A5DC();
      v12 = v71;

      [v37 setObject:j forKeyedSubscript:v40];
    }
  }

  v41 = sub_22C387490(v12);
  sub_22C36EDDC(v41);
  v42 = v12;
  v43 = *(v61 + 16);
  v41[2].n128_u64[0] = sub_22C90A91C();
  objc_allocWithZone(MEMORY[0x277CBFF48]);
  v44 = sub_22C5F2214(v41, 65568);
  if (v43)
  {
    v45 = 0;
    do
    {
      v46 = v43;
      v47 = v42;
      v48 = sub_22C387490(v42);
      sub_22C36EDDC(v48);
      v48[2].n128_u64[0] = sub_22C90A91C();
      sub_22C90A91C();
      sub_22C369A48();
      sub_22C3D3108();
      v49 = sub_22C90A5DC();
      v42 = v47;
      v43 = v46;

      [v44 setObject:v45 forKeyedSubscript:v49];

      ++v45;
    }

    while (v46 != v45);
  }

  v50 = sub_22C387490(v42);
  sub_22C36EDDC(v50);
  v51 = *(v60 + 16);
  v50[2].n128_u64[0] = sub_22C90A91C();
  v52 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v53 = sub_22C38664C();
  if (v51)
  {
    v54 = v42;
    v55 = 0;
    v72 = v51;
    do
    {
      v56 = v55 + 1;
      v57 = sub_22C387490(v54);
      sub_22C36EDDC(v57);
      v57[2].n128_u64[0] = sub_22C90A91C();
      v58 = sub_22C90A91C();
      sub_22C3D3108();
      v59 = sub_22C90A5DC();

      [v53 setObject:v58 forKeyedSubscript:v59];

      v55 = v56;
    }

    while (v72 != v56);
  }
}

void sub_22C74D120(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v5 = swift_allocObject();
    v69 = xmmword_22C922280;
    *(v5 + 16) = xmmword_22C922280;
    *(v5 + 32) = sub_22C90A91C();
    sub_22C3D3108();
    *(v5 + 40) = sub_22C90ABEC();
    v6 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v7 = sub_22C5F2214(v5, 65568);
    if (!v2)
    {
      v8 = v7;
      v9 = *(a1 + 16);
      v65 = v7;
      if (v9 == v3)
      {
        v59 = 0;
        v10 = 0;
        v11 = (a1 + 33);
        do
        {
          v12 = v3;
          v13 = *v11;
          v11 += 2;
          v14 = v10 + 1;
          v15 = sub_22C382DC8();
          *(v15 + 16) = v69;
          *(v15 + 32) = sub_22C90A91C();
          *(v15 + 40) = sub_22C90A91C();
          v16 = sub_22C90A91C();
          v17 = sub_22C90A5DC();
          v18 = v65;

          [v65 setObject:v16 forKeyedSubscript:v17];

          v3 = v12;
          v19 = sub_22C382DC8();
          v17[4] = sub_22C74FFCC(v19, v20, v21, v22, v23, v24, v25, v26, v59, v62, v65, v13, v69);
          v17[5] = sub_22C90A91C();
          v27 = sub_22C90A91C();
          v28 = sub_22C90A5DC();

          [v18 setObject:v27 forKeyedSubscript:v28];

          v10 = v14;
        }

        while (v3 != v14);
      }

      else if (v3 < 1 || v9)
      {
        sub_22C90AF5C();
        MEMORY[0x2318B7850](0xD000000000000025, 0x800000022C934820);
        sub_22C36FBFC();
        v55 = sub_22C90B47C();
        MEMORY[0x2318B7850](v55);

        MEMORY[0x2318B7850](0xD000000000000011, 0x800000022C934850);
        sub_22C36FBFC();
        v56 = sub_22C90B47C();
        MEMORY[0x2318B7850](v56);

        v57 = sub_22C5F2300();
        sub_22C36FBE4(&type metadata for JointResolverError, v57);
        *v58 = 0;
        v58[1] = 0xE000000000000000;
        swift_willThrow();
      }

      else
      {
        v60 = 0;
        v31 = sub_22C807D84(0, v3);
        v32 = 0;
        v63 = v31;
        v67 = v31[2];
        v33 = v65;
        while (1)
        {
          if (v67 == v32)
          {

            return;
          }

          if (v32 >= *(v63 + 16))
          {
            break;
          }

          v34 = v32 + 1;
          v35 = sub_22C382DC8();
          v6[4] = sub_22C74FFCC(v35, v36, v37, v38, v39, v40, v41, v42, v60, v63, v65, v67, v69);
          v6[5] = sub_22C90A91C();
          v43 = sub_22C90A91C();
          v44 = sub_22C90A5DC();

          [v33 setObject:v43 forKeyedSubscript:v44];

          v45 = sub_22C382DC8();
          v6[4] = sub_22C74FFCC(v45, v46, v47, v48, v49, v50, v51, v52, v61, v64, v66, v68, v70);
          v6[5] = sub_22C90A91C();
          v53 = sub_22C90A91C();
          v54 = sub_22C90A5DC();

          [v33 setObject:v53 forKeyedSubscript:v54];

          v32 = v34;
        }

        __break(1u);
      }
    }
  }

  else
  {
    v29 = sub_22C5F2300();
    sub_22C36FBE4(&type metadata for JointResolverError, v29);
    *v30 = 0xD000000000000011;
    v30[1] = 0x800000022C934870;
    swift_willThrow();
  }
}

unint64_t JointResolution.CandidateSignalType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22C74D59C@<X0>(uint64_t *a1@<X8>)
{
  result = JointResolution.CandidateSignalType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t JointResolution.CandidateIdentifier.description.getter()
{
  sub_22C90AF5C();

  v0 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v0);
  sub_22C3883AC();
  v1 = sub_22C36FBFC();
  MEMORY[0x2318B7850](v1);
  MEMORY[0x2318B7850](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_22C74D6D0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BF2F8, &unk_22C922540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void JointResolution.CandidateIdentifier.getSaltedLoggingIDData(loggingScope:)()
{
  sub_22C36BA7C();
  v1 = sub_22C902A9C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  sub_22C90292C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v9 = *v0;
  v10 = v0[1];

  MEMORY[0x2318B7850](58, 0xE100000000000000);
  MEMORY[0x2318B7850](v9, v10);
  v11 = sub_22C36D384();
  v12(v11);
  (*(v3 + 104))(v7, *MEMORY[0x277D1D050], v1);
  sub_22C902A8C();
  (*(v3 + 8))(v7, v1);
  sub_22C9028AC();
  sub_22C36CC48();
}

void sub_22C74D8F0()
{
  qword_27D9BFB78 = 0;
  unk_27D9BFB80 = 0xE000000000000000;
  qword_27D9BFB88 = 0;
  unk_27D9BFB90 = 0xE000000000000000;
}

uint64_t static JointResolution.CandidateIdentifier.nilCandidate.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D9BA718 != -1)
  {
    swift_once();
  }

  v2 = unk_27D9BFB80;
  v3 = qword_27D9BFB88;
  v4 = unk_27D9BFB90;
  *a1 = qword_27D9BFB78;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t static JointResolution.CandidateIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22C90B4FC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_22C36BA00();

      return sub_22C90B4FC();
    }
  }

  return result;
}

uint64_t sub_22C74DA28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C74DAE8(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22C74DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C74DA28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C74DB44(uint64_t a1)
{
  v2 = sub_22C74E244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C74DB80(uint64_t a1)
{
  v2 = sub_22C74E244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JointResolution.CandidateIdentifier.encode(to:)(void *a1)
{
  v4 = sub_22C3A5908(&qword_27D9BFB98, &qword_22C924748);
  sub_22C369824();
  v12 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  sub_22C374168(a1, a1[3]);
  sub_22C74E244();
  sub_22C90B6CC();
  v14 = 0;
  sub_22C90B3CC();
  if (!v2)
  {
    v13 = 1;
    sub_22C90B3CC();
  }

  return (*(v12 + 8))(v8, v4);
}

uint64_t JointResolution.CandidateIdentifier.hash(into:)(uint64_t a1)
{
  sub_22C909FFC();
  sub_22C36BAFC();

  return sub_22C909FFC();
}

uint64_t JointResolution.CandidateIdentifier.hashValue.getter()
{
  v0 = sub_22C750098();
  sub_22C36ED3C(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t JointResolution.CandidateIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BFBA8, &qword_22C924750);
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C374168(a1, a1[3]);
  sub_22C74E244();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v6 = sub_22C90B2DC();
  v8 = v7;
  v9 = sub_22C90B2DC();
  v11 = v10;
  v15 = v9;
  v12 = sub_22C371510();
  v13(v12);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v15;
  a2[3] = v11;

  sub_22C36FF94(a1);
}

uint64_t sub_22C74DFF0(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_22C90B62C();
  JointResolution.CandidateIdentifier.hash(into:)(v5);
  return sub_22C90B66C();
}

uint64_t JointResolution.Candidate.candidateId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t JointResolution.Candidate.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C90AF5C();

  strcpy(v6, "Candidate(id: ");

  MEMORY[0x2318B7850](v1, v2);

  sub_22C3883AC();

  v3 = sub_22C36BC58();
  MEMORY[0x2318B7850](v3);

  MEMORY[0x2318B7850](0x6C616E676973202CLL, 0xEB00000000203A73);
  sub_22C5F8D4C();
  v4 = sub_22C909EDC();
  MEMORY[0x2318B7850](v4);

  MEMORY[0x2318B7850](41, 0xE100000000000000);
  return v6[0];
}

uint64_t JointResolution.Candidate.combinedId.getter()
{
  v3 = *(v0 + 16);

  MEMORY[0x2318B7850](14906, 0xE200000000000000);

  v1 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v1);

  return v3;
}

__n128 JointResolution.Candidate.init(candidateId:signals:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u64[1];
  *a3 = *a1;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = v5;
  a3[2].n128_u64[0] = a2;
  return result;
}

unint64_t sub_22C74E244()
{
  result = qword_27D9BFBA0;
  if (!qword_27D9BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFBA0);
  }

  return result;
}

uint64_t JointResolution.Candidate.init(id:bundleId:signals:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t JointResolution.Candidate.hash(into:)(uint64_t a1)
{

  sub_22C36BAFC();
  sub_22C909FFC();

  sub_22C909FFC();
}

uint64_t JointResolution.Candidate.hashValue.getter()
{
  v0 = sub_22C750098();
  sub_22C36ED3C(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

BOOL sub_22C74E37C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_22C9093AC())
  {
    v5 = *(_s14TypedCandidateVMa(0) + 20);
    v6 = *(a1 + v5 + 16);
    v7 = *(a1 + v5 + 24);
    sub_22C750084();
    v10 = v10 && v8 == v9;
    if (v10 || (sub_22C90B4FC() & 1) != 0)
    {
      v11 = v6 == v2 && v7 == v3;
      if (v11 || (sub_22C750040() & 1) != 0)
      {
        v12 = sub_22C36BA00();
        sub_22C749DA0(v12, v13);
        if (v14)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C74E41C()
{
  sub_22C3704C4();
  sub_22C9093BC();
  sub_22C74FE20();
  sub_22C74F76C(v0, v1, MEMORY[0x277D72A88]);
  sub_22C36BAFC();
  sub_22C909F8C();
  _s14TypedCandidateVMa(0);
  sub_22C909FFC();
  sub_22C36BA00();

  return sub_22C909FFC();
}

uint64_t sub_22C74E4B4()
{
  sub_22C90B62C();
  sub_22C9093BC();
  sub_22C74FE20();
  v2 = sub_22C74F76C(v0, v1, MEMORY[0x277D72A88]);
  sub_22C36ED3C(v2, v3, v2, v4, v5, v6, v7, v8, v18, v20);
  sub_22C909F8C();
  _s14TypedCandidateVMa(0);
  v9 = sub_22C909FFC();
  sub_22C36ED3C(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21);
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C74E560(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[72] = *v1;
  v5 = v2;
  v6 = *(v1 + 24);
  sub_22C90B62C();
  JointResolution.Candidate.hash(into:)(v4);
  return sub_22C90B66C();
}

uint64_t sub_22C74E5C4(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C9093BC();
  sub_22C74FE20();
  sub_22C74F76C(v1, v2, MEMORY[0x277D72A88]);
  sub_22C909F8C();
  JointResolution.Candidate.hash(into:)(v4);
  return sub_22C90B66C();
}

unint64_t sub_22C74E674(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t sub_22C74E684(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22C74E69C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C74E674(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22C74E6EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C74C7C4(*a1);
  *a2 = result;
  return result;
}

uint64_t AssistantSchemaIdentifier.toCandidateIdentifier()@<X0>(uint64_t *a2@<X8>)
{
  result = sub_22C9099DC();
  *a2 = result;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t UIControlTool.toCandidateIdentifier()@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22C9037FC();
  v5 = v4;
  result = sub_22C90381C();
  *a2 = v3;
  a2[1] = v5;
  a2[2] = result;
  a2[3] = v7;
  return result;
}

uint64_t RetrievedTool.toCandidateIdentifier()()
{
  sub_22C9036EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  v1 = sub_22C36BC58();
  return v2(v1);
}

void RetrievedTool.Definition.toCandidateIdentifier()()
{
  sub_22C36BA7C();
  v56 = v0;
  v57 = v1;
  sub_22C90384C();
  sub_22C369824();
  v52 = v3;
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v51 = v5 - v4;
  sub_22C9099FC();
  sub_22C369824();
  v54 = v7;
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C90977C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C9036EC();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = sub_22C908EAC();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v31 = v30 - v29;
  (*(v20 + 16))(v24, v56, v18);
  v32 = (*(v20 + 88))(v24, v18);
  if (v32 == *MEMORY[0x277D1ECE0])
  {
    goto LABEL_2;
  }

  if (v32 == *MEMORY[0x277D1ECE8])
  {
    v41 = sub_22C75000C();
    v42(v41);
    (*(v54 + 32))(v10, v24, v55);
    v35 = sub_22C9099DC();
    v37 = v43;
    v44 = sub_22C377B94();
    v45(v44);
    v38 = 0;
    v40 = 0xE000000000000000;
    goto LABEL_11;
  }

  if (v32 == *MEMORY[0x277D1ECD8] || v32 == *MEMORY[0x277D1ECD0])
  {
LABEL_2:
    v33 = sub_22C75000C();
    v34(v33);
    (*(v27 + 32))(v31, v24, v25);
    v35 = sub_22C908E7C();
    v37 = v36;
    sub_22C908DDC();
    v38 = sub_22C9096FC();
    v40 = v39;
    (*(v13 + 8))(v17, v11);
    (*(v27 + 8))(v31, v25);
LABEL_11:
    *v57 = v35;
    v57[1] = v37;
    v57[2] = v38;
    v57[3] = v40;
    sub_22C36CC48();
    return;
  }

  if (v32 == *MEMORY[0x277D1ECF8])
  {
    v47 = sub_22C75000C();
    v48(v47);
    (*(v52 + 32))(v51, v24, v53);
    v35 = sub_22C9037FC();
    v37 = v49;
    v38 = sub_22C90381C();
    v40 = v50;
    (*(v52 + 8))(v51, v53);
    goto LABEL_11;
  }

  sub_22C90B4EC();
  __break(1u);
}

unint64_t sub_22C74ECF8()
{
  result = qword_2814345C0;
  if (!qword_2814345C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814345C0);
  }

  return result;
}

unint64_t sub_22C74ED80()
{
  result = qword_27D9BFBC0;
  if (!qword_27D9BFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFBC0);
  }

  return result;
}

unint64_t sub_22C74EDD8()
{
  result = qword_281434520[0];
  if (!qword_281434520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281434520);
  }

  return result;
}

uint64_t _s19CandidateSignalTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s19CandidateSignalTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9TupleRiskOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_22C74F0D4(uint64_t a1)
{
  sub_22C74F1A8(319, &qword_27D9BFBD8, MEMORY[0x277D1E130]);
  if (v1 <= 0x3F)
  {
    sub_22C74F1A8(319, &qword_27D9BFBE0, MEMORY[0x277D73358]);
    if (v2 <= 0x3F)
    {
      sub_22C74F1FC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C74F1A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C74F1FC(uint64_t a1)
{
  if (!qword_27D9BFBE8)
  {
    sub_22C9069BC();
    sub_22C908C5C();
    sub_22C74F76C(&qword_27D9BAA98, MEMORY[0x277D1DCF0], MEMORY[0x277D1DCF8]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BFBE8);
    }
  }
}

uint64_t _s13DimensionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13DimensionTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C74F430()
{
  result = qword_27D9BFBF0;
  if (!qword_27D9BFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFBF0);
  }

  return result;
}

unint64_t sub_22C74F488()
{
  result = qword_27D9BFBF8;
  if (!qword_27D9BFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFBF8);
  }

  return result;
}

unint64_t sub_22C74F4E0()
{
  result = qword_27D9BFC00;
  if (!qword_27D9BFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC00);
  }

  return result;
}

unint64_t sub_22C74F538()
{
  result = qword_27D9BFC08;
  if (!qword_27D9BFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC08);
  }

  return result;
}

uint64_t sub_22C74F5BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C74F614()
{
  result = qword_27D9BFC18;
  if (!qword_27D9BFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC18);
  }

  return result;
}

unint64_t sub_22C74F66C()
{
  result = qword_27D9BFC20;
  if (!qword_27D9BFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC20);
  }

  return result;
}

unint64_t sub_22C74F6C4()
{
  result = qword_27D9BFC28;
  if (!qword_27D9BFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC28);
  }

  return result;
}

unint64_t sub_22C74F718()
{
  result = qword_27D9BFC30;
  if (!qword_27D9BFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC30);
  }

  return result;
}

uint64_t sub_22C74F76C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s18DimensionsMetadataVwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s18DimensionsMetadataVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = v4 - 2;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t _s18DimensionsMetadataVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t _s14TupleRiskLevelVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s14TupleRiskLevelVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C74FA88(uint64_t a1)
{
  result = sub_22C9093BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C74FB64(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C74FBB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C74FC0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C3A5908(a3, a4);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C74FC64()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  (*(*(v3 - 8) + 8))(v0, v3);
  return v0;
}

_BYTE *sub_22C74FCC0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C74FDA0()
{
  result = qword_27D9BFC88;
  if (!qword_27D9BFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC88);
  }

  return result;
}

uint64_t sub_22C74FEBC(uint64_t a1)
{

  return sub_22C90A0BC();
}

uint64_t sub_22C74FF4C(uint64_t a1)
{
  v6 = *(a1 + 48);
  v7 = *(v4 - 104);
  *v7 = v2;
  v7[1] = v1;

  return sub_22C74FBB8(v3, v7 + v6);
}

char *sub_22C74FFA8(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v3 = v1;
  v3[1] = v2;
  return v3 + v4;
}

uint64_t sub_22C74FFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(a1 + 16) = a13;

  return sub_22C90A91C();
}

uint64_t sub_22C750040()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C750098()
{

  return sub_22C90B62C();
}

uint64_t sub_22C7500B8()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  type metadata accessor for TrialManager();
  v1 = swift_allocObject();
  v4[3] = &type metadata for JointResolverBiomeLogger;
  v4[4] = &off_283FC3F88;
  v4[0] = sub_22C73D0DC(v0, 0xD000000000000021, 0x800000022C933280, v1);
  type metadata accessor for JointResolver();
  v2 = swift_allocObject();
  sub_22C750184(v4);
  return v2;
}

uint64_t sub_22C750184(void *a1)
{
  v36 = a1;
  v1 = sub_22C90634C();
  sub_22C369824();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_22C90636C();
  sub_22C369824();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v33 = *(v12 + 8);
  v34 = v10;
  v33(v16, v10);
  v19 = sub_22C90635C();
  v20 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v21 = swift_slowAlloc();
    v32 = v1;
    v22 = v21;
    *v21 = 0;
    v23 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v19, v20, v23, "JointResolver.init", "", v22, 2u);
    v1 = v32;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v3 + 16))(v7, v9, v1);
  sub_22C9063AC();
  swift_allocObject();
  v24 = sub_22C90639C();
  (*(v3 + 8))(v9, v1);
  v33(v18, v34);
  sub_22C90657C();
  sub_22C90656C();
  type metadata accessor for PlanResolutionCachableModel();
  sub_22C754EF8();
  v25 = v35;
  v26 = sub_22C90655C();
  if (v25)
  {

    sub_22C7524B8(v24, "JointResolver.init");

    sub_22C36FF94(v36);
    type metadata accessor for JointResolver();
    v27 = v37;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v26;

    v27 = v37;
    *(v37 + 16) = v28;
    v29 = v36;
    sub_22C378A4C(v36, v27 + 24);
    sub_22C7524B8(v24, "JointResolver.init");

    sub_22C36FF94(v29);
  }

  return v27;
}

uint64_t sub_22C750500()
{
  sub_22C369980();
  *(v1 + 1112) = v0;
  *(v1 + 1104) = v2;
  *(v1 + 1096) = v3;
  *(v1 + 916) = v4;
  *(v1 + 1088) = v5;
  *(v1 + 1080) = v6;
  *(v1 + 1032) = v7;
  *(v1 + 984) = v8;
  v9 = sub_22C90069C();
  *(v1 + 1120) = v9;
  sub_22C3699B8(v9);
  *(v1 + 1128) = v10;
  *(v1 + 1136) = sub_22C36D0D4();
  *(v1 + 1144) = swift_task_alloc();
  *(v1 + 1152) = swift_task_alloc();
  *(v1 + 1160) = swift_task_alloc();
  *(v1 + 1168) = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  *(v1 + 1176) = swift_task_alloc();
  *(v1 + 1184) = _s10ModelInputVMa(0);
  *(v1 + 1192) = sub_22C36D0D4();
  *(v1 + 1200) = swift_task_alloc();
  v11 = sub_22C9063DC();
  *(v1 + 1208) = v11;
  sub_22C3699B8(v11);
  *(v1 + 1216) = v12;
  *(v1 + 1224) = sub_22C36D0D4();
  *(v1 + 1232) = swift_task_alloc();
  *(v1 + 1240) = swift_task_alloc();
  *(v1 + 1248) = swift_task_alloc();
  v13 = sub_22C90634C();
  *(v1 + 1256) = v13;
  sub_22C3699B8(v13);
  *(v1 + 1264) = v14;
  *(v1 + 1272) = sub_22C36D0D4();
  *(v1 + 1280) = swift_task_alloc();
  v15 = sub_22C90636C();
  *(v1 + 1288) = v15;
  sub_22C3699B8(v15);
  *(v1 + 1296) = v16;
  *(v1 + 1304) = sub_22C36D0D4();
  *(v1 + 1312) = swift_task_alloc();
  v17 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C75077C(uint64_t a1)
{
  v165 = v1;
  v2 = *(v1 + 1304);
  v3 = *(v1 + 1296);
  v4 = *(v1 + 1288);
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v5 = *(v3 + 8);
  v5(v2, v4);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v9, "JointResolver.resolve", "", v8, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v10 = *(v1 + 1312);
  v11 = *(v1 + 1288);
  v12 = *(v1 + 1280);
  v13 = *(v1 + 1272);
  v14 = *(v1 + 1264);
  v15 = *(v1 + 1256);

  (*(v14 + 16))(v13, v12, v15);
  sub_22C9063AC();
  swift_allocObject();
  *(v1 + 1320) = sub_22C90639C();
  (*(v14 + 8))(v12, v15);
  v5(v10, v11);
  sub_22C3A5908(&qword_27D9BFCA8, &qword_22C925198);
  inited = swift_initStackObject();
  *(v1 + 1328) = inited;
  *(inited + 24) = 0;
  v17 = (inited + 24);
  *(inited + 16) = MEMORY[0x277D84F98];
  v18 = (inited + 16);
  sub_22C743A7C(inited);
  *(v1 + 1336) = v19;
  v20 = v19;
  sub_22C903FAC();
  v21 = sub_22C36A724();
  sub_22C754A9C(v21, v22);
  v23 = sub_22C9063CC();
  v24 = sub_22C90AABC();
  v154 = v18;
  lock = v17;
  if (sub_22C37B204(v24))
  {
    v25 = *(v1 + 1200);
    v26 = *(v1 + 1184);
    v27 = sub_22C36FB44();
    v28 = sub_22C370060();
    v164[0] = v28;
    *v27 = 136315138;
    v29 = *(v25 + *(v26 + 40));
    if (*(v25 + *(v26 + 40)))
    {
      if (v29 == 1)
      {
        v30 = 0xD000000000000013;
      }

      else
      {
        v30 = 0x6F7365526C6F6F74;
      }

      if (v29 == 1)
      {
        v31 = 0x800000022C934740;
      }

      else
      {
        v31 = 0xEC0000007265766CLL;
      }
    }

    else
    {
      v31 = 0xEE007265766C6F73;
      v30 = 0x65526E6F69746361;
    }

    v161 = *(v1 + 1248);
    v37 = *(v1 + 1216);
    v38 = *(v1 + 1208);
    sub_22C745BA0(*(v1 + 1200));
    v39 = sub_22C36F9F4(v30, v31, v164);

    *(v27 + 4) = v39;
    sub_22C37F89C();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    sub_22C36FF94(v28);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v34 = *(v37 + 8);
    v35 = v161;
    v36 = v38;
  }

  else
  {
    v32 = *(v1 + 1216);
    v33 = *(v1 + 1200);

    sub_22C745BA0(v33);
    v34 = *(v32 + 8);
    v35 = sub_22C36BAFC();
  }

  v34(v35, v36);
  v158 = v34;
  *(v1 + 1344) = v34;
  v45 = *(v1 + 1176);
  v46 = *(v1 + 1168);
  v47 = *(v1 + 1160);
  v48 = *(v1 + 1152);
  v49 = *(v1 + 1128);
  v50 = *(v1 + 1120);
  v51 = *(v1 + 1112);
  v159 = *(v1 + 1096);
  v162 = *(v1 + 916);
  sub_22C90A73C();
  v52 = sub_22C90A75C();
  *(v1 + 1352) = v52;
  sub_22C36C640(v45, 0, 1, v52);
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v20;

  sub_22C8FAAA0(0, 0, v45, &unk_22C9251A8, v53);

  sub_22C3770B0(v45, &qword_27D9BBB48, &qword_22C910F00);
  sub_22C90068C();
  v54 = *(v49 + 16);
  v54(v47, v46, v50);
  v54(v48, v159, v50);
  type metadata accessor for JointResolverTelemetry(0);
  swift_allocObject();
  *(v1 + 1360) = sub_22C75B3DC(v47, v48);
  sub_22C75C098();
  sub_22C75B48C();
  v55 = sub_22C374168((v51 + 24), *(v51 + 48));
  sub_22C8FC0C0(v162 & 1, v46, *v55);
  v56 = sub_22C5EE7DC();
  *(v1 + 1368) = v56;
  v72 = v56;
  if (!v56)
  {
    sub_22C903FAC();
    v128 = sub_22C9063CC();
    v129 = sub_22C90AADC();
    if (sub_22C37B204(v129))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C37F89C();
      _os_log_impl(v130, v131, v132, v133, v134, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v135 = sub_22C36BAFC();
    v158(v135);
    sub_22C5F2300();
    v136 = swift_allocError();
    *v137 = 0xD000000000000035;
    v137[1] = 0x800000022C9348F0;
    swift_willThrow();
    v138 = v136;
    v163 = v136;
    sub_22C75BAC0();
    sub_22C903FAC();
    v57 = v136;
    v58 = sub_22C9063CC();
    v59 = sub_22C90AADC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = sub_22C36FB44();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      v62 = v163;
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 4) = v63;
      *v61 = v63;
      _os_log_impl(&dword_22C366000, v58, v59, "JointResolver error in JR inference call %@", v60, 0xCu);
      sub_22C3770B0(v61, &qword_27D9BB158, qword_22C910FD0);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v64 = *(v1 + 1344);
    v65 = *(v1 + 1224);
    v66 = *(v1 + 1208);
    v67 = *(v1 + 1168);
    v68 = *(v1 + 1128);
    v69 = *(v1 + 1120);

    v64(v65, v66);
    swift_willThrow();

    swift_setDeallocating();

    (*(v68 + 8))(v67, v69);
    sub_22C7524B8(*(v1 + 1320), "JointResolver.resolve");

    sub_22C372F94(0, 0);

    sub_22C369A24();
    sub_22C36FCB0();

    __asm { BRAA            X1, X16 }
  }

  v152 = v54;
  v73 = *(v1 + 1184);
  v74 = *(v1 + 1112);
  v75 = *(v1 + 1032);
  sub_22C36A83C();
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  *(v76 + 24) = v72;
  sub_22C36A83C();
  v77 = swift_allocObject();
  *(v1 + 1376) = v77;
  *(v77 + 16) = &unk_22C9251C0;
  *(v77 + 24) = v76;

  sub_22C3A5908(&qword_27D9BFCB0, &qword_22C9251D8);
  v78 = swift_asyncLet_begin();
  v79 = *(v75 + *(v73 + 20));
  v80 = *(v79 + 16);
  if (!v80)
  {
    v85 = MEMORY[0x277D84F98];
LABEL_54:
    *(v1 + 1384) = v85;
    sub_22C372434();
    sub_22C36FCB0();

    return MEMORY[0x282200930](v78);
  }

  v81 = 0;
  v82 = v1 + 696;
  v83 = *(v1 + 1128);
  v84 = v79 + 32;
  v148 = v83 + 32;
  v149 = v83 + 8;
  v150 = v83;
  v147 = v83 + 40;
  v85 = MEMORY[0x277D84F98];
  v144 = *(v79 + 16);
  v145 = *(v75 + *(v73 + 20));
  v143 = v79 + 32;
  while (1)
  {
    if (v81 >= *(v79 + 16))
    {
LABEL_63:
      __break(1u);
      return MEMORY[0x282200930](v78);
    }

    v78 = *(v84 + 8 * v81);
    v153 = *(v78 + 16);
    if (v153)
    {
      break;
    }

LABEL_48:
    if (++v81 == v80)
    {
      goto LABEL_54;
    }
  }

  v146 = v81;

  v86 = 0;
  v87 = v78 + 64;
  v151 = v78;
  while (1)
  {
    if (v86 >= *(v78 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if ((v157 = v86, v88 = *(v87 - 32), v89 = *(v87 - 24), v91 = *(v87 - 16), v90 = *(v87 - 8), sub_22C5F8D4C(), , , , sub_22C909F0C(), v160 = v91, !v88) && v89 == 0xE000000000000000 || (sub_22C90B4FC()) && (!v91 && v90 == 0xE000000000000000 || (sub_22C90B4FC()))
    {
      v92 = sub_22C370018();
      sub_22C749DA0(v92, v93);
      v95 = v94;
      swift_bridgeObjectRelease_n();

      if (v95)
      {
        v156 = -1;
        goto LABEL_37;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v96 = sub_22C909F0C();
    *(v1 + 696) = v88;
    *(v1 + 704) = v89;
    *(v1 + 712) = v160;
    *(v1 + 720) = v90;
    *(v1 + 728) = v96;
    *(swift_task_alloc() + 16) = v82;
    os_unfair_lock_lock(lock);
    sub_22C7432B4(v154, v164);
    os_unfair_lock_unlock(lock);
    sub_22C740224(v82);
    v156 = v164[0];

LABEL_37:
    v97 = *(v1 + 1144);
    v98 = *(v1 + 1136);
    v99 = *(v1 + 1120);
    *(v1 + 856) = v88;
    *(v1 + 864) = v89;
    *(v1 + 872) = v160;
    *(v1 + 880) = v90;
    sub_22C754DD0();

    sub_22C902B4C();

    v152(v98, v97, v99);
    swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v85;
    v78 = sub_22C628CD4(v156);
    if (__OFADD__(*(v85 + 16), (v100 & 1) == 0))
    {
      goto LABEL_61;
    }

    v101 = v78;
    v102 = v100;
    sub_22C3A5908(&qword_27D9BFCB8, &qword_22C9251E0);
    v103 = sub_22C90B15C();
    v85 = v164[0];
    if (v103)
    {
      break;
    }

    v82 = v1 + 696;
LABEL_42:
    if (v102)
    {
      v111 = sub_22C755080(v103, *(v1 + 1136), v104, v105, v106, v107, v108, v109, v142, v143, v144, v145, v146, v147, v148, v149, v150);
      (*(v156 + 40))(v111);
      v112 = sub_22C75506C();
      v113(v112);
    }

    else
    {
      sub_22C36ED48(v85 + 8 * (v101 >> 6));
      *(*(v85 + 48) + 8 * v101) = v156;
      v122 = sub_22C755080(v114, v115, v116, v117, v118, v119, v120, v121, v142, v143, v144, v145, v146, v147, v148, v149, v150);
      (*(v156 + 32))(v122);
      v123 = sub_22C75506C();
      v78 = v124(v123);
      v125 = *(v85 + 16);
      v126 = __OFADD__(v125, 1);
      v127 = v125 + 1;
      if (v126)
      {
        goto LABEL_62;
      }

      *(v85 + 16) = v127;
    }

    v78 = v151;
    v86 = v157 + 1;
    v87 += 40;
    if (v153 == v157 + 1)
    {

      v80 = v144;
      v79 = v145;
      v81 = v146;
      v84 = v143;
      goto LABEL_48;
    }
  }

  v103 = sub_22C628CD4(v156);
  v82 = v1 + 696;
  if ((v102 & 1) == (v110 & 1))
  {
    v101 = v103;
    goto LABEL_42;
  }

  sub_22C36FCB0();

  return sub_22C90B54C();
}

uint64_t sub_22C751550()
{
  sub_22C369980();
  *(v1 + 1392) = v0;
  if (v0)
  {

    v2 = sub_22C751EBC;
  }

  else
  {
    v2 = sub_22C7515CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22C7515CC()
{
  sub_22C3749D8();
  v1 = v0[174];
  v2 = v0[167];
  v0[175] = v0[115];
  v0[176] = v0[117];

  v3 = sub_22C5F04F8(v2);
  v0[177] = v3;
  v0[178] = v1;
  if (v1)
  {

    v4 = sub_22C372434();
LABEL_3:

    return MEMORY[0x282200920](v4);
  }

  v5 = v3;
  if (!v3)
  {

    sub_22C903FAC();
    v10 = sub_22C9063CC();
    v11 = sub_22C90AADC();
    if (sub_22C37B204(v11))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C37F89C();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v17 = v0[168];

    v18 = sub_22C36BAFC();
    v17(v18);
    sub_22C5F2300();
    v0[181] = swift_allocError();
    *v19 = 0xD000000000000036;
    v19[1] = 0x800000022C934930;
    swift_willThrow();

    v4 = sub_22C372434();
    goto LABEL_3;
  }

  v6 = v0[169];
  v7 = v0[147];
  sub_22C90A73C();
  sub_22C36C640(v7, 0, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;

  sub_22C8FAAA0(0, 0, v7, &unk_22C9251F0, v8);

  sub_22C3770B0(v7, &qword_27D9BBB48, &qword_22C910F00);
  sub_22C75B4D4();

  v9 = swift_task_alloc();
  v0[179] = v9;
  *v9 = v0;
  v9[1] = sub_22C7518E8;

  return sub_22C7538F8();
}

uint64_t sub_22C7518E8()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C7519E8()
{
  v1 = v0[178];
  v2 = v0[177];
  v3 = v0[166];
  v4 = v0[149];
  sub_22C754A9C(v0[129], v4);

  sub_22C74434C(v2, v4, v3, (v0 + 97));
  v0[180] = v1;

  return MEMORY[0x282200920](v0 + 2);
}

uint64_t sub_22C751AD8()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 984);

  swift_setDeallocating();

  (*(v3 + 8))(v2, v4);
  sub_22C7524B8(v1, "JointResolver.resolve");

  v6 = *(v0 + 776);
  v7 = *(v0 + 792);
  *(v5 + 32) = *(v0 + 808);
  *v5 = v6;
  *(v5 + 16) = v7;

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C7524B8(uint64_t a1, const char *a2)
{
  sub_22C90637C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v3 = sub_22C90634C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90636C();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  sub_22C90365C();
  v17 = sub_22C90635C();
  sub_22C90638C();
  v33 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v32 = v5;

    sub_22C9063BC();

    v18 = sub_22C36A724();
    if (v19(v18) == *MEMORY[0x277D85B00])
    {
      v20 = 0;
      v21 = 0;
      v34 = "[Error] Interval already ended";
    }

    else
    {
      v23 = sub_22C36A724();
      v24(v23);
      v34 = "%s";
      v21 = 2;
      v20 = 1;
    }

    v25 = v12;
    v26 = sub_22C36FB44();
    v27 = sub_22C370060();
    v36 = v27;
    *v26 = v21;
    *(v26 + 1) = v20;
    *(v26 + 2) = 2080;
    sub_22C90366C();
    v28 = sub_22C90AF7C();
    v30 = sub_22C36F9F4(v28, v29, &v36);

    *(v26 + 4) = v30;
    v31 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v17, v33, v31, a2, v34, v26, 0xCu);
    sub_22C36FF94(v27);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v32 + 8))(v9, v3);
    return (*(v25 + 8))(v16, v10);
  }

  else
  {

    (*(v5 + 8))(v9, v3);
    return (*(v12 + 8))(v16, v10);
  }
}

uint64_t sub_22C7527F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22C9063DC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7528B4, 0, 0);
}

uint64_t sub_22C7528B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA18();
  a19 = v21;
  a20 = v22;
  sub_22C3749D8();
  a18 = v20;
  sub_22C903FAC();

  v23 = sub_22C9063CC();
  v24 = sub_22C90AABC();

  v25 = os_log_type_enabled(v23, v24);
  v27 = v20[4];
  v26 = v20[5];
  v28 = v20[3];
  if (v25)
  {
    v29 = sub_22C36FB44();
    v30 = sub_22C370060();
    a9 = v30;
    *v29 = 136315138;
    sub_22C7529F0();
    v33 = sub_22C36F9F4(v31, v32, &a9);

    *(v29 + 4) = v33;
    sub_22C36BE40(&dword_22C366000, v34, v35, "[MODEL_INPUT]:\n%s");
    sub_22C36FF94(v30);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v27 + 8))(v26, v28);

  sub_22C369A24();
  sub_22C372034();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

void sub_22C7529F0()
{
  v0 = sub_22C7542E0();
  v1 = v0;
  v2 = 0;
  v4 = v0 + 8;
  v3 = v0[8];
  v5 = 1 << *(v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  v53 = v0;
  v55 = v8;
  v56 = v0 + 8;
  if ((v6 & v3) != 0)
  {
    do
    {
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v2 << 6);
      v12 = (v1[6] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v1[7] + 8 * v11);

      v16 = v15;
      v17 = [v16 multiArrayValue];
      v60 = v7;
      if (v17)
      {
        v58 = v17;
        v59 = v16;
        v18 = [v17 shape];
        sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
        v19 = sub_22C90A5EC();

        if (v19 >> 62)
        {
          v24 = sub_22C90B1BC();
        }

        else
        {
          v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = v13;
        if (v24)
        {
          sub_22C3B5E2C(0, v24 & ~(v24 >> 63), 0, v20, v21, v22, v23);
          if (v24 < 0)
          {
            goto LABEL_29;
          }

          v54 = v2;
          v25 = 0;
          v61 = v19 & 0xC000000000000001;
          v26 = v14;
          v27 = v19;
          v28 = v24;
          do
          {
            if (v61)
            {
              v29 = MEMORY[0x2318B8460](v25, v19);
            }

            else
            {
              v29 = *(v19 + 8 * v25 + 32);
            }

            v30 = v29;
            v31 = [v30 description];
            v32 = sub_22C90A11C();
            v34 = v33;

            v40 = *(v9 + 16);
            v39 = *(v9 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_22C3B5E2C(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
            }

            ++v25;
            *(v9 + 16) = v40 + 1;
            v41 = v9 + 16 * v40;
            *(v41 + 32) = v32;
            *(v41 + 40) = v34;
            v19 = v27;
          }

          while (v28 != v25);
          v14 = v26;

          v1 = v53;
          v42 = MEMORY[0x277D84F90];
          v2 = v54;
        }

        else
        {

          v42 = v9;
        }

        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        v49 = sub_22C90A04C();
        v51 = v50;

        sub_22C90AF5C();

        MEMORY[0x2318B7850](2112032, 0xE300000000000000);
        v52 = sub_22C7545AC(v58);
        MEMORY[0x2318B7850](v52);

        MEMORY[0x2318B7850](32, 0xE100000000000000);
        MEMORY[0x2318B7850](v49, v51);

        MEMORY[0x2318B7850](0xA78697274614D20, 0xE800000000000000);
        MEMORY[0x2318B7850](v14, v57);

        sub_22C754678(v58, v42);
        MEMORY[0x2318B7850]();

        MEMORY[0x2318B7850](8224, 0xE200000000000000);

        MEMORY[0x2318B7850](10, 0xE100000000000000);

        v8 = v55;
        v4 = v56;
        v9 = v42;
        v43 = v59;
      }

      else
      {
        v62 = v14;
        v63 = v13;
        MEMORY[0x2318B7850](2112032, 0xE300000000000000);
        v43 = v16;
        v44 = v16;
        v45 = [v44 description];
        v46 = sub_22C90A11C();
        v48 = v47;

        MEMORY[0x2318B7850](v46, v48);
        v9 = MEMORY[0x277D84F90];

        MEMORY[0x2318B7850](v62, v63);

        MEMORY[0x2318B7850](10, 0xE100000000000000);
      }

      v7 = (v60 - 1) & v60;
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = v4[v10];
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_22C752EBC()
{
  v0 = sub_22C7542E0();
  v1 = v0;
  v2 = 0;
  v4 = v0 + 8;
  v3 = v0[8];
  v5 = 1 << *(v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  v53 = v0;
  v55 = v8;
  v56 = v0 + 8;
  if ((v6 & v3) != 0)
  {
    do
    {
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v2 << 6);
      v12 = (v1[6] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v1[7] + 8 * v11);

      v16 = v15;
      v17 = [v16 multiArrayValue];
      v60 = v7;
      if (v17)
      {
        v58 = v17;
        v59 = v16;
        v18 = [v17 shape];
        sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
        v19 = sub_22C90A5EC();

        if (v19 >> 62)
        {
          v24 = sub_22C90B1BC();
        }

        else
        {
          v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = v13;
        if (v24)
        {
          sub_22C3B5E2C(0, v24 & ~(v24 >> 63), 0, v20, v21, v22, v23);
          if (v24 < 0)
          {
            goto LABEL_29;
          }

          v54 = v2;
          v25 = 0;
          v61 = v19 & 0xC000000000000001;
          v26 = v14;
          v27 = v19;
          v28 = v24;
          do
          {
            if (v61)
            {
              v29 = MEMORY[0x2318B8460](v25, v19);
            }

            else
            {
              v29 = *(v19 + 8 * v25 + 32);
            }

            v30 = v29;
            v31 = [v30 description];
            v32 = sub_22C90A11C();
            v34 = v33;

            v40 = *(v9 + 16);
            v39 = *(v9 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_22C3B5E2C(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
            }

            ++v25;
            *(v9 + 16) = v40 + 1;
            v41 = v9 + 16 * v40;
            *(v41 + 32) = v32;
            *(v41 + 40) = v34;
            v19 = v27;
          }

          while (v28 != v25);
          v14 = v26;

          v1 = v53;
          v42 = MEMORY[0x277D84F90];
          v2 = v54;
        }

        else
        {

          v42 = v9;
        }

        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        v49 = sub_22C90A04C();
        v51 = v50;

        sub_22C90AF5C();

        MEMORY[0x2318B7850](2112032, 0xE300000000000000);
        v52 = sub_22C7545AC(v58);
        MEMORY[0x2318B7850](v52);

        MEMORY[0x2318B7850](32, 0xE100000000000000);
        MEMORY[0x2318B7850](v49, v51);

        MEMORY[0x2318B7850](0xA78697274614D20, 0xE800000000000000);
        MEMORY[0x2318B7850](v14, v57);

        sub_22C754678(v58, v42);
        MEMORY[0x2318B7850]();

        MEMORY[0x2318B7850](8224, 0xE200000000000000);

        MEMORY[0x2318B7850](10, 0xE100000000000000);

        v8 = v55;
        v4 = v56;
        v9 = v42;
        v43 = v59;
      }

      else
      {
        v62 = v14;
        v63 = v13;
        MEMORY[0x2318B7850](2112032, 0xE300000000000000);
        v43 = v16;
        v44 = v16;
        v45 = [v44 description];
        v46 = sub_22C90A11C();
        v48 = v47;

        MEMORY[0x2318B7850](v46, v48);
        v9 = MEMORY[0x277D84F90];

        MEMORY[0x2318B7850](v62, v63);

        MEMORY[0x2318B7850](10, 0xE100000000000000);
      }

      v7 = (v60 - 1) & v60;
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = v4[v10];
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_22C753388(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22C7533A8, 0, 0);
}

uint64_t sub_22C7533A8()
{
  sub_22C369980();
  *(v0 + 32) = *(*(v0 + 16) + 16);

  v1 = sub_22C36BA00();

  return MEMORY[0x2822009F8](v1, v2, 0);
}

uint64_t sub_22C753414()
{
  sub_22C8FE450(*(v0 + 24));
  sub_22C73967C();

  v1 = sub_22C36BA00();

  return v2(v1);
}

uint64_t sub_22C7534F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22C7535E4;

  return v5();
}

uint64_t sub_22C7535E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A3C();
  v9 = v8;
  v10 = *v4;
  sub_22C369970();
  *v11 = v10;

  if (!v3)
  {
    v12 = *(v9 + 16);
    *v12 = a1;
    v12[1] = a2;
    v12[2] = a3;
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_22C7536FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22C9063DC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7537BC, 0, 0);
}

uint64_t sub_22C7537BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA18();
  a19 = v21;
  a20 = v22;
  sub_22C3749D8();
  a18 = v20;
  sub_22C903FAC();

  v23 = sub_22C9063CC();
  v24 = sub_22C90AABC();

  v25 = os_log_type_enabled(v23, v24);
  v27 = v20[4];
  v26 = v20[5];
  v28 = v20[3];
  if (v25)
  {
    v29 = sub_22C36FB44();
    v30 = sub_22C370060();
    a9 = v30;
    *v29 = 136315138;
    sub_22C752EBC();
    v33 = sub_22C36F9F4(v31, v32, &a9);

    *(v29 + 4) = v33;
    sub_22C36BE40(&dword_22C366000, v34, v35, "[MODEL_OUTPUT]:\n%s");
    sub_22C36FF94(v30);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v27 + 8))(v26, v28);

  sub_22C369A24();
  sub_22C372034();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_22C7538F8()
{
  sub_22C369980();
  v0[10] = v1;
  v0[11] = v2;
  v0[8] = v3;
  v0[9] = v4;
  v0[6] = v5;
  v0[7] = v6;
  v7 = sub_22C9063DC();
  v0[12] = v7;
  sub_22C3699B8(v7);
  v0[13] = v8;
  v0[14] = sub_22C36D0D4();
  v0[15] = swift_task_alloc();
  v9 = sub_22C90363C();
  v0[16] = v9;
  sub_22C3699B8(v9);
  v0[17] = v10;
  v0[18] = swift_task_alloc();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C753A04()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, *MEMORY[0x277D1EC20], v3);
  v4 = sub_22C90362C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22C753BE0;

    return sub_22C753F98();
  }

  else
  {
    sub_22C903FAC();
    v7 = sub_22C9063CC();
    v8 = sub_22C90AABC();
    if (os_log_type_enabled(v7, v8))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C369A04(&dword_22C366000, v9, v10, "jointResolverCurareLogging feature flag is disabled.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v11 = sub_22C36BAFC();
    v12(v11);

    sub_22C369A24();

    return v13();
  }
}

uint64_t sub_22C753BE0()
{
  sub_22C36FB38();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;
  v6 = *v0;
  *(v1 + 160) = v3;

  v4 = swift_task_alloc();
  *(v1 + 168) = v4;
  *v4 = v6;
  v4[1] = sub_22C753D34;

  return sub_22C753F98();
}

uint64_t sub_22C753D34()
{
  sub_22C369980();
  sub_22C369A3C();
  *(v1 + 176) = v0;

  v2 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C753E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[22];
  v14 = v12[20];
  v31 = v12[15];
  v15 = v12[10];
  v16 = v12[11];
  sub_22C900F8C();
  v12[2] = v14;
  v12[3] = v13;
  v12[4] = v15;
  v12[5] = v16;
  sub_22C7549F4();
  sub_22C754A48();

  sub_22C900F7C();

  sub_22C903FAC();
  v17 = sub_22C9063CC();
  LOBYTE(v14) = sub_22C90AABC();
  if (os_log_type_enabled(v17, v14))
  {
    sub_22C3720F4();
    *swift_slowAlloc() = 0;
    sub_22C369A04(&dword_22C366000, v18, v19, "successfully logged JointResolverCurareEvent in FS.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v20 = sub_22C36A724();
  v21(v20);

  sub_22C369A24();
  sub_22C372034();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

void sub_22C753FB8()
{
  v4 = *(v1 + 16);
  sub_22C7542E0();
  sub_22C754F90();
  v64 = v6;
  v65 = v7;
  if (v3)
  {
    while (1)
    {
      v8 = v5;
LABEL_6:
      sub_22C754FD0();
      v4 = v4;
      if ([v4 multiArrayValue])
      {
        sub_22C38632C();
        sub_22C754678(v9, MEMORY[0x277D84F90]);
        v67 = v10;
        v68 = v11;
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C37A324();
        sub_22C372CD0();
        if (v13)
        {
          goto LABEL_30;
        }

        v14 = v12;
        sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
        sub_22C755060();
        if (sub_22C90B15C())
        {
          v4 = v73;
          v15 = sub_22C370018();
          sub_22C36E2BC(v15, v16);
          if ((v14 & 1) != (v17 & 1))
          {
            goto LABEL_26;
          }
        }

        if (v14)
        {

          sub_22C755038(v18, v19, v20, v21, v22, v23, v24, v25, v62, v63, v64, v65, v67, v68, v70, v72, v73);

          goto LABEL_22;
        }

        v39 = v73;
        sub_22C381BA0();
        sub_22C36ED48(v40);
        sub_22C38AA74(v41, v42, v43, v44, v45, v46, v47, v48, v62, v63, v64, v65, v67, v68);

        sub_22C6341D8();
        if (v13)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = v4;
        v4 = [v26 description];
        v69 = sub_22C90A11C();
        v71 = v27;

        swift_isUniquelyReferenced_nonNull_native();
        sub_22C75500C();
        sub_22C372CD0();
        if (v13)
        {
          goto LABEL_31;
        }

        v29 = v28;
        sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
        sub_22C755060();
        if (sub_22C90B15C())
        {
          v4 = v73;
          sub_22C36E2BC(v0, v2);
          if ((v29 & 1) != (v30 & 1))
          {
LABEL_26:
            sub_22C378644();

            sub_22C90B54C();
            return;
          }
        }

        if (v29)
        {

          sub_22C37034C(v31, v32, v33, v34, v35, v36, v37, v38, v62, v63, v64, v65, v66, v69, v71, v72, v73);

          goto LABEL_22;
        }

        v39 = v73;
        sub_22C381BA0();
        sub_22C36ED48(v50);
        sub_22C37F4C4(v51, v52, v53, v54, v55, v56, v57, v58, v62, v63, v64, v65, v66, v69, v71);
        sub_22C6341D8();
        if (v13)
        {
          goto LABEL_33;
        }
      }

      *(v39 + 16) = v49;
LABEL_22:
      v5 = v8;
    }
  }

  while (1)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      sub_22C3805C4();
      sub_22C378644();

      __asm { BRAA            X2, X16 }
    }

    ++v5;
    if (*(v7 + 8 * v8))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_22C75427C()
{

  sub_22C36FF94((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_22C7542E0()
{
  v1 = [v0 featureNames];
  v2 = sub_22C90A8BC();

  sub_22C36E278(0, &qword_28142F9C8, 0x277CBFEF8);
  v3 = sub_22C909F0C();
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (*(v2 + 48) + ((v8 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    v14 = sub_22C90A0EC();
    v15 = [v31 featureValueForName_];

    if (v15)
    {
      v30 = v15;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_22C36E2BC(v13, v12);
      v29 = v17;
      if (__OFADD__(v3[2], (v17 & 1) == 0))
      {
        goto LABEL_22;
      }

      v18 = v16;
      sub_22C3A5908(&qword_27D9BFCA0, &unk_22C925188);
      if (sub_22C90B15C())
      {
        v19 = sub_22C36E2BC(v13, v12);
        v21 = v29;
        if ((v29 & 1) != (v20 & 1))
        {
          goto LABEL_24;
        }

        v18 = v19;
      }

      else
      {
        v21 = v29;
      }

      if (v21)
      {
        v22 = v3[7];
        v23 = *(v22 + 8 * v18);
        *(v22 + 8 * v18) = v30;
      }

      else
      {
        sub_22C36ED48(&v3[v18 >> 6]);
        v24 = (v3[6] + 16 * v18);
        *v24 = v13;
        v24[1] = v12;
        v23 = v30;
        *(v3[7] + 8 * v18) = v30;
        v25 = v3[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_23;
        }

        v3[2] = v27;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v3;
    }

    v6 = *(v2 + 56 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C7545AC(void *a1)
{
  v1 = [a1 dataType];
  if (v1 == 131104)
  {
    return 0x3233746E49;
  }

  if (v1 == 65568)
  {
    return 0x323374616F6C46;
  }

  v2 = 0x6E776F6E6B6E553CLL;
  if (v1 == 65552)
  {
    v2 = 0x363174616F6C46;
  }

  if (v1 == 65600)
  {
    return 0x656C62756F44;
  }

  else
  {
    return v2;
  }
}

void sub_22C754690(void *a1, unint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = [a1 shape];
  sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
  sub_22C90A5EC();

  v6 = sub_22C36E2B8();

  v7 = sub_22C36E2B8();
  if (v6 == v7)
  {
    v8 = sub_22C90A5DC();
    v9 = [a1 objectForKeyedSubscript_];

    v10 = [v9 description];
    sub_22C90A11C();

LABEL_24:
    sub_22C36BA00();
    return;
  }

  inited = v7;
  v12 = [a1 shape];
  v13 = sub_22C90A5EC();

  sub_22C633A2C();
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  v14 = *(v13 + 8 * inited + 32);
LABEL_5:
  v15 = v14;

  v16 = sub_22C90A90C();

  if ((v16 & 0x8000000000000000) == 0)
  {
    if (!v16)
    {
LABEL_23:
      MEMORY[0x2318B7850](93, 0xE100000000000000);
      goto LABEL_24;
    }

    v17 = 0;
    v18 = a2 >> 62;
    while (1)
    {
      sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C922290;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      if (v18)
      {
        v19 = sub_22C90B1BC();
      }

      else
      {
        v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v14 = MEMORY[0x2318B8460](inited, v13);
        goto LABEL_5;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v13 = sub_22C90AF9C();
      v21 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
      if (*(v21 + 16) >= *(v21 + 24) >> 1)
      {
        goto LABEL_26;
      }

      ++v17;
      swift_arrayInitWithCopy();

      ++*(v21 + 16);
      v22 = a3(a1, v13);
      v24 = v23;

      MEMORY[0x2318B7850](v22, v24);

      if (v17 < v16)
      {
        MEMORY[0x2318B7850](44, 0xE100000000000000);
      }

      if (v16 == v17)
      {
        goto LABEL_23;
      }
    }

    if (!v18)
    {
      v21 = a2 & 0xFFFFFFFFFFFFFF8;
      v13 = a2;
      if (v20 <= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_17:
    sub_22C90B1BC();
    goto LABEL_18;
  }

  __break(1u);
}

unint64_t sub_22C7549F4()
{
  result = qword_27D9BFC90;
  if (!qword_27D9BFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC90);
  }

  return result;
}

unint64_t sub_22C754A48()
{
  result = qword_27D9BFC98;
  if (!qword_27D9BFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC98);
  }

  return result;
}

uint64_t sub_22C754A9C(uint64_t a1, uint64_t a2)
{
  v4 = _s10ModelInputVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C754B00()
{
  sub_22C36FB38();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C38341C(v1);

  return sub_22C7527F4(v3, v4, v5, v6);
}

uint64_t sub_22C754B94()
{
  sub_22C369980();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C754C24;
  v2 = sub_22C36BA00();

  return sub_22C753388(v2, v3);
}

uint64_t sub_22C754C24()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C370018();

  return v4(v3);
}

uint64_t sub_22C754D24()
{
  sub_22C36FB38();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_22C36D860(v4);
  *v5 = v6;
  v5[1] = sub_22C46BC08;

  return sub_22C7534F8(v2, v3);
}

unint64_t sub_22C754DD0()
{
  result = qword_2814345D0[0];
  if (!qword_2814345D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814345D0);
  }

  return result;
}

uint64_t sub_22C754E24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C754E64()
{
  sub_22C36FB38();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C38341C(v1);

  return sub_22C7536FC(v3, v4, v5, v6);
}

unint64_t sub_22C754EF8()
{
  result = qword_281431B68[0];
  if (!qword_281431B68[0])
  {
    type metadata accessor for PlanResolutionCachableModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281431B68);
  }

  return result;
}

uint64_t sub_22C754F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C372F94(&unk_22C9251D0, a18);
}

uint64_t sub_22C754FD0()
{
}

uint64_t sub_22C75500C()
{

  return sub_22C36E2BC(v1, v0);
}

uint64_t sub_22C755038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = (*(a17 + 56) + 16 * v17);
  *v19 = a13;
  v19[1] = a14;
}

uint64_t sub_22C7550A4()
{
  v1 = v0;
  sub_22C9063DC();
  sub_22C369824();
  v34[2] = v3;
  v34[3] = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v34[1] = v5 - v4;
  v36 = sub_22C90634C();
  sub_22C369824();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - v12;
  v14 = sub_22C90636C();
  sub_22C369824();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v34 - v21;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v35 = *(v16 + 8);
  v35(v20, v14);
  v23 = sub_22C90635C();
  v24 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v25 = sub_22C36D240();
    v34[0] = v1;
    v26 = v25;
    *v25 = 0;
    v27 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v23, v24, v27, "JointResolverFeaturizer.init", "", v26, 2u);
    v1 = v34[0];
    sub_22C3699EC();
  }

  v28 = v36;
  (*(v7 + 16))(v11, v13, v36);
  sub_22C9063AC();
  swift_allocObject();
  v29 = sub_22C90639C();
  (*(v7 + 8))(v13, v28);
  v35(v22, v14);
  sub_22C90337C();
  v30 = sub_22C90336C();
  *(&v38 + 1) = sub_22C90334C();
  v39 = &off_283FBFA68;
  sub_22C36D548(&v37);
  sub_22C90335C();

  v31 = v38;
  *(v1 + 24) = v37;
  *(v1 + 40) = v31;
  *(v1 + 56) = v39;
  type metadata accessor for CandidateSimilarityClient();
  swift_allocObject();
  sub_22C73D3E0();
  *(v1 + 16) = v32;
  sub_22C757108(v29, "JointResolverFeaturizer.init");

  return v1;
}

uint64_t sub_22C755550()
{
  sub_22C369980();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = type metadata accessor for JointResolution.CandidateInteraction(0);
  v1[21] = v4;
  sub_22C3699B8(v4);
  v1[22] = v5;
  v1[23] = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9BFCC8, &qword_22C925308);
  sub_22C369914(v6);
  v1[24] = sub_22C36D0D4();
  v1[25] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v1[26] = v7;
  sub_22C3699B8(v7);
  v1[27] = v8;
  v1[28] = sub_22C36D0D4();
  v1[29] = swift_task_alloc();
  v9 = sub_22C9032FC();
  v1[30] = v9;
  sub_22C3699B8(v9);
  v1[31] = v10;
  v1[32] = sub_22C36D0D4();
  v1[33] = swift_task_alloc();
  v11 = type metadata accessor for JointResolution.DeviceContext(0);
  v1[34] = v11;
  sub_22C369914(v11);
  v1[35] = sub_22C36D0D4();
  v1[36] = swift_task_alloc();
  v12 = type metadata accessor for JointResolution.TupleInteraction(0);
  v1[37] = v12;
  sub_22C3699B8(v12);
  v1[38] = v13;
  v1[39] = sub_22C3699D4();
  v14 = sub_22C90063C();
  v1[40] = v14;
  sub_22C3699B8(v14);
  v1[41] = v15;
  v1[42] = sub_22C3699D4();
  v16 = sub_22C9032EC();
  v1[43] = v16;
  sub_22C3699B8(v16);
  v1[44] = v17;
  v1[45] = sub_22C36D0D4();
  v1[46] = swift_task_alloc();
  v18 = type metadata accessor for JointResolverLocationSignalProvider(0);
  sub_22C369914(v18);
  v1[47] = sub_22C36D0D4();
  v1[48] = swift_task_alloc();
  v19 = sub_22C9032BC();
  v1[49] = v19;
  sub_22C3699B8(v19);
  v1[50] = v20;
  v1[51] = sub_22C36D0D4();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v21 = sub_22C3A5908(&qword_27D9BFCD0, &qword_22C925310);
  sub_22C369914(v21);
  v1[54] = sub_22C3699D4();
  v22 = sub_22C90332C();
  v1[55] = v22;
  sub_22C3699B8(v22);
  v1[56] = v23;
  v1[57] = sub_22C3699D4();
  v24 = sub_22C90634C();
  v1[58] = v24;
  sub_22C3699B8(v24);
  v1[59] = v25;
  v1[60] = sub_22C36D0D4();
  v1[61] = swift_task_alloc();
  v26 = sub_22C90636C();
  v1[62] = v26;
  sub_22C3699B8(v26);
  v1[63] = v27;
  v1[64] = sub_22C36D0D4();
  v1[65] = swift_task_alloc();
  v28 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

void sub_22C7559B8(uint64_t a1)
{
  v252 = v1;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v2 = sub_22C37170C();
  v245 = v3;
  (v3)(v2);
  v4 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    *sub_22C36D240() = 0;
    v5 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v6, v7, v5, "JointResolverFeaturizer.fetchInteractions", "");
    sub_22C3699EC();
  }

  v8 = *(v1 + 520);
  v10 = *(v1 + 488);
  v9 = *(v1 + 496);
  v12 = *(v1 + 472);
  v11 = *(v1 + 480);
  v13 = *(v1 + 464);
  v14 = *(v1 + 160);

  (*(v12 + 16))(v11, v10, v13);
  sub_22C9063AC();
  swift_allocObject();
  sub_22C3707B4();
  v221 = sub_22C90639C();
  (*(v12 + 8))(v10, v13);
  v245(v8, v9);
  sub_22C4E719C(v14 + 24, v1 + 56, &qword_27D9BFCD8, &qword_22C925318);
  if (!*(v1 + 80))
  {
    goto LABEL_57;
  }

  v15 = *(v1 + 144);
  sub_22C36C730((v1 + 56), v1 + 16);
  v16 = 0;
  v228 = v15 + 32;
  v230 = *(v15 + 16);
  v226 = MEMORY[0x277D84F90];
  v234 = v1;
LABEL_5:
  v17 = v16;
  while (v17 != v230)
  {
    if (v17 >= v230)
    {
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      return;
    }

    if (__OFADD__(v17, 1))
    {
      goto LABEL_169;
    }

    v232 = v17 + 1;
    v236 = *(v228 + 8 * v17);
    v238 = *(v236 + 16);

    v1 = 0;
    v18 = MEMORY[0x277D84F90];
LABEL_10:
    v246 = v18;
    while (v1 != v238)
    {
      if (v1 >= *(v236 + 16))
      {
        __break(1u);
        goto LABEL_81;
      }

      v19 = (v236 + 32 + 40 * v1);
      v21 = *v19;
      v20 = v19[1];
      v23 = v19[2];
      v22 = v19[3];
      v24 = v19[4];
      ++v1;
      sub_22C5F8D4C();

      v25 = sub_22C909F0C();
      if (v21)
      {
        v26 = 0;
      }

      else
      {
        v26 = v20 == 0xE000000000000000;
      }

      if (!v26 && (sub_22C90B4FC() & 1) == 0 || (!v23 ? (v27 = v22 == 0xE000000000000000) : (v27 = 0), !v27 && (sub_22C90B4FC() & 1) == 0))
      {

LABEL_43:
        swift_bridgeObjectRelease_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_22C36D270();
          sub_22C594258(v43, v44, v45, v18);
          v18 = v46;
        }

        v41 = *(v18 + 16);
        v40 = *(v18 + 24);
        if (v41 >= v40 >> 1)
        {
          v47 = sub_22C36A958(v40);
          sub_22C594258(v47, v48, v49, v18);
          v18 = v50;
        }

        *(v18 + 16) = v41 + 1;
        v42 = (v18 + 40 * v41);
        v42[4] = v21;
        v42[5] = v20;
        v42[6] = v23;
        v42[7] = v22;
        v42[8] = v24;
        goto LABEL_10;
      }

      v242 = v21;
      if (v24 != v25)
      {
        if (*(v24 + 16) != *(v25 + 16))
        {
LABEL_42:

          v21 = v242;
          v18 = v246;
          goto LABEL_43;
        }

        v28 = 0;
        v29 = 1 << *(v24 + 32);
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v31 = v30 & *(v24 + 64);
        v32 = (v29 + 63) >> 6;
        while (v31)
        {
          v33 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
          v34 = v33 | (v28 << 6);
LABEL_35:
          v37 = *(*(v24 + 48) + v34) | (*(*(v24 + 56) + 4 * v34) << 32);
LABEL_36:
          if (v37 == 8)
          {
            goto LABEL_41;
          }

          v38 = sub_22C633A1C();
          if ((v39 & 1) == 0 || *(*(v25 + 56) + 4 * v38) != *(&v37 + 1))
          {
            goto LABEL_42;
          }
        }

        while (1)
        {
          v35 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v35 >= v32)
          {
            v31 = 0;
            v37 = 8;
            goto LABEL_36;
          }

          v36 = *(v24 + 64 + 8 * v35);
          ++v28;
          if (v36)
          {
            v31 = (v36 - 1) & v36;
            v34 = __clz(__rbit64(v36)) | (v35 << 6);
            v28 = v35;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_57:
        sub_22C36DD28(v1 + 56, &qword_27D9BFCD8, &qword_22C925318);
        sub_22C5F2300();
        swift_allocError();
        *v56 = 0xD000000000000014;
        v56[1] = 0x800000022C934A90;
        swift_willThrow();
LABEL_58:
        sub_22C371C50();
        sub_22C757108(v221, "JointResolverFeaturizer.fetchInteractions");

        v57 = *(v1 + 8);

        v57();
        return;
      }

LABEL_41:
      swift_bridgeObjectRelease_n();

      v18 = v246;
    }

    if (*(v18 + 16))
    {
      v51 = v226;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C59434C();
        v51 = v54;
      }

      v16 = v232;
      v53 = *(v51 + 16);
      v52 = *(v51 + 24);
      v226 = v51;
      if (v53 >= v52 >> 1)
      {
        sub_22C36A958(v52);
        sub_22C59434C();
        v16 = v232;
        v226 = v55;
      }

      *(v226 + 16) = v53 + 1;
      *(v226 + 8 * v53 + 32) = v18;
      v1 = v234;
      goto LABEL_5;
    }

    v17 = v232;
    v1 = v234;
  }

  v58 = *(v226 + 16);
  v59 = MEMORY[0x277D84F90];
  if (v58)
  {
    v60 = *(v1 + 400);
    v250 = MEMORY[0x277D84F90];
    sub_22C3B76DC(0, v58, 0);
    v61 = 0;
    v235 = v58;
    do
    {
      if (v61 >= *(v226 + 16))
      {
        goto LABEL_170;
      }

      v62 = *(v226 + 32 + 8 * v61);
      v63 = *(v62 + 16);
      if (v63)
      {

        sub_22C3B76FC(0, v63, 0);
        v64 = v59;
        v65 = v62 + 56;
        do
        {

          sub_22C90328C();
          *&v251[0] = v64;
          v67 = *(v64 + 16);
          v66 = *(v64 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_22C3B76FC(v66 > 1, v67 + 1, 1);
            v64 = *&v251[0];
          }

          v68 = v234[53];
          v69 = v234[49];
          *(v64 + 16) = v67 + 1;
          (*(v60 + 32))(v64 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v67, v68, v69);
          v65 += 40;
          --v63;
        }

        while (v63);

        v59 = MEMORY[0x277D84F90];
        v58 = v235;
      }

      else
      {
        v64 = v59;
      }

      v71 = *(v250 + 16);
      v70 = *(v250 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_22C3B76DC(v70 > 1, v71 + 1, 1);
      }

      ++v61;
      *(v250 + 16) = v71 + 1;
      *(v250 + 8 * v71 + 32) = v64;
    }

    while (v61 != v58);
    v1 = v234;
  }

  sub_22C374168((v1 + 16), *(v1 + 40));
  sub_22C90333C();
  v72 = *(v1 + 432);

  sub_22C36D3E0(v72);
  if (v26)
  {
    v73 = *(v1 + 432);

    sub_22C36DD28(v73, &qword_27D9BFCD0, &qword_22C925310);
    sub_22C90401C();
    v74 = sub_22C9063CC();
    v75 = sub_22C90AABC();
    if (sub_22C370048(v75))
    {
      v76 = sub_22C36D240();
      *v76 = 0;
      _os_log_impl(&dword_22C366000, v74, v75, "No interactions fetched", v76, 2u);
      sub_22C3699EC();
    }

    v77 = v234;
    v78 = v234[27];
    v79 = v234[28];
    v80 = v234[26];

    (*(v78 + 8))(v79, v80);
    v247 = MEMORY[0x277D84F90];
    v218 = MEMORY[0x277D84F90];
    goto LABEL_165;
  }

LABEL_81:
  v81 = *(v1 + 352);
  v82 = *(v1 + 328);
  v224 = *(v1 + 296);
  v239 = *(v1 + 272);
  v83 = *(v1 + 248);
  v84 = *(v1 + 152);
  (*(*(v1 + 448) + 32))(*(v1 + 456), *(v1 + 432), *(v1 + 440));
  *(v1 + 96) = v84;
  *(v1 + 104) = 0;

  sub_22C3A5908(&qword_27D9BFCE0, &qword_22C925320);
  sub_22C75A618();
  sub_22C908B7C();
  v85 = sub_22C90330C();
  v86 = 0;
  v240 = *(v85 + 16);
  v243 = v85;
  v222 = v85 + 32;
  v237 = *MEMORY[0x277D1F2D8];
  v233 = (v82 + 8);
  v229 = (v83 + 88);
  v231 = (v81 + 8);
  v220 = *MEMORY[0x277D1F2B8];
  v219 = *MEMORY[0x277D1F2C8];
  v217 = *MEMORY[0x277D1F2E0];
  v211 = *MEMORY[0x277D1F2C0];
  v204 = *MEMORY[0x277D1F2B0];
  v202 = *MEMORY[0x277D1F2D0];
  v201 = *MEMORY[0x277D1F298];
  v200 = *MEMORY[0x277D1F2A0];
  v199 = *MEMORY[0x277D1F2A8];
  v198 = (v83 + 8);
  v218 = MEMORY[0x277D84F90];
LABEL_82:
  while (2)
  {
    if (v240 != v86)
    {
      if (v86 >= *(v243 + 16))
      {
        goto LABEL_172;
      }

      if (v86 >= *(v226 + 16))
      {

        sub_22C90401C();
        v180 = sub_22C9063CC();
        v181 = sub_22C90AABC();
        if (sub_22C370048(v181))
        {
          v182 = sub_22C36FB44();
          *v182 = 134217984;
          *(v182 + 4) = v86;
          _os_log_impl(&dword_22C366000, v180, v181, "Row index %ld is not present in filteredTupleArray", v182, 0xCu);
          sub_22C3699EC();
        }

        v184 = v234[56];
        v183 = v234[57];
        v185 = v234[55];
        v186 = v234[48];
        v187 = v234[29];
        v188 = v234[26];
        v189 = v234[27];

        (*(v189 + 8))(v187, v188);
        sub_22C5F2300();
        swift_allocError();
        *v190 = 0xD00000000000002FLL;
        v190[1] = 0x800000022C934AB0;
        swift_willThrow();
        sub_22C36B5EC();
        sub_22C75A67C(v186, v191);
        (*(v184 + 8))(v183, v185);
        v1 = v234;
        sub_22C36FF94(v234 + 2);
        goto LABEL_58;
      }

      v87 = *(v222 + 8 * v86);
      v88 = v234[48];
      v89 = *(v226 + 32 + 8 * v86);
      v234[14] = v234[19];
      v234[15] = 0;

      sub_22C908B7C();
      sub_22C36B5EC();
      sub_22C75A67C(v88, v90);
      sub_22C38BFB4();
      v91 = sub_22C36BA00();
      sub_22C75A6D4(v91, v92, v93);
      if (!*(v87 + 16))
      {

        ++v86;
        continue;
      }

      sub_22C377660();
      v95 = v87 + v94;
      v208 = *(v96 + 72);
      v212 = *(v96 + 16);
      v214 = v89;
      v210 = v86 + 1;
      v98 = v97 - 1;
      while (1)
      {
        v99 = v234[46];
        v101 = v234[42];
        v100 = v234[43];
        v102 = v234[40];
        v103 = v234[36];
        v104 = v234[33];
        v105 = v234[30];
        v248 = v95;
        v212(v99);
        sub_22C9032CC();
        v106 = sub_22C75AD00(v251);
        (*v233)(v101, v102, v106);
        sub_22C9032CC();
        sub_22C75A73C(v103 + *(v239 + 20));
        sub_22C9032DC();
        (*v231)(v99, v100);
        v107 = (*v229)(v104, v105);
        if (v107 == v237)
        {
          break;
        }

        v109 = v218;
        v110 = v214;
        v111 = v98;
        if (v107 == v220)
        {
          v108 = 0;
          goto LABEL_92;
        }

        v86 = v210;
        if (v107 == v219)
        {
          v108 = 2;
        }

        else if (v107 == v217)
        {
          v108 = 4;
        }

        else if (v107 == v211)
        {
          v108 = 3;
        }

        else if (v107 == v204)
        {
          v108 = 1;
        }

        else if (v107 == v202)
        {
          v108 = 6;
        }

        else if (v107 == v201)
        {
          v108 = 7;
        }

        else if (v107 == v200)
        {
          v108 = 8;
        }

        else if (v107 == v199)
        {
          v108 = 9;
        }

        else
        {
          (*v198)(v234[33], v234[30]);
          v108 = 5;
        }

LABEL_93:
        v112 = v234[39];
        sub_22C36C27C(v234[36]);
        *(v112 + *(v224 + 20)) = v110;
        *(v112 + *(v224 + 24)) = v108;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C36D270();
          sub_22C5944C8();
          v109 = v118;
        }

        v114 = *(v109 + 16);
        v113 = *(v109 + 24);
        if (v114 >= v113 >> 1)
        {
          sub_22C36A958(v113);
          sub_22C5944C8();
          v109 = v119;
        }

        *(v109 + 16) = v114 + 1;
        sub_22C75A75C();
        sub_22C75A6D4(v117, v109 + v115 + *(v116 + 72) * v114, type metadata accessor for JointResolution.TupleInteraction);
        v218 = v109;
        if (!v111)
        {

          goto LABEL_82;
        }

        v98 = v111 - 1;
        v95 = v248 + v208;
      }

      v108 = 5;
      v109 = v218;
      v110 = v214;
      v111 = v98;
LABEL_92:
      v86 = v210;
      goto LABEL_93;
    }

    break;
  }

  v77 = v234;
  v120 = v234[50];
  v225 = v234[21];

  v121 = sub_22C90331C();
  v122 = 0;
  v124 = v121 + 64;
  v123 = *(v121 + 64);
  v206 = v121;
  v125 = -1;
  v126 = -1 << *(v121 + 32);
  if (-v126 < 64)
  {
    v125 = ~(-1 << -v126);
  }

  v127 = v125 & v123;
  v203 = (63 - v126) >> 6;
  v213 = (v120 + 32);
  v128 = MEMORY[0x277D84F90];
  v205 = v120;
  v207 = (v120 + 8);
  v209 = v121 + 64;
  if ((v125 & v123) == 0)
  {
LABEL_121:
    while (1)
    {
      v129 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        goto LABEL_171;
      }

      if (v129 >= v203)
      {
        v216 = v122;
        sub_22C3A5908(&qword_27D9BFCE8, &qword_22C925328);
        v177 = sub_22C3707B4();
        sub_22C36C640(v177, v178, 1, v179);
        v215 = 0;
        goto LABEL_126;
      }

      v127 = *(v124 + 8 * v129);
      ++v122;
      if (v127)
      {
        v216 = v129;
        goto LABEL_125;
      }
    }
  }

  while (1)
  {
    v216 = v122;
    v129 = v122;
LABEL_125:
    v130 = v77[52];
    v131 = v77[49];
    v132 = v77[24];
    v215 = (v127 - 1) & v127;
    v133 = __clz(__rbit64(v127)) | (v129 << 6);
    (*(v205 + 16))(v130, *(v206 + 48) + *(v205 + 72) * v133, v131);
    v134 = *(*(v206 + 56) + 8 * v133);
    v135 = sub_22C3A5908(&qword_27D9BFCE8, &qword_22C925328);
    v136 = *(v135 + 48);
    (*(v205 + 32))(v132, v130, v131);
    *(v132 + v136) = v134;
    v77 = v234;
    sub_22C36C640(v132, 0, 1, v135);

LABEL_126:
    v137 = v77[25];
    sub_22C4E7208(v77[24], v137, &qword_27D9BFCC8, &qword_22C925308);
    v138 = sub_22C3A5908(&qword_27D9BFCE8, &qword_22C925328);
    sub_22C36D3E0(v137);
    if (v26)
    {
      break;
    }

    v139 = v77[48];
    v140 = v77[47];
    v141 = v77[19];
    v142 = *(v77[25] + *(v138 + 48));
    (*v213)(v77[51]);
    v77[16] = v141;
    v77[17] = 0;

    sub_22C908B7C();
    sub_22C36B5EC();
    sub_22C75A67C(v139, v143);
    sub_22C38BFB4();
    sub_22C75A6D4(v140, v139, v144);
    if (*(v142 + 16))
    {
      v249 = v128;
      sub_22C377660();
      v146 = v142 + v145;
      v223 = *(v147 + 72);
      v227 = *(v147 + 16);
      v244 = v148 - 1;
      while (1)
      {
        v149 = v77[45];
        v150 = v77[42];
        v151 = v77[40];
        v152 = v77[35];
        v153 = v77[32];
        v154 = v77[30];
        v241 = v146;
        v227(v149);
        sub_22C9032CC();
        v155 = sub_22C75AD00(v251);
        (*v233)(v150, v151, v155);
        sub_22C9032CC();
        sub_22C75A73C(v152 + *(v239 + 20));
        v156 = sub_22C90329C();
        v158 = v157;
        v159 = sub_22C9032AC();
        v161 = v160;
        sub_22C5F8D4C();
        v162 = sub_22C909F0C();
        sub_22C9032DC();
        v163 = sub_22C36BAFC();
        v164(v163);
        v165 = (*v229)(v153, v154);
        if (v165 == v237)
        {
          v166 = 5;
          v167 = v244;
        }

        else
        {
          v167 = v244;
          if (v165 == v220)
          {
            v166 = 0;
          }

          else if (v165 == v219)
          {
            v166 = 2;
          }

          else if (v165 == v217)
          {
            v166 = 4;
          }

          else if (v165 == v211)
          {
            v166 = 3;
          }

          else if (v165 == v204)
          {
            v166 = 1;
          }

          else if (v165 == v202)
          {
            v166 = 6;
          }

          else if (v165 == v201)
          {
            v166 = 7;
          }

          else if (v165 == v200)
          {
            v166 = 8;
          }

          else if (v165 == v199)
          {
            v166 = 9;
          }

          else
          {
            (*v198)(v234[32], v234[30]);
            v166 = 5;
          }
        }

        v168 = v234[23];
        sub_22C36C27C(v234[35]);
        v169 = (v168 + *(v225 + 20));
        *v169 = v156;
        v169[1] = v158;
        v169[2] = v159;
        v169[3] = v161;
        v169[4] = v162;
        *(v168 + *(v225 + 24)) = v166;
        v128 = v249;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C36D270();
          sub_22C594400();
          v128 = v175;
        }

        v171 = *(v128 + 16);
        v170 = *(v128 + 24);
        if (v171 >= v170 >> 1)
        {
          sub_22C36A958(v170);
          sub_22C594400();
          v128 = v176;
        }

        *(v128 + 16) = v171 + 1;
        sub_22C75A75C();
        sub_22C75A6D4(v174, v128 + v172 + *(v173 + 72) * v171, type metadata accessor for JointResolution.CandidateInteraction);
        if (!v167)
        {
          break;
        }

        v244 = v167 - 1;
        v249 = v128;
        v146 = v241 + v223;
        v77 = v234;
      }

      v77 = v234;
    }

    else
    {
    }

    v124 = v209;
    (*v207)(v77[51], v77[49]);
    v127 = v215;
    v122 = v216;
    if (!v215)
    {
      goto LABEL_121;
    }
  }

  v193 = v77[56];
  v192 = v77[57];
  v194 = v77[55];
  v195 = v77[48];

  sub_22C36B5EC();
  sub_22C75A67C(v195, v196);
  (*(v193 + 8))(v192, v194);
  v247 = v128;
LABEL_165:
  sub_22C36FF94(v77 + 2);
  sub_22C371C50();
  sub_22C757108(v221, "JointResolverFeaturizer.fetchInteractions");

  v197 = v77[1];

  v197(v247, v218);
}

uint64_t sub_22C757108(uint64_t a1, const char *a2)
{
  sub_22C90637C();
  sub_22C369824();
  v34 = v3;
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90634C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90636C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C90365C();
  v21 = sub_22C90635C();
  sub_22C90638C();
  v33 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v32 = v9;

    sub_22C9063BC();

    if ((*(v34 + 88))(v6, v35) == *MEMORY[0x277D85B00])
    {
      v22 = 0;
      v23 = 0;
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v6, v35);
      v36 = "%s";
      v23 = 2;
      v22 = 1;
    }

    v25 = v16;
    v26 = sub_22C36FB44();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = v23;
    *(v26 + 1) = v22;
    *(v26 + 2) = 2080;
    sub_22C90366C();
    v28 = sub_22C90AF7C();
    v30 = sub_22C36F9F4(v28, v29, &v38);

    *(v26 + 4) = v30;
    v31 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v21, v33, v31, a2, v36, v26, 0xCu);
    sub_22C36FF94(v27);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v32 + 8))(v13, v7);
    return (*(v25 + 8))(v20, v14);
  }

  else
  {

    (*(v9 + 8))(v13, v7);
    return (*(v16 + 8))(v20, v14);
  }
}

uint64_t sub_22C75744C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_22C36BB98();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C757474()
{
  sub_22C369980();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22C75750C;
  v2 = *(v0 + 16);

  return sub_22C73DB2C(v2);
}

uint64_t sub_22C75750C()
{
  sub_22C369980();
  v2 = v1;

  sub_22C36D5E0();
  if (!v0)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_22C757604()
{
  sub_22C369980();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_22C9063DC();
  v1[23] = v4;
  sub_22C3699B8(v4);
  v1[24] = v5;
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v6 = sub_22C90063C();
  v1[29] = v6;
  sub_22C3699B8(v6);
  v1[30] = v7;
  v1[31] = sub_22C36D0D4();
  v1[32] = swift_task_alloc();
  v8 = sub_22C9007DC();
  v1[33] = v8;
  sub_22C3699B8(v8);
  v1[34] = v9;
  v1[35] = sub_22C3699D4();
  v10 = sub_22C9007EC();
  v1[36] = v10;
  sub_22C3699B8(v10);
  v1[37] = v11;
  v1[38] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C369914(v12);
  v1[39] = sub_22C36D0D4();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v13 = sub_22C90634C();
  v1[44] = v13;
  sub_22C3699B8(v13);
  v1[45] = v14;
  v1[46] = sub_22C36D0D4();
  v1[47] = swift_task_alloc();
  v15 = sub_22C90636C();
  v1[48] = v15;
  sub_22C3699B8(v15);
  v1[49] = v16;
  v1[50] = sub_22C36D0D4();
  v1[51] = swift_task_alloc();
  v17 = sub_22C90363C();
  v1[52] = v17;
  sub_22C3699B8(v17);
  v1[53] = v18;
  v1[54] = sub_22C3699D4();
  v19 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22C757918()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  (*(v2 + 104))(v1, *MEMORY[0x277D1EC30], v3);
  v4 = sub_22C90362C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[55] = v5;
    *v5 = v0;
    v5[1] = sub_22C757B6C;

    return sub_22C758D2C();
  }

  else
  {
    sub_22C90401C();
    v7 = sub_22C9063CC();
    v8 = sub_22C90AABC();
    if (sub_22C370048(v8))
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v9, v10, "Joint resolver location signal feature is off. Do not fetch location biome events");
      sub_22C3699EC();
    }

    v11 = sub_22C36BAFC();
    v12(v11);
    sub_22C3874D0(v0[54], v13, v14, v15, v16, v17, v18, v19);

    sub_22C36D5E0();
    v21 = MEMORY[0x277D84F90];

    return v20(v21);
  }
}

uint64_t sub_22C757B6C()
{
  sub_22C369980();
  *(*v0 + 448) = v1;

  v2 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C757C60(uint64_t a1)
{
  v86 = v1;
  if (*(v1 + 448) == 1)
  {
    sub_22C90365C();
    sub_22C90365C();
    sub_22C90635C();
    sub_22C90631C();
    v2 = sub_22C37170C();
    v82 = v3;
    (v3)(v2);
    v4 = sub_22C90635C();
    sub_22C90AB6C();
    if (sub_22C90AC5C())
    {
      *sub_22C36D240() = 0;
      v5 = sub_22C90632C();
      sub_22C3721A8(&dword_22C366000, v6, v7, v5, "JointResolverFeaturizer.fetchLocationEvents", "");
      sub_22C3699EC();
    }

    v9 = v1[47];
    v8 = v1[48];
    v11 = v1[45];
    v10 = v1[46];
    v12 = v1[44];
    v13 = v1[42];
    v79 = v1[51];
    aBlock = v1[29];
    v14 = v1[20];

    (*(v11 + 16))(v10, v9, v12);
    sub_22C9063AC();
    swift_allocObject();
    sub_22C3707B4();
    v78 = sub_22C90639C();
    (*(v11 + 8))(v9, v12);
    v82(v79, v8);
    sub_22C4E719C(v14, v13, &qword_27D9BF2C0, &qword_22C925300);
    v15 = sub_22C370B74(v13, 1, aBlock);
    v17 = v1[42];
    v16 = v1[43];
    if (v15 == 1)
    {
      v18 = v1[37];
      v19 = v1[38];
      v20 = v1[35];
      v22 = v1[33];
      v21 = v1[34];
      v23 = v1[32];
      v24 = v1[30];
      aBlocka = v1[29];
      v83 = v1[36];
      sub_22C9007BC();
      (*(v21 + 104))(v20, *MEMORY[0x277CC9968], v22);
      sub_22C90062C();
      sub_22C90079C();
      (*(v24 + 8))(v23, aBlocka);
      (*(v21 + 8))(v20, v22);
      (*(v18 + 8))(v19, v83);
      sub_22C36D3E0(v17);
      if (!v25)
      {
        sub_22C36DD28(v1[42], &qword_27D9BF2C0, &qword_22C925300);
      }
    }

    else
    {
      v39 = v1[29];
      v40 = sub_22C37170C();
      v41(v40);
      sub_22C36C640(v16, 0, 1, v39);
    }

    v42 = v1[29];
    sub_22C4E719C(v1[21], v1[41], &qword_27D9BF2C0, &qword_22C925300);
    v43 = sub_22C3707B4();
    if (sub_22C370B74(v43, v44, v42) == 1)
    {
      v45 = v1[29];
      sub_22C90062C();
      v46 = sub_22C3707B4();
      if (sub_22C370B74(v46, v47, v45) != 1)
      {
        sub_22C36DD28(v1[41], &qword_27D9BF2C0, &qword_22C925300);
      }
    }

    else
    {
      (*(v1[30] + 32))(v1[31], v1[41], v1[29]);
    }

    v48 = v1[43];
    v50 = v1[39];
    v49 = v1[40];
    v52 = v1[30];
    v51 = v1[31];
    v53 = v1[29];
    v54 = [BiomeLibrary() Location];
    swift_unknownObjectRelease();
    v55 = [v54 Visit];
    swift_unknownObjectRelease();
    (*(v52 + 16))(v49, v51, v53);
    sub_22C36C640(v49, 0, 1, v53);
    sub_22C4E719C(v48, v50, &qword_27D9BF2C0, &qword_22C925300);
    v56 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    v57 = sub_22C7592C4(v49, v50, 300, 0, 1);
    v58 = [v55 publisherWithOptions_];

    v59 = swift_allocObject();
    *(v59 + 16) = MEMORY[0x277D84F90];
    sub_22C90401C();
    v60 = sub_22C9063CC();
    v61 = sub_22C90AABC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = sub_22C36D240();
      *v62 = 0;
      _os_log_impl(&dword_22C366000, v60, v61, "Fetching location events from Location visits biome stream", v62, 2u);
      sub_22C3699EC();
    }

    v63 = v1[24];

    v64 = *(v63 + 8);
    v65 = sub_22C36BAFC();
    v64(v65);
    v1[6] = nullsub_1;
    v1[7] = 0;
    v1[2] = MEMORY[0x277D85DD0];
    v1[3] = 1107296256;
    v1[4] = sub_22C75A738;
    v1[5] = &unk_283FBFAC8;
    v66 = _Block_copy(v1 + 2);
    v1[12] = sub_22C759418;
    v1[13] = v59;
    v1[8] = MEMORY[0x277D85DD0];
    v1[9] = 1107296256;
    v1[10] = sub_22C75A738;
    v1[11] = &unk_283FBFAF0;
    v67 = _Block_copy(v1 + 8);

    v68 = [v58 sinkWithCompletion:v66 receiveInput:v67];
    _Block_release(v67);
    _Block_release(v66);

    sub_22C90401C();

    v69 = sub_22C9063CC();
    v70 = sub_22C90AABC();
    if (sub_22C370048(v70))
    {
      v71 = sub_22C36FB44();
      *v71 = 134217984;
      swift_beginAccess();
      *(v71 + 4) = *(*(v59 + 16) + 16);

      _os_log_impl(&dword_22C366000, v69, v70, "Fetched %ld biome location events", v71, 0xCu);
      sub_22C3699EC();
    }

    else
    {
    }

    (v64)(v1[27], v1[23]);
    swift_beginAccess();
    v85 = *(v59 + 16);
    swift_bridgeObjectRetain_n();
    sub_22C759420(&v85);
    v72 = v1[43];
    v74 = v1[30];
    v73 = v1[31];
    v75 = v1[29];

    (*(v74 + 8))(v73, v75);
    sub_22C36DD28(v72, &qword_27D9BF2C0, &qword_22C925300);

    v84 = v85;
    sub_22C757108(v78, "JointResolverFeaturizer.fetchLocationEvents");
  }

  else
  {
    sub_22C90401C();
    v26 = sub_22C9063CC();
    v27 = sub_22C90AABC();
    if (sub_22C370048(v27))
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v28, v29, "Not authorized to fetch Joint resolver location signal");
      sub_22C3699EC();
    }

    v30 = sub_22C36BAFC();
    v31(v30);
    v84 = MEMORY[0x277D84F90];
  }

  sub_22C3874D0(v1[54], v32, v33, v34, v35, v36, v37, v38);

  sub_22C36D5E0();

  return v76(v84);
}

void sub_22C75858C(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_22C7585EC(a1, (a2 + 16));

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_22C7585EC(void *a1, uint64_t *a2)
{
  v77 = a2;
  v74 = type metadata accessor for LocationEvent(0);
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v69 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v69 - v15;
  v17 = sub_22C90063C();
  v81 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v78 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v69 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v79 = &v69 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - v25;
  v27 = [a1 eventBody];
  if (!v27)
  {
    sub_22C36C640(v16, 1, 1, v17);
LABEL_8:
    v32 = v16;
    return sub_22C36DD28(v32, &qword_27D9BF2C0, &qword_22C925300);
  }

  v28 = v27;
  v80 = v2;
  v29 = [v27 entryDate];
  if (v29)
  {
    v30 = v29;
    sub_22C9005FC();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  sub_22C36C640(v14, v31, 1, v17);
  sub_22C4E7208(v14, v16, &qword_27D9BF2C0, &qword_22C925300);
  if (sub_22C370B74(v16, 1, v17) == 1)
  {

    goto LABEL_8;
  }

  v73 = *(v81 + 32);
  v73(v26, v16, v17);
  v34 = [v28 exitDate];
  if (v34)
  {
    v35 = v34;
    sub_22C9005FC();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  sub_22C36C640(v8, v36, 1, v17);
  sub_22C4E7208(v8, v11, &qword_27D9BF2C0, &qword_22C925300);
  if (sub_22C370B74(v11, 1, v17) == 1)
  {
    (*(v81 + 8))(v26, v17);

    v32 = v11;
    return sub_22C36DD28(v32, &qword_27D9BF2C0, &qword_22C925300);
  }

  v37 = v79;
  v73(v79, v11, v17);
  v38 = *(v81 + 16);
  v38(v22, v26, v17);
  v38(v78, v37, v17);
  v39 = [v28 placeInference];
  if (v39 && (v40 = v39, v41 = [v39 mapItem], v40, v41))
  {
    v42 = sub_22C75A5B0(v41, &selRef_name);
    v71 = v43;
    v72 = v42;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v44 = [v28 placeInference];
  if (v44 && (v45 = v44, v46 = [v44 mapItem], v45, v46))
  {
    v47 = sub_22C75A5B0(v46, &selRef_category);
    v69 = v48;
    v70 = v47;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v49 = [v28 location];
  v50 = v49;
  v51 = 0;
  v52 = 0;
  if (v49)
  {
    [v49 latitude];
    v52 = v53;
  }

  v54 = [v28 location];
  v55 = v54;
  if (v54)
  {
    [v54 longitude];
    v51 = v56;
  }

  v57 = v55 == 0;
  v58 = v50 == 0;
  v83 = v58;
  v82 = v57;
  v59 = v75;
  v60 = v73;
  v73(v75, v22, v17);
  v61 = v74;
  v60(v59 + *(v74 + 20), v78, v17);
  v62 = v59 + *(v61 + 24);
  v63 = v71;
  *v62 = v72;
  *(v62 + 8) = v63;
  v64 = v69;
  *(v62 + 16) = v70;
  *(v62 + 24) = v64;
  *(v62 + 32) = v52;
  *(v62 + 40) = v58;
  *(v62 + 41) = *v84;
  *(v62 + 44) = *&v84[3];
  *(v62 + 48) = v51;
  *(v62 + 56) = v57;
  v65 = v77;
  swift_beginAccess();
  sub_22C3D0FF8();
  v66 = *(*v65 + 16);
  sub_22C3D11BC(v66);
  v67 = *v65;
  *(v67 + 16) = v66 + 1;
  sub_22C75A6D4(v59, v67 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v66, type metadata accessor for LocationEvent);
  swift_endAccess();

  v68 = *(v81 + 8);
  v68(v79, v17);
  return (v68)(v26, v17);
}

void sub_22C758CC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22C758D2C()
{
  sub_22C369980();
  v1 = sub_22C9063DC();
  v0[20] = v1;
  sub_22C3699B8(v1);
  v0[21] = v2;
  v0[22] = sub_22C3699D4();
  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C758DCC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22C758F04;
  v2 = swift_continuation_init();
  v0[17] = sub_22C3A5908(&qword_27D9BFCC0, &qword_22C9252F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22C759198;
  v0[13] = &unk_283FBFA78;
  v0[14] = v2;
  [v1 currentAuthorizationStyle_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22C758F04()
{
  sub_22C369980();
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_22C759084;
  }

  else
  {
    v2 = sub_22C759010;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22C759010()
{
  sub_22C369980();

  v1 = (*(v0 + 144) - 3) < 2;

  sub_22C36D5E0();

  return v2(v1);
}

uint64_t sub_22C759084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_willThrow();
  sub_22C903FAC();
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();
  v7 = sub_22C370048(v6);
  v9 = *(v4 + 184);
  v8 = *(v4 + 192);
  if (v7)
  {
    v10 = sub_22C36D240();
    *v10 = 0;
    _os_log_impl(&dword_22C366000, v5, v6, "Unable to check location access authorization", v10, 2u);
    sub_22C3699EC();
  }

  v11 = sub_22C36BAFC();
  v12(v11);

  sub_22C36D5E0();

  return v13(0);
}

uint64_t sub_22C759198(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_22C374168((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    v9 = a4;

    return sub_22C8B5B48(v8, v9);
  }

  else
  {
    v11 = *v7;

    return sub_22C8B5BB0(v11, a2, a3);
  }
}

uint64_t sub_22C759224()
{

  sub_22C36DD28(v0 + 24, &qword_27D9BFCD8, &qword_22C925318);

  return swift_deallocClassInstance();
}

id sub_22C7592C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_22C90063C();
  v13 = 0;
  if (sub_22C370B74(a1, 1, v12) != 1)
  {
    v13 = sub_22C9005AC();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_22C370B74(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_22C9005AC();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_22C759400(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C759420(uint64_t *a1)
{
  v2 = *(type metadata accessor for LocationEvent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C480();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C7594C8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C7594C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LocationEvent(0);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LocationEvent(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C759824(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C7595F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C7595F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for LocationEvent(0);
  v8 = MEMORY[0x28223BE20](v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v31 = v20;
      v32 = a3;
      v29 = v23;
      v30 = v22;
      do
      {
        sub_22C75A54C(v23, v17);
        sub_22C75A54C(v20, v13);
        v24 = sub_22C9005BC();
        sub_22C75A67C(v13, type metadata accessor for LocationEvent);
        result = sub_22C75A67C(v17, type metadata accessor for LocationEvent);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return result;
        }

        sub_22C75A6D4(v23, v10, type metadata accessor for LocationEvent);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C75A6D4(v10, v20, type metadata accessor for LocationEvent);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C759824(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v116 = type metadata accessor for LocationEvent(0);
  v111 = *(v116 - 8);
  v9 = MEMORY[0x28223BE20](v116);
  v106 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v115 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v117 = &v99 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v99 - v15;
  v113 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_101:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v92 = v19 + 16;
      v93 = *(v19 + 2);
      for (i = v19; v93 >= 2; v19 = i)
      {
        if (!*v113)
        {
          goto LABEL_139;
        }

        v94 = &v19[16 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = *(v96 + 1);
        sub_22C75A0D8(*v113 + *(v111 + 72) * *v94, *v113 + *(v111 + 72) * *v96, *v113 + *(v111 + 72) * v97, v5);
        if (v6)
        {
          break;
        }

        if (v97 < v95)
        {
          goto LABEL_127;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_128;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_129;
        }

        v93 = *v92 - 1;
        sub_22C56BFF0(v96 + 16, v98, v96);
        *v92 = v93;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v19 = sub_22C56BFD8();
    goto LABEL_103;
  }

  v101 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v107 = &v99 - v15;
  while (1)
  {
    v20 = v18++;
    i = v19;
    v103 = v20;
    if (v18 < v17)
    {
      v21 = *v113;
      v5 = *(v111 + 72);
      v22 = v20;
      v23 = *v113 + v5 * v18;
      v110 = v17;
      sub_22C75A54C(v23, v16);
      v24 = v117;
      sub_22C75A54C(v21 + v5 * v22, v117);
      LODWORD(v109) = sub_22C9005BC();
      sub_22C75A67C(v24, type metadata accessor for LocationEvent);
      sub_22C75A67C(v16, type metadata accessor for LocationEvent);
      v25 = v110;
      v26 = v22 + 2;
      v112 = v5;
      v27 = v21 + v5 * (v22 + 2);
      while (1)
      {
        v28 = v26;
        if (++v18 >= v25)
        {
          break;
        }

        sub_22C75A54C(v27, v16);
        v5 = v117;
        sub_22C75A54C(v23, v117);
        v29 = sub_22C9005BC() & 1;
        sub_22C75A67C(v5, type metadata accessor for LocationEvent);
        sub_22C75A67C(v16, type metadata accessor for LocationEvent);
        v27 += v112;
        v23 += v112;
        v26 = v28 + 1;
        v25 = v110;
        if ((v109 & 1) != v29)
        {
          goto LABEL_9;
        }
      }

      v18 = v25;
LABEL_9:
      if (v109)
      {
        v20 = v103;
        if (v18 < v103)
        {
          goto LABEL_133;
        }

        if (v103 >= v18)
        {
          v19 = i;
          goto LABEL_32;
        }

        v100 = v6;
        if (v25 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v25;
        }

        v31 = v112 * (v30 - 1);
        v32 = v103;
        v33 = v112 * v30;
        v34 = v103 * v112;
        v35 = v18;
        v19 = i;
        do
        {
          if (v32 != --v35)
          {
            v5 = *v113;
            if (!*v113)
            {
              goto LABEL_140;
            }

            sub_22C75A6D4(v5 + v34, v106, type metadata accessor for LocationEvent);
            v36 = v34 < v31 || v5 + v34 >= v5 + v33;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C75A6D4(v106, v5 + v31, type metadata accessor for LocationEvent);
            v19 = i;
          }

          ++v32;
          v31 -= v112;
          v33 -= v112;
          v34 += v112;
        }

        while (v32 < v35);
        v6 = v100;
      }

      else
      {
        v19 = i;
      }

      v20 = v103;
    }

LABEL_32:
    v37 = v113[1];
    if (v18 < v37)
    {
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_132;
      }

      if (v18 - v20 < v101)
      {
        break;
      }
    }

LABEL_48:
    if (v18 < v20)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v19 + 2) + 1, 1, v19);
      v19 = v90;
    }

    v48 = *(v19 + 2);
    v47 = *(v19 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      sub_22C590218(v47 > 1, v48 + 1, 1, v19);
      v19 = v91;
    }

    *(v19 + 2) = v49;
    v50 = v19 + 32;
    v51 = &v19[16 * v48 + 32];
    *v51 = v103;
    *(v51 + 1) = v18;
    v112 = *v102;
    if (!v112)
    {
      goto LABEL_141;
    }

    v52 = v16;
    if (v48)
    {
      i = v19;
      while (1)
      {
        v53 = v49 - 1;
        v54 = &v50[16 * v49 - 16];
        v55 = &v19[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v56 = *(v19 + 4);
          v57 = *(v19 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_69:
          if (v59)
          {
            goto LABEL_118;
          }

          v71 = *v55;
          v70 = *(v55 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_121;
          }

          v75 = *(v54 + 1);
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_126;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v49 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v49 < 2)
        {
          goto LABEL_120;
        }

        v78 = *v55;
        v77 = *(v55 + 1);
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_84:
        if (v74)
        {
          goto LABEL_123;
        }

        v80 = *v54;
        v79 = *(v54 + 1);
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_125;
        }

        if (v81 < v73)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v53 - 1 >= v49)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v113)
        {
          goto LABEL_138;
        }

        v85 = &v50[16 * v53 - 16];
        v86 = *v85;
        v5 = v53;
        v87 = &v50[16 * v53];
        v88 = *(v87 + 1);
        sub_22C75A0D8(*v113 + *(v111 + 72) * *v85, *v113 + *(v111 + 72) * *v87, *v113 + *(v111 + 72) * v88, v112);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v88 < v86)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v49 = v6 - 1;
        sub_22C56BFF0(v87 + 16, v6 - 1 - v5, v87);
        v19 = i;
        *(i + 2) = v6 - 1;
        v89 = v6 > 2;
        v6 = 0;
        v52 = v107;
        if (!v89)
        {
          goto LABEL_98;
        }
      }

      v60 = &v50[16 * v49];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_116;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_117;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_119;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_122;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_130;
        }

        if (v58 < v84)
        {
          v53 = v49 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v17 = v113[1];
    v16 = v52;
    if (v18 >= v17)
    {
      goto LABEL_101;
    }
  }

  v38 = v20 + v101;
  if (__OFADD__(v20, v101))
  {
    goto LABEL_134;
  }

  if (v38 >= v37)
  {
    v38 = v113[1];
  }

  if (v38 < v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v18 == v38)
  {
    goto LABEL_48;
  }

  v100 = v6;
  v39 = *v113;
  v40 = *(v111 + 72);
  v5 = *v113 + v40 * (v18 - 1);
  v41 = -v40;
  v42 = v20 - v18;
  v104 = v40;
  v105 = v38;
  v43 = v39 + v18 * v40;
LABEL_41:
  v112 = v18;
  v108 = v43;
  v109 = v42;
  v110 = v5;
  while (1)
  {
    sub_22C75A54C(v43, v16);
    v44 = v117;
    sub_22C75A54C(v5, v117);
    v45 = sub_22C9005BC();
    sub_22C75A67C(v44, type metadata accessor for LocationEvent);
    sub_22C75A67C(v16, type metadata accessor for LocationEvent);
    if ((v45 & 1) == 0)
    {
LABEL_46:
      v18 = v112 + 1;
      v5 = v110 + v104;
      v42 = v109 - 1;
      v43 = v108 + v104;
      if (v112 + 1 == v105)
      {
        v18 = v105;
        v6 = v100;
        v19 = i;
        v20 = v103;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v39)
    {
      break;
    }

    v46 = v115;
    sub_22C75A6D4(v43, v115, type metadata accessor for LocationEvent);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C75A6D4(v46, v5, type metadata accessor for LocationEvent);
    v5 += v41;
    v43 += v41;
    v36 = __CFADD__(v42++, 1);
    if (v36)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_22C75A0D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = type metadata accessor for LocationEvent(0);
  v8 = MEMORY[0x28223BE20](v55);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v59 = a1;
  v58 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_22C3D7780(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v51 = a1;
    v52 = v30;
LABEL_36:
    v32 = a2 + v30;
    v33 = a3;
    v49 = v31;
    v53 = a2 + v30;
    v54 = a2;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = v54;
        v57 = v31;
        goto LABEL_58;
      }

      if (v54 <= a1)
      {
        break;
      }

      v50 = v31;
      v34 = a4;
      v35 = v33 + v30;
      v36 = v29 + v30;
      v37 = v29;
      v38 = v33;
      sub_22C75A54C(v29 + v30, v12);
      v39 = v12;
      v40 = v56;
      sub_22C75A54C(v32, v56);
      v41 = sub_22C9005BC();
      v42 = v40;
      v12 = v39;
      sub_22C75A67C(v42, type metadata accessor for LocationEvent);
      sub_22C75A67C(v39, type metadata accessor for LocationEvent);
      if (v41)
      {
        v44 = v38 < v54 || v35 >= v54;
        a4 = v34;
        if (v44)
        {
          v45 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
          a1 = v51;
          a3 = v35;
          a2 = v45;
          v30 = v52;
          v29 = v37;
        }

        else
        {
          v31 = v50;
          v16 = v38 == v54;
          v30 = v52;
          v46 = v53;
          a3 = v35;
          a2 = v53;
          v29 = v37;
          a1 = v51;
          if (!v16)
          {
            v47 = v50;
            swift_arrayInitWithTakeBackToFront();
            v29 = v37;
            a2 = v46;
            v31 = v47;
          }
        }

        goto LABEL_36;
      }

      v43 = v38 < v37 || v35 >= v37;
      a4 = v34;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v35;
        v29 = v36;
        v31 = v36;
        v30 = v52;
        v32 = v53;
        a1 = v51;
      }

      else
      {
        v31 = v36;
        v16 = v37 == v38;
        v33 = v35;
        v29 = v36;
        v30 = v52;
        v32 = v53;
        a1 = v51;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v35;
          v29 = v36;
          v31 = v36;
        }
      }
    }

    v59 = v54;
    v57 = v49;
  }

  else
  {
    sub_22C3D7780(a1, v15 / v14, a4);
    v54 = a4 + v19 * v14;
    v57 = v54;
    while (a4 < v54 && a2 < a3)
    {
      v22 = a3;
      sub_22C75A54C(a2, v12);
      v23 = a2;
      v24 = v56;
      sub_22C75A54C(a4, v56);
      v25 = sub_22C9005BC();
      sub_22C75A67C(v24, type metadata accessor for LocationEvent);
      sub_22C75A67C(v12, type metadata accessor for LocationEvent);
      if (v25)
      {
        a2 = v23 + v14;
        v26 = a1 < v23 || a1 >= a2;
        v27 = v23;
        if (v26)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
          a3 = v22;
        }

        else
        {
          a2 = v23;
          a3 = v22;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v59 = a1;
    }
  }

LABEL_58:
  sub_22C8381FC(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_22C75A54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C75A5B0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_22C90A11C();
  }

  return sub_22C37170C();
}

unint64_t sub_22C75A618()
{
  result = qword_28142F958;
  if (!qword_28142F958)
  {
    sub_22C3AC1A0(&qword_27D9BFCE0, &qword_22C925320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142F958);
  }

  return result;
}

uint64_t sub_22C75A67C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C75A6D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

__n128 sub_22C75A73C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 136);
  *a1 = *(v1 - 152);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 - 120);
  result = *(v1 - 111);
  *(a1 + 41) = result;
  return result;
}

void sub_22C75A770(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (*(v1 + 40) & 1) != 0 || (*(v1 + 56))
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v1 + 32) longitude:*(v1 + 48)];
  }

  if (v2 != 1 && (v4 & 1) == 0 && (v6 & 1) == 0)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v3 longitude:v5];
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_14:

    return;
  }

  v8 = 0;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    [v7 distanceFromLocation_];
  }
}

uint64_t JointResolverLocationSignal.locationName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JointResolverLocationSignal.locationName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JointResolverLocationSignal.locationType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JointResolverLocationSignal.locationType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JointResolverLocationSignal.locationLatitude.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t JointResolverLocationSignal.locationLongitude.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t static JointResolverLocationSignal.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = a1[6];
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v17 = *a1 == *a2 && v3 == v10;
    if (!v17 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v18 = v4 == v11 && v5 == v12;
  if (!v18 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (v7)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v13)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v9)
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v15)
    {
      v21 = v16;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  return 1;
}

__n128 sub_22C75AB2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22C75AB48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C75AB9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}