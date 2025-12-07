uint64_t sub_2722CAB94(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_272377B5C();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v2 + 16);
    v6 = *(v2 + 32);
    v8 = *v2;
    *(v4 + 79) = *(v2 + 47);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = v4 + 88;
      do
      {
        sub_2722C5138(v2, v14);
        v11 = *v2;
        v12 = *(v2 + 16);
        v13 = *(v2 + 32);
        *(v10 + 47) = *(v2 + 47);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 56;
        --v9;
      }

      while (v9);
    }

    sub_2722C5138(v2, v14);
    return v5;
  }

  return result;
}

unint64_t sub_2722CACB0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2722CAD58(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

__n128 sub_2722CAE30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2722CAE4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 55))
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

uint64_t sub_2722CAE94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 54) = 0;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 55) = 1;
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

    *(result + 55) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2722CB07C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2722CB088(uint64_t a1, uint64_t a2)
{
  v4 = sub_2722CBA40(&qword_280882978, &unk_272382DC4);
  v5 = sub_2722CBA84();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_2722CB110()
{
  v1 = v0[11];
  v2 = sub_272258594(MEMORY[0x277D84F90], v1, &qword_280881858, &unk_27237C260);
  v3 = v0[12];
  v4 = sub_272258594(v2, v3, &qword_280881F28, &unk_272381E80);

  v20 = *v0;
  if (*(v0 + 40) != 65568 || *v0 == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = v0[10];
  if ((v7 * v0[15]) >> 64 != (v7 * v0[15]) >> 63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = v0[16];
  if ((v1 * v8) >> 64 != (v1 * v8) >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v18 = v0[17];
  if ((v3 * v18) >> 64 != (v3 * v18) >> 63)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v0[13] * v0[18]) >> 64 != (v0[13] * v0[18]) >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v0[14] * v0[19]) >> 64 == (v0[14] * v0[19]) >> 63)
  {
    v19 = v4[2];
    if (!v19)
    {
      return v4;
    }

    v9 = 0;
    while (v9 < v4[2])
    {
      v10 = *(v4[v9 + 4] + 16);
      if (v10)
      {
        v11 = 0;
        v21 = v9 * v18;
        while (1)
        {
          v12 = v11 * v8;
          if ((v11 * v8) >> 64 != (v11 * v8) >> 63)
          {
            break;
          }

          if ((v9 * v18) >> 64 != (v9 * v18) >> 63)
          {
            goto LABEL_37;
          }

          v13 = v12 + v21;
          if (__OFADD__(v12, v21))
          {
            goto LABEL_38;
          }

          if (v7)
          {
            if (v7 < 1)
            {
              v14 = MEMORY[0x277D84F90];
            }

            else
            {
              sub_2721F065C(&qword_280881848, &unk_27237C250);
              v14 = swift_allocObject();
              v15 = j__malloc_size(v14);
              v16 = v15 - 32;
              if (v15 < 32)
              {
                v16 = v15 - 29;
              }

              v14[2] = v7;
              v14[3] = 2 * (v16 >> 2);
            }

            memcpy(v14 + 4, (v20 + 4 * v13), 4 * v7);
          }

          else
          {
            v14 = MEMORY[0x277D84F90];
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_272258428(v4);
            v4 = result;
          }

          if (v9 >= v4[2])
          {
            goto LABEL_39;
          }

          v17 = v4[v9 + 4];
          result = swift_isUniquelyReferenced_nonNull_native();
          v4[v9 + 4] = v17;
          if ((result & 1) == 0)
          {
            result = sub_272200344(v17);
            v17 = result;
            v4[v9 + 4] = result;
          }

          if (v11 >= v17[2])
          {
            goto LABEL_40;
          }

          v17[v11 + 4] = v14;

          if (v10 == ++v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

LABEL_12:
      if (++v9 == v19)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_2722CB3F0(uint64_t (*a1)(void))
{
  result = *v1;
  if (*(v1 + 160) != 65568 || result == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((*(v1 + 80) * *(v1 + 120)) >> 64 != (*(v1 + 80) * *(v1 + 120)) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(v1 + 88);
  v6 = *(v1 + 128);
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((*(v1 + 96) * *(v1 + 136)) >> 64 != (*(v1 + 96) * *(v1 + 136)) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*(v1 + 104) * *(v1 + 144)) >> 64 != (*(v1 + 104) * *(v1 + 144)) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((*(v1 + 112) * *(v1 + 152)) >> 64 == (*(v1 + 112) * *(v1 + 152)) >> 63)
  {
    return a1();
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2722CB4EC()
{
  v1 = v0[10];
  v2 = v0[15];
  v3 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v0[11];
  v5 = v0[16];
  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v0[12];
  v8 = v0[17];
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v0[13];
  v11 = v0[18];
  v12 = v10 * v11;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v0[14];
  v14 = v0[19];
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v6 > v3)
  {
    v3 = v6;
  }

  if (v9 > v3)
  {
    v3 = v9;
  }

  if (v12 > v3)
  {
    v3 = v12;
  }

  if (v13 * v14 <= v3)
  {
    return v3;
  }

  else
  {
    return v13 * v14;
  }
}

void *sub_2722CB5A8(void *result)
{
  v2 = result[2];
  if (!v2)
  {
    return result;
  }

  v3 = result + 4;
  if (!*(result[4] + 16))
  {
    return result;
  }

  v4 = *v1;
  if (*(v1 + 40) != 65568 || v4 == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v1[10] * v1[15]) >> 64 != (v1[10] * v1[15]) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v1[11] * v1[16]) >> 64 != (v1[11] * v1[16]) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v1[12] * v1[17]) >> 64 != (v1[12] * v1[17]) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v1[13] * v1[18]) >> 64 != (v1[13] * v1[18]) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v1[14] * v1[19]) >> 64 != (v1[14] * v1[19]) >> 63)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v6 = 0;
  while (v2)
  {
    v7 = *v3++;
    v8 = *(v7 + 16);
    result = memcpy((v4 + 4 * v6), (v7 + 32), 4 * v8);
    --v2;
    v9 = __OFADD__(v6, v8);
    v6 += v8;
    if (v9)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_2722CB6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2723778BC();
  v4 = espresso_plan_add_network();

  if (!v4)
  {
    return 0;
  }

  type metadata accessor for espresso_return_status_t(0);
  sub_2722CBA40(&qword_280882960, &protocol conformance descriptor for espresso_return_status_t);
  swift_allocError();
  *v5 = v4;
  return swift_willThrow();
}

uint64_t sub_2722CB82C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (result)
  {
    v3 = result;
    type metadata accessor for espresso_return_status_t(0);
    sub_2722CBA40(&qword_280882960, &protocol conformance descriptor for espresso_return_status_t);
    swift_allocError();
    *v4 = v3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2722CB8D0@<X0>(uint64_t a6@<X8>)
{
  sub_2723778BC();
  v7 = espresso_network_bind_buffer();

  if (v7)
  {
    type metadata accessor for espresso_return_status_t(0);
    sub_2722CBA40(&qword_280882960, &protocol conformance descriptor for espresso_return_status_t);
    swift_allocError();
    *v9 = v7;
    return swift_willThrow();
  }

  else
  {
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 160) = 0;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
  }

  return result;
}

uint64_t sub_2722CBA40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for espresso_return_status_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2722CBA84()
{
  result = qword_280882980;
  if (!qword_280882980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882980);
  }

  return result;
}

Swift::Void __swiftcall VAEspressoModel.destroy()()
{
  espresso_context_destroy();

  espresso_plan_destroy();
}

uint64_t BlobType.hashValue.getter()
{
  v1 = *v0;
  sub_27237874C();
  MEMORY[0x2743C58B0](v1);
  return sub_27237878C();
}

char *static VAEspressoUtils.getBlobNames(model:blobType:)(uint64_t a1, _BYTE *a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (*a2)
  {
    v5 = sub_2722CBCCC;
  }

  else
  {
    v5 = sub_2722CBCC4;
  }

  v6 = MEMORY[0x277D84F90];
  while ((v5)(v3, v4, v2))
  {
    v7 = sub_27237798C();
    v9 = v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2721FFBF8(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      result = sub_2721FFBF8((v11 > 1), v12 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v12 + 1;
    v13 = &v6[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v9;
    if (__OFADD__(v2++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v6;
}

uint64_t static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _OWORD *a7@<X8>)
{
  v66 = a6;
  v91 = a5;
  v67 = a4;
  v63 = a7;
  v11 = sub_27237728C();
  v12 = *(v11 - 8);
  v64 = v11;
  v65 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v59 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  v19 = *a3;
  v90 = *a3;
  v89 = 0;
  sub_2722595A4();

  sub_272377A8C();
  sub_272377A8C();
  if (v88 == v87)
  {

    goto LABEL_4;
  }

  v60 = v18;
  v20 = sub_27237865C();

  if (v20)
  {
LABEL_4:

    v21 = a1;
    sub_2722CC4E8(a1, a2, 0, v66 & 1, v67, v91, &v68);

    if (v7)
    {
    }

    v80 = v68;
    v81 = v69;
    v23 = v70;
    v77 = v71;
    v78 = v72;
    v79 = v73;
    v25 = v64;
    v24 = v65;
    if (v70)
    {
      goto LABEL_7;
    }

LABEL_23:
    v51 = sub_2722C389C();
    v52 = v61;
    (*(v24 + 16))(v61, v51, v25);
    v53 = sub_27237725C();
    v54 = sub_272377E6C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2721E4000, v53, v54, "Failed to init neural net after two attempts", v55, 2u);
      v56 = v55;
      v24 = v65;
      MEMORY[0x2743C69C0](v56, -1, -1);
    }

    (*(v24 + 8))(v52, v25);
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v68 = 0xD000000000000021;
    *(&v68 + 1) = 0x800000027238E680;
    MEMORY[0x2743C4AD0](v21, a2);

    v57 = v68;
    sub_2722032B4();
    swift_allocError();
    *v58 = v57;
    return swift_willThrow();
  }

  v76 = v19;
  v75 = 1;
  sub_272377A8C();
  sub_272377A8C();
  if (v68 == v74)
  {

    v21 = a1;
    goto LABEL_12;
  }

  v30 = sub_27237865C();

  v21 = a1;
  if (v30)
  {
LABEL_12:
    sub_2722CC4E8(v21, a2, 1, v66 & 1, v67, v91, &v68);
    if (v7)
    {
      v31 = sub_2722C389C();
      v32 = v64;
      v24 = v65;
      v33 = v62;
      (*(v65 + 16))(v62, v31, v64);

      v34 = sub_27237725C();
      v35 = sub_272377E6C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v59 = v34;
        v37 = v36;
        v38 = swift_slowAlloc();
        *&v68 = v38;
        *v37 = 136315138;

        v39 = sub_2721FFD04(v21, a2, &v68);

        *(v37 + 4) = v39;
        v24 = v65;
        v40 = v35;
        v41 = v59;
        _os_log_impl(&dword_2721E4000, v59, v40, "Failed to init %s on ANE, will init it on CPU directly", v37, 0xCu);
        sub_2722039C8(v38);
        MEMORY[0x2743C69C0](v38, -1, -1);
        MEMORY[0x2743C69C0](v37, -1, -1);

        (*(v24 + 8))(v62, v32);
      }

      else
      {

        (*(v24 + 8))(v33, v32);
      }
    }

    else
    {
      v23 = v70;
      v32 = v64;
      v24 = v65;
      if (v70)
      {

        v85 = v68;
        v86 = v69;
        v82 = v71;
        v83 = v72;
        v26 = v73;
        goto LABEL_8;
      }
    }

    v43 = sub_2722C389C();
    v44 = v60;
    (*(v24 + 16))(v60, v43, v32);

    v45 = sub_27237725C();
    v46 = v32;
    v47 = sub_272377E6C();
    if (os_log_type_enabled(v45, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v68 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_2721FFD04(v21, a2, &v68);
      _os_log_impl(&dword_2721E4000, v45, v47, "Try loading %s on CPU", v48, 0xCu);
      sub_2722039C8(v49);
      v50 = v49;
      v24 = v65;
      MEMORY[0x2743C69C0](v50, -1, -1);
      MEMORY[0x2743C69C0](v48, -1, -1);

      v25 = v64;
      (*(v24 + 8))(v44, v64);
    }

    else
    {

      (*(v24 + 8))(v44, v46);
      v25 = v46;
    }

    sub_2722CC4E8(v21, a2, 0, v66 & 1, v67, v91, &v68);

    v80 = v68;
    v81 = v69;
    v23 = v70;
    v77 = v71;
    v78 = v72;
    v79 = v73;
    if (v70)
    {
LABEL_7:

      v85 = v80;
      v86 = v81;
      v82 = v77;
      v83 = v78;
      v26 = v79;
LABEL_8:
      v84 = v26;
      v27 = v86;
      v28 = v63;
      *v63 = v85;
      v28[1] = v27;
      *(v28 + 4) = v23;
      v29 = v83;
      *(v28 + 40) = v82;
      *(v28 + 56) = v29;
      *(v28 + 72) = v26;
      return result;
    }

    goto LABEL_23;
  }

  sub_2722032B4();
  swift_allocError();
  *v42 = 0xD000000000000033;
  v42[1] = 0x800000027238E640;
  return swift_willThrow();
}

unint64_t sub_2722CC4E8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v392 = a5;
  v393 = a6;
  LODWORD(v394) = a4;
  v384 = a7;
  v407[1] = *MEMORY[0x277D85DE8];
  v383 = sub_272376BCC();
  v382 = *(v383 - 8);
  MEMORY[0x28223BE20](v383);
  v381 = &v363 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27237788C();
  MEMORY[0x28223BE20](v11 - 8);
  v385 = &v363 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_27237728C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v387 = &v363 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v386 = &v363 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v380 = &v363 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v388 = &v363 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v363 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v363 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v363 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v363 - v32;
  v390 = a3;
  if (a3)
  {
    context = espresso_create_context();
    v407[0] = context;
    if (!context)
    {
      v35 = sub_2722C389C();
      (*(v14 + 16))(v33, v35, v13);

      v36 = sub_27237725C();
      v37 = sub_272377E6C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = v13;
        v40 = swift_slowAlloc();
        *&v402 = v40;
        *v38 = 136315138;
        *(v38 + 4) = sub_2721FFD04(a1, a2, &v402);
        _os_log_impl(&dword_2721E4000, v36, v37, "Not able to utilized ANE; will use CPU instead: %s", v38, 0xCu);
        sub_2722039C8(v40);
        MEMORY[0x2743C69C0](v40, -1, -1);
        MEMORY[0x2743C69C0](v38, -1, -1);

        (*(v14 + 8))(v33, v39);
      }

      else
      {

        (*(v14 + 8))(v33, v13);
      }

      *&v402 = 0;
      *(&v402 + 1) = 0xE000000000000000;
      sub_27237820C();

      v125 = 0x800000027238E740;
      v126 = 0xD00000000000001ALL;
LABEL_46:
      *&v402 = v126;
      *(&v402 + 1) = v125;
      v115 = a1;
      v116 = a2;
      goto LABEL_47;
    }
  }

  else
  {
    context = espresso_create_context();
    v407[0] = context;
    if (!context)
    {
      v102 = sub_2722C389C();
      (*(v14 + 16))(v31, v102, v13);

      v103 = sub_27237725C();
      v104 = sub_272377E6C();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = v13;
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v402 = v107;
        *v106 = 136315138;
        *(v106 + 4) = sub_2721FFD04(a1, a2, &v402);
        _os_log_impl(&dword_2721E4000, v103, v104, "Not able to utilized ANE and CPU: %s", v106, 0xCu);
        sub_2722039C8(v107);
        MEMORY[0x2743C69C0](v107, -1, -1);
        MEMORY[0x2743C69C0](v106, -1, -1);

        (*(v14 + 8))(v31, v105);
      }

      else
      {

        (*(v14 + 8))(v31, v13);
      }

      *&v402 = 0;
      *(&v402 + 1) = 0xE000000000000000;
      sub_27237820C();

      v125 = 0x800000027238E6E0;
      v126 = 0xD000000000000022;
      goto LABEL_46;
    }
  }

  v391 = v13;
  if (v394)
  {
    sub_2722CFB34(v407, &qword_280882120, &qword_27237EA70, "Pointer of espresso_context_ref_t %s", v363);
    v377 = v407[0];
    plan = espresso_create_plan();
    if (!plan)
    {
      goto LABEL_223;
    }

    v398 = plan;
    sub_2722CFB34(&v398, &qword_280882110, &qword_272382F00, "Pointer of espresso_plan_ref_t %s", v363);
  }

  else
  {
    v377 = context;
    v42 = espresso_create_plan();
    if (!v42)
    {
      goto LABEL_223;
    }

    v398 = v42;
  }

  v43 = objc_opt_self();
  v44 = [v43 defaultManager];
  v45 = sub_2723777FC();
  v46 = [v44 fileExistsAtPath_];

  v379 = v14;
  v378 = v43;
  if (v46)
  {
    v47 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v48 = sub_2723777FC();
    v49 = [v47 initWithString_];

    v50 = [v49 stringByStandardizingPath];
    v51 = sub_27237782C();
    v53 = v52;

    *&v402 = 0;
    *(&v402 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v402 = 47;
    *(&v402 + 1) = 0xE100000000000000;
    MEMORY[0x2743C4AD0](v392, v393);
    MEMORY[0x2743C4AD0](0x737365727073652ELL, 0xED000074656E2E6FLL);
    v54 = v402;
    *&v402 = v51;
    *(&v402 + 1) = v53;

    MEMORY[0x2743C4AD0](v54, *(&v54 + 1));

    v56 = *(&v402 + 1);
    v55 = v402;
  }

  else
  {
    v57 = sub_2723777FC();
    v58 = [v57 pathExtension];

    v59 = sub_27237782C();
    v61 = v60;

    v62 = sub_2723777FC();
    v63 = [v62 stringByDeletingPathExtension];

    v64 = sub_27237782C();
    v66 = v65;

    sub_2722560E0(v64, v66, v59, v61);
    v68 = v67;
    v70 = v69;

    if (!v70)
    {
      *&v402 = 0;
      *(&v402 + 1) = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0x2068637573206F4ELL, 0xEF203A6C65646F6DLL);
      MEMORY[0x2743C4AD0](a1, a2);
      v115 = 0xD00000000000003BLL;
      v116 = 0x800000027238ADF0;
LABEL_47:
      MEMORY[0x2743C4AD0](v115, v116);
LABEL_48:
      v127 = v402;
      sub_2722032B4();
      swift_allocError();
      *v128 = v127;
      return swift_willThrow();
    }

    *&v402 = 0;
    *(&v402 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v402 = 47;
    *(&v402 + 1) = 0xE100000000000000;
    MEMORY[0x2743C4AD0](v392, v393);
    MEMORY[0x2743C4AD0](0x737365727073652ELL, 0xED000074656E2E6FLL);
    v71 = *(&v402 + 1);
    v72 = v402;
    *&v402 = v68;
    *(&v402 + 1) = v70;

    MEMORY[0x2743C4AD0](v72, v71);

    v56 = *(&v402 + 1);
    v55 = v402;
    v14 = v379;
    v43 = v378;
  }

  v73 = [v43 defaultManager];
  v393 = v55;
  v74 = sub_2723777FC();

  v75 = [v73 isReadableFileAtPath_];

  v76 = v391;
  if ((v75 & 1) == 0)
  {
    v95 = sub_2722C389C();
    (*(v14 + 16))(v28, v95, v76);

    v96 = sub_27237725C();
    v97 = sub_272377E8C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = v76;
      v100 = swift_slowAlloc();
      *&v402 = v100;
      *v98 = 136315138;
      v101 = v393;
      *(v98 + 4) = sub_2721FFD04(v393, v56, &v402);
      _os_log_impl(&dword_2721E4000, v96, v97, "Network not found in %s", v98, 0xCu);
      sub_2722039C8(v100);
      MEMORY[0x2743C69C0](v100, -1, -1);
      MEMORY[0x2743C69C0](v98, -1, -1);

      (*(v14 + 8))(v28, v99);
    }

    else
    {

      (*(v14 + 8))(v28, v76);
      v101 = v393;
    }

    *&v402 = 0;
    *(&v402 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v402 = 0xD00000000000002FLL;
    *(&v402 + 1) = 0x800000027238E710;
    MEMORY[0x2743C4AD0](v101, v56);

    goto LABEL_48;
  }

  if (v394)
  {
    v77 = sub_2722C389C();
    (*(v14 + 16))(v25, v77, v76);

    v78 = sub_27237725C();
    v79 = sub_272377E7C();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v402 = v81;
      *v80 = 136315138;

      v82 = sub_2721FFD04(v393, v56, &v402);

      *(v80 + 4) = v82;
      v76 = v391;
      _os_log_impl(&dword_2721E4000, v78, v79, "Path for the model file is %s", v80, 0xCu);
      sub_2722039C8(v81);
      MEMORY[0x2743C69C0](v81, -1, -1);
      MEMORY[0x2743C69C0](v80, -1, -1);
    }

    (*(v14 + 8))(v25, v76);
  }

  v83 = sub_2722C389C();
  v84 = *(v14 + 16);
  v85 = v388;
  v375 = v83;
  v374 = v84;
  (v84)(v388);
  swift_bridgeObjectRetain_n();
  v86 = sub_27237725C();
  v87 = sub_272377E7C();

  v88 = os_log_type_enabled(v86, v87);
  v392 = v56;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v402 = v90;
    *v89 = 136315394;
    *(v89 + 4) = sub_2721FFD04(v393, v56, &v402);
    *(v89 + 12) = 2080;
    v91 = v390;
    if (v390)
    {
      v92 = 4542017;
    }

    else
    {
      v92 = 5591107;
    }

    v93 = sub_2721FFD04(v92, 0xE300000000000000, &v402);

    *(v89 + 14) = v93;
    _os_log_impl(&dword_2721E4000, v86, v87, "Loading model %s on %s", v89, 0x16u);
    swift_arrayDestroy();
    v94 = v90;
    v76 = v391;
    MEMORY[0x2743C69C0](v94, -1, -1);
    MEMORY[0x2743C69C0](v89, -1, -1);

    (*(v14 + 8))(v85, v76);
  }

  else
  {

    (*(v14 + 8))(v85, v76);
    v91 = v390;
  }

  v388 = v398;
  v108 = v91;
  if (v91)
  {
    v109 = sub_2722CB6D0();
  }

  else
  {
    v109 = sub_2722CB59C();
  }

  v110 = v389;
  v111 = sub_2722CB6DC(v393, v392, *v109, v388);
  v113 = v112;

  if (v110)
  {
  }

  v373 = v14 + 16;
  v405 = v111;
  v406 = v113;
  if (v394)
  {
    sub_2722CFB34(&v405, &qword_2808820F8, &qword_27237EA58, "Pointer of espresso_network_t %s", v363);
  }

  *&v402 = v393;
  *(&v402 + 1) = v392;

  MEMORY[0x2743C4AD0](0x6769666E6F632ELL, 0xE700000000000000);
  v117 = v402;
  v397 = MEMORY[0x277D84F98];

  v118 = [v378 defaultManager];
  v119 = sub_2723777FC();

  v120 = [v118 isReadableFileAtPath_];

  if (v120)
  {
    sub_27237787C();
    v378 = v117;
    v121 = sub_2723777EC();
    v123 = v388;
    v124 = *(&v117 + 1);
    v131 = v122;
    v372 = 0;
    *&v402 = v121;
    *(&v402 + 1) = v122;
    v132 = v381;
    sub_272376BBC();
    sub_272203AC4();
    v133 = sub_2723780AC();
    (*(v382 + 8))(v132, v383);
    v394 = *(v133 + 16);
    if (v394)
    {
      v381 = v131;
      v135 = 0;
      v389 = v133 + 32;
      v136 = 0x8000000272388610;
      v386 = 0x8000000272388650;
      v383 = 0x8000000272388630;
      v382 = 0x8000000272388670;
      v371 = 0x800000027238B060;
      v370 = 0x8000000272388580;
      v369 = 0x80000002723885A0;
      v366 = 0x80000002723885C0;
      v368 = (v379 + 8);
      *&v134 = 136315138;
      v367 = v134;
      v385 = v133;
      v376 = *(&v117 + 1);
      while (1)
      {
        if (v135 >= *(v133 + 16))
        {
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
        }

        v137 = (v389 + 16 * v135);
        v138 = *v137;
        v139 = v137[1];
        *&v402 = *v137;
        *(&v402 + 1) = v139;
        *&v399 = 0xD000000000000013;
        *(&v399 + 1) = v136;
        v140 = v136;

        v141 = MEMORY[0x277D837D0];
        if (sub_27237813C())
        {
          *&v399 = v138;
          *(&v399 + 1) = v139;
          v395 = 32;
          v396 = 0xE100000000000000;
          v142 = sub_2723780BC();

          v404 = v141;
          if (v142[2] < 2uLL)
          {
            goto LABEL_209;
          }

          v144 = v142[6];
          v143 = v142[7];

          *&v402 = v144;
          *(&v402 + 1) = v143;
          sub_27221981C(&v402, &v399);
          v145 = v397;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v395 = v145;
          v147 = sub_27220038C(0xD000000000000013, v136);
          v149 = *(v145 + 16);
          v150 = (v148 & 1) == 0;
          v151 = __OFADD__(v149, v150);
          v152 = v149 + v150;
          if (v151)
          {
            goto LABEL_210;
          }

          v153 = v148;
          if (*(v145 + 24) < v152)
          {
            sub_27225AD2C(v152, isUniquelyReferenced_nonNull_native);
            v147 = sub_27220038C(0xD000000000000013, v136);
            if ((v153 & 1) != (v154 & 1))
            {
              goto LABEL_235;
            }

            goto LABEL_71;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_71:
            v175 = v395;
            if (v153)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v264 = v147;
            sub_27225B1A0();
            v147 = v264;
            v175 = v395;
            if (v153)
            {
              goto LABEL_72;
            }
          }

          v175[(v147 >> 6) + 8] |= 1 << v147;
          v265 = (v175[6] + 16 * v147);
          *v265 = 0xD000000000000013;
          v265[1] = v136;
          sub_27221981C(&v399, (v175[7] + 32 * v147));
          v266 = v175[2];
          v151 = __OFADD__(v266, 1);
          v219 = v266 + 1;
          if (v151)
          {
            goto LABEL_213;
          }

          goto LABEL_135;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0xD000000000000016;
        *(&v399 + 1) = v386;
        if (sub_27237813C())
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v155 = sub_2723780BC();

          v404 = v141;
          if (v155[2] < 2uLL)
          {
            goto LABEL_211;
          }

          v157 = v155[6];
          v156 = v155[7];

          *&v402 = v157;
          *(&v402 + 1) = v156;
          sub_27221981C(&v402, &v399);
          v158 = v397;
          v159 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v158;
          v160 = sub_27220038C(0xD000000000000016, v386);
          v162 = *(v158 + 16);
          v163 = (v161 & 1) == 0;
          v151 = __OFADD__(v162, v163);
          v164 = v162 + v163;
          if (v151)
          {
            goto LABEL_212;
          }

          v165 = v161;
          if (*(v158 + 24) >= v164)
          {
            if (v159)
            {
              goto LABEL_82;
            }

            v279 = v160;
            sub_27225B1A0();
            v160 = v279;
            v186 = v395;
            if ((v165 & 1) == 0)
            {
              goto LABEL_146;
            }

LABEL_83:
            v187 = (v186[7] + 32 * v160);
            sub_2722039C8(v187);
            sub_27221981C(&v399, v187);
          }

          else
          {
            sub_27225AD2C(v164, v159);
            v160 = sub_27220038C(0xD000000000000016, v386);
            if ((v165 & 1) != (v166 & 1))
            {
              goto LABEL_235;
            }

LABEL_82:
            v186 = v395;
            if (v165)
            {
              goto LABEL_83;
            }

LABEL_146:
            v186[(v160 >> 6) + 8] |= 1 << v160;
            v280 = (v186[6] + 16 * v160);
            v281 = v386;
            *v280 = 0xD000000000000016;
            v280[1] = v281;
            sub_27221981C(&v399, (v186[7] + 32 * v160));
            v282 = v186[2];
            v151 = __OFADD__(v282, 1);
            v283 = v282 + 1;
            if (v151)
            {
              goto LABEL_215;
            }

            v186[2] = v283;
          }

          v124 = v376;
          v397 = v186;
          goto LABEL_149;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0xD000000000000015;
        *(&v399 + 1) = v383;
        if (sub_27237813C())
        {
          *&v399 = v138;
          *(&v399 + 1) = v139;
          v395 = 32;
          v396 = 0xE100000000000000;
          v167 = sub_2723780BC();

          if (v167[2] < 2uLL)
          {
            goto LABEL_214;
          }

          v168 = v167[6];
          v169 = v167[7];

          v170 = sub_2721F58F8(v168, v169);
          if (v171)
          {
            v172 = v397;
            v173 = 0xD000000000000015;
            v174 = &v409;
            goto LABEL_77;
          }

          v404 = MEMORY[0x277D83B88];
          *&v402 = v170;
          sub_27221981C(&v402, &v399);
          v198 = v397;
          v199 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v198;
          v147 = sub_27220038C(0xD000000000000015, v383);
          v201 = *(v198 + 16);
          v202 = (v200 & 1) == 0;
          v151 = __OFADD__(v201, v202);
          v203 = v201 + v202;
          if (v151)
          {
            goto LABEL_217;
          }

          v204 = v200;
          if (*(v198 + 24) < v203)
          {
            sub_27225AD2C(v203, v199);
            v147 = sub_27220038C(0xD000000000000015, v383);
            if ((v204 & 1) != (v205 & 1))
            {
              goto LABEL_235;
            }

LABEL_101:
            v175 = v395;
            if ((v204 & 1) == 0)
            {
              goto LABEL_102;
            }

LABEL_72:
            v176 = (v175[7] + 32 * v147);
            sub_2722039C8(v176);
            sub_27221981C(&v399, v176);
LABEL_136:
            v397 = v175;
            goto LABEL_137;
          }

          if (v199)
          {
            goto LABEL_101;
          }

          v297 = v147;
          sub_27225B1A0();
          v147 = v297;
          v175 = v395;
          if (v204)
          {
            goto LABEL_72;
          }

LABEL_102:
          v175[(v147 >> 6) + 8] |= 1 << v147;
          v216 = (v175[6] + 16 * v147);
          v217 = v383;
          *v216 = 0xD000000000000015;
          v216[1] = v217;
          sub_27221981C(&v399, (v175[7] + 32 * v147));
          v218 = v175[2];
          v151 = __OFADD__(v218, 1);
          v219 = v218 + 1;
          if (v151)
          {
            goto LABEL_219;
          }

LABEL_135:
          v175[2] = v219;
          goto LABEL_136;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0xD000000000000019;
        *(&v399 + 1) = v382;
        if (sub_27237813C())
        {
          *&v399 = v138;
          *(&v399 + 1) = v139;
          v395 = 32;
          v396 = 0xE100000000000000;
          v177 = sub_2723780BC();

          if (v177[2] < 2uLL)
          {
            goto LABEL_216;
          }

          v178 = v177[6];
          v179 = v177[7];

          v180 = sub_2721F58F8(v178, v179);
          if (v181)
          {
            v172 = v397;
            v173 = 0xD000000000000019;
            v174 = &v408;
LABEL_77:
            v182 = sub_27220038C(v173, *(v174 - 32));
            if (v183)
            {
              v184 = v182;
              v185 = swift_isUniquelyReferenced_nonNull_native();
              v395 = v172;
              if ((v185 & 1) == 0)
              {
                sub_27225B1A0();
                v172 = v395;
              }

              sub_27221981C((*(v172 + 56) + 32 * v184), &v399);
              sub_2722CFF40(v184, v172);
              v397 = v172;
            }

            else
            {
              v399 = 0u;
              v400 = 0u;
            }

            sub_2721F40F0(&v399, &unk_280881DB8, &qword_27237DDD0);
          }

          else
          {
            v404 = MEMORY[0x277D83B88];
            *&v402 = v180;
            sub_27221981C(&v402, &v399);
            v214 = v397;
            v215 = swift_isUniquelyReferenced_nonNull_native();
            v395 = v214;
            sub_27225AFE4(&v399, 0xD000000000000019, v382, v215);
            v397 = v395;
          }

LABEL_137:
          v124 = v376;
LABEL_149:
          v133 = v385;
          goto LABEL_150;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        strcpy(&v399, "<InputStates>");
        HIWORD(v399) = -4864;
        if (sub_27237813C())
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v188 = sub_2723780BC();

          if (v188[2] < 2uLL)
          {
            goto LABEL_218;
          }

          v189 = v188[6];
          v190 = v188[7];

          *&v402 = 44;
          *(&v402 + 1) = 0xE100000000000000;
          MEMORY[0x28223BE20](v191);
          *(&v363 - 2) = &v402;
          v192 = v372;
          v193 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, (&v363 - 4), v189, v190, &v402);
          v372 = v192;
          v404 = sub_2721F065C(&qword_280881890, &unk_272382EF0);
          *&v402 = v193;
          sub_27221981C(&v402, &v399);
          v194 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v194;
          v196 = 0xED00003E73657461;
          v197 = 0x74537475706E493CLL;
          goto LABEL_97;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        strcpy(&v399, "<OutputStates>");
        HIBYTE(v399) = -18;
        if (sub_27237813C())
        {
          break;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        strcpy(&v399, "<InputFeats>");
        BYTE13(v399) = 0;
        HIWORD(v399) = -5120;
        if (sub_27237813C())
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v220 = sub_2723780BC();

          v404 = v141;
          if (v220[2] < 2uLL)
          {
            goto LABEL_221;
          }

          v222 = v220[6];
          v221 = v220[7];

          *&v402 = v222;
          *(&v402 + 1) = v221;
          sub_27221981C(&v402, &v399);
          v223 = v397;
          v224 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v223;
          v225 = 0x65467475706E493CLL;
          v226 = 0xEC0000003E737461;
          goto LABEL_121;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        strcpy(&v399, "<ConformerOut>");
        HIBYTE(v399) = -18;
        if (sub_27237813C())
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v227 = sub_2723780BC();

          v404 = v141;
          if (v227[2] < 2uLL)
          {
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            result = sub_2723786BC();
            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);
            return result;
          }

          v229 = v227[6];
          v228 = v227[7];

          *&v402 = v229;
          *(&v402 + 1) = v228;
          sub_27221981C(&v402, &v399);
          v230 = v397;
          v224 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v230;
          v225 = 0x6D726F666E6F433CLL;
          v226 = 0xEE003E74754F7265;
          goto LABEL_121;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0x74736F504354433CLL;
        *(&v399 + 1) = 0xEF3E73726F697265;
        if (sub_27237813C())
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v231 = sub_2723780BC();

          v404 = v141;
          if (v231[2] < 2uLL)
          {
            goto LABEL_224;
          }

          v233 = v231[6];
          v232 = v231[7];

          *&v402 = v233;
          *(&v402 + 1) = v232;
          sub_27221981C(&v402, &v399);
          v234 = v397;
          v224 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v234;
          v225 = 0x74736F504354433CLL;
          v226 = 0xEF3E73726F697265;
          goto LABEL_121;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        strcpy(&v399, "<OutputData>");
        BYTE13(v399) = 0;
        HIWORD(v399) = -5120;
        v365 = 0xEC0000003E617461;
        if (sub_27237813C())
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v235 = sub_2723780BC();

          v404 = v141;
          if (v235[2] < 2uLL)
          {
            goto LABEL_225;
          }

          v236 = v235[6];
          v237 = v235[7];

          *&v402 = v236;
          *(&v402 + 1) = v237;
          sub_27221981C(&v402, &v399);
          v238 = v397;
          v224 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v238;
          v225 = 0x4474757074754F3CLL;
          goto LABEL_120;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0x61447475706E493CLL;
        *(&v399 + 1) = 0xEB000000003E6174;
        v365 = 0xEB000000003E6174;
        if (sub_27237813C())
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v239 = sub_2723780BC();

          v404 = v141;
          if (v239[2] < 2uLL)
          {
            goto LABEL_226;
          }

          v240 = v239[6];
          v241 = v239[7];

          *&v402 = v240;
          *(&v402 + 1) = v241;
          sub_27221981C(&v402, &v399);
          v242 = v397;
          v224 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v242;
          v225 = 0x61447475706E493CLL;
LABEL_120:
          v226 = v365;
LABEL_121:
          sub_27225AFE4(&v399, v225, v226, v224);
          v397 = v395;
          v124 = v376;
          v133 = v385;
          goto LABEL_150;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0xD000000000000011;
        *(&v399 + 1) = v371;
        if (sub_27237813C())
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 32;
          *(&v399 + 1) = 0xE100000000000000;
          v243 = sub_2723780BC();

          if (v243[2] < 2uLL)
          {
            goto LABEL_227;
          }

          v244 = v243[6];
          v245 = v243[7];

          *&v402 = v244;
          *(&v402 + 1) = v245;
          *&v399 = 44;
          *(&v399 + 1) = 0xE100000000000000;
          v246 = sub_2723780BC();

          v247 = v246[2];
          if (v247 == 2)
          {
LABEL_142:

            goto LABEL_98;
          }

          if (v247 != 4)
          {
            v374(v380, v375, v391);

            v272 = sub_27237725C();
            v273 = sub_272377E8C();

            if (os_log_type_enabled(v272, v273))
            {
              v274 = swift_slowAlloc();
              v275 = swift_slowAlloc();
              *&v402 = v275;
              *v274 = v367;
              v365 = MEMORY[0x2743C4C60](v246, MEMORY[0x277D837D0]);
              v277 = v276;

              v278 = sub_2721FFD04(v365, v277, &v402);

              *(v274 + 4) = v278;
              _os_log_impl(&dword_2721E4000, v272, v273, "Invalid ouput shape: %s", v274, 0xCu);
              sub_2722039C8(v275);
              MEMORY[0x2743C69C0](v275, -1, -1);
              MEMORY[0x2743C69C0](v274, -1, -1);
            }

            else
            {
            }

            (*v368)(v380, v391);
            goto LABEL_98;
          }

          v404 = sub_2721F065C(&qword_280882108, &unk_27237EA60);
          v248 = swift_allocObject();
          *&v402 = v248;
          v249 = v246[8];
          v250 = v246[9];

          *(v248 + 16) = sub_2721F58F8(v249, v250);
          *(v248 + 24) = v251 & 1;
          if (v246[2] < 4uLL)
          {
            goto LABEL_230;
          }

          v253 = v246[10];
          v252 = v246[11];

          *(v248 + 32) = sub_2721F58F8(v253, v252);
          *(v248 + 40) = v254 & 1;
          sub_27221981C(&v402, &v399);
          v255 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v255;
          v197 = 0xD000000000000011;
          v256 = &v401;
          goto LABEL_157;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0xD000000000000011;
        *(&v399 + 1) = v370;
        if (sub_27237813C())
        {
          *&v399 = v138;
          *(&v399 + 1) = v139;
          v395 = 32;
          v396 = 0xE100000000000000;
          v257 = sub_2723780BC();

          if (v257[2] < 2uLL)
          {
            goto LABEL_229;
          }

          v258 = v257[6];
          v259 = v257[7];

          v260 = sub_2721F58F8(v258, v259);
          if (v261)
          {
            v262 = 0xD000000000000011;
            v263 = v370;
LABEL_132:
            sub_2722CFE9C(v262, v263, &v399);
            sub_2721F40F0(&v399, &unk_280881DB8, &qword_27237DDD0);
            goto LABEL_98;
          }

          v404 = MEMORY[0x277D83B88];
          *&v402 = v260;
          sub_27221981C(&v402, &v399);
          v289 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v289;
          v197 = 0xD000000000000011;
          v256 = &v400 + 1;
          goto LABEL_157;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0xD000000000000018;
        *(&v399 + 1) = v369;
        if (sub_27237813C())
        {
          *&v399 = v138;
          *(&v399 + 1) = v139;
          v395 = 32;
          v396 = 0xE100000000000000;
          v267 = sub_2723780BC();

          if (v267[2] < 2uLL)
          {
            goto LABEL_231;
          }

          v268 = v267[6];
          v269 = v267[7];

          v270 = sub_2721F58F8(v268, v269);
          if (v271)
          {
            sub_2722CFE9C(0xD000000000000018, v369, &v399);
            sub_2721F40F0(&v399, &unk_280881DB8, &qword_27237DDD0);
          }

          else
          {
            v404 = MEMORY[0x277D83B88];
            *&v402 = v270;
            sub_27221981C(&v402, &v399);
            v295 = v397;
            v296 = swift_isUniquelyReferenced_nonNull_native();
            v395 = v295;
            sub_27225AFE4(&v399, 0xD000000000000018, v369, v296);
            v397 = v395;
          }

          v124 = v376;
          v133 = v385;
          goto LABEL_150;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        strcpy(&v399, "<FrameOverlap>");
        HIBYTE(v399) = -18;
        if (sub_27237813C())
        {
          *&v399 = v138;
          *(&v399 + 1) = v139;
          v395 = 32;
          v396 = 0xE100000000000000;
          v284 = sub_2723780BC();

          if (v284[2] < 2uLL)
          {
            goto LABEL_232;
          }

          v285 = v284[6];
          v286 = v284[7];

          v287 = sub_2721F58F8(v285, v286);
          if (v288)
          {
            v262 = 0x764F656D6172463CLL;
            v263 = 0xEE003E70616C7265;
            goto LABEL_132;
          }

          v404 = MEMORY[0x277D83B88];
          *&v402 = v287;
          sub_27221981C(&v402, &v399);
          v303 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v303;
          v197 = 0x764F656D6172463CLL;
          v213 = 0x3E70616C7265;
          goto LABEL_96;
        }

        *&v402 = v138;
        *(&v402 + 1) = v139;
        *&v399 = 0x69447475706E493CLL;
        *(&v399 + 1) = 0xEA00000000003E6DLL;
        if (sub_27237813C())
        {
          *&v399 = v138;
          *(&v399 + 1) = v139;
          v395 = 32;
          v396 = 0xE100000000000000;
          v290 = sub_2723780BC();

          if (v290[2] < 2uLL)
          {
            goto LABEL_233;
          }

          v291 = v290[6];
          v292 = v290[7];

          v293 = sub_2721F58F8(v291, v292);
          if (v294)
          {
            v262 = 0x69447475706E493CLL;
            v263 = 0xEA00000000003E6DLL;
            goto LABEL_132;
          }

          v404 = MEMORY[0x277D83B88];
          *&v402 = v293;
          sub_27221981C(&v402, &v399);
          v306 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v306;
          v197 = 0x69447475706E493CLL;
          v196 = 0xEA00000000003E6DLL;
        }

        else
        {
          *&v402 = v138;
          *(&v402 + 1) = v139;
          *&v399 = 0x4474757074754F3CLL;
          *(&v399 + 1) = 0xEB000000003E6D69;
          if ((sub_27237813C() & 1) == 0)
          {
            *&v402 = v138;
            *(&v402 + 1) = v139;
            strcpy(&v399, "<InputFeats>");
            BYTE13(v399) = 0;
            HIWORD(v399) = -5120;
            if (sub_27237813C())
            {
              *&v402 = v138;
              *(&v402 + 1) = v139;
              *&v399 = 32;
              *(&v399 + 1) = 0xE100000000000000;
              v304 = sub_2723780BC();

              v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
              *&v402 = v304;
              sub_27221981C(&v402, &v399);
              v305 = v397;
              v195 = swift_isUniquelyReferenced_nonNull_native();
              v395 = v305;
              v197 = 0x65467475706E493CLL;
              v196 = 0xEC0000003E737461;
              goto LABEL_97;
            }

            *&v402 = v138;
            *(&v402 + 1) = v139;
            *&v399 = 0x3E6B73614D3CLL;
            *(&v399 + 1) = 0xE600000000000000;
            if (sub_27237813C())
            {
              *&v402 = v138;
              *(&v402 + 1) = v139;
              *&v399 = 32;
              *(&v399 + 1) = 0xE100000000000000;
              v307 = sub_2723780BC();

              v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
              *&v402 = v307;
              sub_27221981C(&v402, &v399);
              v308 = v397;
              v195 = swift_isUniquelyReferenced_nonNull_native();
              v395 = v308;
              v197 = 0x3E6B73614D3CLL;
              v196 = 0xE600000000000000;
              goto LABEL_97;
            }

            *&v402 = v138;
            *(&v402 + 1) = v139;
            *&v399 = 0xD000000000000010;
            *(&v399 + 1) = v366;
            if (sub_27237813C())
            {
              *&v402 = v138;
              *(&v402 + 1) = v139;
              *&v399 = 32;
              *(&v399 + 1) = 0xE100000000000000;
              v310 = sub_2723780BC();

              v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
              *&v402 = v310;
              sub_27221981C(&v402, &v399);
              v311 = v397;
              v195 = swift_isUniquelyReferenced_nonNull_native();
              v395 = v311;
              v197 = 0xD000000000000010;
              v256 = &v396;
LABEL_157:
              v196 = *(v256 - 32);
              goto LABEL_97;
            }

            *&v402 = v138;
            *(&v402 + 1) = v139;
            strcpy(&v399, "<ConformerOut>");
            HIBYTE(v399) = -18;
            if ((sub_27237813C() & 1) == 0)
            {
              *&v402 = v138;
              *(&v402 + 1) = v139;
              *&v399 = 0x74736F504354433CLL;
              *(&v399 + 1) = 0xEF3E73726F697265;
              if (sub_27237813C())
              {
                *&v402 = v138;
                *(&v402 + 1) = v139;
                *&v399 = 32;
                *(&v399 + 1) = 0xE100000000000000;
                v314 = sub_2723780BC();

                v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
                *&v402 = v314;
                sub_27221981C(&v402, &v399);
                v315 = v397;
                v195 = swift_isUniquelyReferenced_nonNull_native();
                v395 = v315;
                v197 = 0x74736F504354433CLL;
                v196 = 0xEF3E73726F697265;
              }

              else
              {
                *&v402 = v138;
                *(&v402 + 1) = v139;
                strcpy(&v399, "<StateShapes>");
                HIWORD(v399) = -4864;
                if ((sub_27237813C() & 1) == 0)
                {
                  goto LABEL_142;
                }

                *&v402 = v138;
                *(&v402 + 1) = v139;
                *&v399 = 32;
                *(&v399 + 1) = 0xE100000000000000;
                v316 = sub_2723780BC();

                if (v316[2] < 2uLL)
                {
                  goto LABEL_236;
                }

                v317 = v316[6];
                v318 = v316[7];

                v319 = sub_2722D00F0(1uLL, v317, v318);
                v321 = v320;

                result = sub_27237806C();
                if (__OFSUB__(result, 1))
                {
                  goto LABEL_237;
                }

                result = sub_27237804C();
                if (v322)
                {
                  v323 = v321;
                }

                else
                {
                  v323 = result;
                }

                if (v323 >> 14 < v319 >> 14)
                {
                  goto LABEL_238;
                }

                v324 = sub_27237808C();
                v326 = v325;
                v328 = v327;
                v330 = v329;

                *&v402 = v324;
                *(&v402 + 1) = v326;
                v403 = v328;
                v404 = v330;
                *&v399 = 2632745;
                *(&v399 + 1) = 0xE300000000000000;
                sub_2722D01A0();
                sub_2722D01F4();
                v331 = sub_272377DDC();

                v363 = v331;
                v332 = *(v331 + 16);
                if (v332)
                {
                  *&v402 = MEMORY[0x277D84F90];
                  sub_27220056C(0, v332, 0);
                  v333 = v402;
                  v334 = v363 + 56;
                  do
                  {
                    v336 = *(v334 - 3);
                    v335 = *(v334 - 2);
                    v338 = *(v334 - 1);
                    v337 = *v334;

                    v365 = MEMORY[0x2743C4A20](v336, v335, v338, v337);
                    v364 = v339;

                    *&v402 = v333;
                    v341 = *(v333 + 16);
                    v340 = *(v333 + 24);
                    if (v341 >= v340 >> 1)
                    {
                      sub_27220056C((v340 > 1), v341 + 1, 1);
                      v333 = v402;
                    }

                    *(v333 + 16) = v341 + 1;
                    v342 = v333 + 16 * v341;
                    v343 = v364;
                    *(v342 + 32) = v365;
                    *(v342 + 40) = v343;
                    v334 += 32;
                    --v332;
                  }

                  while (v332);
                }

                else
                {

                  v333 = MEMORY[0x277D84F90];
                }

                v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
                *&v402 = v333;
                sub_27221981C(&v402, &v399);
                v344 = v397;
                v195 = swift_isUniquelyReferenced_nonNull_native();
                v395 = v344;
                v197 = 0x685365746174533CLL;
                v196 = 0xED00003E73657061;
              }

              goto LABEL_97;
            }

            *&v402 = v138;
            *(&v402 + 1) = v139;
            *&v399 = 32;
            *(&v399 + 1) = 0xE100000000000000;
            v312 = sub_2723780BC();

            v404 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
            *&v402 = v312;
            sub_27221981C(&v402, &v399);
            v313 = v397;
            v195 = swift_isUniquelyReferenced_nonNull_native();
            v395 = v313;
            v197 = 0x6D726F666E6F433CLL;
            v213 = 0x3E74754F7265;
            goto LABEL_96;
          }

          *&v399 = v138;
          *(&v399 + 1) = v139;
          v395 = 32;
          v396 = 0xE100000000000000;
          v298 = sub_2723780BC();

          if (v298[2] < 2uLL)
          {
            goto LABEL_234;
          }

          v299 = v298[6];
          v300 = v298[7];

          v301 = sub_2721F58F8(v299, v300);
          if (v302)
          {
            v262 = 0x4474757074754F3CLL;
            v263 = 0xEB000000003E6D69;
            goto LABEL_132;
          }

          v404 = MEMORY[0x277D83B88];
          *&v402 = v301;
          sub_27221981C(&v402, &v399);
          v309 = v397;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v395 = v309;
          v197 = 0x4474757074754F3CLL;
          v196 = 0xEB000000003E6D69;
        }

LABEL_97:
        sub_27225AFE4(&v399, v197, v196, v195);
        v397 = v395;
LABEL_98:
        v124 = v376;
        v133 = v385;
        v136 = v140;
LABEL_150:
        if (++v135 == v394)
        {

          v76 = v391;
          v108 = v390;
          v123 = v388;
          v130 = v372;
          v129 = v378;
          goto LABEL_202;
        }
      }

      *&v402 = v138;
      *(&v402 + 1) = v139;
      *&v399 = 32;
      *(&v399 + 1) = 0xE100000000000000;
      v206 = sub_2723780BC();

      if (v206[2] < 2uLL)
      {
        goto LABEL_220;
      }

      v207 = v206[6];
      v208 = v206[7];

      *&v402 = 44;
      *(&v402 + 1) = 0xE100000000000000;
      MEMORY[0x28223BE20](v209);
      *(&v363 - 2) = &v402;
      v210 = v372;
      v211 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219A04, (&v363 - 4), v207, v208, &v402);
      v372 = v210;
      v404 = sub_2721F065C(&qword_280881890, &unk_272382EF0);
      *&v402 = v211;
      sub_27221981C(&v402, &v399);
      v212 = v397;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v395 = v212;
      v197 = 0x5374757074754F3CLL;
      v213 = 0x3E7365746174;
LABEL_96:
      v196 = v213 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      goto LABEL_97;
    }

    v108 = v390;
    v129 = v378;
    v130 = v372;
  }

  else
  {

    v129 = 0;
    v124 = 0;
    v123 = v388;
    v130 = 0;
  }

LABEL_202:
  result = sub_2722CB7D4(v123);
  v345 = v387;
  if (v130)
  {

    v374(v345, v375, v76);
    v346 = v392;

    v347 = v130;
    v348 = sub_27237725C();
    v349 = sub_272377E8C();

    if (os_log_type_enabled(v348, v349))
    {
      v350 = swift_slowAlloc();
      v351 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *&v402 = v352;
      *v350 = 136315394;
      v353 = sub_2721FFD04(v393, v346, &v402);

      *(v350 + 4) = v353;
      *(v350 + 12) = 2112;
      v354 = v130;
      v355 = _swift_stdlib_bridgeErrorToNSError();
      *(v350 + 14) = v355;
      *v351 = v355;
      _os_log_impl(&dword_2721E4000, v348, v349, "Failed to call plan.build() for %s: %@", v350, 0x16u);
      sub_2721F40F0(v351, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v351, -1, -1);
      sub_2722039C8(v352);
      MEMORY[0x2743C69C0](v352, -1, -1);
      MEMORY[0x2743C69C0](v350, -1, -1);

      (*(v379 + 8))(v345, v391);
    }

    else
    {

      (*(v379 + 8))(v345, v76);
    }

    return swift_willThrow();
  }

  v356 = v377;
  if (!v377)
  {
    goto LABEL_228;
  }

  v357 = v405;
  v358 = v406;
  v359 = v397;
  v360 = v384;
  *v384 = v123;
  v360[1] = v356;
  v360[2] = v357;
  *(v360 + 6) = v358;
  v361 = v392;
  v362 = v393;
  v360[4] = v359;
  v360[5] = v362;
  v360[6] = v361;
  v360[7] = v129;
  v360[8] = v124;
  *(v360 + 72) = v108 & 1;
  return result;
}

uint64_t sub_2722CFB34(uint64_t a1, uint64_t *a2, uint64_t *a3, const char *a4, ...)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2722C389C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_27237725C();
  v14 = sub_272377E7C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24 = a1;
    v25 = v17;
    *v16 = 136315138;
    sub_2721F065C(a2, a3);
    v18 = sub_27237789C();
    v20 = sub_2721FFD04(v18, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2721E4000, v13, v14, v23, v16, 0xCu);
    sub_2722039C8(v17);
    MEMORY[0x2743C69C0](v17, -1, -1);
    MEMORY[0x2743C69C0](v16, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_2722CFD2C()
{
  result = qword_280882988;
  if (!qword_280882988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882988);
  }

  return result;
}

__n128 sub_2722CFD80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2722CFDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2722CFDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_2722CFE9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_27220038C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_27225B1A0();
      v10 = v12;
    }

    sub_27221981C((*(v10 + 56) + 32 * v8), a3);
    sub_2722CFF40(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2722CFF40(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27237817C() + 1) & ~v5;
    do
    {
      sub_27237874C();

      sub_27237790C();
      v10 = sub_27237878C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2722D00F0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_27237793C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_272377A5C();
}

unint64_t sub_2722D01A0()
{
  result = qword_280882990;
  if (!qword_280882990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882990);
  }

  return result;
}

unint64_t sub_2722D01F4()
{
  result = qword_280882998;
  if (!qword_280882998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882998);
  }

  return result;
}

uint64_t VANRNameConfiguration.init(id:humanReadableName:enrollments:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_272376E5C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for VANRNameConfiguration(0);
  v14 = (a6 + v13[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + v13[6]) = a4;
  v15 = v13[7];
  v16 = sub_272376EBC();
  v17 = *(*(v16 - 8) + 32);

  return v17(a6 + v15, a5, v16);
}

uint64_t VANRNameConfiguration.humanReadableName.getter()
{
  v1 = *(v0 + *(type metadata accessor for VANRNameConfiguration(0) + 20));

  return v1;
}

double VANRNameConfiguration.enrollments.getter()
{
  type metadata accessor for VANRNameConfiguration(0);

  return result;
}

uint64_t VANRNameConfiguration.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VANRNameConfiguration(0) + 28);
  v4 = sub_272376EBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

int *VANRCollectedEnrollment.init(id:audioSample:source:debugAudioFileLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = sub_272376E5C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for VANRCollectedEnrollment(0);
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = v11;
  v14 = (a6 + result[7]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t _s12VoiceActions21VANRNameConfigurationV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_272376E5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id VANRCollectedEnrollment.audioSample.getter()
{
  v1 = *(v0 + *(type metadata accessor for VANRCollectedEnrollment(0) + 20));

  return v1;
}

uint64_t VANRCollectedEnrollment.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VANRCollectedEnrollment(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t VANRCollectedEnrollment.debugAudioFileLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for VANRCollectedEnrollment(0) + 28));

  return v1;
}

VoiceActions::VANREnrollmentAudioSource_optional __swiftcall VANREnrollmentAudioSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t VANREnrollmentAudioSource.rawValue.getter()
{
  if (*v0)
  {
    return 0x79426E656B6F7073;
  }

  else
  {
    return 0x70536F5474786574;
  }
}

uint64_t sub_2722D06F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79426E656B6F7073;
  }

  else
  {
    v3 = 0x70536F5474786574;
  }

  if (v2)
  {
    v4 = 0xEC00000068636565;
  }

  else
  {
    v4 = 0xEC00000072657355;
  }

  if (*a2)
  {
    v5 = 0x79426E656B6F7073;
  }

  else
  {
    v5 = 0x70536F5474786574;
  }

  if (*a2)
  {
    v6 = 0xEC00000072657355;
  }

  else
  {
    v6 = 0xEC00000068636565;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27237865C();
  }

  return v8 & 1;
}

uint64_t sub_2722D07AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "e ANE for ";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v3)
    {
      v4 = "e2eThenSpeechApi";
    }

    else
    {
      v4 = "e ANE for ";
    }
  }

  else if (a1 == 2)
  {
    v4 = "e2eDtwThenSpeechApi";
    v5 = 0xD00000000000001ELL;
  }

  else if (a1 == 3)
  {
    v4 = "e2eVadWeightedDtwThenSpeechApi";
    v5 = 0xD000000000000016;
  }

  else
  {
    v4 = "speechApiStreamingOnly";
    v5 = 0xD000000000000015;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v2 = "e2eThenSpeechApi";
    }
  }

  else if (a2 == 2)
  {
    v2 = "e2eDtwThenSpeechApi";
    v6 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = "e2eVadWeightedDtwThenSpeechApi";
    if (a2 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (a2 != 3)
    {
      v2 = "speechApiStreamingOnly";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27237865C();
  }

  return v7 & 1;
}

uint64_t sub_2722D0914()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2722D09A8(uint64_t a1)
{
  sub_27237790C();
}

uint64_t sub_2722D0A28(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2722D0AB8@<X0>(char *a2@<X8>)
{
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2722D0B18(uint64_t *a1@<X8>)
{
  v2 = 0x70536F5474786574;
  if (*v1)
  {
    v2 = 0x79426E656B6F7073;
  }

  v3 = 0xEC00000068636565;
  if (*v1)
  {
    v3 = 0xEC00000072657355;
  }

  *a1 = v2;
  a1[1] = v3;
}

VoiceActions::VANRModelSelection_optional __swiftcall VANRModelSelection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VANRModelSelection.rawValue.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  v4 = 0xD000000000000016;
  if (v2 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2722D0C7C()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2722D0D50(uint64_t a1)
{
  sub_27237790C();
}

uint64_t sub_2722D0E10(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

void sub_2722D0EEC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "e ANE for ";
  v5 = "e2eDtwThenSpeechApi";
  v6 = 0xD00000000000001ELL;
  v7 = "e2eVadWeightedDtwThenSpeechApi";
  v8 = 0xD000000000000016;
  if (v3 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = "speechApiStreamingOnly";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000013;
    v4 = "e2eThenSpeechApi";
  }

  if (*v1 > 1u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t VANREnrollmentOptimization.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_27237840C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2722D10C0()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_2722D1134(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_2722D1188@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_27237840C();

  *a2 = v3 != 0;
  return result;
}

uint64_t static VANRSystemConfiguration.buildDefaultForNameRecognition()()
{
  v0 = sub_272376D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VANRSystemConfigCodable();
  sub_272318964();
  v4 = static VANRSystemConfigCodable.load(_:)(v3);
  (*(v1 + 8))(v3, v0);
  if (!v4)
  {
    type metadata accessor for VANRSystemConfiguration();
    v4 = swift_allocObject();
    _s12VoiceActions23VANRSystemConfigCodableCACycfc_0();
  }

  return v4;
}

uint64_t sub_2722D13B4()
{
  v0 = swift_allocObject();
  _s12VoiceActions23VANRSystemConfigCodableCACycfc_0();
  return v0;
}

uint64_t static VANRSystemConfiguration.buildForUnitTests()()
{
  type metadata accessor for VANRSystemConfiguration();
  v0 = swift_allocObject();
  _s12VoiceActions23VANRSystemConfigCodableCACycfc_0();
  (*(*v0 + 840))(1);
  (*(*v0 + 672))(0);
  (*(*v0 + 648))(0);
  (*(*v0 + 792))(0, 0, 1);
  return v0;
}

uint64_t sub_2722D1540@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D161C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void *sub_2722D165C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2722D16C0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 384))(&v4);
}

uint64_t sub_2722D1720@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 17);
  return result;
}

uint64_t sub_2722D1764(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

void *sub_2722D17F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2722D1858(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 408))(&v4);
}

uint64_t sub_2722D18B8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 18);
  return result;
}

uint64_t sub_2722D18FC(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

uint64_t sub_2722D198C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D1A68(char a1)
{
  result = swift_beginAccess();
  *(v1 + 19) = a1;
  return result;
}

uint64_t sub_2722D1AF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D1BD4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 20) = a1;
  return result;
}

uint64_t sub_2722D1D3C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_2722D1D7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D1DD0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 504);

  return v2(v3);
}

uint64_t sub_2722D1E2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D1F08(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_2722D1F48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 544))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D1FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 592))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2138@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 616))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D21DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 640))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D22B8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_2722D22F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 664))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722D23D4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

uint64_t sub_2722D2464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 688))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D24B8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 696);

  return v2(v3);
}

uint64_t sub_2722D2514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 712))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2722D261C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  *(v1 + 92) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_2722D2664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 736))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2722D276C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  *(v1 + 100) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_2722D27B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 760))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D288C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 101) = a1;
  return result;
}

uint64_t sub_2722D291C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 784))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_2722D2A0C(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  *(v3 + 120) = a3 & 1;
  return result;
}

uint64_t sub_2722D2A64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 808))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2B3C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 121) = a1;
  return result;
}

uint64_t sub_2722D2BCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 832))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2CA4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 122) = a1;
  return result;
}

uint64_t sub_2722D2D34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 856))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2E0C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 123) = a1;
  return result;
}

uint64_t sub_2722D2E9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 880))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D2F74(char a1)
{
  result = swift_beginAccess();
  *(v1 + 124) = a1;
  return result;
}

uint64_t sub_2722D3004@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 904))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D30DC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 125) = a1;
  return result;
}

uint64_t sub_2722D316C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 928))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D325C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2 & 1;
  return result;
}

void *sub_2722D32B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 952))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2722D3314(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 960))(&v4);
}

uint64_t sub_2722D3374@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 137);
  return result;
}

uint64_t sub_2722D33B8(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 137) = v2;
  return result;
}

void *sub_2722D3448@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 976))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2722D34AC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 984))(&v4);
}

uint64_t sub_2722D350C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 138);
  return result;
}

uint64_t sub_2722D3550(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 138) = v2;
  return result;
}

uint64_t sub_2722D35E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1000))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D36B8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 139) = a1;
  return result;
}

uint64_t sub_2722D3748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1024))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D3838(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 144) = a1;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t sub_2722D388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1048))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D397C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t sub_2722D39D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1072))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D3AA8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 169) = a1;
  return result;
}

uint64_t sub_2722D3B38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1096))();
  *a2 = result;
  return result;
}

uint64_t sub_2722D3C10(char a1)
{
  result = swift_beginAccess();
  *(v1 + 170) = a1;
  return result;
}

uint64_t sub_2722D3CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1120))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D3D90(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 176) = a1;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t sub_2722D3DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1144))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2722D3EAC(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v3 = (*(*v1 + 712))();
  if ((v3 & 0x100000000) == 0)
  {
    *(a1 + 52) = v3;
  }

  v4 = (*(*v1 + 736))();
  if ((v4 & 0x100000000) == 0)
  {
    *(a1 + 8) = v4;
  }

  v5 = (*(*v1 + 760))();
  if (v5 != 2)
  {
    *(a1 + 12) = v5 & 1;
  }

  v6 = (*(*v1 + 808))();
  if (v6 != 2)
  {
    *(a1 + 13) = v6 & 1;
  }

  v7 = (*(*v1 + 832))();
  if (v7 != 2)
  {
    *(a1 + 49) = v7 & 1;
  }

  v8 = (*(*v1 + 856))();
  if (v8 != 2)
  {
    *(a1 + 72) = v8;
  }

  v9 = (*(*v1 + 880))();
  if (v9 != 2)
  {
    *(a1 + 73) = v9;
  }

  v10 = (*(*v1 + 904))();
  if (v10 != 2)
  {
    *(a1 + 74) = v10;
  }

  v11 = (*(*v1 + 928))();
  if ((v12 & 1) == 0)
  {
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
  }

  v13 = (*(*v1 + 952))(&v28 + 1, v11);
  if (BYTE1(v28) != 8)
  {
    *(a1 + 88) = BYTE1(v28);
  }

  v14 = (*(*v1 + 976))(&v28, v13);
  if (v28 != 16)
  {
    *(a1 + 89) = v28;
  }

  v15 = (*(*v1 + 1000))(v14);
  if (v15 != 2)
  {
    *(a1 + 90) = v15 & 1;
  }

  v16 = (*(*v1 + 1024))();
  if ((v17 & 1) == 0)
  {
    *(a1 + 96) = v16;
    *(a1 + 104) = 0;
  }

  v18 = (*(*v1 + 1048))(v16);
  if ((v19 & 1) == 0)
  {
    *(a1 + 112) = v18;
    *(a1 + 120) = 0;
  }

  v20 = (*(*v1 + 1072))(v18);
  if (v20 != 2)
  {
    *(a1 + 121) = v20 & 1;
  }

  v21 = (*(*v1 + 1096))();
  if (v21 != 2)
  {
    *(a1 + *(type metadata accessor for VARuntimeParameters(0) + 116)) = v21 & 1;
  }

  v22 = (*(*v1 + 1120))();
  if ((v23 & 1) == 0)
  {
    v24 = v22;
    v22 = type metadata accessor for VARuntimeParameters(0);
    *(a1 + *(v22 + 112)) = v24;
  }

  result = (*(*v1 + 1144))(v22);
  if ((v26 & 1) == 0)
  {
    v27 = result;
    result = type metadata accessor for VARuntimeParameters(0);
    *(a1 + *(result + 120)) = v27;
  }

  return result;
}

uint64_t VANRSystemConfiguration.deinit()
{

  return v0;
}

uint64_t VANRSystemConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s12VoiceActions23VANRSystemConfigCodableCACycfc_0()
{
  *(v0 + 16) = 16843777;
  *(v0 + 20) = 1;
  *(v0 + 24) = 1065353216;
  type metadata accessor for VAStringMatchingStrategy(0);
  v3 = 1;
  *(v0 + 32) = static VAStringMatchingStrategy.build(name:)(&v3);
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 1;
  *(v0 + 72) = 1;
  *(v0 + 80) = MEMORY[0x277D84F90];
  *(v0 + 88) = 0;
  *(v0 + 92) = 1;
  *(v0 + 96) = -1049624576;
  *(v0 + 100) = 512;
  *(v0 + 104) = xmmword_272382F10;
  *(v0 + 120) = 0;
  *(v0 + 121) = 33686018;
  *(v0 + 125) = 2;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  static VASpeechBiasOptions.defaultForNameRecognition()(&v2);
  *(v0 + 137) = v2;
  *(v0 + 138) = 259;
  *(v0 + 144) = 0x3FF999999999999ALL;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 167) = 0;
  *(v0 + 176) = 10;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0x3FB3333333333333;
  *(v0 + 200) = 0;
  return v0;
}

uint64_t sub_2722D44DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_272376E4C();
  *(v10 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_hostTime) = a1;
  v11 = OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedNameId;
  v12 = sub_272376E5C();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  *(v10 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedEnrollmentIds) = a3;
  *(v10 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_debugKeywordSpottedEvent) = a4;
  *(v10 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_audioBytes) = a5;
  return v10;
}

uint64_t sub_2722D45E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_272376E5C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *VANRRecognitionEvent.debugKeywordSpottedEvent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_debugKeywordSpottedEvent);
  v2 = v1;
  return v1;
}

uint64_t VANRRecognitionEvent.deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_uuid;
  v2 = sub_272376E5C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedNameId, v2);

  return v0;
}

uint64_t VANRRecognitionEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_uuid;
  v2 = sub_272376E5C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedNameId, v2);

  return swift_deallocClassInstance();
}

uint64_t VANRAudioInput.init(buffer:hostTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t VANRAudioInput.description.getter()
{
  v1 = *v0;
  sub_27237820C();
  [v1 frameLength];
  v2 = sub_27237862C();

  MEMORY[0x2743C4AD0](0xD000000000000012, 0x8000000272388F80);
  v3 = sub_27237862C();
  MEMORY[0x2743C4AD0](v3);

  return v2;
}

unint64_t sub_2722D4990()
{
  result = qword_2808829A0;
  if (!qword_2808829A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808829A0);
  }

  return result;
}

unint64_t sub_2722D4A18()
{
  result = qword_2808829B8;
  if (!qword_2808829B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808829B8);
  }

  return result;
}

unint64_t sub_2722D4AA0()
{
  result = qword_2808829D0;
  if (!qword_2808829D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808829D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VAVerifierModelOutput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for VAVerifierModelOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2722D4BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_272376EBC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2722D4D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_272376E5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_272376EBC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2722D4E34(uint64_t a1)
{
  sub_272376E5C();
  if (v1 <= 0x3F)
  {
    sub_2722D4ED8(319);
    if (v2 <= 0x3F)
    {
      sub_272376EBC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2722D4ED8(uint64_t a1)
{
  if (!qword_2808829E8)
  {
    type metadata accessor for VANRCollectedEnrollment(255);
    v1 = sub_272377BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2808829E8);
    }
  }
}

uint64_t sub_2722D4F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2722D5014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_272376E5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2722D50CC(uint64_t a1)
{
  sub_272376E5C();
  if (v1 <= 0x3F)
  {
    sub_2722D5170();
    if (v2 <= 0x3F)
    {
      sub_2722D51BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2722D5170()
{
  result = qword_2808829F0;
  if (!qword_2808829F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2808829F0);
  }

  return result;
}

void sub_2722D51BC()
{
  if (!qword_280881708)
  {
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_280881708);
    }
  }
}

uint64_t sub_2722D528C(uint64_t a1)
{
  result = sub_272376E5C();
  if (v2 <= 0x3F)
  {
    result = sub_272376EBC();
    if (v3 <= 0x3F)
    {
      result = sub_2722D532C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2722D532C()
{
  result = qword_2808829F8;
  if (!qword_2808829F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2808829F8);
  }

  return result;
}

uint64_t sub_2722D6708(uint64_t a1)
{
  result = sub_272376E5C();
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

uint64_t dispatch thunk of VANRNameRecognizer.addAudio(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_272219D80;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of VANRNameRecognizer.stop()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272211DBC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of VANRNameRecognizer.prepare()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722D6BA4;

  return v7(a1, a2);
}

uint64_t sub_2722D6BA4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_2722D6CB0()
{
  result = qword_280882A00;
  if (!qword_280882A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882A00);
  }

  return result;
}

unint64_t sub_2722D6D04()
{
  result = qword_280882A08;
  if (!qword_280882A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882A08);
  }

  return result;
}

void __swiftcall AVSConfig.init()(VoiceActions::AVSConfig *__return_ptr retstr)
{
  retstr->rejectEnrollmentThreshold = -25.0;
  *&retstr->minEnrollmentsBeforeRejecting = xmmword_2723836E0;
  *&retstr->maxDuration = xmmword_2723836F0;
  *&retstr->streamingMinimumSilenceFrames = xmmword_272383700;
  retstr->streamingSpeechThreshold = 0.44;
  *&retstr->streamingMinDuration = xmmword_272383710;
  *&retstr->enrollMinimumSilenceFrames = xmmword_272383700;
  retstr->enrollSpeechThreshold = 0.44;
  *&retstr->enrollMinDuration = xmmword_272383720;
  retstr->maxSamplesPerEnrollment = 160000;
}

Swift::Void __swiftcall AVSConfig.setDetectionParams(rejectEnrollmentThreshold:minDuration:maxDuration:)(Swift::Float rejectEnrollmentThreshold, Swift::Int minDuration, Swift::Int maxDuration)
{
  *v3 = rejectEnrollmentThreshold;
  *(v3 + 16) = minDuration;
  *(v3 + 24) = maxDuration;
}

uint64_t sub_2722D6F24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2722D6F44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_2722D6FA4(uint64_t a1, unint64_t a2)
{
  *&v21 = 32;
  *(&v21 + 1) = 0xE100000000000000;
  v20[2] = &v21;

  v5 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, v20, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v24 = MEMORY[0x277D84F90];
    sub_27220056C(0, v6, 0);
    v7 = v24;
    sub_272260218();
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v21 = *(v8 - 3);
      v22 = v9;
      v23 = v10;
      v11 = sub_2723780CC();
      v24 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v11;
        v17 = v12;
        sub_27220056C((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v11 = v16;
        v7 = v24;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *&v21 = v7;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v18 = sub_2723777CC();

  return v18;
}

uint64_t sub_2722D71AC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722D71F0(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float sub_2722D72A0()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_gain;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2722D72E8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_gain);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_2722D73E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_asrStringMatchingStrategy;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2722D749C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_callDelegateOnAsrMismatch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722D74E0(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_callDelegateOnAsrMismatch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722D75D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_debugInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v11 = objc_allocWithZone(v7);
  v12 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel] = 0;
  v13 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel] = 0;
  v14 = &v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_previousKeywordTime] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelays] = MEMORY[0x277D84F90];
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayMax] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayMin] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayAvg] = 0;
  v15 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_asrStringMatchingStrategy;
  type metadata accessor for VAStringMatchingStrategy(0);
  sub_272234394(v29);
  *&v11[v15] = static VAStringMatchingStrategy.build(name:)(v29);
  v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_callDelegateOnAsrMismatch] = 1;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_debugInfo] = 0;
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (result)
  {
    *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_audioFormat16k] = result;
    *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet] = MEMORY[0x277D84F90];
    *&v11[v12] = a3;

    *&v11[v13] = a4;

    sub_27221629C(a6, v29);
    swift_beginAccess();
    sub_2722DD7C8(v29, v14);
    v17 = swift_endAccess();
    v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_vadGated] = a2 & 1;
    v18 = (*((*MEMORY[0x277D85000] & *a5) + 0x118))(v17);
    if (v18)
    {
      v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass] = *(v18 + 34);
      v19 = *(v18 + 36);
    }

    else
    {
      v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass] = 0;
      v19 = 1.0;
    }

    *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_gain] = v19;
    sub_2721F07F4(a7, &v27, &qword_2808821C8, &qword_272386260);
    if (v28)
    {
      sub_2721F41B4(&v27, v29);
    }

    else
    {
      v20 = type metadata accessor for VARuntimeParametersFactoryDummy();
      v21 = sub_2722043D8();
      v29[3] = v20;
      v29[4] = &protocol witness table for VARuntimeParametersFactoryDummy;
      v29[0] = v21;
      if (v28)
      {
        sub_2721F40F0(&v27, &qword_2808821C8, &qword_272386260);
      }
    }

    v22 = sub_272335390(a1, a5, v29);

    sub_2721F40F0(a7, &qword_2808821C8, &qword_272386260);
    sub_2722039C8(a6);
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VAFlexibleKeywordSpotter.init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel) = 0;
  v12 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel) = 0;
  v13 = v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_previousKeywordTime) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelays) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayMax) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayMin) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayAvg) = 0;
  v14 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_asrStringMatchingStrategy;
  type metadata accessor for VAStringMatchingStrategy(0);
  sub_272234394(v28);
  *(v7 + v14) = static VAStringMatchingStrategy.build(name:)(v28);
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_callDelegateOnAsrMismatch) = 1;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_debugInfo) = 0;
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (result)
  {
    *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_audioFormat16k) = result;
    *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet) = MEMORY[0x277D84F90];
    *(v7 + v11) = a3;

    *(v7 + v12) = a4;

    sub_27221629C(a6, v28);
    swift_beginAccess();
    sub_2722DD7C8(v28, v13);
    v16 = swift_endAccess();
    *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_vadGated) = a2 & 1;
    v17 = (*((*MEMORY[0x277D85000] & *a5) + 0x118))(v16);
    if (v17)
    {
      *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass) = *(v17 + 34);
      v18 = *(v17 + 36);
    }

    else
    {
      *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass) = 0;
      v18 = 1.0;
    }

    *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_gain) = v18;
    sub_2721F07F4(a7, &v26, &qword_2808821C8, &qword_272386260);
    if (v27)
    {
      sub_2721F41B4(&v26, v28);
    }

    else
    {
      v19 = type metadata accessor for VARuntimeParametersFactoryDummy();
      v20 = sub_2722043D8();
      v28[3] = v19;
      v28[4] = &protocol witness table for VARuntimeParametersFactoryDummy;
      v28[0] = v20;
      if (v27)
      {
        sub_2721F40F0(&v26, &qword_2808821C8, &qword_272386260);
      }
    }

    v21 = sub_272335390(a1, a5, v28);

    sub_2721F40F0(a7, &qword_2808821C8, &qword_272386260);
    sub_2722039C8(a6);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722D7D28()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x168))(&v5);
  if (v6)
  {
    sub_2721F41B4(&v5, v7);
    v1 = v8;
    v2 = v9;
    sub_27220300C(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_2722039C8(v7);
  }

  else
  {
    sub_2721F40F0(&v5, &qword_2808821C8, &qword_272386260);
    sub_2722032B4();
    swift_allocError();
    *v4 = 0xD00000000000001ALL;
    v4[1] = 0x800000027238EC90;
    return swift_willThrow();
  }
}

unint64_t sub_2722D7E60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v60 - v5;
  v6 = type metadata accessor for VARuntimeParameters(0);
  v7 = MEMORY[0x28223BE20](v6);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  v11 = sub_27237728C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2722C389C();
  v16 = *(v12 + 16);
  v69 = v11;
  v16(v14, v15, v11);
  sub_272216374(a1, v10);
  v17 = sub_27237725C();
  v18 = sub_272377EAC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v61 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v60 = a1;
    v22 = v21;
    v66[0] = v21;
    *v20 = 136315138;
    sub_2722DDB30(&qword_2808821A8, type metadata accessor for VARuntimeParameters, &protocol conformance descriptor for VARuntimeParameters);
    v23 = sub_27237862C();
    v25 = v24;
    sub_272216BD8(v10);
    v26 = sub_2721FFD04(v23, v25, v66);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_2721E4000, v17, v18, "start Flexibile spotter: %s", v20, 0xCu);
    sub_2722039C8(v22);
    v27 = v22;
    a1 = v60;
    MEMORY[0x2743C69C0](v27, -1, -1);
    v28 = v20;
    v2 = v61;
    MEMORY[0x2743C69C0](v28, -1, -1);
  }

  else
  {

    sub_272216BD8(v10);
  }

  (*(v12 + 8))(v14, v69);
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v53 = 0x80000002723888A0;
    sub_2722032B4();
    swift_allocError();
    v55 = 0xD00000000000006DLL;
LABEL_16:
    *v54 = v55;
    v54[1] = v53;
    swift_willThrow();
    return v53;
  }

  if (*(v2 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_vadGated) == 1)
  {
    if (*(v2 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel))
    {
      type metadata accessor for VAFeatureExtractingEncoder();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        if (!*(v29 + 64))
        {
          v53 = 0x800000027238B730;
          sub_2722032B4();
          swift_allocError();
          v55 = 0xD00000000000003BLL;
          goto LABEL_16;
        }
      }
    }
  }

  v30 = MEMORY[0x277D85000];
  v31 = (*((*MEMORY[0x277D85000] & *v2) + 0x78))();
  if (!v31)
  {
    v53 = 0x8000000272388910;
    sub_2722032B4();
    swift_allocError();
    v55 = 0xD000000000000011;
    goto LABEL_16;
  }

  v32 = v31;
  type metadata accessor for VARequestContext(0);
  v33 = v63;
  sub_272216374(a1, v63);
  v34 = v32;
  v35 = sub_272232E00(v34, v33);
  (*((*v30 & *v2) + 0x128))(v35);
  v36 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider;
  swift_beginAccess();
  sub_2721F07F4(v2 + v36, &v64, &qword_280882A88, &qword_2723837B0);
  if (!v65)
  {
    sub_2721F40F0(&v64, &qword_280882A88, &qword_2723837B0);
    v53 = 0x800000027238ECB0;
    sub_2722032B4();
    swift_allocError();
    *v57 = 0xD000000000000015;
    v57[1] = 0x800000027238ECB0;
    swift_willThrow();

    return v53;
  }

  sub_2721F41B4(&v64, v66);
  v37 = a1;
  v38 = v67;
  v39 = v68;
  sub_27220300C(v66, v67);
  v40 = (*(v39 + 8))(v2, &protocol witness table for VAKeywordSpotterBase, v37, v38, v39);
  v41 = v2;
  (*((*v30 & *v2) + 0x158))(v40);
  v42 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet;
  swift_beginAccess();
  *(v2 + v42) = MEMORY[0x277D84F90];

  v44 = (*((*v30 & *v2) + 0x120))(v43);
  if (!v44)
  {
    v53 = 0x800000027238B430;
    sub_2722032B4();
    swift_allocError();
    *v58 = 0xD00000000000001DLL;
    v58[1] = 0x800000027238B430;
    swift_willThrow();
LABEL_21:

    sub_2722039C8(v66);
    return v53;
  }

  v45 = v44;
  v46 = sub_272377C3C();
  v47 = v62;
  (*(*(v46 - 8) + 56))(v62, 1, 1, v46);
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v45;
  v49[5] = v48;

  v50 = sub_272262CC0(0, 0, v47, &unk_2723837C0, v49);
  v51 = (*((*v30 & *v41) + 0x140))(v50);
  v52 = (*((*v30 & *v41) + 0x138))(v51);
  if (!v52)
  {
    v53 = 0x8000000272388930;
    sub_2722032B4();
    swift_allocError();
    *v59 = 0xD00000000000001DLL;
    v59[1] = 0x8000000272388930;
    swift_willThrow();

    goto LABEL_21;
  }

  v53 = v52;

  sub_2722039C8(v66);
  return v53;
}

uint64_t sub_2722D86F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  v6 = sub_27237728C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for VARuntimeParameters(0);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722D8814, 0, 0);
}

uint64_t sub_2722D8814()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = (**(v0 + 72) + 312);
  v4 = *v3;
  (*v3)();
  v5 = *(v1 + *(v2 + 116));
  sub_272216BD8(v1);
  if (v5 == 1)
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = sub_2722C389C();
    *(v0 + 160) = v9;
    v10 = *(v8 + 16);
    *(v0 + 168) = v10;
    *(v0 + 176) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v7);
    v11 = sub_27237725C();
    v12 = sub_272377E6C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2721E4000, v11, v12, "prepareSpeechAPI() in listeningTask thread start", v13, 2u);
      MEMORY[0x2743C69C0](v13, -1, -1);
    }

    v14 = *(v0 + 128);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);

    v17 = *(v16 + 8);
    *(v0 + 184) = v17;
    v17(v14, v15);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 192) = Strong;
    if (Strong)
    {
      v19 = Strong;
      v4();
      v20 = *((*MEMORY[0x277D85000] & *v19) + 0x268);
      v44 = (v20 + *v20);
      v21 = swift_task_alloc();
      *(v0 + 200) = v21;
      *v21 = v0;
      v21[1] = sub_2722D8D58;
      v22 = *(v0 + 144);

      return v44(v22);
    }

    (*(v0 + 168))(*(v0 + 120), *(v0 + 160), *(v0 + 88));
    v24 = sub_27237725C();
    v25 = sub_272377E6C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2721E4000, v24, v25, "prepareSpeechAPI() in listeningTask thread finish", v26, 2u);
      MEMORY[0x2743C69C0](v26, -1, -1);
    }

    v27 = *(v0 + 184);
    v28 = *(v0 + 120);
    v29 = *(v0 + 88);

    v27(v28, v29);
  }

  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = v30;
  if (v30)
  {
    v31 = swift_task_alloc();
    *(v0 + 224) = v31;
    *v31 = v0;
    v31[1] = sub_2722D9164;

    return sub_2722DDB78();
  }

  else
  {
    v32 = *(v0 + 112);
    v33 = *(v0 + 88);
    v34 = *(v0 + 96);
    v35 = sub_2722C389C();
    (*(v34 + 16))(v32, v35, v33);
    v36 = sub_27237725C();
    v37 = sub_272377E6C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2721E4000, v36, v37, "startProcessingAudio() is done", v38, 2u);
      MEMORY[0x2743C69C0](v38, -1, -1);
    }

    v39 = *(v0 + 112);
    v40 = *(v0 + 88);
    v41 = *(v0 + 96);
    v42 = *(v0 + 64);

    (*(v41 + 8))(v39, v40);
    *v42 = 1;

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_2722D8D58()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  sub_272216BD8(*(v2 + 144));

  if (v0)
  {
    v4 = sub_2722D95E0;
  }

  else
  {
    v4 = sub_2722D8EA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722D8EA4()
{
  (*(v0 + 168))(*(v0 + 120), *(v0 + 160), *(v0 + 88));
  v1 = sub_27237725C();
  v2 = sub_272377E6C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2721E4000, v1, v2, "prepareSpeechAPI() in listeningTask thread finish", v3, 2u);
    MEMORY[0x2743C69C0](v3, -1, -1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);

  v4(v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = sub_2722D9164;

    return sub_2722DDB78();
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    v13 = sub_2722C389C();
    (*(v12 + 16))(v10, v13, v11);
    v14 = sub_27237725C();
    v15 = sub_272377E6C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2721E4000, v14, v15, "startProcessingAudio() is done", v16, 2u);
      MEMORY[0x2743C69C0](v16, -1, -1);
    }

    v17 = *(v0 + 112);
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v20 = *(v0 + 64);

    (*(v19 + 8))(v17, v18);
    *v20 = 1;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2722D9164()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_2722D93F8;
  }

  else
  {

    v3 = sub_2722D9280;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722D9280()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = sub_2722C389C();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_27237725C();
  v6 = sub_272377E6C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "startProcessingAudio() is done", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[8];

  (*(v10 + 8))(v8, v9);
  *v11 = 1;

  v12 = v0[1];

  return v12();
}

uint64_t sub_2722D93F8()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v13 = *(v0 + 104);
  v14 = v7;
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);

  (*(v15 + 8))(v13, v16);
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2722D95E0()
{
  v1 = v0[26];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v13 = v0[13];
  v14 = v7;
  v16 = v0[11];
  v15 = v0[12];

  (*(v15 + 8))(v13, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2722D97C0()
{

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider, &qword_280882A88, &qword_2723837B0);
}

id VAFlexibleKeywordSpotter.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2722C389C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_27237725C();
  v8 = sub_272377E7C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "deInit FlexibleSpotter", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = type metadata accessor for VAFlexibleKeywordSpotter();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

char *sub_2722D9ACC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_27222B82C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[2 * v7 + 32], v6 + 32, 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2722D9BB8(void *a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet;
  swift_beginAccess();
  *(v1 + v3) = MEMORY[0x277D84F90];

  *(v1 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel) = 0;

  *(v1 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel) = 0;

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v4 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider;
  swift_beginAccess();
  sub_2722DD7C8(v6, v1 + v4);
  swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0x158))(0);
  return sub_272338DD4(a1);
}

void sub_2722D9CD8(void *a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x3E0);
  if (v5() != 1.0)
  {
    v6 = v5();
    sub_272254228(v6);
  }

  sub_272337680(a1, a2);
}

uint64_t sub_2722D9D90(int64_t a1)
{
  v2 = v1;
  v307 = a1;
  v292 = sub_272376D5C();
  v291 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v290 = &v269 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_272376DFC();
  MEMORY[0x28223BE20](v4 - 8);
  v288 = &v269 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v6 - 8);
  v289 = &v269 - v7;
  v8 = sub_27237728C();
  v306 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v293 = &v269 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v287 = &v269 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v317 = &v269 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v269 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v318 = &v269 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v316 = &v269 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v295 = &v269 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v313 = &v269 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v296 = &v269 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v310 = &v269 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v294 = &v269 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v309 = &v269 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v312 = &v269 - v34;
  MEMORY[0x28223BE20](v33);
  v315 = &v269 - v35;
  v36 = sub_272376EBC();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v269 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for VARuntimeParameters(0);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v269 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v269 - v45;
  v47 = MEMORY[0x277D85000];
  v48 = (*((*MEMORY[0x277D85000] & *v1) + 0x120))(v44);
  if (!v48)
  {
    v73 = sub_2722C389C();
    v74 = v306;
    v75 = v319;
    (*(v306 + 16))(v319, v73, v8);
    v76 = sub_27237725C();
    v77 = sub_272377E8C();
    v78 = v8;
    v79 = v74;
    if (os_log_type_enabled(v76, v77))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2721E4000, v76, v77, "Did not have runtimeParameters for second pass in keywordSpotterShouldTriggerKeyword", v80, 2u);
      MEMORY[0x2743C69C0](v80, -1, -1);
    }

    return (*(v79 + 8))(v75, v78);
  }

  v303 = v8;
  (*(*v48 + 312))(v48);

  v49 = sub_2722164B8(v43, v46);
  v50 = v47;
  v51 = *((*v47 & *v1) + 0x3F8);
  v305 = (*v47 & *v1) + 1016;
  v304 = v51;
  v52 = v51(v49);
  (*(v37 + 16))(v39, v46 + *(v40 + 108), v36);
  (*(*v52 + 264))(v39);

  v53 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet;
  swift_beginAccess();
  *(v2 + v53) = MEMORY[0x277D84F90];

  v55 = v307;
  v56 = (*(*v307 + 208))(&v321, v54);
  v326 = v321;
  v327 = v322;
  v328 = v323;
  v329 = v324;
  v330 = v325;
  v57 = *(&v321 + 1);
  if (!*(&v321 + 1))
  {
    v82 = sub_2722C389C();
    v83 = v306;
    v84 = v318;
    v85 = v303;
    (*(v306 + 16))(v318, v82, v303);
    v86 = sub_27237725C();
    v87 = sub_272377E8C();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2721E4000, v86, v87, "Did not actually have a keyword in keywordSpotterShouldTriggerKeyword", v88, 2u);
      MEMORY[0x2743C69C0](v88, -1, -1);
    }

    (*(v83 + 8))(v84, v85);
    return sub_272216BD8(v46);
  }

  v58 = v40;
  v59 = v326;
  v60 = *&v327;
  v61 = (*((*v50 & *v2) + 0x3C8))(v56);
  v62 = v303;
  if ((v61 & 1) == 0)
  {
    sub_2721F40F0(&v326, &qword_2808819E0, &qword_27237D890);
    sub_27233A25C(v55);
    return sub_272216BD8(v46);
  }

  v280 = v59;
  v63 = *(*v55 + 128);
  v64 = *v55 + 128;
  v279._rawValue = v63();
  if (!v279._rawValue)
  {
    sub_2721F40F0(&v326, &qword_2808819E0, &qword_27237D890);
    v89 = sub_2722C389C();
    v90 = v316;
    (*(v306 + 16))(v316, v89, v62);
    v91 = sub_27237725C();
    v92 = sub_272377E8C();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_2721E4000, v91, v92, "Did not have audioBytes for second pass in keywordSpotterShouldTriggerKeyword", v93, 2u);
      MEMORY[0x2743C69C0](v93, -1, -1);
    }

    (*(v306 + 8))(v90, v62);
    return sub_272216BD8(v46);
  }

  v281 = v57;

  v275 = mach_absolute_time();
  v65 = swift_allocObject();
  sub_2722A2540(v65 + 16);
  v66 = swift_allocObject();
  v278 = v66;
  *(v66 + 16) = 0;
  v276 = (v66 + 16);
  v67 = *(v46 + 121) == 1;
  v274 = v64;
  v311 = v58;
  if (v67)
  {
    v68 = *(v46 + 80);
    v69 = v280;
    if (!*(v68 + 16))
    {
      goto LABEL_24;
    }

    v70 = sub_27220038C(v280, v281);
    if ((v71 & 1) == 0)
    {
      goto LABEL_24;
    }

    v72 = *(*(v68 + 56) + 8 * v70);
  }

  else
  {
    v94 = VARuntimeParameters.asrMatchToKeywords()();
    v95 = v94;
    v69 = *(v94 + 2);
    if (!v69)
    {

      v72 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

    v72 = sub_2722702A8(*(v94 + 2), 0);
    v96 = sub_2722DD9D8(&v321, (v72 + 32), v69, v95);
    sub_272270484(v321);
    if (v96 != v69)
    {
      __break(1u);
LABEL_24:
      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_27237AF80;
      *(v72 + 32) = v69;
      *(v72 + 40) = v281;
    }
  }

LABEL_26:
  v273 = v63;

  v97 = mach_absolute_time();
  isa = convert(int16AudioBytes:)(v279).super.super.isa;
  v99 = v72;
  (*((*MEMORY[0x277D85000] & *v2) + 0x260))(&v321, isa, v72, v46);
  v300 = v2;
  v285 = v72;
  v277 = v65;
  v272 = 0;

  v100 = *(&v321 + 1);
  v101 = v322;
  v102 = v323;
  v103 = *(v65 + 32);
  v299 = v321;
  *(v65 + 16) = v321;
  *(v65 + 24) = v100;
  *(v65 + 32) = v101;
  *(v65 + 48) = v102;
  v308 = v101;

  v314 = v100;

  type metadata accessor for VARequestContext(0);
  v104 = mach_absolute_time();
  v105 = v104 >= v97;
  v106 = v104 - v97;
  if (!v105)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v100 = v99;
  v107 = sub_2722310BC(v106);
  v108 = sub_2722C389C();
  v109 = *(v306 + 16);
  v110 = v315;
  v317 = v108;
  v319 = (v306 + 16);
  v318 = v109;
  (v109)(v315);
  v111 = sub_27237725C();
  v112 = sub_272377E6C();
  v113 = os_log_type_enabled(v111, v112);
  v114 = v307;
  if (v113)
  {
    v115 = swift_slowAlloc();
    *v115 = 134217984;
    *(v115 + 4) = v107;
    _os_log_impl(&dword_2721E4000, v111, v112, "Second pass took %f secs", v115, 0xCu);
    MEMORY[0x2743C69C0](v115, -1, -1);
  }

  v116 = *(v306 + 8);
  v316 = (v306 + 8);
  v315 = v116;
  (v116)(v110, v62);
  v117 = *(*v114 + 504);
  v271 = *v114 + 504;
  v270 = v117;
  v117(1);
  (*(*v114 + 552))(COERCE_DOUBLE(*&v107), 0);
  v118 = v314;
  v119 = v313;
  if (!v314)
  {

    v143 = v281;

    (v318)(v119, v317, v62);

    v144 = sub_27237725C();
    v145 = sub_272377E6C();
    sub_2721F40F0(&v326, &qword_2808819E0, &qword_27237D890);
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v321 = v147;
      *v146 = 136315138;

      v148 = sub_2721FFD04(v280, v143, &v321);

      *(v146 + 4) = v148;
      v114 = v307;
      _os_log_impl(&dword_2721E4000, v144, v145, "Checker failed for keyword %s", v146, 0xCu);
      sub_2722039C8(v147);
      MEMORY[0x2743C69C0](v147, -1, -1);
      v149 = v146;
      v100 = v285;
      MEMORY[0x2743C69C0](v149, -1, -1);

      v150 = v313;
    }

    else
    {

      v150 = v119;
    }

    (v315)(v150, v62);
    rawValue = v279._rawValue;
    v209 = v275;
    v210 = v276;
    *v276 = 1;
    goto LABEL_83;
  }

  v120 = *(*v114 + 480);

  v120(v299, v118);
  v121 = v308;
  *&v321 = v308;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v122 = sub_2723777CC();
  result = (*(*v114 + 528))(v122);
  v123 = *(v46 + *(v311 + 112));
  if ((v123 & 0x8000000000000000) == 0)
  {
    v269 = isa;
    v124 = *(v121 + 16);
    if (v124 >= v123)
    {
      v124 = v123;
    }

    v125 = 2 * v124;
    if (v123)
    {
      v126 = v125 + 1;
    }

    else
    {
      v126 = 1;
    }

    v127 = sub_2722E0970(v121 + 32, 0, v126);
    swift_unknownObjectRelease();
    v128 = v312;
    (v318)(v312, v317, v62);
    v100 = v285;

    v129 = sub_27237725C();
    v130 = sub_272377E8C();

    v131 = os_log_type_enabled(v129, v130);
    v298 = v127;
    if (v131)
    {
      v132 = swift_slowAlloc();
      LODWORD(v313) = v130;
      v133 = v132;
      v134 = swift_slowAlloc();
      *&v321 = v134;
      *v133 = 136315394;
      v135 = MEMORY[0x2743C4C60](v100, MEMORY[0x277D837D0]);
      v137 = sub_2721FFD04(v135, v136, &v321);

      *(v133 + 4) = v137;
      v2 = v300;
      *(v133 + 12) = 2080;
      v138 = sub_272377D9C();
      v140 = sub_2721FFD04(v138, v139, &v321);
      v118 = v314;

      *(v133 + 14) = v140;
      _os_log_impl(&dword_2721E4000, v129, v313, "ASR string matching looking for needles: %s in haystacks: %s", v133, 0x16u);
      swift_arrayDestroy();
      v141 = v134;
      v114 = v307;
      MEMORY[0x2743C69C0](v141, -1, -1);
      MEMORY[0x2743C69C0](v133, -1, -1);

      v142 = v312;
    }

    else
    {

      v142 = v128;
    }

    (v315)(v142, v62);
    v103 = v296;
    v152 = v310;
    v153 = v309;
    v283 = *(v100 + 16);
    if (v283)
    {
      v154 = 0;
      v97 = v298;
      v302 = v298 + 56;
      v282 = v100 + 32;
      *&v151 = 136315394;
      v297 = v151;
      v284 = v46;
      while (v154 < *(v100 + 16))
      {
        v155 = (v282 + 16 * v154);
        v156 = v155[1];
        v311 = *v155;
        v286 = v154 + 1;
        v157 = 1 << *(v97 + 32);
        if (v157 < 64)
        {
          v158 = ~(-1 << v157);
        }

        else
        {
          v158 = -1;
        }

        v100 = v158 & *(v97 + 56);
        v159 = (v157 + 63) >> 6;

        v308 = v156;

        v160 = 0;
        for (i = v159; ; v159 = i)
        {
          if (!v100)
          {
            v103 = v308;
            while (1)
            {
              v46 = v160 + 1;
              if (__OFADD__(v160, 1))
              {
                break;
              }

              if (v46 >= v159)
              {

                v46 = v284;
                v114 = v307;
                v100 = v285;
                v103 = v296;
                goto LABEL_45;
              }

              v100 = *(v302 + 8 * v46);
              ++v160;
              if (v100)
              {
                goto LABEL_58;
              }
            }

            __break(1u);
            goto LABEL_110;
          }

          v46 = v160;
          v103 = v308;
LABEL_58:
          v161 = (*(v97 + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v100)))));
          v162 = v161[1];
          v312 = *v161;
          (v318)(v153, v317, v62);

          v313 = v162;

          v163 = v153;
          v164 = sub_27237725C();
          v165 = sub_272377E6C();

          if (os_log_type_enabled(v164, v165))
          {
            v166 = swift_slowAlloc();
            v167 = swift_slowAlloc();
            *&v321 = v167;
            *v166 = v297;
            v168 = v311;
            *(v166 + 4) = sub_2721FFD04(v311, v103, &v321);
            *(v166 + 12) = 2080;
            *(v166 + 14) = sub_2721FFD04(v299, v118, &v321);
            _os_log_impl(&dword_2721E4000, v164, v165, "Looking for %s in %s", v166, 0x16u);
            swift_arrayDestroy();
            v169 = v167;
            v62 = v303;
            MEMORY[0x2743C69C0](v169, -1, -1);
            v170 = v166;
            v152 = v310;
            MEMORY[0x2743C69C0](v170, -1, -1);

            v171 = (v315)(v163, v62);
          }

          else
          {

            v171 = (v315)(v163, v62);
            v168 = v311;
          }

          v2 = v300;
          v172 = v304(v171);
          v173 = (*(*v172 + 280))(v168, v103, v312, v313);

          if (v173)
          {
            break;
          }

          v100 &= v100 - 1;
          (v318)(v152, v317, v62);
          v118 = v314;

          v174 = sub_27237725C();
          v175 = sub_272377E7C();

          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            *&v321 = v177;
            *v176 = v297;
            *(v176 + 4) = sub_2721FFD04(v311, v103, &v321);
            *(v176 + 12) = 2080;
            *(v176 + 14) = sub_2721FFD04(v299, v314, &v321);
            _os_log_impl(&dword_2721E4000, v174, v175, "Checker did not match keyword %s in %s", v176, 0x16u);
            swift_arrayDestroy();
            v178 = v177;
            v152 = v310;
            MEMORY[0x2743C69C0](v178, -1, -1);
            v179 = v176;
            v118 = v314;
            MEMORY[0x2743C69C0](v179, -1, -1);
          }

          (v315)(v152, v62);
          v160 = v46;
          v153 = v309;
          v97 = v298;
        }

        v180 = v294;
        (v318)(v294, v317, v62);
        v181 = v281;

        v118 = v314;

        v182 = sub_27237725C();
        v183 = sub_272377E6C();

        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          *&v321 = v185;
          *v184 = v297;
          *(v184 + 4) = sub_2721FFD04(v280, v181, &v321);
          *(v184 + 12) = 2080;
          *(v184 + 14) = sub_2721FFD04(v299, v314, &v321);
          _os_log_impl(&dword_2721E4000, v182, v183, "Checker matched for keyword %s, got %s", v184, 0x16u);
          swift_arrayDestroy();
          v186 = v185;
          v152 = v310;
          MEMORY[0x2743C69C0](v186, -1, -1);
          v187 = v184;
          v118 = v314;
          MEMORY[0x2743C69C0](v187, -1, -1);
        }

        (v315)(v180, v62);
        v46 = v284;
        v100 = v285;
        v103 = v296;
        v188 = VARuntimeParameters.asrMatchToKeywords()();
        if (*(v188 + 2))
        {
          v189 = sub_27220038C(v311, v308);
          v191 = v190;

          if (v191)
          {
            v192 = (*(v188 + 7) + 16 * v189);
            v194 = *v192;
            v193 = v192[1];

            v195 = v193;
            v196 = v194;
            v100 = v285;
          }

          else
          {

            v196 = 0;
            v195 = 0;
          }

          v114 = v307;
          v103 = v296;
        }

        else
        {

          v196 = 0;
          v195 = 0;
          v114 = v307;
        }

        (*(*v114 + 576))(v196, v195);
        v270(0);
        v97 = v298;

        v153 = v309;
LABEL_45:
        v154 = v286;
        if (v286 == v283)
        {
          goto LABEL_73;
        }
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_73:

    v198 = (*(*v114 + 496))(v197);
    v199 = v269;
    if (v198 == 2 || (v198 & 1) != 0)
    {
      (v318)(v103, v317, v62);
      v200 = v281;

      v201 = sub_27237725C();
      v202 = sub_272377E8C();

      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *&v321 = v204;
        *v203 = 136315394;
        v205 = sub_2721FFD04(v280, v200, &v321);

        *(v203 + 4) = v205;
        *(v203 + 12) = 2080;
        v206 = sub_2721FFD04(v299, v118, &v321);

        *(v203 + 14) = v206;
        _os_log_impl(&dword_2721E4000, v201, v202, "Checker mismatch for keyword %s, got %s", v203, 0x16u);
        swift_arrayDestroy();
        v114 = v307;
        MEMORY[0x2743C69C0](v204, -1, -1);
        MEMORY[0x2743C69C0](v203, -1, -1);

        v207 = v296;
      }

      else
      {

        v207 = v103;
      }

      (v315)(v207, v62);
      v100 = v285;
    }

    else
    {
    }

    v210 = v276;
    rawValue = v279._rawValue;
    v209 = v275;
LABEL_83:
    sub_2722DC840(v209, rawValue, v278, v277);

    v211 = swift_beginAccess();
    if (*v210 == 1)
    {

      sub_2721F40F0(&v326, &qword_2808819E0, &qword_27237D890);
LABEL_108:
      sub_272216BD8(v46);
    }

    v212 = MEMORY[0x277D85000];
    v213 = (*((*MEMORY[0x277D85000] & *v2) + 0x428))(v211);
    if (!v213)
    {
      sub_2721F40F0(&v326, &qword_2808819E0, &qword_27237D890);

LABEL_101:
      v256 = v295;
      if (((*((*MEMORY[0x277D85000] & *v300) + 0x410))(v239) & 1) != 0 || (v257 = (*(*v114 + 496))(), v257 == 2) || (v257 & 1) == 0)
      {
        sub_27233A25C(v114);
      }

      else
      {
        v258 = sub_2722C389C();
        v259 = v306;
        (*(v306 + 16))(v256, v258, v62);

        v260 = sub_27237725C();
        v261 = sub_272377E6C();

        if (os_log_type_enabled(v260, v261))
        {
          v262 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v264 = v114;
          v265 = v263;
          *&v321 = v263;
          *v262 = 136315138;
          v320 = v264;
          type metadata accessor for VAInstrumentedKeywordResult(0);
          sub_2722DDB30(&qword_280882A98, type metadata accessor for VAInstrumentedKeywordResult, &protocol conformance descriptor for VAKeywordResult);
          v266 = sub_27237862C();
          v268 = sub_2721FFD04(v266, v267, &v321);

          *(v262 + 4) = v268;
          _os_log_impl(&dword_2721E4000, v260, v261, "ASR mismatch, will not call delegate for %s", v262, 0xCu);
          sub_2722039C8(v265);
          MEMORY[0x2743C69C0](v265, -1, -1);
          MEMORY[0x2743C69C0](v262, -1, -1);
        }

        (*(v259 + 8))(v256, v62);
      }

      goto LABEL_108;
    }

    v103 = v213;
    type metadata accessor for VANRDebugEvent(0);
    v214 = v114;
    v215 = sub_2723129A8();
    *&v321 = v100;
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_272203B18();
    v216 = sub_2723777CC();
    v218 = v217;

    v219 = (*(*v215 + 216))(v216, v218);
    v220 = (*(*v214 + 520))(v219);
    (*(*v215 + 240))(v220);
    v221 = *(*v215 + 168);
    v222 = v281;

    v223 = v221(v280, v222);
    (*(*v215 + 192))(v223, v60);
    v224 = sub_2721F40F0(&v326, &qword_2808819E0, &qword_27237D890);
    v225 = (*(*v214 + 496))(v224);
    v226 = (*(*v215 + 288))((v225 != 2) & (v225 ^ 1u));
    (v273)(v226);
    v227 = v289;
    v100 = v272;
    (*((*v212 & *v2) + 0x488))();
    if (v100)
    {

      v228 = sub_2722C389C();
      v229 = v287;
      (*(v306 + 16))(v287, v228, v62);
      v230 = v100;
      v231 = sub_27237725C();
      v232 = sub_272377E8C();

      v233 = os_log_type_enabled(v231, v232);
      v2 = v293;
      if (v233)
      {
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        *v234 = 138412290;
        v236 = v100;
        v237 = _swift_stdlib_bridgeErrorToNSError();
        *(v234 + 4) = v237;
        *v235 = v237;
        _os_log_impl(&dword_2721E4000, v231, v232, "Could not save debug audio: %@", v234, 0xCu);
        sub_2721F40F0(v235, &qword_280881A40, &unk_27237D620);
        MEMORY[0x2743C69C0](v235, -1, -1);
        v238 = v234;
        v229 = v287;
        MEMORY[0x2743C69C0](v238, -1, -1);
      }

      else
      {
      }

      v240 = v288;
      (*(v306 + 8))(v229, v62);
      v100 = 0;
    }

    else
    {

      (*(*v215 + 264))(v227);
      v2 = v293;
      v240 = v288;
    }

    sub_272376DEC();
    (*(*v215 + 144))(v240);
    v241 = *(*v103 + 152);

    v97 = v241(&v321);
    v243 = v242;
    MEMORY[0x2743C4C30]();
    if (*((*v243 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v243 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_94:
      sub_272377B7C();
      v244 = (v97)(&v321, 0);
      v245 = (*(*v103 + 136))(v244);
      v246 = sub_2722DCB08(20, v245);
      (*(*v103 + 144))(v246);
      v247 = v290;
      sub_272318968();
      (*(*v103 + 312))(v247);
      if (v100)
      {
        (*(v291 + 8))(v247, v292);
        v248 = sub_2722C389C();
        (*(v306 + 16))(v2, v248, v62);
        v249 = v100;
        v250 = sub_27237725C();
        v251 = sub_272377E8C();

        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          *v252 = 138412290;
          v254 = v100;
          v255 = _swift_stdlib_bridgeErrorToNSError();
          *(v252 + 4) = v255;
          *v253 = v255;
          _os_log_impl(&dword_2721E4000, v250, v251, "Could not save debugInfo: %@", v252, 0xCu);
          sub_2721F40F0(v253, &qword_280881A40, &unk_27237D620);
          MEMORY[0x2743C69C0](v253, -1, -1);
          MEMORY[0x2743C69C0](v252, -1, -1);
        }

        else
        {
        }

        v239 = (*(v306 + 8))(v2, v62);
      }

      else
      {
        (*(v291 + 8))(v247, v292);
      }

      v114 = v307;
      goto LABEL_101;
    }

LABEL_112:
    sub_272377B2C();
    goto LABEL_94;
  }

  __break(1u);
  return result;
}

unint64_t sub_2722DC840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VARequestContext(0);
  v12 = mach_absolute_time();
  v13 = v12 >= a1;
  result = v12 - a1;
  if (v13)
  {
    v15 = sub_2722310BC(result);
    v16 = sub_2722C389C();
    (*(v9 + 16))(v11, v16, v8);

    v17 = sub_27237725C();
    v18 = sub_272377E6C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 134218754;
      *(v19 + 4) = (*(a2 + 16) / 16000.0);
      *(v19 + 12) = 2048;
      *(v19 + 14) = v15;
      *(v19 + 22) = 1024;
      swift_beginAccess();
      *(v19 + 24) = *(a3 + 16);

      *(v19 + 28) = 2080;
      swift_beginAccess();
      if (*(a4 + 24))
      {
        v21 = *(a4 + 16);
        v22 = *(a4 + 24);
      }

      else
      {
        v22 = 0xE500000000000000;
        v21 = 0x3E6C696E3CLL;
      }

      v23 = sub_2721FFD04(v21, v22, &v25);

      *(v19 + 30) = v23;
      _os_log_impl(&dword_2721E4000, v17, v18, "Second pass for %f secs took %f secs, didFail %{BOOL}d, result %s", v19, 0x26u);
      sub_2722039C8(v20);
      MEMORY[0x2743C69C0](v20, -1, -1);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    else
    {
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722DCB08(int64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    sub_2723783AC();
    sub_27237829C();
    v5 = sub_2723783AC();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (!a1)
  {
LABEL_24:

    return MEMORY[0x277D84F90];
  }

  v17 = MEMORY[0x277D84F90];
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  sub_27237829C();
  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v6 = 0;
    v15 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743C5370](v6, v2);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v7 = *(v2 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_23;
        }
      }

      v9 = v17;
      if (*(v17 + 16) >= v3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2722DD7B4(v17);
          v9 = result;
          v17 = result;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v15 >= *(v9 + 16))
        {
          goto LABEL_39;
        }

        *(v9 + 8 * v15 + 32) = v7;

        sub_27237827C();
        if ((v15 + 1) < v3)
        {
          v11 = v15 + 1;
        }

        else
        {
          v11 = 0;
        }

        v15 = v11;
        v6 = v8;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_27237826C();
        sub_2723782BC();
        sub_2723782CC();
        sub_27237827C();
        ++v6;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }
    }
  }

LABEL_28:
  v15 = 0;
LABEL_29:

  if (!v15)
  {
    return v17;
  }

  v16 = MEMORY[0x277D84F90];
  v12 = *(v17 + 16);
  result = sub_27237829C();
  if (v12 < v15)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v17 + 16);
    if (v13 >= v15 && v13 >= v12)
    {

      sub_2722DD678(v14, v17 + 32, v15, (2 * v12) | 1);
      sub_2722DD678(v17, v17 + 32, 0, (2 * v15) | 1);
      return v16;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_2722DCD90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v75[36] = *MEMORY[0x277D85DE8];
  v3 = sub_27237728C();
  v72 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_272376DFC();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_272376C7C();
  v69 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_272376D5C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v65 = a1;
  if (!a1)
  {
    v53 = v13;
    v54 = sub_2722C389C();
    v55 = v72;
    (*(v72 + 16))(v5, v54, v3);
    v56 = sub_27237725C();
    v57 = sub_272377E8C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2721E4000, v56, v57, "No audio bytes to write", v58, 2u);
      MEMORY[0x2743C69C0](v58, -1, -1);
    }

    (*(v55 + 8))(v5, v3);
    (*(v14 + 56))(v66, 1, 1, v53);
    return;
  }

  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFA0;
  *(inited + 32) = sub_27237782C();
  *(inited + 40) = v20;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1819304813;
  *(inited + 80) = sub_27237782C();
  *(inited + 88) = v21;
  v22 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 16;
  v23 = sub_27237782C();
  v24 = MEMORY[0x277D839B0];
  *(inited + 128) = v23;
  *(inited + 136) = v25;
  *(inited + 168) = v24;
  *(inited + 144) = 0;
  *(inited + 176) = sub_27237782C();
  *(inited + 184) = v26;
  *(inited + 216) = MEMORY[0x277D839F8];
  *(inited + 192) = 0x40CF400000000000;
  *(inited + 224) = sub_27237782C();
  *(inited + 232) = v27;
  *(inited + 264) = v22;
  *(inited + 240) = 1;
  v72 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v28 = NSTemporaryDirectory();
  sub_27237782C();

  v63 = v14;
  v64 = v13;
  v30 = *(v14 + 56);
  v29 = v14 + 56;
  v62 = v30;
  v30(v12, 1, 1, v13);
  (*(v69 + 104))(v68, *MEMORY[0x277CC91D8], v73);
  v73 = v18;
  sub_272376D4C();
  v75[0] = 0x746E657645676264;
  v75[1] = 0xE90000000000002DLL;
  sub_272376DEC();
  sub_272376DDC();
  v32 = v31;
  v33 = v31;
  (*(v70 + 8))(v8, v71);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v71 = v29;
  v74 = v32;
  v34 = sub_27237862C();
  MEMORY[0x2743C4AD0](v34);

  MEMORY[0x2743C4AD0](1986098990, 0xE400000000000000);
  v35 = v67;
  v36 = v73;
  sub_272376CEC();

  v37 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v38 = sub_272376CCC();
  v39 = sub_27237770C();
  v75[0] = 0;
  v40 = [v37 initForWriting:v38 settings:v39 commonFormat:3 interleaved:0 error:v75];

  if (!v40)
  {
    v59 = v75[0];

    sub_272376C6C();

    swift_willThrow();
    v46 = v63;
    v44 = v64;
LABEL_17:
    v61 = *(v46 + 8);
    v61(v35, v44);
    v61(v36, v44);
    return;
  }

  v41 = v75[0];
  v42 = [v40 fileFormat];
  v44 = v64;
  v43 = v65;
  v45 = *(v65 + 16);
  v46 = v63;
  if (HIDWORD(v45))
  {
LABEL_21:
    __break(1u);
  }

  v47 = v42;
  v48 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v42 frameCapacity:v45];

  if (v48)
  {

    v49 = [v48 int16ChannelData];
    if (v49)
    {
      v49 = *v49;
    }

    memcpy(v49, (v43 + 32), 2 * v45);
    [v48 setFrameLength_];
    v75[0] = 0;
    if ([v40 writeFromBuffer:v48 error:v75])
    {
      v50 = *(v46 + 8);
      v51 = v75[0];
      v50(v73, v44);

      v52 = v66;
      (*(v46 + 32))(v66, v35, v44);
      v62(v52, 0, 1, v44);
      return;
    }

    v60 = v75[0];
    sub_272376C6C();

    swift_willThrow();
    v36 = v73;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_2722DD678(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *v4;
  v9 = *(*v4 + 16);
  if (__OFADD__(v9, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v8;
  if (!result)
  {
    goto LABEL_8;
  }

  v11 = *(v8 + 24) >> 1;
  if (v11 < v9 + v7)
  {
    goto LABEL_8;
  }

  if (v6 == v5)
  {
    while (v7 > 0)
    {
      __break(1u);
LABEL_8:
      result = sub_2723782AC();
      v8 = *v4;
      v11 = *(*v4 + 24) >> 1;
      if (v6 != v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  if (v11 - *(v8 + 16) < v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for VANRDebugEvent(0);
  result = swift_arrayInitWithCopy();
  if (v7 > 0)
  {
    v12 = *(v8 + 16);
    v13 = __OFADD__(v12, v7);
    v14 = v12 + v7;
    if (!v13)
    {
      *(v8 + 16) = v14;
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_13:
  swift_unknownObjectRelease();

  return sub_27237827C();
}

uint64_t sub_2722DD7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882A88, &qword_2723837B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2722DD838()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2722DD870()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2722DD8B8(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272211DBC;

  return sub_2722D86F0(a1, v6, v7, v5, v4);
}

uint64_t sub_2722DD988()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

void *sub_2722DD9D8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2722DDB30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2722DDB78()
{
  v1[19] = v0;
  type metadata accessor for VARuntimeParameters(0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v2 = sub_27237728C();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722DDCE8, 0, 0);
}

uint64_t sub_2722DDCE8()
{
  v1 = v0[34];
  v2 = v0[24];
  v3 = v0[25];
  v4 = sub_2722C389C();
  v0[35] = v4;
  v5 = *(v3 + 16);
  v0[36] = v5;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "Entering StartProcessingAudioToAudio()", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = v0[34];
  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[19];

  v13 = *(v11 + 8);
  v0[38] = v13;
  v14 = v13(v9, v10);
  v15 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v12) + 0x150))(v14))
  {
    v16 = v0[19];

    v18 = (*((*v15 & *v16) + 0x120))(v17);
    v0[39] = v18;
    if (v18)
    {
      v19 = v18;
      v20 = v0[19];
      v21 = *(v20 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel);
      v0[40] = v21;
      if (v21)
      {
        v22 = *(v20 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel);
        v0[41] = v22;
        if (v22)
        {
          v23 = *((*v15 & *v20) + 0x78);

          v25 = v23(v24);
          v0[42] = v25;
          if (v25)
          {
            v26 = v0[23];
            v27 = (*v19 + 312);
            v28 = *v27;
            v0[43] = *v27;
            v0[44] = v27 & 0xFFFFFFFFFFFFLL | 0xEDEA000000000000;
            v28();
            (*(*v21 + 96))(v26);
            v29 = v0[22];
            v30 = sub_272216BD8(v0[23]);
            (v28)(v30);
            (*(*v22 + 88))(v29);
            sub_272216BD8(v0[22]);
            v40 = *v19 + 368;
            v0[45] = *v40;
            v0[46] = v40 & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
            v41 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet;
            v0[47] = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_vadGated;
            v0[48] = v41;
            v0[49] = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_audioFormat16k;
            swift_beginAccess();
            v0[50] = 0;
            v43 = (v0[45] + *v0[45]);
            v42 = swift_task_alloc();
            v0[51] = v42;
            *v42 = v0;
            v42[1] = sub_2722DE364;

            return v43();
          }

          sub_2722032B4();
          swift_allocError();
          *v39 = 0x666E6F63206C694ELL;
          v39[1] = 0xEA00000000006769;
          swift_willThrow();

          goto LABEL_15;
        }

        v34 = 0x800000027238EE80;
        sub_2722032B4();
        swift_allocError();
        v36 = 0xD000000000000012;
      }

      else
      {
        v34 = 0x800000027238EE60;
        sub_2722032B4();
        swift_allocError();
        v36 = 0xD000000000000011;
      }

      *v35 = v36;
      v35[1] = v34;
      swift_willThrow();
LABEL_15:

      goto LABEL_16;
    }

    v31 = 0x800000027238EE40;
    sub_2722032B4();
    swift_allocError();
    v33 = 0xD000000000000014;
  }

  else
  {
    v31 = 0x800000027238EE20;
    sub_2722032B4();
    swift_allocError();
    v33 = 0xD000000000000016;
  }

  *v32 = v33;
  v32[1] = v31;
  swift_willThrow();
LABEL_16:

  v37 = v0[1];

  return v37();
}

uint64_t sub_2722DE364(char a1)
{
  *(*v1 + 544) = a1;

  return MEMORY[0x2822009F8](sub_2722DE464, 0, 0);
}

uint64_t sub_2722DE464()
{
  if (*(v0 + 544) == 1)
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 152);
    swift_beginAccess();
    *(v2 + v1) = MEMORY[0x277D84F90];

    (*((*MEMORY[0x277D85000] & *v2) + 0x220))(0);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v4 = *(v0 + 312);
    v5 = sub_27222CD4C();
    v6 = *v4 + 384;
    v7 = *v6;
    *(v0 + 416) = *v6;
    *(v0 + 424) = v6 & 0xFFFFFFFFFFFFLL | 0x95E6000000000000;
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 432) = v8;
    *v8 = v0;
    v8[1] = sub_2722DE800;

    return (v10)(0, 1, v5 & 1);
  }
}

uint64_t sub_2722DE800(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 440) = v2;

  if (v2)
  {
    v7 = sub_2722E0708;
  }

  else
  {
    *(v6 + 448) = a2;
    *(v6 + 456) = a1;
    v7 = sub_2722DE934;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2722DE934()
{
  v1 = v0;
  v2 = *(v0 + 456);
  if (v2)
  {
    v3 = *(v0 + 448);
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = *(v0 + 456);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (!*(v5 + 16))
  {
    v9 = *(v0 + 288);
    v10 = *(v0 + 280);
    v11 = *(v0 + 264);
    v12 = *(v0 + 192);

    v9(v11, v10, v12);
    v13 = sub_27237725C();
    v14 = sub_272377EAC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2721E4000, v13, v14, "Stop(): processing was stopped, break out of StartProcessingAudioToAudio()", v15, 2u);
      MEMORY[0x2743C69C0](v15, -1, -1);
    }

    v16 = *(v0 + 304);
    v17 = *(v1 + 264);
    v18 = *(v1 + 192);

    v16(v17, v18);
    v19 = *(v1 + 440);
    v20 = *(v1 + 384);
    v21 = *(v1 + 152);
    swift_beginAccess();
    *(v21 + v20) = v4;

    (*((*MEMORY[0x277D85000] & *v21) + 0x220))(0);
    v22 = *(v1 + 336);
    if (!v19)
    {

      v23 = *(v1 + 8);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v6 = *(v0 + 440);
  v7 = (*(**(v0 + 320) + 80))(v5);
  *(v0 + 464) = v7;
  if (v6)
  {
    v8 = *(v0 + 336);

LABEL_14:

LABEL_15:

    v23 = *(v1 + 8);
LABEL_16:

    return v23();
  }

  v25 = v7;
  v26 = *(v0 + 376);
  v27 = *(v0 + 152);

  v29 = MEMORY[0x277D85000];
  if (*(v27 + v26) == 1)
  {
    type metadata accessor for VAFeatureExtractingEncoderOutput();
    swift_unknownObjectRetain();
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      v40 = *(v1 + 336);
      swift_unknownObjectRelease();
      sub_2722032B4();
      swift_allocError();
      *v41 = 0xD00000000000003BLL;
      v41[1] = 0x800000027238EEA0;
      swift_willThrow();

      swift_unknownObjectRelease();

      goto LABEL_15;
    }

    v31 = *(v30 + 32);
    if (v31)
    {
      v32 = *(v1 + 344);
      v33 = *(v1 + 168);
      v34 = *(v1 + 152);

      v32(v35);
      v36 = *(v33 + 52);
      sub_272216BD8(v33);
      v37 = *MEMORY[0x277D85000] & *v34;
      v29 = MEMORY[0x277D85000];
      v38 = (*(v37 + 568))(v31, v36);

      v39 = (v38 & 0x100) == 0;
    }

    else
    {
      v39 = 1;
    }

    v42 = (*((*v29 & **(v1 + 152)) + 0x198))();
    v28 = swift_unknownObjectRelease();
    LOBYTE(v154) = (v42 ^ 1) & v39;
  }

  else
  {
    LOBYTE(v154) = 0;
  }

  v43 = *(v1 + 336);
  v44 = *((*v29 & *v43) + 0x88);
  v45 = (*v29 & *v43) + 136;
  v46 = (v44)(v28);
  v47 = (*((*v29 & *v46) + 0xE8))();

  v48 = *(v1 + 384);
  v49 = *(v1 + 152);
  if (v47 != 1)
  {
    swift_beginAccess();
    v51 = swift_unknownObjectRetain();
    MEMORY[0x2743C4C30](v51);
    if (*((*(v49 + v48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v49 + v48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_133;
    }

    goto LABEL_31;
  }

  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_27237E510;
  *(v50 + 32) = v25;
  *(v49 + v48) = v50;
  swift_unknownObjectRetain();
  while (1)
  {
    v73 = *(v1 + 328);

    v74 = *(*v73 + 80);

    v74(v75, LOBYTE(v154) & 1);
    LOBYTE(v154) = 0;

    v45 = *(v1 + 120);
    *(v1 + 472) = v45;
    if (VAVerifierModelOutput.isNone.getter())
    {
      swift_unknownObjectRelease();

LABEL_80:
      *(v1 + 400) = 0;
      v155 = (*(v1 + 360) + **(v1 + 360));
      v76 = swift_task_alloc();
      *(v1 + 408) = v76;
      *v76 = v1;
      v76[1] = sub_2722DE364;

      return v155();
    }

    v77 = MEMORY[0x277D85000];
    v78 = (*((*MEMORY[0x277D85000] & **(v1 + 152)) + 0x428))();
    if (v78)
    {
      v79 = *(*v78 + 304);

      v79(v80);

      v77 = MEMORY[0x277D85000];
    }

    v81 = *(v1 + 152);
    *(v1 + 480) = mach_absolute_time();
    v82 = *(*v45 + 160);

    v82(v3);

    if (((*((*v77 & *v81) + 0x3C8))(v83) & 1) == 0)
    {
      goto LABEL_120;
    }

    v84 = (*(**(v1 + 312) + 400))();
    if (!v84)
    {
      v89 = *(**(v1 + 312) + 392);

      v91 = v89(v90);
      v92 = *(v91 + 16);
      if (!v92)
      {
        goto LABEL_106;
      }

      *(v1 + 128) = v4;
      v44 = v91;
      sub_272215F8C(0, v92, 0);
      v93 = v44;
      v57 = *(v1 + 128);
      v3 = 32;
      v54 = 2139095039;
      while (1)
      {
        v94 = *(v93 + v3);
        if ((LODWORD(v94) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_142;
        }

        if (v94 <= -32769.0)
        {
          goto LABEL_143;
        }

        if (v94 >= 32768.0)
        {
          goto LABEL_144;
        }

        *(v1 + 128) = v57;
        v4 = *(v57 + 16);
        v95 = *(v57 + 24);
        if (v4 >= v95 >> 1)
        {
          v154 = v94;
          sub_272215F8C((v95 > 1), v4 + 1, 1);
          v94 = v154;
          v93 = v44;
          v57 = *(v1 + 128);
        }

        *(v57 + 16) = v4 + 1;
        *(v57 + 2 * v4 + 32) = v94;
        v3 += 4;
        if (!--v92)
        {
LABEL_104:

          goto LABEL_107;
        }
      }
    }

    v85 = v84;
    v86 = *(v84 + 16);
    if (!v86)
    {
      break;
    }

    *(v1 + 144) = v4;

    sub_272215F8C(0, v86, 0);
    v57 = *(v1 + 144);
    v44 = 32;
    while (1)
    {
      v87 = *(v85 + v44);
      if ((LODWORD(v87) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v87 <= -32769.0)
      {
        goto LABEL_131;
      }

      if (v87 >= 32768.0)
      {
        goto LABEL_132;
      }

      *(v1 + 144) = v57;
      v4 = *(v57 + 16);
      v88 = *(v57 + 24);
      v3 = v4 + 1;
      if (v4 >= v88 >> 1)
      {
        v154 = v87;
        sub_272215F8C((v88 > 1), v4 + 1, 1);
        v87 = v154;
        v57 = *(v1 + 144);
      }

      *(v57 + 16) = v3;
      *(v57 + 2 * v4 + 32) = v87;
      v44 += 4;
      if (!--v86)
      {
        goto LABEL_104;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    sub_272377B2C();
LABEL_31:
    v52 = *(v1 + 384);
    v53 = *(v1 + 152);
    sub_272377B7C();
    v54 = *(v53 + v52);
    swift_endAccess();

    v56 = (v44)(v55);
    v57 = (*((*MEMORY[0x277D85000] & *v56) + 0xE8))();

    if (v57 < 0)
    {
      __break(1u);
    }

    else
    {
      v44 = v54 >> 62;
      if (!(v54 >> 62))
      {
        v58 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v59 = -v58;
        if (__OFSUB__(0, v58))
        {
          goto LABEL_137;
        }

        goto LABEL_34;
      }
    }

    v58 = sub_2723783AC();
    v59 = -v58;
    if (__OFSUB__(0, v58))
    {
LABEL_137:
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
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

LABEL_34:
    v60 = -v57;
    if (v59 > 0 || v59 <= v60)
    {
      v57 = v58 - v57;
      if (__OFADD__(v58, v60))
      {
        goto LABEL_145;
      }

      if (v58 < v57)
      {
        goto LABEL_147;
      }

      if (!v44)
      {
LABEL_38:
        v61 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_43;
      }
    }

    else
    {
      if (v58 < 0)
      {
        goto LABEL_146;
      }

      v57 = 0;
      if (!v44)
      {
        goto LABEL_38;
      }
    }

    v61 = sub_2723783AC();
LABEL_43:
    if (v61 < v57)
    {
      goto LABEL_138;
    }

    if (v57 < 0)
    {
      goto LABEL_139;
    }

    if (v44)
    {
      v62 = sub_2723783AC();
    }

    else
    {
      v62 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v62 < v58)
    {
      goto LABEL_140;
    }

    if (v58 < 0)
    {
      goto LABEL_141;
    }

    if (v44)
    {
      sub_2723783BC();
      v57 = v67;
      v69 = v68;

      v44 = v69 >> 1;
      if ((v69 & 1) == 0)
      {
LABEL_62:
        v54 = v44 - v57;
        v70 = __OFSUB__(v44, v57);
        swift_unknownObjectRetain();
        if (v70)
        {
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v63 = (2 * v58) | 1;
      v44 = v63 >> 1;
      if ((v63 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v153 = v1;
    sub_27237868C();
    swift_unknownObjectRetain_n();
    v64 = swift_dynamicCastClass();
    if (!v64)
    {
      swift_unknownObjectRelease();
      v64 = MEMORY[0x277D84F90];
    }

    v65 = *(v64 + 16);

    v54 = v44 - v57;
    LOBYTE(v45) = __OFSUB__(v44, v57);
    if (!__OFSUB__(v44, v57))
    {
      if (v65 == v54)
      {
        v66 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v1 = v153;
        if (v66)
        {
          goto LABEL_77;
        }

        goto LABEL_72;
      }

      goto LABEL_149;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    swift_unknownObjectRelease();
    v1 = v153;
    if (v45)
    {
      goto LABEL_150;
    }

LABEL_66:
    if (v54)
    {
      if (v54 < 1)
      {
        v66 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2721F065C(&qword_280882098, &qword_27237E8B0);
        v66 = swift_allocObject();
        v71 = j__malloc_size(v66);
        v72 = v71 - 32;
        if (v71 < 32)
        {
          v72 = v71 - 25;
        }

        v66[2] = v54;
        v66[3] = (2 * (v72 >> 3)) | 1;
      }

      swift_unknownObjectRelease();
      if (v57 == v44)
      {
        goto LABEL_156;
      }

      swift_arrayInitWithCopy();
      goto LABEL_76;
    }

    swift_unknownObjectRelease();
LABEL_72:
    v66 = MEMORY[0x277D84F90];
LABEL_76:
    swift_unknownObjectRelease();
LABEL_77:
    *(*(v1 + 152) + *(v1 + 384)) = v66;
  }

LABEL_106:

  v57 = MEMORY[0x277D84F90];
LABEL_107:
  v96 = *(v1 + 344);
  v97 = *(v1 + 160);
  (*(*v45 + 136))(v57);

  v96(v98);
  v99 = *(v97 + 96);
  *(v1 + 488) = v99;
  v100 = *(v97 + 104);
  sub_272216BD8(v97);
  if (v100)
  {
    goto LABEL_120;
  }

  *(v1 + 496) = mach_absolute_time();
  v101 = *(v1 + 288);
  v102 = *(v1 + 280);
  v103 = *(v1 + 192);
  if (v99 <= 0.0)
  {
    v101(*(v1 + 224), v102, v103);
    v117 = sub_27237725C();
    v118 = sub_272377E8C();
    v119 = os_log_type_enabled(v117, v118);
    v120 = *(v1 + 304);
    v121 = *(v1 + 224);
    v122 = *(v1 + 192);
    if (v119)
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_2721E4000, v117, v118, "Specified extra audio duration with 0 seconds", v123, 2u);
      MEMORY[0x2743C69C0](v123, -1, -1);
    }

    v120(v121, v122);
LABEL_120:
    v124 = *(v1 + 480);
    type metadata accessor for VARequestContext(0);
    v125 = mach_absolute_time();
    v126 = v125 >= v124;
    v127 = v125 - v124;
    if (v126)
    {
      v128 = *(v1 + 288);
      v129 = *(v1 + 280);
      v130 = *(v1 + 216);
      v131 = *(v1 + 192);
      v132 = sub_2722310BC(v127);
      v128(v130, v129, v131);
      v133 = sub_27237725C();
      v134 = sub_272377E7C();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 134217984;
        *(v135 + 4) = v132;
        _os_log_impl(&dword_2721E4000, v133, v134, "Fetch audio for checker  %f seconds", v135, 0xCu);
        MEMORY[0x2743C69C0](v135, -1, -1);
      }

      v136 = *(v1 + 304);
      v137 = *(v1 + 216);
      v138 = *(v1 + 192);
      v139 = *(v1 + 152);

      v136(v137, v138);
      v140 = *((*MEMORY[0x277D85000] & *v139) + 0x240);

      v140(v141);
      v142 = *(v1 + 480);

      v143 = mach_absolute_time();
      v126 = v143 >= v142;
      v144 = v143 - v142;
      if (v126)
      {
        v145 = *(v1 + 288);
        v146 = *(v1 + 280);
        v147 = *(v1 + 208);
        v148 = *(v1 + 192);
        v149 = sub_2722310BC(v144);
        v145(v147, v146, v148);
        v150 = sub_27237725C();
        v151 = sub_272377E7C();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 134217984;
          *(v152 + 4) = v149;
          _os_log_impl(&dword_2721E4000, v150, v151, "Finished callback  %f seconds", v152, 0xCu);
          MEMORY[0x2743C69C0](v152, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        (*(v1 + 304))(*(v1 + 208), *(v1 + 192));
        goto LABEL_80;
      }
    }

    else
    {
LABEL_151:
      __break(1u);
    }

    __break(1u);
    goto LABEL_153;
  }

  v101(*(v1 + 256), v102, v103);
  v104 = sub_27237725C();
  v105 = sub_272377E7C();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 134217984;
    *(v106 + 4) = v99;
    _os_log_impl(&dword_2721E4000, v104, v105, "Getting extra audio for %f secs after keyword", v106, 0xCu);
    MEMORY[0x2743C69C0](v106, -1, -1);
  }

  v107 = *(v1 + 392);
  v108 = *(v1 + 304);
  v109 = *(v1 + 256);
  v110 = *(v1 + 192);
  v111 = *(v1 + 200);
  v112 = *(v1 + 152);

  *(v1 + 504) = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v108(v109, v110);
  [*(v112 + v107) sampleRate];
  *(v1 + 512) = v113;
  v114 = v99 * v113;
  if ((*&v114 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v114 <= -9.22337204e18)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v114 >= 9.22337204e18)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  v115 = v114;
  v156 = (*(v1 + 416) + **(v1 + 416));
  v116 = swift_task_alloc();
  *(v1 + 520) = v116;
  *v116 = v1;
  v116[1] = sub_2722DFDD0;

  return v156(v115, 0, 0);
}

uint64_t sub_2722DFDD0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_2722E0834;
  }

  else
  {
    v4 = sub_2722DFEE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

char *sub_2722DFEE8()
{
  v1 = *(v0 + 528);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v75 = v0 + 16;
      *(v0 + 136) = MEMORY[0x277D84F90];
      result = sub_272215F8C(0, v2, 0);
      v4 = *(v0 + 136);
      v5 = 32;
      do
      {
        v6 = *(v1 + v5);
        if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        if (v6 <= -32769.0)
        {
          goto LABEL_43;
        }

        if (v6 >= 32768.0)
        {
          goto LABEL_44;
        }

        *(v0 + 136) = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          result = sub_272215F8C((v7 > 1), v8 + 1, 1);
          v4 = *(v0 + 136);
        }

        *(v4 + 16) = v8 + 1;
        *(v4 + 2 * v8 + 32) = v6;
        v5 += 4;
        --v2;
      }

      while (v2);
      v16 = *(v0 + 472);

      v17 = *(*v16 + 144);

      v18 = v17(v75);
      if (*v19)
      {
        sub_2722D9ACC(v4);
      }

      else
      {
      }

      v18(v75, 0);
    }

    else
    {
      v20 = *(v0 + 288);
      v21 = *(v0 + 280);
      v22 = *(v0 + 248);
      v23 = *(v0 + 192);

      v20(v22, v21, v23);
      v24 = sub_27237725C();
      v25 = sub_272377E8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = (*(v0 + 512) * *(v0 + 488));
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v26;
        _os_log_impl(&dword_2721E4000, v24, v25, "Failed to get %ld extra bytes", v27, 0xCu);
        MEMORY[0x2743C69C0](v27, -1, -1);
      }

      v28 = *(v0 + 304);
      v29 = *(v0 + 248);
      v30 = *(v0 + 192);

      v28(v29, v30);
    }

    v31 = *(v0 + 496);
    type metadata accessor for VARequestContext(0);
    v32 = mach_absolute_time();
    v33 = v32 >= v31;
    result = (v32 - v31);
    if (!v33)
    {
      goto LABEL_46;
    }

    v34 = *(v0 + 288);
    v35 = *(v0 + 280);
    v36 = *(v0 + 240);
    v37 = *(v0 + 192);
    v38 = sub_2722310BC(result);
    v34(v36, v35, v37);
    v39 = sub_27237725C();
    v40 = sub_272377E6C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v38;
      _os_log_impl(&dword_2721E4000, v39, v40, "Fetching audio for checker took %f secs", v41, 0xCu);
      MEMORY[0x2743C69C0](v41, -1, -1);
    }

    v42 = *(v0 + 304);
    v43 = *(v0 + 240);
    v44 = *(v0 + 192);

    v42(v43, v44);
  }

  else
  {
    (*(v0 + 288))(*(v0 + 232), *(v0 + 280), *(v0 + 192));
    v9 = sub_27237725C();
    v10 = sub_272377E8C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 304);
    v13 = *(v0 + 232);
    v14 = *(v0 + 192);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2721E4000, v9, v10, "Failed to get extra bytes", v15, 2u);
      MEMORY[0x2743C69C0](v15, -1, -1);
    }

    v12(v13, v14);
  }

  v45 = *(v0 + 536);
  v46 = *(v0 + 480);
  type metadata accessor for VARequestContext(0);
  v47 = mach_absolute_time();
  v33 = v47 >= v46;
  result = (v47 - v46);
  if (!v33)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

  v48 = *(v0 + 288);
  v49 = *(v0 + 280);
  v50 = *(v0 + 216);
  v51 = *(v0 + 192);
  v52 = sub_2722310BC(result);
  v48(v50, v49, v51);
  v53 = sub_27237725C();
  v54 = sub_272377E7C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = v52;
    _os_log_impl(&dword_2721E4000, v53, v54, "Fetch audio for checker  %f seconds", v55, 0xCu);
    MEMORY[0x2743C69C0](v55, -1, -1);
  }

  v56 = *(v0 + 304);
  v57 = *(v0 + 216);
  v58 = *(v0 + 192);
  v59 = *(v0 + 152);

  v56(v57, v58);
  v60 = *((*MEMORY[0x277D85000] & *v59) + 0x240);

  v60(v61);
  if (v45)
  {
    v62 = *(v0 + 336);
    swift_unknownObjectRelease();

    v63 = *(v0 + 8);

    return v63();
  }

  else
  {
    v64 = *(v0 + 480);

    v65 = mach_absolute_time();
    v33 = v65 >= v64;
    result = (v65 - v64);
    if (!v33)
    {
      goto LABEL_47;
    }

    v66 = *(v0 + 288);
    v67 = *(v0 + 280);
    v68 = *(v0 + 208);
    v69 = *(v0 + 192);
    v70 = sub_2722310BC(result);
    v66(v68, v67, v69);
    v71 = sub_27237725C();
    v72 = sub_272377E7C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 134217984;
      *(v73 + 4) = v70;
      _os_log_impl(&dword_2721E4000, v71, v72, "Finished callback  %f seconds", v73, 0xCu);
      MEMORY[0x2743C69C0](v73, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v0 + 304))(*(v0 + 208), *(v0 + 192));
    *(v0 + 400) = 0;
    v76 = (*(v0 + 360) + **(v0 + 360));
    v74 = swift_task_alloc();
    *(v0 + 408) = v74;
    *v74 = v0;
    v74[1] = sub_2722DE364;

    return v76();
  }
}

uint64_t sub_2722E0708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722E0834()
{
  v1 = *(v0 + 336);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722E0970(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x2743C4F00](result, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_2722AB1B4(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t VAA2AAudioEncoderModelV2.__allocating_init(computeUnits:)(char *a1)
{
  v2 = swift_allocObject();
  VAA2AAudioEncoderModelV2.init(computeUnits:)(a1);
  return v2;
}

uint64_t VAA2AAudioEncoderModelV2.init(computeUnits:)(char *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for VALog();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0xD000000000000018, 0x800000027238EEE0);
  LOBYTE(v16) = v8;
  sub_27237836C();
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v18, v19, v7);

  v9 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v21 = v8;
  v20 = 0;
  sub_2722595A4();
  sub_272377A8C();
  sub_272377A8C();
  if (v18 == v16 && v19 == v17)
  {

    v10 = 0;
  }

  else
  {
    v11 = sub_27237865C();

    if (v11)
    {
      v10 = 0;
    }

    else
    {
      v21 = v8;
      v20 = 1;
      sub_272377A8C();
      sub_272377A8C();
      if (v18 == v16 && v19 == v17)
      {
      }

      else
      {
        v12 = sub_27237865C();

        if ((v12 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = 3;
    }
  }

  [v9 setComputeUnits_];
LABEL_12:
  type metadata accessor for quant_enc_f32_wofeats();
  v13 = v9;
  v14 = sub_272294004(v13);
  if (v2)
  {

    sub_272272F68(v7);
    type metadata accessor for VAA2AAudioEncoderModelV2();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v14;
    VASignpostInterval.end(_:)(0);

    sub_272272F68(v7);
  }

  return v3;
}

id sub_2722E0DE8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_27237E500;
  v7 = *(a1 + 16);
  result = sub_272377DBC();
  *(v6 + 32) = result;
  v31 = v7;
  if (v7)
  {
    v9 = a1 + 32;
    *(v6 + 40) = sub_272377DBC();
    v10 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    result = sub_272257FA4(v6, 65568);
    if (!v2)
    {
      v11 = result;
      v29 = v3;
      v12 = 0;
      v13 = 0x1FAAAE000uLL;
      v30 = v9;
      do
      {
        v14 = *(*(v9 + 8 * v12) + 16);
        if (v14)
        {

          v15 = 0;
          do
          {
            v16 = v15 + 1;
            v17 = v5;
            v18 = v13;
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_27237E500;
            *(v19 + 32) = sub_272377DBC();
            *(v19 + 40) = sub_272377DBC();
            v20 = sub_272377D3C();
            sub_27223EE54();
            v21 = sub_272377AEC();
            v13 = v18;
            v5 = v17;

            [v11 (v13 + 2040)];

            v15 = v16;
          }

          while (v14 != v16);

          v9 = v30;
        }

        ++v12;
      }

      while (v12 != v31);
      type metadata accessor for quant_enc_f32_wofeatsInput();
      v22 = v11;
      v23 = sub_272276D68(v22);
      v24 = (*(*v29 + 88))();
      v25 = (*(*v24 + 136))(v23);

      v27 = (*(*v25 + 88))(v26);

      v28 = sub_27225730C(v27);

      return v28;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t VAA2AAudioEncoderModelV2.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_2722E11E0()
{
  v1 = OBJC_IVAR___G2PFactoredObjc_g2p;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2722E122C(uint64_t a1)
{
  v3 = OBJC_IVAR___G2PFactoredObjc_g2p;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2722E12E4()
{
  v1 = type metadata accessor for G2PFactored();
  v2 = (*(v1 + 80))();
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x68);

  return v3(v2);
}

uint64_t sub_2722E140C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v57 = a5;
  v64 = a4;
  v60 = a3;
  v9 = sub_272376BCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v69 = a2;
  sub_272376B8C();
  sub_272203AC4();
  v13 = sub_2723780EC();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  v68 = 32;
  v69 = 0xE100000000000000;
  v67 = &v68;
  v16 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, v66, v13, v15, 0x20uLL);
  v18 = *(v16 + 16);
  v56 = v16;
  if (v18)
  {
    v19 = *MEMORY[0x277D85000] & *v6;
    v63 = v6;
    v20 = *(v19 + 136);
    v61 = v19 + 136;
    v62 = v20;
    v59 = OBJC_IVAR___G2PFactoredObjc_logger;
    v21 = (v16 + 56);
    v22 = MEMORY[0x277D84F90];
    *&v17 = 136315138;
    v58 = v17;
    do
    {
      v65 = v22;
      v29 = *(v21 - 3);
      v30 = *(v21 - 2);
      v31 = *(v21 - 1);
      v32 = *v21;

      v33 = MEMORY[0x2743C4A20](v29, v30, v31, v32);
      v34 = v62(v33);
      v36 = v35;

      if (v36)
      {

        v22 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2721FFBF8(0, *(v22 + 2) + 1, 1, v22);
        }

        v38 = *(v22 + 2);
        v37 = *(v22 + 3);
        v39 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          v22 = sub_2721FFBF8((v37 > 1), v38 + 1, 1, v22);
        }

        *(v22 + 2) = v39;
        v40 = &v22[16 * v38];
        *(v40 + 4) = v34;
        *(v40 + 5) = v36;
        v41 = *(v22 + 3);

        if ((v38 + 2) > (v41 >> 1))
        {
          v22 = sub_2721FFBF8((v41 > 1), v38 + 2, 1, v22);
        }

        *(v22 + 2) = v38 + 2;
        v42 = &v22[16 * v39];
        v43 = v64;
        *(v42 + 4) = v60;
        *(v42 + 5) = v43;
      }

      else
      {

        v44 = sub_27237725C();
        v45 = sub_272377E8C();

        if (os_log_type_enabled(v44, v45))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v68 = v24;
          *v23 = v58;
          v25 = MEMORY[0x2743C4A20](v29, v30, v31, v32);
          v27 = v26;

          v28 = sub_2721FFD04(v25, v27, &v68);

          *(v23 + 4) = v28;
          _os_log_impl(&dword_2721E4000, v44, v45, "Word did not generate any phonemes : %s", v23, 0xCu);
          sub_2722039C8(v24);
          MEMORY[0x2743C69C0](v24, -1, -1);
          MEMORY[0x2743C69C0](v23, -1, -1);
        }

        else
        {
        }

        v22 = v65;
      }

      v21 += 4;
      --v18;
    }

    while (v18);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  if (v57)
  {
    if (*(v22 + 2))
    {
      v68 = v56;
      sub_2721F065C(&qword_280881890, &unk_272382EF0);
      sub_2722199BC(&qword_280882AA0, &qword_280881890, &unk_272382EF0, MEMORY[0x277D83970]);
      sub_272260218();
      v46 = sub_272377A7C();
      v48 = v47;

      v68 = v46;
      v69 = v48;

      MEMORY[0x2743C4AD0](32, 0xE100000000000000);

      v50 = v68;
      v49 = v69;
      v68 = v22;
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
      v51 = sub_2723777CC();
      v53 = v52;

      v68 = v50;
      v69 = v49;

      MEMORY[0x2743C4AD0](v51, v53);

      return v68;
    }
  }

  else
  {

    if (*(v22 + 2))
    {
      v68 = v22;
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
      v55 = sub_2723777CC();

      return v55;
    }
  }

  return 0;
}

void *sub_2722E1AE0(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x60))();
  if (result)
  {
    v7 = result;
    v8 = (*((*v5 & *result) + 0x58))(a1, a2);

    return v8;
  }

  return result;
}

id G2P.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id G2P.init()()
{
  sub_27237727C();
  *&v0[OBJC_IVAR___G2PFactoredObjc_g2p] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for G2P(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id G2P.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for G2P(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for G2P(uint64_t a1)
{
  result = qword_28088EC60;
  if (!qword_28088EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722E1EEC(uint64_t a1)
{
  result = sub_27237728C();
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

uint64_t VAASRResult.transcript.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript);

  return v1;
}

uint64_t sub_2722E2094@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722E214C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinalTerminal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E2190(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinalTerminal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E2250@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_2722E22AC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void *sub_2722E2314()
{
  v1 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_audioBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2722E2360(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_audioBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2722E2418(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, uint64_t a7)
{
  v14 = objc_allocWithZone(v7);
  v15 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinalTerminal;
  v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinalTerminal] = 0;
  v16 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_audioBuffer;
  *&v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_audioBuffer] = 0;
  v17 = &v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript];
  *v17 = a1;
  v17[1] = a2;
  v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinal] = a3;
  v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_usedPartialAsFinal] = a5;
  v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_isIgnored] = a6;
  swift_beginAccess();
  *&v14[v16] = a7;
  swift_beginAccess();
  v14[v15] = a4;
  v20.receiver = v14;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

unint64_t sub_2722E25A4()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x80))())
  {
    sub_27237820C();

    v8 = 0xD000000000000011;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinal) == 1)
    {
      sub_27237820C();

      v2 = 0x205D6C616E69465BLL;
    }

    else
    {
      sub_27237820C();

      v2 = 0x6C6169747261505BLL;
    }

    v8 = v2;
  }

  MEMORY[0x2743C4AD0](*(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript), *(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript + 8));
  v3 = MEMORY[0x2743C4AD0](8226, 0xE200000000000000);
  v4 = (*((*v1 & *v0) + 0x98))(v3);
  v5 = v4;
  if (v4)
  {
    [v4 frameLength];
  }

  sub_2721F065C(&qword_280882AD8, &qword_2723838B8);
  v6 = sub_27237789C();
  MEMORY[0x2743C4AD0](v6);

  MEMORY[0x2743C4AD0](0x736574796220, 0xE600000000000000);
  return v8;
}

id VAASRResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAASRResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAASRResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2722E2AB0()
{
  v0 = sub_272291FE0(&unk_28818E268);
  swift_arrayDestroy();
  return v0;
}

id sub_2722E2AF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000027238D8B0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v5 = (*(*v2 + 112))();
  }

  else if (a1 == 0x62616C5F74786574 && a2 == 0xEB00000000736C65 || (sub_27237865C() & 1) != 0)
  {
    v5 = (*(*v2 + 136))();
  }

  else if (a1 == 0x656C5F6F69647561 && a2 == 0xE90000000000006ELL || (sub_27237865C() & 1) != 0)
  {
    v5 = (*(*v2 + 160))();
  }

  else
  {
    if ((a1 != 0x6E656C5F74786574 || a2 != 0xE800000000000000) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v5 = (*(*v2 + 184))();
  }

  v6 = v5;
  v7 = [objc_opt_self() featureValueWithMultiArray_];

  return v7;
}

void sub_2722E2D74()
{
  v1 = *(v0 + 16);
  v2 = sub_2723777FC();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_2722E2E08()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722E2F5C(void *a1)
{
  swift_allocObject();
  v2 = sub_2722E4344(a1);

  return v2;
}

void sub_2722E2FA4()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_2722E3078(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  (*(v1 + 88))(v10);
  v13 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v9, v12, v5);
  v14 = a1;
  v15 = sub_272292308(v9, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    v13 = (*(v3 + 96))(v16);
    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_2722E3238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2722E3348(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722E3408, 0, 0);
}

uint64_t sub_2722E3408()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_2722E3538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722E35F0(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722E36B8;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722E36B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722E3804, 0, 0);
  }
}

uint64_t sub_2722E3804()
{
  v1 = *(v0 + 24);
  type metadata accessor for _3enrollments_quant_all_verifier_aa();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722E3878(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722E3904(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for _3enrollments_quant_all_verifier_aaOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2722E39DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722E3A00, 0, 0);
}

uint64_t sub_2722E3A00()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2722E3AA0;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_2722E3AA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_2722E3BEC, 0, 0);
  }
}

uint64_t sub_2722E3BEC()
{
  v1 = *(v0 + 48);
  type metadata accessor for _3enrollments_quant_all_verifier_aaOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722E3C60(void *a1, void *a2, void *a3, void *a4)
{
  type metadata accessor for _3enrollments_quant_all_verifier_aaInput();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 136);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v10(v9);

  return v15;
}

uint64_t sub_2722E3D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v30 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v37 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = *(v5 + 16);
  v34 = &v30 - v18;
  v20(&v30 - v18, v31, v4);
  v20(v17, v32, v4);
  v20(v14, v33, v4);
  v20(v11, v35, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v20(v8, v19, v4);
  sub_272292148();
  v35 = sub_272377E5C();
  v20(v8, v37, v4);
  v33 = sub_272377E5C();
  v21 = v30;
  v20(v8, v30, v4);
  v32 = sub_272377E5C();
  v20(v8, v11, v4);
  v22 = sub_272377E5C();
  v23 = *(v5 + 8);
  v23(v11, v4);
  v23(v21, v4);
  v23(v37, v4);
  v23(v34, v4);
  type metadata accessor for _3enrollments_quant_all_verifier_aaInput();
  v24 = swift_allocObject();
  v25 = v36;
  v26 = v32;
  v27 = v33;
  v24[2] = v35;
  v24[3] = v27;
  v24[4] = v26;
  v24[5] = v22;
  v28 = (*(*v25 + 136))();

  return v28;
}

void sub_2722E4080(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for _3enrollments_quant_all_verifier_aaOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_2722E4344(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x3739315F726176;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE700000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  v6 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v6);
  return v2;
}

uint64_t sub_2722E4494()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722E44CC(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for _3enrollments_quant_all_verifier_aa();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

void *static VAVerifierModelOutput.none.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VAKeywordResult();
  result = VAKeywordResult.__allocating_init(detections:)(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

BOOL VAVerifierModelOutput.isNone.getter()
{
  v1 = *((*(**v0 + 104))() + 16);

  return v1 == 0;
}

uint64_t *initializeBufferWithCopyOfBuffer for VAVerifierModelOutput(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for VAVerifierModelOutput(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for VAVerifierModelOutput(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_2722E482C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  return sub_272277044(v1 + v3, a1);
}

uint64_t sub_2722E4884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2722E48E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882228, &qword_27237F4D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_2722E49B4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2722E49FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *VAA2AAudioEnroller.__allocating_init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = v8 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v8 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr) = MEMORY[0x277D84F90];
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v10;
  sub_272376E4C();
  v11 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  sub_2722E48E4(a4, v8 + v11);
  swift_endAccess();
  return v8;
}