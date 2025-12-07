uint64_t sub_19378C498(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19378C4F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_19378C568()
{
  OUTLINED_FUNCTION_52_21();
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v7 = v1 == v6 && v2 == 0xE400000000000000;
  if (v7 || (v8 = v2, v9 = v1, v33 = v0[2], v34 = *(v0 + 24), v10 = *(v0 + 25), v26 = *(v0 + 13), v31 = *(v0 + 7), v32 = *(v0 + 32), v29 = v0[5], v30 = *(v0 + 48), v27 = v0[7], v28 = *(v0 + 64), OUTLINED_FUNCTION_15_10(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v13 = v9 == (v12 | 1) && v11 == v8;
  if (v13 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v14 = v9 == 0x6361466F746F6870 && v8 == 0xEE00746E756F4365;
  if (v14 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v32)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v17 = v9 == v16 && v15 == v8;
  if (v17 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v30)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v20 = v9 == v19 + 8 && v18 == v8;
  if (v20 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v28)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v21 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
  v23 = v22;
  *v22 = v9;
  v22[1] = v8;
  v22[5] = &type metadata for MomentsEventData.EventBundle.Resource;
  v24 = swift_allocObject();
  v23[2] = v24;
  *(v24 + 16) = v3;
  *(v24 + 24) = v4;
  *(v24 + 25) = v5;
  v25 = OUTLINED_FUNCTION_39_9(v24);
  *(v25 + 32) = v33;
  *(v25 + 40) = v34;
  *(v25 + 41) = v10;
  *(v25 + 42) = v26;
  *(v25 + 44) = v31;
  *(v25 + 48) = v32;
  *(v25 + 52) = *(v0 + 9);
  *(v25 + 49) = *(v0 + 33);
  *(v25 + 56) = v29;
  *(v25 + 64) = v30;
  *(v25 + 65) = *(v0 + 49);
  *(v25 + 68) = *(v0 + 13);
  *(v25 + 72) = v27;
  *(v25 + 80) = v28;
  OUTLINED_FUNCTION_163_6();
}

void sub_19378C874(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  OUTLINED_FUNCTION_38();
  if (v5 != 0xD000000000000013 || v6 != a2)
  {
    v8 = v5;
    v9 = *(v2 + 8);
    v18 = v2[2];
    v10 = *(v2 + 24);
    if ((OUTLINED_FUNCTION_0_32(0xD000000000000013, v6) & 1) == 0)
    {
      v11 = v8 == 0x73726550454D7369 && a2 == 0xEA00000000006E6FLL;
      if (v11 || (OUTLINED_FUNCTION_0_32(0x73726550454D7369, 0xEA00000000006E6FLL) & 1) != 0)
      {
        if (v9 != 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v13 = v8 == 0xD000000000000011 && v12 == a2;
        if (!v13 && (OUTLINED_FUNCTION_0_32(0xD000000000000011, v12) & 1) == 0)
        {
          v14 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
          v16 = v15;
          *v15 = v8;
          v15[1] = a2;
          v15[5] = &type metadata for MomentsEventData.EventBundle.Person;
          v17 = swift_allocObject();
          v16[2] = v17;
          *(v17 + 16) = v4;
          *(v17 + 24) = v9;
          *(v17 + 32) = v18;
          *(v17 + 40) = v10;
          *(v16 + 48) = 1;
          swift_willThrow();

          goto LABEL_8;
        }

        if ((v10 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_29();
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42B30, &qword_193995D38);
LABEL_7:
  sub_1934948FC();
LABEL_8:
  OUTLINED_FUNCTION_54_0();
}

void sub_19378CA58(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 9);
  if (a1 != 0xD000000000000015 || 0x8000000193A374F0 != a2)
  {
    v11 = v3[2];
    v12 = *(v3 + 24);
    if ((sub_19393CA30() & 1) == 0)
    {
      v13 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
      if (!v13 && (sub_19393CA30() & 1) == 0)
      {
        v14 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
        v16 = v15;
        *v15 = a1;
        v15[1] = a2;
        v15[5] = &type metadata for MomentsEventData.EventBundle.Person.PersonRelationship;
        v17 = swift_allocObject();
        v16[2] = v17;
        *(v17 + 16) = v6;
        *(v17 + 24) = v7;
        *(v17 + 25) = v8;
        *(v17 + 32) = v11;
        *(v17 + 40) = v12;
        *(v16 + 48) = 1;
        swift_willThrow();

        goto LABEL_9;
      }

      if (v12)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  *a3 = 0u;
  a3[1] = 0u;
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_19378CC00(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 9);
  OUTLINED_FUNCTION_38();
  v9 = v7 == 0xD000000000000017 && v8 == a2;
  if (v9 || (v10 = v7, v42 = v2[2], v43 = *(v2 + 24), v44 = *(v2 + 25), v39 = v2[4], v40 = *(v2 + 40), v41 = *(v2 + 41), v37 = v2[6], v38 = *(v2 + 56), v35 = v2[8], v36 = *(v2 + 72), v33 = v2[10], v34 = *(v2 + 88), v31 = v2[12], v32 = *(v2 + 104), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v6)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v12 = v10 == 0xD000000000000023 && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v44)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v14 = v10 == 0xD000000000000012 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v41)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v16 = v10 == 0xD000000000000013 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v38)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v18 = v10 == 0xD000000000000013 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v36)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v20 = v10 == 0xD000000000000015 && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v34)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v23 = v10 == v22 && v21 == a2;
  if (v23 || (OUTLINED_FUNCTION_6_13(), (sub_19393CA30() & 1) != 0))
  {
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v24 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v24);
  v26 = v25;
  *v25 = v10;
  v25[1] = a2;
  v25[5] = &type metadata for MomentsEventData.EventBundle.Place;
  v27 = swift_allocObject();
  v26[2] = v27;
  *(v27 + 16) = v4;
  *(v27 + 24) = v5;
  *(v27 + 25) = v6;
  v28 = OUTLINED_FUNCTION_39_9(v27);
  *(v28 + 32) = v42;
  *(v28 + 40) = v43;
  *(v28 + 41) = v44;
  *(v28 + 46) = *(v2 + 15);
  *(v28 + 42) = *(v2 + 26);
  *(v28 + 48) = v39;
  *(v28 + 56) = v40;
  *(v28 + 57) = v41;
  v29 = *(v2 + 42);
  *(v28 + 62) = *(v2 + 23);
  *(v28 + 58) = v29;
  *(v28 + 64) = v37;
  *(v28 + 72) = v38;
  *(v28 + 73) = *(v2 + 57);
  *(v28 + 76) = *(v2 + 15);
  *(v28 + 80) = v35;
  *(v28 + 88) = v36;
  *(v28 + 89) = *(v2 + 73);
  *(v28 + 92) = *(v2 + 19);
  *(v28 + 96) = v33;
  *(v28 + 104) = v34;
  v30 = *(v2 + 89);
  *(v28 + 108) = *(v2 + 23);
  *(v28 + 105) = v30;
  *(v28 + 112) = v31;
  *(v28 + 120) = v32;
  OUTLINED_FUNCTION_163_6();
}

void sub_19378CFEC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_43_21();
  v8 = *v2;
  v9 = a1 == v5 && v6 == v7;
  if (v9 || (v10 = v6, v11 = v2[1], v12 = v2[2], v13 = v2[3], v75 = v2[4], v73 = v2[6], v74 = v2[5], v71 = v2[8], v72 = v2[7], v69 = v2[10], v70 = v2[9], v67 = v2[12], v68 = v2[11], v65 = v2[14], v66 = v2[13], v64 = v2[15], v14 = v2[16], OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v8 == 2)
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v17 = a1 == v16 + 13 && v15 == v10;
  if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v11 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v20 = a1 == v19 + 16 && v18 == v10;
  if (v20 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v12 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v23 = a1 == v22 && v21 == v10;
  if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v13 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v26 = a1 == v25 && v24 == v10;
  if (v26 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v27 = v75;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_2_77();
  v30 = a1 == v29 + 2 && v28 == v10;
  if (v30 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v27 = v74;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_38();
  v33 = a1 == v32 && v31 == v10;
  if (v33 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    v27 = v73;
LABEL_36:
    if (v27 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v36 = a1 == v35 + 6 && v34 == v10;
  if (v36 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v72 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v39 = a1 == v38 + 10 && v37 == v10;
  if (v39 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v71 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v42 = a1 == v41 && v40 == v10;
  if (v42 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v70 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v45 = a1 == v44 + 11 && v43 == v10;
  if (v45 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v69 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v48 = a1 == v47 + 20 && v46 == v10;
  if (v48 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v68 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v51 = a1 == v50 + 19 && v49 == v10;
  if (v51 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v67 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v54 = a1 == v53 + 23 && v52 == v10;
  if (v54 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v66 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_77();
  v57 = a1 == v56 + 21 && v55 == v10;
  if (v57 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v65 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_55_16();
  v59 = v9 && v58 == v10;
  if (v59 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v64 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_55_16();
  v61 = v9 && v60 == v10;
  if (v61 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
  {
    if (v14 == 2)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v62 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v62);
  *v63 = a1;
  *(v63 + 8) = v10;
  *(v63 + 40) = &type metadata for MomentsEventData.EventBundle.ClusterMetadata;
  *(v63 + 16) = v8;
  *(v63 + 17) = v11;
  *(v63 + 18) = v12;
  *(v63 + 19) = v13;
  *(v63 + 20) = v75;
  *(v63 + 21) = v74;
  *(v63 + 22) = v73;
  *(v63 + 23) = v72;
  *(v63 + 24) = v71;
  *(v63 + 25) = v70;
  *(v63 + 26) = v69;
  *(v63 + 27) = v68;
  *(v63 + 28) = v67;
  *(v63 + 29) = v66;
  *(v63 + 30) = v65;
  *(v63 + 31) = v64;
  *(v63 + 32) = v14;
  *(v63 + 48) = 1;
  swift_willThrow();
}

void sub_19378D588(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_6();
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v24 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = a1 == 0x66696E6769537369 && a2 == 0xED0000746E616369;
  if (v16 || (OUTLINED_FUNCTION_67(0x66696E6769537369, 0xED0000746E616369) & 1) != 0)
  {
    if (*v3 == 2)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  v17 = a1 == 0x537265696C74756FLL && a2 == 0xEC00000065726F63;
  if (v17 || (OUTLINED_FUNCTION_67(0x537265696C74756FLL, 0xEC00000065726F63) & 1) != 0)
  {
    if (v3[16])
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v18 = a1 == 0x4464657461647075 && a2 == 0xEB00000000657461;
  if (v18 || (OUTLINED_FUNCTION_67(0x4464657461647075, 0xEB00000000657461) & 1) != 0)
  {
    v19 = type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0);
    sub_1934486F8(&v3[*(v19 + 24)], v4, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_6_3(v4, 1, v10);
    if (v16)
    {
      sub_19344E6DC(v4, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_7;
    }

    (*(v24 + 32))(v15, v4, v10);
    sub_1934948FC();
    (*(v24 + 8))(v15, v10);
  }

  else
  {
    v20 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    v22 = v21;
    *v21 = a1;
    v21[1] = a2;
    v21[5] = type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v22 + 2);
    sub_19378D884(v3, boxed_opaque_existential_1Tm, type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata);
    *(v22 + 48) = 1;
    swift_willThrow();
  }
}

uint64_t sub_19378D884(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_19378D8FC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  memcpy(__dst, v1, 0xDAuLL);
  OUTLINED_FUNCTION_38();
  v9 = v5 == 0xD00000000000001ALL && v8 == v3;
  if (!v9)
  {
    OUTLINED_FUNCTION_0_14();
    if ((sub_19393CA30() & 1) == 0)
    {
      v12 = v5 == OUTLINED_FUNCTION_41_24() && v3 == v11;
      if (v12 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if ((__dst[1] & 0x100000000) != 0)
        {
          goto LABEL_7;
        }

        v10 = __dst[1];
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_38();
      v14 = v5 == 0xD000000000000016 && v13 == v3;
      if (v14 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if ((__dst[2] & 0x100000000) != 0)
        {
          goto LABEL_7;
        }

        v15 = __dst[2];
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_38();
      v17 = v5 == 0xD00000000000001ELL && v16 == v3;
      if (v17 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        if ((__dst[3] & 0x100000000) != 0)
        {
          goto LABEL_7;
        }

        v15 = __dst[3];
LABEL_26:
        LODWORD(v83[0]) = v15;
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_38();
      v19 = v5 == 0xD000000000000018 && v18 == v3;
      if (v19 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
      {
        v20 = BYTE5(__dst[3]);
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v22 = v5 == 0xD000000000000013 && v21 == v3;
        if (v22 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
        {
          v20 = BYTE6(__dst[3]);
        }

        else
        {
          v23 = v5 == 0x796C696D61467369 && v3 == 0xEF746361746E6F43;
          if (v23 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
          {
            v20 = HIBYTE(__dst[3]);
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v25 = v5 == 0xD000000000000011 && v24 == v3;
            if (v25 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
            {
              v20 = LOBYTE(__dst[4]);
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v27 = v5 == 0xD000000000000013 && v26 == v3;
              if (v27 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
              {
                v20 = BYTE1(__dst[4]);
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v29 = v5 == 0xD000000000000013 && v28 == v3;
                if (v29 || (OUTLINED_FUNCTION_66_3(), OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                {
                  v20 = BYTE2(__dst[4]);
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v31 = v5 == 0xD000000000000016 && v30 == v3;
                  if (v31 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[5])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[4]);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_38();
                  v33 = v5 == 0xD00000000000001ALL && v32 == v3;
                  if (v33 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[6])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[5]);
                    goto LABEL_9;
                  }

                  v34 = v5 == 0x6F43656C706F6570 && v3 == 0xEE0078614D746E75;
                  if (v34 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[7])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[6]);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_38();
                  v36 = v5 == 0xD000000000000018 && v35 == v3;
                  if (v36 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[8])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[7]);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_38();
                  v38 = v5 == 0xD00000000000001CLL && v37 == v3;
                  if (v38 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[9])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[8]);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_38();
                  v40 = v5 == 0xD000000000000010 && v39 == v3;
                  if (v40 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[10])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[9]);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_38();
                  v42 = v5 == 0xD000000000000022 && v41 == v3;
                  if (v42 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[11])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[10]);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_38();
                  v44 = v5 == 0xD000000000000026 && v43 == v3;
                  if (v44 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[12])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[11]);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_38();
                  v46 = v5 == 0xD000000000000012 && v45 == v3;
                  if (v46 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[13])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[12]);
                    goto LABEL_9;
                  }

                  v47 = v5 == 0x6E654C616964656DLL && v3 == 0xEB00000000687467;
                  if (v47 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                  {
                    if (__dst[14])
                    {
                      goto LABEL_7;
                    }

                    v10 = HIDWORD(__dst[13]);
                    goto LABEL_9;
                  }

                  OUTLINED_FUNCTION_38();
                  if (v5 != 0xD000000000000013 || v48 != v3)
                  {
                    OUTLINED_FUNCTION_66_3();
                    OUTLINED_FUNCTION_0_14();
                    if ((sub_19393CA30() & 1) == 0)
                    {
                      OUTLINED_FUNCTION_38();
                      OUTLINED_FUNCTION_55_16();
                      v51 = v9 && v50 == v3;
                      if (v51 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[15])
                        {
                          goto LABEL_7;
                        }

                        v10 = HIDWORD(__dst[14]);
                        goto LABEL_9;
                      }

                      OUTLINED_FUNCTION_38();
                      v53 = v5 == 0xD000000000000019 && v52 == v3;
                      if (v53 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[16])
                        {
                          goto LABEL_7;
                        }

                        v10 = HIDWORD(__dst[15]);
                        goto LABEL_9;
                      }

                      v55 = v5 == (OUTLINED_FUNCTION_46_23() & 0xFFFFFFFFFFFFLL | 0x4474000000000000) && v3 == v54;
                      if (v55 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[17])
                        {
                          goto LABEL_7;
                        }

                        v10 = HIDWORD(__dst[16]);
                        goto LABEL_9;
                      }

                      OUTLINED_FUNCTION_38();
                      v57 = v5 == 0xD000000000000016 && v56 == v3;
                      if (v57 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[18])
                        {
                          goto LABEL_7;
                        }

                        v10 = HIDWORD(__dst[17]);
                        goto LABEL_9;
                      }

                      v58 = v5 == 0x7275447469736976 && v3 == 0xED00006E6F697461;
                      if (v58 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[19])
                        {
                          goto LABEL_7;
                        }

                        v10 = HIDWORD(__dst[18]);
                        goto LABEL_9;
                      }

                      OUTLINED_FUNCTION_38();
                      v60 = v5 == 0xD00000000000001ALL && v59 == v3;
                      if (v60 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[20])
                        {
                          goto LABEL_7;
                        }

                        v10 = HIDWORD(__dst[19]);
                        goto LABEL_9;
                      }

                      OUTLINED_FUNCTION_38();
                      v62 = v5 == 0xD000000000000010 && v61 == v3;
                      if (v62 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        if (__dst[21])
                        {
                          goto LABEL_7;
                        }

                        v10 = HIDWORD(__dst[20]);
                        goto LABEL_9;
                      }

                      OUTLINED_FUNCTION_38();
                      OUTLINED_FUNCTION_55_16();
                      v64 = v9 && v63 == v3;
                      if (v64 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                      {
                        v83[0] = __dst[22];
                        v65 = &unk_1EAE42B58;
                        v66 = &unk_193995D60;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v68 = v5 == 0xD000000000000011 && v67 == v3;
                        if (v68 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                        {
                          v83[0] = __dst[23];
                          v65 = &unk_1EAE42B50;
                          v66 = &unk_193995D58;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          v70 = v5 == 0xD00000000000001ELL && v69 == v3;
                          if (v70 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                          {
                            v83[0] = __dst[24];
                            v65 = &unk_1EAE42B48;
                            v66 = &unk_193995D50;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_38();
                            v72 = v5 == 0xD000000000000021 && v71 == v3;
                            if (v72 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                            {
                              v83[0] = __dst[25];
                              v65 = &unk_1EAE42B40;
                              v66 = &unk_193995D48;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              if (v5 != 0xD000000000000018 || v73 != v3)
                              {
                                OUTLINED_FUNCTION_0_14();
                                if ((sub_19393CA30() & 1) == 0)
                                {
                                  OUTLINED_FUNCTION_38();
                                  v76 = v5 == 0xD000000000000018 && v75 == v3;
                                  if (v76 || (OUTLINED_FUNCTION_0_14(), (sub_19393CA30() & 1) != 0))
                                  {
                                    v20 = LOBYTE(__dst[27]);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_38();
                                    if (v5 != 0xD00000000000001DLL || v77 != v3)
                                    {
                                      OUTLINED_FUNCTION_0_14();
                                      if ((sub_19393CA30() & 1) == 0)
                                      {
                                        v79 = sub_19349AB64();
                                        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v79);
                                        v81 = v80;
                                        *v80 = v5;
                                        v80[1] = v3;
                                        v80[5] = &type metadata for MomentsEventData.EventBundle.MetadataForRank;
                                        v82 = swift_allocObject();
                                        v81[2] = v82;
                                        memcpy((v82 + 16), __dst, 0xDAuLL);
                                        *(v81 + 48) = 1;
                                        swift_willThrow();

                                        sub_19378E230(__dst, v83);
                                        goto LABEL_11;
                                      }
                                    }

                                    v20 = BYTE1(__dst[27]);
                                  }

                                  goto LABEL_40;
                                }
                              }

                              v83[0] = __dst[26];
                              v65 = &unk_1EAE42B38;
                              v66 = &unk_193995D40;
                            }
                          }
                        }
                      }

                      __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
                      goto LABEL_10;
                    }
                  }

                  v20 = BYTE1(__dst[14]);
                }
              }
            }
          }
        }
      }

LABEL_40:
      if (v20 == 2)
      {
        goto LABEL_7;
      }

      LOBYTE(v83[0]) = v20 & 1;
LABEL_10:
      sub_1934948FC();
      goto LABEL_11;
    }
  }

  if ((__dst[0] & 0x100000000) == 0)
  {
    v10 = __dst[0];
LABEL_9:
    LODWORD(v83[0]) = v10;
    goto LABEL_10;
  }

LABEL_7:
  *v7 = 0u;
  v7[1] = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

uint64_t MomentsEventData.EventProviderType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x68746C616548;
  switch(*v0)
  {
    case 1:
      result = 0x6F746F6850;
      break;
    case 2:
      result = 0x76697463616F7250;
      break;
    case 3:
      result = 0x656E6974756F52;
      break;
    case 4:
      result = OUTLINED_FUNCTION_199_3(0x6E4174736F50);
      break;
    case 5:
      result = 17488;
      break;
    case 6:
      result = 0x6E6F69746F4DLL;
      break;
    case 7:
      result = OUTLINED_FUNCTION_198_2(1802465090);
      break;
    case 8:
      result = OUTLINED_FUNCTION_176_4();
      break;
    case 9:
      result = 0x746C50746E49;
      break;
    case 0xALL:
      result = 5592915;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.EventProviderType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_304_2();
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_21_38(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_224_2(1953458256);
      v9 = v4 && v0 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_15_14(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = v1 == 0x76697463616F7250 && v0 == 0xE900000000000065;
        if (v10 || (OUTLINED_FUNCTION_30_22(0x76697463616F7250, 101) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = v1 == 0x656E6974756F52 && v0 == 0xE700000000000000;
          if (v11 || (OUTLINED_FUNCTION_22_7(0x656E6974756F52) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = OUTLINED_FUNCTION_223_3(0x6E4174736F50);
            v14 = v4 && v0 == v13;
            if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v15 = v1 == 17488 && v0 == 0xE200000000000000;
              if (v15 || (OUTLINED_FUNCTION_0_9(17488, 0xE200000000000000) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v16 = v1 == 0x6E6F69746F4DLL && v0 == 0xE600000000000000;
                if (v16 || (OUTLINED_FUNCTION_21_38(0x6E6F69746F4DLL) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v17 = OUTLINED_FUNCTION_307_1(1802465090);
                  v18 = v4 && v0 == 0xE500000000000000;
                  if (v18 || (OUTLINED_FUNCTION_15_14(v17) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v20 = v1 == OUTLINED_FUNCTION_176_4() && v0 == v19;
                    if (v20 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v21 = v1 == 0x746C50746E49 && v0 == 0xE600000000000000;
                      if (v21 || (OUTLINED_FUNCTION_21_38(0x746C50746E49) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else if (v1 == 5592915 && v0 == 0xE300000000000000)
                      {

                        OUTLINED_FUNCTION_155_0();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_63_16();
                        OUTLINED_FUNCTION_89();
                        v5 = 10;
                        if ((v1 & 1) == 0)
                        {
                          v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.EventCategoryType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.EventCategoryType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v138 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v138, v139, v140, v141, &qword_1EAE42E80, &qword_193997150);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v142 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v142, v143, v144, v145, &qword_1EAE42E80, &qword_193997150);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v146, v147, v148, v149, v150, v151);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v152 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v152, v153, v154, v155, &qword_1EAE42E80, &qword_193997150);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v156 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v156, v157, v158, v159, &qword_1EAE42E80, &qword_193997150);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v160 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v160, v161, v162, v163, &qword_1EAE42E80, &qword_193997150);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v164 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v164, v165, v166, v167, &qword_1EAE42E80, &qword_193997150);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v168 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v168, v169, v170, v171, &qword_1EAE42E80, &qword_193997150);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v172 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v172, v173, v174, v175, &qword_1EAE42E80, &qword_193997150);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v176 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v176, v177, v178, v179, &qword_1EAE42E80, &qword_193997150);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v180 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v180, v181, v182, v183, &qword_1EAE42E80, &qword_193997150);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v184 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v184, v185, v186, v187, &qword_1EAE42E80, &qword_193997150);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v188 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v188, v189, v190, v191, &qword_1EAE42E80, &qword_193997150);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v192 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v192, v193, v194, v195, &qword_1EAE42E80, &qword_193997150);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v196 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v196, v197, v198, v199, &qword_1EAE42E80, &qword_193997150);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v200 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v200, v201, v202, v203, &qword_1EAE42E80, &qword_193997150);
    v88 = v85;
  }

  OUTLINED_FUNCTION_16_41(v85, v86, v87, v88);
  if (!(v18 ^ v19 | v12))
  {
    v204 = OUTLINED_FUNCTION_39(v94);
    v90 = OUTLINED_FUNCTION_85(v204, v205, v206, v207, &qword_1EAE42E80, &qword_193997150);
    v93 = v90;
  }

  OUTLINED_FUNCTION_17_41(v90, v91, v92, v93);
  if (!(v18 ^ v19 | v12))
  {
    v208 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v208, v209, v210, v211, &qword_1EAE42E80, &qword_193997150);
    v98 = v95;
  }

  OUTLINED_FUNCTION_19_54(v95, v96, v97, v98);
  if (!(v18 ^ v19 | v12))
  {
    v212 = OUTLINED_FUNCTION_39(v104);
    v100 = OUTLINED_FUNCTION_85(v212, v213, v214, v215, &qword_1EAE42E80, &qword_193997150);
    v103 = v100;
  }

  OUTLINED_FUNCTION_20_47(v100, v101, v102, v103);
  if (!(v18 ^ v19 | v12))
  {
    v216 = OUTLINED_FUNCTION_39(v109);
    v105 = OUTLINED_FUNCTION_84_2(v216, v217, v218, v219, &qword_1EAE42E80, &qword_193997150);
    v108 = v105;
  }

  OUTLINED_FUNCTION_25_36(v105, v106, v107, v108);
  if (!(v18 ^ v19 | v12))
  {
    v220 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_85(v220, v221, v222, v223, &qword_1EAE42E80, &qword_193997150);
    v113 = v110;
  }

  OUTLINED_FUNCTION_22_38(v110, v111, v112, v113);
  if (!(v18 ^ v19 | v12))
  {
    v224 = OUTLINED_FUNCTION_39(v119);
    v115 = OUTLINED_FUNCTION_84_2(v224, v225, v226, v227, &qword_1EAE42E80, &qword_193997150);
    v118 = v115;
  }

  OUTLINED_FUNCTION_24_46(v115, v116, v117, v118);
  if (!(v18 ^ v19 | v12))
  {
    v228 = OUTLINED_FUNCTION_39(v124);
    v120 = OUTLINED_FUNCTION_85(v228, v229, v230, v231, &qword_1EAE42E80, &qword_193997150);
    v123 = v120;
  }

  OUTLINED_FUNCTION_21_45(v120, v121, v122, v123);
  if (!(v18 ^ v19 | v12))
  {
    v232 = OUTLINED_FUNCTION_39(v129);
    v125 = OUTLINED_FUNCTION_84_2(v232, v233, v234, v235, &qword_1EAE42E80, &qword_193997150);
    v128 = v125;
  }

  OUTLINED_FUNCTION_23_44(v125, v126, v127, v128);
  if (!(v18 ^ v19 | v12))
  {
    v236 = OUTLINED_FUNCTION_39(v134);
    v130 = OUTLINED_FUNCTION_85(v236, v237, v238, v239, &qword_1EAE42E80, &qword_193997150);
    v133 = v130;
  }

  OUTLINED_FUNCTION_47_5(v130, v131, v132, v133);
  return OUTLINED_FUNCTION_89_3(v135, v136);
}

void MomentsEventData.EventCategoryType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_111_14(0x756F6B726F57);
        break;
      case 2:
        OUTLINED_FUNCTION_241_3();
        break;
      case 3:
        OUTLINED_FUNCTION_281_2();
        break;
      case 4:
      case 7:
        OUTLINED_FUNCTION_167_7();
        break;
      case 5:
      case 8:
      case 9:
        OUTLINED_FUNCTION_38();
        break;
      case 6:
        OUTLINED_FUNCTION_188_5();
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_111_14(0x6E6576454C4ELL);
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_242_4();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_277_3();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_191_4(0x6D69786F7250);
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_82_16();
        break;
      case 0x10:
        OUTLINED_FUNCTION_42_30();
        break;
      case 0x11:
        OUTLINED_FUNCTION_239_2();
        break;
      case 0x12:
        OUTLINED_FUNCTION_198_2(1802465090);
        break;
      case 0x13:
        OUTLINED_FUNCTION_176_4();
        break;
      case 0x14:
        OUTLINED_FUNCTION_257_1(0x456E6F436F53);
        break;
      case 0x15:
      case 0x16:
        OUTLINED_FUNCTION_144();
        break;
      case 0x17:
        OUTLINED_FUNCTION_66_23();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.EventCategoryType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_134_13();
    v8 = v5 && v0 == 0xE500000000000000;
    if (v8 || (OUTLINED_FUNCTION_15_14(v7) & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_70_14();
      v10 = v5 && v0 == 0xE700000000000000;
      if (v10 || (OUTLINED_FUNCTION_22_7(v9) & 1) != 0)
      {

        v6 = 1;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_241_3();
        v13 = v1 == v11 && v0 == v12;
        if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v14 = OUTLINED_FUNCTION_281_2();
          v16 = v1 == v14 && v0 == v15;
          if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_153_10();
            v17 = v5 && v0 == v2;
            if (v17 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v20 = v1 == v19 - 1 && v18 == v0;
              if (v20 || (OUTLINED_FUNCTION_0_9(v19 - 1, v18) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v21 = OUTLINED_FUNCTION_295_3();
                v22 = v5 && v0 == 0xE500000000000000;
                if (v22 || (OUTLINED_FUNCTION_15_14(v21) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v23 = v1 == 0x76456C6576617254 && v0 == v2;
                  if (v23 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_211_1();
                    v25 = v5 && v24 == v0;
                    if (v25 || (OUTLINED_FUNCTION_25_7(18, v24) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_211_1();
                      v27 = v5 && v26 == v0;
                      if (v27 || (OUTLINED_FUNCTION_25_7(18, v26) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v28 = v1 == 0x7275746375727453 && v0 == 0xEF746E6576456465;
                        if (v28 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v29 = OUTLINED_FUNCTION_106_16(0x6E6576454C4ELL);
                          v30 = v5 && v0 == 0xE700000000000000;
                          if (v30 || (OUTLINED_FUNCTION_22_7(v29) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v31 = OUTLINED_FUNCTION_242_4();
                            v33 = v1 == v31 && v0 == v32;
                            if (v33 || (OUTLINED_FUNCTION_0_9(v31, v32) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v34 = OUTLINED_FUNCTION_277_3();
                              v36 = v1 == v34 && v0 == v35;
                              if (v36 || (OUTLINED_FUNCTION_0_9(v34, v35) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v37 = OUTLINED_FUNCTION_298_2(0x6D69786F7250);
                                v39 = v5 && v0 == v38;
                                if (v39 || (OUTLINED_FUNCTION_0_9(v37, v38) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v40 = OUTLINED_FUNCTION_82_16();
                                  v42 = v1 == v40 && v0 == v41;
                                  if (v42 || (OUTLINED_FUNCTION_0_9(v40, v41) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v43 = OUTLINED_FUNCTION_47_28();
                                    v45 = v5 && v0 == v44;
                                    if (v45 || (OUTLINED_FUNCTION_0_9(v43, v44) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v46 = OUTLINED_FUNCTION_239_2();
                                      v48 = v1 == v46 && v0 == v47;
                                      if (v48 || (OUTLINED_FUNCTION_0_9(v46, v47) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v49 = OUTLINED_FUNCTION_307_1(1802465090);
                                        v50 = v5 && v0 == 0xE500000000000000;
                                        if (v50 || (OUTLINED_FUNCTION_15_14(v49) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v51 = OUTLINED_FUNCTION_176_4();
                                          v52 = v1 == v51 && v0 == 0xEF746E657645656DLL;
                                          if (v52 || (OUTLINED_FUNCTION_0_9(v51, 0xEF746E657645656DLL) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_296_2(0x456E6F436F53);
                                            v54 = v5 && v0 == v53;
                                            if (v54 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v55 = OUTLINED_FUNCTION_210_2(0x76456566694CLL);
                                              v56 = v5 && v0 == 0xE900000000000074;
                                              if (v56 || (OUTLINED_FUNCTION_30_22(v55, 116) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v57 = OUTLINED_FUNCTION_210_2(0x76456E654450);
                                                v58 = v5 && v0 == 0xE900000000000074;
                                                if (v58 || (OUTLINED_FUNCTION_30_22(v57, 116) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v59 = OUTLINED_FUNCTION_66_23();
                                                  if (v1 == v59 && v0 == v60)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_0_9(v59, v60);
                                                    OUTLINED_FUNCTION_89();
                                                    v6 = 23;
                                                    if ((v1 & 1) == 0)
                                                    {
                                                      v6 = 0;
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t MomentsEventData.SuggestedEventCategoryType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x746867696C46;
  switch(*v0)
  {
    case 1:
      result = 1685024582;
      break;
    case 2:
      result = 0x6E69617254;
      break;
    case 3:
      result = 7566658;
      break;
    case 4:
      result = 1952542530;
      break;
    case 5:
      result = OUTLINED_FUNCTION_163_9();
      break;
    case 6:
      result = OUTLINED_FUNCTION_84_16();
      break;
    case 7:
      result = 0x74656B636954;
      break;
    case 8:
      result = OUTLINED_FUNCTION_115_12(1769369421);
      break;
    case 9:
      result = OUTLINED_FUNCTION_71_21(0x67646F4Cu);
      break;
    case 0xALL:
      result = 0x6C6169636F53;
      break;
    case 0xBLL:
      result = 0x746E6576454C4ELL;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.SuggestedEventCategoryType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_132_10();
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_21_38(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 1685024582 && v0 == 0xE400000000000000;
      if (v8 || (OUTLINED_FUNCTION_19_8(1685024582) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x6E69617254 && v0 == 0xE500000000000000;
        if (v9 || (OUTLINED_FUNCTION_15_14(0x6E69617254) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 7566658 && v0 == 0xE300000000000000;
          if (v10 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = v1 == 1952542530 && v0 == 0xE400000000000000;
            if (v11 || (OUTLINED_FUNCTION_19_8(1952542530) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v12 = OUTLINED_FUNCTION_163_9();
              v14 = v1 == v12 && v0 == v13;
              if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_65_0();
                v17 = v4 && v16 == v0;
                if (v17 || (OUTLINED_FUNCTION_44_25(v15, v16) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v18 = v1 == 0x74656B636954 && v0 == 0xE600000000000000;
                  if (v18 || (OUTLINED_FUNCTION_21_38(0x74656B636954) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v19 = OUTLINED_FUNCTION_116_15(1769369421);
                    v20 = v4 && v0 == 0xE500000000000000;
                    if (v20 || (OUTLINED_FUNCTION_15_14(v19) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v21 = OUTLINED_FUNCTION_46_24(0x67646F4Cu);
                      v22 = v4 && v0 == 0xE700000000000000;
                      if (v22 || (OUTLINED_FUNCTION_22_7(v21) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v23 = v1 == 0x6C6169636F53 && v0 == 0xE600000000000000;
                        if (v23 || (OUTLINED_FUNCTION_21_38(0x6C6169636F53) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v24 = OUTLINED_FUNCTION_106_16(0x6E6576454C4ELL);
                          if (v4 && v0 == 0xE700000000000000)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_22_7(v24);
                            OUTLINED_FUNCTION_89();
                            v5 = 11;
                            if ((v1 & 1) == 0)
                            {
                              v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.PlaceInferenceUserSpecificPlaceType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 1;
  switch(result)
  {
    case 1:
      break;
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    default:
      v2 = 4;
      if (result == 100)
      {
        v3 = 1;
      }

      else
      {
        v2 = result;
        v3 = 0;
      }

      break;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t MomentsEventData.PlaceInferenceUserSpecificPlaceType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193997160[result];
  }

  return result;
}

uint64_t MomentsEventData.PlaceInferenceUserSpecificPlaceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1701670728;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_131_10();
      break;
    case 2:
      result = OUTLINED_FUNCTION_172_7();
      break;
    case 3:
      result = 7174471;
      break;
    case 4:
      result = OUTLINED_FUNCTION_227_4();
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.PlaceInferenceUserSpecificPlaceType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_201_3();
    v6 = v4 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(1701670728) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_130_12();
      v7 = v4 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_19_8(1802661719) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_306_1();
        v9 = v4 && v0 == 0xE600000000000000;
        if (v9 || (OUTLINED_FUNCTION_21_38(v8) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 7174471 && v0 == 0xE300000000000000;
          if (v10 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = OUTLINED_FUNCTION_227_4();
            if (v1 == v11 && v0 == v12)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_0_9(v11, v12);
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_214_2();
              if (v4)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void MomentsEventData.PlaceInferencePlaceType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 0;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    case 5:
      v2 = 4;
      break;
    case 6:
      v2 = 5;
      break;
    default:
      v2 = 6;
      v3 = 7;
      v4 = 8;
      if (a2 != 102)
      {
        v4 = a2;
      }

      if (a2 != 101)
      {
        v3 = v4;
      }

      if (a2 != 100)
      {
        v2 = v3;
      }

      break;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MomentsEventData.PlaceInferencePlaceType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193997188[result];
  }

  return result;
}

uint64_t static MomentsEventData.PlaceInferencePlaceType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v63 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v63, v64, v65, v66, &qword_1EAE42E68, &qword_193997138);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v67 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v67, v68, v69, v70, &qword_1EAE42E68, &qword_193997138);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v71, v72, v73, v74, v75, v76);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v77 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v77, v78, v79, v80, &qword_1EAE42E68, &qword_193997138);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v81 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v81, v82, v83, v84, &qword_1EAE42E68, &qword_193997138);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v85 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v85, v86, v87, v88, &qword_1EAE42E68, &qword_193997138);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v89 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v89, v90, v91, v92, &qword_1EAE42E68, &qword_193997138);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v93 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v93, v94, v95, v96, &qword_1EAE42E68, &qword_193997138);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v97 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v97, v98, v99, v100, &qword_1EAE42E68, &qword_193997138);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v101 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v101, v102, v103, v104, &qword_1EAE42E68, &qword_193997138);
    v58 = v55;
  }

  OUTLINED_FUNCTION_50(v55, v56, v57, v58);
  return OUTLINED_FUNCTION_38_1(v60, v61);
}

uint64_t MomentsEventData.PlaceInferencePlaceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x7373616C436E6F4ELL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_226_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_70_8();
      break;
    case 3:
      v2 = OUTLINED_FUNCTION_264_1();
      result = OUTLINED_FUNCTION_200_5(v2);
      break;
    case 4:
      result = OUTLINED_FUNCTION_225_4();
      break;
    case 5:
      result = OUTLINED_FUNCTION_168_6();
      break;
    case 6:
      result = OUTLINED_FUNCTION_184_8();
      break;
    case 7:
      result = OUTLINED_FUNCTION_115_12(1952543827);
      break;
    case 8:
      result = 0x7972746E756F43;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.PlaceInferencePlaceType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_310_1(0x616C436E6F4ELL);
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_226_3();
      v11 = v1 == v9 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_70_8();
        v14 = v1 == v12 && v0 == v13;
        if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v15 = OUTLINED_FUNCTION_264_1();
          v16 = OUTLINED_FUNCTION_160_9(v15);
          v17 = v4 && v0 == 0xE700000000000000;
          if (v17 || (OUTLINED_FUNCTION_22_7(v16) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v18 = OUTLINED_FUNCTION_225_4();
            v20 = v1 == v18 && v0 == v19;
            if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v21 = OUTLINED_FUNCTION_148_9();
              v22 = v4 && v0 == 0xE600000000000000;
              if (v22 || (OUTLINED_FUNCTION_21_38(v21) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v23 = v1 == 2037672259 && v0 == 0xE400000000000000;
                if (v23 || (OUTLINED_FUNCTION_19_8(2037672259) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v24 = OUTLINED_FUNCTION_116_15(1952543827);
                  v25 = v4 && v0 == 0xE500000000000000;
                  if (v25 || (OUTLINED_FUNCTION_15_14(v24) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v26 = OUTLINED_FUNCTION_103_14();
                    if (v4 && v0 == 0xE700000000000000)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_22_7(v26);
                      OUTLINED_FUNCTION_89();
                      v5 = 8;
                      if ((v1 & 1) == 0)
                      {
                        v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.GeoPOICategoryType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    case 31:
      v3 = 31;
      break;
    case 32:
      v3 = 32;
      break;
    case 33:
      v3 = 33;
      break;
    case 34:
      v3 = 34;
      break;
    case 35:
      v3 = 35;
      break;
    case 36:
      v3 = 36;
      break;
    case 37:
      v3 = 37;
      break;
    case 38:
      v3 = 38;
      break;
    case 39:
      v3 = 39;
      break;
    case 40:
      v3 = 40;
      break;
    case 41:
      v3 = 41;
      break;
    case 42:
      v3 = 42;
      break;
    case 43:
      v3 = 43;
      break;
    case 44:
      v3 = 44;
      break;
    case 45:
      v3 = 45;
      break;
    case 46:
      v3 = 46;
      break;
    case 47:
      v3 = 47;
      break;
    case 48:
      v3 = 48;
      break;
    case 49:
      v3 = 49;
      break;
    case 50:
      v3 = 50;
      break;
    case 51:
      v3 = 51;
      break;
    case 52:
      v3 = 52;
      break;
    case 53:
      v3 = 53;
      break;
    case 54:
      v3 = 54;
      break;
    case 55:
      v3 = 55;
      break;
    case 56:
      v3 = 56;
      break;
    case 57:
      v3 = 57;
      break;
    case 58:
      v3 = 58;
      break;
    case 59:
      v3 = 59;
      break;
    case 60:
      v3 = 60;
      break;
    case 61:
      v3 = 61;
      break;
    case 62:
      v3 = 62;
      break;
    case 63:
      v3 = 63;
      break;
    case 64:
      v3 = 64;
      break;
    case 65:
      v3 = 65;
      break;
    case 66:
      v3 = 66;
      break;
    case 67:
      v3 = 67;
      break;
    case 68:
      v3 = 68;
      break;
    case 69:
      v3 = 69;
      break;
    case 70:
      v3 = 70;
      break;
    case 71:
      v3 = 71;
      break;
    case 72:
      v3 = 72;
      break;
    case 73:
      v3 = 73;
      break;
    case 74:
      v3 = 74;
      break;
    case 75:
      v3 = 75;
      break;
    case 76:
      v3 = 76;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

void MomentsEventData.GeoPOICategoryType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        v1 = OUTLINED_FUNCTION_94_17();
        goto LABEL_24;
      case 6:
        OUTLINED_FUNCTION_177_6();
        return;
      case 7:
        OUTLINED_FUNCTION_263_2(0x726577657242);
        return;
      case 9:
      case 0x1CLL:
      case 0x34:
      case 0x35:
        OUTLINED_FUNCTION_118_14();
        return;
      case 0xALL:
        OUTLINED_FUNCTION_163_9();
        return;
      case 0xCLL:
        OUTLINED_FUNCTION_258_3(0x745365726946);
        return;
      case 0xDLL:
        OUTLINED_FUNCTION_240_3();
        return;
      case 0x10:
        OUTLINED_FUNCTION_199_3(0x746970736F48);
        return;
      case 0x12:
        OUTLINED_FUNCTION_263_2(0x72646E75614CLL);
        return;
      case 0x13:
        OUTLINED_FUNCTION_263_2(0x72617262694CLL);
        return;
      case 0x15:
        OUTLINED_FUNCTION_284_3();
        return;
      case 0x16:
        OUTLINED_FUNCTION_171_6();
        return;
      case 0x17:
        v3 = OUTLINED_FUNCTION_313_2();
        OUTLINED_FUNCTION_199_3(v3);
        return;
      case 0x18:
        OUTLINED_FUNCTION_144();
        return;
      case 0x1ALL:
        OUTLINED_FUNCTION_71_21(0x6B726150u);
        return;
      case 0x1FLL:
        OUTLINED_FUNCTION_247_3();
        return;
      case 0x20:
        OUTLINED_FUNCTION_243_1();
        return;
      case 0x21:
        OUTLINED_FUNCTION_259_2(0x756174736552);
        return;
      case 0x23:
        OUTLINED_FUNCTION_172_7();
        return;
      case 0x25:
        OUTLINED_FUNCTION_115_12(1919906899);
        return;
      case 0x26:
        OUTLINED_FUNCTION_166_7(0x657461656854);
        return;
      case 0x2ALL:
        OUTLINED_FUNCTION_285_3();
        return;
      case 0x2BLL:
        OUTLINED_FUNCTION_249_1();
        return;
      case 0x2CLL:
        OUTLINED_FUNCTION_248_2();
        return;
      case 0x2DLL:
      case 0x33:
      case 0x40:
        OUTLINED_FUNCTION_38();
        return;
      case 0x2FLL:
        OUTLINED_FUNCTION_261_1();
        return;
      case 0x31:
        OUTLINED_FUNCTION_71_21(0x6C776F42u);
        return;
      case 0x36:
        OUTLINED_FUNCTION_71_21(0x68736946u);
        return;
      case 0x37:
        OUTLINED_FUNCTION_262_1(0x657274726F46);
        return;
      case 0x38:
        OUTLINED_FUNCTION_183_4();
        return;
      case 0x3ALL:
        OUTLINED_FUNCTION_122_10(1768646984);
        return;
      case 0x3BLL:
        OUTLINED_FUNCTION_165_9(0x696B6179614BLL);
        return;
      case 0x3FLL:
        v1 = 0x56636973754DLL;
LABEL_24:
        OUTLINED_FUNCTION_164_7(v1);
        return;
      case 0x41:
        v2 = OUTLINED_FUNCTION_314_2();
        goto LABEL_52;
      case 0x42:
        OUTLINED_FUNCTION_288_2();
        return;
      case 0x44:
        v2 = 0x506574616B53;
LABEL_52:
        OUTLINED_FUNCTION_190_3(v2);
        break;
      case 0x45:
        OUTLINED_FUNCTION_71_21(0x74616B53u);
        break;
      case 0x46:
        OUTLINED_FUNCTION_122_10(1768516435);
        break;
      case 0x47:
        OUTLINED_FUNCTION_173_8();
        break;
      case 0x49:
        OUTLINED_FUNCTION_71_21(0x66727553u);
        break;
      case 0x4ALL:
        OUTLINED_FUNCTION_165_9(0x696D6D697753);
        break;
      case 0x4BLL:
        OUTLINED_FUNCTION_169_8();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.GeoPOICategoryType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_106_16(0x726F70726941);
    v7 = v4 && v0 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_22_7(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_94_17();
      v9 = OUTLINED_FUNCTION_210_2(v8);
      v11 = v4 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v12 = v1 == 0x6D75697261757141 && v0 == 0xE800000000000000;
        if (v12 || (OUTLINED_FUNCTION_29_2(0x6D75697261757141) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = v1 == 5067841 && v0 == 0xE300000000000000;
          if (v13 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = v1 == 0x7972656B6142 && v0 == 0xE600000000000000;
            if (v14 || (OUTLINED_FUNCTION_21_38(0x7972656B6142) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v15 = v1 == 1802395970 && v0 == 0xE400000000000000;
              if (v15 || (OUTLINED_FUNCTION_19_8(1802395970) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v16 = OUTLINED_FUNCTION_299_2(1667327298);
                v17 = v4 && v0 == 0xE500000000000000;
                if (v17 || (OUTLINED_FUNCTION_15_14(v16) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v18 = OUTLINED_FUNCTION_129_12(0x726577657242);
                  v19 = v4 && v0 == 0xE700000000000000;
                  if (v19 || (OUTLINED_FUNCTION_22_7(v18) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v20 = v1 == 1701208387 && v0 == 0xE400000000000000;
                    if (v20 || (OUTLINED_FUNCTION_19_8(1701208387) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_203_4(0x706D6143u);
                      v21 = v4 && v0 == 0xEA0000000000646ELL;
                      if (v21 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v22 = OUTLINED_FUNCTION_163_9();
                        v23 = v1 == v22 && v0 == 0xE90000000000006CLL;
                        if (v23 || (OUTLINED_FUNCTION_0_9(v22, 0xE90000000000006CLL) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v24 = v1 == 0x6567726168435645 && v0 == 0xE900000000000072;
                          if (v24 || (OUTLINED_FUNCTION_0_9(0x6567726168435645, 0xE900000000000072) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v25 = OUTLINED_FUNCTION_192_3(0x745365726946);
                            v27 = v4 && v0 == v26;
                            if (v27 || (OUTLINED_FUNCTION_0_9(v25, v26) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v28 = OUTLINED_FUNCTION_240_3();
                              v30 = v1 == v28 && v0 == v29;
                              if (v30 || (OUTLINED_FUNCTION_0_9(v28, v29) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v31 = v1 == 0x6B72614D646F6F46 && v0 == 0xEA00000000007465;
                                if (v31 || (OUTLINED_FUNCTION_0_9(0x6B72614D646F6F46, 0xEA00000000007465) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v32 = v1 == 0x6974617453736147 && v0 == 0xEA00000000006E6FLL;
                                  if (v32 || (OUTLINED_FUNCTION_0_9(0x6974617453736147, 0xEA00000000006E6FLL) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v33 = OUTLINED_FUNCTION_223_3(0x746970736F48);
                                    v34 = v4 && v0 == 0xE800000000000000;
                                    if (v34 || (OUTLINED_FUNCTION_29_2(v33) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v35 = v1 == 0x6C65746F48 && v0 == 0xE500000000000000;
                                      if (v35 || (OUTLINED_FUNCTION_15_14(0x6C65746F48) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v36 = OUTLINED_FUNCTION_129_12(0x72646E75614CLL);
                                        v37 = v4 && v0 == 0xE700000000000000;
                                        if (v37 || (OUTLINED_FUNCTION_22_7(v36) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v38 = OUTLINED_FUNCTION_129_12(0x72617262694CLL);
                                          v39 = v4 && v0 == 0xE700000000000000;
                                          if (v39 || (OUTLINED_FUNCTION_22_7(v38) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v40 = v1 == 0x616E6972614DLL && v0 == 0xE600000000000000;
                                            if (v40 || (OUTLINED_FUNCTION_21_38(0x616E6972614DLL) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v41 = OUTLINED_FUNCTION_284_3();
                                              v43 = v1 == v41 && v0 == v42;
                                              if (v43 || (OUTLINED_FUNCTION_0_9(v41, v42) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v44 = OUTLINED_FUNCTION_300_2();
                                                v45 = v4 && v0 == 0xE600000000000000;
                                                if (v45 || (OUTLINED_FUNCTION_21_38(v44) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v46 = OUTLINED_FUNCTION_313_2();
                                                  v47 = OUTLINED_FUNCTION_223_3(v46);
                                                  v49 = v4 && v0 == v48;
                                                  if (v49 || (OUTLINED_FUNCTION_0_9(v47, v48) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v50 = v1 == 0x66696C746867694ELL && v0 == 0xE900000000000065;
                                                    if (v50 || (OUTLINED_FUNCTION_30_22(0x66696C746867694ELL, 101) & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      v51 = v1 == 1802658128 && v0 == 0xE400000000000000;
                                                      if (v51 || (OUTLINED_FUNCTION_19_8(1802658128) & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v52 = OUTLINED_FUNCTION_46_24(0x6B726150u);
                                                        v53 = v4 && v0 == 0xE700000000000000;
                                                        if (v53 || (OUTLINED_FUNCTION_22_7(v52) & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v54 = v1 == 0x7963616D72616850 && v0 == 0xE800000000000000;
                                                          if (v54 || (OUTLINED_FUNCTION_29_2(0x7963616D72616850) & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_203_4(0x79616C50u);
                                                            v55 = v4 && v0 == 0xEA0000000000646ELL;
                                                            if (v55 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              v56 = v1 == 0x6563696C6F50 && v0 == 0xE600000000000000;
                                                              if (v56 || (OUTLINED_FUNCTION_21_38(0x6563696C6F50) & 1) != 0)
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else
                                                              {
                                                                v57 = v1 == 0x6966664F74736F50 && v0 == 0xEA00000000006563;
                                                                if (v57 || (OUTLINED_FUNCTION_0_9(0x6966664F74736F50, 0xEA00000000006563) & 1) != 0)
                                                                {

                                                                  OUTLINED_FUNCTION_196_5();
                                                                }

                                                                else
                                                                {
                                                                  v58 = OUTLINED_FUNCTION_247_3();
                                                                  v60 = v1 == v58 && v0 == v59;
                                                                  if (v60 || (OUTLINED_FUNCTION_0_9(v58, v59) & 1) != 0)
                                                                  {

                                                                    OUTLINED_FUNCTION_218_3();
                                                                  }

                                                                  else
                                                                  {
                                                                    v61 = OUTLINED_FUNCTION_243_1();
                                                                    v63 = v1 == v61 && v0 == v62;
                                                                    if (v63 || (OUTLINED_FUNCTION_0_9(v61, v62) & 1) != 0)
                                                                    {

                                                                      OUTLINED_FUNCTION_216_3();
                                                                    }

                                                                    else
                                                                    {
                                                                      v64 = v1 == 0x6172756174736552 && v0 == 0xEA0000000000746ELL;
                                                                      if (v64 || (OUTLINED_FUNCTION_0_9(0x6172756174736552, 0xEA0000000000746ELL) & 1) != 0)
                                                                      {

                                                                        OUTLINED_FUNCTION_219_3();
                                                                      }

                                                                      else
                                                                      {
                                                                        v65 = v1 == 0x6D6F6F7274736552 && v0 == 0xE800000000000000;
                                                                        if (v65 || (OUTLINED_FUNCTION_29_2(0x6D6F6F7274736552) & 1) != 0)
                                                                        {

                                                                          OUTLINED_FUNCTION_217_3();
                                                                        }

                                                                        else
                                                                        {
                                                                          v66 = OUTLINED_FUNCTION_306_1();
                                                                          v67 = v4 && v0 == 0xE600000000000000;
                                                                          if (v67 || (OUTLINED_FUNCTION_21_38(v66) & 1) != 0)
                                                                          {

                                                                            OUTLINED_FUNCTION_220_4();
                                                                          }

                                                                          else
                                                                          {
                                                                            v68 = v1 == 0x6D756964617453 && v0 == 0xE700000000000000;
                                                                            if (v68 || (OUTLINED_FUNCTION_22_7(0x6D756964617453) & 1) != 0)
                                                                            {

                                                                              OUTLINED_FUNCTION_303_1();
                                                                            }

                                                                            else
                                                                            {
                                                                              v69 = OUTLINED_FUNCTION_116_15(1919906899);
                                                                              v70 = v4 && v0 == 0xE500000000000000;
                                                                              if (v70 || (OUTLINED_FUNCTION_15_14(v69) & 1) != 0)
                                                                              {

                                                                                OUTLINED_FUNCTION_302_2();
                                                                              }

                                                                              else
                                                                              {
                                                                                v71 = OUTLINED_FUNCTION_181_8(0x657461656854);
                                                                                v72 = v4 && v0 == 0xE700000000000000;
                                                                                if (v72 || (OUTLINED_FUNCTION_22_7(v71) & 1) != 0)
                                                                                {

                                                                                  v5 = 38;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v73 = v1 == 0x6973726576696E55 && v0 == 0xEA00000000007974;
                                                                                  if (v73 || (OUTLINED_FUNCTION_0_9(0x6973726576696E55, 0xEA00000000007974) & 1) != 0)
                                                                                  {

                                                                                    v5 = 39;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v74 = v1 == 0x7972656E6957 && v0 == 0xE600000000000000;
                                                                                    if (v74 || (OUTLINED_FUNCTION_21_38(0x7972656E6957) & 1) != 0)
                                                                                    {

                                                                                      v5 = 40;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v75 = v1 == 7303002 && v0 == 0xE300000000000000;
                                                                                      if (v75 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                                                                                      {

                                                                                        v5 = 41;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v76 = OUTLINED_FUNCTION_285_3();
                                                                                        v78 = v1 == v76 && v0 == v77;
                                                                                        if (v78 || (OUTLINED_FUNCTION_0_9(v76, v77) & 1) != 0)
                                                                                        {

                                                                                          v5 = 42;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v79 = OUTLINED_FUNCTION_249_1();
                                                                                          v81 = v1 == v79 && v0 == v80;
                                                                                          if (v81 || (OUTLINED_FUNCTION_0_9(v79, v80) & 1) != 0)
                                                                                          {

                                                                                            v5 = 43;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v82 = OUTLINED_FUNCTION_248_2();
                                                                                            v84 = v1 == v82 && v0 == v83;
                                                                                            if (v84 || (OUTLINED_FUNCTION_0_9(v82, v83) & 1) != 0)
                                                                                            {

                                                                                              v5 = 44;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_96_2();
                                                                                              v87 = v4 && v86 == v0;
                                                                                              if (v87 || (OUTLINED_FUNCTION_44_25(v85, v86) & 1) != 0)
                                                                                              {

                                                                                                v5 = 45;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v88 = OUTLINED_FUNCTION_139_11(0x65736142u);
                                                                                                v89 = v4 && v0 == 0xE800000000000000;
                                                                                                if (v89 || (OUTLINED_FUNCTION_29_2(v88) & 1) != 0)
                                                                                                {

                                                                                                  v5 = 46;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v90 = v1 == OUTLINED_FUNCTION_261_1() && v0 == 0xEA00000000006C6CLL;
                                                                                                  if (v90 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                                                                                                  {

                                                                                                    v5 = 47;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v91 = v1 == 0x797475616542 && v0 == 0xE600000000000000;
                                                                                                    if (v91 || (OUTLINED_FUNCTION_21_38(0x797475616542) & 1) != 0)
                                                                                                    {

                                                                                                      v5 = 48;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v92 = OUTLINED_FUNCTION_46_24(0x6C776F42u);
                                                                                                      v93 = v4 && v0 == 0xE700000000000000;
                                                                                                      if (v93 || (OUTLINED_FUNCTION_22_7(v92) & 1) != 0)
                                                                                                      {

                                                                                                        v5 = 49;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v94 = v1 == 0x656C74736143 && v0 == 0xE600000000000000;
                                                                                                        if (v94 || (OUTLINED_FUNCTION_21_38(0x656C74736143) & 1) != 0)
                                                                                                        {

                                                                                                          v5 = 50;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_96_2();
                                                                                                          v97 = v4 && v96 == v0;
                                                                                                          if (v97 || (OUTLINED_FUNCTION_44_25(v95, v96) & 1) != 0)
                                                                                                          {

                                                                                                            v5 = 51;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v98 = v1 == 0x656C6C6974736944 && v0 == 0xEA00000000007972;
                                                                                                            if (v98 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                                                                                            {

                                                                                                              v5 = 52;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_203_4(0x72696146u);
                                                                                                              v99 = v4 && v0 == 0xEA0000000000646ELL;
                                                                                                              if (v99 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                                                                                              {

                                                                                                                v5 = 53;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v100 = OUTLINED_FUNCTION_46_24(0x68736946u);
                                                                                                                v101 = v4 && v0 == 0xE700000000000000;
                                                                                                                if (v101 || (OUTLINED_FUNCTION_22_7(v100) & 1) != 0)
                                                                                                                {

                                                                                                                  v5 = 54;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v102 = OUTLINED_FUNCTION_310_1(0x657274726F46);
                                                                                                                  v103 = v4 && v0 == 0xE800000000000000;
                                                                                                                  if (v103 || (OUTLINED_FUNCTION_29_2(v102) & 1) != 0)
                                                                                                                  {

                                                                                                                    v5 = 55;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v104 = v1 == 1718382407 && v0 == 0xE400000000000000;
                                                                                                                    if (v104 || (OUTLINED_FUNCTION_19_8(1718382407) & 1) != 0)
                                                                                                                    {

                                                                                                                      v5 = 56;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v105 = v1 == 0x7472614B6F47 && v0 == 0xE600000000000000;
                                                                                                                      if (v105 || (OUTLINED_FUNCTION_21_38(0x7472614B6F47) & 1) != 0)
                                                                                                                      {

                                                                                                                        v5 = 57;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v106 = OUTLINED_FUNCTION_113_12(1768646984);
                                                                                                                        v107 = v4 && v0 == 0xE600000000000000;
                                                                                                                        if (v107 || (OUTLINED_FUNCTION_21_38(v106) & 1) != 0)
                                                                                                                        {

                                                                                                                          v5 = 58;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v108 = OUTLINED_FUNCTION_156_8(0x696B6179614BLL);
                                                                                                                          v109 = v4 && v0 == 0xE800000000000000;
                                                                                                                          if (v109 || (OUTLINED_FUNCTION_29_2(v108) & 1) != 0)
                                                                                                                          {

                                                                                                                            v5 = 59;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v110 = v1 == 0x6B72616D646E614CLL && v0 == 0xE800000000000000;
                                                                                                                            if (v110 || (OUTLINED_FUNCTION_29_2(0x6B72616D646E614CLL) & 1) != 0)
                                                                                                                            {

                                                                                                                              v5 = 60;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v111 = v1 == 0x786F626C69614DLL && v0 == 0xE700000000000000;
                                                                                                                              if (v111 || (OUTLINED_FUNCTION_22_7(0x786F626C69614DLL) & 1) != 0)
                                                                                                                              {

                                                                                                                                v5 = 61;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v112 = v1 == 0x666C6F47696E694DLL && v0 == 0xE800000000000000;
                                                                                                                                if (v112 || (OUTLINED_FUNCTION_29_2(0x666C6F47696E694DLL) & 1) != 0)
                                                                                                                                {

                                                                                                                                  v5 = 62;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v113 = v1 == 0x6E6556636973754DLL && v0 == 0xEA00000000006575;
                                                                                                                                  if (v113 || (OUTLINED_FUNCTION_0_9(0x6E6556636973754DLL, 0xEA00000000006575) & 1) != 0)
                                                                                                                                  {

                                                                                                                                    v5 = 63;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_96_2();
                                                                                                                                    v116 = v4 && v115 == v0;
                                                                                                                                    if (v116 || (OUTLINED_FUNCTION_44_25(v114, v115) & 1) != 0)
                                                                                                                                    {

                                                                                                                                      v5 = 64;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v117 = OUTLINED_FUNCTION_314_2();
                                                                                                                                      v118 = OUTLINED_FUNCTION_155_7(v117);
                                                                                                                                      v120 = v4 && v0 == v119;
                                                                                                                                      if (v120 || (OUTLINED_FUNCTION_0_9(v118, v119) & 1) != 0)
                                                                                                                                      {

                                                                                                                                        v5 = 65;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v121 = OUTLINED_FUNCTION_288_2();
                                                                                                                                        v123 = v1 == v121 && v0 == v122;
                                                                                                                                        if (v123 || (OUTLINED_FUNCTION_0_9(v121, v122) & 1) != 0)
                                                                                                                                        {

                                                                                                                                          v5 = 66;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v124 = v1 == 0x6B7261505652 && v0 == 0xE600000000000000;
                                                                                                                                          if (v124 || (OUTLINED_FUNCTION_21_38(0x6B7261505652) & 1) != 0)
                                                                                                                                          {

                                                                                                                                            v5 = 67;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v125 = v1 == 0x7261506574616B53 && v0 == 0xE90000000000006BLL;
                                                                                                                                            if (v125 || (OUTLINED_FUNCTION_0_9(0x7261506574616B53, 0xE90000000000006BLL) & 1) != 0)
                                                                                                                                            {

                                                                                                                                              v5 = 68;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v126 = OUTLINED_FUNCTION_46_24(0x74616B53u);
                                                                                                                                              v127 = v4 && v0 == 0xE700000000000000;
                                                                                                                                              if (v127 || (OUTLINED_FUNCTION_22_7(v126) & 1) != 0)
                                                                                                                                              {

                                                                                                                                                v5 = 69;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v128 = OUTLINED_FUNCTION_113_12(1768516435);
                                                                                                                                                v129 = v4 && v0 == 0xE600000000000000;
                                                                                                                                                if (v129 || (OUTLINED_FUNCTION_21_38(v128) & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  v5 = 70;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v130 = OUTLINED_FUNCTION_215_3(1667460947);
                                                                                                                                                  v131 = v4 && v0 == 0xE600000000000000;
                                                                                                                                                  if (v131 || (OUTLINED_FUNCTION_21_38(v130) & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    v5 = 71;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v132 = v1 == 6385747 && v0 == 0xE300000000000000;
                                                                                                                                                    if (v132 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      v5 = 72;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v133 = OUTLINED_FUNCTION_46_24(0x66727553u);
                                                                                                                                                      v134 = v4 && v0 == 0xE700000000000000;
                                                                                                                                                      if (v134 || (OUTLINED_FUNCTION_22_7(v133) & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        v5 = 73;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v135 = OUTLINED_FUNCTION_156_8(0x696D6D697753);
                                                                                                                                                        v136 = v4 && v0 == 0xE800000000000000;
                                                                                                                                                        if (v136 || (OUTLINED_FUNCTION_29_2(v135) & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          v5 = 74;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v137 = OUTLINED_FUNCTION_297_3();
                                                                                                                                                          v138 = v4 && v0 == 0xE600000000000000;
                                                                                                                                                          if (v138 || (OUTLINED_FUNCTION_21_38(v137) & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            v5 = 75;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v139 = OUTLINED_FUNCTION_212_2();
                                                                                                                                                            if (v4 && v0 == 0xEA00000000006C6CLL)
                                                                                                                                                            {

                                                                                                                                                              v5 = 76;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              OUTLINED_FUNCTION_0_9(v139, 0xEA00000000006C6CLL);
                                                                                                                                                              OUTLINED_FUNCTION_89();
                                                                                                                                                              v5 = 76;
                                                                                                                                                              if ((v1 & 1) == 0)
                                                                                                                                                              {
                                                                                                                                                                v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.PlaceDiscoveryType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x616C506E776F6E4BLL;
  }

  return 0x6563616C5077654ELL;
}

void MomentsEventData.PlaceDiscoveryType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6563616C5077654ELL && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_29_2(0x6563616C5077654ELL) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x616C506E776F6E4BLL && v0 == 0xEA00000000006563)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_59_20();
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t MomentsEventData.LocationModeType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return 0x74736972756F54;
  }

  return 0x6C61636F4CLL;
}

void MomentsEventData.LocationModeType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6C61636F4CLL && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_14(0x6C61636F4CLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_106_16(0x736972756F54);
      if (v4 && v0 == 0xE700000000000000)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_22_7(v7);
        OUTLINED_FUNCTION_89();
        v5 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t MomentsEventData.PhotoMomentSourceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6C657479726F7453;
  }

  return 0x62694C6F746F6850;
}

void MomentsEventData.PhotoMomentSourceType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x62694C6F746F6850 && v0 == 0xEC00000079726172;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x62694C6F746F6850, 0xEC00000079726172) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x6C657479726F7453 && v0 == 0xEC000000676E696CLL)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(0x6C657479726F7453, 0xEC000000676E696CLL);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t MomentsEventData.TripModeType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 2036429907;
  }

  return 0x676E69796C46;
}

void MomentsEventData.TripModeType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_113_12(1769565254);
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_21_38(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 2036429907 && v0 == 0xE400000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_19_8(2036429907);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void MomentsEventData.SourceAppType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 4)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MomentsEventData.SourceAppType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1939971D0[result];
  }

  return result;
}

uint64_t MomentsEventData.SourceAppType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x7261506472696854;
  if (*v0 != 1)
  {
    v1 = 0x726150646578694DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void MomentsEventData.SourceAppType.init(_:)()
{
  v1 = OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7(v1) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    v7 = v3 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_44_25(v5, v6) & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_155_7(0x506472696854);
      v8 = v3 && v0 == 0xEA00000000007974;
      if (v8 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_155_7(0x50646578694DLL);
        if (v3 && v0 == 0xEA00000000007974)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_59_20();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.PhotoMomentInferenceType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.PhotoMomentInferenceType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v176 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v176, v177, v178, v179, &qword_1EAE42E30, &qword_193997100);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v180 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v180, v181, v182, v183, &qword_1EAE42E30, &qword_193997100);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v184, v185, v186, v187, v188, v189);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v190 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v190, v191, v192, v193, &qword_1EAE42E30, &qword_193997100);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v194 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v194, v195, v196, v197, &qword_1EAE42E30, &qword_193997100);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v198 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v198, v199, v200, v201, &qword_1EAE42E30, &qword_193997100);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v202 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v202, v203, v204, v205, &qword_1EAE42E30, &qword_193997100);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v206 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v206, v207, v208, v209, &qword_1EAE42E30, &qword_193997100);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v210 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v210, v211, v212, v213, &qword_1EAE42E30, &qword_193997100);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v214 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v214, v215, v216, v217, &qword_1EAE42E30, &qword_193997100);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v218 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v218, v219, v220, v221, &qword_1EAE42E30, &qword_193997100);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v222 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v222, v223, v224, v225, &qword_1EAE42E30, &qword_193997100);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v226 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v226, v227, v228, v229, &qword_1EAE42E30, &qword_193997100);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v230 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v230, v231, v232, v233, &qword_1EAE42E30, &qword_193997100);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v234 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v234, v235, v236, v237, &qword_1EAE42E30, &qword_193997100);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v238 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v238, v239, v240, v241, &qword_1EAE42E30, &qword_193997100);
    v88 = v85;
  }

  OUTLINED_FUNCTION_16_41(v85, v86, v87, v88);
  if (!(v18 ^ v19 | v12))
  {
    v242 = OUTLINED_FUNCTION_39(v94);
    v90 = OUTLINED_FUNCTION_85(v242, v243, v244, v245, &qword_1EAE42E30, &qword_193997100);
    v93 = v90;
  }

  OUTLINED_FUNCTION_17_41(v90, v91, v92, v93);
  if (!(v18 ^ v19 | v12))
  {
    v246 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v246, v247, v248, v249, &qword_1EAE42E30, &qword_193997100);
    v98 = v95;
  }

  OUTLINED_FUNCTION_19_54(v95, v96, v97, v98);
  if (!(v18 ^ v19 | v12))
  {
    v250 = OUTLINED_FUNCTION_39(v104);
    v100 = OUTLINED_FUNCTION_85(v250, v251, v252, v253, &qword_1EAE42E30, &qword_193997100);
    v103 = v100;
  }

  OUTLINED_FUNCTION_20_47(v100, v101, v102, v103);
  if (!(v18 ^ v19 | v12))
  {
    v254 = OUTLINED_FUNCTION_39(v109);
    v105 = OUTLINED_FUNCTION_84_2(v254, v255, v256, v257, &qword_1EAE42E30, &qword_193997100);
    v108 = v105;
  }

  OUTLINED_FUNCTION_25_36(v105, v106, v107, v108);
  if (!(v18 ^ v19 | v12))
  {
    v258 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_85(v258, v259, v260, v261, &qword_1EAE42E30, &qword_193997100);
    v113 = v110;
  }

  OUTLINED_FUNCTION_22_38(v110, v111, v112, v113);
  if (!(v18 ^ v19 | v12))
  {
    v262 = OUTLINED_FUNCTION_39(v119);
    v115 = OUTLINED_FUNCTION_84_2(v262, v263, v264, v265, &qword_1EAE42E30, &qword_193997100);
    v118 = v115;
  }

  OUTLINED_FUNCTION_24_46(v115, v116, v117, v118);
  if (!(v18 ^ v19 | v12))
  {
    v266 = OUTLINED_FUNCTION_39(v124);
    v120 = OUTLINED_FUNCTION_85(v266, v267, v268, v269, &qword_1EAE42E30, &qword_193997100);
    v123 = v120;
  }

  OUTLINED_FUNCTION_21_45(v120, v121, v122, v123);
  if (!(v18 ^ v19 | v12))
  {
    v270 = OUTLINED_FUNCTION_39(v129);
    v125 = OUTLINED_FUNCTION_84_2(v270, v271, v272, v273, &qword_1EAE42E30, &qword_193997100);
    v128 = v125;
  }

  OUTLINED_FUNCTION_23_44(v125, v126, v127, v128);
  if (!(v18 ^ v19 | v12))
  {
    v274 = OUTLINED_FUNCTION_39(v134);
    v130 = OUTLINED_FUNCTION_85(v274, v275, v276, v277, &qword_1EAE42E30, &qword_193997100);
    v133 = v130;
  }

  OUTLINED_FUNCTION_28_32(v130, v131, v132, v133);
  if (!(v18 ^ v19 | v12))
  {
    v278 = OUTLINED_FUNCTION_39(v139);
    v135 = OUTLINED_FUNCTION_84_2(v278, v279, v280, v281, &qword_1EAE42E30, &qword_193997100);
    v138 = v135;
  }

  OUTLINED_FUNCTION_32_33(v135, v136, v137, v138);
  if (!(v18 ^ v19 | v12))
  {
    v282 = OUTLINED_FUNCTION_39(v144);
    v140 = OUTLINED_FUNCTION_85(v282, v283, v284, v285, &qword_1EAE42E30, &qword_193997100);
    v143 = v140;
  }

  OUTLINED_FUNCTION_30_29(v140, v141, v142, v143);
  if (!(v18 ^ v19 | v12))
  {
    v286 = OUTLINED_FUNCTION_39(v149);
    v145 = OUTLINED_FUNCTION_84_2(v286, v287, v288, v289, &qword_1EAE42E30, &qword_193997100);
    v148 = v145;
  }

  OUTLINED_FUNCTION_31_39(v145, v146, v147, v148);
  if (!(v18 ^ v19 | v12))
  {
    v290 = OUTLINED_FUNCTION_39(v154);
    v150 = OUTLINED_FUNCTION_85(v290, v291, v292, v293, &qword_1EAE42E30, &qword_193997100);
    v153 = v150;
  }

  OUTLINED_FUNCTION_47_5(v150, v151, v152, v153);
  OUTLINED_FUNCTION_4(v155);
  OUTLINED_FUNCTION_222_2();
  if (!(v18 ^ v19 | v12))
  {
    v294 = OUTLINED_FUNCTION_39(v160);
    v156 = OUTLINED_FUNCTION_84_2(v294, v295, v296, v297, &qword_1EAE42E30, &qword_193997100);
    v159 = v156;
  }

  OUTLINED_FUNCTION_50(v156, v157, v158, v159);
  OUTLINED_FUNCTION_4(v161);
  OUTLINED_FUNCTION_309_1();
  if (!(v18 ^ v19 | v12))
  {
    v298 = OUTLINED_FUNCTION_39(v166);
    v162 = OUTLINED_FUNCTION_85(v298, v299, v300, v301, &qword_1EAE42E30, &qword_193997100);
    v165 = v162;
  }

  OUTLINED_FUNCTION_47_5(v162, v163, v164, v165);
  OUTLINED_FUNCTION_4(v167);
  OUTLINED_FUNCTION_308_2();
  if (!(v18 ^ v19 | v12))
  {
    v302 = OUTLINED_FUNCTION_39(v172);
    v168 = OUTLINED_FUNCTION_84_2(v302, v303, v304, v305, &qword_1EAE42E30, &qword_193997100);
    v171 = v168;
  }

  OUTLINED_FUNCTION_50(v168, v169, v170, v171);
  return OUTLINED_FUNCTION_38_1(v173, v174);
}

uint64_t MomentsEventData.PhotoMomentInferenceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 2036490562;
  switch(*v0)
  {
    case 1:
      result = 7628112;
      break;
    case 2:
      result = OUTLINED_FUNCTION_147_9();
      break;
    case 3:
      result = 0x65727574614ELL;
      break;
    case 4:
      result = 0x6E6961746E756F4DLL;
      break;
    case 5:
      result = OUTLINED_FUNCTION_177_6();
      break;
    case 6:
      result = 1701670728;
      break;
    case 7:
      result = OUTLINED_FUNCTION_131_10();
      break;
    case 8:
      result = OUTLINED_FUNCTION_84_16();
      break;
    case 9:
      result = OUTLINED_FUNCTION_143_8();
      break;
    case 0xALL:
      result = OUTLINED_FUNCTION_122_10(1768646984);
      break;
    case 0xBLL:
      result = OUTLINED_FUNCTION_165_9(0x69626D696C43);
      break;
    case 0xCLL:
      result = OUTLINED_FUNCTION_165_9(0x696863616542);
      break;
    case 0xDLL:
      result = OUTLINED_FUNCTION_122_10(1769367876);
      break;
    case 0xELL:
      result = OUTLINED_FUNCTION_282_3();
      break;
    case 0xFLL:
      result = OUTLINED_FUNCTION_252_3();
      break;
    case 0x10:
      v2 = OUTLINED_FUNCTION_94_17();
      result = OUTLINED_FUNCTION_164_7(v2);
      break;
    case 0x11:
      result = OUTLINED_FUNCTION_290_2();
      break;
    case 0x12:
      result = OUTLINED_FUNCTION_111_14(0x7265636E6F43);
      break;
    case 0x13:
      result = OUTLINED_FUNCTION_199_3(0x766974736546);
      break;
    case 0x14:
      result = OUTLINED_FUNCTION_166_7(0x657461656854);
      break;
    case 0x15:
      result = OUTLINED_FUNCTION_115_12(1668178244);
      break;
    case 0x16:
      result = OUTLINED_FUNCTION_257_1(0x4574726F7053);
      break;
    case 0x17:
      result = 0x74754F746867694ELL;
      break;
    case 0x18:
      result = OUTLINED_FUNCTION_171_6();
      break;
    case 0x19:
      result = OUTLINED_FUNCTION_258_3(0x7262656C6543);
      break;
    case 0x1ALL:
      result = 0x7961646874726942;
      break;
    case 0x1BLL:
      result = OUTLINED_FUNCTION_291_1();
      break;
    case 0x1CLL:
      result = OUTLINED_FUNCTION_71_21(0x64646557u);
      break;
    case 0x1DLL:
      result = OUTLINED_FUNCTION_289_3();
      break;
    case 0x1ELL:
      result = 0x6E69726568746147;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.PhotoMomentInferenceType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 2036490562 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_19_8(2036490562) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 7628112 && v0 == 0xE300000000000000;
      if (v7 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_205_3();
        v8 = v4 && v0 == 0xE400000000000000;
        if (v8 || (OUTLINED_FUNCTION_19_8(1885958740) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x65727574614ELL && v0 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_21_38(0x65727574614ELL) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0x6E6961746E756F4DLL && v0 == 0xE800000000000000;
            if (v10 || (OUTLINED_FUNCTION_29_2(0x6E6961746E756F4DLL) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v11 = OUTLINED_FUNCTION_299_2(1667327298);
              v12 = v4 && v0 == 0xE500000000000000;
              if (v12 || (OUTLINED_FUNCTION_15_14(v11) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_201_3();
                v13 = v4 && v0 == 0xE400000000000000;
                if (v13 || (OUTLINED_FUNCTION_19_8(1701670728) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_130_12();
                  v14 = v4 && v0 == 0xE400000000000000;
                  if (v14 || (OUTLINED_FUNCTION_19_8(1802661719) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_65_0();
                    v17 = v4 && v16 == v0;
                    if (v17 || (OUTLINED_FUNCTION_44_25(v15, v16) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v18 = OUTLINED_FUNCTION_107_14();
                      v19 = v4 && v0 == 0xE800000000000000;
                      if (v19 || (OUTLINED_FUNCTION_29_2(v18) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v20 = OUTLINED_FUNCTION_113_12(1768646984);
                        v21 = v4 && v0 == 0xE600000000000000;
                        if (v21 || (OUTLINED_FUNCTION_21_38(v20) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v22 = OUTLINED_FUNCTION_156_8(0x69626D696C43);
                          v23 = v4 && v0 == 0xE800000000000000;
                          if (v23 || (OUTLINED_FUNCTION_29_2(v22) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v24 = OUTLINED_FUNCTION_156_8(0x696863616542);
                            v25 = v4 && v0 == 0xE800000000000000;
                            if (v25 || (OUTLINED_FUNCTION_29_2(v24) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v26 = OUTLINED_FUNCTION_113_12(1769367876);
                              v27 = v4 && v0 == 0xE600000000000000;
                              if (v27 || (OUTLINED_FUNCTION_21_38(v26) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v28 = OUTLINED_FUNCTION_282_3();
                                v30 = v1 == v28 && v0 == v29;
                                if (v30 || (OUTLINED_FUNCTION_0_9(v28, v29) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v31 = OUTLINED_FUNCTION_252_3();
                                  v33 = v1 == v31 && v0 == v32;
                                  if (v33 || (OUTLINED_FUNCTION_0_9(v31, v32) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v34 = OUTLINED_FUNCTION_94_17();
                                    v35 = OUTLINED_FUNCTION_210_2(v34);
                                    v37 = v4 && v0 == v36;
                                    if (v37 || (OUTLINED_FUNCTION_0_9(v35, v36) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v38 = OUTLINED_FUNCTION_290_2();
                                      v40 = v1 == v38 && v0 == v39;
                                      if (v40 || (OUTLINED_FUNCTION_0_9(v38, v39) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v41 = OUTLINED_FUNCTION_106_16(0x7265636E6F43);
                                        v42 = v4 && v0 == 0xE700000000000000;
                                        if (v42 || (OUTLINED_FUNCTION_22_7(v41) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v43 = OUTLINED_FUNCTION_223_3(0x766974736546);
                                          v44 = v4 && v0 == 0xE800000000000000;
                                          if (v44 || (OUTLINED_FUNCTION_29_2(v43) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v45 = OUTLINED_FUNCTION_181_8(0x657461656854);
                                            v46 = v4 && v0 == 0xE700000000000000;
                                            if (v46 || (OUTLINED_FUNCTION_22_7(v45) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v47 = OUTLINED_FUNCTION_116_15(1668178244);
                                              v48 = v4 && v0 == 0xE500000000000000;
                                              if (v48 || (OUTLINED_FUNCTION_15_14(v47) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_296_2(0x4574726F7053);
                                                v50 = v4 && v0 == v49;
                                                if (v50 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v51 = v1 == 0x74754F746867694ELL && v0 == 0xE800000000000000;
                                                  if (v51 || (OUTLINED_FUNCTION_29_2(0x74754F746867694ELL) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v52 = OUTLINED_FUNCTION_300_2();
                                                    v53 = v4 && v0 == 0xE600000000000000;
                                                    if (v53 || (OUTLINED_FUNCTION_21_38(v52) & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      v54 = OUTLINED_FUNCTION_192_3(0x7262656C6543);
                                                      v56 = v4 && v0 == v55;
                                                      if (v56 || (OUTLINED_FUNCTION_0_9(v54, v55) & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v57 = v1 == 0x7961646874726942 && v0 == 0xE800000000000000;
                                                        if (v57 || (OUTLINED_FUNCTION_29_2(0x7961646874726942) & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v58 = OUTLINED_FUNCTION_291_1();
                                                          v60 = v1 == v58 && v0 == v59;
                                                          if (v60 || (OUTLINED_FUNCTION_0_9(v58, v59) & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            v61 = OUTLINED_FUNCTION_46_24(0x64646557u);
                                                            v62 = v4 && v0 == 0xE700000000000000;
                                                            if (v62 || (OUTLINED_FUNCTION_22_7(v61) & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              v63 = OUTLINED_FUNCTION_289_3();
                                                              v65 = v1 == v63 && v0 == v64;
                                                              if (v65 || (OUTLINED_FUNCTION_0_9(v63, v64) & 1) != 0)
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else if (v1 == 0x6E69726568746147 && v0 == 0xE900000000000067)
                                                              {

                                                                OUTLINED_FUNCTION_196_5();
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_30_22(0x6E69726568746147, 103);
                                                                OUTLINED_FUNCTION_89();
                                                                v5 = 30;
                                                                if ((v1 & 1) == 0)
                                                                {
                                                                  v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

void MomentsEventData.WorkoutActivityType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 0;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    case 5:
      v2 = 4;
      break;
    case 6:
      v2 = 5;
      break;
    case 7:
      v2 = 6;
      break;
    case 8:
      v2 = 7;
      break;
    case 9:
      v2 = 8;
      break;
    case 10:
      v2 = 9;
      break;
    case 11:
      v2 = 10;
      break;
    case 12:
      v2 = 11;
      break;
    case 13:
      v2 = 12;
      break;
    case 14:
      v2 = 13;
      break;
    case 15:
      v2 = 14;
      break;
    case 16:
      v2 = 15;
      break;
    case 17:
      v2 = 16;
      break;
    case 18:
      v2 = 17;
      break;
    case 19:
      v2 = 18;
      break;
    case 20:
      v2 = 19;
      break;
    case 21:
      v2 = 20;
      break;
    case 22:
      v2 = 21;
      break;
    case 23:
      v2 = 22;
      break;
    case 24:
      v2 = 23;
      break;
    case 25:
      v2 = 24;
      break;
    case 26:
      v2 = 25;
      break;
    case 27:
      v2 = 26;
      break;
    case 28:
      v2 = 27;
      break;
    case 29:
      v2 = 28;
      break;
    case 30:
      v2 = 29;
      break;
    case 31:
      v2 = 30;
      break;
    case 32:
      v2 = 31;
      break;
    case 33:
      v2 = 32;
      break;
    case 34:
      v2 = 33;
      break;
    case 35:
      v2 = 34;
      break;
    case 36:
      v2 = 35;
      break;
    case 37:
      v2 = 36;
      break;
    case 38:
      v2 = 37;
      break;
    case 39:
      v2 = 38;
      break;
    case 40:
      v2 = 39;
      break;
    case 41:
      v2 = 40;
      break;
    case 42:
      v2 = 41;
      break;
    case 43:
      v2 = 42;
      break;
    case 44:
      v2 = 43;
      break;
    case 45:
      v2 = 44;
      break;
    case 46:
      v2 = 45;
      break;
    case 47:
      v2 = 46;
      break;
    case 48:
      v2 = 47;
      break;
    case 49:
      v2 = 48;
      break;
    case 50:
      v2 = 49;
      break;
    case 51:
      v2 = 50;
      break;
    case 52:
      v2 = 51;
      break;
    case 53:
      v2 = 52;
      break;
    case 54:
      v2 = 53;
      break;
    case 55:
      v2 = 54;
      break;
    case 56:
      v2 = 55;
      break;
    case 57:
      v2 = 56;
      break;
    case 58:
      v2 = 57;
      break;
    case 59:
      v2 = 58;
      break;
    case 60:
      v2 = 59;
      break;
    case 61:
      v2 = 60;
      break;
    case 62:
      v2 = 61;
      break;
    case 63:
      v2 = 62;
      break;
    case 64:
      v2 = 63;
      break;
    case 65:
      v2 = 64;
      break;
    case 66:
      v2 = 65;
      break;
    case 67:
      v2 = 66;
      break;
    case 68:
      v2 = 67;
      break;
    case 69:
      v2 = 68;
      break;
    case 70:
      v2 = 69;
      break;
    case 71:
      v2 = 70;
      break;
    case 72:
      v2 = 71;
      break;
    case 73:
      v2 = 72;
      break;
    case 74:
      v2 = 73;
      break;
    case 75:
      v2 = 74;
      break;
    case 76:
      v2 = 75;
      break;
    case 77:
      v2 = 76;
      break;
    case 78:
      v2 = 77;
      break;
    case 79:
      v2 = 78;
      break;
    case 80:
      v2 = 79;
      break;
    case 81:
      goto LABEL_5;
    case 82:
      v2 = 80;
      break;
    case 83:
      v2 = 81;
      break;
    case 84:
      v2 = 82;
      break;
    default:
      if (a2 == 3000)
      {
        v2 = 83;
      }

      else
      {
LABEL_5:
        v2 = a2;
      }

      break;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MomentsEventData.WorkoutActivityType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1939971E8[result];
  }

  return result;
}

uint64_t static MomentsEventData.WorkoutActivityType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v495 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v495, v496, v497, v498, &qword_1EAE42E28, &qword_1939970F8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v499 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v499, v500, v501, v502, &qword_1EAE42E28, &qword_1939970F8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v503, v504, v505, v506, v507, v508);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v509 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v509, v510, v511, v512, &qword_1EAE42E28, &qword_1939970F8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v513 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v513, v514, v515, v516, &qword_1EAE42E28, &qword_1939970F8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v517 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v517, v518, v519, v520, &qword_1EAE42E28, &qword_1939970F8);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v521 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v521, v522, v523, v524, &qword_1EAE42E28, &qword_1939970F8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v525 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v525, v526, v527, v528, &qword_1EAE42E28, &qword_1939970F8);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v529 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v529, v530, v531, v532, &qword_1EAE42E28, &qword_1939970F8);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v533 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v533, v534, v535, v536, &qword_1EAE42E28, &qword_1939970F8);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v537 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v537, v538, v539, v540, &qword_1EAE42E28, &qword_1939970F8);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v541 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v541, v542, v543, v544, &qword_1EAE42E28, &qword_1939970F8);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v545 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v545, v546, v547, v548, &qword_1EAE42E28, &qword_1939970F8);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v549 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v549, v550, v551, v552, &qword_1EAE42E28, &qword_1939970F8);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v553 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v553, v554, v555, v556, &qword_1EAE42E28, &qword_1939970F8);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v557 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v557, v558, v559, v560, &qword_1EAE42E28, &qword_1939970F8);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v561 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v561, v562, v563, v564, &qword_1EAE42E28, &qword_1939970F8);
    v94 = v91;
  }

  OUTLINED_FUNCTION_17_41(v91, v92, v93, v94);
  if (!(v19 ^ v20 | v13))
  {
    v565 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v565, v566, v567, v568, &qword_1EAE42E28, &qword_1939970F8);
    v99 = v96;
  }

  OUTLINED_FUNCTION_19_54(v96, v97, v98, v99);
  if (!(v19 ^ v20 | v13))
  {
    v569 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v569, v570, v571, v572, &qword_1EAE42E28, &qword_1939970F8);
    v104 = v101;
  }

  OUTLINED_FUNCTION_20_47(v101, v102, v103, v104);
  if (!(v19 ^ v20 | v13))
  {
    v573 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_84_2(v573, v574, v575, v576, &qword_1EAE42E28, &qword_1939970F8);
    v109 = v106;
  }

  OUTLINED_FUNCTION_25_36(v106, v107, v108, v109);
  if (!(v19 ^ v20 | v13))
  {
    v577 = OUTLINED_FUNCTION_39(v115);
    v111 = OUTLINED_FUNCTION_85(v577, v578, v579, v580, &qword_1EAE42E28, &qword_1939970F8);
    v114 = v111;
  }

  OUTLINED_FUNCTION_22_38(v111, v112, v113, v114);
  if (!(v19 ^ v20 | v13))
  {
    v581 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v581, v582, v583, v584, &qword_1EAE42E28, &qword_1939970F8);
    v119 = v116;
  }

  OUTLINED_FUNCTION_24_46(v116, v117, v118, v119);
  if (!(v19 ^ v20 | v13))
  {
    v585 = OUTLINED_FUNCTION_39(v125);
    v121 = OUTLINED_FUNCTION_85(v585, v586, v587, v588, &qword_1EAE42E28, &qword_1939970F8);
    v124 = v121;
  }

  OUTLINED_FUNCTION_21_45(v121, v122, v123, v124);
  if (!(v19 ^ v20 | v13))
  {
    v589 = OUTLINED_FUNCTION_39(v130);
    v126 = OUTLINED_FUNCTION_84_2(v589, v590, v591, v592, &qword_1EAE42E28, &qword_1939970F8);
    v129 = v126;
  }

  OUTLINED_FUNCTION_23_44(v126, v127, v128, v129);
  if (!(v19 ^ v20 | v13))
  {
    v593 = OUTLINED_FUNCTION_39(v135);
    v131 = OUTLINED_FUNCTION_85(v593, v594, v595, v596, &qword_1EAE42E28, &qword_1939970F8);
    v134 = v131;
  }

  OUTLINED_FUNCTION_28_32(v131, v132, v133, v134);
  if (!(v19 ^ v20 | v13))
  {
    v597 = OUTLINED_FUNCTION_39(v140);
    v136 = OUTLINED_FUNCTION_84_2(v597, v598, v599, v600, &qword_1EAE42E28, &qword_1939970F8);
    v139 = v136;
  }

  OUTLINED_FUNCTION_32_33(v136, v137, v138, v139);
  if (!(v19 ^ v20 | v13))
  {
    v601 = OUTLINED_FUNCTION_39(v145);
    v141 = OUTLINED_FUNCTION_85(v601, v602, v603, v604, &qword_1EAE42E28, &qword_1939970F8);
    v144 = v141;
  }

  OUTLINED_FUNCTION_30_29(v141, v142, v143, v144);
  if (!(v19 ^ v20 | v13))
  {
    v605 = OUTLINED_FUNCTION_39(v150);
    v146 = OUTLINED_FUNCTION_84_2(v605, v606, v607, v608, &qword_1EAE42E28, &qword_1939970F8);
    v149 = v146;
  }

  OUTLINED_FUNCTION_31_39(v146, v147, v148, v149);
  if (!(v19 ^ v20 | v13))
  {
    v609 = OUTLINED_FUNCTION_39(v155);
    v151 = OUTLINED_FUNCTION_85(v609, v610, v611, v612, &qword_1EAE42E28, &qword_1939970F8);
    v154 = v151;
  }

  OUTLINED_FUNCTION_47_5(v151, v152, v153, v154);
  OUTLINED_FUNCTION_4(v156);
  OUTLINED_FUNCTION_222_2();
  if (!(v19 ^ v20 | v13))
  {
    v613 = OUTLINED_FUNCTION_39(v161);
    v157 = OUTLINED_FUNCTION_84_2(v613, v614, v615, v616, &qword_1EAE42E28, &qword_1939970F8);
    v160 = v157;
  }

  OUTLINED_FUNCTION_50(v157, v158, v159, v160);
  OUTLINED_FUNCTION_4(v162);
  OUTLINED_FUNCTION_309_1();
  if (!(v19 ^ v20 | v13))
  {
    v617 = OUTLINED_FUNCTION_39(v167);
    v163 = OUTLINED_FUNCTION_85(v617, v618, v619, v620, &qword_1EAE42E28, &qword_1939970F8);
    v166 = v163;
  }

  OUTLINED_FUNCTION_47_5(v163, v164, v165, v166);
  OUTLINED_FUNCTION_4(v168);
  OUTLINED_FUNCTION_308_2();
  if (!(v19 ^ v20 | v13))
  {
    v621 = OUTLINED_FUNCTION_39(v173);
    v169 = OUTLINED_FUNCTION_84_2(v621, v622, v623, v624, &qword_1EAE42E28, &qword_1939970F8);
    v172 = v169;
  }

  OUTLINED_FUNCTION_50(v169, v170, v171, v172);
  OUTLINED_FUNCTION_4(v174);
  if (v0 + 33 > (v179 >> 1))
  {
    v625 = OUTLINED_FUNCTION_39(v179);
    v175 = OUTLINED_FUNCTION_85(v625, v626, v627, v628, &qword_1EAE42E28, &qword_1939970F8);
    v178 = v175;
  }

  OUTLINED_FUNCTION_47_5(v175, v176, v177, v178);
  OUTLINED_FUNCTION_4(v180);
  if (v0 + 34 > (v185 >> 1))
  {
    v629 = OUTLINED_FUNCTION_39(v185);
    v181 = OUTLINED_FUNCTION_84_2(v629, v630, v631, v632, &qword_1EAE42E28, &qword_1939970F8);
    v184 = v181;
  }

  OUTLINED_FUNCTION_50(v181, v182, v183, v184);
  OUTLINED_FUNCTION_4(v186);
  if (v0 + 35 > (v191 >> 1))
  {
    v633 = OUTLINED_FUNCTION_39(v191);
    v187 = OUTLINED_FUNCTION_85(v633, v634, v635, v636, &qword_1EAE42E28, &qword_1939970F8);
    v190 = v187;
  }

  OUTLINED_FUNCTION_47_5(v187, v188, v189, v190);
  OUTLINED_FUNCTION_4(v192);
  if (v0 + 36 > (v197 >> 1))
  {
    v637 = OUTLINED_FUNCTION_39(v197);
    v193 = OUTLINED_FUNCTION_84_2(v637, v638, v639, v640, &qword_1EAE42E28, &qword_1939970F8);
    v196 = v193;
  }

  OUTLINED_FUNCTION_50(v193, v194, v195, v196);
  OUTLINED_FUNCTION_4(v198);
  if (v0 + 37 > (v203 >> 1))
  {
    v641 = OUTLINED_FUNCTION_39(v203);
    v199 = OUTLINED_FUNCTION_85(v641, v642, v643, v644, &qword_1EAE42E28, &qword_1939970F8);
    v202 = v199;
  }

  OUTLINED_FUNCTION_47_5(v199, v200, v201, v202);
  OUTLINED_FUNCTION_4(v204);
  if (v0 + 38 > (v209 >> 1))
  {
    v645 = OUTLINED_FUNCTION_39(v209);
    v205 = OUTLINED_FUNCTION_84_2(v645, v646, v647, v648, &qword_1EAE42E28, &qword_1939970F8);
    v208 = v205;
  }

  OUTLINED_FUNCTION_50(v205, v206, v207, v208);
  OUTLINED_FUNCTION_4(v210);
  if (v0 + 39 > (v215 >> 1))
  {
    v649 = OUTLINED_FUNCTION_39(v215);
    v211 = OUTLINED_FUNCTION_85(v649, v650, v651, v652, &qword_1EAE42E28, &qword_1939970F8);
    v214 = v211;
  }

  OUTLINED_FUNCTION_47_5(v211, v212, v213, v214);
  OUTLINED_FUNCTION_4(v216);
  if (v0 + 40 > (v221 >> 1))
  {
    v653 = OUTLINED_FUNCTION_39(v221);
    v217 = OUTLINED_FUNCTION_84_2(v653, v654, v655, v656, &qword_1EAE42E28, &qword_1939970F8);
    v220 = v217;
  }

  OUTLINED_FUNCTION_50(v217, v218, v219, v220);
  OUTLINED_FUNCTION_4(v222);
  if (v0 + 41 > (v227 >> 1))
  {
    v657 = OUTLINED_FUNCTION_39(v227);
    v223 = OUTLINED_FUNCTION_85(v657, v658, v659, v660, &qword_1EAE42E28, &qword_1939970F8);
    v226 = v223;
  }

  OUTLINED_FUNCTION_47_5(v223, v224, v225, v226);
  OUTLINED_FUNCTION_4(v228);
  if (v0 + 42 > (v233 >> 1))
  {
    v661 = OUTLINED_FUNCTION_39(v233);
    v229 = OUTLINED_FUNCTION_84_2(v661, v662, v663, v664, &qword_1EAE42E28, &qword_1939970F8);
    v232 = v229;
  }

  OUTLINED_FUNCTION_50(v229, v230, v231, v232);
  OUTLINED_FUNCTION_4(v234);
  if (v0 + 43 > (v239 >> 1))
  {
    v665 = OUTLINED_FUNCTION_39(v239);
    v235 = OUTLINED_FUNCTION_85(v665, v666, v667, v668, &qword_1EAE42E28, &qword_1939970F8);
    v238 = v235;
  }

  OUTLINED_FUNCTION_47_5(v235, v236, v237, v238);
  OUTLINED_FUNCTION_4(v240);
  if (v0 + 44 > (v245 >> 1))
  {
    v669 = OUTLINED_FUNCTION_39(v245);
    v241 = OUTLINED_FUNCTION_84_2(v669, v670, v671, v672, &qword_1EAE42E28, &qword_1939970F8);
    v244 = v241;
  }

  OUTLINED_FUNCTION_50(v241, v242, v243, v244);
  OUTLINED_FUNCTION_4(v246);
  if (v0 + 45 > (v251 >> 1))
  {
    v673 = OUTLINED_FUNCTION_39(v251);
    v247 = OUTLINED_FUNCTION_85(v673, v674, v675, v676, &qword_1EAE42E28, &qword_1939970F8);
    v250 = v247;
  }

  OUTLINED_FUNCTION_47_5(v247, v248, v249, v250);
  OUTLINED_FUNCTION_4(v252);
  if (v0 + 46 > (v257 >> 1))
  {
    v677 = OUTLINED_FUNCTION_39(v257);
    v253 = OUTLINED_FUNCTION_84_2(v677, v678, v679, v680, &qword_1EAE42E28, &qword_1939970F8);
    v256 = v253;
  }

  OUTLINED_FUNCTION_50(v253, v254, v255, v256);
  OUTLINED_FUNCTION_4(v258);
  if (v0 + 47 > (v263 >> 1))
  {
    v681 = OUTLINED_FUNCTION_39(v263);
    v259 = OUTLINED_FUNCTION_85(v681, v682, v683, v684, &qword_1EAE42E28, &qword_1939970F8);
    v262 = v259;
  }

  OUTLINED_FUNCTION_47_5(v259, v260, v261, v262);
  OUTLINED_FUNCTION_4(v264);
  if (v0 + 48 > (v269 >> 1))
  {
    v685 = OUTLINED_FUNCTION_39(v269);
    v265 = OUTLINED_FUNCTION_84_2(v685, v686, v687, v688, &qword_1EAE42E28, &qword_1939970F8);
    v268 = v265;
  }

  OUTLINED_FUNCTION_50(v265, v266, v267, v268);
  OUTLINED_FUNCTION_4(v270);
  if (v0 + 49 > (v275 >> 1))
  {
    v689 = OUTLINED_FUNCTION_39(v275);
    v271 = OUTLINED_FUNCTION_85(v689, v690, v691, v692, &qword_1EAE42E28, &qword_1939970F8);
    v274 = v271;
  }

  OUTLINED_FUNCTION_47_5(v271, v272, v273, v274);
  OUTLINED_FUNCTION_4(v276);
  if (v0 + 50 > (v281 >> 1))
  {
    v693 = OUTLINED_FUNCTION_39(v281);
    v277 = OUTLINED_FUNCTION_84_2(v693, v694, v695, v696, &qword_1EAE42E28, &qword_1939970F8);
    v280 = v277;
  }

  OUTLINED_FUNCTION_50(v277, v278, v279, v280);
  OUTLINED_FUNCTION_4(v282);
  if (v0 + 51 > (v287 >> 1))
  {
    v697 = OUTLINED_FUNCTION_39(v287);
    v283 = OUTLINED_FUNCTION_85(v697, v698, v699, v700, &qword_1EAE42E28, &qword_1939970F8);
    v286 = v283;
  }

  OUTLINED_FUNCTION_47_5(v283, v284, v285, v286);
  OUTLINED_FUNCTION_4(v288);
  if (v0 + 52 > (v293 >> 1))
  {
    v701 = OUTLINED_FUNCTION_39(v293);
    v289 = OUTLINED_FUNCTION_84_2(v701, v702, v703, v704, &qword_1EAE42E28, &qword_1939970F8);
    v292 = v289;
  }

  OUTLINED_FUNCTION_50(v289, v290, v291, v292);
  OUTLINED_FUNCTION_4(v294);
  if (v0 + 53 > (v299 >> 1))
  {
    v705 = OUTLINED_FUNCTION_39(v299);
    v295 = OUTLINED_FUNCTION_85(v705, v706, v707, v708, &qword_1EAE42E28, &qword_1939970F8);
    v298 = v295;
  }

  OUTLINED_FUNCTION_47_5(v295, v296, v297, v298);
  OUTLINED_FUNCTION_4(v300);
  if (v0 + 54 > (v305 >> 1))
  {
    v709 = OUTLINED_FUNCTION_39(v305);
    v301 = OUTLINED_FUNCTION_84_2(v709, v710, v711, v712, &qword_1EAE42E28, &qword_1939970F8);
    v304 = v301;
  }

  OUTLINED_FUNCTION_50(v301, v302, v303, v304);
  OUTLINED_FUNCTION_4(v306);
  if (v0 + 55 > (v311 >> 1))
  {
    v713 = OUTLINED_FUNCTION_39(v311);
    v307 = OUTLINED_FUNCTION_85(v713, v714, v715, v716, &qword_1EAE42E28, &qword_1939970F8);
    v310 = v307;
  }

  OUTLINED_FUNCTION_47_5(v307, v308, v309, v310);
  OUTLINED_FUNCTION_4(v312);
  if (v0 + 56 > (v317 >> 1))
  {
    v717 = OUTLINED_FUNCTION_39(v317);
    v313 = OUTLINED_FUNCTION_84_2(v717, v718, v719, v720, &qword_1EAE42E28, &qword_1939970F8);
    v316 = v313;
  }

  OUTLINED_FUNCTION_50(v313, v314, v315, v316);
  OUTLINED_FUNCTION_4(v318);
  if (v0 + 57 > (v323 >> 1))
  {
    v721 = OUTLINED_FUNCTION_39(v323);
    v319 = OUTLINED_FUNCTION_85(v721, v722, v723, v724, &qword_1EAE42E28, &qword_1939970F8);
    v322 = v319;
  }

  OUTLINED_FUNCTION_47_5(v319, v320, v321, v322);
  OUTLINED_FUNCTION_4(v324);
  if (v0 + 58 > (v329 >> 1))
  {
    v725 = OUTLINED_FUNCTION_39(v329);
    v325 = OUTLINED_FUNCTION_84_2(v725, v726, v727, v728, &qword_1EAE42E28, &qword_1939970F8);
    v328 = v325;
  }

  OUTLINED_FUNCTION_50(v325, v326, v327, v328);
  OUTLINED_FUNCTION_4(v330);
  if (v0 + 59 > (v335 >> 1))
  {
    v729 = OUTLINED_FUNCTION_39(v335);
    v331 = OUTLINED_FUNCTION_85(v729, v730, v731, v732, &qword_1EAE42E28, &qword_1939970F8);
    v334 = v331;
  }

  OUTLINED_FUNCTION_47_5(v331, v332, v333, v334);
  OUTLINED_FUNCTION_4(v336);
  if (v0 + 60 > (v341 >> 1))
  {
    v733 = OUTLINED_FUNCTION_39(v341);
    v337 = OUTLINED_FUNCTION_84_2(v733, v734, v735, v736, &qword_1EAE42E28, &qword_1939970F8);
    v340 = v337;
  }

  OUTLINED_FUNCTION_50(v337, v338, v339, v340);
  OUTLINED_FUNCTION_4(v342);
  if (v0 + 61 > (v347 >> 1))
  {
    v737 = OUTLINED_FUNCTION_39(v347);
    v343 = OUTLINED_FUNCTION_85(v737, v738, v739, v740, &qword_1EAE42E28, &qword_1939970F8);
    v346 = v343;
  }

  OUTLINED_FUNCTION_47_5(v343, v344, v345, v346);
  OUTLINED_FUNCTION_4(v348);
  if (v0 + 62 > (v353 >> 1))
  {
    v741 = OUTLINED_FUNCTION_39(v353);
    v349 = OUTLINED_FUNCTION_84_2(v741, v742, v743, v744, &qword_1EAE42E28, &qword_1939970F8);
    v352 = v349;
  }

  OUTLINED_FUNCTION_50(v349, v350, v351, v352);
  OUTLINED_FUNCTION_4(v354);
  if (v0 + 63 > (v359 >> 1))
  {
    v745 = OUTLINED_FUNCTION_39(v359);
    v355 = OUTLINED_FUNCTION_85(v745, v746, v747, v748, &qword_1EAE42E28, &qword_1939970F8);
    v358 = v355;
  }

  OUTLINED_FUNCTION_47_5(v355, v356, v357, v358);
  OUTLINED_FUNCTION_4(v360);
  if (v0 + 64 > (v365 >> 1))
  {
    v749 = OUTLINED_FUNCTION_39(v365);
    v361 = OUTLINED_FUNCTION_84_2(v749, v750, v751, v752, &qword_1EAE42E28, &qword_1939970F8);
    v364 = v361;
  }

  OUTLINED_FUNCTION_50(v361, v362, v363, v364);
  OUTLINED_FUNCTION_4(v366);
  if (v0 + 65 > (v371 >> 1))
  {
    v753 = OUTLINED_FUNCTION_39(v371);
    v367 = OUTLINED_FUNCTION_85(v753, v754, v755, v756, &qword_1EAE42E28, &qword_1939970F8);
    v370 = v367;
  }

  OUTLINED_FUNCTION_47_5(v367, v368, v369, v370);
  OUTLINED_FUNCTION_4(v372);
  if (v0 + 66 > (v377 >> 1))
  {
    v757 = OUTLINED_FUNCTION_39(v377);
    v373 = OUTLINED_FUNCTION_84_2(v757, v758, v759, v760, &qword_1EAE42E28, &qword_1939970F8);
    v376 = v373;
  }

  OUTLINED_FUNCTION_50(v373, v374, v375, v376);
  OUTLINED_FUNCTION_4(v378);
  if (v0 + 67 > (v383 >> 1))
  {
    v761 = OUTLINED_FUNCTION_39(v383);
    v379 = OUTLINED_FUNCTION_85(v761, v762, v763, v764, &qword_1EAE42E28, &qword_1939970F8);
    v382 = v379;
  }

  OUTLINED_FUNCTION_47_5(v379, v380, v381, v382);
  OUTLINED_FUNCTION_4(v384);
  if (v0 + 68 > (v389 >> 1))
  {
    v765 = OUTLINED_FUNCTION_39(v389);
    v385 = OUTLINED_FUNCTION_84_2(v765, v766, v767, v768, &qword_1EAE42E28, &qword_1939970F8);
    v388 = v385;
  }

  OUTLINED_FUNCTION_50(v385, v386, v387, v388);
  OUTLINED_FUNCTION_4(v390);
  if (v0 + 69 > (v395 >> 1))
  {
    v769 = OUTLINED_FUNCTION_39(v395);
    v391 = OUTLINED_FUNCTION_85(v769, v770, v771, v772, &qword_1EAE42E28, &qword_1939970F8);
    v394 = v391;
  }

  OUTLINED_FUNCTION_47_5(v391, v392, v393, v394);
  OUTLINED_FUNCTION_4(v396);
  if (v0 + 70 > (v401 >> 1))
  {
    v773 = OUTLINED_FUNCTION_39(v401);
    v397 = OUTLINED_FUNCTION_84_2(v773, v774, v775, v776, &qword_1EAE42E28, &qword_1939970F8);
    v400 = v397;
  }

  OUTLINED_FUNCTION_50(v397, v398, v399, v400);
  OUTLINED_FUNCTION_4(v402);
  if (v0 + 71 > (v407 >> 1))
  {
    v777 = OUTLINED_FUNCTION_39(v407);
    v403 = OUTLINED_FUNCTION_85(v777, v778, v779, v780, &qword_1EAE42E28, &qword_1939970F8);
    v406 = v403;
  }

  OUTLINED_FUNCTION_47_5(v403, v404, v405, v406);
  OUTLINED_FUNCTION_4(v408);
  if (v0 + 72 > (v413 >> 1))
  {
    v781 = OUTLINED_FUNCTION_39(v413);
    v409 = OUTLINED_FUNCTION_84_2(v781, v782, v783, v784, &qword_1EAE42E28, &qword_1939970F8);
    v412 = v409;
  }

  OUTLINED_FUNCTION_50(v409, v410, v411, v412);
  OUTLINED_FUNCTION_4(v414);
  if (v0 + 73 > (v419 >> 1))
  {
    v785 = OUTLINED_FUNCTION_39(v419);
    v415 = OUTLINED_FUNCTION_85(v785, v786, v787, v788, &qword_1EAE42E28, &qword_1939970F8);
    v418 = v415;
  }

  OUTLINED_FUNCTION_47_5(v415, v416, v417, v418);
  OUTLINED_FUNCTION_4(v420);
  if (v0 + 74 > (v425 >> 1))
  {
    v789 = OUTLINED_FUNCTION_39(v425);
    v421 = OUTLINED_FUNCTION_84_2(v789, v790, v791, v792, &qword_1EAE42E28, &qword_1939970F8);
    v424 = v421;
  }

  OUTLINED_FUNCTION_50(v421, v422, v423, v424);
  OUTLINED_FUNCTION_4(v426);
  if (v0 + 75 > (v431 >> 1))
  {
    v793 = OUTLINED_FUNCTION_39(v431);
    v427 = OUTLINED_FUNCTION_85(v793, v794, v795, v796, &qword_1EAE42E28, &qword_1939970F8);
    v430 = v427;
  }

  OUTLINED_FUNCTION_47_5(v427, v428, v429, v430);
  OUTLINED_FUNCTION_4(v432);
  if (v0 + 76 > (v437 >> 1))
  {
    v797 = OUTLINED_FUNCTION_39(v437);
    v433 = OUTLINED_FUNCTION_84_2(v797, v798, v799, v800, &qword_1EAE42E28, &qword_1939970F8);
    v436 = v433;
  }

  OUTLINED_FUNCTION_50(v433, v434, v435, v436);
  OUTLINED_FUNCTION_4(v438);
  if (v0 + 77 > (v443 >> 1))
  {
    v801 = OUTLINED_FUNCTION_39(v443);
    v439 = OUTLINED_FUNCTION_85(v801, v802, v803, v804, &qword_1EAE42E28, &qword_1939970F8);
    v442 = v439;
  }

  OUTLINED_FUNCTION_47_5(v439, v440, v441, v442);
  OUTLINED_FUNCTION_4(v444);
  if (v0 + 78 > (v449 >> 1))
  {
    v805 = OUTLINED_FUNCTION_39(v449);
    v445 = OUTLINED_FUNCTION_84_2(v805, v806, v807, v808, &qword_1EAE42E28, &qword_1939970F8);
    v448 = v445;
  }

  OUTLINED_FUNCTION_50(v445, v446, v447, v448);
  OUTLINED_FUNCTION_4(v450);
  if (v0 + 79 > (v455 >> 1))
  {
    v809 = OUTLINED_FUNCTION_39(v455);
    v451 = OUTLINED_FUNCTION_85(v809, v810, v811, v812, &qword_1EAE42E28, &qword_1939970F8);
    v454 = v451;
  }

  OUTLINED_FUNCTION_47_5(v451, v452, v453, v454);
  OUTLINED_FUNCTION_4(v456);
  if (v0 + 80 > (v461 >> 1))
  {
    v813 = OUTLINED_FUNCTION_39(v461);
    v457 = OUTLINED_FUNCTION_84_2(v813, v814, v815, v816, &qword_1EAE42E28, &qword_1939970F8);
    v460 = v457;
  }

  OUTLINED_FUNCTION_50(v457, v458, v459, v460);
  OUTLINED_FUNCTION_4(v462);
  if (v0 + 81 > (v467 >> 1))
  {
    v817 = OUTLINED_FUNCTION_39(v467);
    v463 = OUTLINED_FUNCTION_85(v817, v818, v819, v820, &qword_1EAE42E28, &qword_1939970F8);
    v466 = v463;
  }

  OUTLINED_FUNCTION_47_5(v463, v464, v465, v466);
  OUTLINED_FUNCTION_4(v468);
  if (v0 + 82 > (v473 >> 1))
  {
    v821 = OUTLINED_FUNCTION_39(v473);
    v469 = OUTLINED_FUNCTION_84_2(v821, v822, v823, v824, &qword_1EAE42E28, &qword_1939970F8);
    v472 = v469;
  }

  OUTLINED_FUNCTION_50(v469, v470, v471, v472);
  OUTLINED_FUNCTION_4(v474);
  if (v0 + 83 > (v479 >> 1))
  {
    v825 = OUTLINED_FUNCTION_39(v479);
    v475 = OUTLINED_FUNCTION_85(v825, v826, v827, v828, &qword_1EAE42E28, &qword_1939970F8);
    v478 = v475;
  }

  OUTLINED_FUNCTION_47_5(v475, v476, v477, v478);
  OUTLINED_FUNCTION_4(v480);
  if (v0 + 84 > (v485 >> 1))
  {
    v829 = OUTLINED_FUNCTION_39(v485);
    v481 = OUTLINED_FUNCTION_84_2(v829, v830, v831, v832, &qword_1EAE42E28, &qword_1939970F8);
    v484 = v481;
  }

  OUTLINED_FUNCTION_50(v481, v482, v483, v484);
  OUTLINED_FUNCTION_4(v486);
  if (v0 + 85 > (v491 >> 1))
  {
    v833 = OUTLINED_FUNCTION_39(v491);
    v487 = OUTLINED_FUNCTION_85(v833, v834, v835, v836, &qword_1EAE42E28, &qword_1939970F8);
    v490 = v487;
  }

  OUTLINED_FUNCTION_47_5(v487, v488, v489, v490);
  return OUTLINED_FUNCTION_89_3(v492, v493);
}

void MomentsEventData.WorkoutActivityType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 3:
      case 4:
      case 0xFLL:
      case 0x15:
      case 0x16:
      case 0x18:
      case 0x1ALL:
      case 0x1FLL:
      case 0x26:
      case 0x27:
      case 0x29:
      case 0x2ALL:
      case 0x2BLL:
      case 0x2CLL:
      case 0x35:
      case 0x38:
      case 0x3ALL:
      case 0x3DLL:
      case 0x3FLL:
      case 0x40:
      case 0x43:
      case 0x44:
      case 0x47:
      case 0x4ALL:
      case 0x4BLL:
      case 0x4FLL:
      case 0x51:
      case 0x53:
        return;
      case 2:
      case 0x3BLL:
      case 0x45:
        OUTLINED_FUNCTION_75();
        break;
      case 5:
      case 0x32:
      case 0x4ELL:
        OUTLINED_FUNCTION_118_14();
        break;
      case 6:
        OUTLINED_FUNCTION_71_21(0x6C776F42u);
        break;
      case 7:
        OUTLINED_FUNCTION_122_10(1769500482);
        break;
      case 8:
        OUTLINED_FUNCTION_165_9(0x69626D696C43);
        break;
      case 9:
        OUTLINED_FUNCTION_111_14(0x656B63697243);
        break;
      case 0xALL:
        OUTLINED_FUNCTION_259_2(0x5473736F7243);
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_71_21(0x6C727543u);
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_71_21(0x6C637943u);
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_115_12(1668178244);
        break;
      case 0x11:
        OUTLINED_FUNCTION_71_21(0x636E6546u);
        break;
      case 0x12:
        OUTLINED_FUNCTION_71_21(0x68736946u);
        break;
      case 0x14:
        OUTLINED_FUNCTION_183_4();
        break;
      case 0x17:
        OUTLINED_FUNCTION_122_10(1768646984);
        break;
      case 0x19:
        OUTLINED_FUNCTION_71_21(0x746E7548u);
        break;
      case 0x1BLL:
      case 0x1CLL:
      case 0x36:
      case 0x4CLL:
      case 0x4DLL:
        OUTLINED_FUNCTION_167_7();
        break;
      case 0x1DLL:
        OUTLINED_FUNCTION_136_10();
        break;
      case 0x1ELL:
        OUTLINED_FUNCTION_283_2();
        break;
      case 0x20:
        OUTLINED_FUNCTION_135_11();
        break;
      case 0x21:
        OUTLINED_FUNCTION_274_3();
        break;
      case 0x22:
        OUTLINED_FUNCTION_122_10(1769434962);
        break;
      case 0x23:
        OUTLINED_FUNCTION_186_4(1650947410);
        break;
      case 0x24:
        OUTLINED_FUNCTION_71_21(0x6E6E7552u);
        break;
      case 0x25:
        OUTLINED_FUNCTION_71_21(0x6C696153u);
        break;
      case 0x28:
        OUTLINED_FUNCTION_173_8();
        break;
      case 0x2DLL:
        OUTLINED_FUNCTION_165_9(0x696D6D697753);
        break;
      case 0x2ELL:
        OUTLINED_FUNCTION_164_7(0x54656C626154);
        break;
      case 0x2FLL:
        OUTLINED_FUNCTION_169_8();
        break;
      case 0x30:
        OUTLINED_FUNCTION_234_4();
        break;
      case 0x33:
        OUTLINED_FUNCTION_71_21(0x6B6C6157u);
        break;
      case 0x34:
        OUTLINED_FUNCTION_191_4(0x467265746157);
        break;
      case 0x37:
        OUTLINED_FUNCTION_144();
        break;
      case 0x39:
        OUTLINED_FUNCTION_115_12(1920098626);
        break;
      case 0x3CLL:
        OUTLINED_FUNCTION_271_2();
        break;
      case 0x41:
        OUTLINED_FUNCTION_200_5(0x6574616C6950);
        break;
      case 0x42:
        OUTLINED_FUNCTION_190_3(0x6F62776F6E53);
        break;
      case 0x46:
        OUTLINED_FUNCTION_187_1();
        break;
      case 0x48:
        v1 = OUTLINED_FUNCTION_311_2();
        OUTLINED_FUNCTION_190_3(v1);
        break;
      case 0x49:
        OUTLINED_FUNCTION_272_3();
        break;
      case 0x50:
        OUTLINED_FUNCTION_278_4();
        break;
      default:
        OUTLINED_FUNCTION_38();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.WorkoutActivityType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_206_3();
    OUTLINED_FUNCTION_26_4();
    v9 = v5 && v8 == v0;
    if (v9 || (OUTLINED_FUNCTION_44_25(v7, v8) & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_129_12(0x726568637241);
      v11 = v5 && v0 == 0xE700000000000000;
      if (v11 || (OUTLINED_FUNCTION_22_7(v10) & 1) != 0)
      {

        v6 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v14 = v1 == v2 + 2 && v13 == v0;
        if (v14 || (OUTLINED_FUNCTION_68_21(v12, v13) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v15 = v1 == 0x6F746E696D646142 && v0 == 0xE90000000000006ELL;
          if (v15 || (OUTLINED_FUNCTION_0_9(0x6F746E696D646142, 0xE90000000000006ELL) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v16 = OUTLINED_FUNCTION_139_11(0x65736142u);
            v17 = v5 && v0 == 0xE800000000000000;
            if (v17 || (OUTLINED_FUNCTION_29_2(v16) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v18 = v1 == OUTLINED_FUNCTION_261_1() && v0 == 0xEA00000000006C6CLL;
              if (v18 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v19 = OUTLINED_FUNCTION_46_24(0x6C776F42u);
                v20 = v5 && v0 == 0xE700000000000000;
                if (v20 || (OUTLINED_FUNCTION_22_7(v19) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v21 = OUTLINED_FUNCTION_113_12(1769500482);
                  v22 = v5 && v0 == 0xE600000000000000;
                  if (v22 || (OUTLINED_FUNCTION_21_38(v21) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v23 = OUTLINED_FUNCTION_156_8(0x69626D696C43);
                    v24 = v5 && v0 == 0xE800000000000000;
                    if (v24 || (OUTLINED_FUNCTION_29_2(v23) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v25 = OUTLINED_FUNCTION_106_16(0x656B63697243);
                      v26 = v5 && v0 == 0xE700000000000000;
                      if (v26 || (OUTLINED_FUNCTION_22_7(v25) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v27 = v1 == 0x61725473736F7243 && v0 == 0xED0000676E696E69;
                        if (v27 || (OUTLINED_FUNCTION_0_9(0x61725473736F7243, 0xED0000676E696E69) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v28 = OUTLINED_FUNCTION_46_24(0x6C727543u);
                          v29 = v5 && v0 == 0xE700000000000000;
                          if (v29 || (OUTLINED_FUNCTION_22_7(v28) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v30 = OUTLINED_FUNCTION_46_24(0x6C637943u);
                            v31 = v5 && v0 == 0xE700000000000000;
                            if (v31 || (OUTLINED_FUNCTION_22_7(v30) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v32 = OUTLINED_FUNCTION_116_15(1668178244);
                              v33 = v5 && v0 == 0xE500000000000000;
                              if (v33 || (OUTLINED_FUNCTION_15_14(v32) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                v35 = v1 == 0xD000000000000015 && v34 == v0;
                                if (v35 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, v34) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v36 = v1 == 0x63697470696C6C45 && v0 == 0xEA00000000006C61;
                                  if (v36 || (OUTLINED_FUNCTION_0_9(0x63697470696C6C45, 0xEA00000000006C61) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_96_2();
                                    v39 = v5 && v38 == v0;
                                    if (v39 || (OUTLINED_FUNCTION_44_25(v37, v38) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v40 = OUTLINED_FUNCTION_46_24(0x636E6546u);
                                      v41 = v5 && v0 == 0xE700000000000000;
                                      if (v41 || (OUTLINED_FUNCTION_22_7(v40) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v42 = OUTLINED_FUNCTION_46_24(0x68736946u);
                                        v43 = v5 && v0 == 0xE700000000000000;
                                        if (v43 || (OUTLINED_FUNCTION_22_7(v42) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_38();
                                          v45 = v1 == 0xD00000000000001ALL && v44 == v0;
                                          if (v45 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ALL, v44) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v46 = v1 == 1718382407 && v0 == 0xE400000000000000;
                                            if (v46 || (OUTLINED_FUNCTION_19_8(1718382407) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v47 = v1 == 0x697473616E6D7947 && v0 == 0xEA00000000007363;
                                              if (v47 || (OUTLINED_FUNCTION_0_9(0x697473616E6D7947, 0xEA00000000007363) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v48 = OUTLINED_FUNCTION_139_11(0x646E6148u);
                                                v49 = v5 && v0 == 0xE800000000000000;
                                                if (v49 || (OUTLINED_FUNCTION_29_2(v48) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v50 = OUTLINED_FUNCTION_113_12(1768646984);
                                                  v51 = v5 && v0 == 0xE600000000000000;
                                                  if (v51 || (OUTLINED_FUNCTION_21_38(v50) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v52 = v1 == 0x79656B636F48 && v0 == 0xE600000000000000;
                                                    if (v52 || (OUTLINED_FUNCTION_21_38(0x79656B636F48) & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      v53 = OUTLINED_FUNCTION_46_24(0x746E7548u);
                                                      v54 = v5 && v0 == 0xE700000000000000;
                                                      if (v54 || (OUTLINED_FUNCTION_22_7(v53) & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v55 = v1 == 0x6573736F7263614CLL && v0 == 0xE800000000000000;
                                                        if (v55 || (OUTLINED_FUNCTION_29_2(0x6573736F7263614CLL) & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v56 = v1 == 0x416C61697472614DLL && v0 == 0xEB00000000737472;
                                                          if (v56 || (OUTLINED_FUNCTION_0_9(0x416C61697472614DLL, 0xEB00000000737472) & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            v57 = v1 == 0x42646E41646E694DLL && v0 == 0xEB0000000079646FLL;
                                                            if (v57 || (OUTLINED_FUNCTION_0_9(0x42646E41646E694DLL, 0xEB0000000079646FLL) & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_38();
                                                              v59 = v1 == 0xD00000000000001CLL && v58 == v0;
                                                              if (v59 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v58) & 1) != 0)
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else
                                                              {
                                                                v60 = OUTLINED_FUNCTION_283_2();
                                                                v62 = v1 == v60 && v0 == v61;
                                                                if (v62 || (OUTLINED_FUNCTION_0_9(v60, v61) & 1) != 0)
                                                                {

                                                                  OUTLINED_FUNCTION_196_5();
                                                                }

                                                                else
                                                                {
                                                                  v63 = v1 == 2036427856 && v0 == 0xE400000000000000;
                                                                  if (v63 || (OUTLINED_FUNCTION_19_8(2036427856) & 1) != 0)
                                                                  {

                                                                    OUTLINED_FUNCTION_218_3();
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_38();
                                                                    v65 = v1 == 0xD000000000000016 && v64 == v0;
                                                                    if (v65 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, v64) & 1) != 0)
                                                                    {

                                                                      OUTLINED_FUNCTION_216_3();
                                                                    }

                                                                    else
                                                                    {
                                                                      v66 = OUTLINED_FUNCTION_274_3();
                                                                      v68 = v1 == v66 && v0 == v67;
                                                                      if (v68 || (OUTLINED_FUNCTION_0_9(v66, v67) & 1) != 0)
                                                                      {

                                                                        OUTLINED_FUNCTION_219_3();
                                                                      }

                                                                      else
                                                                      {
                                                                        v69 = OUTLINED_FUNCTION_113_12(1769434962);
                                                                        v70 = v5 && v0 == 0xE600000000000000;
                                                                        if (v70 || (OUTLINED_FUNCTION_21_38(v69) & 1) != 0)
                                                                        {

                                                                          OUTLINED_FUNCTION_217_3();
                                                                        }

                                                                        else
                                                                        {
                                                                          v71 = OUTLINED_FUNCTION_187_4(1650947410);
                                                                          v72 = v5 && v0 == 0xE500000000000000;
                                                                          if (v72 || (OUTLINED_FUNCTION_15_14(v71) & 1) != 0)
                                                                          {

                                                                            OUTLINED_FUNCTION_220_4();
                                                                          }

                                                                          else
                                                                          {
                                                                            v73 = OUTLINED_FUNCTION_46_24(0x6E6E7552u);
                                                                            v74 = v5 && v0 == 0xE700000000000000;
                                                                            if (v74 || (OUTLINED_FUNCTION_22_7(v73) & 1) != 0)
                                                                            {

                                                                              OUTLINED_FUNCTION_303_1();
                                                                            }

                                                                            else
                                                                            {
                                                                              v75 = OUTLINED_FUNCTION_46_24(0x6C696153u);
                                                                              v76 = v5 && v0 == 0xE700000000000000;
                                                                              if (v76 || (OUTLINED_FUNCTION_22_7(v75) & 1) != 0)
                                                                              {

                                                                                OUTLINED_FUNCTION_302_2();
                                                                              }

                                                                              else
                                                                              {
                                                                                v77 = v1 == 0x53676E6974616B53 && v0 == 0xED00007374726F70;
                                                                                if (v77 || (OUTLINED_FUNCTION_0_9(0x53676E6974616B53, 0xED00007374726F70) & 1) != 0)
                                                                                {

                                                                                  v6 = 38;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v78 = v1 == 0x726F7053776F6E53 && v0 == 0xEA00000000007374;
                                                                                  if (v78 || (OUTLINED_FUNCTION_0_9(0x726F7053776F6E53, 0xEA00000000007374) & 1) != 0)
                                                                                  {

                                                                                    v6 = 39;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v79 = OUTLINED_FUNCTION_215_3(1667460947);
                                                                                    v80 = v5 && v0 == 0xE600000000000000;
                                                                                    if (v80 || (OUTLINED_FUNCTION_21_38(v79) & 1) != 0)
                                                                                    {

                                                                                      v6 = 40;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v81 = OUTLINED_FUNCTION_139_11(0x74666F53u);
                                                                                      v82 = v5 && v0 == 0xE800000000000000;
                                                                                      if (v82 || (OUTLINED_FUNCTION_29_2(v81) & 1) != 0)
                                                                                      {

                                                                                        v6 = 41;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v83 = v1 == 0x687361757153 && v0 == 0xE600000000000000;
                                                                                        if (v83 || (OUTLINED_FUNCTION_21_38(0x687361757153) & 1) != 0)
                                                                                        {

                                                                                          v6 = 42;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v84 = v1 == 0x696C437269617453 && v0 == 0xED0000676E69626DLL;
                                                                                          if (v84 || (OUTLINED_FUNCTION_0_9(0x696C437269617453, 0xED0000676E69626DLL) & 1) != 0)
                                                                                          {

                                                                                            v6 = 43;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v85 = v1 == 0x53676E6966727553 && v0 == 0xED00007374726F70;
                                                                                            if (v85 || (OUTLINED_FUNCTION_0_9(0x53676E6966727553, 0xED00007374726F70) & 1) != 0)
                                                                                            {

                                                                                              v6 = 44;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v86 = OUTLINED_FUNCTION_156_8(0x696D6D697753);
                                                                                              v87 = v5 && v0 == 0xE800000000000000;
                                                                                              if (v87 || (OUTLINED_FUNCTION_29_2(v86) & 1) != 0)
                                                                                              {

                                                                                                v6 = 45;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v88 = v1 == 0x6E6554656C626154 && v0 == 0xEB0000000073696ELL;
                                                                                                if (v88 || (OUTLINED_FUNCTION_0_9(0x6E6554656C626154, 0xEB0000000073696ELL) & 1) != 0)
                                                                                                {

                                                                                                  v6 = 46;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v89 = OUTLINED_FUNCTION_297_3();
                                                                                                  v90 = v5 && v0 == 0xE600000000000000;
                                                                                                  if (v90 || (OUTLINED_FUNCTION_21_38(v89) & 1) != 0)
                                                                                                  {

                                                                                                    v6 = 47;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v91 = OUTLINED_FUNCTION_234_4();
                                                                                                    v93 = v1 == v91 && v0 == v92;
                                                                                                    if (v93 || (OUTLINED_FUNCTION_0_9(v91, v92) & 1) != 0)
                                                                                                    {

                                                                                                      v6 = 48;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_38();
                                                                                                      v95 = v1 == 0xD00000000000001BLL && v94 == v0;
                                                                                                      if (v95 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, v94) & 1) != 0)
                                                                                                      {

                                                                                                        v6 = 49;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_212_2();
                                                                                                        v96 = v5 && v0 == 0xEA00000000006C6CLL;
                                                                                                        if (v96 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                                                                                        {

                                                                                                          v6 = 50;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v97 = OUTLINED_FUNCTION_46_24(0x6B6C6157u);
                                                                                                          v98 = v5 && v0 == 0xE700000000000000;
                                                                                                          if (v98 || (OUTLINED_FUNCTION_22_7(v97) & 1) != 0)
                                                                                                          {

                                                                                                            v6 = 51;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v99 = OUTLINED_FUNCTION_298_2(0x467265746157);
                                                                                                            v101 = v5 && v0 == v100;
                                                                                                            if (v101 || (OUTLINED_FUNCTION_0_9(v99, v100) & 1) != 0)
                                                                                                            {

                                                                                                              v6 = 52;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v102 = v1 == 0x6C6F507265746157 && v0 == 0xE90000000000006FLL;
                                                                                                              if (v102 || (OUTLINED_FUNCTION_0_9(0x6C6F507265746157, 0xE90000000000006FLL) & 1) != 0)
                                                                                                              {

                                                                                                                v6 = 53;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v103 = v1 == 0x6F70537265746157 && v0 == 0xEB00000000737472;
                                                                                                                if (v103 || (OUTLINED_FUNCTION_0_9(0x6F70537265746157, 0xEB00000000737472) & 1) != 0)
                                                                                                                {

                                                                                                                  v6 = 54;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v104 = v1 == 0x6E696C7473657257 && v0 == 0xE900000000000067;
                                                                                                                  if (v104 || (OUTLINED_FUNCTION_30_22(0x6E696C7473657257, 103) & 1) != 0)
                                                                                                                  {

                                                                                                                    v6 = 55;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v105 = v1 == 1634168665 && v0 == 0xE400000000000000;
                                                                                                                    if (v105 || (OUTLINED_FUNCTION_19_8(1634168665) & 1) != 0)
                                                                                                                    {

                                                                                                                      v6 = 56;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v106 = OUTLINED_FUNCTION_116_15(1920098626);
                                                                                                                      v107 = v5 && v0 == 0xE500000000000000;
                                                                                                                      if (v107 || (OUTLINED_FUNCTION_15_14(v106) & 1) != 0)
                                                                                                                      {

                                                                                                                        v6 = 57;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v108 = v1 == 0x6961725465726F43 && v0 == 0xEC000000676E696ELL;
                                                                                                                        if (v108 || (OUTLINED_FUNCTION_0_9(0x6961725465726F43, 0xEC000000676E696ELL) & 1) != 0)
                                                                                                                        {

                                                                                                                          v6 = 58;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_26_4();
                                                                                                                          v110 = v5 && v109 == v0;
                                                                                                                          if (v110 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v109) & 1) != 0)
                                                                                                                          {

                                                                                                                            v6 = 59;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v111 = OUTLINED_FUNCTION_271_2() & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
                                                                                                                            v113 = v1 == v111 && v0 == v112;
                                                                                                                            if (v113 || (OUTLINED_FUNCTION_0_9(v111, v112) & 1) != 0)
                                                                                                                            {

                                                                                                                              v6 = 60;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v114 = v1 == 0x6C69626978656C46 && v0 == 0xEB00000000797469;
                                                                                                                              if (v114 || (OUTLINED_FUNCTION_0_9(0x6C69626978656C46, 0xEB00000000797469) & 1) != 0)
                                                                                                                              {

                                                                                                                                v6 = 61;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_38();
                                                                                                                                v116 = v1 == 0xD00000000000001DLL && v115 == v0;
                                                                                                                                if (v116 || (OUTLINED_FUNCTION_0_9(0xD00000000000001DLL, v115) & 1) != 0)
                                                                                                                                {

                                                                                                                                  v6 = 62;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v117 = v1 == 0x65706F52706D754ALL && v0 == 0xE800000000000000;
                                                                                                                                  if (v117 || (OUTLINED_FUNCTION_29_2(0x65706F52706D754ALL) & 1) != 0)
                                                                                                                                  {

                                                                                                                                    v6 = 63;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v118 = v1 == 0x69786F626B63694BLL && v0 == 0xEA0000000000676ELL;
                                                                                                                                    if (v118 || (OUTLINED_FUNCTION_0_9(0x69786F626B63694BLL, 0xEA0000000000676ELL) & 1) != 0)
                                                                                                                                    {

                                                                                                                                      v6 = 64;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v119 = OUTLINED_FUNCTION_160_9(0x6574616C6950);
                                                                                                                                      v120 = v5 && v0 == 0xE700000000000000;
                                                                                                                                      if (v120 || (OUTLINED_FUNCTION_22_7(v119) & 1) != 0)
                                                                                                                                      {

                                                                                                                                        v6 = 65;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v121 = v1 == 0x72616F62776F6E53 && v0 == 0xEC000000676E6964;
                                                                                                                                        if (v121 || (OUTLINED_FUNCTION_0_9(0x72616F62776F6E53, 0xEC000000676E6964) & 1) != 0)
                                                                                                                                        {

                                                                                                                                          v6 = 66;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v122 = v1 == 0x737269617453 && v0 == 0xE600000000000000;
                                                                                                                                          if (v122 || (OUTLINED_FUNCTION_21_38(0x737269617453) & 1) != 0)
                                                                                                                                          {

                                                                                                                                            v6 = 67;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v123 = v1 == 0x6961725470657453 && v0 == 0xEC000000676E696ELL;
                                                                                                                                            if (v123 || (OUTLINED_FUNCTION_0_9(0x6961725470657453, 0xEC000000676E696ELL) & 1) != 0)
                                                                                                                                            {

                                                                                                                                              v6 = 68;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              OUTLINED_FUNCTION_26_4();
                                                                                                                                              v125 = v5 && v124 == v0;
                                                                                                                                              if (v125 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v124) & 1) != 0)
                                                                                                                                              {

                                                                                                                                                v6 = 69;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                OUTLINED_FUNCTION_38();
                                                                                                                                                v127 = v1 == 0xD000000000000011 && v126 == v0;
                                                                                                                                                if (v127 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, v126) & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  v6 = 70;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v128 = v1 == 0x696843696154 && v0 == 0xE600000000000000;
                                                                                                                                                  if (v128 || (OUTLINED_FUNCTION_21_38(0x696843696154) & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    v6 = 71;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v129 = OUTLINED_FUNCTION_311_2();
                                                                                                                                                    v130 = OUTLINED_FUNCTION_155_7(v129);
                                                                                                                                                    v132 = v5 && v0 == v131;
                                                                                                                                                    if (v132 || (OUTLINED_FUNCTION_0_9(v130, v131) & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      v6 = 72;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v133 = OUTLINED_FUNCTION_272_3();
                                                                                                                                                      v135 = v1 == v133 && v0 == v134;
                                                                                                                                                      if (v135 || (OUTLINED_FUNCTION_0_9(v133, v134) & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        v6 = 73;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v136 = v1 == 0x726F705363736944 && v0 == 0xEA00000000007374;
                                                                                                                                                        if (v136 || (OUTLINED_FUNCTION_0_9(0x726F705363736944, 0xEA00000000007374) & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          v6 = 74;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v137 = v1 == 0x477373656E746946 && v0 == 0xED0000676E696D61;
                                                                                                                                                          if (v137 || (OUTLINED_FUNCTION_0_9(0x477373656E746946, 0xED0000676E696D61) & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            v6 = 75;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v138 = v1 == 0x61446F6964726143 && v0 == 0xEB0000000065636ELL;
                                                                                                                                                            if (v138 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              v6 = 76;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v139 = v1 == 0x61446C6169636F53 && v0 == 0xEB0000000065636ELL;
                                                                                                                                                              if (v139 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                v6 = 77;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v140 = v1 == 0x6162656C6B636950 && v0 == 0xEA00000000006C6CLL;
                                                                                                                                                                if (v140 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  v6 = 78;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v141 = v1 == 0x6E776F646C6F6F43 && v0 == 0xE800000000000000;
                                                                                                                                                                  if (v141 || (OUTLINED_FUNCTION_29_2(0x6E776F646C6F6F43) & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    v6 = 79;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v142 = OUTLINED_FUNCTION_278_4();
                                                                                                                                                                    v144 = v1 == v142 && v0 == v143;
                                                                                                                                                                    if (v144 || (OUTLINED_FUNCTION_0_9(v142, v143) & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      v6 = 80;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v145 = v1 == 0x697469736E617254 && v0 == 0xEA00000000006E6FLL;
                                                                                                                                                                      if (v145 || (OUTLINED_FUNCTION_0_9(0x697469736E617254, 0xEA00000000006E6FLL) & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        v6 = 81;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        OUTLINED_FUNCTION_96_2();
                                                                                                                                                                        v148 = v5 && v147 == v0;
                                                                                                                                                                        if (v148 || (OUTLINED_FUNCTION_44_25(v146, v147) & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          v6 = 82;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v149 = OUTLINED_FUNCTION_69_20();
                                                                                                                                                                          if (v5 && v0 == 0xE500000000000000)
                                                                                                                                                                          {

                                                                                                                                                                            v6 = 83;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            OUTLINED_FUNCTION_15_14(v149);
                                                                                                                                                                            OUTLINED_FUNCTION_89();
                                                                                                                                                                            v6 = 83;
                                                                                                                                                                            if ((v1 & 1) == 0)
                                                                                                                                                                            {
                                                                                                                                                                              v6 = 0;
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
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t MomentsEventData.BundleInterfaceType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.BundleInterfaceType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v93 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v93, v94, v95, v96, &qword_1EAE42E20, &qword_1939970F0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v97 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v97, v98, v99, v100, &qword_1EAE42E20, &qword_1939970F0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v101, v102, v103, v104, v105, v106);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v107 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v107, v108, v109, v110, &qword_1EAE42E20, &qword_1939970F0);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v111 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v111, v112, v113, v114, &qword_1EAE42E20, &qword_1939970F0);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v115 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v115, v116, v117, v118, &qword_1EAE42E20, &qword_1939970F0);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v119 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v119, v120, v121, v122, &qword_1EAE42E20, &qword_1939970F0);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v123 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v123, v124, v125, v126, &qword_1EAE42E20, &qword_1939970F0);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v127 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v127, v128, v129, v130, &qword_1EAE42E20, &qword_1939970F0);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v131 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v131, v132, v133, v134, &qword_1EAE42E20, &qword_1939970F0);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v135 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v135, v136, v137, v138, &qword_1EAE42E20, &qword_1939970F0);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v139 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v139, v140, v141, v142, &qword_1EAE42E20, &qword_1939970F0);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v143 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v143, v144, v145, v146, &qword_1EAE42E20, &qword_1939970F0);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v147 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v147, v148, v149, v150, &qword_1EAE42E20, &qword_1939970F0);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v151 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v151, v152, v153, v154, &qword_1EAE42E20, &qword_1939970F0);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v155 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v155, v156, v157, v158, &qword_1EAE42E20, &qword_1939970F0);
    v88 = v85;
  }

  OUTLINED_FUNCTION_50(v85, v86, v87, v88);
  return OUTLINED_FUNCTION_38_1(v90, v91);
}

void MomentsEventData.BundleInterfaceType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_122_10(1769239887);
        break;
      case 2:
        OUTLINED_FUNCTION_167_7();
        break;
      case 3:
        OUTLINED_FUNCTION_75();
        break;
      case 4:
        OUTLINED_FUNCTION_98_17();
        break;
      case 5:
        OUTLINED_FUNCTION_237_1();
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      case 8:
        OUTLINED_FUNCTION_197_4(1852142164);
        break;
      case 9:
        OUTLINED_FUNCTION_42_30();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_62_4();
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_147_9();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_66_23();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_187_1();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.BundleInterfaceType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_22_7(v3) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_107_14();
    v8 = v5 && v0 == 0xE800000000000000;
    if (v8 || (OUTLINED_FUNCTION_29_2(v7) & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_113_12(1769239887);
      v10 = v5 && v0 == 0xE600000000000000;
      if (v10 || (OUTLINED_FUNCTION_21_38(v9) & 1) != 0)
      {

        v6 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_153_10();
        v11 = v5 && v0 == v2;
        if (v11 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v13 = v1 == 0xD000000000000012 && v12 == v0;
          if (v13 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_140_11();
            v15 = v5 && v0 == 0xE500000000000000;
            if (v15 || (OUTLINED_FUNCTION_15_14(v14) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v16 = OUTLINED_FUNCTION_237_1();
              v18 = v1 == v16 && v0 == v17;
              if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_104_13();
                v20 = v5 && v0 == v19;
                if (v20 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_60();
                  v23 = v5 && v22 == v0;
                  if (v23 || (OUTLINED_FUNCTION_44_25(v21, v22) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v24 = OUTLINED_FUNCTION_305_1(1852142164);
                    v25 = v5 && v0 == 0xE500000000000000;
                    if (v25 || (OUTLINED_FUNCTION_15_14(v24) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v26 = OUTLINED_FUNCTION_47_28();
                      v28 = v5 && v0 == v27;
                      if (v28 || (OUTLINED_FUNCTION_0_9(v26, v27) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v29 = OUTLINED_FUNCTION_79_16();
                        v31 = v5 && v0 == v30;
                        if (v31 || (OUTLINED_FUNCTION_30_22(v29, 110) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v32 = v2 + 2560;
                          v33 = v1 == 0x746E6F43656D6954 && v0 == v32;
                          if (v33 || (OUTLINED_FUNCTION_0_9(0x746E6F43656D6954, v32) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_205_3();
                            v34 = v5 && v0 == 0xE400000000000000;
                            if (v34 || (OUTLINED_FUNCTION_19_8(1885958740) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v35 = OUTLINED_FUNCTION_66_23();
                              v37 = v1 == v35 && v0 == v36;
                              if (v37 || (OUTLINED_FUNCTION_0_9(v35, v36) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                if (v1 == 0xD000000000000011 && v38 == v0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_0_9(0xD000000000000011, v38);
                                  OUTLINED_FUNCTION_89();
                                  v6 = 14;
                                  if ((v1 & 1) == 0)
                                  {
                                    v6 = 0;
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

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t _s27IntelligencePlatformLibrary16MomentsEventDataV09SuggestedE12CategoryTypeO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t sub_1937964CC()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_63_2();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_53_3(v6, v7, v8, v9);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_46_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_51((v24 > 1), v0, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_45_0(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v25 = OUTLINED_FUNCTION_33_5((v29 > 1), v26, v27, v28);
    v28 = v25;
  }

  OUTLINED_FUNCTION_32(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v30 = OUTLINED_FUNCTION_39_2((v34 > 1), v31, v32, v33);
    v33 = v30;
  }

  OUTLINED_FUNCTION_149(v30, v31, v32, v33);
  OUTLINED_FUNCTION_90_7(v35);
  OUTLINED_FUNCTION_301_2();
  if (!(v18 ^ v19 | v12))
  {
    v36 = OUTLINED_FUNCTION_33_5((v40 > 1), v37, v38, v39);
    v39 = v36;
  }

  OUTLINED_FUNCTION_160_1(v36, v37, v38, v39);
  OUTLINED_FUNCTION_90_7(v41);
  if (v1 + 7 > (v46 >> 1))
  {
    v42 = OUTLINED_FUNCTION_39_2((v46 > 1), v43, v44, v45);
    v45 = v42;
  }

  OUTLINED_FUNCTION_149(v42, v43, v44, v45);
  OUTLINED_FUNCTION_90_7(v47);
  if (v1 + 8 > (v52 >> 1))
  {
    v48 = OUTLINED_FUNCTION_33_5((v52 > 1), v49, v50, v51);
    v51 = v48;
  }

  OUTLINED_FUNCTION_160_1(v48, v49, v50, v51);
  OUTLINED_FUNCTION_90_7(v53);
  if (v1 + 9 > (v58 >> 1))
  {
    v54 = OUTLINED_FUNCTION_39_2((v58 > 1), v55, v56, v57);
    v57 = v54;
  }

  OUTLINED_FUNCTION_149(v54, v55, v56, v57);
  OUTLINED_FUNCTION_90_7(v59);
  if (v1 + 10 > (v64 >> 1))
  {
    v60 = OUTLINED_FUNCTION_33_5((v64 > 1), v61, v62, v63);
    v63 = v60;
  }

  OUTLINED_FUNCTION_160_1(v60, v61, v62, v63);
  OUTLINED_FUNCTION_90_7(v65);
  if (v1 + 11 > (v70 >> 1))
  {
    v66 = OUTLINED_FUNCTION_39_2((v70 > 1), v67, v68, v69);
    v69 = v66;
  }

  OUTLINED_FUNCTION_149(v66, v67, v68, v69);
  OUTLINED_FUNCTION_90_7(v71);
  if (v1 + 12 > (v76 >> 1))
  {
    v72 = OUTLINED_FUNCTION_33_5((v76 > 1), v73, v74, v75);
    v75 = v72;
  }

  OUTLINED_FUNCTION_160_1(v72, v73, v74, v75);
  OUTLINED_FUNCTION_90_7(v77);
  if (v1 + 13 > (v82 >> 1))
  {
    v78 = OUTLINED_FUNCTION_39_2((v82 > 1), v79, v80, v81);
    v81 = v78;
  }

  OUTLINED_FUNCTION_149(v78, v79, v80, v81);
  *(v83 + 32) = 11;
  *(v83 + 40) = v0;
  return v84;
}

void MomentsEventData.ActionType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_255_3(1769171286);
        break;
      case 3:
        OUTLINED_FUNCTION_111_14(0x756F6B726F57);
        break;
      case 4:
        OUTLINED_FUNCTION_111_14(0x6361746E6F43);
        break;
      case 5:
        OUTLINED_FUNCTION_144();
        break;
      case 8:
        OUTLINED_FUNCTION_142_11();
        break;
      case 9:
        OUTLINED_FUNCTION_122_10(1768843588);
        break;
      case 0xALL:
        OUTLINED_FUNCTION_174_5();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.ActionType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x63416D6F73747543 && v0 == 0xEC0000006E6F6974;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x63416D6F73747543, 0xEC0000006E6F6974) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_134_13();
      v8 = v4 && v0 == 0xE500000000000000;
      if (v8 || (OUTLINED_FUNCTION_15_14(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x7369567473726946 && v0 == 0xEA00000000007469;
        if (v9 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = OUTLINED_FUNCTION_70_14();
          v11 = v4 && v0 == 0xE700000000000000;
          if (v11 || (OUTLINED_FUNCTION_22_7(v10) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = OUTLINED_FUNCTION_100_12();
            v13 = v4 && v0 == 0xE700000000000000;
            if (v13 || (OUTLINED_FUNCTION_22_7(v12) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v14 = v1 == 0x6964654D79616C50 && v0 == 0xE900000000000061;
              if (v14 || (OUTLINED_FUNCTION_30_22(0x6964654D79616C50, 97) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v15 = v1 == 0x746F6850656B6154 && v0 == 0xE90000000000006FLL;
                if (v15 || (OUTLINED_FUNCTION_0_9(0x746F6850656B6154, 0xE90000000000006FLL) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v16 = v1 == 0x6573776F7242 && v0 == 0xE600000000000000;
                  if (v16 || (OUTLINED_FUNCTION_21_38(0x6573776F7242) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v17 = OUTLINED_FUNCTION_156_8(0x6970706F6853);
                    v18 = v4 && v0 == 0xE800000000000000;
                    if (v18 || (OUTLINED_FUNCTION_29_2(v17) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v19 = OUTLINED_FUNCTION_113_12(1768843588);
                      v20 = v4 && v0 == 0xE600000000000000;
                      if (v20 || (OUTLINED_FUNCTION_21_38(v19) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v21 = OUTLINED_FUNCTION_132_10();
                        v22 = v4 && v0 == 0xE600000000000000;
                        if (v22 || (OUTLINED_FUNCTION_21_38(v21) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v23 = OUTLINED_FUNCTION_46_24(0x6C656546u);
                          if (v4 && v0 == 0xE700000000000000)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_22_7(v23);
                            OUTLINED_FUNCTION_89();
                            v5 = 11;
                            if ((v1 & 1) == 0)
                            {
                              v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

void MomentsEventData.TimeTagType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (!v3 & v2)
  {
    switch(a2)
    {
      case 'd':
        v4 = 18;
        break;
      case 'e':
        v4 = 19;
        break;
      case 'f':
        v4 = 20;
        break;
      case 'g':
        v4 = 21;
        break;
      case 'h':
        v4 = 22;
        break;
      case 'i':
        v4 = 23;
        break;
      case 'j':
        v4 = 24;
        break;
      case 'k':
        v4 = 25;
        break;
      case 'l':
        v4 = 26;
        break;
      case 'm':
        v4 = 27;
        break;
      case 'n':
        v4 = 28;
        break;
      case 'o':
        v4 = 29;
        break;
      case 'p':
        v4 = 30;
        break;
      case 'q':
        v4 = 31;
        break;
      case 'r':
        v4 = 32;
        break;
      default:
        v4 = 33;
        v5 = 34;
        v6 = 35;
        if (a2 != 2002)
        {
          v6 = a2;
        }

        if (a2 != 2001)
        {
          v5 = v6;
        }

        if (a2 != 2000)
        {
          v4 = v5;
        }

        break;
    }
  }

  else
  {
    v4 = 0;
    switch(a2)
    {
      case 1:
        break;
      case 2:
        v4 = 1;
        break;
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 3;
        break;
      case 5:
        v4 = 4;
        break;
      case 6:
        v4 = 5;
        break;
      case 7:
        v4 = 6;
        break;
      case 8:
        v4 = 7;
        break;
      case 9:
        v4 = 8;
        break;
      case 10:
        v4 = 9;
        break;
      case 11:
        v4 = 10;
        break;
      case 12:
        v4 = 11;
        break;
      case 13:
        v4 = 12;
        break;
      case 14:
        v4 = 13;
        break;
      case 15:
        v4 = 14;
        break;
      case 16:
        v4 = 15;
        break;
      case 17:
        v4 = 16;
        break;
      case 18:
        v4 = 17;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a1 = v4;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MomentsEventData.TimeTagType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193997488[result];
  }

  return result;
}

uint64_t static MomentsEventData.TimeTagType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v207 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v207, v208, v209, v210, &qword_1EAE42E10, &qword_1939970E0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v211 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v211, v212, v213, v214, &qword_1EAE42E10, &qword_1939970E0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v215, v216, v217, v218, v219, v220);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v221 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v221, v222, v223, v224, &qword_1EAE42E10, &qword_1939970E0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v225 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v225, v226, v227, v228, &qword_1EAE42E10, &qword_1939970E0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v229 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v229, v230, v231, v232, &qword_1EAE42E10, &qword_1939970E0);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v233 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v233, v234, v235, v236, &qword_1EAE42E10, &qword_1939970E0);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v237 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v237, v238, v239, v240, &qword_1EAE42E10, &qword_1939970E0);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v241 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v241, v242, v243, v244, &qword_1EAE42E10, &qword_1939970E0);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v245 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v245, v246, v247, v248, &qword_1EAE42E10, &qword_1939970E0);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v249 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v249, v250, v251, v252, &qword_1EAE42E10, &qword_1939970E0);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v253 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v253, v254, v255, v256, &qword_1EAE42E10, &qword_1939970E0);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v257 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v257, v258, v259, v260, &qword_1EAE42E10, &qword_1939970E0);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v261 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v261, v262, v263, v264, &qword_1EAE42E10, &qword_1939970E0);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v265 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v265, v266, v267, v268, &qword_1EAE42E10, &qword_1939970E0);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v269 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v269, v270, v271, v272, &qword_1EAE42E10, &qword_1939970E0);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v273 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v273, v274, v275, v276, &qword_1EAE42E10, &qword_1939970E0);
    v94 = v91;
  }

  OUTLINED_FUNCTION_17_41(v91, v92, v93, v94);
  if (!(v19 ^ v20 | v13))
  {
    v277 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v277, v278, v279, v280, &qword_1EAE42E10, &qword_1939970E0);
    v99 = v96;
  }

  OUTLINED_FUNCTION_19_54(v96, v97, v98, v99);
  if (!(v19 ^ v20 | v13))
  {
    v281 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v281, v282, v283, v284, &qword_1EAE42E10, &qword_1939970E0);
    v104 = v101;
  }

  OUTLINED_FUNCTION_20_47(v101, v102, v103, v104);
  if (!(v19 ^ v20 | v13))
  {
    v285 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_84_2(v285, v286, v287, v288, &qword_1EAE42E10, &qword_1939970E0);
    v109 = v106;
  }

  OUTLINED_FUNCTION_25_36(v106, v107, v108, v109);
  if (!(v19 ^ v20 | v13))
  {
    v289 = OUTLINED_FUNCTION_39(v115);
    v111 = OUTLINED_FUNCTION_85(v289, v290, v291, v292, &qword_1EAE42E10, &qword_1939970E0);
    v114 = v111;
  }

  OUTLINED_FUNCTION_22_38(v111, v112, v113, v114);
  if (!(v19 ^ v20 | v13))
  {
    v293 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v293, v294, v295, v296, &qword_1EAE42E10, &qword_1939970E0);
    v119 = v116;
  }

  OUTLINED_FUNCTION_24_46(v116, v117, v118, v119);
  if (!(v19 ^ v20 | v13))
  {
    v297 = OUTLINED_FUNCTION_39(v125);
    v121 = OUTLINED_FUNCTION_85(v297, v298, v299, v300, &qword_1EAE42E10, &qword_1939970E0);
    v124 = v121;
  }

  OUTLINED_FUNCTION_21_45(v121, v122, v123, v124);
  if (!(v19 ^ v20 | v13))
  {
    v301 = OUTLINED_FUNCTION_39(v130);
    v126 = OUTLINED_FUNCTION_84_2(v301, v302, v303, v304, &qword_1EAE42E10, &qword_1939970E0);
    v129 = v126;
  }

  OUTLINED_FUNCTION_23_44(v126, v127, v128, v129);
  if (!(v19 ^ v20 | v13))
  {
    v305 = OUTLINED_FUNCTION_39(v135);
    v131 = OUTLINED_FUNCTION_85(v305, v306, v307, v308, &qword_1EAE42E10, &qword_1939970E0);
    v134 = v131;
  }

  OUTLINED_FUNCTION_28_32(v131, v132, v133, v134);
  if (!(v19 ^ v20 | v13))
  {
    v309 = OUTLINED_FUNCTION_39(v140);
    v136 = OUTLINED_FUNCTION_84_2(v309, v310, v311, v312, &qword_1EAE42E10, &qword_1939970E0);
    v139 = v136;
  }

  OUTLINED_FUNCTION_32_33(v136, v137, v138, v139);
  if (!(v19 ^ v20 | v13))
  {
    v313 = OUTLINED_FUNCTION_39(v145);
    v141 = OUTLINED_FUNCTION_85(v313, v314, v315, v316, &qword_1EAE42E10, &qword_1939970E0);
    v144 = v141;
  }

  OUTLINED_FUNCTION_30_29(v141, v142, v143, v144);
  if (!(v19 ^ v20 | v13))
  {
    v317 = OUTLINED_FUNCTION_39(v150);
    v146 = OUTLINED_FUNCTION_84_2(v317, v318, v319, v320, &qword_1EAE42E10, &qword_1939970E0);
    v149 = v146;
  }

  OUTLINED_FUNCTION_31_39(v146, v147, v148, v149);
  if (!(v19 ^ v20 | v13))
  {
    v321 = OUTLINED_FUNCTION_39(v155);
    v151 = OUTLINED_FUNCTION_85(v321, v322, v323, v324, &qword_1EAE42E10, &qword_1939970E0);
    v154 = v151;
  }

  OUTLINED_FUNCTION_47_5(v151, v152, v153, v154);
  OUTLINED_FUNCTION_4(v156);
  OUTLINED_FUNCTION_222_2();
  if (!(v19 ^ v20 | v13))
  {
    v325 = OUTLINED_FUNCTION_39(v161);
    v157 = OUTLINED_FUNCTION_84_2(v325, v326, v327, v328, &qword_1EAE42E10, &qword_1939970E0);
    v160 = v157;
  }

  OUTLINED_FUNCTION_50(v157, v158, v159, v160);
  OUTLINED_FUNCTION_4(v162);
  OUTLINED_FUNCTION_309_1();
  if (!(v19 ^ v20 | v13))
  {
    v329 = OUTLINED_FUNCTION_39(v167);
    v163 = OUTLINED_FUNCTION_85(v329, v330, v331, v332, &qword_1EAE42E10, &qword_1939970E0);
    v166 = v163;
  }

  OUTLINED_FUNCTION_47_5(v163, v164, v165, v166);
  OUTLINED_FUNCTION_4(v168);
  OUTLINED_FUNCTION_308_2();
  if (!(v19 ^ v20 | v13))
  {
    v333 = OUTLINED_FUNCTION_39(v173);
    v169 = OUTLINED_FUNCTION_84_2(v333, v334, v335, v336, &qword_1EAE42E10, &qword_1939970E0);
    v172 = v169;
  }

  OUTLINED_FUNCTION_50(v169, v170, v171, v172);
  OUTLINED_FUNCTION_4(v174);
  if (v0 + 33 > (v179 >> 1))
  {
    v337 = OUTLINED_FUNCTION_39(v179);
    v175 = OUTLINED_FUNCTION_85(v337, v338, v339, v340, &qword_1EAE42E10, &qword_1939970E0);
    v178 = v175;
  }

  OUTLINED_FUNCTION_47_5(v175, v176, v177, v178);
  OUTLINED_FUNCTION_4(v180);
  if (v0 + 34 > (v185 >> 1))
  {
    v341 = OUTLINED_FUNCTION_39(v185);
    v181 = OUTLINED_FUNCTION_84_2(v341, v342, v343, v344, &qword_1EAE42E10, &qword_1939970E0);
    v184 = v181;
  }

  OUTLINED_FUNCTION_50(v181, v182, v183, v184);
  OUTLINED_FUNCTION_4(v186);
  if (v0 + 35 > (v191 >> 1))
  {
    v345 = OUTLINED_FUNCTION_39(v191);
    v187 = OUTLINED_FUNCTION_85(v345, v346, v347, v348, &qword_1EAE42E10, &qword_1939970E0);
    v190 = v187;
  }

  OUTLINED_FUNCTION_47_5(v187, v188, v189, v190);
  OUTLINED_FUNCTION_4(v192);
  if (v0 + 36 > (v197 >> 1))
  {
    v349 = OUTLINED_FUNCTION_39(v197);
    v193 = OUTLINED_FUNCTION_84_2(v349, v350, v351, v352, &qword_1EAE42E10, &qword_1939970E0);
    v196 = v193;
  }

  OUTLINED_FUNCTION_50(v193, v194, v195, v196);
  OUTLINED_FUNCTION_4(v198);
  if (v0 + 37 > (v203 >> 1))
  {
    v353 = OUTLINED_FUNCTION_39(v203);
    v199 = OUTLINED_FUNCTION_85(v353, v354, v355, v356, &qword_1EAE42E10, &qword_1939970E0);
    v202 = v199;
  }

  OUTLINED_FUNCTION_47_5(v199, v200, v201, v202);
  return OUTLINED_FUNCTION_89_3(v204, v205);
}

void MomentsEventData.TimeTagType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_71_21(0x6E726F4Du);
        return;
      case 2:
        OUTLINED_FUNCTION_260_0(0x6E7265746641);
        return;
      case 3:
        OUTLINED_FUNCTION_71_21(0x6E657645u);
        return;
      case 4:
        OUTLINED_FUNCTION_255_3(1751607630);
        return;
      case 0xBLL:
        v1 = 1801807191;
        goto LABEL_17;
      case 0xCLL:
        OUTLINED_FUNCTION_194_4(0x6E656B656557);
        return;
      case 0xELL:
        v1 = 1768714056;
        goto LABEL_17;
      case 0x12:
        OUTLINED_FUNCTION_186_4(1633972052);
        return;
      case 0x16:
        v1 = 1936029012;
LABEL_17:
        OUTLINED_FUNCTION_263_2(v1 & 0xFFFF0000FFFFFFFFLL | 0x616400000000);
        return;
      case 0x1DLL:
      case 0x1ELL:
        OUTLINED_FUNCTION_144();
        return;
      case 0x1FLL:
        v2 = 1936287828;
        goto LABEL_15;
      case 0x20:
        v2 = 1953718604;
LABEL_15:
        OUTLINED_FUNCTION_190_3(v2 & 0xFFFF0000FFFFFFFFLL | 0x655900000000);
        break;
      default:
        return;
    }
  }
}

void MomentsEventData.TimeTagType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_148_9();
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_21_38(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_46_24(0x6E726F4Du);
      v9 = v4 && v0 == 0xE700000000000000;
      if (v9 || (OUTLINED_FUNCTION_22_7(v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = v1 == 0x6F6F6E7265746641 && v0 == 0xE90000000000006ELL;
        if (v10 || (OUTLINED_FUNCTION_0_9(0x6F6F6E7265746641, 0xE90000000000006ELL) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_46_24(0x6E657645u);
          v12 = v4 && v0 == 0xE700000000000000;
          if (v12 || (OUTLINED_FUNCTION_22_7(v11) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = OUTLINED_FUNCTION_154_9(1751607630);
            v14 = v4 && v0 == 0xE500000000000000;
            if (v14 || (OUTLINED_FUNCTION_15_14(v13) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v15 = v1 == 0x746867694E64694DLL && v0 == 0xE800000000000000;
              if (v15 || (OUTLINED_FUNCTION_29_2(0x746867694E64694DLL) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v16 = v1 == 7954756 && v0 == 0xE300000000000000;
                if (v16 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v17 = v1 == 1801807191 && v0 == 0xE400000000000000;
                  if (v17 || (OUTLINED_FUNCTION_19_8(1801807191) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v18 = OUTLINED_FUNCTION_299_2(1953394509);
                    v19 = v4 && v0 == 0xE500000000000000;
                    if (v19 || (OUTLINED_FUNCTION_15_14(v18) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v20 = v1 == 1918985561 && v0 == 0xE400000000000000;
                      if (v20 || (OUTLINED_FUNCTION_19_8(1918985561) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v21 = v1 == 0x6D726554676E6F4CLL && v0 == 0xE800000000000000;
                        if (v21 || (OUTLINED_FUNCTION_29_2(0x6D726554676E6F4CLL) & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v22 = OUTLINED_FUNCTION_129_12(0x61646B656557);
                          v23 = v4 && v0 == 0xE700000000000000;
                          if (v23 || (OUTLINED_FUNCTION_22_7(v22) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v24 = OUTLINED_FUNCTION_141_9(0x6E656B656557);
                            v25 = v4 && v0 == 0xE700000000000000;
                            if (v25 || (OUTLINED_FUNCTION_22_7(v24) & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v26 = OUTLINED_FUNCTION_204_2(0x676E6F4Cu);
                              v28 = v4 && v0 == v27;
                              if (v28 || (OUTLINED_FUNCTION_0_9(v26, v27) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v29 = OUTLINED_FUNCTION_129_12(0x6164696C6F48);
                                v30 = v4 && v0 == 0xE700000000000000;
                                if (v30 || (OUTLINED_FUNCTION_22_7(v29) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v31 = v1 == 0x6E6F697461636156 && v0 == 0xE800000000000000;
                                  if (v31 || (OUTLINED_FUNCTION_29_2(0x6E6F697461636156) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v32 = v1 == 0x6E6F6F6E657250 && v0 == 0xE700000000000000;
                                    if (v32 || (OUTLINED_FUNCTION_22_7(0x6E6F6F6E657250) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v33 = v1 == 0x696E657665657250 && v0 == 0xEA0000000000676ELL;
                                      if (v33 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v34 = OUTLINED_FUNCTION_187_4(1633972052);
                                        v35 = v4 && v0 == 0xE500000000000000;
                                        if (v35 || (OUTLINED_FUNCTION_15_14(v34) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v36 = v1 == 0x6164726574736559 && v0 == 0xE900000000000079;
                                          if (v36 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v37 = v1 == 0x7961646E7553 && v0 == 0xE600000000000000;
                                            if (v37 || (OUTLINED_FUNCTION_21_38(0x7961646E7553) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v38 = v1 == 0x7961646E6F4DLL && v0 == 0xE600000000000000;
                                              if (v38 || (OUTLINED_FUNCTION_21_38(0x7961646E6F4DLL) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v39 = OUTLINED_FUNCTION_129_12(0x616473657554);
                                                v40 = v4 && v0 == 0xE700000000000000;
                                                if (v40 || (OUTLINED_FUNCTION_22_7(v39) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v41 = v1 == 0x616473656E646557 && v0 == 0xE900000000000079;
                                                  if (v41 || (OUTLINED_FUNCTION_0_9(0x616473656E646557, 0xE900000000000079) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v42 = v1 == 0x7961647372756854 && v0 == 0xE800000000000000;
                                                    if (v42 || (OUTLINED_FUNCTION_29_2(0x7961647372756854) & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      v43 = v1 == 0x796164697246 && v0 == 0xE600000000000000;
                                                      if (v43 || (OUTLINED_FUNCTION_21_38(0x796164697246) & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v44 = v1 == 0x7961647275746153 && v0 == 0xE800000000000000;
                                                        if (v44 || (OUTLINED_FUNCTION_29_2(0x7961647275746153) & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v45 = OUTLINED_FUNCTION_204_2(0x73696854u);
                                                          v46 = v4 && v0 == 0xE800000000000000;
                                                          if (v46 || (OUTLINED_FUNCTION_29_2(v45) & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            v47 = OUTLINED_FUNCTION_204_2(0x7473614Cu);
                                                            v48 = v4 && v0 == 0xE800000000000000;
                                                            if (v48 || (OUTLINED_FUNCTION_29_2(v47) & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              v49 = v1 == 0x746E6F4D73696854 && v0 == 0xE900000000000068;
                                                              if (v49 || (OUTLINED_FUNCTION_30_22(0x746E6F4D73696854, 104) & 1) != 0)
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else
                                                              {
                                                                v50 = v1 == 0x746E6F4D7473614CLL && v0 == 0xE900000000000068;
                                                                if (v50 || (OUTLINED_FUNCTION_30_22(0x746E6F4D7473614CLL, 104) & 1) != 0)
                                                                {

                                                                  OUTLINED_FUNCTION_196_5();
                                                                }

                                                                else
                                                                {
                                                                  v51 = OUTLINED_FUNCTION_155_7(0x655973696854);
                                                                  v52 = v4 && v0 == 0xE800000000000000;
                                                                  if (v52 || (OUTLINED_FUNCTION_29_2(v51) & 1) != 0)
                                                                  {

                                                                    OUTLINED_FUNCTION_218_3();
                                                                  }

                                                                  else
                                                                  {
                                                                    v53 = OUTLINED_FUNCTION_155_7(0x65597473614CLL);
                                                                    v54 = v4 && v0 == 0xE800000000000000;
                                                                    if (v54 || (OUTLINED_FUNCTION_29_2(v53) & 1) != 0)
                                                                    {

                                                                      OUTLINED_FUNCTION_216_3();
                                                                    }

                                                                    else
                                                                    {
                                                                      v55 = v1 == 0x7361666B61657242 && v0 == 0xE900000000000074;
                                                                      if (v55 || (OUTLINED_FUNCTION_0_9(0x7361666B61657242, 0xE900000000000074) & 1) != 0)
                                                                      {

                                                                        OUTLINED_FUNCTION_219_3();
                                                                      }

                                                                      else
                                                                      {
                                                                        v56 = OUTLINED_FUNCTION_299_2(1668183372);
                                                                        v57 = v4 && v0 == 0xE500000000000000;
                                                                        if (v57 || (OUTLINED_FUNCTION_15_14(v56) & 1) != 0)
                                                                        {

                                                                          OUTLINED_FUNCTION_217_3();
                                                                        }

                                                                        else
                                                                        {
                                                                          v58 = OUTLINED_FUNCTION_215_3(1852729668);
                                                                          if (v4 && v0 == 0xE600000000000000)
                                                                          {

                                                                            OUTLINED_FUNCTION_220_4();
                                                                          }

                                                                          else
                                                                          {
                                                                            OUTLINED_FUNCTION_21_38(v58);
                                                                            OUTLINED_FUNCTION_89();
                                                                            v5 = 35;
                                                                            if ((v1 & 1) == 0)
                                                                            {
                                                                              v5 = 0;
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
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.GenreType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.GenreType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v158 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v158, v159, v160, v161, &qword_1EAE42E08, &qword_1939970D8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v162 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v162, v163, v164, v165, &qword_1EAE42E08, &qword_1939970D8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v166, v167, v168, v169, v170, v171);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v172 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v172, v173, v174, v175, &qword_1EAE42E08, &qword_1939970D8);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v176 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v176, v177, v178, v179, &qword_1EAE42E08, &qword_1939970D8);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v180 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v180, v181, v182, v183, &qword_1EAE42E08, &qword_1939970D8);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v184 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v184, v185, v186, v187, &qword_1EAE42E08, &qword_1939970D8);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v188 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v188, v189, v190, v191, &qword_1EAE42E08, &qword_1939970D8);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v192 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v192, v193, v194, v195, &qword_1EAE42E08, &qword_1939970D8);
    v53 = v50;
  }

  OUTLINED_FUNCTION_11_7(v50, v51, v52, v53);
  if (!(v18 ^ v19 | v12))
  {
    v196 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_84_2(v196, v197, v198, v199, &qword_1EAE42E08, &qword_1939970D8);
    v58 = v55;
  }

  OUTLINED_FUNCTION_14_56(v55, v56, v57, v58);
  if (!(v18 ^ v19 | v12))
  {
    v200 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v200, v201, v202, v203, &qword_1EAE42E08, &qword_1939970D8);
    v63 = v60;
  }

  OUTLINED_FUNCTION_11_52(v60, v61, v62, v63);
  if (!(v18 ^ v19 | v12))
  {
    v204 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v204, v205, v206, v207, &qword_1EAE42E08, &qword_1939970D8);
    v68 = v65;
  }

  OUTLINED_FUNCTION_13_56(v65, v66, v67, v68);
  if (!(v18 ^ v19 | v12))
  {
    v208 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v208, v209, v210, v211, &qword_1EAE42E08, &qword_1939970D8);
    v73 = v70;
  }

  OUTLINED_FUNCTION_10_64(v70, v71, v72, v73);
  if (!(v18 ^ v19 | v12))
  {
    v212 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_84_2(v212, v213, v214, v215, &qword_1EAE42E08, &qword_1939970D8);
    v78 = v75;
  }

  OUTLINED_FUNCTION_15_54(v75, v76, v77, v78);
  if (!(v18 ^ v19 | v12))
  {
    v216 = OUTLINED_FUNCTION_39(v84);
    v80 = OUTLINED_FUNCTION_85(v216, v217, v218, v219, &qword_1EAE42E08, &qword_1939970D8);
    v83 = v80;
  }

  OUTLINED_FUNCTION_12_53(v80, v81, v82, v83);
  if (!(v18 ^ v19 | v12))
  {
    v220 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v220, v221, v222, v223, &qword_1EAE42E08, &qword_1939970D8);
    v88 = v85;
  }

  OUTLINED_FUNCTION_16_41(v85, v86, v87, v88);
  if (!(v18 ^ v19 | v12))
  {
    v224 = OUTLINED_FUNCTION_39(v94);
    v90 = OUTLINED_FUNCTION_85(v224, v225, v226, v227, &qword_1EAE42E08, &qword_1939970D8);
    v93 = v90;
  }

  OUTLINED_FUNCTION_17_41(v90, v91, v92, v93);
  if (!(v18 ^ v19 | v12))
  {
    v228 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v228, v229, v230, v231, &qword_1EAE42E08, &qword_1939970D8);
    v98 = v95;
  }

  OUTLINED_FUNCTION_19_54(v95, v96, v97, v98);
  if (!(v18 ^ v19 | v12))
  {
    v232 = OUTLINED_FUNCTION_39(v104);
    v100 = OUTLINED_FUNCTION_85(v232, v233, v234, v235, &qword_1EAE42E08, &qword_1939970D8);
    v103 = v100;
  }

  OUTLINED_FUNCTION_20_47(v100, v101, v102, v103);
  if (!(v18 ^ v19 | v12))
  {
    v236 = OUTLINED_FUNCTION_39(v109);
    v105 = OUTLINED_FUNCTION_84_2(v236, v237, v238, v239, &qword_1EAE42E08, &qword_1939970D8);
    v108 = v105;
  }

  OUTLINED_FUNCTION_25_36(v105, v106, v107, v108);
  if (!(v18 ^ v19 | v12))
  {
    v240 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_85(v240, v241, v242, v243, &qword_1EAE42E08, &qword_1939970D8);
    v113 = v110;
  }

  OUTLINED_FUNCTION_22_38(v110, v111, v112, v113);
  if (!(v18 ^ v19 | v12))
  {
    v244 = OUTLINED_FUNCTION_39(v119);
    v115 = OUTLINED_FUNCTION_84_2(v244, v245, v246, v247, &qword_1EAE42E08, &qword_1939970D8);
    v118 = v115;
  }

  OUTLINED_FUNCTION_24_46(v115, v116, v117, v118);
  if (!(v18 ^ v19 | v12))
  {
    v248 = OUTLINED_FUNCTION_39(v124);
    v120 = OUTLINED_FUNCTION_85(v248, v249, v250, v251, &qword_1EAE42E08, &qword_1939970D8);
    v123 = v120;
  }

  OUTLINED_FUNCTION_21_45(v120, v121, v122, v123);
  if (!(v18 ^ v19 | v12))
  {
    v252 = OUTLINED_FUNCTION_39(v129);
    v125 = OUTLINED_FUNCTION_84_2(v252, v253, v254, v255, &qword_1EAE42E08, &qword_1939970D8);
    v128 = v125;
  }

  OUTLINED_FUNCTION_23_44(v125, v126, v127, v128);
  if (!(v18 ^ v19 | v12))
  {
    v256 = OUTLINED_FUNCTION_39(v134);
    v130 = OUTLINED_FUNCTION_85(v256, v257, v258, v259, &qword_1EAE42E08, &qword_1939970D8);
    v133 = v130;
  }

  OUTLINED_FUNCTION_28_32(v130, v131, v132, v133);
  if (!(v18 ^ v19 | v12))
  {
    v260 = OUTLINED_FUNCTION_39(v139);
    v135 = OUTLINED_FUNCTION_84_2(v260, v261, v262, v263, &qword_1EAE42E08, &qword_1939970D8);
    v138 = v135;
  }

  OUTLINED_FUNCTION_32_33(v135, v136, v137, v138);
  if (!(v18 ^ v19 | v12))
  {
    v264 = OUTLINED_FUNCTION_39(v144);
    v140 = OUTLINED_FUNCTION_85(v264, v265, v266, v267, &qword_1EAE42E08, &qword_1939970D8);
    v143 = v140;
  }

  OUTLINED_FUNCTION_30_29(v140, v141, v142, v143);
  if (!(v18 ^ v19 | v12))
  {
    v268 = OUTLINED_FUNCTION_39(v149);
    v145 = OUTLINED_FUNCTION_84_2(v268, v269, v270, v271, &qword_1EAE42E08, &qword_1939970D8);
    v148 = v145;
  }

  OUTLINED_FUNCTION_31_39(v145, v146, v147, v148);
  if (!(v18 ^ v19 | v12))
  {
    v272 = OUTLINED_FUNCTION_39(v154);
    v150 = OUTLINED_FUNCTION_85(v272, v273, v274, v275, &qword_1EAE42E08, &qword_1939970D8);
    v153 = v150;
  }

  OUTLINED_FUNCTION_47_5(v150, v151, v152, v153);
  return OUTLINED_FUNCTION_89_3(v155, v156);
}

void MomentsEventData.GenreType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_198_2(1702194242);
        break;
      case 2:
        OUTLINED_FUNCTION_164_7(0x72646C696843);
        break;
      case 3:
        OUTLINED_FUNCTION_245_4();
        break;
      case 6:
        OUTLINED_FUNCTION_263_2(0x72746E756F43);
        break;
      case 7:
        OUTLINED_FUNCTION_115_12(1668178244);
        break;
      case 8:
        OUTLINED_FUNCTION_118_14();
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_286_2();
        break;
      case 0x14:
        OUTLINED_FUNCTION_191_4(0x7277676E6F53);
        break;
      case 0x15:
        OUTLINED_FUNCTION_259_2(0x74646E756F53);
        break;
      case 0x16:
        OUTLINED_FUNCTION_144();
        break;
      case 0x19:
        OUTLINED_FUNCTION_115_12(1768189513);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.GenreType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_192_3(0x6E7265746C41);
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_307_1(1702194242);
      v10 = v4 && v0 == 0xE500000000000000;
      if (v10 || (OUTLINED_FUNCTION_15_14(v9) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_210_2(0x72646C696843);
        v13 = v4 && v0 == v12;
        if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v14 = OUTLINED_FUNCTION_245_4();
          v16 = v1 == v14 && v0 == v15;
          if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v17 = v1 == 0x6163697373616C43 && v0 == 0xE90000000000006CLL;
            if (v17 || (OUTLINED_FUNCTION_0_9(0x6163697373616C43, 0xE90000000000006CLL) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v18 = v1 == 0x7964656D6F43 && v0 == 0xE600000000000000;
              if (v18 || (OUTLINED_FUNCTION_21_38(0x7964656D6F43) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v19 = OUTLINED_FUNCTION_103_14();
                v20 = v4 && v0 == 0xE700000000000000;
                if (v20 || (OUTLINED_FUNCTION_22_7(v19) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v21 = OUTLINED_FUNCTION_116_15(1668178244);
                  v22 = v4 && v0 == 0xE500000000000000;
                  if (v22 || (OUTLINED_FUNCTION_15_14(v21) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v23 = v1 == 0x6E6F727463656C45 && v0 == 0xEA00000000006369;
                    if (v23 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v24 = v1 == 0x706F48706948 && v0 == 0xE600000000000000;
                      if (v24 || (OUTLINED_FUNCTION_21_38(0x706F48706948) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v25 = v1 == 7364946 && v0 == 0xE300000000000000;
                        if (v25 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v26 = v1 == 2054840650 && v0 == 0xE400000000000000;
                          if (v26 || (OUTLINED_FUNCTION_19_8(2054840650) & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v27 = v1 == 7368528 && v0 == 0xE300000000000000;
                            if (v27 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v28 = v1 == 0x6E6974614CLL && v0 == 0xE500000000000000;
                              if (v28 || (OUTLINED_FUNCTION_15_14(0x6E6974614CLL) & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v29 = v1 == 1801678674 && v0 == 0xE400000000000000;
                                if (v29 || (OUTLINED_FUNCTION_19_8(1801678674) & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v30 = OUTLINED_FUNCTION_286_2();
                                  v32 = v1 == v30 && v0 == v31;
                                  if (v32 || (OUTLINED_FUNCTION_0_9(v30, v31) & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v33 = v1 == 0x42444E4152 && v0 == 0xE500000000000000;
                                    if (v33 || (OUTLINED_FUNCTION_15_14(0x42444E4152) & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v34 = v1 == 1819635539 && v0 == 0xE400000000000000;
                                      if (v34 || (OUTLINED_FUNCTION_19_8(1819635539) & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v35 = v1 == 0x656167676552 && v0 == 0xE600000000000000;
                                        if (v35 || (OUTLINED_FUNCTION_21_38(0x656167676552) & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v36 = OUTLINED_FUNCTION_215_3(1735289171);
                                          v37 = v4 && v0 == 0xE600000000000000;
                                          if (v37 || (OUTLINED_FUNCTION_21_38(v36) & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v38 = v1 == 0x74697277676E6F53 && v0 == 0xEA00000000007265;
                                            if (v38 || (OUTLINED_FUNCTION_0_9(0x74697277676E6F53, 0xEA00000000007265) & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v39 = v1 == 0x617274646E756F53 && v0 == 0xEA00000000006B63;
                                              if (v39 || (OUTLINED_FUNCTION_0_9(0x617274646E756F53, 0xEA00000000006B63) & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v40 = v1 == 0x646977646C726F57 && v0 == 0xE900000000000065;
                                                if (v40 || (OUTLINED_FUNCTION_30_22(0x646977646C726F57, 101) & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v41 = v1 == 1937008968 && v0 == 0xE400000000000000;
                                                  if (v41 || (OUTLINED_FUNCTION_19_8(1937008968) & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v42 = v1 == 0x736569646C4FLL && v0 == 0xE600000000000000;
                                                    if (v42 || (OUTLINED_FUNCTION_21_38(0x736569646C4FLL) & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      v43 = OUTLINED_FUNCTION_116_15(1768189513);
                                                      v44 = v4 && v0 == 0xE500000000000000;
                                                      if (v44 || (OUTLINED_FUNCTION_15_14(v43) & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v45 = v1 == 0x6C6174654DLL && v0 == 0xE500000000000000;
                                                        if (v45 || (OUTLINED_FUNCTION_15_14(0x6C6174654DLL) & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else if (v1 == 0x73726568744FLL && v0 == 0xE600000000000000)
                                                        {

                                                          OUTLINED_FUNCTION_159_9();
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_21_38(0x73726568744FLL);
                                                          OUTLINED_FUNCTION_89();
                                                          v5 = 27;
                                                          if ((v1 & 1) == 0)
                                                          {
                                                            v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.MediaType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.MediaType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    v58 = OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_84_2(v58, v59, v60, v61, &qword_1EAE42E00, &qword_1939970D0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v62 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v62, v63, v64, v65, &qword_1EAE42E00, &qword_1939970D0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v66, v67, v68, v69, v70, v71);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v72 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v72, v73, v74, v75, &qword_1EAE42E00, &qword_1939970D0);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v76 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v76, v77, v78, v79, &qword_1EAE42E00, &qword_1939970D0);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    v80 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v80, v81, v82, v83, &qword_1EAE42E00, &qword_1939970D0);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v84 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v84, v85, v86, v87, &qword_1EAE42E00, &qword_1939970D0);
    v43 = v40;
  }

  OUTLINED_FUNCTION_4_8(v40, v41, v42, v43);
  if (!(v18 ^ v19 | v12))
  {
    v88 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_84_2(v88, v89, v90, v91, &qword_1EAE42E00, &qword_1939970D0);
    v48 = v45;
  }

  OUTLINED_FUNCTION_6_14(v45, v46, v47, v48);
  if (!(v18 ^ v19 | v12))
  {
    v92 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v92, v93, v94, v95, &qword_1EAE42E00, &qword_1939970D0);
    v53 = v50;
  }

  OUTLINED_FUNCTION_47_5(v50, v51, v52, v53);
  return OUTLINED_FUNCTION_89_3(v55, v56);
}