void *sub_23142BF00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD20, &qword_23147B8B8);
  v2 = *v0;
  v3 = sub_2314784A8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_23142C040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD18, &unk_23147B8A8);
  result = sub_2314784B8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        sub_2314788E8();

        sub_231477F38();
        sub_231477F38();
        result = sub_231478918();
        v21 = -1 << *(v5 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v5 + 48) + 32 * v24);
        *v29 = v17;
        v29[1] = v18;
        v29[2] = v19;
        v29[3] = v20;
        ++*(v5 + 16);
        v3 = v31;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v30;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23142C2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionWithParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23142C304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D558, &qword_231479560);
  result = sub_2314784B8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2314788E8();

        sub_231477F38();
        result = sub_231478918();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23142C538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD20, &qword_23147B8B8);
  result = sub_2314784B8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_2314788D8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_23142C724()
{
  result = qword_27DD4DD28;
  if (!qword_27DD4DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DD28);
  }

  return result;
}

void *sub_23142C778()
{
  result = sub_231477DC8();
  off_27DD4DD30 = result;
  return result;
}

uint64_t sub_23142C7B4()
{
  v1[3] = sub_231477C18();
  v1[4] = &off_28460A360;
  v1[0] = sub_231477C08();
  type metadata accessor for AppIntentStreamBundleIDTranslator();
  swift_allocObject();
  result = sub_2314294D0(v1);
  qword_27DD4DD38 = result;
  return result;
}

void *sub_23142C84C()
{
  result = sub_231421820();
  qword_280C3D8C0 = result;
  return result;
}

void sub_23142C86C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v47 - v3);
  v50 = type metadata accessor for Entity(0);
  OUTLINED_FUNCTION_4();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - v11;
  v54 = 91;
  v55 = 0xE100000000000000;
  v12 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  sub_231476CA8();
  sub_23142EEA4();
  v13 = sub_231478798();
  MEMORY[0x23192E060](v13);

  MEMORY[0x23192E060](23389, 0xE200000000000000);
  MEMORY[0x23192E060](*v1, v1[1]);
  MEMORY[0x23192E060](23389, 0xE200000000000000);
  MEMORY[0x23192E060](v1[2], v1[3]);
  MEMORY[0x23192E060](93, 0xE100000000000000);
  v52 = 0x736E6F737265505BLL;
  v53 = 0xEA0000000000203ALL;
  v14 = *(v0 + *(v12 + 28));
  v15 = sub_2313F303C(v14);
  v16 = 0;
  v49 = MEMORY[0x277D84F90];
  while (v15 != v16)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x23192E5D0](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    sub_2313EF700(1, v4);

    __swift_storeEnumTagSinglePayload(v4, 0, 1, v50);
    OUTLINED_FUNCTION_9_8();
    sub_23142EEFC(v4, v48, v20);
    v21 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23141CB80();
      v21 = v27;
    }

    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    v49 = v21;
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_20(v22);
      sub_23141CB80();
      v49 = v28;
    }

    *(v49 + 16) = v23 + 1;
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_9_8();
    sub_23142EEFC(v24, v25, v26);
    v16 = v19;
  }

  v29 = v49;
  v30 = *(v49 + 16);
  if (v30)
  {
    v51 = MEMORY[0x277D84F90];
    sub_23141252C(0, v30, 0);
    v31 = v51;
    OUTLINED_FUNCTION_59();
    v33 = v29 + v32;
    v35 = *(v34 + 72);
    do
    {
      sub_23142EF58(v33, v9, type metadata accessor for Entity);
      v37 = *v9;
      v36 = v9[1];

      v38 = OUTLINED_FUNCTION_17();
      sub_23142EFB4(v38, v39);
      v51 = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        v43 = OUTLINED_FUNCTION_20(v40);
        sub_23141252C(v43, v41 + 1, 1);
        v31 = v51;
      }

      *(v31 + 16) = v41 + 1;
      v42 = v31 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v36;
      v33 += v35;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v51 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
  sub_2313EF69C();
  v44 = sub_231477E28();
  v46 = v45;

  MEMORY[0x23192E060](v44, v46);

  MEMORY[0x23192E060](93, 0xE100000000000000);
  MEMORY[0x23192E060](v52, v53);

  OUTLINED_FUNCTION_16();
}

void sub_23142CD10()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = sub_231476CE8();
  OUTLINED_FUNCTION_4();
  v92 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v95 = &v75 - v11;
  v94 = type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_34();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v93 = &v75 - v17;
  v98 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v96 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_34();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v97 = &v75 - v24;
  v25 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  v29 = (v28 - v27);
  v30 = sub_23142EDB4(v1, &selRef_bundleID);
  if (!v31)
  {
    goto LABEL_14;
  }

  v32 = v30;
  v33 = v31;
  v34 = [v1 resolvedAction];
  if (!v34)
  {

LABEL_14:

    goto LABEL_15;
  }

  v91 = v34;
  v35 = [v1 action];
  if (v35)
  {
    v36 = sub_2314748B0(v35);
    v90 = v37;
    if (v37)
    {
      v88 = v25;
      v89 = v36;
      v38 = [v1 executionDate];
      if (v38)
      {
        v39 = v38;
        sub_231476C78();

        v40 = v96 + 32;
        v87 = *(v96 + 32);
        v87(v97, v22, v98);
        if (qword_280C3BF58 != -1)
        {
          swift_once();
        }

        v41 = v90;
        if (sub_231405B6C(v89, v90, qword_280C3D8C0))
        {
          v84 = v40;
          v85 = v3;
          if (qword_27DD4D230 != -1)
          {
            swift_once();
          }

          v42 = sub_231429534(v32, v33, v89, v41);
          v86 = v43;

          sub_23142D4A0(v91);
          v45 = v44;

          v47 = sub_23143028C(v46, 1);
          v81 = v42;
          v82 = v47;

          if (qword_27DD4D228 != -1)
          {
            swift_once();
          }

          v83 = v45;
          v51 = off_27DD4DD30;
          if (*(off_27DD4DD30 + 2) && (v52 = sub_2313F0604(), (v53 & 1) != 0))
          {
            v54 = (v51[7] + 16 * v52);
            v55 = v54[1];
            v76 = *v54;
            *(v15 + 81) = 512;
            v56 = v94;
            v79 = v94[12];

            sub_231476C98();
            v57 = v56[14];
            v80 = v56[13];
            *(v15 + v57) = 0;
            *(v15 + v56[15]) = 1;
            *(v15 + v56[16]) = 3;
            v58 = v56[18];
            v77 = (v15 + v56[17]);
            v78 = (v15 + v58);
            *(v15 + v56[19]) = MEMORY[0x277D84F98];
            sub_231476CD8();
            v59 = sub_231476CB8();
            v75 = v59;
            v51 = v86;
            v61 = v60;
            (*(v92 + 8))(v9, v4);
            *v15 = v59;
            *(v15 + 8) = v61;
            *(v15 + 16) = 0;
            *(v15 + 24) = 0xE000000000000000;
            *(v15 + 32) = v76;
            *(v15 + 40) = v55;
            *(v15 + 48) = v81;
            *(v15 + 56) = v51;
            v62 = v90;
            *(v15 + 64) = v89;
            *(v15 + 72) = v62;
            *(v15 + 80) = 769;
            *(v15 + 82) = 1;
            v63 = *(v96 + 24);

            v63(v15 + v79, v97, v98);
            *(v15 + v80) = 1;
            v64 = v77;
            *v77 = 0;
            v64[1] = 0xE000000000000000;
            v65 = v56;
            v41 = v90;
            v66 = v78;
            *v78 = v75;
            v66[1] = v61;
            OUTLINED_FUNCTION_10_7();
            v67 = v95;
            sub_23142EF58(v15, v95, v68);
            __swift_storeEnumTagSinglePayload(v67, 0, 1, v65);
            sub_23142EFB4(v15, v51);
          }

          else
          {
            v65 = v94;
            v67 = v95;
            __swift_storeEnumTagSinglePayload(v95, 1, 1, v94);
          }

          if (__swift_getEnumTagSinglePayload(v67, 1, v65) != 1)
          {
            OUTLINED_FUNCTION_10_7();
            v71 = v93;
            sub_23142EEFC(v67, v93, v72);
            v73 = v86;
            *v29 = v81;
            v29[1] = v73;
            v25 = v88;
            v29[2] = v89;
            v29[3] = v41;
            v87(v29 + v25[6], v97, v98);
            *(v29 + v25[7]) = v83;
            sub_23142EEFC(v71, v29 + v25[8], v51);
            *(v29 + v25[9]) = v82;
            OUTLINED_FUNCTION_1_7();
            v3 = v85;
            sub_23142EEFC(v29, v85, v74);
            v48 = 0;
            goto LABEL_16;
          }

          v69 = OUTLINED_FUNCTION_18_2();
          v70(v69);

          sub_2313E937C(v67, &qword_27DD4D690, &qword_231479AD0);
          v48 = 1;
          v3 = v85;
          goto LABEL_28;
        }

        v49 = OUTLINED_FUNCTION_18_2();
        v50(v49);
      }

      else
      {
      }

      v48 = 1;
LABEL_28:
      v25 = v88;
      goto LABEL_16;
    }
  }

LABEL_15:
  v48 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v3, v48, 1, v25);
  OUTLINED_FUNCTION_16();
}

void sub_23142D4A0(void *a1)
{
  v3 = [a1 parameters];
  sub_2313E4AFC(0, &qword_27DD4DD48, 0x277CF0FF8);
  v4 = sub_231478128();

  v5 = sub_2313F303C(v4);
  if (!v5)
  {

    return;
  }

  v6 = v5;
  v7 = 0;
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_8_9();
  v8 = v4 & 0xC000000000000001;
  v80 = v4 & 0xFFFFFFFFFFFFFF8;
  v79 = v4 + 32;
  v9 = &selRef_identifier;
  v76 = v4;
  v81 = v4 & 0xC000000000000001;
  v82 = v10;
LABEL_3:
  if (v8)
  {
    v11 = MEMORY[0x23192E5D0](v7, v4);
  }

  else
  {
    if (v7 >= *(v80 + 16))
    {
      goto LABEL_86;
    }

    v11 = *(v79 + 8 * v7);
  }

  v12 = v11;
  if (!__OFADD__(v7++, 1))
  {
    v14 = sub_23142EDB4(v11, v9);
    if (!v15)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v18 = sub_231477B68();
      OUTLINED_FUNCTION_38(v18, qword_280C3D970);
      v19 = sub_231477B58();
      v20 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v20))
      {
        v21 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v21);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v19, v22, "No identifier");
        OUTLINED_FUNCTION_2_5();
      }

LABEL_20:
      goto LABEL_49;
    }

    if (v14 == v1 && v15 == v2)
    {
    }

    else
    {
      v17 = sub_2314787C8();

      if ((v17 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v23 = v9;
    v24 = [v12 value];
    if (!v24)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v39 = sub_231477B68();
      OUTLINED_FUNCTION_38(v39, qword_280C3D970);
      v40 = sub_231477B58();
      v41 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v41))
      {
        v42 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v42);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v40, v43, "no value");
        OUTLINED_FUNCTION_2_5();
      }

      goto LABEL_48;
    }

    v25 = v24;
    v26 = [v24 valueType];
    if (!v26)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v44 = sub_231477B68();
      OUTLINED_FUNCTION_38(v44, qword_280C3D970);
      v45 = sub_231477B58();
      v46 = sub_2314782A8();
      OUTLINED_FUNCTION_12(v46);
      OUTLINED_FUNCTION_8_9();
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v48);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v45, v49, "no valueType");
        OUTLINED_FUNCTION_2_5();
      }

      goto LABEL_47;
    }

    v1 = v26;
    v27 = [v26 array];
    if (!v27)
    {

      goto LABEL_46;
    }

    v28 = v27;
    v29 = [v27 memberValueType];
    if (!v29)
    {
      goto LABEL_52;
    }

    v30 = v29;
    if ([v29 legacyIntent] != 4)
    {

LABEL_52:
      v2 = v4;
      v50 = v28;
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v51 = sub_231477B68();
      OUTLINED_FUNCTION_38(v51, qword_280C3D970);
      v52 = sub_231477B58();
      v53 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v53))
      {
        v54 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v54);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v52, v55, "no memberValueType");
        OUTLINED_FUNCTION_2_5();
      }

      OUTLINED_FUNCTION_8_9();
      v9 = v23;
      v6 = v82;
      v4 = v2;
      OUTLINED_FUNCTION_4_7();
      goto LABEL_49;
    }

    v77 = v30;
    v31 = [v12 value];
    v78 = v28;
    if (!v31 || (v32 = sub_23142ED44(v31), v33 >> 60 == 15))
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v34 = sub_231477B68();
      OUTLINED_FUNCTION_38(v34, qword_280C3D970);
      v35 = sub_231477B58();
      v36 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v36))
      {
        v37 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v37);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v35, v38, "No value data");
        OUTLINED_FUNCTION_2_5();
      }

      goto LABEL_33;
    }

    v56 = v32;
    v57 = v33;
    sub_2313E4AFC(0, &qword_27DD4DD50, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD58, &qword_23147B978);
    v2 = swift_allocObject();
    v2[1] = xmmword_231479AC0;
    *(v2 + 4) = sub_2313E4AFC(0, &qword_27DD4DD60, 0x277CBEA60);
    *(v2 + 5) = sub_2313E4AFC(0, &qword_27DD4DD68, 0x277D23958);
    v70 = v56;
    v71 = v57;
    sub_2314782D8();

    if (!v85)
    {
      sub_2313E937C(v84, &qword_27DD4DD70, &qword_23147B988);
      OUTLINED_FUNCTION_4_7();
LABEL_78:
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v66 = sub_231477B68();
      OUTLINED_FUNCTION_38(v66, qword_280C3D970);
      v35 = sub_231477B58();
      v67 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v67))
      {
        v68 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v68);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v35, v69, "nil value");
        OUTLINED_FUNCTION_2_5();
      }

      sub_2313F3D2C(v70, 0);
LABEL_33:

      goto LABEL_34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD78, &qword_23147B990);
    swift_dynamicCast();
    OUTLINED_FUNCTION_4_7();
    if ((v58 & 1) == 0)
    {
      goto LABEL_78;
    }

    v59 = v83;
    v83 = MEMORY[0x277D84F90];
    v74 = v59;
    log = sub_2313F303C(v59);
    v60 = 0;
    v72 = v59 & 0xFFFFFFFFFFFFFF8;
    v73 = v59 & 0xC000000000000001;
    while (1)
    {
      if (log == v60)
      {

        sub_2313F3D2C(v70, v71);

LABEL_34:

LABEL_46:
        OUTLINED_FUNCTION_8_9();
LABEL_47:
        v9 = v23;
LABEL_48:
        v6 = v82;
LABEL_49:
        if (v7 == v6)
        {

          return;
        }

        goto LABEL_3;
      }

      if (v73)
      {
        v61 = MEMORY[0x23192E5D0](v60, v74);
      }

      else
      {
        if (v60 >= *(v72 + 16))
        {
          goto LABEL_88;
        }

        v61 = *(v74 + 8 * v60 + 32);
      }

      v62 = v61;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_87;
      }

      v2 = [v61 valueType];
      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (!v63)
      {
        break;
      }

      if ([v63 typeIdentifier] != 3)
      {

        goto LABEL_71;
      }

      v64 = [v62 value];
      sub_231478468();

      swift_unknownObjectRelease();
      sub_2313E4AFC(0, &qword_280C3BBC8, 0x277CD3E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v8 = v81;
LABEL_71:
        v60 = (v60 + 1);
        goto LABEL_72;
      }

      MEMORY[0x23192E1C0]();
      v2 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v65 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v8 = v81;
      if (v2 >= v65 >> 1)
      {
        OUTLINED_FUNCTION_20(v65);
        sub_231478158();
      }

      sub_231478188();
      v60 = (v60 + 1);
LABEL_72:
      v4 = v76;
      OUTLINED_FUNCTION_4_7();
    }

    goto LABEL_71;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void sub_23142DEE8()
{
  OUTLINED_FUNCTION_15();
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  v5 = OUTLINED_FUNCTION_29(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_26_1();
  if (v1)
  {
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_14_4();
    do
    {
      OUTLINED_FUNCTION_11_8();
      sub_23142EF58(v2, v0, v6);

      sub_23142EFB4(v0, v3);
      OUTLINED_FUNCTION_27_1();
      if (v8)
      {
        v10 = OUTLINED_FUNCTION_20(v7);
        sub_23141252C(v10, v3, 1);
      }

      OUTLINED_FUNCTION_19_3();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(uint64_t a1)
{
  result = qword_280C3BF48;
  if (!qword_280C3BF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23142E038()
{
  OUTLINED_FUNCTION_15();
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  v5 = OUTLINED_FUNCTION_29(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_26_1();
  if (v1)
  {
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_14_4();
    do
    {
      OUTLINED_FUNCTION_11_8();
      sub_23142EF58(v2, v0, v6);

      sub_23142EFB4(v0, v3);
      OUTLINED_FUNCTION_27_1();
      if (v8)
      {
        v10 = OUTLINED_FUNCTION_20(v7);
        sub_23141252C(v10, v3, 1);
      }

      OUTLINED_FUNCTION_19_3();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t QueriedAppIntentEvents.__allocating_init(events:)(uint64_t a1)
{
  v1 = swift_allocObject();
  QueriedAppIntentEvents.init(events:)();
  return v1;
}

void QueriedAppIntentEvents.init(events:)()
{
  OUTLINED_FUNCTION_15();
  v28 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD40, &qword_23147B8C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  OUTLINED_FUNCTION_4();
  v27 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v29 = v10 - v9;
  v11 = sub_2313F303C(v2);
  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v12)
    {

      *(v28 + 16) = v30;
      OUTLINED_FUNCTION_16();
      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23192E5D0](v12, v2);
    }

    else
    {
      if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v2 + 8 * v12 + 32);
    }

    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    sub_23142CD10();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_2313E937C(v5, &qword_27DD4DD40, &qword_23147B8C0);
      ++v12;
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      sub_23142EEFC(v5, v29, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23141D4D8();
        v30 = v22;
      }

      v17 = *(v30 + 16);
      v16 = *(v30 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_20(v16);
        v26 = v23;
        sub_23141D4D8();
        v18 = v26;
        v30 = v24;
      }

      *(v30 + 16) = v18;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_1_7();
      sub_23142EEFC(v19, v20, v21);
      v12 = v14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_23142E3CC()
{
  OUTLINED_FUNCTION_15();
  v22 = v1;
  v2 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  v3 = OUTLINED_FUNCTION_29(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v21 = (v7 - v6);
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_23141252C(0, v9, 0);
    v10 = 0;
    OUTLINED_FUNCTION_59();
    v20 = v8 + v11;
    while (v10 < *(v8 + 16))
    {
      v12 = v5;
      sub_23142EF58(v20 + *(v5 + 72) * v10, v21, type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript);
      v13 = sub_23142E584(v21, v22);
      v15 = v14;
      sub_23142EFB4(v21, type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript);
      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = OUTLINED_FUNCTION_20(v16);
        sub_23141252C(v19, v17 + 1, 1);
      }

      ++v10;
      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v5 = v12;
      if (v9 == v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_16();
  }
}

id sub_23142E584(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v43 - v5);
  v46 = type metadata accessor for Entity(0);
  v43 = *(v46 - 8);
  v7 = MEMORY[0x28223BE20](v46);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - v10;
  v50 = 91;
  v51 = 0xE100000000000000;
  v11 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  v12 = sub_231476BF8();
  v13 = [a2 stringFromDate_];

  v14 = sub_231477E68();
  v16 = v15;

  MEMORY[0x23192E060](v14, v16);

  MEMORY[0x23192E060](23389, 0xE200000000000000);
  MEMORY[0x23192E060](*a1, a1[1]);
  MEMORY[0x23192E060](23389, 0xE200000000000000);
  MEMORY[0x23192E060](a1[2], a1[3]);
  MEMORY[0x23192E060](93, 0xE100000000000000);
  v48 = 0x736E6F737265505BLL;
  v49 = 0xEA0000000000203ALL;
  v17 = *(a1 + *(v11 + 28));
  result = sub_2313F303C(v17);
  v19 = result;
  v20 = 0;
  v45 = MEMORY[0x277D84F90];
  while (v19 != v20)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23192E5D0](v20, v17);
    }

    else
    {
      if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      result = *(v17 + 8 * v20 + 32);
    }

    v21 = result;
    v22 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    sub_2313EF700(1, v6);

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v46);
    sub_23142EEFC(v6, v44, type metadata accessor for Entity);
    v23 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23141CB80();
      v23 = v28;
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    v45 = v23;
    if (v25 >= v24 >> 1)
    {
      sub_23141CB80();
      v45 = v29;
    }

    v26 = v44;
    v27 = v45;
    *(v45 + 16) = v25 + 1;
    result = sub_23142EEFC(v26, v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v25, type metadata accessor for Entity);
    v20 = v22;
  }

  v30 = v45;
  v31 = *(v45 + 16);
  if (v31)
  {
    v47 = MEMORY[0x277D84F90];
    sub_23141252C(0, v31, 0);
    v32 = v47;
    v33 = v30 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v34 = *(v43 + 72);
    do
    {
      sub_23142EF58(v33, v9, type metadata accessor for Entity);
      v36 = *v9;
      v35 = v9[1];

      sub_23142EFB4(v9, type metadata accessor for Entity);
      v47 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_23141252C(v37 > 1, v38 + 1, 1);
        v32 = v47;
      }

      *(v32 + 16) = v38 + 1;
      v39 = v32 + 16 * v38;
      *(v39 + 32) = v36;
      *(v39 + 40) = v35;
      v33 += v34;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v47 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
  sub_2313EF69C();
  v40 = sub_231477E28();
  v42 = v41;

  MEMORY[0x23192E060](v40, v42);

  MEMORY[0x23192E060](93, 0xE100000000000000);
  MEMORY[0x23192E060](v48, v49);

  return v50;
}

uint64_t QueriedAppIntentEvents.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_23142EB10(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_23142EC18(uint64_t a1)
{
  sub_231476CA8();
  if (v1 <= 0x3F)
  {
    sub_23142ECDC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Interaction(319);
      if (v3 <= 0x3F)
      {
        sub_23141F374(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23142ECDC(uint64_t a1)
{
  if (!qword_280C3BC18)
  {
    sub_2313E4AFC(255, &qword_280C3BBC8, 0x277CD3E90);
    v1 = sub_231478198();
    if (!v2)
    {
      atomic_store(v1, &qword_280C3BC18);
    }
  }
}

uint64_t sub_23142ED44(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231476BA8();

  return v3;
}

uint64_t sub_23142EDB4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_231477E68();
  }

  return OUTLINED_FUNCTION_17();
}

void (*sub_23142EE10(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_23142EB04(a3);
  sub_23142EB10(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x23192E5D0](a2, a3);
  }

  *a1 = v7;
  return sub_23142EE9C;
}

unint64_t sub_23142EEA4()
{
  result = qword_27DD4EAB0;
  if (!qword_27DD4EAB0)
  {
    sub_231476CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EAB0);
  }

  return result;
}

uint64_t sub_23142EEFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  return a2;
}

uint64_t sub_23142EF58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  return a2;
}

uint64_t sub_23142EFB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_23142F00C(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 7)
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v4 = sub_231477B68();
    __swift_project_value_buffer(v4, qword_280C3D970);
    v5 = sub_231477B58();
    v6 = sub_2314782B8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_2313E1000, v5, v6, "unknown INIntentHandlingStatus: %ld", v7, 0xCu);
      MEMORY[0x23192F1F0](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

void sub_23142F110(unint64_t a1@<X0>, char a2@<W3>, char *a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X2>)
{
  if (a2 & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D610, &qword_2314798D0), inited = swift_initStackObject(), *(inited + 16) = xmmword_231479A40, *(inited + 32) = 0xD000000000000011, *(inited + 40) = 0x8000000231481C90, *(inited + 48) = 0xD000000000000016, *(inited + 56) = 0x8000000231481CD0, *(inited + 64) = 0xD000000000000016, *(inited + 72) = 0x8000000231481CB0, v16[0] = a4, v16[1] = a5, MEMORY[0x28223BE20](inited), v15[2] = v16, LOBYTE(a4) = sub_231462038(sub_23142FED0, v15, inited), swift_setDeallocating(), sub_231414B24(), (a4))
  {
    v10 = 1;
  }

  else if (a1 >= 3)
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v11 = sub_231477B68();
    __swift_project_value_buffer(v11, qword_280C3D970);
    v12 = sub_231477B58();
    v13 = sub_2314782B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&dword_2313E1000, v12, v13, "unknown INInteractionDirection: %ld", v14, 0xCu);
      MEMORY[0x23192F1F0](v14, -1, -1);
    }

    v10 = 2;
  }

  else
  {
    v10 = 2 - a1;
  }

  *a3 = v10;
}

char *sub_23142F340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D670, &qword_231479A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23142F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_2314787C8() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_2314787C8() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_23142F530(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_23142F590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2314788E8();
  sub_231477F38();
  OUTLINED_FUNCTION_14_5();
  sub_231477F38();
  v8 = sub_231478918();

  return sub_23142F434(a1, a2, a3, a4, v8);
}

unint64_t sub_23142F62C(uint64_t a1)
{
  v2 = sub_2314788D8();

  return sub_23142F530(a1, v2);
}

uint64_t sub_23142F6C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t a8)
{
  OUTLINED_FUNCTION_5_7(a1, a2);
  sub_2313E7C04();
  OUTLINED_FUNCTION_0_7();
  if (v16)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D640, &qword_23147FD10);
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (sub_2314785F8())
  {
    sub_2313E7C04();
    OUTLINED_FUNCTION_9_9();
    if (!v20)
    {
      goto LABEL_14;
    }

    v17 = v19;
  }

  if (v18)
  {
    a7(0);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_12_9();

    __asm { BRAA            X3, X16 }
  }

  sub_23142FC4C(v17, a2, a3, a1, *v8);
  OUTLINED_FUNCTION_12_9();
}

uint64_t sub_23142F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_23142F590(a3, a4, a5, a6);
  OUTLINED_FUNCTION_0_7();
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD98, &qword_23147B9C0);
  if (sub_2314785F8())
  {
    sub_23142F590(a3, a4, a5, a6);
    OUTLINED_FUNCTION_9_9();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  v20 = *v7;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
    OUTLINED_FUNCTION_12_9();
  }

  else
  {
    sub_23142FCD4(v16, a3, a4, a5, a6, a1, a2, v20);

    OUTLINED_FUNCTION_12_9();
  }
}

void sub_23142F994(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_7(a1, a2);
  sub_2313F0604();
  OUTLINED_FUNCTION_0_7();
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDB0, &qword_23147B9D8);
  OUTLINED_FUNCTION_11_9();
  if ((sub_2314785F8() & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_36_0();
  v9 = sub_2313F0604();
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_11:
    sub_231478888();
    __break(1u);
    return;
  }

  v7 = v9;
LABEL_5:
  if (v8)
  {
    v11 = *(*v2 + 56);
    v12 = type metadata accessor for HistoryStats(0);
    sub_23142FE10(a1, v11 + *(*(v12 - 8) + 72) * v7, type metadata accessor for HistoryStats);
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    sub_23142FD24(v13, v14, v15, a1, v16, v17, v18);
    OUTLINED_FUNCTION_25_1();
  }
}

void sub_23142FAF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_7(a1, a2);
  sub_2313F0604();
  OUTLINED_FUNCTION_0_7();
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD88, &qword_23147B9B8);
  OUTLINED_FUNCTION_11_9();
  if ((sub_2314785F8() & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_36_0();
  v9 = sub_2313F0604();
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_11:
    sub_231478888();
    __break(1u);
    return;
  }

  v7 = v9;
LABEL_5:
  if (v8)
  {
    v11 = *(*v2 + 56);
    v12 = type metadata accessor for Interaction(0);
    sub_23142FE10(a1, v11 + *(*(v12 - 8) + 72) * v7, type metadata accessor for Interaction);
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    sub_23142FD24(v13, v14, v15, a1, v16, v17, v18);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_23142FC4C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10(0);
  OUTLINED_FUNCTION_3();
  result = (*(v11 + 32))(v9 + *(v11 + 72) * a1, a4);
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

unint64_t sub_23142FCD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = (a8[7] + 16 * result);
  *v9 = a6;
  v9[1] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_23142FD24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  result = sub_23142FE70(a4, v12 + *(*(v14 - 8) + 72) * a1, a7);
  v16 = *(a5 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
  }

  return result;
}

uint64_t sub_23142FDAC(void *a1)
{
  v1 = [a1 groupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231477E68();

  return v3;
}

uint64_t sub_23142FE10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t sub_23142FE70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t INPerson.entityId.getter()
{
  result = sub_231414BC8(v0, &selRef_contactIdentifier);
  if (!v2)
  {
    return sub_231414BC8(v0, &selRef_customIdentifier);
  }

  return result;
}

uint64_t sub_23142FF28()
{
  v1 = v0;
  if (qword_280C3BE50 != -1)
  {
    swift_once();
  }

  v3 = sub_2314600DC();
  v4 = v2;
  if (qword_280C3BE38 != -1)
  {
    swift_once();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_23:
    v12 = 0;
    return v12 & 1;
  }

  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_5:
  v5 = sub_231414BC8(v1, &selRef_contactIdentifier);
  if (v6)
  {
    if (v5 == v3 && v6 == v4)
    {

      v12 = 1;
      goto LABEL_21;
    }

    v8 = sub_2314787C8();

    if (v8)
    {
LABEL_20:
      v12 = 1;
      goto LABEL_21;
    }
  }

  v9 = sub_231414BC8(v1, &selRef_customIdentifier);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_21;
  }

  if (v9 == v3 && v10 == v4)
  {

    goto LABEL_20;
  }

  v12 = sub_2314787C8();

LABEL_21:

  return v12 & 1;
}

unint64_t sub_2314300A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
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
    result = sub_231477F78();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_231478088();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23143018C(uint64_t a1, uint64_t a2)
{
  sub_231423704();
  if (sub_231478438())
  {
    v4 = *MEMORY[0x277CFBCE0];
    v5 = sub_231477E58();
    v6 = (*(v4 + 16))(v4, v5);

    v7 = sub_231477E68();
  }

  else
  {
    sub_2313F0F60();

    v8 = sub_2313F0FA4(a1, a2);
    v9 = sub_2313F1018(v8);
    if (v10)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_23143028C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v76) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v67 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v67 - v12);
  v14 = type metadata accessor for Entity(0);
  v70 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v71 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v67 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  if (!a1)
  {
    goto LABEL_46;
  }

  v68 = &v67 - v20;
  v69 = v21;
  v78 = v8;
  v22 = sub_2313F3038(a1);
  v23 = 0;
  v79 = a1 & 0xFFFFFFFFFFFFFF8;
  v80 = a1 & 0xC000000000000001;
  v72 = MEMORY[0x277D84F90];
  v77 = v22;
  while (1)
  {
    if (v22 == v23)
    {
      v34 = v72;
      if (*(v72 + 16))
      {
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_0_8();
        sub_2313F0660(v34, v35 & 0xFFFFFFFFFFFFLL | 0x7374000000000000, 0xE800000000000000);
        v36 = 0;
        v72 = v81;
        v76 = MEMORY[0x277D84F90];
        v73 = v11;
        v74 = a1;
        while (1)
        {
          if (v22 == v36)
          {
            v59 = v76;
            if (*(v76 + 16))
            {
              swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_0_8();
              sub_2313F0660(v59, v60 & 0xFFFFFFFFFFFFLL | 0x4874000000000000, 0xEE0073656C646E61);
              return v81;
            }

            else
            {

              return v72;
            }
          }

          if (v80)
          {
            v37 = MEMORY[0x23192E5D0](v36, a1);
          }

          else
          {
            if (v36 >= *(v79 + 16))
            {
              goto LABEL_54;
            }

            v37 = *(a1 + 8 * v36 + 32);
          }

          v38 = v37;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_53;
          }

          v39 = [v37 personHandle];
          if (!v39)
          {
            goto LABEL_28;
          }

          v40 = v39;
          v41 = v78;
          sub_2313F0A10(v78);
          if (v3)
          {
            break;
          }

          OUTLINED_FUNCTION_1_10(v41, 0);
          v44 = v75;
          sub_2313F0804(v41, v75);
          _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0();
          v47 = v46;
          v48 = HIBYTE(v46) & 0xF;
          if ((v46 & 0x2000000000000000) == 0)
          {
            v48 = v45 & 0xFFFFFFFFFFFFLL;
          }

          if (v48)
          {
            v49 = v45;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v81 = *(v44 + 32);
            sub_2313F1184(v49, v47, 3, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
            *(v44 + 32) = v81;
          }

          else
          {
          }

          v51 = v44;
          v11 = v73;
          sub_2313F0804(v51, v73);
          v42 = 0;
          a1 = v74;
LABEL_35:
          OUTLINED_FUNCTION_1_10(v11, v42);

          if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
          {
            sub_231426638(v11);
            ++v36;
            v22 = v77;
          }

          else
          {
            v52 = v69;
            sub_2313F0804(v11, v69);
            sub_2313F0804(v52, v71);
            v53 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23141CB80();
              v53 = v57;
            }

            v55 = *(v53 + 16);
            v54 = *(v53 + 24);
            if (v55 >= v54 >> 1)
            {
              OUTLINED_FUNCTION_10(v54);
              sub_23141CB80();
              v53 = v58;
            }

            *(v53 + 16) = v55 + 1;
            v56 = (*(v70 + 80) + 32) & ~*(v70 + 80);
            v76 = v53;
            sub_2313F0804(v71, v53 + v56 + *(v70 + 72) * v55);
            ++v36;
            v22 = v77;
          }
        }

        v3 = 0;
LABEL_28:
        v42 = 1;
        v43 = v78;
        OUTLINED_FUNCTION_1_10(v78, 1);
        sub_231426638(v43);
        goto LABEL_35;
      }

LABEL_46:
      if (qword_280C3CF50 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_47;
    }

    if (v80)
    {
      v24 = MEMORY[0x23192E5D0](v23, a1);
    }

    else
    {
      if (v23 >= *(v79 + 16))
      {
        goto LABEL_52;
      }

      v24 = *(a1 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (sub_23142FF28())
    {
      goto LABEL_11;
    }

    sub_2313EF700(v76 & 1, v13);
    if (v3)
    {

      v3 = 0;
LABEL_11:

      OUTLINED_FUNCTION_1_10(v13, 1);
      sub_231426638(v13);
      ++v23;
    }

    else
    {

      OUTLINED_FUNCTION_1_10(v13, 0);
      v27 = v68;
      sub_2313F0804(v13, v68);
      v28 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23141CB80();
        v72 = v32;
      }

      v30 = *(v72 + 16);
      v29 = *(v72 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_10(v29);
        sub_23141CB80();
        v72 = v33;
      }

      v31 = v72;
      *(v72 + 16) = v30 + 1;
      sub_2313F0804(v27, v31 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v30);
      v23 = v26;
      a1 = v28;
      v22 = v77;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_47:
  v62 = sub_231477B68();
  __swift_project_value_buffer(v62, qword_280C3D970);
  v63 = sub_231477B58();
  v64 = sub_2314782B8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2313E1000, v63, v64, "no INPersons to donate", v65, 2u);
    MEMORY[0x23192F1F0](v65, -1, -1);
  }

  sub_2313F17E0();
  swift_allocError();
  *v66 = 1;
  return swift_willThrow();
}

uint64_t sub_2314309A8()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 appInferred];

  if (!v3)
  {
    return 1;
  }

  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 1;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v5 = sub_231477B68();
  __swift_project_value_buffer(v5, qword_280C3D970);
  v6 = sub_231477B58();
  v7 = sub_2314782A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2313E1000, v6, v7, "INPlayMediaIntent with appInferred; donation will be skipped", v8, 2u);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  return 0;
}

void sub_231430AD8()
{
  v1 = v0;
  v2 = type metadata accessor for Entity(0);
  v61 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v57 - v6;
  MEMORY[0x28223BE20](v5);
  *&v63 = &v57 - v7;
  if (qword_280C3CF50 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v8 = sub_231477B68();
    __swift_project_value_buffer(v8, qword_280C3D970);
    v9 = v1;
    v10 = sub_231477B58();
    v11 = sub_2314782A8();

    v12 = os_log_type_enabled(v10, v11);
    v62 = v9;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v65 = v14;
      *v13 = 136315138;
      v15 = v9;
      v16 = [v15 description];
      v17 = sub_231477E68();
      v19 = v18;

      v9 = v62;
      v20 = sub_2313EB684(v17, v19, &v65);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_2313E1000, v10, v11, "The INPlayMediaIntent: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    v21 = [v9 mediaSearch];
    if (v21)
    {
      v22 = v21;
      v23 = v9;
      v24 = sub_231477B58();
      v25 = sub_2314782A8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v65 = v27;
        *v26 = 136315138;
        v64 = [v23 mediaSearch];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDD0, qword_23147BA88);
        v28 = sub_231477EB8();
        v30 = sub_2313EB684(v28, v29, &v65);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_2313E1000, v24, v25, "The INPlayMediaIntent mediaSearch: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }
    }

    v31 = sub_231432388(v9);
    if (!v31)
    {
      goto LABEL_24;
    }

    v32 = v31;
    if (!sub_2313F3038(v31))
    {

LABEL_24:
      v44 = [v9 mediaSearch];
      if (v44)
      {
        v45 = v44;
        v46 = v44;
        v47 = v60;
        v48 = v59;
        sub_2314312B4(0, v45, v60);

        v59 = v48;
        if (!v48)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v49 = [v9 mediaContainer];
        if (!v49)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
LABEL_34:
          sub_231477DC8();
          return;
        }

        v50 = v49;
        v46 = v49;
        v51 = [v9 mediaSearch];
        v47 = v58;
        v52 = v59;
        sub_2314312B4(v50, v51, v58);

        v59 = v52;
        if (!v52)
        {
LABEL_35:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
          inited = swift_initStackObject();
          v63 = xmmword_231479580;
          OUTLINED_FUNCTION_7_4(inited, xmmword_231479580);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
          v55 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v56 = swift_allocObject();
          *(v56 + 16) = v63;
          sub_2313F0868(v47, v56 + v55);
          inited[3].n128_u64[0] = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
          sub_231477DC8();

          sub_2313F09B4(v47);
          return;
        }
      }

      return;
    }

    v33 = sub_2313F3038(v32);
    if (!v33)
    {

      v36 = MEMORY[0x277D84F90];
LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
      v53 = swift_initStackObject();
      OUTLINED_FUNCTION_7_4(v53, xmmword_231479580)[3].n128_u64[0] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
      goto LABEL_34;
    }

    v34 = v33;
    v1 = v59;
    v65 = MEMORY[0x277D84F90];
    sub_2313FA208(0, v33 & ~(v33 >> 63), 0);
    if (v34 < 0)
    {
      break;
    }

    v35 = 0;
    v36 = v65;
    v60 = v32 & 0xC000000000000001;
    v58 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v60)
      {
        v38 = MEMORY[0x23192E5D0](v35, v32);
      }

      else
      {
        if (v35 >= *(v58 + 16))
        {
          goto LABEL_37;
        }

        v38 = *(v32 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = v38;
      v41 = [v9 mediaSearch];
      sub_2314312B4(v39, v41, v63);
      if (v1)
      {

        v59 = v1;
        return;
      }

      v65 = v36;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2313FA208(v42 > 1, v43 + 1, 1);
        v36 = v65;
      }

      *(v36 + 16) = v43 + 1;
      sub_2313F0804(v63, v36 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v43);
      ++v35;
      v9 = v62;
      if (v37 == v34)
      {

        v59 = 0;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  __break(1u);
}

uint64_t sub_2314312B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a3;
  v6 = 0xE900000000000065;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDB8, &qword_23147BA68);
  MEMORY[0x28223BE20](v7);
  v9 = &v97 - v8;
  v10 = sub_231477D88();
  v103 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v102 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Entity(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v14[4] = MEMORY[0x277D84F98];
  sub_231476C98();
  v14[2] = 0x657449616964654DLL;
  v14[3] = 0xE90000000000006DLL;
  if (a1)
  {
    v99 = v3;
    v100 = v7;
    v98 = a1;
    v15 = a1;
    sub_231414BC8(v15, &selRef_title);
    if (v16)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v17 = OUTLINED_FUNCTION_1_11();
      sub_2313F1184(v17, v18, v19, v20, 0xE500000000000000, v21);
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    sub_231414BC8(v15, &selRef_artist);
    if (v22)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v23 = OUTLINED_FUNCTION_1_11();
      sub_2313F1184(v23, v24, v25, v26, 0xE600000000000000, v27);
      OUTLINED_FUNCTION_5_8();
    }

    if ([v15 type] && (objc_msgSend(v15, sel_type), (v28 = INMediaItemTypeGetName()) != 0))
    {
      v29 = v28;
      sub_231477E68();
      v30 = v9;
      v31 = v10;
      v32 = a2;
      v34 = v33;

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_2_7();
      v35 = OUTLINED_FUNCTION_8_10();
      v36 = v34;
      a2 = v32;
      v10 = v31;
      v9 = v30;
      OUTLINED_FUNCTION_13_7(v35, v36, 3, v37, v38, v39);

      OUTLINED_FUNCTION_5_8();
      if (!a2)
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (!a2)
      {
LABEL_29:
        v104 = v6;
        v105 = 0;
        v106 = 5;

        v73 = sub_231402B08(0, 0xE000000000000000);
        v75 = v74;
        sub_231403090(v104, v105, v106);
        v76 = v102;
        sub_231477D78();
        v77 = sub_231401D64(v73, v75);
        v79 = v78;
        sub_2314027B0(v77, v78, v76);
        sub_2313EB8A4(v77, v79);
        sub_231477D68();
        *&v9[*(v100 + 36)] = 16;
        v80 = sub_231431AB4(v9);
        v82 = v81;
        sub_23140224C(v9, &qword_27DD4DDB8, &qword_23147BA68);
        (*(v103 + 8))(v76, v10);
        *v14 = v80;
        v14[1] = v82;
        sub_2313F0868(v14, v101);
        return sub_2313F09B4(v14);
      }
    }

LABEL_14:
    v40 = a2;
    sub_231414BC8(v40, &selRef_mediaName);
    if (v41)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v42 = OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_13_7(v42, v43, v44, v45, v46, v47);
      OUTLINED_FUNCTION_5_8();
    }

    sub_231414BC8(v40, &selRef_artistName);
    if (v48)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v49 = OUTLINED_FUNCTION_1_11();
      sub_2313F1184(v49, v50, v51, v52, 0xEA0000000000656DLL, v53);
      OUTLINED_FUNCTION_5_8();
    }

    sub_231414BC8(v40, &selRef_albumName);
    if (v54)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v55 = OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_13_7(v55, v56, v57, v58, v59, v60);
      OUTLINED_FUNCTION_5_8();
    }

    v61 = sub_231432334(v40, &selRef_genreNames);
    if (v61)
    {
      if (*(v61 + 16))
      {
        sub_2314319C4(v61, &v104);

        swift_isUniquelyReferenced_nonNull_native();
        v107 = v14[4];
        v62 = OUTLINED_FUNCTION_12_10();
        sub_2313F1184(v62, v63, v64, v65, 0xE500000000000000, v66);
        v6 = v107;
        v14[4] = v107;
      }

      else
      {
      }
    }

    v67 = sub_231432334(v40, &selRef_moodNames);
    v68 = v98;
    if (v67)
    {
      if (!*(v67 + 16))
      {

        if (v68)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }

      sub_2314319C4(v67, &v104);

      swift_isUniquelyReferenced_nonNull_native();
      v107 = v14[4];
      v69 = OUTLINED_FUNCTION_12_10();
      sub_2313F1184(v69, v70, v71, 1685024621, 0xE400000000000000, v72);
      v6 = v107;
      v14[4] = v107;
    }

    if (v68)
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_32:
    if ([v40 mediaType])
    {
      [v40 mediaType];
      v84 = INMediaItemTypeGetName();
      if (v84)
      {
        v85 = v84;
        sub_231477E68();
        v87 = v86;

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_7();
        v88 = OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_13_7(v88, v87, 3, v89, v90, v91);

        OUTLINED_FUNCTION_5_8();
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  if (a2)
  {
    v98 = 0;
    v99 = v3;
    v100 = v7;
    v6 = MEMORY[0x277D84F98];
    goto LABEL_14;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v92 = sub_231477B68();
  __swift_project_value_buffer(v92, qword_280C3D970);
  v93 = sub_231477B58();
  v94 = sub_2314782B8();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_2313E1000, v93, v94, "Cannot convert MediaItem to Entity", v95, 2u);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  sub_2313F17E0();
  swift_allocError();
  *v96 = 1;
  swift_willThrow();
  return sub_2313F09B4(v14);
}

uint64_t sub_2314319C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = result;
    v11 = a2;
    v12 = MEMORY[0x277D84F90];
    sub_231412578(0, v2, 0);
    v3 = v12;
    v5 = (v4 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v9 >= v8 >> 1)
      {
        result = sub_231412578((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 24 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      *(v10 + 48) = 3;
      v5 += 2;
      --v2;
    }

    while (v2);
    a2 = v11;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

uint64_t sub_231431AB4(uint64_t a1)
{
  v2 = sub_231477D58();
  MEMORY[0x28223BE20](v2);
  v19 = 0;
  v20 = 0xE000000000000000;
  (*(v4 + 16))(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_23140292C(&unk_280C3C170, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  sub_2314780A8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDB8, &qword_23147BA68);
  v6 = *(a1 + *(result + 36));
  v7 = v18[0];
  for (i = v18[1]; v6; ++i)
  {
    v9 = *(v7 + 16);
    if (i == v9)
    {
      break;
    }

    if (i >= v9)
    {
      __break(1u);
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v10 = *(v7 + i + 32);
    if (qword_280C3BE98 != -1)
    {
      result = swift_once();
    }

    v11 = off_280C3BEA0;
    if (*(off_280C3BEA0 + 2) <= v10 >> 4)
    {
      goto LABEL_11;
    }

    v12 = (off_280C3BEA0 + 16 * (v10 >> 4) + 32);
    v13 = *v12;
    v14 = v12[1];

    MEMORY[0x23192E050](v13, v14);

    if (v11[2] <= (v10 & 0xF))
    {
      goto LABEL_12;
    }

    v15 = &v11[2 * (v10 & 0xF) + 4];
    v16 = *v15;
    v17 = v15[1];

    MEMORY[0x23192E050](v16, v17);

    --v6;
  }

  return v19;
}

uint64_t sub_231431CE8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_231478038();
    OUTLINED_FUNCTION_10_9(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x23192E0D0](15, a1 >> 16);
    OUTLINED_FUNCTION_10_9(v3);
    return v4 | 8;
  }
}

void *sub_231431D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_23143221C(sub_23143247C, v5, a1, a2);
}

uint64_t sub_231431D98(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_2313EB8A4(v7, v6);
      *v5 = xmmword_23147BA30;
      sub_2313EB8A4(0, 0xC000000000000000);
      v14 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v14 < v7)
      {
        goto LABEL_23;
      }

      if (sub_231476848() && __OFSUB__(v7, sub_231476868()))
      {
        goto LABEL_24;
      }

      sub_231476878();
      swift_allocObject();
      v15 = sub_231476828();

      v13 = v15;
LABEL_16:
      if (v14 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_231432280(v7, v7 >> 32, a1, v16);

      v12 = v13 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_2313EB8A4(v7, v6);
      v19 = v7;
      v20 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_23147BA30;
      sub_2313EB8A4(0, 0xC000000000000000);
      sub_231476B18();
      v7 = v19;
      v11 = sub_231432280(*(v19 + 16), *(v19 + 24), a1, v10);
      if (v3)
      {
        v12 = v20 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v12;
      }

      else
      {
        v4 = v11;
        v12 = v20 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v12;
      }

      return v4;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v3)
      {
        return v19;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_2313EB8A4(v7, v6);
      v21[0] = v7;
      LOWORD(v21[1]) = v6;
      BYTE2(v21[1]) = BYTE2(v6);
      BYTE3(v21[1]) = BYTE3(v6);
      BYTE4(v21[1]) = BYTE4(v6);
      BYTE5(v21[1]) = BYTE5(v6);
      BYTE6(v21[1]) = BYTE6(v6);
      a1(&v19, v21, v21 + BYTE6(v6));
      if (!v3)
      {
        v4 = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v5 = v21[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_23143215C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_231476B08();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x23192CBE0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x23192CC00]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2314321D4(uint64_t result)
{
  if (result)
  {
    result = sub_2314784F8();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_23143221C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_231432280(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4)
{
  result = sub_231476848();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_231476868();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_231476858();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_231432334(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231478128();

  return v4;
}

uint64_t sub_231432388(void *a1)
{
  v1 = [a1 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_23143249C();
  v3 = sub_231478128();

  return v3;
}

void *sub_2314323E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_231431D44(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_23143243C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2314321D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_23143249C()
{
  result = qword_280C3BC08;
  if (!qword_280C3BC08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BC08);
  }

  return result;
}

uint64_t sub_2314324E0()
{
  v1 = [v0 privateSearchForMediaIntentData];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 appInferred];

  if (!v3)
  {
    return 1;
  }

  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 1;
  }

  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v5 = sub_231477B68();
  __swift_project_value_buffer(v5, qword_280C3D970);
  v6 = sub_231477B58();
  v7 = sub_2314782A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2313E1000, v6, v7, "INSearchForMediaIntent with appInferred; donation will be skipped", v8, 2u);
    MEMORY[0x23192F1F0](v8, -1, -1);
  }

  return 0;
}

void sub_231432620()
{
  v2 = v0;
  v3 = type metadata accessor for Entity(0);
  v34 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = sub_231432388(v2);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (!sub_2313F3038(v11))
  {
    v23 = [v2 mediaSearch];

    if (v23)
    {

      v24 = [v2 mediaSearch];
      sub_2314312B4(0, v24, v8);

      if (!v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
        inited = swift_initStackObject();
        v33 = xmmword_231479580;
        OUTLINED_FUNCTION_7_4(inited, xmmword_231479580);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = v33;
        sub_2313F0868(v8, v27 + v26);
        inited[3].n128_u64[0] = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
        sub_231477DC8();
        sub_2313F09B4(v8);
      }

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
LABEL_26:
    sub_231477DC8();
    return;
  }

  v12 = sub_2313F3038(v11);
  if (!v12)
  {

    v15 = MEMORY[0x277D84F90];
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
    v28 = swift_initStackObject();
    OUTLINED_FUNCTION_7_4(v28, xmmword_231479580)[3].n128_u64[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
    goto LABEL_26;
  }

  v13 = v12;
  v35 = v10;
  sub_2313FA208(0, v12 & ~(v12 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v35;
    v32 = v2;
    *&v33 = v11 & 0xC000000000000001;
    v30 = v11 & 0xFFFFFFFFFFFFFF8;
    v31 = v13;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v33)
      {
        v17 = MEMORY[0x23192E5D0](v14, v11);
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_28;
        }

        v17 = *(v11 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v17;
      v20 = [v32 mediaSearch];
      sub_2314312B4(v18, v20, v6);
      if (v1)
      {

        return;
      }

      v35 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2313FA208(v21 > 1, v22 + 1, 1);
        v15 = v35;
      }

      *(v15 + 16) = v22 + 1;
      sub_2313F0804(v6, v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22);
      ++v14;
      if (v16 == v31)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_231432AB8()
{
  v1 = sub_231433338(v0);
  if (v1)
  {
    v2 = sub_2313F3038(v1);

    v3 = v2 > 1;
  }

  else
  {
    v3 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D668, qword_23147BAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479580;
  v5 = MEMORY[0x277D839B0];
  *(inited + 32) = 0x70756F72477369;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D830, &qword_231479A60);
  return sub_231477DC8();
}

uint64_t sub_231432BA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 spokenPhrase];
  sub_231477E68();

  v4 = sub_231477EC8();
  v6 = v5;

  *(a2 + 32) = MEMORY[0x277D84F98];
  type metadata accessor for Entity(0);
  sub_231476C98();
  strcpy((a2 + 16), "MessageGroup");
  *(a2 + 29) = 0;
  *(a2 + 30) = -5120;
  *a2 = v4;
  *(a2 + 8) = v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 32);
  result = OUTLINED_FUNCTION_2_8(v4, v6, v8, v9, v10, isUniquelyReferenced_nonNull_native);
  *(a2 + 32) = v12;
  return result;
}

void sub_231432CA4()
{
  v1 = sub_231433338(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2313F3038(v1);
    v4 = 0;
    v54 = MEMORY[0x277D84F90];
    while (v3 != v4)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23192E5D0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        return;
      }

      v8 = sub_231433F8C(v5);

      ++v4;
      if (v8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_0();
          sub_23141D070();
          v54 = v10;
        }

        v9 = *(v54 + 16);
        if (v9 >= *(v54 + 24) >> 1)
        {
          sub_23141D070();
          v54 = v11;
        }

        *(v54 + 16) = v9 + 1;
        *(v54 + 8 * v9 + 32) = v8;
        v4 = v7;
      }
    }

    v12 = 0;
    v13 = v54;
    v57 = *(v54 + 16);
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v12 == v57)
      {

        goto LABEL_50;
      }

      if (v12 >= *(v13 + 16))
      {
        goto LABEL_74;
      }

      v15 = *(v54 + 32 + 8 * v12);
      if (v15 >> 62)
      {
        v16 = sub_231478618();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v14 >> 62;
      if (v14 >> 62)
      {
        v18 = sub_231478618();
      }

      else
      {
        v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_75;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v17)
      {
        goto LABEL_28;
      }

      v20 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v19 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_29;
      }

LABEL_30:
      v60 = v12 + 1;
      v21 = *(v20 + 16);
      v22 = (*(v20 + 24) >> 1) - v21;
      v23 = v20 + 8 * v21;
      v58 = v20;
      if (v15 >> 62)
      {
        v26 = sub_231478618();
        if (!v26)
        {
          goto LABEL_44;
        }

        v27 = v26;
        v28 = sub_231478618();
        if (v22 < v28)
        {
          goto LABEL_80;
        }

        if (v27 < 1)
        {
          goto LABEL_81;
        }

        v55 = v28;
        v56 = v14;
        v29 = v23 + 32;
        sub_2314333DC();
        for (i = 0; i != v27; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D828, &qword_23147A1E0);
          v31 = sub_23142EE10(v59, i, v15);
          v33 = *v32;
          (v31)(v59, 0);
          *(v29 + 8 * i) = v33;
        }

        v13 = v54;
        v25 = v55;
        v14 = v56;
LABEL_40:

        v12 = v60;
        if (v25 < v16)
        {
          goto LABEL_76;
        }

        if (v25 > 0)
        {
          v34 = *(v58 + 16);
          v35 = __OFADD__(v34, v25);
          v36 = v34 + v25;
          if (v35)
          {
            goto LABEL_78;
          }

          *(v58 + 16) = v36;
        }
      }

      else
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          if (v22 < v24)
          {
            goto LABEL_79;
          }

          v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_231433398();
          swift_arrayInitWithCopy();
          goto LABEL_40;
        }

LABEL_44:

        v12 = v60;
        if (v16 > 0)
        {
          goto LABEL_76;
        }
      }
    }

    if (v17)
    {
LABEL_28:
      sub_231478618();
    }

LABEL_29:
    v14 = sub_231478528();
    v20 = v14 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_30;
  }

  v14 = 0;
LABEL_50:
  v37 = sub_23143028C(v14, 0);

  if (!v53)
  {
    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;

    v43 = 0;
    v44 = MEMORY[0x277D84F90];
    v60 = v37;
    while (v41)
    {
LABEL_59:
      v46 = *(*(v37 + 56) + ((v43 << 9) | (8 * __clz(__rbit64(v41)))));
      v47 = *(v46 + 16);
      v48 = *(v44 + 16);
      if (__OFADD__(v48, v47))
      {
        goto LABEL_82;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v48 + v47 > *(v44 + 24) >> 1)
      {
        sub_23141CB80();
        v44 = v49;
      }

      v41 &= v41 - 1;
      if (*(v46 + 16))
      {
        v50 = (*(v44 + 24) >> 1) - *(v44 + 16);
        type metadata accessor for Entity(0);
        if (v50 < v47)
        {
          goto LABEL_83;
        }

        swift_arrayInitWithCopy();

        v37 = v60;
        if (v47)
        {
          v51 = *(v44 + 16);
          v35 = __OFADD__(v51, v47);
          v52 = v51 + v47;
          if (v35)
          {
            goto LABEL_84;
          }

          *(v44 + 16) = v52;
        }
      }

      else
      {

        v37 = v60;
        if (v47)
        {
          __break(1u);
LABEL_70:

          return;
        }
      }
    }

    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_77;
      }

      if (v45 >= v42)
      {
        goto LABEL_70;
      }

      v41 = *(v38 + 8 * v45);
      ++v43;
      if (v41)
      {
        v43 = v45;
        goto LABEL_59;
      }
    }
  }
}

uint64_t sub_231433260()
{
  result = sub_231433338(v0);
  if (result)
  {
    v2 = sub_2313F3038(result);

    return v2 > 0;
  }

  return result;
}

uint64_t sub_231433338(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231433398();
  v3 = sub_231478128();

  return v3;
}

unint64_t sub_231433398()
{
  result = qword_280C3BBC8;
  if (!qword_280C3BBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BBC8);
  }

  return result;
}

unint64_t sub_2314333DC()
{
  result = qword_27DD4DDD8;
  if (!qword_27DD4DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D828, &qword_23147A1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DDD8);
  }

  return result;
}

uint64_t sub_231433440(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D828, &qword_23147A1E0);
  v4[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D610, &qword_2314798D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479580;
  *(inited + 32) = 0x6E65697069636572;
  *(inited + 40) = 0xEA00000000007374;

  sub_23144E1B4(v4, inited);
  swift_setDeallocating();
  sub_231414B24();
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

void sub_231433500()
{
  v2 = type metadata accessor for Entity(0);
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v21 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_231433338(v0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_2313F3038(v4);
    if (v6)
    {
      v7 = v6;
      v22 = MEMORY[0x277D84F90];
      sub_2313FA208(0, v6 & ~(v6 >> 63), 0);
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v9 = v22;
        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v19 = v5 & 0xC000000000000001;
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v19)
          {
            v11 = MEMORY[0x23192E5D0](v8, v5);
          }

          else
          {
            if (v8 >= *(v18 + 16))
            {
              goto LABEL_20;
            }

            v11 = *(v5 + 8 * v8 + 32);
          }

          v12 = v11;
          sub_2313EF700(1, v21);
          if (v1)
          {

            return;
          }

          v22 = v9;
          v14 = *(v9 + 16);
          v13 = *(v9 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_2313FA208(v13 > 1, v14 + 1, 1);
            v9 = v22;
          }

          *(v9 + 16) = v14 + 1;
          sub_2313F0804(v21, v9 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v14);
          ++v8;
          if (v10 == v7)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
      }

      __break(1u);
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231479580;
      *(inited + 32) = 0x6E65697069636572;
      *(inited + 40) = 0xEA00000000007374;
      *(inited + 48) = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
      sub_231477DC8();
    }
  }

  else
  {
    sub_2313F17E0();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }
}

uint64_t sub_2314337EC(unint64_t a1)
{
  if (a1)
  {
    v1 = sub_2313F303C(a1) > 1;
  }

  else
  {
    v1 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D668, qword_23147BAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479580;
  v3 = MEMORY[0x277D839B0];
  *(inited + 32) = 0x70756F72477369;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = v3;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D830, &qword_231479A60);
  return sub_231477DC8();
}

uint64_t sub_2314338B4()
{
  v1 = sub_231433F98(v0, &selRef_contacts);
  v2 = sub_2314337EC(v1);

  return v2;
}

uint64_t sub_231433908()
{
  v1 = sub_231433F98(v0, &selRef_contacts);
  v2 = sub_23143028C(v1, 1);

  return v2;
}

void sub_231433968()
{
  v1 = sub_231433F98(v0, &selRef_contacts);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2313F3038(v1);
    v4 = 0;
    v54 = MEMORY[0x277D84F90];
    while (v3 != v4)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23192E5D0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        return;
      }

      v8 = sub_231433F98(v5, &selRef_siriMatches);

      ++v4;
      if (v8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23141D070();
          v54 = v10;
        }

        v9 = *(v54 + 16);
        if (v9 >= *(v54 + 24) >> 1)
        {
          sub_23141D070();
          v54 = v11;
        }

        *(v54 + 16) = v9 + 1;
        *(v54 + 8 * v9 + 32) = v8;
        v4 = v7;
      }
    }

    v12 = 0;
    v13 = v54;
    v57 = *(v54 + 16);
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v12 == v57)
      {

        goto LABEL_50;
      }

      if (v12 >= *(v13 + 16))
      {
        goto LABEL_74;
      }

      v15 = *(v54 + 32 + 8 * v12);
      if (v15 >> 62)
      {
        v16 = sub_231478618();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v14 >> 62;
      if (v14 >> 62)
      {
        v18 = sub_231478618();
      }

      else
      {
        v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_75;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v17)
      {
        goto LABEL_28;
      }

      v20 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v19 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_29;
      }

LABEL_30:
      v60 = v12 + 1;
      v21 = *(v20 + 16);
      v22 = (*(v20 + 24) >> 1) - v21;
      v23 = v20 + 8 * v21;
      v58 = v20;
      if (v15 >> 62)
      {
        v26 = sub_231478618();
        if (!v26)
        {
          goto LABEL_44;
        }

        v27 = v26;
        v28 = sub_231478618();
        if (v22 < v28)
        {
          goto LABEL_80;
        }

        if (v27 < 1)
        {
          goto LABEL_81;
        }

        v55 = v28;
        v56 = v14;
        v29 = v23 + 32;
        sub_2314333DC();
        for (i = 0; i != v27; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D828, &qword_23147A1E0);
          v31 = sub_23142EE10(v59, i, v15);
          v33 = *v32;
          (v31)(v59, 0);
          *(v29 + 8 * i) = v33;
        }

        v13 = v54;
        v25 = v55;
        v14 = v56;
LABEL_40:

        v12 = v60;
        if (v25 < v16)
        {
          goto LABEL_76;
        }

        if (v25 > 0)
        {
          v34 = *(v58 + 16);
          v35 = __OFADD__(v34, v25);
          v36 = v34 + v25;
          if (v35)
          {
            goto LABEL_78;
          }

          *(v58 + 16) = v36;
        }
      }

      else
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          if (v22 < v24)
          {
            goto LABEL_79;
          }

          v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_231433398();
          swift_arrayInitWithCopy();
          goto LABEL_40;
        }

LABEL_44:

        v12 = v60;
        if (v16 > 0)
        {
          goto LABEL_76;
        }
      }
    }

    if (v17)
    {
LABEL_28:
      sub_231478618();
    }

LABEL_29:
    v14 = sub_231478528();
    v20 = v14 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_30;
  }

  v14 = 0;
LABEL_50:
  v37 = sub_23143028C(v14, 0);

  if (!v53)
  {
    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;

    v43 = 0;
    v44 = MEMORY[0x277D84F90];
    v60 = v37;
    while (v41)
    {
LABEL_59:
      v46 = *(*(v37 + 56) + ((v43 << 9) | (8 * __clz(__rbit64(v41)))));
      v47 = *(v46 + 16);
      v48 = *(v44 + 16);
      if (__OFADD__(v48, v47))
      {
        goto LABEL_82;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v48 + v47 > *(v44 + 24) >> 1)
      {
        sub_23141CB80();
        v44 = v49;
      }

      v41 &= v41 - 1;
      if (*(v46 + 16))
      {
        v50 = (*(v44 + 24) >> 1) - *(v44 + 16);
        type metadata accessor for Entity(0);
        if (v50 < v47)
        {
          goto LABEL_83;
        }

        swift_arrayInitWithCopy();

        v37 = v60;
        if (v47)
        {
          v51 = *(v44 + 16);
          v35 = __OFADD__(v51, v47);
          v52 = v51 + v47;
          if (v35)
          {
            goto LABEL_84;
          }

          *(v44 + 16) = v52;
        }
      }

      else
      {

        v37 = v60;
        if (v47)
        {
          __break(1u);
LABEL_70:

          return;
        }
      }
    }

    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_77;
      }

      if (v45 >= v42)
      {
        goto LABEL_70;
      }

      v41 = *(v38 + 8 * v45);
      ++v43;
      if (v41)
      {
        v43 = v45;
        goto LABEL_59;
      }
    }
  }
}

unint64_t sub_231433F40()
{
  result = sub_231433F98(v0, &selRef_contacts);
  if (result)
  {
    v2 = sub_2313F303C(result);

    return v2 > 0;
  }

  return result;
}

uint64_t sub_231433F98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_231433398();
  v4 = sub_231478128();

  return v4;
}

uint64_t IntelligenceEngineInteractionStore.CandidateInteraction.init(candidateId:userAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231477A58();
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(a3, a1);
  v7 = *(type metadata accessor for IntelligenceEngineInteractionStore.CandidateInteraction(0) + 20);
  sub_231477A88();
  OUTLINED_FUNCTION_3();
  v9 = *(v8 + 32);

  return v9(a3 + v7, a2);
}

uint64_t sub_231434110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xEB00000000644965;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67696C4172657375 && a2 == 0xED0000746E656D6ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

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

uint64_t sub_2314341E4(char a1)
{
  if (a1)
  {
    return 0x67696C4172657375;
  }

  else
  {
    return 0x74616469646E6163;
  }
}

uint64_t sub_231434238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231434110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231434260(uint64_t a1)
{
  v2 = sub_231434470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143429C(uint64_t a1)
{
  v2 = sub_231434470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceEngineInteractionStore.CandidateInteraction.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDE0, &qword_23147BC40);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_231434470();
  OUTLINED_FUNCTION_30_1(&type metadata for IntelligenceEngineInteractionStore.CandidateInteraction.CodingKeys, v11, v10);
  v19 = 0;
  sub_231477A58();
  OUTLINED_FUNCTION_5_10();
  sub_2314385D4(v12, v13, MEMORY[0x277D1F278]);
  OUTLINED_FUNCTION_10_10(v4, &v19);
  if (!v2)
  {
    v14 = *(type metadata accessor for IntelligenceEngineInteractionStore.CandidateInteraction(0) + 20);
    v18 = 1;
    sub_231477A88();
    OUTLINED_FUNCTION_2_9();
    sub_2314385D4(v15, v16, MEMORY[0x277D1F2F0]);
    OUTLINED_FUNCTION_10_10(v4 + v14, &v18);
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_231434470()
{
  result = qword_27DD4DDE8;
  if (!qword_27DD4DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DDE8);
  }

  return result;
}

void IntelligenceEngineInteractionStore.CandidateInteraction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  v25 = v24;
  v51 = v26;
  v53 = sub_231477A88();
  OUTLINED_FUNCTION_4();
  v50 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  v55 = sub_231477A58();
  OUTLINED_FUNCTION_4();
  v52 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  v54 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE00, &qword_23147BC48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_22_2();
  v38 = type metadata accessor for IntelligenceEngineInteractionStore.CandidateInteraction(v37);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2();
  v42 = v41 - v40;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_231434470();
  sub_231478948();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    OUTLINED_FUNCTION_5_10();
    sub_2314385D4(v43, v44, MEMORY[0x277D1F280]);
    sub_2314786B8();
    (*(v52 + 32))(v42, v54, v55);
    OUTLINED_FUNCTION_2_9();
    sub_2314385D4(v45, v46, MEMORY[0x277D1F2F8]);
    sub_2314786B8();
    v47 = OUTLINED_FUNCTION_14_6();
    v48(v47);
    (*(v50 + 32))(v42 + *(v38 + 20), v31, v53);
    OUTLINED_FUNCTION_8_12();
    sub_231435358(v42, v51);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_7_5();
    sub_2314353B4(v42, v49);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t IntelligenceEngineInteractionStore.TupleInteraction.init(tuple:userAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction(0) + 20);
  sub_231477A88();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 32);

  return v7(&a3[v5], a2);
}

uint64_t sub_231434914()
{
  v1 = sub_231477A58();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_231478598();
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v21 = *(v11 + 56);
    v22 = v12;
    do
    {
      v22(v7, v13, v1);
      sub_231477A28();
      v14 = sub_231477A48();
      v16 = v15;
      v17 = objc_allocWithZone(MEMORY[0x277CF11C8]);
      v18 = OUTLINED_FUNCTION_13_8();
      sub_231437540(v18, v19, v14, v16);
      (*(v11 - 8))(v7, v1);
      sub_231478568();
      sub_2314785A8();
      sub_2314785B8();
      sub_231478578();
      v13 += v21;
      --v9;
    }

    while (v9);
    v10 = v23;
  }

  sub_2313E4AFC(0, &qword_27DD4DFB8, 0x277CF1220);
  type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction(0);
  result = sub_231477A78();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return sub_231434C2C(v10, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_231434B20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C707574 && a2 == 0xE500000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67696C4172657375 && a2 == 0xED0000746E656D6ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

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

uint64_t sub_231434BEC(char a1)
{
  if (a1)
  {
    return 0x67696C4172657375;
  }

  else
  {
    return 0x656C707574;
  }
}

id sub_231434C2C(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2313E4AFC(0, &qword_27DD4DFC0, 0x277CF11C8);
  v4 = sub_231478118();

  v5 = [v3 initWithCandidateIds:v4 userAlignment:a2];

  return v5;
}

uint64_t sub_231434CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231434B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231434CEC(uint64_t a1)
{
  v2 = sub_231434F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231434D28(uint64_t a1)
{
  v2 = sub_231434F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceEngineInteractionStore.TupleInteraction.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE18, &qword_23147BC50);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_231434F28();
  OUTLINED_FUNCTION_30_1(&type metadata for IntelligenceEngineInteractionStore.TupleInteraction.CodingKeys, v11, v10);
  v18 = *v4;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE28, &qword_23147BC58);
  sub_2314352CC(&qword_27DD4DE30, &qword_27DD4DDF0, MEMORY[0x277D1F278], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_10_10(&v18, &v17);
  if (!v2)
  {
    v12 = *(type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction(0) + 20);
    v16 = 1;
    sub_231477A88();
    OUTLINED_FUNCTION_2_9();
    sub_2314385D4(v13, v14, MEMORY[0x277D1F2F0]);
    OUTLINED_FUNCTION_10_10(v4 + v12, &v16);
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_231434F28()
{
  result = qword_27DD4DE20;
  if (!qword_27DD4DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE20);
  }

  return result;
}

void IntelligenceEngineInteractionStore.TupleInteraction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_64();
  v12 = v11;
  v41 = v13;
  v43 = sub_231477A88();
  OUTLINED_FUNCTION_4();
  v40 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE38, &qword_23147BC60);
  OUTLINED_FUNCTION_4();
  v42 = v19;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v23 = type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2();
  v27 = (v26 - v25);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_231434F28();
  sub_231478948();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v39 = v12;
    v28 = v27;
    v30 = v42;
    v29 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE28, &qword_23147BC58);
    v46 = 0;
    sub_2314352CC(&qword_27DD4DE40, &qword_27DD4DE08, MEMORY[0x277D1F280], MEMORY[0x277D83978]);
    v31 = v44;
    sub_2314786B8();
    v37 = v28;
    v38 = a10;
    *v28 = a10;
    v45 = 1;
    OUTLINED_FUNCTION_2_9();
    sub_2314385D4(v32, v33, MEMORY[0x277D1F2F8]);
    sub_2314786B8();
    (*(v30 + 8))(v22, v31);
    v34 = *(v23 + 20);
    v35 = v37;
    (*(v40 + 32))(&v37[v34], v18, v29);
    sub_231435358(v35, v41);
    __swift_destroy_boxed_opaque_existential_0(v39);
    sub_2314353B4(v35, type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2314352CC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DE28, &qword_23147BC58);
    OUTLINED_FUNCTION_5_10();
    sub_2314385D4(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231435358(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_97();
  v5(v4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2314353B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23143541C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000231482A90 == a2;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000231482AB0 == a2;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x8000000231482AD0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_231435540(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000015;
}

uint64_t sub_231435594(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2314787C8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23143560C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6574617473 && a2 == 0xEE007865646E4974)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

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

uint64_t sub_2314356E4(char a1)
{
  if (a1)
  {
    return 0x6E656D6574617473;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_231435760(uint64_t a1)
{
  v2 = sub_2314360EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143579C(uint64_t a1)
{
  v2 = sub_2314360EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314357E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23143541C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231435808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231435538();
  *a1 = result;
  return result;
}

uint64_t sub_231435830(uint64_t a1)
{
  v2 = sub_231435FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143586C(uint64_t a1)
{
  v2 = sub_231435FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314358A8(uint64_t a1)
{
  v2 = sub_231436098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314358E4(uint64_t a1)
{
  v2 = sub_231436098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231435928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23143560C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231435950(uint64_t a1)
{
  v2 = sub_231436044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143598C(uint64_t a1)
{
  v2 = sub_231436044();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceEngineInteractionStore.EventId.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_64();
  a25 = v30;
  a26 = v31;
  v98 = v26;
  v99 = v27;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE48, &qword_23147BC68);
  OUTLINED_FUNCTION_4();
  v95 = v35;
  v96 = v34;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_13();
  v94 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE50, &qword_23147BC70);
  OUTLINED_FUNCTION_4();
  v92 = v39;
  v93 = v38;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_13();
  v91 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE58, &qword_23147BC78);
  OUTLINED_FUNCTION_4();
  v89 = v43;
  v90 = v42;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v44);
  v46 = &v88 - v45;
  sub_231476CE8();
  OUTLINED_FUNCTION_4();
  v102 = v48;
  v103 = v47;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_34();
  v97 = v49 - v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x28223BE20](v52);
  v54 = &v88 - v53;
  type metadata accessor for IntelligenceEngineInteractionStore.EventId(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2();
  v58 = v57 - v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE60, &qword_23147BC80);
  OUTLINED_FUNCTION_4();
  v100 = v60;
  v101 = v59;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_2();
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_231435FF0();
  sub_231478968();
  OUTLINED_FUNCTION_9_12();
  sub_231435358(v98, v58);
  OUTLINED_FUNCTION_16_5();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v74 = v102;
    v73 = v103;
    (*(v102 + 32))(v54, v58, v103);
    a12 = 0;
    sub_2314360EC();
    OUTLINED_FUNCTION_29_1(&type metadata for IntelligenceEngineInteractionStore.EventId.AppIntentInvocationUUIDCodingKeys, &a12);
    OUTLINED_FUNCTION_0_11();
    sub_2314385D4(v75, v76, MEMORY[0x277CC95F8]);
    v77 = v90;
    sub_231478748();
    (*(v89 + 8))(v46, v77);
    (*(v74 + 8))(v54, v73);
LABEL_8:
    OUTLINED_FUNCTION_26_2();
    v71 = v28;
    v72 = v29;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v98 = *(v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE70, &qword_23147BC88) + 48));
    v79 = v102;
    v78 = v103;
    v80 = v97;
    (*(v102 + 32))(v97, v58, v103);
    a16 = 2;
    sub_231436044();
    OUTLINED_FUNCTION_29_1(&type metadata for IntelligenceEngineInteractionStore.EventId.TranscriptStatementIdCodingKeys, &a16);
    a15 = 0;
    OUTLINED_FUNCTION_0_11();
    sub_2314385D4(v81, v82, MEMORY[0x277CC95F8]);
    v83 = v99;
    sub_231478748();
    if (v83)
    {
      v84 = OUTLINED_FUNCTION_21_2();
      v85(v84);
      (*(v79 + 8))(v80, v78);
    }

    else
    {
      a14 = 1;
      sub_231478738();
      v86 = OUTLINED_FUNCTION_21_2();
      v87(v86);
      (*(v79 + 8))(v97, v78);
    }

    goto LABEL_8;
  }

  v64 = v102;
  v63 = v103;
  (*(v102 + 32))(v29, v58, v103);
  a13 = 1;
  sub_231436098();
  v65 = v101;
  sub_2314786F8();
  OUTLINED_FUNCTION_0_11();
  sub_2314385D4(v66, v67, MEMORY[0x277CC95F8]);
  sub_231478748();
  v68 = OUTLINED_FUNCTION_21_2();
  v69(v68);
  (*(v64 + 8))(v29, v63);
  OUTLINED_FUNCTION_26_2();
  v71 = v28;
  v72 = v65;
LABEL_9:
  v70(v71, v72);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_231435FF0()
{
  result = qword_27DD4DE68;
  if (!qword_27DD4DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE68);
  }

  return result;
}

unint64_t sub_231436044()
{
  result = qword_27DD4DE78;
  if (!qword_27DD4DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE78);
  }

  return result;
}

unint64_t sub_231436098()
{
  result = qword_27DD4DE88;
  if (!qword_27DD4DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE88);
  }

  return result;
}

unint64_t sub_2314360EC()
{
  result = qword_27DD4DE90;
  if (!qword_27DD4DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE90);
  }

  return result;
}

void IntelligenceEngineInteractionStore.EventId.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_64();
  a25 = v28;
  a26 = v29;
  v120 = v26;
  v31 = v30;
  v107 = v32;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE98, &qword_23147BC90);
  OUTLINED_FUNCTION_4();
  v108 = v33;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13();
  v115 = v35;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEA0, &qword_23147BC98);
  OUTLINED_FUNCTION_4();
  v116 = v36;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13();
  v114 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEA8, &qword_23147BCA0);
  OUTLINED_FUNCTION_4();
  v109 = v40;
  v110 = v39;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_13();
  v113 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEB0, &qword_23147BCA8);
  OUTLINED_FUNCTION_4();
  v117 = v44;
  v118 = v43;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v45);
  v46 = type metadata accessor for IntelligenceEngineInteractionStore.EventId(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_34();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_12();
  v53 = MEMORY[0x28223BE20](v52);
  v55 = v102 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = v102 - v56;
  v58 = v31[3];
  v119 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v58);
  sub_231435FF0();
  v59 = v120;
  sub_231478948();
  if (v59)
  {
    goto LABEL_9;
  }

  v103 = v27;
  v104 = v55;
  v105 = v50;
  v106 = v57;
  v120 = v46;
  v60 = sub_2314786D8();
  sub_2313F8D60(v60, 0);
  if (v62 == v63 >> 1)
  {
LABEL_8:
    v76 = v120;
    v77 = sub_231478548();
    swift_allocError();
    v79 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870);
    *v79 = v76;
    sub_231478658();
    sub_231478538();
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x277D84160], v77);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_26_2();
    v80 = OUTLINED_FUNCTION_13_8();
    v81(v80);
LABEL_9:
    v82 = v119;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v82);
    OUTLINED_FUNCTION_62();
    return;
  }

  v102[1] = 0;
  if (v62 < (v63 >> 1))
  {
    v64 = *(v61 + v62);
    sub_2313F8D58(v62 + 1);
    v66 = v65;
    v68 = v67;
    swift_unknownObjectRelease();
    v69 = v116;
    if (v66 == v68 >> 1)
    {
      if (v64)
      {
        if (v64 != 1)
        {
          a16 = 2;
          sub_231436044();
          OUTLINED_FUNCTION_15_5(&type metadata for IntelligenceEngineInteractionStore.EventId.TranscriptStatementIdCodingKeys, &a16);
          v85 = v106;
          sub_231476CE8();
          a15 = 0;
          OUTLINED_FUNCTION_0_11();
          sub_2314385D4(v86, v87, MEMORY[0x277CC9618]);
          sub_2314786B8();
          a14 = 1;
          v116 = sub_2314786A8();
          swift_unknownObjectRelease();
          v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE70, &qword_23147BC88) + 48);
          v96 = OUTLINED_FUNCTION_11_12();
          v97(v96);
          v98 = OUTLINED_FUNCTION_13_8();
          v99(v98);
          v90 = v105;
          *(v105 + v95) = v116;
          swift_storeEnumTagMultiPayload();
          v100 = v119;
          v101 = v107;
LABEL_14:
          sub_23143786C(v90, v85);
          sub_23143786C(v85, v101);
          v82 = v100;
          goto LABEL_10;
        }

        a13 = 1;
        sub_231436098();
        v70 = v114;
        OUTLINED_FUNCTION_15_5(&type metadata for IntelligenceEngineInteractionStore.EventId.SirikitIntentItemIdCodingKeys, &a13);
        sub_231476CE8();
        OUTLINED_FUNCTION_0_11();
        sub_2314385D4(v71, v72, MEMORY[0x277CC9618]);
        v73 = v103;
        v74 = v70;
        v75 = v111;
        sub_2314786B8();
        swift_unknownObjectRelease();
        (*(v69 + 8))(v74, v75);
        OUTLINED_FUNCTION_26_2();
        v88 = OUTLINED_FUNCTION_13_8();
        v89(v88);
        swift_storeEnumTagMultiPayload();
        v90 = v73;
      }

      else
      {
        a12 = 0;
        sub_2314360EC();
        OUTLINED_FUNCTION_15_5(&type metadata for IntelligenceEngineInteractionStore.EventId.AppIntentInvocationUUIDCodingKeys, &a12);
        sub_231476CE8();
        OUTLINED_FUNCTION_0_11();
        sub_2314385D4(v83, v84, MEMORY[0x277CC9618]);
        v90 = v104;
        sub_2314786B8();
        swift_unknownObjectRelease();
        v91 = OUTLINED_FUNCTION_16_5();
        v92(v91);
        v93 = OUTLINED_FUNCTION_13_8();
        v94(v93);
        swift_storeEnumTagMultiPayload();
      }

      v100 = v119;
      v85 = v106;
      v101 = v107;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t IntelligenceEngineInteractionStore.Donator.__allocating_init(biomeStream:)(uint64_t a1)
{
  OUTLINED_FUNCTION_18_4();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t IntelligenceEngineInteractionStore.Donator.__allocating_init()()
{
  OUTLINED_FUNCTION_18_4();
  v0 = swift_allocObject();
  IntelligenceEngineInteractionStore.Donator.init()();
  return v0;
}

uint64_t IntelligenceEngineInteractionStore.Donator.init()()
{
  v1 = [BiomeLibrary() IntelligenceEngine];
  swift_unknownObjectRelease();
  v2 = [v1 Interaction];
  swift_unknownObjectRelease();
  v3 = [v2 Donation];
  swift_unknownObjectRelease();
  *(v0 + 16) = v3;
  return v0;
}

void sub_231436AB8()
{
  OUTLINED_FUNCTION_64();
  v79 = v0;
  LODWORD(v78) = v4;
  v75 = v5;
  v76 = v6;
  v84 = v7;
  v77 = v8;
  v85 = type metadata accessor for IntelligenceEngineInteractionStore.CandidateInteraction(0);
  OUTLINED_FUNCTION_4();
  v74 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13();
  v81 = v15;
  v16 = sub_231476CE8();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v20 = OUTLINED_FUNCTION_22_2();
  type metadata accessor for IntelligenceEngineInteractionStore.EventId(v20);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC8, &qword_23147BCB0);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_34();
  v80 = v26 - v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v73 - v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x28223BE20](v32);
  v82 = v73 - v33;
  __swift_storeEnumTagSinglePayload(v73 - v33, 1, 1, v16);
  v83 = v3;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  OUTLINED_FUNCTION_9_12();
  sub_231435358(v77, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v83;
      sub_231437940(v83);
      v36 = v24;
      v37 = v35;
      (*(v18 + 32))(v35, v36, v16);
      OUTLINED_FUNCTION_4_9(v35);
      v38 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE70, &qword_23147BC88);
      (*(v18 + 32))(v2, v24, v16);
      (*(v18 + 16))(v31, v2, v16);
      OUTLINED_FUNCTION_4_9(v31);
      v40 = sub_231478218();
      v41 = objc_allocWithZone(MEMORY[0x277CF1218]);
      v38 = sub_2314375E0(v31, v40);
      v42 = OUTLINED_FUNCTION_16_5();
      v43(v42);
      v37 = v83;
    }

    v39 = v82;
  }

  else
  {
    v39 = v82;
    sub_231437940(v82);
    (*(v18 + 32))(v39, v24, v16);
    OUTLINED_FUNCTION_4_9(v39);
    v38 = 0;
    v37 = v83;
  }

  if (v78)
  {
    sub_231437144();
    if (v1)
    {
      sub_231437940(v39);

LABEL_19:
      sub_231437940(v37);
      OUTLINED_FUNCTION_62();
      return;
    }
  }

  v78 = v38;
  v44 = sub_231476CA8();
  OUTLINED_FUNCTION_3();
  v46 = v81;
  (*(v45 + 16))(v81, v75, v44);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v44);
  sub_2314378D0(v39, v80);
  v47 = 0;
  v48 = 0;
  if (!__swift_getEnumTagSinglePayload(v37, 1, v16))
  {
    (*(v18 + 16))(v2, v37, v16);
    v47 = sub_231476CB8();
    v48 = v49;
    v50 = OUTLINED_FUNCTION_16_5();
    v51(v50);
  }

  v75 = v48;
  v77 = v47;
  v84 = sub_231434914();
  v52 = v76;
  v53 = *(v76 + 16);
  v54 = MEMORY[0x277D84F90];
  v55 = v79;
  if (!v53)
  {
LABEL_18:
    v68 = objc_allocWithZone(MEMORY[0x277CF11B8]);
    v69 = v78;
    v70 = v78;
    v71 = sub_2314376A0(v81, v69, v80, v77, v75, 3u, v84, v54);
    v72 = [*(v55 + 16) source];
    [v72 sendEvent_];

    sub_231437940(v39);
    goto LABEL_19;
  }

  v73[1] = v1;
  v86 = MEMORY[0x277D84F90];
  sub_231478598();
  v56 = v52 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v57 = *(v74 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_8_12();
    sub_231435358(v56, v13);
    v58 = sub_231477A28();
    v60 = v59;
    v61 = sub_231477A48();
    v63 = v62;
    v64 = objc_allocWithZone(MEMORY[0x277CF11C8]);
    v65 = sub_231437540(v58, v60, v61, v63);
    v66 = sub_231477A78();
    if (v66 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v66 > 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    [objc_allocWithZone(MEMORY[0x277CF11D0]) initWithCandidateId:v65 userAlignment:v66];

    OUTLINED_FUNCTION_7_5();
    sub_2314353B4(v13, v67);
    sub_231478568();
    sub_2314785A8();
    sub_2314785B8();
    sub_231478578();
    v56 += v57;
    if (!--v53)
    {
      v54 = v86;
      v55 = v79;
      v39 = v82;
      v37 = v83;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_231437144()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_97();
  sub_231477A68();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_2();
  v2 = sub_231477A58();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  if (*(*v0 + 16))
  {
    (*(v4 + 16))(v8, *v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);
    sub_231477A38();
    v9 = OUTLINED_FUNCTION_16_5();
    v11 = v10(v9);
    if (v11 != *MEMORY[0x277D1F288])
    {
      if (v11 == *MEMORY[0x277D1F290])
      {
        (*(v4 + 8))(v8, v2);
        goto LABEL_7;
      }

      sub_2314784E8();
      MEMORY[0x23192E060](0xD000000000000033, 0x8000000231482AF0);
      v12 = sub_231477A28();
      MEMORY[0x23192E060](v12);

      sub_231477AF8();
      sub_2314385D4(&qword_27DD4DFA8, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
      swift_allocError();
      sub_231477B08();
      swift_willThrow();
    }

    (*(v4 + 8))(v8, v2);
    v13 = OUTLINED_FUNCTION_16_5();
    v14(v13);
  }

LABEL_7:
  OUTLINED_FUNCTION_62();
}

uint64_t IntelligenceEngineInteractionStore.Donator.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_18_4();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void ViewService.DefaultResolverInteractionsView.CandidateID.init(person:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 personHandle];
  if (v4)
  {
    v5 = v4;
    INPersonHandle.entityIdentifier()();

    if (v6)
    {

      return;
    }
  }

  else
  {
    sub_231430174(a1);
    if (!v7)
    {
      sub_231430180(a1);
      if (!v8)
      {

        v9 = sub_231477A58();
        v10 = a2;
        v11 = 1;
        goto LABEL_7;
      }
    }
  }

  sub_231477A18();

  v9 = sub_231477A58();
  v10 = a2;
  v11 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

id sub_231437540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_231477E58();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_231477E58();

LABEL_6:
  v8 = [v4 initWithIdentifier:v6 bundleId:v7];

  return v8;
}

id sub_2314375E0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_231476CE8();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_231476CC8();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithSessionId:v7 statementIndex:a2];

  return v8;
}

id sub_2314376A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v15 = sub_231476CA8();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v15) != 1)
  {
    v16 = sub_231476BF8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v17 = sub_231476CE8();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v17) != 1)
  {
    v18 = sub_231476CC8();
    (*(*(v17 - 8) + 8))(a3, v17);
  }

  if (a5)
  {
    v19 = sub_231477E58();
  }

  else
  {
    v19 = 0;
  }

  sub_2313E4AFC(0, &qword_27DD4DFB0, 0x277CF11D0);
  v20 = sub_231478118();

  v21 = [v9 initWithAbsoluteTimestamp:v16 transcriptStatementId:a2 appIntentInvocationUUID:v18 sirikitIntentItemId:v19 trigger:a6 tupleInteraction:a7 candidateInteractions:v20];

  return v21;
}

uint64_t sub_23143786C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceEngineInteractionStore.EventId(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314378D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC8, &qword_23147BCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231437940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC8, &qword_23147BCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231437A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_231477A88();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_231437AEC(uint64_t a1)
{
  if (!qword_27DD4DEF0)
  {
    sub_231477A58();
    v1 = sub_231478198();
    if (!v2)
    {
      atomic_store(v1, &qword_27DD4DEF0);
    }
  }
}

void sub_231437B4C(uint64_t a1)
{
  sub_231437BC0();
  if (v1 <= 0x3F)
  {
    sub_231437C08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_231437BC0()
{
  if (!qword_27DD4DF08)
  {
    v0 = sub_231476CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD4DF08);
    }
  }
}

void sub_231437C08(uint64_t a1)
{
  if (!qword_27DD4DF10)
  {
    sub_231476CE8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DD4DF10);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IntelligenceEngineInteractionStore.EventId.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_231437DFC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_231437EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231437FA8()
{
  result = qword_27DD4DF18;
  if (!qword_27DD4DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF18);
  }

  return result;
}

unint64_t sub_231438000()
{
  result = qword_27DD4DF20;
  if (!qword_27DD4DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF20);
  }

  return result;
}

unint64_t sub_231438058()
{
  result = qword_27DD4DF28;
  if (!qword_27DD4DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF28);
  }

  return result;
}

unint64_t sub_2314380B0()
{
  result = qword_27DD4DF30;
  if (!qword_27DD4DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF30);
  }

  return result;
}

unint64_t sub_231438108()
{
  result = qword_27DD4DF38;
  if (!qword_27DD4DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF38);
  }

  return result;
}

unint64_t sub_231438160()
{
  result = qword_27DD4DF40;
  if (!qword_27DD4DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF40);
  }

  return result;
}

unint64_t sub_2314381B8()
{
  result = qword_27DD4DF48;
  if (!qword_27DD4DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF48);
  }

  return result;
}

unint64_t sub_231438210()
{
  result = qword_27DD4DF50;
  if (!qword_27DD4DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF50);
  }

  return result;
}

unint64_t sub_231438268()
{
  result = qword_27DD4DF58;
  if (!qword_27DD4DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF58);
  }

  return result;
}

unint64_t sub_2314382C0()
{
  result = qword_27DD4DF60;
  if (!qword_27DD4DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF60);
  }

  return result;
}

unint64_t sub_231438318()
{
  result = qword_27DD4DF68;
  if (!qword_27DD4DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF68);
  }

  return result;
}

unint64_t sub_231438370()
{
  result = qword_27DD4DF70;
  if (!qword_27DD4DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF70);
  }

  return result;
}

unint64_t sub_2314383C8()
{
  result = qword_27DD4DF78;
  if (!qword_27DD4DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF78);
  }

  return result;
}

unint64_t sub_231438420()
{
  result = qword_27DD4DF80;
  if (!qword_27DD4DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF80);
  }

  return result;
}

unint64_t sub_231438478()
{
  result = qword_27DD4DF88;
  if (!qword_27DD4DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF88);
  }

  return result;
}

unint64_t sub_2314384D0()
{
  result = qword_27DD4DF90;
  if (!qword_27DD4DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF90);
  }

  return result;
}

unint64_t sub_231438528()
{
  result = qword_27DD4DF98;
  if (!qword_27DD4DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF98);
  }

  return result;
}

unint64_t sub_231438580()
{
  result = qword_27DD4DFA0;
  if (!qword_27DD4DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFA0);
  }

  return result;
}

uint64_t sub_2314385D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1, uint64_t a2)
{

  return sub_2314786F8();
}

BOOL sub_231438658(uint64_t a1)
{
  if ((sub_2314397BC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 16) == *(a1 + 16) && *(v1 + 24) == *(a1 + 24);
  if (!v3 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 32) == *(a1 + 32) && *(v1 + 40) == *(a1 + 40);
  if (!v4 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 48) == *(a1 + 64) && *(v1 + 56) == *(a1 + 72);
  if (!v5 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 64) == *(a1 + 48) && *(v1 + 72) == *(a1 + 56);
  if (!v6 && (sub_2314787C8() & 1) == 0 || *(v1 + 80) != *(a1 + 81) || *(a1 + 88) != *(v1 + 82) || *(a1 + 96) != *(v1 + 81))
  {
    return 0;
  }

  v7 = *(v1 + *(type metadata accessor for Interaction(0) + 52));
  return v7 == *(a1 + *(type metadata accessor for _NewInteraction(0) + 56));
}

void static Interaction.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_2314787C8() & 1) != 0)
  {
    v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
    if (v5 || (sub_2314787C8() & 1) != 0)
    {
      v6 = a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40);
      if (v6 || (sub_2314787C8() & 1) != 0)
      {
        v7 = a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56);
        if (v7 || (sub_2314787C8() & 1) != 0)
        {
          v8 = a1[8] == *(a2 + 64) && a1[9] == *(a2 + 72);
          if (v8 || (sub_2314787C8()) && *(a1 + 80) == *(a2 + 80) && *(a1 + 81) == *(a2 + 81) && *(a1 + 82) == *(a2 + 82))
          {
            v9 = type metadata accessor for Interaction(0);
            if ((sub_231476C68() & 1) != 0 && *(a1 + v9[13]) == *(a2 + v9[13]))
            {
              OUTLINED_FUNCTION_76();
              if (v4)
              {
                OUTLINED_FUNCTION_76();
                if (v4)
                {
                  OUTLINED_FUNCTION_76();
                  if (v4)
                  {
                    OUTLINED_FUNCTION_19_5(v9[17]);
                    v12 = v4 && v10 == v11;
                    if (v12 || (sub_2314787C8() & 1) != 0)
                    {
                      OUTLINED_FUNCTION_19_5(v9[18]);
                      v15 = v4 && v13 == v14;
                      if (v15 || (sub_2314787C8() & 1) != 0)
                      {
                        v16 = v9[19];
                        v17 = *(a1 + v16);
                        v18 = *(a2 + v16);

                        sub_23141AB28(v17, v18);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t Interaction.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 82) = 2;
  v2 = type metadata accessor for Interaction(0);
  result = sub_231476C98();
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  *(a1 + v2[15]) = 1;
  *(a1 + v2[16]) = 3;
  v4 = (a1 + v2[17]);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (a1 + v2[18]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(a1 + v2[19]) = MEMORY[0x277D84F98];
  return result;
}

uint64_t Interaction.id.setter()
{
  OUTLINED_FUNCTION_18_5();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Interaction.deviceId.setter()
{
  OUTLINED_FUNCTION_18_5();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Interaction.domain.setter()
{
  OUTLINED_FUNCTION_18_5();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Interaction.bundleId.setter()
{
  OUTLINED_FUNCTION_18_5();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Interaction.type.setter()
{
  OUTLINED_FUNCTION_18_5();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Interaction.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Interaction(0) + 48);
  sub_231476CA8();
  OUTLINED_FUNCTION_3();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Interaction.startDate.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  v3 = *(type metadata accessor for Interaction(v2) + 48);
  sub_231476CA8();
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Interaction.startDate.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  type metadata accessor for Interaction(v0);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t Interaction.durationSeconds.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  result = type metadata accessor for Interaction(v2);
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t Interaction.durationSeconds.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  type metadata accessor for Interaction(v0);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t Interaction.devicePlatform.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Interaction(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t Interaction.userDonatorType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Interaction(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t Interaction.groupIdentifier.getter()
{
  type metadata accessor for Interaction(0);

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.appIntentInteractionIdentifier.getter()
{
  type metadata accessor for Interaction(0);

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.fields.getter()
{
  type metadata accessor for Interaction(0);
}

uint64_t Interaction.fields.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  v3 = *(type metadata accessor for Interaction(v2) + 76);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Interaction.fields.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  type metadata accessor for Interaction(v0);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t sub_23143905C()
{
  sub_231476788();
  swift_allocObject();
  result = sub_231476778();
  qword_280C3CB40 = result;
  return result;
}

uint64_t sub_23143909C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 81) = 512;
  v4 = type metadata accessor for Interaction(0);
  v38 = v4[12];
  sub_231476C98();
  v5 = v4[14];
  *(a2 + v5) = 0;
  v39 = v5;
  v40 = v4[16];
  *(a2 + v40) = 3;
  v6 = (a2 + v4[17]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (a2 + v4[18]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v41 = v4[19];
  *(a2 + v41) = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v8;
  v9 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 24);
  *(a2 + 24) = v9;
  v10 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 40) = v10;
  v11 = *(a1 + 80);
  *(a2 + 48) = *(a1 + 72);
  *(a2 + 56) = v11;
  *(a2 + 80) = *(a1 + 88);
  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v13 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(a1 + 64);
  *(a2 + 64) = *(a1 + 56);
  *(a2 + 72) = v15;
  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  *(a2 + 82) = v16;
  InteractionHandlingStatus.init(rawValue:)(v12);
  v17 = v45;
  if (v45 == 7)
  {
    v17 = 0;
  }

  v36 = v4[13];
  v37 = v4[15];
  *(a2 + 81) = v17;
  v18 = type metadata accessor for _Interaction(0);
  v19 = v18[14];
  v20 = sub_231476CA8();
  OUTLINED_FUNCTION_3();
  v22 = *(v21 + 24);

  v22(a2 + v38, a1 + v19, v20);
  *(a2 + v36) = *(a1 + v18[15]);
  *(a2 + v37) = *(a1 + v18[18]);
  InteractionDevicePlatform.init(rawValue:)(*(a1 + v18[19]));
  v23 = v44;
  if (v44 == 9)
  {
    v23 = 0;
  }

  *(a2 + v39) = v23;
  v24 = *(a1 + v18[21]);
  if (v24 >= 4)
  {
    LOBYTE(v24) = 0;
  }

  *(a2 + v40) = v24;
  v25 = (a1 + v18[16]);
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;

    v28 = sub_231401D64(v27, v26);
    v30 = v29;
    if (qword_280C3CE00 != -1)
    {
      OUTLINED_FUNCTION_14_7(&qword_280C3CE00);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v31, v32, v33, MEMORY[0x277D83528]);
    sub_231476768();
    sub_2313EB8A4(v28, v30);
    result = OUTLINED_FUNCTION_13_9();
    if (v42)
    {
      OUTLINED_FUNCTION_0_12();
      return sub_2313FC214();
    }

    else
    {
      *(a2 + v41) = v43;
    }
  }

  else
  {
    v35 = sub_231477DC8();
    result = OUTLINED_FUNCTION_13_9();
    *(a2 + v41) = v35;
  }

  return result;
}

uint64_t sub_2314393C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  *(a2 + 81) = 512;
  v11 = type metadata accessor for Interaction(0);
  v12 = v11[12];
  sub_231476C98();
  v42 = v11[14];
  *(a2 + v42) = 0;
  v43 = v11[16];
  *(a2 + v43) = 3;
  v13 = (a2 + v11[17]);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (a2 + v11[18]);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v41 = v11[19];
  *(a2 + v41) = MEMORY[0x277D84F98];
  *a2 = sub_2314778A8();
  *(a2 + 8) = v15;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = sub_2314778D8();
  *(a2 + 40) = v16;
  *(a2 + 48) = sub_231477908();
  *(a2 + 56) = v17;
  *(a2 + 64) = sub_2314778B8();
  *(a2 + 72) = v18;
  *(a2 + 80) = sub_231477848() & 1;
  v19 = sub_231477928();
  v20 = 0x2010002u >> (8 * v19);
  if (v19 >= 4)
  {
    LOBYTE(v20) = 2;
  }

  *(a2 + 82) = v20;
  v21 = sub_231477878();
  v22 = 0x605040302010000uLL >> (8 * v21);
  if (v21 >= 8)
  {
    LOBYTE(v22) = 0;
  }

  v23 = v11[13];
  v24 = v11[15];
  *(a2 + 81) = v22;
  sub_231477938();
  v26 = *(v6 + 40);
  v25 = v6 + 40;
  v26(a2 + v12, v10, v4);
  sub_231477888();
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_14_7(&qword_280C3CE00);
    goto LABEL_13;
  }

  *(a2 + v23) = v27;
  *(a2 + v24) = sub_2314778F8() & 1;
  v28 = sub_231477858();
  sub_23145EFF8(v28, &v46);
  *(a2 + v42) = v46;
  v29 = sub_231477898();
  if (v29 >= 4)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  *(a2 + v43) = v30;
  v31 = sub_2314778E8();
  if (!v32)
  {
    v39 = sub_231477DC8();
    sub_231477948();
    OUTLINED_FUNCTION_3();
    result = (*(v40 + 8))(a1);
    *(a2 + v41) = v39;
    return result;
  }

  v10 = sub_231401D64(v31, v32);
  v4 = v33;
  v25 = v44;
  if (qword_280C3CE00 != -1)
  {
    goto LABEL_20;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
  OUTLINED_FUNCTION_1_4();
  sub_2313F6580(v34, v35, v36, MEMORY[0x277D83528]);
  sub_231476768();
  sub_231477948();
  OUTLINED_FUNCTION_3();
  (*(v37 + 8))(a1);
  if (v25)
  {
    sub_2313EB8A4(v10, v4);
    OUTLINED_FUNCTION_0_12();
    return sub_2313FC214();
  }

  else
  {
    result = sub_2313EB8A4(v10, v4);
    *(a2 + v41) = v45;
  }

  return result;
}

uint64_t sub_2314397BC()
{
  v1 = OUTLINED_FUNCTION_91();
  type metadata accessor for Interaction(v1);
  sub_231476BC8();
  v3 = round(v2 * 1000.0);
  if (v3 < 0.0 || v3 > 9.22337204e18)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v5 = sub_231477B68();
    __swift_project_value_buffer(v5, qword_280C3D970);
    v6 = sub_231477B58();
    v7 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_23_4(v7))
    {
      goto LABEL_19;
    }

    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v3;
    v9 = "The startDate: %f is invalid";
    goto LABEL_17;
  }

  type metadata accessor for _NewInteraction(0);
  sub_231476BC8();
  v11 = round(v10 * 1000.0);
  if (v11 < 0.0 || v11 > 9.22337204e18)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v13 = sub_231477B68();
    __swift_project_value_buffer(v13, qword_280C3D970);
    v6 = sub_231477B58();
    v14 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_23_4(v14))
    {
      goto LABEL_19;
    }

    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v11;
    v9 = "The donatedTime: %f is invalid";
LABEL_17:
    v15 = v0;
    v16 = v6;
    v17 = v8;
    v18 = 12;
    goto LABEL_18;
  }

  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*&v3 != *&v11)
  {
    if (qword_280C3CF50 == -1)
    {
LABEL_29:
      v20 = sub_231477B68();
      __swift_project_value_buffer(v20, qword_280C3D970);
      v6 = sub_231477B58();
      v21 = sub_2314782A8();
      if (!OUTLINED_FUNCTION_23_4(v21))
      {
        goto LABEL_19;
      }

      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v3;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v11;
      v9 = "startDate: %f is not equal to donatedTime: %f";
      v15 = v0;
      v16 = v6;
      v17 = v8;
      v18 = 22;
LABEL_18:
      _os_log_impl(&dword_2313E1000, v16, v15, v9, v17, v18);
      MEMORY[0x23192F1F0](v8, -1, -1);
LABEL_19:

      return 0;
    }

LABEL_36:
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
    goto LABEL_29;
  }

  return 1;
}

uint64_t sub_231439AA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696C646E6168 && a2 == 0xEE00737574617453;
              if (v11 || (sub_2314787C8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
                if (v12 || (sub_2314787C8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                  if (v13 || (sub_2314787C8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6F697461727564 && a2 == 0xEF73646E6F636553;
                    if (v14 || (sub_2314787C8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
                      if (v15 || (sub_2314787C8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
                        if (v16 || (sub_2314787C8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x616E6F4472657375 && a2 == 0xEF65707954726F74;
                          if (v17 || (sub_2314787C8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL;
                            if (v18 || (sub_2314787C8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001ELL && 0x8000000231482B30 == a2;
                              if (v19 || (sub_2314787C8() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_2314787C8();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_231439F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231439AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231439FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231439F8C();
  *a1 = result;
  return result;
}

uint64_t sub_231439FE4(uint64_t a1)
{
  v2 = sub_2313F74D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143A020(uint64_t a1)
{
  v2 = sub_2313F74D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Interaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DFC8, &unk_23147C520);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F74D8();
  sub_231478968();
  LOBYTE(v15) = 0;
  sub_231478718();
  if (!v2)
  {
    OUTLINED_FUNCTION_6_8(1);
    OUTLINED_FUNCTION_6_8(2);
    OUTLINED_FUNCTION_6_8(3);
    OUTLINED_FUNCTION_6_8(4);
    LOBYTE(v15) = 5;
    OUTLINED_FUNCTION_7_6();
    sub_231478728();
    LOBYTE(v15) = *(v3 + 81);
    v16 = 6;
    sub_23143AE74();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    LOBYTE(v15) = *(v3 + 82);
    v16 = 7;
    sub_23143AEC8();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    v11 = type metadata accessor for Interaction(0);
    LOBYTE(v15) = 8;
    sub_231476CA8();
    OUTLINED_FUNCTION_12_13();
    sub_2313F81DC(v12, v13, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_26_3();
    sub_231478748();
    LOBYTE(v15) = 9;
    OUTLINED_FUNCTION_7_6();
    sub_231478738();
    LOBYTE(v15) = *(v3 + v11[14]);
    v16 = 10;
    sub_23141EF10();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    LOBYTE(v15) = 11;
    OUTLINED_FUNCTION_7_6();
    sub_231478728();
    LOBYTE(v15) = *(v3 + v11[16]);
    v16 = 12;
    sub_23143AF1C();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    OUTLINED_FUNCTION_6_8(13);
    OUTLINED_FUNCTION_6_8(14);
    v15 = *(v3 + v11[19]);
    v16 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    sub_2313F6580(&qword_280C3C158, sub_23140518C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_26_3();
    sub_231478748();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t InteractionWithParameters.parameters.getter()
{
  type metadata accessor for InteractionWithParameters(0);
}

uint64_t InteractionWithParameters.parameters.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  v3 = *(type metadata accessor for InteractionWithParameters(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

uint64_t InteractionWithParameters.parameters.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  type metadata accessor for InteractionWithParameters(v0);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t InteractionWithParameters.contentHash.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  result = type metadata accessor for InteractionWithParameters(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t InteractionWithParameters.contentHash.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  type metadata accessor for InteractionWithParameters(v0);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t sub_23143A600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23143A720(char a1)
{
  if (!a1)
  {
    return 0x7463617265746E69;
  }

  if (a1 == 1)
  {
    return 0x6574656D61726170;
  }

  return 0x48746E65746E6F63;
}

uint64_t sub_23143A794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23143A600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23143A7BC(uint64_t a1)
{
  v2 = sub_23143AFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143A7F8(uint64_t a1)
{
  v2 = sub_23143AFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InteractionWithParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E010, &qword_23147C538);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23143AFE4();
  sub_231478968();
  v16 = 0;
  type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_11_13();
  sub_2313F81DC(v11, v12, &protocol conformance descriptor for Interaction);
  OUTLINED_FUNCTION_26_3();
  sub_231478748();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for InteractionWithParameters(0) + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
    sub_23141ED50();
    OUTLINED_FUNCTION_26_3();
    sub_231478748();
    v14[14] = 2;
    sub_231478738();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t InteractionWithParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v20 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E020, &qword_23147C550);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for InteractionWithParameters(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23143AFE4();
  sub_231478948();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_11_13();
  sub_2313F81DC(v13, v14, &protocol conformance descriptor for Interaction);
  sub_2314786B8();
  sub_23143B038(v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
  sub_23141EF64();
  sub_2314786B8();
  *(v12 + *(v8 + 20)) = v21;
  v15 = sub_2314786A8();
  v16 = OUTLINED_FUNCTION_15_6();
  v17(v16);
  *(v12 + *(v8 + 24)) = v15;
  sub_231405434(v12, a2, type metadata accessor for InteractionWithParameters);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2313FC214();
}

unint64_t sub_23143AE74()
{
  result = qword_27DD4DFD8;
  if (!qword_27DD4DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFD8);
  }

  return result;
}

unint64_t sub_23143AEC8()
{
  result = qword_27DD4DFE0;
  if (!qword_27DD4DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFE0);
  }

  return result;
}

unint64_t sub_23143AF1C()
{
  result = qword_27DD4DFE8;
  if (!qword_27DD4DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFE8);
  }

  return result;
}

unint64_t sub_23143AF70()
{
  result = qword_27DD4E008;
  if (!qword_27DD4E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E008);
  }

  return result;
}

unint64_t sub_23143AFE4()
{
  result = qword_27DD4E018;
  if (!qword_27DD4E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E018);
  }

  return result;
}

uint64_t sub_23143B038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Interaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23143B0A0()
{
  result = qword_27DD4E028;
  if (!qword_27DD4E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E028);
  }

  return result;
}

unint64_t sub_23143B0F8()
{
  result = qword_27DD4E030;
  if (!qword_27DD4E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E030);
  }

  return result;
}

unint64_t sub_23143B150()
{
  result = qword_27DD4E038;
  if (!qword_27DD4E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E038);
  }

  return result;
}

void sub_23143B1A4(uint64_t a1)
{
  sub_231476CA8();
  if (v1 <= 0x3F)
  {
    sub_231421584();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23143B2BC(uint64_t a1)
{
  type metadata accessor for Interaction(319);
  if (v1 <= 0x3F)
  {
    sub_23141F374(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InteractionHandlingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InteractionDevicePlatform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23143B504()
{
  result = qword_27DD4E040;
  if (!qword_27DD4E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E040);
  }

  return result;
}

unint64_t sub_23143B55C()
{
  result = qword_27DD4E048;
  if (!qword_27DD4E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E048);
  }

  return result;
}

unint64_t sub_23143B5B4()
{
  result = qword_27DD4E050;
  if (!qword_27DD4E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E050);
  }

  return result;
}

unint64_t sub_23143B60C()
{
  result = qword_27DD4E058;
  if (!qword_27DD4E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E058);
  }

  return result;
}

unint64_t sub_23143B664()
{
  result = qword_27DD4E060;
  if (!qword_27DD4E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E060);
  }

  return result;
}

unint64_t sub_23143B6BC()
{
  result = qword_27DD4E068;
  if (!qword_27DD4E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E068);
  }

  return result;
}

unint64_t sub_23143B710()
{
  result = qword_27DD4E070;
  if (!qword_27DD4E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E070);
  }

  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.init()()
{
  v1 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = v1;
  *(v0 + 16) = 0;
  return result;
}

void InteractionQuery.filter(includingEntitiesFromQuery:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 40);
  v9 = v0[1];
  v10 = *(v0 + 16);
  *v1 = *v0;
  v1[1] = v9;
  *(v1 + 16) = v10;
  v11 = *(v3 + 32);

  sub_2313E9688(v4, v5, v6, v7, v11);

  sub_23141CB50();
  v12 = *(*v2 + 16);
  sub_23141CB68(v12);
  v13 = *v2;
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 48 * v12;
  *(v14 + 32) = v4;
  *(v14 + 40) = v5;
  *(v14 + 48) = v6;
  *(v14 + 56) = v7;
  *(v14 + 64) = v11;
  *(v14 + 72) = v8;
  OUTLINED_FUNCTION_16();
}

void InteractionQuery.filter<A>(field:value:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_152(v4, v5, v2, v0, v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_38_1();
  (*(v10 + 16))(v9, v3, v1);
  OUTLINED_FUNCTION_133_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_140_0();
  InteractionQuery.filter<A>(field:filter:)();
  v11 = OUTLINED_FUNCTION_133_0();
  v12(v11);
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(direction:)(SiriRemembers::InteractionDirection direction)
{
  sub_23143CAF4();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(isDonatedBySiri:)(Swift::Bool isDonatedBySiri)
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_116_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28_3();
  *v1 = v4;
  type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_162();
  sub_2313E95CC(v7, v8, v9, &unk_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_148_0();
  v10 = OUTLINED_FUNCTION_36_0();
  sub_2313E937C(v10, v11, &unk_2314795C0);
  OUTLINED_FUNCTION_62_1(v2 + 1);
  OUTLINED_FUNCTION_36_1(v12 + 32 * v2);
  OUTLINED_FUNCTION_16();
  result.filters._rawValue = v14;
  result.entityQueries._rawValue = v13;
  result.includeRemote = v15;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(id:)(Swift::String id)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void sub_23143BA9C()
{
  OUTLINED_FUNCTION_64();
  v33 = v5;
  v34 = v1;
  v32 = v6;
  v7 = type metadata accessor for _Interaction(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_78_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_73_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E138, &qword_23147CDC8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_119_0();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  OUTLINED_FUNCTION_76_0();
  sub_23143D8C4(0, v17, v18, v19, v20, v21, v22, v23, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  v37 = v16;
  v24 = v34;
  sub_231477098();
  if (!v24)
  {
    v25 = v32;
    sub_2313E95CC(v4, v3, &qword_27DD4E138, &qword_23147CDC8);
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) != 1)
    {
      v26 = OUTLINED_FUNCTION_191();
      sub_2314448B0(v26, v27, v28);
      sub_2314015B4(v0, v2, type metadata accessor for _Interaction);
      sub_23143909C(v2, v25);
      OUTLINED_FUNCTION_20_3();
      sub_23140166C(v0, v29);
    }

    sub_2313E937C(v4, &qword_27DD4E138, &qword_23147CDC8);
    v30 = type metadata accessor for Interaction(0);
    OUTLINED_FUNCTION_197(v30);
  }

  (*(v13 + 8))(v16, v43);
  OUTLINED_FUNCTION_62();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(domain:)(Swift::String domain)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void sub_23143BD40()
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_1();
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 16);
  *v1 = v6;
  v1[1] = v4;
  type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v8 = v11;
  *(v8 + 8) = v12;
  *(v8 + 16) = v13;
  sub_2313E95CC(v1, v2, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  sub_2313F3390();
  OUTLINED_FUNCTION_149_0();
  v14 = OUTLINED_FUNCTION_160();
  sub_2313E937C(v14, v15, &unk_2314795C0);
  OUTLINED_FUNCTION_44_1();
  *(v16 + 48) = v17;
  *(v16 + 56) = v18;
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(type:)(Swift::String type)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(bundleId:)(Swift::String bundleId)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void sub_23143BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v23;
  a20 = v24;
  v153 = v25;
  v27 = v26;
  v29 = v28;
  v141 = v30;
  v140 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_171(v34);
  v165 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_0();
  v164 = v38;
  v39 = OUTLINED_FUNCTION_47();
  v167[1] = type metadata accessor for QueryValue(v39);
  OUTLINED_FUNCTION_4();
  v145 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_78_0();
  MEMORY[0x28223BE20](v42);
  v44 = v138 - v43;
  v167[0] = sub_2314770C8();
  OUTLINED_FUNCTION_4();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_0();
  v168 = v48;
  OUTLINED_FUNCTION_47();
  v49 = sub_231477468();
  v50 = OUTLINED_FUNCTION_0_0(v49, &a11);
  v52 = v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v53);
  v54 = sub_231476EB8();
  v55 = OUTLINED_FUNCTION_0_0(v54, v167);
  v138[7] = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v57);
  v58 = sub_2314770D8();
  v59 = OUTLINED_FUNCTION_0_0(v58, &v168);
  v138[9] = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v61);
  v62 = sub_231477668();
  v63 = OUTLINED_FUNCTION_14(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v64);
  v65 = sub_2314773C8();
  v66 = OUTLINED_FUNCTION_14(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA90, &qword_23147A7E0);
  OUTLINED_FUNCTION_0_0(v68, &v163);
  v138[3] = v69;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v71);
  v152 = v29;
  v154 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v27);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v73);
  v142 = v20;
  v74 = *(v20 + 5);
  v144 = v75;
  v76 = *(v75 + 16);
  v155 = v138 - v77;
  v156 = v78;
  v76();
  v150 = *(v74 + 16);
  if (v150)
  {
    v149 = v74 + 32;
    v162 = (v36 + 8);
    v163 = v36 + 32;
    v166 = v46 + 32;
    v148 = v52 + 8;
    v79 = 0;
    v147 = v144 + 8;
    v146 = v144 + 32;
    do
    {
      v80 = v149 + 32 * v79;
      v81 = *v80;
      v82 = *(v80 + 16);
      v160 = *(v80 + 8);
      v161 = v82;
      v83 = *(v80 + 24);
      v84 = *(v83 + 16);
      if (v84)
      {
        v159 = v79;
        v157 = v81;
        v85 = OUTLINED_FUNCTION_192();
        sub_2313E8ABC(v85, v86);
        *&v173 = MEMORY[0x277D84F90];

        sub_2313E8C84(0, v84, 0);
        v87 = v173;
        OUTLINED_FUNCTION_6();
        v158 = v83;
        v89 = v83 + v88;
        v91 = *(v90 + 72);
        do
        {
          sub_2314015B4(v89, v44, type metadata accessor for QueryValue);
          sub_2314015B4(v44, v21, type metadata accessor for QueryValue);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              MEMORY[0x23192E2E0](*v21);
              break;
            case 2u:
              MEMORY[0x23192E290](*v21);
              break;
            case 3u:
              sub_231477EE8();

              break;
            case 4u:
              v92 = v164;
              v93 = OUTLINED_FUNCTION_98();
              v94 = v165;
              v95(v93);
              v96 = sub_231476BC8();
              MEMORY[0x23192E290](v96);
              (*v162)(v92, v94);
              break;
            default:
              sub_2314781B8();
              break;
          }

          sub_23140166C(v44, type metadata accessor for QueryValue);
          *&v173 = v87;
          v98 = *(v87 + 16);
          v97 = *(v87 + 24);
          if (v98 >= v97 >> 1)
          {
            sub_2313E8C84(v97 > 1, v98 + 1, 1);
            v87 = v173;
          }

          *(v87 + 16) = v98 + 1;
          OUTLINED_FUNCTION_59();
          (*(v46 + 32))(v87 + v99 + *(v46 + 72) * v98, v168, v167[0]);
          v89 += v91;
          --v84;
        }

        while (v84);
        v79 = v159;
        v81 = v157;
      }

      else
      {
        v100 = OUTLINED_FUNCTION_192();
        sub_2313E8ABC(v100, v101);

        v87 = MEMORY[0x277D84F90];
      }

      ++v79;
      OUTLINED_FUNCTION_192();
      *&v173 = sub_2313ED6C8();
      *(&v173 + 1) = v102;
      v103 = 0xE100000000000000;
      OUTLINED_FUNCTION_125_0();
      v104 = 61;
      switch(v161)
      {
        case 1:
          v103 = 0xE200000000000000;
          v104 = 15649;
          break;
        case 2:
          v104 = 60;
          break;
        case 3:
          v103 = 0xE200000000000000;
          v104 = 15676;
          break;
        case 4:
          v104 = 62;
          break;
        case 5:
          v103 = 0xE200000000000000;
          v104 = 15678;
          break;
        case 6:
          v103 = 0xE200000000000000;
          v104 = 20041;
          break;
        case 7:
          v103 = 0xE400000000000000;
          v104 = OUTLINED_FUNCTION_141_0();
          break;
        default:
          break;
      }

      MEMORY[0x23192E060](v104, v103);

      OUTLINED_FUNCTION_125_0();
      if (v161 == 6)
      {
        v105 = sub_231478058();
        v169 = v105;
        v170 = v106;
        v107 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v107 = v105 & 0xFFFFFFFFFFFFLL;
        }

        if (v107)
        {
          OUTLINED_FUNCTION_19_6();
          OUTLINED_FUNCTION_153();
          sub_231477FC8();
        }

        sub_231477FB8();
        v108 = OUTLINED_FUNCTION_90_0();
        MEMORY[0x23192E060](v108);
        sub_2313ED930(v81, v160);

        v109 = v169;
        v110 = v170;
      }

      else
      {
        sub_2313ED930(v81, v160);

        v110 = 0xE100000000000000;
        v109 = 63;
      }

      MEMORY[0x23192E060](v109, v110);

      v33 = *(&v173 + 1);
      *&v173 = v87;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
      OUTLINED_FUNCTION_7_7();
      sub_2313ED944(&qword_280C3CEB8, &qword_27DD4DAA0, &qword_23147A7E8, v111);
      OUTLINED_FUNCTION_92_0();
      sub_231477478();
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_123_0(v112, v113, v114, v115);
      OUTLINED_FUNCTION_144_0();
      v74 = v156;
      sub_2314771B8();

      OUTLINED_FUNCTION_37_1();
      v116(&qword_23147A7E8, v151);
      OUTLINED_FUNCTION_37_1();
      v117 = OUTLINED_FUNCTION_134();
      v118(v117);
      OUTLINED_FUNCTION_37_1();
      v119 = OUTLINED_FUNCTION_154();
      v120(v119);
    }

    while (v79 != v150);
  }

  v121 = *(v142 + 32);
  if (v121 == 255)
  {
    (*(v144 + 32))(v143, v155, v156);
  }

  else
  {
    v122 = v142[1];
    v173 = *v142;
    v174 = v122;
    OUTLINED_FUNCTION_195();
    sub_231477378();
    OUTLINED_FUNCTION_132();
    v123 = sub_231477368();
    LOBYTE(v175) = v121;
    v169 = sub_231423790(v123);
    v170 = v124;
    sub_231423704();
    sub_2314773B8();

    sub_231477368();
    OUTLINED_FUNCTION_139();
    sub_231477658();
    v175 = 0;
    v173 = 0u;
    v174 = 0u;
    OUTLINED_FUNCTION_145_0();
    sub_231476E78();
    sub_231476E98();
    swift_allocObject();

    sub_231476E88();
    *(&v174 + 1) = sub_2314776A8();
    v175 = MEMORY[0x277D0B7F8];
    __swift_allocate_boxed_opaque_existential_1(&v173);
    sub_231477698();
    OUTLINED_FUNCTION_92_0();
    sub_231476EA8();
    __swift_destroy_boxed_opaque_existential_0(&v173);
    OUTLINED_FUNCTION_107_0();
    v125 = v138[4];
    sub_231476E68();
    v126 = v139;
    v171 = v139;
    v172 = MEMORY[0x277D0B728];
    __swift_allocate_boxed_opaque_existential_1(&v169);
    OUTLINED_FUNCTION_105_0();
    (*(v127 + 16))();
    *(&v174 + 1) = v126;
    v175 = MEMORY[0x277D0B730];
    __swift_allocate_boxed_opaque_existential_1(&v173);
    OUTLINED_FUNCTION_109_0();
    sub_231477208();
    OUTLINED_FUNCTION_13_1();
    v128(v33, v74);
    __swift_destroy_boxed_opaque_existential_0(&v169);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_123_0(v129, v130, v131, v132);
    OUTLINED_FUNCTION_109_0();
    sub_2314771C8();

    v133 = OUTLINED_FUNCTION_84_0();
    v134(v133);
    OUTLINED_FUNCTION_13_1();
    v135(v22, v125);
    OUTLINED_FUNCTION_13_1();
    v136 = OUTLINED_FUNCTION_134();
    v137(v136);
    __swift_destroy_boxed_opaque_existential_0(&v173);
  }

  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(deviceId:)(Swift::String deviceId)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(handlingStatus:)(SiriRemembers::InteractionHandlingStatus handlingStatus)
{
  sub_23143CAF4();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void sub_23143CAF4()
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_1();
  v11 = *v6;
  v12 = *v0;
  v13 = v0[1];
  v14 = *(v0 + 16);
  *v1 = v11;
  type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v8 = v12;
  *(v8 + 8) = v13;
  *(v8 + 16) = v14;
  sub_2313E95CC(v1, v2, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_147_0();
  sub_2313E937C(v1, &unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_62_1(v4 + 1);
  OUTLINED_FUNCTION_36_1(v15 + 32 * v4);
  OUTLINED_FUNCTION_16();
}

void sub_23143CC70()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  v9 = OUTLINED_FUNCTION_14(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v14 = *v0;
  v13 = v0[1];
  v15 = *(v0 + 16);
  v3(*v5, *(v5 + 8));
  *v7 = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = v15;
  sub_2313E95CC(v12, v1, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  LOBYTE(v3) = v20[16];
  v16 = v21;
  sub_2313F3390();
  OUTLINED_FUNCTION_149_0();
  v17 = OUTLINED_FUNCTION_134_0();
  sub_2313E937C(v17, v18, &unk_2314795C0);
  OUTLINED_FUNCTION_44_1();
  *(v19 + 48) = v3;
  *(v19 + 56) = v16;
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(isLocal:)(Swift::Bool isLocal)
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_73_0();
  v10 = *v2;
  v9 = v2[1];
  if (*(v2 + 16) == 1)
  {
    *v6 = v10;
    *(v6 + 8) = v9;
    *(v6 + 16) = 1;
LABEL_7:

    OUTLINED_FUNCTION_16();
  }

  else
  {
    v11 = *(v9 + 16) + 1;
    v12 = 40;
    while (--v11)
    {
      v13 = *(v9 + v12);
      v12 += 32;
      if (v13 == 15)
      {
        *v6 = v10;
        *(v6 + 8) = v9;
        *(v6 + 16) = 0;
        goto LABEL_7;
      }
    }

    *v1 = v4 & 1;
    type metadata accessor for QueryValue(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *v6 = v10;
    *(v6 + 8) = v9;
    *(v6 + 16) = 0;
    v18 = OUTLINED_FUNCTION_175();
    sub_2313E95CC(v18, v19, &unk_27DD4D680, &unk_2314795C0);

    OUTLINED_FUNCTION_71_0();
    sub_2313E8CDC();
    sub_2313F3390();
    v20 = *(*(v6 + 8) + 16);
    sub_2313F34A0(v20);
    sub_2313E937C(v1, &unk_27DD4D680, &unk_2314795C0);
    OUTLINED_FUNCTION_62_1(v20 + 1);
    v22 = v21 + 32 * v20;
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    OUTLINED_FUNCTION_118_0(v22);
    OUTLINED_FUNCTION_16();
  }

  result.filters._rawValue = v16;
  result.entityQueries._rawValue = v15;
  result.includeRemote = v17;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.includingRemote()()
{
  v2 = v1[1];
  *v0 = *v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = 1;

  result.filters._rawValue = v4;
  result.entityQueries._rawValue = v3;
  result.includeRemote = v5;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(devicePlatform:)(SiriRemembers::InteractionDevicePlatform devicePlatform)
{
  sub_23143CAF4();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(userDonatorType:)(SiriRemembers::UserDonatorType userDonatorType)
{
  sub_23143CAF4();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void InteractionQuery.filter<A>(field:filter:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_152(v7, v8, v5, v3, v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  OUTLINED_FUNCTION_69();
  *(v0 + 16) = v12;
  (*(v13 + 16))(v11, v6);

  v14 = OUTLINED_FUNCTION_84_0();
  sub_23144F390(v14, v15, v11, v4, v2, v16);
  LOBYTE(v6) = v19[16];
  v17 = v20;
  sub_2313F3390();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_44_1();
  *(v18 + 48) = v6;
  *(v18 + 56) = v17;
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filterDirectDonationsOnly()()
{
  OUTLINED_FUNCTION_143_0();
  sub_23143D178();
  result.filters._rawValue = v1;
  result.entityQueries._rawValue = v0;
  result.includeRemote = v2;
  return result;
}

void sub_23143D178()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_116_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_3();
  *v0 = v3 & 1;
  type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_69();
  v6 = OUTLINED_FUNCTION_162();
  sub_2313E95CC(v6, v7, v8, &unk_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_148_0();
  v9 = OUTLINED_FUNCTION_36_0();
  sub_2313E937C(v9, v10, &unk_2314795C0);
  OUTLINED_FUNCTION_62_1(v1 + 1);
  OUTLINED_FUNCTION_36_1(v11 + 32 * v1);
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filterExcludeDirectDonations()()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_175();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_28_3();
  *v0 = 0;
  type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_172();
  sub_2313E95CC(v0, v1, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  sub_2313F3390();
  OUTLINED_FUNCTION_148_0();
  v8 = OUTLINED_FUNCTION_16_5();
  sub_2313E937C(v8, v9, &unk_2314795C0);
  OUTLINED_FUNCTION_62_1(v3 + 1);
  v11 = v10 + 32 * v3;
  *(v11 + 32) = v15;
  *(v11 + 40) = v16;
  OUTLINED_FUNCTION_118_0(v11);
  OUTLINED_FUNCTION_16();
  result.filters._rawValue = v13;
  result.entityQueries._rawValue = v12;
  result.includeRemote = v14;
  return result;
}

void InteractionQuery.fetchAll(_:)()
{
  OUTLINED_FUNCTION_64();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_43_1();
  v10 = *(v5 + 8);
  v11 = *v0;
  v12 = *(v0 + 8);
  v13 = *(v0 + 16);
  if (v10)
  {
    v14 = OUTLINED_FUNCTION_112_0(v10);
    sub_23143D660(&v39, v14);
  }

  else
  {
    v44 = v9;
    OUTLINED_FUNCTION_112_0(v10);
    v15 = sub_2313F4D04();
    if (!v1)
    {
      LOBYTE(v40) = v13;
      sub_23143D8C4(0, v16, v17, v18, v19, v20, v21, v22, v33, v15, v34, v36, v37, v38, v11, v12, v40, v41, v42, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
      OUTLINED_FUNCTION_41_1();
      v35 = v6;
      v23 = swift_allocObject();
      OUTLINED_FUNCTION_110_0(v23, xmmword_231479580);
      v24 = sub_231476D88();
      v25 = MEMORY[0x277D0B6A8];
      v23[3].n128_u64[1] = v24;
      v23[4].n128_u64[0] = v25;
      __swift_allocate_boxed_opaque_existential_1(&v23[2]);
      sub_231476D78();
      OUTLINED_FUNCTION_2_10();
      sub_2313ED944(v26, v27, v28, v29);
      OUTLINED_FUNCTION_192();
      sub_2314773D8();

      v30 = *(v44 + 8);
      v31 = v30(v3, v35);
      MEMORY[0x28223BE20](v31);
      OUTLINED_FUNCTION_120_0();
      *(v32 - 32) = v11;
      *(v32 - 24) = v12;
      *(v32 - 16) = v13;
      *(v32 - 8) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E098, &qword_23147CCC8);
      sub_231477098();

      v30(v2, v35);
    }
  }

  OUTLINED_FUNCTION_62();
}

void sub_23143D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v25;
  a20 = v26;
  HIDWORD(v285) = v27;
  OUTLINED_FUNCTION_171(v28);
  v29 = sub_231477668();
  v30 = OUTLINED_FUNCTION_0_0(v29, &v314);
  v284 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E120, &qword_23147CDB0);
  v34 = OUTLINED_FUNCTION_0_0(v33, &v325);
  v283 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v37);
  v38 = sub_2314773C8();
  v39 = OUTLINED_FUNCTION_0_0(v38, &v298);
  v281 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v42);
  v43 = sub_231476EB8();
  v44 = OUTLINED_FUNCTION_0_0(v43, v319);
  v286 = v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  v48 = OUTLINED_FUNCTION_0_0(v47, &v326);
  v287 = v49;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E148, &qword_23147CDE8);
  OUTLINED_FUNCTION_0_0(v54, &v307);
  v290 = v55;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_28(v57);
  v58 = sub_231477468();
  v59 = OUTLINED_FUNCTION_0_0(v58, &v329);
  v302 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0E0, &unk_23147CD70);
  OUTLINED_FUNCTION_14(v62);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_28(v64);
  v65 = sub_231476CA8();
  v66 = OUTLINED_FUNCTION_0_0(v65, &a13);
  v301 = v67;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_12_0();
  v69 = OUTLINED_FUNCTION_28(v68);
  Value = type metadata accessor for QueryValue(v69);
  v71 = OUTLINED_FUNCTION_0_0(Value, &a14);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_116_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_73_0();
  v73 = sub_2314770C8();
  v74 = OUTLINED_FUNCTION_0_0(v73, &a16);
  v76 = v75;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  v80 = OUTLINED_FUNCTION_0_0(v79, &v333);
  v292 = v81;
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_28_3();
  v85 = *(v21 + 8);
  v295 = *v21;
  v86 = OUTLINED_FUNCTION_176(*(v21 + 16));
  type metadata accessor for _Interaction(v86);
  sub_231400E2C(&qword_280C3C5E0, type metadata accessor for _Interaction, &unk_23148044C);
  v310 = v22;
  sub_231476ED8();
  v87 = v85;
  v330 = v85;
  v88 = *(v85 + 16) + 1;
  v89 = 40;
  do
  {
    if (!--v88)
    {
      break;
    }

    v90 = *(v87 + v89);
    v89 += 32;
  }

  while (v90 != 15);
  *(&v332 + 1) = &unk_28460C4B0;
  v91 = sub_2313E3100();
  v333 = v91;
  LOBYTE(v331) = 0;
  v307 = v87;

  sub_231476D68();
  OUTLINED_FUNCTION_199();
  v92 = 2;
  LOBYTE(v331) = 2;
  v93 = sub_231476D68();
  OUTLINED_FUNCTION_199();
  LOBYTE(v331) = 1;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(&v331);
  if ((v93 & 1) == 0)
  {
    *(&v332 + 1) = &unk_28460C4B0;
    v333 = v91;
    LOBYTE(v331) = 0;
    sub_231476D68();
    OUTLINED_FUNCTION_199();
    LOBYTE(v331) = 2;
    sub_231476D68();
    OUTLINED_FUNCTION_199();
    LOBYTE(v331) = 1;
    v94 = sub_231476D68();
    __swift_destroy_boxed_opaque_existential_0(&v331);
    if ((v94 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (!v320)
  {
    if (!v88)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      OUTLINED_FUNCTION_180();
      v128 = v127 & ~v126;
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_231479580;
      *(v129 + v128) = 1;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_166();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v130 = v307;
      }

      else
      {
        OUTLINED_FUNCTION_3_0();
        sub_2313F3244();
        v130 = v277;
      }

      v132 = *(v130 + 16);
      v131 = *(v130 + 24);
      if (v132 >= v131 >> 1)
      {
        OUTLINED_FUNCTION_20(v131);
        sub_2313F3244();
        v130 = v278;
      }

      *(v130 + 16) = v132 + 1;
      v133 = v130 + 32 * v132;
      *(v133 + 32) = xmmword_23147CC80;
      *(v133 + 48) = 0;
      *(v133 + 56) = v129;
      v330 = v130;
      OUTLINED_FUNCTION_64_0();
      goto LABEL_32;
    }

LABEL_12:
    OUTLINED_FUNCTION_64_0();
    v101 = v307;
    goto LABEL_32;
  }

  swift_bridgeObjectRetain_n();
  v95 = v307;
  swift_bridgeObjectRetain_n();
  v320 = sub_23144490C(v95, v295, v95);
  if (v96)
  {
    OUTLINED_FUNCTION_135_0(*(v95 + 16));
    OUTLINED_FUNCTION_64_0();
  }

  else
  {
    OUTLINED_FUNCTION_87();
    v92 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    OUTLINED_FUNCTION_87();
    v104 = 32 * v103 + 88;
    v105 = OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_64_0();
    while (1)
    {
      v106 = *(v105 + 16);
      if (v92 == v106)
      {
        break;
      }

      if (v92 >= v106)
      {
        goto LABEL_117;
      }

      v107 = *(v105 + v104 - 16);
      if (v107 != 15)
      {
        if (v92 != v320)
        {
          if (v320 >= v106)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_164();
          LODWORD(v312) = v108;
          v110 = *(v109 + 24);
          v24 = *(v111 - 24);
          OUTLINED_FUNCTION_165();
          v113 = *v112;
          v314 = v114;
          v313 = v115;
          sub_2313E8ABC(v114, v115);
          v308 = v110;

          v317 = v24;
          sub_2313E8ABC(v24, v107);
          v315 = v113;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2314285F0();
            v105 = v125;
          }

          if (v320 >= *(v105 + 16))
          {
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v24 = v313;
          v116 = v314;
          OUTLINED_FUNCTION_87();
          OUTLINED_FUNCTION_101_0(v105 + 32 * v117);
          *(v118 + 56) = v315;
          sub_2313ED930(v119, v120);

          if (v92 >= *(v105 + 16))
          {
            goto LABEL_120;
          }

          v121 = (v105 + v104);
          v122 = *(v105 + v104 - 24);
          v123 = *(v105 + v104 - 16);
          *(v121 - 3) = v116;
          *(v121 - 2) = v24;
          *(v121 - 8) = v312;
          *v121 = v308;
          sub_2313ED930(v122, v123);

          v330 = v105;
          OUTLINED_FUNCTION_166();
        }

        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_135_0(v124 + 1);
      }

      OUTLINED_FUNCTION_64_0();
      ++v92;
      v104 += 32;
    }
  }

  OUTLINED_FUNCTION_87();
  if (v97 < v98)
  {
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v99 = OUTLINED_FUNCTION_142_0();
  sub_23144472C(v99, v100);
  v101 = v330;
LABEL_32:
  v304 = *(v101 + 16);
  if (v304)
  {
    v134 = 0;
    v303 = v101 + 32;
    v317 = v301 + 32;
    v316 = v301 + 8;
    v320 = v76 + 32;
    v302 += 8;
    v301 = v292 + 8;
    v300 = v292 + 32;
    v307 = v101;
    do
    {
      if (v134 >= *(v101 + 16))
      {
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v312 = v134;
      v135 = v303 + 32 * v134;
      v136 = *v135;
      v137 = *(v135 + 8);
      v315 = *(v135 + 16);
      v138 = *(v135 + 24);
      v139 = *(v138 + 16);
      v314 = v137;
      v313 = v136;
      if (v139)
      {
        v140 = OUTLINED_FUNCTION_96_0();
        sub_2313E8ABC(v140, v141);
        *&v331 = MEMORY[0x277D84F90];

        sub_2313E8C84(0, v139, 0);
        v142 = v331;
        OUTLINED_FUNCTION_6();
        v308 = v138;
        v144 = v138 + v143;
        v146 = *(v145 + 72);
        do
        {
          sub_2314015B4(v144, v20, type metadata accessor for QueryValue);
          sub_2314015B4(v20, v23, type metadata accessor for QueryValue);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_89();
              MEMORY[0x23192E2E0]();
              break;
            case 2u:
              OUTLINED_FUNCTION_89();
              MEMORY[0x23192E290]();
              break;
            case 3u:
              OUTLINED_FUNCTION_89();
              sub_231477EE8();

              break;
            case 4u:
              OUTLINED_FUNCTION_37_1();
              v147 = OUTLINED_FUNCTION_134();
              v148(v147);
              sub_231476BC8();
              OUTLINED_FUNCTION_89();
              MEMORY[0x23192E290]();
              OUTLINED_FUNCTION_37_1();
              v149 = OUTLINED_FUNCTION_98();
              v150(v149);
              break;
            default:
              OUTLINED_FUNCTION_89();
              sub_2314781B8();
              break;
          }

          OUTLINED_FUNCTION_8_13();
          sub_23140166C(v20, v151);
          *&v331 = v142;
          v153 = *(v142 + 16);
          v152 = *(v142 + 24);
          if (v153 >= v152 >> 1)
          {
            v155 = OUTLINED_FUNCTION_20(v152);
            sub_2313E8C84(v155, v153 + 1, 1);
            v142 = v331;
          }

          *(v142 + 16) = v153 + 1;
          OUTLINED_FUNCTION_59();
          (*(v76 + 32))(v142 + v154 + *(v76 + 72) * v153, v322, v321);
          v144 += v146;
          --v139;
        }

        while (v139);
        v137 = v314;
        v136 = v313;
      }

      else
      {
        v156 = OUTLINED_FUNCTION_96_0();
        sub_2313E8ABC(v156, v157);

        v142 = MEMORY[0x277D84F90];
      }

      v158 = v311;
      if (v137 >= 0x12)
      {
        OUTLINED_FUNCTION_188();
        v162 = OUTLINED_FUNCTION_96_0();
        sub_2313E8ABC(v162, v163);
        MEMORY[0x23192E060](v136, v137);
        sub_2313ED930(v136, v137);
        OUTLINED_FUNCTION_105_0();
        sub_231477EE8();

        OUTLINED_FUNCTION_37_1();
        v164(v309, v136, v321);
        v165 = *(v142 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v165 >= *(v142 + 24) >> 1)
        {
          sub_23141CF98();
          v142 = v166;
        }

        v92 = v306;
        OUTLINED_FUNCTION_59();
        v168 = v142 + v167;
        v169 = *(v76 + 72);
        swift_arrayDestroy();
        if (v169 < 0 || v169 >= *(v142 + 16) * v169)
        {
          OUTLINED_FUNCTION_181();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v169)
        {
          OUTLINED_FUNCTION_181();
          swift_arrayInitWithTakeBackToFront();
        }

        ++*(v142 + 16);
        if (v169 >= 1)
        {
          v170 = 0;
          v24 = -v169;
          v171 = v168;
          while ((v170 & 1) == 0)
          {
            OUTLINED_FUNCTION_37_1();
            v172(v171, v309, v321);
            v171 += v169;
            v170 = 1;
            if (v171 - v169 >= v168)
            {
              goto LABEL_63;
            }
          }

LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

LABEL_63:
        sub_2313E937C(v309, &qword_27DD4E0E0, &unk_23147CD70);
        OUTLINED_FUNCTION_196();

        *&v331 = 0xD000000000000025;
        *(&v331 + 1) = 0x8000000231482D80;
        v173 = 0xE200000000000000;
        v174 = 15649;
        switch(v315)
        {
          case 1uLL:
            break;
          case 2uLL:
            v173 = 0xE100000000000000;
            v174 = 60;
            break;
          case 3uLL:
            v174 = 15676;
            break;
          case 4uLL:
            v173 = 0xE100000000000000;
            v174 = 62;
            break;
          case 5uLL:
            v174 = 15678;
            break;
          case 6uLL:
            v174 = 20041;
            break;
          case 7uLL:
            v173 = 0xE400000000000000;
            v174 = OUTLINED_FUNCTION_141_0();
            break;
          default:
            v173 = 0xE100000000000000;
            v174 = 61;
            break;
        }

        MEMORY[0x23192E060](v174, v173);

        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_158();
        if (v175)
        {
          v184 = OUTLINED_FUNCTION_151();
          OUTLINED_FUNCTION_25_2(v184, v185);
          if (v186)
          {
            OUTLINED_FUNCTION_19_6();
            OUTLINED_FUNCTION_153();
            sub_231477FC8();
          }

          OUTLINED_FUNCTION_63_1();
          v187 = OUTLINED_FUNCTION_90_0();
          MEMORY[0x23192E060](v187);
          v188 = OUTLINED_FUNCTION_102_0();
          OUTLINED_FUNCTION_200(v188);

          v191 = v323;
          v190 = v324;
        }

        else
        {
          v189 = OUTLINED_FUNCTION_102_0();
          OUTLINED_FUNCTION_200(v189);

          v190 = 0xE100000000000000;
          v191 = 63;
        }

        MEMORY[0x23192E060](v191, v190);

        *&v331 = v142;
        v24 = &qword_23147A7E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
        OUTLINED_FUNCTION_7_7();
        sub_2313ED944(&qword_280C3CEB8, &qword_27DD4DAA0, &qword_23147A7E8, v192);
        OUTLINED_FUNCTION_155();
        sub_231477478();
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(&qword_280C3C8D8, &unk_27DD4D890, qword_23147F7F0, v193);
        OUTLINED_FUNCTION_105_0();
        v158 = v311;
      }

      else
      {
        OUTLINED_FUNCTION_96_0();
        *&v331 = sub_2313ED6C8();
        *(&v331 + 1) = v159;
        v160 = 0xE100000000000000;
        OUTLINED_FUNCTION_125_0();
        v161 = 61;
        v92 = v306;
        switch(v315)
        {
          case 1uLL:
            v160 = 0xE200000000000000;
            v161 = 15649;
            break;
          case 2uLL:
            v161 = 60;
            break;
          case 3uLL:
            v160 = 0xE200000000000000;
            v161 = 15676;
            break;
          case 4uLL:
            v161 = 62;
            break;
          case 5uLL:
            v160 = 0xE200000000000000;
            v161 = 15678;
            break;
          case 6uLL:
            v160 = 0xE200000000000000;
            v161 = 20041;
            break;
          case 7uLL:
            v160 = 0xE400000000000000;
            v161 = OUTLINED_FUNCTION_141_0();
            break;
          default:
            break;
        }

        MEMORY[0x23192E060](v161, v160);

        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_158();
        if (v175)
        {
          v176 = sub_231478058();
          OUTLINED_FUNCTION_25_2(v176, v177);
          if (v178)
          {
            OUTLINED_FUNCTION_19_6();
            OUTLINED_FUNCTION_153();
            sub_231477FC8();
          }

          OUTLINED_FUNCTION_63_1();
          v179 = OUTLINED_FUNCTION_90_0();
          MEMORY[0x23192E060](v179);
          OUTLINED_FUNCTION_200(v136);

          v181 = v323;
          v180 = v324;
        }

        else
        {
          OUTLINED_FUNCTION_200(v136);

          v180 = 0xE100000000000000;
          v181 = 63;
        }

        MEMORY[0x23192E060](v181, v180);

        *&v331 = v142;
        v24 = &qword_23147A7E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
        OUTLINED_FUNCTION_7_7();
        sub_2313ED944(&qword_280C3CEB8, &qword_27DD4DAA0, &qword_23147A7E8, v182);
        OUTLINED_FUNCTION_155();
        sub_231477478();
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(&qword_280C3C8D8, &unk_27DD4D890, qword_23147F7F0, v183);
        OUTLINED_FUNCTION_105_0();
      }

      sub_2314771B8();
      v194 = v312 + 1;

      OUTLINED_FUNCTION_37_1();
      v195(v92, v305);
      v196 = OUTLINED_FUNCTION_33_1();
      v197(v196, v158);
      v198 = OUTLINED_FUNCTION_33_1();
      v199(v198, &qword_27DD4DAA0, v158);
      v134 = v194;
      v101 = v307;
    }

    while (v194 != v304);
  }

  v24 = v295;
  if (!*(v295 + 16))
  {
    OUTLINED_FUNCTION_131_0();
    v221();
    goto LABEL_113;
  }

  v200 = qword_27DD4D258;

  if (v200 != -1)
  {
LABEL_121:
    swift_once();
  }

  __swift_project_value_buffer(v291, qword_27DD5AC80);
  OUTLINED_FUNCTION_60_0(&qword_27DD4E150);
  OUTLINED_FUNCTION_138_0();
  sub_2314773D8();
  OUTLINED_FUNCTION_72_0(&qword_27DD4E158, &unk_27DD4D890, qword_23147F7F0);
  OUTLINED_FUNCTION_49_0();
  sub_2313ED944(v201, v202, v203, v204);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_126_0();
  sub_2314771D8();
  OUTLINED_FUNCTION_13_1();
  v205(v92);
  OUTLINED_FUNCTION_139();
  v206 = OUTLINED_FUNCTION_154();
  v316 = v207;
  v315 = v208;
  v208(v206);
  OUTLINED_FUNCTION_131_0();
  v209();
  v210 = *(v24 + 16);
  v320 = v210 - 1;
  if (v210 != 1)
  {
    if (v210 + 0x4000000000000000 >= 0)
    {
      sub_231477378();
      v222 = 0;
      OUTLINED_FUNCTION_100_0();
      v319[1] = v223;
      OUTLINED_FUNCTION_100_0();
      v318 = v224;
      OUTLINED_FUNCTION_100_0();
      v317 = v225;
      v226 = v24 + 72;
      v322 = xmmword_231479580;
      v92 = MEMORY[0x277D0B7E8];
      v227 = v294;
      v319[0] = v283 + 8;
      while (1)
      {
        v228 = *(v24 + 16);
        if (v222 == v228)
        {
          break;
        }

        if (v222 >= v228)
        {
          goto LABEL_115;
        }

        v321 = v222;
        OUTLINED_FUNCTION_115_0();
        OUTLINED_FUNCTION_105_0();
        sub_231423254();
        sub_23144467C(&v331);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
        OUTLINED_FUNCTION_41_1();
        v229 = swift_allocObject();
        OUTLINED_FUNCTION_68(v229);
        v230 = sub_2314776A8();
        v229[3].n128_u64[1] = v230;
        v229[4].n128_u64[0] = v92;
        __swift_allocate_boxed_opaque_existential_1(&v229[2]);
        sub_231477698();
        OUTLINED_FUNCTION_2_10();
        sub_2313ED944(&qword_27DD4E168, &qword_27DD4DA78, &qword_23147CDE0, v231);
        OUTLINED_FUNCTION_109_0();
        sub_2314773D8();

        OUTLINED_FUNCTION_41_1();
        v232 = swift_allocObject();
        OUTLINED_FUNCTION_68(v232);
        if (qword_280C3BD20 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v230, qword_280C3D868);
        v232[3].n128_u64[1] = v230;
        v232[4].n128_u64[0] = v92;
        __swift_allocate_boxed_opaque_existential_1(&v232[2]);
        OUTLINED_FUNCTION_38_1();
        v234 = *(v233 + 16);
        v234();
        sub_231444824();
        OUTLINED_FUNCTION_139();
        sub_231476F08();

        OUTLINED_FUNCTION_107_0();
        sub_2314774D8();
        if (qword_280C3BD28 != -1)
        {
          swift_once();
        }

        v235 = __swift_project_value_buffer(v230, qword_280C3D880);
        v328 = v230;
        v329 = MEMORY[0x277D0B7F0];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v327);
        (v234)(boxed_opaque_existential_1, v235, v230);
        v325 = sub_2314770D8();
        v326 = MEMORY[0x277D0B730];
        __swift_allocate_boxed_opaque_existential_1(&v323);
        OUTLINED_FUNCTION_130_0();
        sub_231477208();
        OUTLINED_FUNCTION_37_1();
        v237 = OUTLINED_FUNCTION_139_0();
        v238(v237);
        __swift_destroy_boxed_opaque_existential_0(v327);
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(&qword_27DD4E170, &qword_27DD4E120, &qword_23147CDB0, v239);
        OUTLINED_FUNCTION_107_0();
        v240 = v298;
        sub_2314771C8();
        v241 = *v319[0];
        (*v319[0])(v227, v240);
        __swift_destroy_boxed_opaque_existential_0(&v323);
        OUTLINED_FUNCTION_55_1();
        sub_2313ED944(&qword_27DD4E178, &qword_27DD4E120, &qword_23147CDB0, v242);
        sub_2314773A8();
        OUTLINED_FUNCTION_87();
        v243 = v321;
        if (v321 < v244)
        {
          OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_99_0();
          sub_231477398();
          OUTLINED_FUNCTION_37_1();
          v245(v240);
        }

        v241(v297, v298);
        v246 = *v318;
        v227 = v294;
        v247 = v299;
        (*v318)(v294, v299);
        v246(v296, v247);
        v226 += 48;
        v222 = v243 + 1;
        v24 = v295;
        v92 = MEMORY[0x277D0B7E8];
      }

      OUTLINED_FUNCTION_92_0();
      (*(v248 + 16))();
      OUTLINED_FUNCTION_195();
      sub_231477658();
      sub_231477378();
      OUTLINED_FUNCTION_132();
      sub_231477368();
      sub_231477398();
      OUTLINED_FUNCTION_90_0();
      sub_231477368();
      v325 = v293;
      v326 = MEMORY[0x277D0B7D0];
      __swift_allocate_boxed_opaque_existential_1(&v323);
      sub_231477658();
      OUTLINED_FUNCTION_0_13();
      sub_2313ED944(v249, v250, v251, v252);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_109_0();
      OUTLINED_FUNCTION_126_0();
      sub_2314771C8();
      v253 = OUTLINED_FUNCTION_33_1();
      v254(v253);
      v255 = OUTLINED_FUNCTION_139_0();
      v256(v255);
      OUTLINED_FUNCTION_134();
      goto LABEL_112;
    }

    goto LABEL_123;
  }

  v211 = *(v24 + 16);
  if ((v285 & 0x100000000) == 0)
  {
    if (v211)
    {
      v257 = *(v24 + 48);
      v331 = *(v24 + 32);
      v332 = v257;
      OUTLINED_FUNCTION_61_1(*(v24 + 64));
      sub_231423254();
      sub_23144467C(&v331);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
      OUTLINED_FUNCTION_41_1();
      v258 = swift_allocObject();
      OUTLINED_FUNCTION_110_0(v258, xmmword_231479580);
      v259 = sub_2314776A8();
      v260 = MEMORY[0x277D0B7E8];
      v258[3].n128_u64[1] = v259;
      v258[4].n128_u64[0] = v260;
      __swift_allocate_boxed_opaque_existential_1(&v258[2]);
      sub_231477698();
      OUTLINED_FUNCTION_2_10();
      sub_2313ED944(v261, v262, v263, v264);
      OUTLINED_FUNCTION_175();
      sub_2314773D8();

      sub_2314774D8();
      if (qword_27DD4D270 == -1)
      {
LABEL_111:
        v265 = sub_2314770D8();
        __swift_project_value_buffer(v265, qword_27DD5ACC8);
        v328 = v265;
        v329 = MEMORY[0x277D0B728];
        __swift_allocate_boxed_opaque_existential_1(v327);
        OUTLINED_FUNCTION_38_1();
        (*(v266 + 16))();
        v325 = v265;
        v326 = MEMORY[0x277D0B730];
        __swift_allocate_boxed_opaque_existential_1(&v323);
        sub_231477208();
        OUTLINED_FUNCTION_13_1();
        v267 = OUTLINED_FUNCTION_16_5();
        v268(v267);
        __swift_destroy_boxed_opaque_existential_0(v327);
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(v269, v270, v271, v272);
        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_126_0();
        sub_2314771C8();
        v273 = *(v287 + 8);
        v274 = OUTLINED_FUNCTION_144();
        v273(v274);
        v275 = OUTLINED_FUNCTION_84_0();
        v273(v275);
        OUTLINED_FUNCTION_154();
LABEL_112:
        OUTLINED_FUNCTION_183();
        v276();
        __swift_destroy_boxed_opaque_existential_0(&v323);
        goto LABEL_113;
      }

LABEL_127:
      swift_once();
      goto LABEL_111;
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (!v211)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v212 = *(v24 + 48);
  v331 = *(v24 + 32);
  v332 = v212;
  OUTLINED_FUNCTION_61_1(*(v24 + 64));
  OUTLINED_FUNCTION_194();
  sub_23143BEA8(*(v213 - 256), v214, 0xE800000000000000, v215, v216, v217, v218, v219, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
  sub_23144467C(&v331);
  OUTLINED_FUNCTION_183();
  v220();
LABEL_113:
  OUTLINED_FUNCTION_16();
}