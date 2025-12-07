uint64_t dispatch thunk of DaemonServer.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return v7(a1, a2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2489CB750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2489CB798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2489CB7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489C8A28(a1, v4, v5, v7, v6);
}

uint64_t sub_2489CB8A8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2489839A0;

  return sub_2489C8C58(a1, a2, v2);
}

uint64_t sub_2489CB954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2489839A0;

  return sub_2489BF0B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2489CBA1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_2489BF214(a1);
}

uint64_t sub_2489CBAB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489CBB24(uint64_t a1)
{
  v2 = type metadata accessor for NearbyDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2489CBB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2489CBBD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2489CBC2C@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v2 = sub_248A12480();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v60 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v65[2] = *v1;
  v65[3] = v10;
  v65[4] = v11;
  sub_2489CC220();
  sub_248A12440();
  sub_2489CF9A8();
  v12 = sub_248A12B00();
  v13 = *(v3 + 8);
  v13(v6, v2);
  if (v12)
  {
    v13(v8, v2);
    v62 = v9;
    v63 = v10;
    v64 = v11;
    result = sub_2489CDE00();
    if (v15)
    {
      v16 = result;
      v17 = v15;
      if (result == 0x3030303030303030 && v15 == 0xE800000000000000 || (sub_248A13340() & 1) != 0)
      {

        v16 = 0;
        v17 = 0;
      }

      v18 = [v11 label];
      if (v18)
      {
        v19 = v18;
        v20 = sub_248A12B60();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v62 = v20;
      v63 = v22;
      v65[0] = 0xD000000000000014;
      v65[1] = 0x8000000248A1A030;
      sub_2489835B8();
      v29 = sub_248A12F50();

      if (v29)
      {
        v30 = v61;
        *v61 = 1;
        v30[1] = v16;
        v30[2] = v17;
        *(v30 + 24) = 0;
        return result;
      }

      v31 = [v11 label];
      if (v31)
      {
        v32 = v31;
        v33 = sub_248A12B60();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v62 = v33;
      v63 = v35;
      strcpy(v65, "gazeEyeModel");
      BYTE5(v65[1]) = 0;
      HIWORD(v65[1]) = -5120;
      v44 = sub_248A12F50();

      if (v44)
      {
        v45 = v61;
        *v61 = 0;
        v45[1] = v16;
        v45[2] = v17;
        *(v45 + 24) = 0;
        return result;
      }

      v46 = [v11 label];
      if (v46)
      {
        v47 = v46;
        v48 = sub_248A12B60();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0xE000000000000000;
      }

      v62 = v48;
      v63 = v50;
      v65[0] = 0xD00000000000001DLL;
      v65[1] = 0x8000000248A1A050;
      v53 = sub_248A12F50();

      if (v53)
      {
        v37 = v61;
        *v61 = v16;
        v37[1] = v17;
        v37[2] = 0;
        v38 = 1;
        goto LABEL_32;
      }

      v54 = [v11 label];
      if (v54)
      {
        v55 = v54;
        v56 = sub_248A12B60();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0xE000000000000000;
      }

      v62 = v56;
      v63 = v58;
      v65[0] = 0xD000000000000015;
      v65[1] = 0x8000000248A1A070;
      v59 = sub_248A12F50();

      v37 = v61;
      *v61 = 0;
      v37[1] = 0;
      v37[2] = 0;
      if (v59)
      {
        v38 = 2;
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_30:
    v37 = v61;
    *v61 = 0;
    v37[1] = 0;
    v37[2] = 0;
LABEL_31:
    v38 = -1;
    goto LABEL_32;
  }

  sub_248A12460();
  v23 = sub_248A12B00();
  v13(v6, v2);
  result = (v13)(v8, v2);
  if ((v23 & 1) == 0)
  {
    goto LABEL_30;
  }

  v24 = [v11 label];
  if (v24)
  {
    v25 = v24;
    v26 = sub_248A12B60();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v62 = v26;
  v63 = v28;
  strcpy(v65, "enrollment");
  BYTE3(v65[1]) = 0;
  HIDWORD(v65[1]) = -369098752;
  sub_2489835B8();
  v36 = sub_248A12F50();

  if ((v36 & 1) == 0)
  {
    v39 = [v11 label];
    if (v39)
    {
      v40 = v39;
      v41 = sub_248A12B60();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    v62 = v41;
    v63 = v43;
    strcpy(v65, "missingFingers");
    HIBYTE(v65[1]) = -18;
    v51 = sub_248A12F50();

    if (v51)
    {
      v52 = v61;
      v61[1] = 0;
      v52[2] = 0;
      *v52 = 2;
      *(v52 + 24) = 2;
      return result;
    }

    goto LABEL_30;
  }

  v37 = v61;
  v61[1] = 0;
  v37[2] = 0;
  *v37 = 1;
  v38 = 2;
LABEL_32:
  *(v37 + 24) = v38;
  return result;
}

uint64_t sub_2489CC220()
{
  v1 = *(v0 + 16);
  v2 = [v1 type];
  if (v2 > 120)
  {
    if (v2 == 121)
    {

      return sub_248A12410();
    }

    if (v2 == 125)
    {

      return sub_248A12440();
    }

LABEL_15:

    return sub_248A12450();
  }

  if (v2 == 100)
  {
    v6 = [v1 label];
    if (v6)
    {
      v7 = v6;
      sub_248A12B60();

      sub_2489835B8();
      LOBYTE(v7) = sub_248A12F50();

      if (v7)
      {
        return sub_248A12420();
      }

      return sub_248A12440();
    }

    goto LABEL_15;
  }

  if (v2 != 102)
  {
    goto LABEL_15;
  }

  v3 = [v1 label];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  sub_248A12B60();

  sub_2489835B8();
  LOBYTE(v4) = sub_248A12F50();

  if (v4)
  {
    return sub_248A12450();
  }

  return sub_248A12460();
}

uint64_t AllAssetsRepresentation.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v77 = 0x1000000000000015;
  v78 = 0x8000000248A1A010;
  sub_248A13100();

  sub_2489CCFCC();
  v3 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v3);

  MEMORY[0x24C1DF8B0](0x6576697463412820, 0xE900000000000029);
  MEMORY[0x24C1DF8B0](0x203A859CE20ALL, 0xA600000000000000);

  sub_248A13100();

  sub_2489CD4B8();
  v4 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v4);

  MEMORY[0x24C1DF8B0](0x2064756F6C432820, 0xEF296465636E7953);
  MEMORY[0x24C1DF8B0](0x3A8FB8EF86ACE20ALL, 0xA900000000000020);

  sub_248A13100();

  sub_2489CD170();
  v5 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v5);

  MEMORY[0x24C1DF8B0](0x43206D6F72662820, 0xED00002964756F6CLL);
  MEMORY[0x24C1DF8B0](0x3A8FB8EF8198E20ALL, 0xA900000000000020);

  sub_248A13100();

  *&v73 = 0xA700000000000000;
  v75[0] = v2;
  sub_2489CD314();
  v76 = v6;
  v7 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v7);

  MEMORY[0x24C1DF8B0](0x50206D6F72662820, 0xEB00000000295032);
  MEMORY[0x24C1DF8B0](0x203A9DA49FF00ALL, 0xA700000000000000);

  v72 = v2;
  sub_2489CD910();
  v9 = *(v8 + 16);

  v65 = v2;
  if (v9)
  {
    MEMORY[0x24C1DF8B0](0x6148208B9CE20A0ALL, 0xAB0000000073646ELL);
    v72 = v2;
    sub_2489CD910();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 48);
      do
      {
        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v12 += 3;
        v75[0] = 10;
        v75[1] = 0xE100000000000000;
        v72 = v13;
        *&v73 = v14;
        *(&v73 + 1) = v15;

        v16 = v15;
        v17 = AssetIntermediaryRepresentation.description.getter();
        MEMORY[0x24C1DF8B0](v17);

        MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

        --v11;
      }

      while (v11);
    }

    v1 = 0;
  }

  v72 = v2;
  sub_2489CCDF4();
  v19 = 0;
  v20 = v18 + 56;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 56);
  v24 = (v21 + 63) >> 6;
  v69 = v18;
  v66 = v24;
  v67 = v18 + 56;
  while (v23)
  {
LABEL_15:
    v70 = v23;
    v71 = v19;
    v26 = *(v69 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v23))));
    v27 = *v26;
    v28 = *(v26 + 8);
    v72 = 2570;
    *&v73 = 0xE200000000000000;
    if (v28)
    {
      v29 = 2475794416;
    }

    else
    {
      v29 = 0x8FB8EF81919FF0;
    }

    if (v28)
    {
      v30 = 0xA400000000000000;
    }

    else
    {
      v30 = 0xA700000000000000;
    }

    MEMORY[0x24C1DF8B0](v29, v30);

    MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
    if (v28)
    {
      strcpy(v75, "Gaze w/ RX: ");
      BYTE5(v75[1]) = 0;
      HIWORD(v75[1]) = -5120;
      MEMORY[0x24C1DF8B0](v27, v28);
      v31 = v75[0];
      v32 = v75[1];
    }

    else
    {
      v31 = 0x6F2F7720657A6147;
      v32 = 0xEB00000000585220;
    }

    MEMORY[0x24C1DF8B0](v31, v32);

    MEMORY[0x24C1DF8B0](v72, v73);

    v75[0] = v2;
    v72 = v27;
    *&v73 = v28;
    v33 = sub_2489CD678(&v72);

    v34 = *(v33 + 16);
    if (v34)
    {
      v68 = v1;
      v76 = MEMORY[0x277D84F90];
      sub_2489CE5CC(0, v34, 0);
      v35 = v76;
      v36 = (v33 + 48);
      do
      {
        v37 = *(v36 - 2);
        v38 = *(v36 - 1);
        v39 = *v36;
        v75[0] = v37;
        v75[1] = v38;
        v75[2] = v39;
        sub_2489CBC2C(&v72);
        if (v74 == 255)
        {
          v40 = 0x64696C61766E4928;
          v41 = 0xE900000000000029;
        }

        else
        {
          v42 = v72;
          v75[0] = 0;
          v75[1] = 0xE000000000000000;
          if (v74)
          {
            if (v74 == 1)
            {
              sub_24898382C(v72, v73, *(&v73 + 1), 1u);
              v43 = 0xD00000000000001DLL;
              v44 = 0x8000000248A192A0;
            }

            else if (*(&v73 + 1) | v73 | v72)
            {
              if (v72 == 1 && v73 == 0)
              {
                sub_24898382C(1, 0, 0, 2u);
                v44 = 0xEA0000000000746ELL;
                v43 = 0x656D6C6C6F726E45;
              }

              else
              {
                sub_24898382C(2, 0, 0, 2u);
                v43 = 0x46676E697373694DLL;
                v44 = 0xEE00737265676E69;
              }
            }

            else
            {
              v43 = 0xD000000000000015;
              v44 = 0x8000000248A19280;
            }
          }

          else
          {
            sub_24898382C(v72, v73, *(&v73 + 1), 0);
            if (v42)
            {
              v43 = 0xD000000000000010;
            }

            else
            {
              v43 = 0x6C65646F4D657945;
            }

            if (v42)
            {
              v44 = 0x8000000248A192C0;
            }

            else
            {
              v44 = 0xE800000000000000;
            }
          }

          MEMORY[0x24C1DF8B0](v43, v44);

          MEMORY[0x24C1DF8B0](8250, 0xE200000000000000);

          v45 = sub_2489CF4FC(8, v37, v38);
          v47 = v46;
          v49 = v48;
          v51 = v50;

          v52 = MEMORY[0x24C1DF860](v45, v47, v49, v51);
          v54 = v53;

          MEMORY[0x24C1DF8B0](v52, v54);

          MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
          v72 = v37;
          *&v73 = v38;
          *(&v73 + 1) = v39;
          v55 = sub_2489CE130();
          MEMORY[0x24C1DF8B0](v55);

          MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
          v72 = v37;
          *&v73 = v38;
          *(&v73 + 1) = v39;
          v56 = sub_2489CE368();
          MEMORY[0x24C1DF8B0](v56);

          v40 = v75[0];
          v41 = v75[1];
        }

        v76 = v35;
        v58 = *(v35 + 16);
        v57 = *(v35 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_2489CE5CC((v57 > 1), v58 + 1, 1);
          v35 = v76;
        }

        *(v35 + 16) = v58 + 1;
        v59 = v35 + 16 * v58;
        *(v59 + 32) = v40;
        *(v59 + 40) = v41;
        v36 += 3;
        --v34;
      }

      while (v34);

      v1 = v68;
      v2 = v65;
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    v72 = v35;

    sub_2489CEA10(&v72);

    v60 = *(v72 + 16);
    if (v60)
    {
      v61 = (v72 + 40);
      do
      {
        v62 = *(v61 - 1);
        v63 = *v61;
        v72 = 10;
        *&v73 = 0xE100000000000000;

        MEMORY[0x24C1DF8B0](v62, v63);

        MEMORY[0x24C1DF8B0](v72, v73);

        v61 += 16;
        --v60;
      }

      while (v60);
    }

    v23 = (v70 - 1) & v70;

    v24 = v66;
    v20 = v67;
    v19 = v71;
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      v72 = v77;
      *&v73 = v78;

      MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

      return v72;
    }

    v23 = *(v20 + 8 * v25);
    ++v19;
    if (v23)
    {
      v19 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_2489CCDF4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = (v4 + 24 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v24 = *(v5 - 2);
        v25 = v8;
        v26 = v7;

        v9 = v7;
        sub_2489CBC2C(v22);
        v10 = v22[0];
        v11 = v22[1];
        v12 = v22[2];
        v13 = v23;

        if (v13 <= 254)
        {
          break;
        }

LABEL_4:
        ++v6;
        v5 += 3;
        if (v2 == v6)
        {
          goto LABEL_29;
        }
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13)
      {
        v16 = v10;
      }

      else
      {
        v16 = v11;
      }

      if (v13)
      {
        v17 = v11;
      }

      else
      {
        v17 = v12;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2489C970C(0, *(v21 + 2) + 1, 1, v21);
      }

      v19 = *(v21 + 2);
      v18 = *(v21 + 3);
      if (v19 >= v18 >> 1)
      {
        v21 = sub_2489C970C((v18 > 1), v19 + 1, 1, v21);
      }

      v3 = v6 + 1;
      v4 = v1 + 48;
      *(v21 + 2) = v19 + 1;
      v20 = &v21[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      if (v2 - 1 == v6)
      {
        goto LABEL_29;
      }
    }

    if (v12 | v11 | v10)
    {
      if (v12 | v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == 1;
      }

      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      sub_24898382C(v15, 0, 0, 2u);
    }

    goto LABEL_4;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_29:
  sub_2489DF100(v21);
}

void sub_2489CCFCC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v19 = v9;
        v20 = v8;
        v21 = v10;

        v11 = v10;
        sub_2489CBC2C(v17);
        if (v18 != 255)
        {
          sub_24898382C(v17[0], v17[1], v17[2], v18);
          if ([v11 assetState])
          {
            break;
          }
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          goto LABEL_13;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2489CE5AC(0, *(v5 + 16) + 1, 1);
        v5 = v22;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_2489CE5AC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v5 = v22;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v15;
      v16 = (v5 + 24 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v4 = v1 + 48;
    }

    while (v2 - 1 != v7);
  }

LABEL_13:
}

void sub_2489CD170()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v19 = v9;
        v20 = v8;
        v21 = v10;

        v11 = v10;
        sub_2489CBC2C(v17);
        if (v18 != 255)
        {
          sub_24898382C(v17[0], v17[1], v17[2], v18);
          if (([v11 assetState] & 0x20) != 0)
          {
            break;
          }
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          goto LABEL_13;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2489CE5AC(0, *(v5 + 16) + 1, 1);
        v5 = v22;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_2489CE5AC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v5 = v22;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v15;
      v16 = (v5 + 24 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v4 = v1 + 48;
    }

    while (v2 - 1 != v7);
  }

LABEL_13:
}

void sub_2489CD314()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v19 = v9;
        v20 = v8;
        v21 = v10;

        v11 = v10;
        sub_2489CBC2C(v17);
        if (v18 != 255)
        {
          sub_24898382C(v17[0], v17[1], v17[2], v18);
          if (([v11 assetState] & 0x40) != 0)
          {
            break;
          }
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          goto LABEL_13;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2489CE5AC(0, *(v5 + 16) + 1, 1);
        v5 = v22;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_2489CE5AC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v5 = v22;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v15;
      v16 = (v5 + 24 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v4 = v1 + 48;
    }

    while (v2 - 1 != v7);
  }

LABEL_13:
}

void sub_2489CD4B8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v17 = v5;
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v20 = v9;
        v21 = v8;
        v22 = v10;

        v11 = v10;
        sub_2489CBC2C(v18);
        if (v19 != 255)
        {
          sub_24898382C(v18[0], v18[1], v18[2], v19);
          if (([v11 assetState] & 0x220) != 0)
          {
            break;
          }
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          goto LABEL_13;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v17;
      v23 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2489CE5AC(0, *(v17 + 16) + 1, 1);
        v5 = v23;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_2489CE5AC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v5 = v23;
      }

      v3 = v7 + 1;
      *(v5 + 16) = v15;
      v16 = (v5 + 24 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v4 = v1 + 48;
    }

    while (v2 - 1 != v7);
  }

LABEL_13:
}

uint64_t sub_2489CD678(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v6 = *a1;
  v5 = a1[1];
  v7 = v2 + 48;
  v27 = v3 - 1;
  result = MEMORY[0x277D84F90];
  v29 = *(*v1 + 16);
  do
  {
    v28 = result;
    v9 = (v7 + 24 * v4);
    v10 = v4;
    while (1)
    {
      if (v10 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v33 = v11;
      v34 = v12;
      v35 = v13;

      v14 = v13;
      sub_2489CBC2C(&v30);
      if (v32 > 1u)
      {
        if (v32 != 255 && *(&v31 + 1) | v31 | v30)
        {
          if (v31 == 0 && v30 == 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          result = sub_24898382C(v22, 0, 0, 2u);
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v15 = v32 ? v30 : v31;
      v16 = v32 ? v31 : *(&v31 + 1);
      if (!v16)
      {
        break;
      }

      if (!v5)
      {

        goto LABEL_5;
      }

      if (v15 == v6 && v16 == v5)
      {
        v19 = v5;
        v18 = v6;
        goto LABEL_33;
      }

      v17 = v5;
      v18 = v6;
      v19 = v17;
      v20 = sub_248A13340();

      if (v20)
      {
        goto LABEL_34;
      }

      v6 = v18;
      v5 = v19;
      v3 = v29;
LABEL_6:
      ++v10;
      v9 += 3;
      if (v3 == v10)
      {
        return v28;
      }
    }

    if (v5)
    {
LABEL_5:

      goto LABEL_6;
    }

    v19 = 0;
    v18 = v6;
LABEL_33:

LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v28;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v28;
    }

    else
    {
      sub_2489CE5AC(0, *(v28 + 16) + 1, 1);
      result = v36;
    }

    v25 = *(result + 16);
    v24 = *(result + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2489CE5AC((v24 > 1), v25 + 1, 1);
      result = v36;
    }

    v4 = v10 + 1;
    *(result + 16) = v25 + 1;
    v26 = (result + 24 * v25);
    v26[4] = v11;
    v26[5] = v12;
    v26[6] = v14;
    v7 = v2 + 48;
    v6 = v18;
    v5 = v19;
    v3 = v29;
  }

  while (v27 != v10);
  return result;
}

void sub_2489CD910()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = v1 + 48;
  v24 = v2 - 1;
  v5 = MEMORY[0x277D84F90];
  v25 = v1 + 48;
  do
  {
    v26 = v5;
    v6 = (v4 + 24 * v3);
    v7 = v3;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      v10 = *v6;
      v41 = v9;
      v42 = v8;
      v43 = v10;

      v11 = v10;
      sub_2489CBC2C(&v37);
      v12 = v38;
      v13 = v40;
      if (v40 != 255)
      {
        break;
      }

      sub_24898382C(v37, v38, v39, 0xFFu);
      sub_24898382C(1, 0, 0, 2u);
LABEL_5:
      ++v7;

      v6 += 3;
      if (v2 == v7)
      {
        return;
      }
    }

    v27 = v9;
    v28 = v11;
    v33 = v37;
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v29 = 1;
    v30 = 0;
    v31 = 0;
    v32 = 2;
    v14 = v37;
    v15 = v2;
    v16 = v1;
    v17 = v39;
    sub_2489CFA00(v37, v38, v39, v40);
    v18 = _s13DeviceSharing17SpecificAssetTypeO2eeoiySbAC_ACtFZ_0(&v33, &v29);
    sub_2489837C4(v29, v30, v31, v32);
    sub_2489837C4(v33, v34, v35, v36);
    v19 = v17;
    v1 = v16;
    v2 = v15;
    v11 = v28;
    sub_24898382C(v14, v12, v19, v13);
    if ((v18 & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2489CE5AC(0, *(v26 + 16) + 1, 1);
      v5 = v44;
    }

    v22 = *(v5 + 16);
    v21 = *(v5 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_2489CE5AC((v21 > 1), v22 + 1, 1);
      v5 = v44;
    }

    v3 = v7 + 1;
    *(v5 + 16) = v22 + 1;
    v23 = (v5 + 24 * v22);
    v23[4] = v27;
    v23[5] = v8;
    v23[6] = v28;
    v4 = v25;
  }

  while (v24 != v7);
}

uint64_t AssetIntermediaryRepresentation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v23 = *v0;
  v24 = v2;
  v25 = v3;
  sub_2489CBC2C(&v20);
  if (v22 == 255)
  {
    return 0x64696C61766E4928;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  if (v22)
  {
    if (v22 == 1)
    {
      v5 = 0x8000000248A192A0;
      sub_24898382C(v20, v21, *(&v21 + 1), 1u);
      v6 = 13;
    }

    else
    {
      if (*(&v21 + 1) | v21 | v20)
      {
        if (v20 == 1 && v21 == 0)
        {
          sub_24898382C(1, 0, 0, 2u);
          v5 = 0xEA0000000000746ELL;
          v7 = 0x656D6C6C6F726E45;
        }

        else
        {
          sub_24898382C(2, 0, 0, 2u);
          v5 = 0xEE00737265676E69;
          v7 = 0x46676E697373694DLL;
        }

        goto LABEL_15;
      }

      v5 = 0x8000000248A19280;
      v6 = 5;
    }

    v7 = v6 | 0xD000000000000010;
  }

  else if (v20)
  {
    v5 = 0x8000000248A192C0;
    sub_24898382C(v20, v21, *(&v21 + 1), 0);
    v7 = 0xD000000000000010;
  }

  else
  {
    sub_24898382C(v20, v21, *(&v21 + 1), 0);
    v5 = 0xE800000000000000;
    v7 = 0x6C65646F4D657945;
  }

LABEL_15:
  MEMORY[0x24C1DF8B0](v7, v5);

  MEMORY[0x24C1DF8B0](8250, 0xE200000000000000);

  v8 = sub_2489CF4FC(8, v1, v2);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x24C1DF860](v8, v10, v12, v14);
  v17 = v16;

  MEMORY[0x24C1DF8B0](v15, v17);

  MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
  v20 = v1;
  *&v21 = v2;
  *(&v21 + 1) = v3;
  v18 = sub_2489CE130();
  MEMORY[0x24C1DF8B0](v18);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  v20 = v1;
  *&v21 = v2;
  *(&v21 + 1) = v3;
  v19 = sub_2489CE368();
  MEMORY[0x24C1DF8B0](v19);

  return v23;
}

id sub_2489CDE00()
{
  result = [*(v0 + 16) label];
  if (result)
  {
    v2 = result;
    sub_248A12B60();

    sub_2489835B8();
    v3 = sub_248A12F30();

    if (v3[2] >= 2uLL && (, v4 = sub_248A12BC0(), , v4 >= 8))
    {
      v5 = v3[6];
      v6 = v3[7];

      v7 = sub_2489CF4FC(8, v5, v6);
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = MEMORY[0x24C1DF860](v7, v9, v11, v13);

      return v14;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static AssetIntermediaryRepresentation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_248A13340() & 1) == 0)
  {
    return 0;
  }

  sub_2489CF8E4();
  return sub_248A12F10() & 1;
}

BOOL sub_2489CDFD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v6 = *a1;
  v7 = *(a1 + 1);
  v4 = v2;
  v5 = *(a2 + 1);
  return (_s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(&v4, &v6) & 1) == 0;
}

BOOL sub_2489CE020(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v6 = *a1;
  v7 = *(a1 + 1);
  v4 = v2;
  v5 = *(a2 + 1);
  return (_s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(&v6, &v4) & 1) == 0;
}

uint64_t sub_2489CE070(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v6 = *a1;
  v7 = *(a1 + 1);
  v4 = v2;
  v5 = *(a2 + 1);
  return _s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(&v4, &v6) & 1;
}

uint64_t sub_2489CE0BC(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_248A13340() & 1) == 0)
  {
    return 0;
  }

  sub_2489CF8E4();
  return sub_248A12F10() & 1;
}

uint64_t sub_2489CE130()
{
  v1 = sub_248A11990();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = [v5 assetState];
  if (v6)
  {
    v7 = 0xA300000000000000;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](((v6 << 63) >> 63) & 0x859CE2, v7);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  v8 = [v5 assetState];
  if ((v8 & 0x40) != 0)
  {
    v9 = 0xA400000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](((v8 << 57) >> 63) & 0x9DA49FF0, v9);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  v10 = [v5 assetState];
  if ((v10 & 0x20) != 0)
  {
    v11 = 0xA600000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](((v10 << 58) >> 63) & 0x8FB8EF8198E2, v11);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  v12 = [v5 assetState];
  v13 = (v12 & 0x220) == 0;
  if ((v12 & 0x220) != 0)
  {
    v14 = 0x8FB8EF86ACE2;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = 0xA600000000000000;
  }

  MEMORY[0x24C1DF8B0](v14, v15);

  sub_248A11980();
  sub_2489835B8();
  v16 = sub_248A12F40();
  (*(v2 + 8))(v4, v1);

  return v16;
}

uint64_t sub_2489CE368()
{
  v1 = *(v0 + 16);
  v2 = [v1 ckrecordIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_248A12B60();
    v6 = v5;

    if (sub_248A12BC0() >= 8)
    {
      v33 = 0x492E64756F6C4320;
      v34 = 0xEA00000000002844;
      v7 = sub_2489CF4FC(8, v4, v6);
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = MEMORY[0x24C1DF860](v7, v9, v11, v13);
      v16 = v15;

      MEMORY[0x24C1DF8B0](v14, v16);

      MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
      MEMORY[0x24C1DF8B0](0x492E64756F6C4320, 0xEA00000000002844);
    }
  }

  v17 = [v1 enrollmentIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_248A12B60();
    v21 = v20;

    if (sub_248A12BC0() >= 8)
    {
      sub_248A13100();

      v22 = sub_2489CF4FC(8, v19, v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v29 = MEMORY[0x24C1DF860](v22, v24, v26, v28);
      v31 = v30;

      MEMORY[0x24C1DF8B0](v29, v31);

      MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
      MEMORY[0x24C1DF8B0](0x6D6C6C6F726E4520, 0xEF2844492E746E65);
    }
  }

  return 0;
}

char *sub_2489CE5AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2489CE60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2489CE5CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2489CE72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2489CE5EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2489CE838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2489CE60C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F98, &qword_248A16ED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2489CE72C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2489CE838(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5F90, &qword_248A16ED0);
  v10 = *(type metadata accessor for NearbyDevice(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NearbyDevice(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2489CEA10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2489CF4E8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2489CEA7C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2489CEA7C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248A132D0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_248A12CB0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2489CEC44(v7, v8, a1, v4);
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
    return sub_2489CEB74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2489CEB74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_248A13340(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2489CEC44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2489CF4D4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2489CF220((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_248A13340();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_248A13340();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2489C9818(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2489C9818((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2489CF220((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2489CF4D4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2489CF448(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_248A13340(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2489CF220(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_248A13340() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_248A13340() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2489CF448(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2489CF4D4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2489CF4FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_248A12BE0();

    return sub_248A12C40();
  }

  return result;
}

uint64_t _s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v35 = sub_248A11B70();
  v34 = *(v35 - 8);
  v4 = MEMORY[0x28223BE20](v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v53 = v9;
  v54 = v10;
  v33 = v11;
  v55 = v11;
  sub_2489CBC2C(v51);
  v16 = v51[0];
  v15 = v51[1];
  v17 = v51[2];
  v18 = v52;
  v48 = v13;
  v49 = v12;
  v50 = v14;
  sub_2489CBC2C(&v44);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  v22 = v47;
  if (v18 == 255)
  {
    if (v47 == 255)
    {
      sub_24898382C(v16, v15, v17, 0xFFu);
      goto LABEL_7;
    }
  }

  else
  {
    v40 = v16;
    v41 = v15;
    v42 = v17;
    v43 = v18;
    if (v47 != 255)
    {
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      sub_2489CFA00(v16, v15, v17, v18);
      v23 = _s13DeviceSharing17SpecificAssetTypeO2eeoiySbAC_ACtFZ_0(&v40, &v36);
      sub_2489837C4(v36, v37, v38, v39);
      sub_2489837C4(v40, v41, v42, v43);
      sub_24898382C(v16, v15, v17, v18);
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_7:
      v24 = [v33 lastUpdatedTime];
      sub_248A11B50();

      v25 = [v14 lastUpdatedTime];
      sub_248A11B50();

      LOBYTE(v25) = sub_248A11B40();
      v26 = *(v34 + 8);
      v27 = v6;
      v28 = v35;
      v26(v27, v35);
      v26(v8, v28);
      return v25 & 1;
    }

    v30 = v46;
    sub_2489CFA00(v16, v15, v17, v18);
    sub_2489837C4(v16, v15, v17, v18);
    v21 = v30;
    v22 = -1;
  }

  v31 = v21;
  v32 = v22;
  sub_24898382C(v16, v15, v17, v18);
  sub_24898382C(v19, v20, v31, v32);
LABEL_10:
  result = sub_248A13200();
  __break(1u);
  return result;
}

unint64_t sub_2489CF8E4()
{
  result = qword_27EEB5F80;
  if (!qword_27EEB5F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB5F80);
  }

  return result;
}

unint64_t sub_2489CF934()
{
  result = qword_27EEB5F88;
  if (!qword_27EEB5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5F88);
  }

  return result;
}

unint64_t sub_2489CF9A8()
{
  result = qword_27EEB5958;
  if (!qword_27EEB5958)
  {
    sub_248A12480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5958);
  }

  return result;
}

uint64_t sub_2489CFA00(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_2489837A4(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t DarwinNotification.description.getter()
{
  v1 = 0xD000000000000029;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000004CLL;
  }
}

DeviceSharing::DarwinNotification_optional __swiftcall DarwinNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248A13260();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2489CFAC8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000029;
  v3 = *a1;
  v4 = "haringd.deviceEnrollmentData";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002BLL;
  }

  else
  {
    v5 = 0xD000000000000029;
  }

  if (v3 == 1)
  {
    v6 = "haringd.deviceEnrollmentData";
  }

  else
  {
    v6 = "ssets.notify.iCloudSyncDown";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000004CLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ExtendedDeviceLockState";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v4 = "ssets.notify.iCloudSyncDown";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000004CLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ExtendedDeviceLockState";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_248A13340();
  }

  return v11 & 1;
}

uint64_t sub_2489CFBA0()
{
  sub_248A13430();
  sub_248A12BB0();

  return sub_248A13460();
}

uint64_t sub_2489CFC3C(uint64_t a1)
{
  sub_248A12BB0();
}

uint64_t sub_2489CFCC4(uint64_t a1)
{
  sub_248A13430();
  sub_248A12BB0();

  return sub_248A13460();
}

void sub_2489CFD68(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000029;
  v3 = "haringd.deviceEnrollmentData";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v3 = "ssets.notify.iCloudSyncDown";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000004CLL;
    v4 = "ExtendedDeviceLockState";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_2489CFDC4()
{
  v1 = 0xD000000000000029;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000004CLL;
  }
}

uint64_t sub_2489CFE40(uint64_t a1)
{
  *(v2 + 64) = v1;
  type metadata accessor for DarwinNotificationXPCEventServer();
  sub_2489D1D98(qword_28150F950, v3, type metadata accessor for DarwinNotificationXPCEventServer, &protocol conformance descriptor for DarwinNotificationXPCEventServer);
  v5 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489CFEF4, v5, v4);
}

uint64_t sub_2489CFEF4()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD000000000000073, 0x8000000248A1A130, 0x6574617669746361, 0xEA00000000002928);
  v3 = *(v1 + 16);
  v0[6] = sub_2489D00C0;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2489D00C4;
  v0[5] = &block_descriptor_1;
  v4 = _Block_copy(v0 + 2);

  v5 = sub_248A12B90();
  xpc_set_event_stream_handler((v5 + 32), v3, v4);

  _Block_release(v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2489D00C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2489D013C(void *a1)
{
  isEscapingClosureAtFileLocation = v1;
  v4 = *v1;
  v5 = sub_248A12A50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(isEscapingClosureAtFileLocation + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_248A12A60();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (qword_28150F5F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_2815105C0);
  swift_unknownObjectRetain();
  v12 = sub_248A122B0();
  v13 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31[1] = v10;
    v16 = v15;
    v32[0] = v15;
    *v14 = 136446466;
    v17 = sub_248A13570();
    v19 = sub_24897BC00(v17, v18, v32);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v20 = [a1 description];
    v21 = sub_248A12B60();
    v23 = v22;

    v24 = sub_24897BC00(v21, v23, v32);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_248975000, v12, v13, "%{public}s received Notifyd XPC event %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v16, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  MEMORY[0x28223BE20](v25);
  v29 = a1;
  v30 = v4;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = sub_2489D1BB8;
  *(v26 + 24) = &v31[-4];
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2489D1BD4;
  *(v27 + 24) = v26;

  v32[0] = isEscapingClosureAtFileLocation;
  sub_2489D1BF0(v32);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_11:
    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v31[3] = isEscapingClosureAtFileLocation;
    type metadata accessor for DarwinNotificationXPCEventServer();
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    LODWORD(v30) = 0;
    v29 = 53;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489D05EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - v6;
  v8 = os_transaction_create();
  if (!v8)
  {
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003BLL, 0x8000000248A1A2F0);
    v56 = [a2 description];
    v57 = sub_248A12B60();
    v59 = v58;

    MEMORY[0x24C1DF8B0](v57, v59);

    result = sub_248A13200();
    __break(1u);
    return result;
  }

  v9 = v8;
  v10 = sub_2489D0E1C(a2);
  if (!v11)
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v32 = sub_248A122D0();
    __swift_project_value_buffer(v32, qword_2815105C0);
    v33 = sub_248A122B0();
    v34 = sub_248A12E60();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_37;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_248975000, v33, v34, "Unable to determine event name", v35, 2u);
    v36 = v35;
    goto LABEL_36;
  }

  v12 = v10;
  v13 = v11;

  v14 = sub_248A13260();

  if (v14 >= 3)
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v37 = sub_248A122D0();
    __swift_project_value_buffer(v37, qword_2815105C0);

    v33 = sub_248A122B0();
    v38 = sub_248A12E60();

    if (!os_log_type_enabled(v33, v38))
    {

LABEL_37:

      return swift_unknownObjectRelease();
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v64[0] = v40;
    *v39 = 136315138;
    v41 = sub_24897BC00(v12, v13, v64);

    *(v39 + 4) = v41;
    _os_log_impl(&dword_248975000, v33, v38, "Unknown event: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1E0A80](v40, -1, -1);
    v36 = v39;
LABEL_36:
    MEMORY[0x24C1E0A80](v36, -1, -1);
    goto LABEL_37;
  }

  swift_beginAccess();
  v15 = *(a1 + 24);
  if (!*(v15 + 16))
  {
LABEL_26:
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v42 = sub_248A122D0();
    __swift_project_value_buffer(v42, qword_2815105C0);
    v33 = sub_248A122B0();
    v43 = sub_248A12E60();
    if (!os_log_type_enabled(v33, v43))
    {
      goto LABEL_37;
    }

    v44 = 0xD000000000000029;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v63[0] = v46;
    *v45 = 136446210;
    if (v14)
    {
      if (v14 != 2)
      {
        v48 = "haringd.deviceEnrollmentData";
        v44 = 0xD00000000000002BLL;
        goto LABEL_35;
      }

      v47 = "com.vpg.managedassets.notify.iCloudSyncUp";
    }

    else
    {
      v44 = 0xD00000000000004CLL;
      v47 = "com.apple.kvs.store-did-change.com.apple.devicesharingd.deviceEnrollmentData";
    }

    v48 = (v47 - 32);
LABEL_35:
    v49 = sub_24897BC00(v44, v48 | 0x8000000000000000, v63);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_248975000, v33, v43, "No handler found for: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x24C1E0A80](v46, -1, -1);
    v36 = v45;
    goto LABEL_36;
  }

  v16 = sub_2489A8714(v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_26;
  }

  v62 = *(*(v15 + 56) + 16 * v16);

  v18 = swift_allocObject();
  *(v18 + 16) = v62;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v19 = sub_248A122D0();
  __swift_project_value_buffer(v19, qword_2815105C0);

  v20 = sub_248A122B0();
  v21 = sub_248A12E80();

  if (os_log_type_enabled(v20, v21))
  {
    LODWORD(v62) = v21;
    v22 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v65 = v61;
    *v22 = 136315650;
    v23 = sub_248A13570();
    v25 = sub_24897BC00(v23, v24, &v65);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_248A170D8;
    *(v26 + 24) = v18;
    v63[0] = &unk_248A170F0;
    v63[1] = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FA8, &qword_248A170F8);
    v27 = sub_248A12B80();
    v29 = sub_24897BC00(v27, v28, &v65);

    *(v22 + 14) = v29;
    *(v22 + 22) = 2082;
    if (v14)
    {
      if (v14 == 1)
      {
        v30 = 0xD00000000000002BLL;
      }

      else
      {
        v30 = 0xD000000000000029;
      }

      if (v14 == 1)
      {
        v31 = "haringd.deviceEnrollmentData";
      }

      else
      {
        v31 = "ssets.notify.iCloudSyncDown";
      }
    }

    else
    {
      v30 = 0xD00000000000004CLL;
      v31 = "ExtendedDeviceLockState";
    }

    v51 = v62;
    v52 = sub_24897BC00(v30, v31 | 0x8000000000000000, &v65);

    *(v22 + 24) = v52;
    _os_log_impl(&dword_248975000, v20, v51, "%s: Invoking handler: %s for notification: %{public}s", v22, 0x20u);
    v53 = v61;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v53, -1, -1);
    MEMORY[0x24C1E0A80](v22, -1, -1);
  }

  v54 = sub_248A12D40();
  (*(*(v54 - 8) + 56))(v7, 1, 1, v54);
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = &unk_248A170D8;
  v55[5] = v18;
  v55[6] = v9;
  sub_2489AC334(0, 0, v7, &unk_248A170E8, v55);
}

uint64_t sub_2489D0E1C(void *a1)
{
  v2 = MEMORY[0x24C1E0C00]();
  if (v2 != sub_248A124B0())
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    v4 = sub_248A122B0();
    v5 = sub_248A12E60();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "xpc_object_t was not of type XPC_TYPE_DICTIONARY";
LABEL_6:
    _os_log_impl(&dword_248975000, v4, v5, v7, v6, 2u);
    MEMORY[0x24C1E0A80](v6, -1, -1);
LABEL_7:

    return 0;
  }

  v9 = sub_248A124A0();
  if (!xpc_dictionary_get_string(a1, v9))
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v10 = sub_248A122D0();
    __swift_project_value_buffer(v10, qword_2815105C0);
    v4 = sub_248A122B0();
    v5 = sub_248A12E60();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Unable to get XPC_EVENT_KEY_NAME";
    goto LABEL_6;
  }

  return sub_248A12C00();
}

uint64_t sub_2489D0FC0(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2489839A0;

  return v7(v4);
}

uint64_t sub_2489D10B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_248978D74;

  return v10(a6);
}

uint64_t sub_2489D11AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  swift_beginAccess();
  if (*(*(v3 + 24) + 16))
  {

    sub_2489A8714(v7);
    v9 = v8;

    if (v9)
    {
      if (qword_28150F5F0 != -1)
      {
        swift_once();
      }

      v10 = sub_248A122D0();
      __swift_project_value_buffer(v10, qword_2815105C0);
      v11 = sub_248A122B0();
      v12 = sub_248A12E60();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v24[0] = v14;
        *v13 = 136315138;
        v15 = "haringd.deviceEnrollmentData";
        v16 = 0xD00000000000002BLL;
        if (v7 != 1)
        {
          v16 = 0xD000000000000029;
          v15 = "ssets.notify.iCloudSyncDown";
        }

        if (v7)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0xD00000000000004CLL;
        }

        if (v7)
        {
          v18 = v15;
        }

        else
        {
          v18 = "ExtendedDeviceLockState";
        }

        v19 = sub_24897BC00(v17, v18 | 0x8000000000000000, v24);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_248975000, v11, v12, "Found existing handler for %s, replacing", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x24C1E0A80](v14, -1, -1);
        MEMORY[0x24C1E0A80](v13, -1, -1);
      }
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_2489B091C(&unk_248A16EF8, v20, v7, isUniquelyReferenced_nonNull_native);
  *(v4 + 24) = v23;
  return swift_endAccess();
}

uint64_t DarwinNotificationXPCEventServer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2489D1480()
{
  v7[0] = sub_248A12EA0();
  v1 = *(v7[0] - 8);
  MEMORY[0x28223BE20](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248A12ED0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_248A12A40();
  MEMORY[0x28223BE20](v5 - 8);
  sub_24898C37C();
  sub_248A12A20();
  v7[1] = MEMORY[0x277D84F90];
  sub_2489D1D98(&unk_28150F570, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v7[0]);
  *(v0 + 16) = sub_248A12EE0();
  *(v0 + 24) = sub_2489919EC(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2489D16D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return sub_2489CFE40(v1);
}

uint64_t sub_2489D1764(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return sub_2489D0FC0(a1, a2, v6);
}

unint64_t sub_2489D1830()
{
  result = qword_28150FC68[0];
  if (!qword_28150FC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28150FC68);
  }

  return result;
}

uint64_t sub_2489D1884(uint64_t a1, uint64_t a2)
{
  result = sub_2489D1D98(qword_28150F950, a2, type metadata accessor for DarwinNotificationXPCEventServer, &protocol conformance descriptor for DarwinNotificationXPCEventServer);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DarwinNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DarwinNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of DarwinNotificationXPCEventServer.activate()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return v4();
}

uint64_t sub_2489D1C1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_2489D3D38(a1, v4);
}

uint64_t sub_2489D1CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248978D74;

  return sub_2489D10B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2489D1D98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2489D1DE4()
{
  v0 = sub_248A11B70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_248A12B30();
  [v4 setDateFormat_];

  sub_248A11B60();
  v6 = sub_248A11B30();
  (*(v1 + 8))(v3, v0);
  v7 = [v4 stringFromDate_];

  v8 = sub_248A12B60();
  return v8;
}

uint64_t sub_2489D1F6C()
{
  if (sub_248A12030())
  {
    v1 = 8756450;
  }

  else
  {
    v1 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v1, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000011, 0x8000000248A1A510);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  if (sub_248A12040())
  {
    v2 = 8756450;
  }

  else
  {
    v2 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v2, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000011, 0x8000000248A1A530);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v3 = *(v0 + 8);

  return v3(0x100000000000001CLL, 0x8000000248A1A4F0);
}

uint64_t sub_2489D2130()
{
  v1 = v0[4];
  v0[2] = 0x1000000000000013;
  v0[3] = 0x8000000248A1A430;
  __swift_project_boxed_opaque_existential_1((v1 + 192), *(v1 + 216));
  v2 = sub_248A121D0();
  if (v2)
  {
    v3 = 8756450;
  }

  else
  {
    v3 = 0x8FB8EFAB9AE2;
  }

  if (v2)
  {
    v4 = 0xA300000000000000;
  }

  else
  {
    v4 = 0xA600000000000000;
  }

  MEMORY[0x24C1DF8B0](v3, v4);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0x634120656C707041, 0xED0000746E756F63);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2489D22B8;

  return sub_2489F0CCC();
}

uint64_t sub_2489D22B8(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_2489D26D0;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v5 = sub_2489D23E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2489D23E4()
{
  if (*(v0 + 56))
  {
    v1 = 8756450;
  }

  else
  {
    v1 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v1, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000015, 0x8000000248A1A450);
  v2 = *(v0 + 32);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  __swift_project_boxed_opaque_existential_1((v2 + 192), *(v2 + 216));
  if (sub_248A121E0())
  {
    v3 = 8756450;
  }

  else
  {
    v3 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v3, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000012, 0x8000000248A1A490);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v4.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  value = v4.value;
  if (v4.value)
  {
    v6 = 8756450;
  }

  else
  {
    v6 = 9215458;
  }

  if (v4.value == 2)
  {
    v7 = 0x8FB8EFAB9AE2;
  }

  else
  {
    v7 = v6;
  }

  if (value == 2)
  {
    v8 = 0xA600000000000000;
  }

  else
  {
    v8 = 0xA300000000000000;
  }

  MEMORY[0x24C1DF8B0](v7, v8);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000017, 0x8000000248A1A4B0);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v9.value = EnrollmentAssetServer.getAssociatedAVPKVS()().value;
  v10 = v9.value;
  v11 = 9215458;
  if (v9.value)
  {
    v11 = 8756450;
  }

  if (v9.value == 2)
  {
    v12 = 0x8FB8EFAB9AE2;
  }

  else
  {
    v12 = v11;
  }

  if (v10 == 2)
  {
    v13 = 0xA600000000000000;
  }

  else
  {
    v13 = 0xA300000000000000;
  }

  MEMORY[0x24C1DF8B0](v12, v13);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000014, 0x8000000248A1A4D0);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = *(v0 + 8);

  return v16(v14, v15);
}

uint64_t sub_2489D26D0()
{
  v1 = *(v0 + 32);
  MEMORY[0x24C1DF8B0](0x100000000000001BLL, 0x8000000248A1A470);

  __swift_project_boxed_opaque_existential_1((v1 + 192), *(v1 + 216));
  if (sub_248A121E0())
  {
    v2 = 8756450;
  }

  else
  {
    v2 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v2, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000012, 0x8000000248A1A490);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v3.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  value = v3.value;
  if (v3.value)
  {
    v5 = 8756450;
  }

  else
  {
    v5 = 9215458;
  }

  if (v3.value == 2)
  {
    v6 = 0x8FB8EFAB9AE2;
  }

  else
  {
    v6 = v5;
  }

  if (value == 2)
  {
    v7 = 0xA600000000000000;
  }

  else
  {
    v7 = 0xA300000000000000;
  }

  MEMORY[0x24C1DF8B0](v6, v7);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000017, 0x8000000248A1A4B0);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  v8.value = EnrollmentAssetServer.getAssociatedAVPKVS()().value;
  v9 = v8.value;
  if (v8.value)
  {
    v10 = 8756450;
  }

  else
  {
    v10 = 9215458;
  }

  if (v8.value == 2)
  {
    v11 = 0x8FB8EFAB9AE2;
  }

  else
  {
    v11 = v10;
  }

  if (v9 == 2)
  {
    v12 = 0xA600000000000000;
  }

  else
  {
    v12 = 0xA300000000000000;
  }

  MEMORY[0x24C1DF8B0](v11, v12);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000014, 0x8000000248A1A4D0);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = *(v0 + 8);

  return v15(v13, v14);
}

uint64_t sub_2489D2980()
{
  v1 = v0[4];
  v0[2] = 0x1000000000000014;
  v0[3] = 0x8000000248A1A410;
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v6 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2489D2AC4;

  return v6(v2, v3);
}

uint64_t sub_2489D2AC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_2489D2D5C;
  }

  else
  {
    v4 = sub_2489D2BD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2489D2BD8()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 56;
    do
    {
      v5 = *(v3 - 24);
      v4 = *(v3 - 16);
      v3 += 32;

      v6 = sub_2489CF4FC(8, v5, v4);
      v7 = MEMORY[0x24C1DF860](v6);
      v9 = v8;

      MEMORY[0x24C1DF8B0](2629690, 0xE300000000000000);
      v10 = sub_248982978();
      MEMORY[0x24C1DF8B0](v10);

      MEMORY[0x24C1DF8B0](41, 0xE100000000000000);

      MEMORY[0x24C1DF8B0](v7, v9);

      MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

      --v2;
    }

    while (v2);
  }

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v11 = v0[2];
  v12 = v0[3];
  v13 = v0[1];

  return v13(v11, v12);
}

uint64_t sub_2489D2D94()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105A8);
  sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1A370, 0xD000000000000011, 0x8000000248A1A3F0);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2489D2EA8;

  return sub_2489D3914();
}

uint64_t sub_2489D2EA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_2489D31C0;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_2489D2FDC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2489D2FDC()
{
  MEMORY[0x24C1DF8B0](v0[9], v0[8]);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2489D3084;

  return sub_2489D1F4C();
}

uint64_t sub_2489D3084(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {

    v7 = sub_2489D38B4;
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v7 = sub_2489D31D8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2489D31D8()
{
  MEMORY[0x24C1DF8B0](v0[13], v0[12]);

  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2489D3280;

  return sub_2489D2110();
}

uint64_t sub_2489D3280(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {

    v7 = sub_2489D38CC;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v7 = sub_2489D33BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2489D33BC()
{
  MEMORY[0x24C1DF8B0](v0[17], v0[16]);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_2489D3464;

  return sub_2489D2960();
}

uint64_t sub_2489D3464(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {

    v7 = sub_2489D38E4;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v7 = sub_2489D35A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2489D35A0()
{
  v1 = v0[5];
  MEMORY[0x24C1DF8B0](v0[21], v0[20]);

  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v6 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_2489D36F0;

  return v6(v0 + 4, v2, v3);
}

uint64_t sub_2489D36F0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_2489D38FC;
  }

  else
  {
    v2 = sub_2489D380C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489D380C()
{
  v1 = AllAssetsRepresentation.description.getter();
  v3 = v2;

  MEMORY[0x24C1DF8B0](v1, v3);

  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_2489D3914()
{
  v1 = sub_248A123A0();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489D39D0, 0, 0);
}

uint64_t sub_2489D39D0()
{
  v0[2] = sub_2489D1DE4();
  v0[3] = v1;
  MEMORY[0x24C1DF8B0](5459817, 0xE300000000000000);
  MEMORY[0x24C1DF8B0](0x20B1939FF00ALL, 0xA600000000000000);

  sub_248A12390();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2489D3AD0;

  return MEMORY[0x28215A838]();
}

uint64_t sub_2489D3AD0()
{

  return MEMORY[0x2822009F8](sub_2489D3BCC, 0, 0);
}

uint64_t sub_2489D3BCC()
{
  v1 = sub_248A12340();
  (*(v0[5] + 8))(v0[6], v0[4]);
  if (v1)
  {
    v2 = 8756450;
  }

  else
  {
    v2 = 9215458;
  }

  MEMORY[0x24C1DF8B0](v2, 0xA300000000000000);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  MEMORY[0x24C1DF8B0](0xD000000000000011, 0x8000000248A1A550);
  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](10, 0xE100000000000000);
  v4 = v0[2];
  v3 = v0[3];

  v5 = v0[1];

  return v5(v4, v3);
}

uint64_t sub_2489D3D38(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2489D3E30;

  return v5();
}

uint64_t sub_2489D3E30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2489D3F24(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2489C9B34(0, v6[2] + 1, 1, v6);
    *(v2 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2489C9B34((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = &unk_248A16EF8;
  v10[5] = v5;
  *(v2 + 24) = v6;
  return swift_endAccess();
}

uint64_t sub_2489D4028(uint64_t a1)
{
  *(v2 + 64) = v1;
  type metadata accessor for RapportXPCEventServer();
  sub_2489D5BA0(qword_28150FB20, v3, type metadata accessor for RapportXPCEventServer, &protocol conformance descriptor for RapportXPCEventServer);
  v5 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489D40DC, v5, v4);
}

uint64_t sub_2489D40DC()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD000000000000068, 0x8000000248A1A5B0, 0x6574617669746361, 0xEA00000000002928);
  v3 = *(v1 + 16);
  v0[6] = sub_2489D58A4;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2489D00C4;
  v0[5] = &block_descriptor_2;
  v4 = _Block_copy(v0 + 2);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v3, v4);
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_2489D4254(void *a1)
{
  isEscapingClosureAtFileLocation = v1;
  v4 = sub_248A12A50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(isEscapingClosureAtFileLocation + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8;
  v9 = sub_248A12A60();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    if (qword_28150F5F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_2815105C0);
  swift_unknownObjectRetain();
  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30[0] = v14;
    *v13 = 136446466;
    v15 = sub_248A13570();
    v17 = sub_24897BC00(v15, v16, v30);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = [a1 description];
    v19 = sub_248A12B60();
    v21 = v20;

    v22 = sub_24897BC00(v19, v21, v30);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_248975000, v11, v12, "%{public}s received Rapport XPC event %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  MEMORY[0x28223BE20](v23);
  v27 = a1;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = sub_2489D5A9C;
  *(v24 + 24) = &v29[-4];
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2489D5AB8;
  *(v25 + 24) = v24;

  v30[0] = isEscapingClosureAtFileLocation;
  sub_2489D1BF0(v30);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_11:
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v29[1] = isEscapingClosureAtFileLocation;
    type metadata accessor for RapportXPCEventServer();
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    v28 = 0;
    v27 = 48;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489D46FC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = os_transaction_create();
  if (v7)
  {
    v8 = v7;
    sub_2489D4E14(a2);
    v9 = sub_248A12D40();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v11 = sub_2489D5BA0(qword_28150FB20, v10, type metadata accessor for RapportXPCEventServer, &protocol conformance descriptor for RapportXPCEventServer);
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = v11;
    v12[4] = a1;
    v12[5] = v8;
    swift_retain_n();
    sub_2489AC334(0, 0, v6, &unk_248A17280, v12);
  }

  else
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003BLL, 0x8000000248A1A2F0);
    v14 = [a2 description];
    v15 = sub_248A12B60();
    v17 = v16;

    MEMORY[0x24C1DF8B0](v15, v17);

    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489D4930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for RapportXPCEventServer();
  sub_2489D5BA0(qword_28150FB20, v6, type metadata accessor for RapportXPCEventServer, &protocol conformance descriptor for RapportXPCEventServer);
  v8 = sub_248A12CD0();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_2489D49E8, v8, v7);
}

uint64_t sub_2489D49E8()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 24);
  v0[10] = v2;
  v3 = v2[2];
  v0[11] = v3;
  if (v3)
  {
    v0[12] = 0;
    v4 = v0[7];
    v5 = v2[4];
    v0[13] = v2[5];

    v0[5] = v4;

    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_2489D4B68;

    return v9();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2489D4B68()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2489D4CAC, v3, v2);
}

uint64_t sub_2489D4CAC()
{
  v1 = v0[12] + 1;
  if (v1 == v0[11])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[12] = v1;
    v4 = v0[7];
    v5 = v0[10] + 16 * v1;
    v6 = *(v5 + 32);
    v0[13] = *(v5 + 40);
    v0[5] = v4;

    v8 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_2489D4B68;

    return v8();
  }
}

void sub_2489D4E14(void *a1)
{
  v3 = sub_248A12A50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_248A12A60();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (!xpc_dictionary_get_BOOL(a1, "replyRequired"))
  {
    if (qword_28150F5F0 == -1)
    {
LABEL_9:
      v29 = sub_248A122D0();
      __swift_project_value_buffer(v29, qword_2815105C0);
      swift_unknownObjectRetain();
      v12 = sub_248A122B0();
      v30 = sub_248A12E80();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v12, v30))
      {
        goto LABEL_17;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52 = v32;
      *v31 = 136446466;
      v33 = sub_248A13570();
      v35 = sub_24897BC00(v33, v34, &v52);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v36 = [a1 description];
      v37 = sub_248A12B60();
      v39 = v38;

      v40 = sub_24897BC00(v37, v39, &v52);

      *(v31 + 14) = v40;
      v41 = "%{public}s consumed XPC event %{public}s";
LABEL_15:
      _os_log_impl(&dword_248975000, v12, v30, v41, v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v32, -1, -1);
      MEMORY[0x24C1E0A80](v31, -1, -1);
      goto LABEL_17;
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v42 = sub_248A122D0();
    __swift_project_value_buffer(v42, qword_2815105C0);
    swift_unknownObjectRetain();
    v12 = sub_248A122B0();
    v30 = sub_248A12E60();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v12, v30))
    {
      goto LABEL_17;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v52 = v32;
    *v31 = 136446466;
    v43 = sub_248A13570();
    v45 = sub_24897BC00(v43, v44, &v52);

    *(v31 + 4) = v45;
    *(v31 + 12) = 2082;
    v46 = [a1 description];
    v47 = sub_248A12B60();
    v49 = v48;

    v50 = sub_24897BC00(v47, v49, &v52);

    *(v31 + 14) = v50;
    v41 = "%{public}s failed to consume XPC event %{public}s";
    goto LABEL_15;
  }

  v10 = reply;
  xpc_dictionary_send_reply();
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_2815105C0);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = sub_248A122B0();
  v13 = sub_248A12E80();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v14 = 136446722;
    v16 = sub_248A13570();
    v18 = sub_24897BC00(v16, v17, &v52);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = [a1 description];
    v20 = sub_248A12B60();
    v22 = v21;

    v23 = sub_24897BC00(v20, v22, &v52);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2082;
    v24 = [v10 description];
    v25 = sub_248A12B60();
    v27 = v26;

    v28 = sub_24897BC00(v25, v27, &v52);

    *(v14 + 24) = v28;
    _os_log_impl(&dword_248975000, v12, v13, "%{public}s consumed XPC event %{public}s with reply %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v15, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
LABEL_17:
}

uint64_t RapportXPCEventServer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2489D54A0()
{
  v7[0] = sub_248A12EA0();
  v1 = *(v7[0] - 8);
  MEMORY[0x28223BE20](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248A12ED0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_248A12A40();
  MEMORY[0x28223BE20](v5 - 8);
  sub_24898C37C();
  sub_248A12A20();
  v7[1] = MEMORY[0x277D84F90];
  sub_2489D5BA0(&unk_28150F570, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v7[0]);
  *(v0 + 16) = sub_248A12EE0();
  *(v0 + 24) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_2489D56EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2489C9B34(0, v6[2] + 1, 1, v6);
    *(v2 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2489C9B34((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = &unk_248A17290;
  v10[5] = v5;
  *(v2 + 24) = v6;
  return swift_endAccess();
}

uint64_t sub_2489D57F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_2489D4028(v1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2489D58C0(uint64_t a1, uint64_t a2)
{
  result = sub_2489D5BA0(qword_28150FB20, a2, type metadata accessor for RapportXPCEventServer, &protocol conformance descriptor for RapportXPCEventServer);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of RapportXPCEventServer.activate()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return v4();
}

uint64_t sub_2489D5AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489D4930(a1, v4, v5, v7, v6);
}

uint64_t sub_2489D5BA0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2489D5C00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

unint64_t sub_2489D5C78(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  out_token = -1;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  aBlock[4] = sub_2489D6010;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2489D5C00;
  aBlock[3] = &block_descriptor_3;
  v11 = _Block_copy(aBlock);

  v12 = sub_248A12B90();
  v13 = notify_register_dispatch((v12 + 32), &out_token, a3, v11);

  _Block_release(v11);
  if (v13)
  {
    if (qword_27EEB5190 != -1)
    {
      swift_once();
    }

    v14 = sub_248A122D0();
    __swift_project_value_buffer(v14, qword_27EEB9D98);

    v15 = sub_248A122B0();
    v16 = sub_248A12E70();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_24897BC00(a1, a2, aBlock);
      _os_log_impl(&dword_248975000, v15, v16, "Unable to register for notification: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1E0A80](v18, -1, -1);
      MEMORY[0x24C1E0A80](v17, -1, -1);
    }

    v19 = 0;
  }

  else
  {
    v19 = out_token;
  }

  return v19 | ((v13 != 0) << 32);
}

void sub_2489D5EF4(int a1)
{
  if (notify_cancel(a1))
  {
    if (qword_27EEB5190 != -1)
    {
      swift_once();
    }

    v2 = sub_248A122D0();
    __swift_project_value_buffer(v2, qword_27EEB9D98);
    oslog = sub_248A122B0();
    v3 = sub_248A12E70();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67240192;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_248975000, oslog, v3, "Unable to cancel listening for notification corresponding to token: %{public}d", v4, 8u);
      MEMORY[0x24C1E0A80](v4, -1, -1);
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LocalAuthenticator.__allocating_init()()
{
  v0 = swift_allocObject();
  LocalAuthenticator.init()();
  return v0;
}

uint64_t *LocalAuthenticator.init()()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_27EEB51A8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DE0);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initialized", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_2489D6210()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_2489D6258, v0, 0);
}

uint64_t sub_2489D6258()
{
  v21 = v0;
  if (qword_27EEB51A8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[4] = __swift_project_value_buffer(v1, qword_27EEB9DE0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v20);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Authenticating", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = v0[2];
  if (*(v9 + 112))
  {
    v10 = sub_248A122B0();
    v11 = sub_248A12E80();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446210;
      v14 = sub_248A13570();
      v16 = sub_24897BC00(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_248975000, v10, v11, "[%{public}s] Authentication already in progress; ignoring request", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1E0A80](v13, -1, -1);
      MEMORY[0x24C1E0A80](v12, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }

  else
  {
    *(v9 + 112) = 1;
    v19 = swift_task_alloc();
    v0[5] = v19;
    *v19 = v0;
    v19[1] = sub_2489D6534;

    return sub_2489D6BE0();
  }
}

uint64_t sub_2489D6534()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_2489D6678, v6, 0);
  }
}

uint64_t sub_2489D6678(uint64_t a1)
{
  v12 = v1;
  *(*(v1 + 16) + 112) = 0;
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Authentication successful!", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_2489D67C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56D0, &unk_248A15340);
    v2 = sub_248A13240();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 4 * v13);
    sub_24897C864(*(a1 + 56) + 32 * v13, v33 + 8);
    LODWORD(v33[0]) = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v14;
    swift_dynamicCast();
    sub_248983794((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_248983794(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_248983794(v29, v30);
    result = sub_248A13080();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_248983794(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2489D6A7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_248A12AA0();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t LocalAuthenticator.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2489D6BE0()
{
  sub_248A11BE0();
  *(v0 + 384) = swift_task_alloc();
  sub_248A12B20();
  *(v0 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489D6C98, 0, 0);
}

uint64_t sub_2489D6C98()
{
  sub_248A12B10();
  _s30DeviceSharingFrameworkSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_248A11BD0();
  v4 = sub_248A12B70();
  v6 = v5;
  sub_248A12B10();
  v7 = [v2 bundleForClass_];
  sub_248A11BD0();
  v8 = sub_248A12B70();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FB0, &unk_248A17380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A172F0;
  *(inited + 32) = 1030;
  v12 = MEMORY[0x277D837D0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 72) = 2;
  *(inited + 104) = v12;
  *(inited + 80) = v8;
  *(inited + 88) = v10;
  *(inited + 112) = 1001;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0x404E000000000000;
  *(inited + 152) = 1034;
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  *(inited + 192) = 1033;
  *(inited + 224) = MEMORY[0x277D849A8];
  *(inited + 200) = 1;
  v13 = sub_248991BE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5698, &unk_248A15310);
  swift_arrayDestroy();
  v14 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v0[50] = v14;
  sub_2489D67C4(v13);

  v15 = sub_248A12A80();
  v0[51] = v15;

  v0[2] = v0;
  v0[7] = v0 + 47;
  v0[3] = sub_2489D7038;
  v16 = swift_continuation_init();
  v0[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FB8, &unk_248A17390);
  v0[39] = MEMORY[0x277D85DD0];
  v0[40] = 1107296256;
  v0[41] = sub_2489D6A7C;
  v0[42] = &block_descriptor_4;
  v0[43] = v16;
  [v14 evaluatePolicy:1013 options:v15 reply:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2489D7038()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_2489D71D8;
  }

  else
  {
    v2 = sub_2489D7148;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489D7148()
{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489D71D8(uint64_t a1)
{
  v2 = v1[51];
  v3 = v1[50];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t dispatch thunk of LocalAuthenticator.authenticate()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_248978D74;

  return v4();
}

uint64_t PeerProtocolHeader.init(transportItem:length:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    *a3 = result;
    a3[1] = a2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t PeerProtocolHeader.transportData.getter()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v7 = v0[1];
  __src = v1;
  v9[0] = sub_2489D7A60(&__src, v9);
  v9[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  v3 = sub_2489D7A60(&v7, &__src);
  v5 = v4;
  sub_248A11B10();
  sub_24898C4FC(v3, v5 & 0xFFFFFFFFFFFFFFLL);
  return v9[0];
}

uint64_t *PeerProtocolHeader.init(buffer:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = result == 0;
  return result;
}

uint64_t sub_2489D7514()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x726F70736E617274;
  }
}

uint64_t sub_2489D7558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F70736E617274 && a2 == 0xED00006D65744974;
  if (v6 || (sub_248A13340() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_248A13340();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2489D7638(uint64_t a1)
{
  v2 = sub_2489D7BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2489D7674(uint64_t a1)
{
  v2 = sub_2489D7BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PeerProtocolHeader.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FC8, &qword_248A173A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2489D7BC8();
  sub_248A13490();
  v12 = 0;
  sub_248A132C0();
  if (!v2)
  {
    v11 = 1;
    sub_248A132C0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PeerProtocolHeader.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5FD8, &qword_248A173A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2489D7BC8();
  sub_248A13480();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_248A13290();
    v13 = 1;
    v10 = sub_248A13290();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2489D7A60(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_2489D7B18(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2489D7A60(a1, &a1[a2]);
  }

  sub_248A119B0();
  swift_allocObject();
  sub_248A119A0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_248A11AE0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_2489D7BC8()
{
  result = qword_27EEB5FD0;
  if (!qword_27EEB5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5FD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeerProtocolHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PeerProtocolHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_2489D7C94()
{
  result = qword_27EEB5FE0;
  if (!qword_27EEB5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5FE0);
  }

  return result;
}

unint64_t sub_2489D7CEC()
{
  result = qword_27EEB5FE8;
  if (!qword_27EEB5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5FE8);
  }

  return result;
}

unint64_t sub_2489D7D44()
{
  result = qword_27EEB5FF0;
  if (!qword_27EEB5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5FF0);
  }

  return result;
}

void sub_2489D7D98(uint64_t a1, char a2)
{
  v3 = v2;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_248A13030();
    if (!v5)
    {
      return;
    }

    v38 = MEMORY[0x277D84F90];
    v6 = &v38;
    sub_248A13190();
    v35 = sub_248A12FE0();
    v36 = v7;
    v37 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v38 = MEMORY[0x277D84F90];
  v6 = &v38;
  sub_248A13190();
  v8 = sub_248A12FB0();
  v9 = *(a1 + 36);
  v35 = v8;
  v36 = v9;
  v37 = 0;
LABEL_7:
  v10 = 0;
  v29 = v5;
  while (v10 < v5)
  {
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_36;
    }

    v13 = v35;
    v14 = v37;
    v32 = v12;
    v33 = v36;
    sub_2489DEE78(v35, v36, v37, a1, &qword_27EEB6098, 0x277D54C08);
    v16 = v15;
    v17 = [v15 uniqueID];
    if (!v17)
    {
      goto LABEL_42;
    }

    v6 = v17;
    v18 = [v16 name];
    if (!v18)
    {
      goto LABEL_43;
    }

    v5 = v18;
    v19 = [v16 modelIdentifier];
    if (!v19)
    {
      goto LABEL_41;
    }

    v3 = v19;
    v20 = [v16 productVersion];
    if (!v20)
    {
      goto LABEL_40;
    }

    v21 = v20;
    [objc_allocWithZone(MEMORY[0x277D050E0]) initWithUniqueIdentifier:v6 name:v5 modelIdentifier:v3 productVersion:v20 isPaired:a2 & 1];

    v6 = &v38;
    sub_248A13170();
    v3 = *(v38 + 16);
    sub_248A131A0();
    sub_248A131B0();
    sub_248A13180();
    if (v30)
    {
      if (!v14)
      {
        goto LABEL_44;
      }

      if (sub_248A13000())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v5 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6090, &unk_248A17720);
      v6 = sub_248A12E00();
      sub_248A13070();
      (v6)(v34, 0);
    }

    else
    {
      if (v14)
      {
        goto LABEL_45;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v6 = (1 << *(a1 + 32));
      if (v13 >= v6)
      {
        goto LABEL_37;
      }

      v22 = v13 >> 6;
      v23 = *(a1 + 56 + 8 * (v13 >> 6));
      if (((v23 >> v13) & 1) == 0)
      {
        goto LABEL_38;
      }

      if (*(a1 + 36) != v33)
      {
        goto LABEL_39;
      }

      v24 = v23 & (-2 << (v13 & 0x3F));
      if (v24)
      {
        v6 = (__clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0);
        v5 = v29;
      }

      else
      {
        v3 = (v22 << 6);
        v25 = v22 + 1;
        v26 = (a1 + 64 + 8 * v22);
        v5 = v29;
        while (v25 < (v6 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v3 += 64;
          ++v25;
          if (v28)
          {
            sub_248983728(v13, v33, 0);
            v6 = &v3[__clz(__rbit64(v27))];
            goto LABEL_32;
          }
        }

        sub_248983728(v13, v33, 0);
      }

LABEL_32:
      v35 = v6;
      v36 = v33;
      v37 = 0;
    }

    v10 = v32;
    if (v32 == v5)
    {
      sub_248983728(v35, v36, v37);
      return;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  __break(1u);
LABEL_41:

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_2489D81A4(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_248A13030();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2489CE5CC(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_248A12FE0();
    }

    else
    {
      v3 = sub_248A12FB0();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_2489DEE78(v38, v39, v40, v1, &qword_27EEB5A90, 0x277D050E0);
        v12 = v11;
        v13 = [v11 uniqueIdentifier];
        v14 = sub_248A12B60();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2489CE5CC((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_248A13000())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B8, &qword_248A17738);
          v6 = sub_248A12E00();
          sub_248A13070();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_248983728(v38, v39, v40);
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
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_248983728(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_248983728(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
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

uint64_t SharingInteractionControllerProtocol.hasPairedDevice()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489D8668;

  return v7(a1, a2);
}

uint64_t sub_2489D8668(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489D87A0, 0, 0);
  }
}

uint64_t sub_2489D87A0()
{
  v1 = *(v0 + 24);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_248A13030();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v3 = *(v0 + 8);

  return v3(v2 > 0);
}

void *SharingInteractionController.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_248A12EA0();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A12ED0();
  MEMORY[0x28223BE20](v5);
  v6 = sub_248A12A40();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[4] = MEMORY[0x277D84F98];
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_2815105D8);
  v10 = sub_248A122B0();
  v11 = sub_248A12E80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446466;
    v15 = sub_248A13570();
    v28[1] = v8;
    v17 = sub_24897BC00(v15, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_24897BC00(0x292874696E69, 0xE600000000000000, &v33);
    v18 = v11;
    v19 = ObjectType;
    _os_log_impl(&dword_248975000, v10, v18, "%{public}s: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v14, -1, -1);
    v20 = v13;
    v3 = v29;
    MEMORY[0x24C1E0A80](v20, -1, -1);
  }

  else
  {

    v19 = ObjectType;
  }

  sub_2489B7884(0, &qword_28150F560, 0x277D85C90);
  sub_248A12A10();
  v33 = MEMORY[0x277D84F90];
  sub_2489DD118(&unk_28150F570, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v31 + 104))(v30, *MEMORY[0x277D85268], v3);
  v21 = sub_248A12EE0();
  v1[3] = v21;
  v22 = objc_allocWithZone(MEMORY[0x277D54C10]);
  v23 = v21;
  v1[2] = [v22 initWithQueue_];
  v32.receiver = v1;
  v32.super_class = v19;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  v25 = v24[2];
  v26 = v24;
  [v25 setDelegate_];

  return v26;
}

uint64_t SharingInteractionController.isRemoteUnlockSupported()()
{
  *(v1 + 16) = v0;
  swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v2, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489D8D90, v4, v3);
}

uint64_t sub_2489D8D90()
{
  v1 = [*(*(v0 + 16) + 16) isSupportedForType_];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t SharingInteractionController.unlock(withDeviceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[6] = v6;
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2489D8EC0, v6, v5);
}

uint64_t sub_2489D8EC0()
{
  v17 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105D8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E80();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_24897BC00(v5, v4, &v16);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s: unlock(withDeviceID: %{public}s)", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = swift_task_alloc();
  v0[8] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_2489D90F8;

  return sub_2489D92FC(sub_2489DD184, v13);
}

uint64_t sub_2489D90F8()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];
    v4 = v2[7];

    return MEMORY[0x2822009F8](sub_2489E2210, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

void sub_2489D9230(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D54C18]) init];
  v5 = sub_248A12B30();
  [v4 setIdsDeviceID_];

  v6 = [a1 authenticateForType:11 withOptions:v4];
  sub_248A11BA0();
}

uint64_t sub_2489D92FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v3[6] = sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[7] = v6;
  v3[8] = v5;

  return MEMORY[0x2822009F8](sub_2489D93C0, v6, v5);
}

uint64_t sub_2489D93C0()
{
  v14 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105D8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s: Performing authentication manager request", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = *(v0 + 32);
  *(v9 + 16) = *(v0 + 16);
  *(v9 + 32) = v10;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_2489D95E0;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2489D95E0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2489D9714;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2489D96FC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2489D9714()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharingInteractionController.canAuthenticate(withDeviceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[6] = v6;
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2489D9838, v6, v5);
}

uint64_t sub_2489D9838()
{
  v17 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105D8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E80();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_24897BC00(v5, v4, &v16);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s: canAuthenticate(withDeviceID: %{public}s)", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = swift_task_alloc();
  v0[8] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_2489D9A70;

  return sub_2489D92FC(sub_2489DD18C, v13);
}

uint64_t sub_2489D9A70()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];
    v4 = v2[7];

    return MEMORY[0x2822009F8](sub_2489D9BA8, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2489D9BA8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2489D9C0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D54C18]) init];
  v5 = sub_248A12B30();
  [v4 setIdsDeviceID_];

  v6 = sub_248A12B30();
  v7 = [a1 canAuthenticateForType:11 withIDSDeviceID:v6];

  sub_248A11BA0();
}

uint64_t SharingInteractionController.listDevices()()
{
  v1[18] = v0;
  v1[19] = swift_getObjectType();
  v2 = swift_task_alloc();
  v1[20] = v2;
  *v2 = v1;
  v2[1] = sub_2489D9D8C;

  return sub_2489DA628();
}

uint64_t sub_2489D9D8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 168) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 176) = v7;
    *v7 = v4;
    v7[1] = sub_2489D9F00;

    return SharingInteractionController.listPairedDevices()();
  }
}

uint64_t sub_2489D9F00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    sub_2489DD118(&unk_27EEB6000, v5, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
    v6 = sub_248A12CD0();
    v8 = v7;
    v9 = sub_2489DA5C4;
  }

  else
  {
    *(v4 + 192) = a1;
    sub_2489DD118(&unk_27EEB6000, v5, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
    v6 = sub_248A12CD0();
    v8 = v10;
    v9 = sub_2489DA0E8;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2489DA0E8()
{
  v48 = v0;
  v1 = v0[24];
  v2 = v0[21];
  sub_2489D81A4(v1);
  v45 = v3;
  v46 = v0;
  v4 = v2;
  v0[15] = v1;
  v5 = v0[21];
  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_248A12FF0();
    sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    sub_2489DD194(&qword_27EEB6010, &qword_27EEB5A90, 0x277D050E0);
    sub_248A12E10();
    v4 = v0[2];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v8 = 0;
    v11 = *(v5 + 56);
    v6 = v5 + 56;
    v10 = v11;
    v12 = -1 << *(v6 - 24);
    v7 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v9 = v14 & v10;
  }

  v43 = v0 + 13;
  v15 = (v7 + 64) >> 6;
  v16 = v0 + 15;
  v44 = v4;
  while (v4 < 0)
  {
    v22 = sub_248A13060();
    if (!v22)
    {
      goto LABEL_21;
    }

    v16[2] = v22;
    sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    swift_dynamicCast();
    v21 = v16[1];
    v19 = v8;
    v20 = v9;
    if (!v21)
    {
      goto LABEL_21;
    }

LABEL_19:
    v23 = [v21 uniqueIdentifier];
    v24 = sub_248A12B60();
    v26 = v25;

    v46[13] = v24;
    v46[14] = v26;
    v27 = swift_task_alloc();
    *(v27 + 16) = v43;
    LOBYTE(v24) = sub_2489DEDCC(sub_2489DF090, v27, v45);

    if (v24)
    {
    }

    else
    {
      sub_2489DDA10(v47, v21);
    }

    v8 = v19;
    v9 = v20;
    v4 = v44;
  }

  v17 = v8;
  v18 = v9;
  v19 = v8;
  if (!v9)
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_15:
  v20 = (v18 - 1) & v18;
  v21 = *(*(v4 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_21:

  sub_2489B7A48(v44);
  if (qword_28150F5F8 == -1)
  {
    goto LABEL_22;
  }

LABEL_28:
  swift_once();
LABEL_22:
  v28 = sub_248A122D0();
  __swift_project_value_buffer(v28, qword_2815105D8);
  v29 = sub_248A122B0();
  v30 = sub_248A12E80();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47[0] = v32;
    *v31 = 136446466;
    v33 = sub_248A13570();
    v35 = sub_24897BC00(v33, v34, v47);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    swift_beginAccess();
    sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    sub_2489DD194(&qword_27EEB6010, &qword_27EEB5A90, 0x277D050E0);

    v36 = sub_248A12DE0();
    v38 = v37;

    v39 = sub_24897BC00(v36, v38, v47);

    *(v31 + 14) = v39;
    _os_log_impl(&dword_248975000, v29, v30, "%{public}s: List devices - %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v32, -1, -1);
    MEMORY[0x24C1E0A80](v31, -1, -1);
  }

  swift_beginAccess();
  v40 = v46[15];
  v41 = v46[1];

  return v41(v40);
}

uint64_t sub_2489DA5C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489DA628()
{
  v1[19] = v0;
  swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v2, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v4 = sub_248A12CD0();
  v1[20] = v4;
  v1[21] = v3;

  return MEMORY[0x2822009F8](sub_2489DA6E0, v4, v3);
}

uint64_t sub_2489DA6E0()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2489DA804;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6018, &qword_248A175C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2489DAFE0;
  v0[13] = &block_descriptor_79;
  v0[14] = v2;
  [v1 listCandidateDevicesForType:9 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2489DA804()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_2489DA9D0;
  }

  else
  {
    v5 = sub_2489DA934;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2489DA934()
{
  sub_2489D7D98(*(v0 + 144), 0);
  v2 = v1;

  v3 = sub_2489DF198(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2489DA9D0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t SharingInteractionController.listPairedDevices()()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v2, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v4 = sub_248A12CD0();
  v1[21] = v4;
  v1[22] = v3;

  return MEMORY[0x2822009F8](sub_2489DAAF8, v4, v3);
}

uint64_t sub_2489DAAF8()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2489DAC1C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6018, &qword_248A175C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2489DAFE0;
  v0[13] = &block_descriptor_5;
  v0[14] = v2;
  [v1 listCandidateDevicesForType:11 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2489DAC1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_2489DAF74;
  }

  else
  {
    v5 = sub_2489DAD4C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2489DAD4C()
{
  v19 = v0;
  sub_2489D7D98(*(v0 + 144), 1);
  v2 = v1;

  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_2815105D8);

  v4 = sub_248A122B0();
  v5 = sub_248A12E80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    v12 = MEMORY[0x24C1DF960](v2, v11);
    v14 = sub_24897BC00(v12, v13, v18);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_248975000, v4, v5, "%{public}s: List paired devices - %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v15 = sub_2489DF198(v2);

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_2489DAF74(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2489DAFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2489B7884(0, &qword_27EEB6098, 0x277D54C08);
    sub_2489DD194(&unk_27EEB60A0, &qword_27EEB6098, 0x277D54C08);
    **(*(v4 + 64) + 40) = sub_248A12DD0();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t SharingInteractionController.pair(withDeviceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[6] = v6;
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2489DB1C0, v6, v5);
}

uint64_t sub_2489DB1C0()
{
  v17 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105D8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E80();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_24897BC00(v5, v4, &v16);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s: pair(withDeviceID: %{public}s)", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = swift_task_alloc();
  v0[8] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_2489D90F8;

  return sub_2489D92FC(sub_2489DF2F0, v13);
}

void sub_2489DB3F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_248A12B30();
  v5 = sub_248A12B30();
  v6 = [a1 enableForType:9 withIDSDeviceID:v4 passcode:v5];

  sub_248A11BA0();
}

uint64_t SharingInteractionController.unpair(withDeviceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  sub_2489DD118(&unk_27EEB6000, v4, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v6 = sub_248A12CD0();
  v3[6] = v6;
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_2489DB55C, v6, v5);
}

uint64_t sub_2489DB55C()
{
  v17 = v0;
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[8] = __swift_project_value_buffer(v1, qword_2815105D8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E80();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_24897BC00(v5, v4, &v16);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s: unpair(withDeviceID: %{public}s)", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_2489DB798;

  return sub_2489D92FC(sub_2489DF2F8, v13);
}

uint64_t sub_2489DB798()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[6];
    v4 = v2[7];

    return MEMORY[0x2822009F8](sub_2489DB8D0, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2489DB8D0()
{
  v20 = v0;
  v1 = v0[11];

  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[2];
    v18 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446722;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_24897BC00(v6, v18, &v19);
    *(v7 + 22) = 2114;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&dword_248975000, v3, v4, "%{public}s: error while unpairing deviceID %{public}s: %{public}@", v7, 0x20u);
    sub_248983734(v8, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
    v15 = v0[11];
  }

  v16 = v0[1];

  return v16();
}

void sub_2489DBAF4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_248A12B30();
  v5 = [a1 disableForType:9 withIDSDeviceID:v4];

  sub_248A11BA0();
}

uint64_t sub_2489DBB80(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40[-v8];
  v10 = sub_248A11BC0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v40[-v17];
  a2(*(a4 + 16));
  if (qword_28150F5F8 != -1)
  {
    swift_once();
  }

  v19 = sub_248A122D0();
  __swift_project_value_buffer(v19, qword_2815105D8);
  v45 = *(v11 + 16);
  v45(v16, v18, v10);
  v20 = sub_248A122B0();
  v21 = sub_248A12E80();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = a4;
    v23 = v22;
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v23 = 136446466;
    v24 = sub_248A13570();
    v41 = v21;
    v26 = sub_24897BC00(v24, v25, v48);
    v43 = v9;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_248A132F0();
    v30 = v29;
    v31 = v16;
    v32 = *(v11 + 8);
    v32(v31, v10);
    v33 = sub_24897BC00(v28, v30, v48);
    v9 = v43;

    *(v23 + 14) = v33;
    _os_log_impl(&dword_248975000, v20, v41, "%{public}s: Performed authentication manager request with ID %{public}s", v23, 0x16u);
    v34 = v42;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v34, -1, -1);
    MEMORY[0x24C1E0A80](v23, -1, -1);
  }

  else
  {

    v35 = v16;
    v32 = *(v11 + 8);
    v32(v35, v10);
  }

  v36 = v46;
  v45(v46, v18, v10);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v38 = *(v37 - 8);
  (*(v38 + 16))(v9, v47, v37);
  (*(v38 + 56))(v9, 0, 1, v37);
  swift_beginAccess();
  sub_2489BE2D4(v9, v36);
  swift_endAccess();
  return (v32)(v18, v10);
}

void sub_2489DBFEC(uint64_t a1, void *a2)
{
  v69[1] = swift_getObjectType();
  v5 = sub_248A11BC0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v69 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x28223BE20](v18);
  v70 = v69 - v19;
  swift_beginAccess();
  v20 = *(v2 + 32);
  if (*(v20 + 16) && (v21 = sub_2489A881C(a1), (v22 & 1) != 0))
  {
    (*(v71 + 16))(v70, *(v20 + 56) + *(v71 + 72) * v21, v72);
    swift_endAccess();
    swift_beginAccess();
    sub_2489DD1E8(a1, v17);
    swift_endAccess();
    sub_248983734(v17, &qword_27EEB5450, qword_248A14E30);
    if (a2)
    {
      v23 = a2;
      if (qword_28150F5F8 != -1)
      {
        swift_once();
      }

      v24 = sub_248A122D0();
      __swift_project_value_buffer(v24, qword_2815105D8);
      v25 = v5;
      (*(v6 + 16))(v14, a1, v5);
      v26 = a2;
      v27 = sub_248A122B0();
      v28 = sub_248A12E60();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v69[0] = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v73[0] = v30;
        *v29 = 136446722;
        v31 = sub_248A13570();
        v33 = sub_24897BC00(v31, v32, v73);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2082;
        sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v34 = sub_248A132F0();
        v36 = v35;
        (*(v6 + 8))(v14, v25);
        v37 = sub_24897BC00(v34, v36, v73);

        *(v29 + 14) = v37;
        *(v29 + 22) = 2114;
        v38 = a2;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 24) = v39;
        v40 = v69[0];
        *v69[0] = v39;
        _os_log_impl(&dword_248975000, v27, v28, "%{public}s: Resuming authentication manager request for %{public}s with error %{public}@", v29, 0x20u);
        sub_248983734(v40, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v40, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v30, -1, -1);
        MEMORY[0x24C1E0A80](v29, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v14, v5);
      }

      v73[0] = a2;
      v67 = v72;
      v68 = v70;
      sub_248A12CE0();
    }

    else
    {
      if (qword_28150F5F8 != -1)
      {
        swift_once();
      }

      v55 = sub_248A122D0();
      __swift_project_value_buffer(v55, qword_2815105D8);
      (*(v6 + 16))(v12, a1, v5);
      v56 = sub_248A122B0();
      v57 = sub_248A12E80();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v73[0] = v59;
        *v58 = 136446466;
        v60 = sub_248A13570();
        v62 = sub_24897BC00(v60, v61, v73);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2082;
        sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v63 = sub_248A132F0();
        v65 = v64;
        (*(v6 + 8))(v12, v5);
        v66 = sub_24897BC00(v63, v65, v73);

        *(v58 + 14) = v66;
        _os_log_impl(&dword_248975000, v56, v57, "%{public}s: Resuming authentication manager request for %{public}s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v59, -1, -1);
        MEMORY[0x24C1E0A80](v58, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v12, v5);
      }

      v67 = v72;
      v68 = v70;
      sub_248A12CF0();
    }

    (*(v71 + 8))(v68, v67);
  }

  else
  {
    swift_endAccess();
    if (qword_28150F5F8 != -1)
    {
      swift_once();
    }

    v41 = sub_248A122D0();
    __swift_project_value_buffer(v41, qword_2815105D8);
    v42 = a1;
    v43 = v5;
    (*(v6 + 16))(v9, v42, v5);
    v44 = sub_248A122B0();
    v45 = sub_248A12E60();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v73[0] = v47;
      *v46 = 136446466;
      v48 = sub_248A13570();
      v50 = sub_24897BC00(v48, v49, v73);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v51 = sub_248A132F0();
      v53 = v52;
      (*(v6 + 8))(v9, v43);
      v54 = sub_24897BC00(v51, v53, v73);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_248975000, v44, v45, "%{public}s: Unable to resume request; no continuation found for %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v47, -1, -1);
      MEMORY[0x24C1E0A80](v46, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t SharingInteractionController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2489DC984(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return SharingInteractionController.unlock(withDeviceID:)(a1, a2);
}

uint64_t sub_2489DCA2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return SharingInteractionController.canAuthenticate(withDeviceID:)(a1, a2);
}

uint64_t sub_2489DCAD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24898283C;

  return SharingInteractionController.listDevices()();
}

uint64_t sub_2489DCB64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489E222C;

  return SharingInteractionController.listPairedDevices()();
}

uint64_t sub_2489DCBF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return SharingInteractionController.pair(withDeviceID:)(a1, a2);
}

uint64_t sub_2489DCC9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return SharingInteractionController.unpair(withDeviceID:)(a1, a2);
}

uint64_t sub_2489DCD44(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  sub_2489DD118(&unk_27EEB6000, a2, type metadata accessor for SharingInteractionController, &protocol conformance descriptor for SharingInteractionController);
  v5 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489D8D90, v5, v4);
}

uint64_t sub_2489DCEC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_248A11BC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A11BA0();
  v11 = a3;

  a5(v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2489DCFF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, id))
{
  v9 = sub_248A11BC0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A11BA0();
  v13 = a3;
  v14 = a5;

  a6(v12, v14);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2489DD118(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2489DD194(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2489B7884(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2489DD1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2489A881C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2489B17C8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_248A11BC0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_2489DD51C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2489DD3A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_248A12FC0() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_248A13420();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2489DD51C(int64_t a1, uint64_t a2)
{
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_248A12FC0();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_2489DD118(&unk_27EEB5A30, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_248A12AE0();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2489DD870(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_248A13430();
  if (a3)
  {
    sub_248A12BB0();
  }

  sub_248A12BB0();
  v8 = sub_248A13460();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;

    sub_2489DE368(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = (*(v7 + 48) + 16 * v10);
    v13 = v12[1];
    if (!v13)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_6;
    }

    v14 = *v12 == a2 && v13 == a3;
    if (v14 || (sub_248A13340() & 1) != 0)
    {

      goto LABEL_18;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (a3)
  {
LABEL_6:

    goto LABEL_7;
  }

  swift_bridgeObjectRelease_n();
LABEL_18:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_2489DDA10(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = sub_248A13040();

    if (v9)
    {

      sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_248A13030();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2489DDC48(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2489DE0BC(v20 + 1);
    }

    v18 = v8;
    sub_2489DE2E4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
  v11 = sub_248A12F00();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2489DE540(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_248A12F10();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2489DDC48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B0, &qword_248A17730);
    v2 = sub_248A130D0();
    v15 = v2;
    sub_248A12FF0();
    if (sub_248A13060())
    {
      sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2489DE0BC(v9 + 1);
        }

        v2 = v15;
        result = sub_248A12F00();
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

      while (sub_248A13060());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2489DDE38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB60C8, &qword_248A17740);
  result = sub_248A130C0();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_248A13430();
      if (v19)
      {
        sub_248A12BB0();
      }

      sub_248A12BB0();
      result = sub_248A13460();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2489DE0BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B0, &qword_248A17730);
  result = sub_248A130C0();
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
      result = sub_248A12F00();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2489DE2E4(uint64_t a1, uint64_t a2)
{
  sub_248A12F00();
  result = sub_248A12FD0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2489DE368(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2489DDE38(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_2489DE6B0();
        goto LABEL_23;
      }

      sub_2489DE958(v8 + 1);
    }

    v10 = *v4;
    sub_248A13430();
    if (a2)
    {
      sub_248A12BB0();
    }

    sub_248A12BB0();
    result = sub_248A13460();
    v11 = -1 << *(v10 + 32);
    a3 = result & ~v11;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      do
      {
        v13 = (*(v10 + 48) + 16 * a3);
        v14 = v13[1];
        if (v14)
        {
          if (a2)
          {
            if (*v13 == v7 && v14 == a2)
            {
              goto LABEL_27;
            }

            result = sub_248A13340();
            if (result)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }
        }

        else
        {

          if (!a2)
          {
            goto LABEL_26;
          }
        }

        a3 = (a3 + 1) & v12;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_23:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_26:

LABEL_27:
    result = sub_248A13370();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_2489DE540(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2489DE0BC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2489DE808();
      goto LABEL_12;
    }

    sub_2489DEBB8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_248A12F00();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_248A12F10();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_248A13370();
  __break(1u);
}

void *sub_2489DE6B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB60C8, &qword_248A17740);
  v2 = *v0;
  v3 = sub_248A130B0();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

id sub_2489DE808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B0, &qword_248A17730);
  v2 = *v0;
  v3 = sub_248A130B0();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_2489DE958(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB60C8, &qword_248A17740);
  result = sub_248A130C0();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_248A13430();
      if (v18)
      {

        sub_248A12BB0();
      }

      sub_248A12BB0();
      result = sub_248A13460();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2489DEBB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB60B0, &qword_248A17730);
  result = sub_248A130C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      result = sub_248A12F00();
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

        v2 = v24;
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

uint64_t sub_2489DEDCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_2489DEE78(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
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

      MEMORY[0x24C1DFD10](a1, a2, v11);
      sub_2489B7884(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2489B7884(0, a5, a6);
    if (sub_248A13010() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_248A13020();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_248A12F00();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_248A12F10();

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

uint64_t sub_2489DF090(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_248A13340() & 1;
  }
}

uint64_t sub_2489DF100(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2489E2168();
  result = MEMORY[0x24C1DFAB0](v2, &type metadata for SpecificAssetType.RXType, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_2489DD870(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_2489DF198(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248A13030())
  {
    v4 = sub_2489B7884(0, &qword_27EEB5A90, 0x277D050E0);
    v5 = sub_2489DD194(&qword_27EEB6010, &qword_27EEB5A90, 0x277D050E0);
    result = MEMORY[0x24C1DFAB0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1DFDE0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_2489DDA10(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_248A13030();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_2489DF300(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A12A50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 24);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_248A12A60();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_248A122D0();
  __swift_project_value_buffer(v14, qword_2815105D8);
  (*(v5 + 16))(v7, a1, v4);
  v15 = sub_248A122B0();
  v16 = sub_248A12E80();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136446466;
    v19 = sub_248A13570();
    v21 = sub_24897BC00(v19, v20, &v27);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_248A132F0();
    v24 = v23;
    (*(v5 + 8))(v7, v4);
    v25 = sub_24897BC00(v22, v24, &v27);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_248975000, v15, v16, "[%{public}s] Did start authentication for session %{public}s)", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v18, -1, -1);
    MEMORY[0x24C1E0A80](v17, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2489DF69C(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A12A50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(isEscapingClosureAtFileLocation + 24);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_248A12A60();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v37 = v13;
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_248A122D0();
  __swift_project_value_buffer(v14, qword_2815105D8);
  (*(v5 + 16))(v7, a1, v4);
  v15 = sub_248A122B0();
  v16 = sub_248A12E80();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v39[0] = v19;
    *v18 = 136446466;
    v20 = sub_248A13570();
    v22 = sub_24897BC00(v20, v21, v39);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_248A132F0();
    v25 = v24;
    (*(v5 + 8))(v7, v4);
    v26 = sub_24897BC00(v23, v25, v39);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_248975000, v15, v16, "[%{public}s] Did complete authentication for session %{public}s)", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v19, -1, -1);
    v27 = v18;
    a1 = v35;
    MEMORY[0x24C1E0A80](v27, -1, -1);
  }

  else
  {

    v28 = (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x28223BE20](v28);
  v32 = a1;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = sub_2489E21DC;
  *(v29 + 24) = &v34 - 4;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2489E2214;
  *(v30 + 24) = v29;

  v39[0] = isEscapingClosureAtFileLocation;
  sub_2489E21C4(v39);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v38 = isEscapingClosureAtFileLocation;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    v33 = 0;
    v32 = 183;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}