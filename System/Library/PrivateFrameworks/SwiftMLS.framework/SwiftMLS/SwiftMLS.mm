uint64_t sub_26BDFF64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MLS.Cryptography.MACTag(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BDFF70C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MLS.Cryptography.MACTag(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s12GroupInfoTBSVMa(uint64_t a1)
{
  result = qword_28045E1F8;
  if (!qword_28045E1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BDFF7FC(uint64_t a1)
{
  sub_26BE00468(319, &qword_28045E208, &type metadata for MLS.Extension.Extension, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLS.Cryptography.MACTag(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BDFF8E4(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v43 = *(a1 + 32);
  v44 = v4;
  v5 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v5;
  v6 = *(a1 + 48);
  v39 = v43;
  v40 = v6;
  v45 = *(a1 + 64);
  v41 = *(a1 + 64);
  v37 = v42[0];
  v38 = v3;
  sub_26BE001A8(v42, &v32);
  sub_26BFAF494(&v37);
  if (v1)
  {
    v34 = v39;
    v35 = v40;
    v36 = v41;
    v32 = v37;
    v33 = v38;
    sub_26BE00204(&v32);
    return;
  }

  v8 = v7;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  v32 = v37;
  v33 = v38;
  sub_26BE00204(&v32);
  v9 = *(a1 + 72);
  v28 = xmmword_26C00BBD0;
  v29 = 0;
  v10 = sub_26BEEAC24(0, v9);
  v11 = sub_26BF30414(v10);
  sub_26BF2A30C(&v28);
  sub_26BE00258(v28, *(&v28 + 1));
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    goto LABEL_19;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = _s12GroupInfoTBSVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v15 = sub_26BE12418(v28);
  v17 = v16;

  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_14;
    }

    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(v17);
    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(v15), v15))
  {
    goto LABEL_23;
  }

  v19 = HIDWORD(v15) - v15;
LABEL_14:
  v26 = v14;
  v22 = v13;
  v23 = sub_26BF30414(v19);
  sub_26BE11228(v15, v17);
  sub_26BE00258(v15, v17);
  v24 = v23 + v19;
  if (__OFADD__(v23, v19))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v22 + v24;
  if (__OFADD__(v22, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v27 = bswap32(*(a1 + *(v26 + 28)));
  v30 = MEMORY[0x277D838B0];
  v31 = MEMORY[0x277CC9C18];
  *&v28 = &v27;
  *(&v28 + 1) = &v28;
  __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  if (__OFADD__(v25, 4))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_26BDFFBFC()
{
  v0 = sub_26C00A48C();
  v1 = MEMORY[0x26D699100](v0);

  return v1;
}

uint64_t sub_26BDFFC38(uint64_t a1)
{
  sub_26C00A48C();
  sub_26C00A58C();
}

uint64_t sub_26BDFFC8C(uint64_t a1)
{
  sub_26C00A48C();
  sub_26C00B05C();
  sub_26C00A58C();
  v1 = sub_26C00B0CC();

  return v1;
}

uint64_t sub_26BDFFD08(uint64_t a1, id *a2)
{
  result = sub_26C00A46C();
  *a2 = 0;
  return result;
}

uint64_t sub_26BDFFD80(uint64_t a1, id *a2)
{
  v3 = sub_26C00A47C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26BDFFE00@<X0>(uint64_t *a2@<X8>)
{
  sub_26C00A48C();
  v3 = sub_26C00A45C();

  *a2 = v3;
  return result;
}

uint64_t sub_26BDFFE4C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_26C0092AC();
}

uint64_t sub_26BDFFFA4(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  swift_getWitnessTable();
  sub_26C0092BC();
  return sub_26C00B0CC();
}

uint64_t sub_26BE00054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BE000A0(void *a1, uint64_t *a2)
{
  v2 = sub_26C00A48C();
  v4 = v3;
  if (v2 == sub_26C00A48C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26C00AF2C();
  }

  return v7 & 1;
}

uint64_t sub_26BE00134@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26C00A45C();

  *a2 = v3;
  return result;
}

uint64_t sub_26BE0017C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C00A48C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BE00258(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26BE002F4(uint64_t a1)
{
  v2 = sub_26BE00054(&qword_28045E250, type metadata accessor for URLResourceKey, &unk_26C00BE38);
  v3 = sub_26BE00054(&qword_28045E258, type metadata accessor for URLResourceKey, &unk_26C00BDD8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_26BE00468(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t MLS.KeyPackage.initKey.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

void sub_26BE00608(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void MLS.KeyPackage.initKey.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MLS.KeyPackage.leafNode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v12[6] = *(v1 + 120);
  v12[7] = v3;
  v13 = *(v1 + 152);
  v4 = *(v1 + 40);
  v5 = *(v1 + 72);
  v12[2] = *(v1 + 56);
  v12[3] = v5;
  v12[4] = *(v1 + 88);
  v12[5] = v2;
  v12[0] = *(v1 + 24);
  v12[1] = v4;
  v6 = *(v1 + 104);
  v7 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 152);
  v8 = *(v1 + 40);
  v9 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v9;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v6;
  *a1 = *(v1 + 24);
  *(a1 + 16) = v8;
  return sub_26BE00758(v12, v11);
}

__n128 MLS.KeyPackage.leafNode.setter(__int128 *a1)
{
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v12[6] = *(v1 + 120);
  v12[7] = v4;
  v13 = *(v1 + 152);
  v5 = *(v1 + 40);
  v6 = *(v1 + 72);
  v12[2] = *(v1 + 56);
  v12[3] = v6;
  v12[4] = *(v1 + 88);
  v12[5] = v3;
  v12[0] = *(v1 + 24);
  v12[1] = v5;
  sub_26BE00854(v12);
  v7 = a1[4];
  *(v1 + 104) = a1[5];
  v8 = a1[7];
  *(v1 + 120) = a1[6];
  *(v1 + 136) = v8;
  v9 = *a1;
  *(v1 + 40) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 56) = result;
  *(v1 + 72) = v11;
  *(v1 + 88) = v7;
  *(v1 + 152) = *(a1 + 16);
  *(v1 + 24) = v9;
  return result;
}

uint64_t MLS.KeyPackage.signature.getter()
{
  v1 = *(v0 + 168);
  sub_26BE00608(v1, *(v0 + 176));
  return v1;
}

void MLS.KeyPackage.signature.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 168), *(v2 + 176));
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8LeafNodeV0cD13SourceContentO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26BE009D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE00A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BE00A98(unsigned __int16 *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 52);
  v6 = *(a1 + 68);
  v56 = *(a1 + 60);
  v57 = v6;
  v7 = *(a1 + 20);
  v58 = *(a1 + 19);
  v8 = *(a1 + 20);
  v9 = *(a1 + 36);
  v52 = *(a1 + 28);
  v53 = v9;
  v54 = *(a1 + 44);
  v55 = v5;
  v50 = *(a1 + 12);
  v51 = v8;
  v34 = *(a1 + 21);
  v35 = *(a1 + 22);
  v36 = v7;
  LOWORD(v39[0]) = 256;
  v10 = MEMORY[0x277D838B0];
  v11 = MEMORY[0x277CC9C18];
  *(&v42 + 1) = MEMORY[0x277D838B0];
  *&v43 = MEMORY[0x277CC9C18];
  *&v41 = v39;
  *(&v41 + 1) = v39 + 2;
  __swift_project_boxed_opaque_existential_1(&v41, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v41);
  LOWORD(v39[0]) = bswap32(v2) >> 16;
  *(&v42 + 1) = v10;
  *&v43 = v11;
  *&v41 = v39;
  *(&v41 + 1) = v39 + 2;
  __swift_project_boxed_opaque_existential_1(&v41, v10);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v41);
  v12 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v15 = *(v3 + 16);
  v14 = *(v3 + 24);
  v13 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v13 = HIDWORD(v3) - v3;
  }

LABEL_11:
  v16 = sub_26BF30414(v13);
  if (v1)
  {
    return;
  }

  v17 = v16;
  sub_26BE11228(v3, v4);
  v18 = v17 + v13;
  if (__OFADD__(v17, v13))
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = v18 + 4;
  if (__OFADD__(v18, 4))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = v56;
  v48 = v57;
  v49 = v58;
  v43 = v52;
  v44 = v53;
  v45 = v54;
  v46 = v55;
  v41 = v50;
  v42 = v51;
  sub_26BE00758(&v50, v39);
  sub_26BE7DD28(&v41);
  v39[6] = v47;
  v39[7] = v48;
  v40 = v49;
  v39[2] = v43;
  v39[3] = v44;
  v39[4] = v45;
  v39[5] = v46;
  v39[0] = v41;
  v39[1] = v42;
  v21 = v20;
  sub_26BE00854(v39);
  v22 = __OFADD__(v19, v21);
  v23 = v19 + v21;
  if (v22)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = xmmword_26C00BBD0;
  v38 = 0;
  v24 = sub_26BEEAC24(0, v36);
  v25 = v24;
  v26 = sub_26BF30414(v24);
  sub_26BF2A30C(&v37);
  sub_26BE00258(v37, *(&v37 + 1));
  v27 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
    goto LABEL_36;
  }

  v28 = v23 + v27;
  if (__OFADD__(v23, v27))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v29)
    {
      v30 = BYTE6(v35);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v29 != 2)
  {
    v30 = 0;
    goto LABEL_29;
  }

  v32 = *(v34 + 16);
  v31 = *(v34 + 24);
  v30 = v31 - v32;
  if (__OFSUB__(v31, v32))
  {
    __break(1u);
LABEL_26:
    if (__OFSUB__(HIDWORD(v34), v34))
    {
      goto LABEL_40;
    }

    v30 = HIDWORD(v34) - v34;
  }

LABEL_29:
  v33 = sub_26BF30414(v30);
  sub_26BE11228(v34, v35);
  if (__OFADD__(v33, v30))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (__OFADD__(v28, v33 + v30))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }
}

void sub_26BE00E2C(uint64_t a1@<X8>)
{
  v3 = v1;
  v92 = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  if (v5 != 1)
  {
    sub_26BE01600();
    swift_allocError();
    v11 = 5;
    goto LABEL_8;
  }

  v6 = sub_26BEE6180();
  if ((v6 & 0x10000) != 0)
  {
LABEL_6:
    sub_26BE01600();
    swift_allocError();
    v11 = 1;
LABEL_8:
    *v10 = v11;
    swift_willThrow();
    return;
  }

  v7 = v6;
  v8 = sub_26BF2F7B0();
  if (v2)
  {
    return;
  }

  v74 = v8;
  v75 = v9;
  sub_26BE7DE38(v90);
  v87 = v90[6];
  v88 = v90[7];
  v89 = v91;
  v83 = v90[2];
  v84 = v90[3];
  v85 = v90[4];
  v86 = v90[5];
  v81 = v90[0];
  v82 = v90[1];
  v13 = *v1;
  v12 = v1[1];
  v14 = v3[2];
  sub_26BE00608(*v3, v3[1]);
  sub_26BE00608(v13, v12);
  sub_26BF30764(v3, &v78);
  if (v79)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v13;
    v3[1] = v12;
    v15 = v12;
    v16 = v13;
    v3[2] = v14;
LABEL_13:
    sub_26BE00258(v16, v15);
    *v3 = v13;
    v3[1] = v12;
    v3[2] = v14;
    sub_26BE01600();
    swift_allocError();
    *v17 = 1;
LABEL_14:
    swift_willThrow();
    sub_26BE00258(v74, v75);
    sub_26BE00854(&v81);
    return;
  }

  v18 = v78;
  sub_26BE00258(v13, v12);
  if (v18 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v19 = 5;
    swift_willThrow();
LABEL_10:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v13;
    v3[1] = v12;
    v3[2] = v14;
    goto LABEL_14;
  }

  v20 = sub_26BF2A44C(v18);
  if (v21 >> 60 == 15)
  {
    v16 = *v3;
    v15 = v3[1];
    goto LABEL_13;
  }

  v78 = v20;
  v79 = v21;
  v23 = v21 >> 62;
  v63 = v20 >> 32;
  v73 = MEMORY[0x277D84F90];
  v64 = BYTE6(v21);
  v65 = v21 >> 62;
  v80 = v22;
  v68 = v13;
  v69 = v12;
  v67 = v14;
  v66 = v20;
  if ((v21 >> 62) <= 1)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v23 == 2)
  {
    v24 = *(v20 + 24);
  }

  else
  {
    v24 = 0;
  }

  while (1)
  {
    v25 = __OFSUB__(v24, v22);
    v26 = v24 - v22;
    if (v25)
    {
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
    }

    if (v26 < 1)
    {
      break;
    }

    v27 = v22 + 2;
    if (__OFADD__(v22, 2))
    {
      goto LABEL_79;
    }

    v29 = v78;
    v28 = v79;
    v30 = v79 >> 62;
    if ((v79 >> 62) <= 1)
    {
      if (v30)
      {
        v31 = v78 >> 32;
      }

      else
      {
        v31 = BYTE6(v79);
      }

LABEL_34:
      if (v31 < v27)
      {
        goto LABEL_70;
      }

      goto LABEL_37;
    }

    if (v30 == 2)
    {
      v31 = *(v78 + 24);
      goto LABEL_34;
    }

    if (v27 > 0)
    {
      goto LABEL_70;
    }

LABEL_37:
    v76 = v78;
    v77 = v79;
    if (v27 < v22)
    {
      goto LABEL_80;
    }

    sub_26BE00608(v78, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    v71 = v28;
    sub_26BE016FC();
    v32 = v28;
    sub_26C008E1C();
    sub_26BE00258(v76, v77);
    v80 = v27;
    sub_26BE00608(v29, v28);
    v72 = v29;
    sub_26BE00608(v29, v28);
    sub_26BF30764(&v78, &v76);
    if (v77)
    {
      sub_26BE00258(v78, v79);
      v36 = v28;
      v53 = v29;
      v35 = v29;
      goto LABEL_69;
    }

    v33 = v76;
    sub_26BE00258(v29, v28);
    v34 = v80 + v33;
    if (__OFADD__(v80, v33))
    {
      goto LABEL_81;
    }

    v35 = v78;
    v36 = v79;
    v37 = v79 >> 62;
    if ((v79 >> 62) <= 1)
    {
      if (v37)
      {
        v38 = v78 >> 32;
      }

      else
      {
        v38 = BYTE6(v79);
      }

LABEL_46:
      if (v38 < v34)
      {
        goto LABEL_68;
      }

      goto LABEL_49;
    }

    if (v37 == 2)
    {
      v38 = *(v78 + 24);
      goto LABEL_46;
    }

    if (v34 > 0)
    {
LABEL_68:
      v53 = v29;
LABEL_69:
      sub_26BE00258(v35, v36);
      v78 = v53;
      v79 = v32;
      v80 = v27;
LABEL_70:
      sub_26BE01600();
      swift_allocError();
      *v54 = 1;
      v12 = v69;
      swift_willThrow();

      sub_26BE00258(v78, v79);
      v14 = v67;
      v13 = v68;
      goto LABEL_10;
    }

LABEL_49:
    if (v34 < v80)
    {
      goto LABEL_82;
    }

    v39 = sub_26C00909C();
    v40 = v39;
    v42 = v41;
    v80 = v34;
    v43 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v43 != 2)
      {
        goto LABEL_57;
      }

      v39 = *(v39 + 16);
      v44 = *(v40 + 24);
    }

    else
    {
      if (!v43)
      {
        goto LABEL_57;
      }

      v39 = v39;
      v44 = v40 >> 32;
    }

    if (v44 < v39)
    {
      goto LABEL_83;
    }

LABEL_57:
    v45 = sub_26C00909C();
    v47 = v46;
    sub_26BE00258(v40, v42);
    sub_26BE00258(v72, v71);
    sub_26BE00608(v45, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_26BEEBD8C(0, *(v73 + 2) + 1, 1, v73);
    }

    v49 = *(v73 + 2);
    v48 = *(v73 + 3);
    v70 = v34;
    if (v49 >= v48 >> 1)
    {
      v73 = sub_26BEEBD8C((v48 > 1), v49 + 1, 1, v73);
    }

    sub_26BE00258(v45, v47);
    *(v73 + 2) = v49 + 1;
    v50 = &v73[24 * v49];
    *(v50 + 16) = bswap32(0) >> 16;
    *(v50 + 5) = v45;
    *(v50 + 6) = v47;
    v13 = v68;
    v12 = v69;
    v14 = v67;
    LODWORD(v23) = v65;
    v20 = v66;
    v22 = v70;
    if (v65 > 1)
    {
      goto LABEL_20;
    }

LABEL_23:
    v24 = v64;
    if (v23)
    {
      v24 = v63;
    }
  }

  v51 = v79 >> 62;
  if ((v79 >> 62) > 1)
  {
    if (v51 == 2)
    {
      v52 = *(v78 + 24);
    }

    else
    {
      v52 = 0;
    }
  }

  else if (v51)
  {
    v52 = v78 >> 32;
  }

  else
  {
    v52 = BYTE6(v79);
  }

  if (__OFSUB__(v52, v22))
  {
    __break(1u);
  }

  else
  {
    if (v52 != v22)
    {
      sub_26BE01654();
      swift_allocError();
      *v56 = 0;
      v56[112] = 1;
      swift_willThrow();

      sub_26BE00258(v78, v79);
      goto LABEL_10;
    }

    sub_26BE00258(v78, v79);
    sub_26BE00258(v13, v12);
    v55 = sub_26BF2F7B0();
    v57 = v85;
    *(a1 + 104) = v86;
    v58 = v88;
    *(a1 + 120) = v87;
    *(a1 + 136) = v58;
    v59 = v81;
    *(a1 + 40) = v82;
    v60 = v84;
    *(a1 + 56) = v83;
    *(a1 + 72) = v60;
    *(a1 + 88) = v57;
    *a1 = v7;
    *(a1 + 8) = v74;
    *(a1 + 16) = v75;
    v61 = v89;
    *(a1 + 24) = v59;
    *(a1 + 152) = v61;
    *(a1 + 160) = v73;
    *(a1 + 168) = v55;
    *(a1 + 176) = v62;
  }
}

unint64_t sub_26BE01600()
{
  result = qword_28045E260;
  if (!qword_28045E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E260);
  }

  return result;
}

unint64_t sub_26BE01654()
{
  result = qword_28045E268;
  if (!qword_28045E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E268);
  }

  return result;
}

unint64_t sub_26BE016A8()
{
  result = qword_28045E278;
  if (!qword_28045E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E278);
  }

  return result;
}

unint64_t sub_26BE016FC()
{
  result = qword_28045E280;
  if (!qword_28045E280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E270, &unk_26C00E290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E280);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_WORD *sub_26BE017E8@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t MLS.VerifiableDeliveryImdn.contentMessageId.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

void MLS.VerifiableDeliveryImdn.contentMessageId.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MLS.VerifiableDeliveryImdn.originalContentMessageId.getter()
{
  v1 = *(v0 + 24);
  sub_26BE00608(v1, *(v0 + 32));
  return v1;
}

void MLS.VerifiableDeliveryImdn.originalContentMessageId.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

double sub_26BE01B18@<D0>(_WORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a5;
  *a6 = *a1;
  *(a6 + 2) = v6;
  result = 0.0;
  *(a6 + 8) = xmmword_26C00BBD0;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = v7;
  return result;
}

_WORD *MLS.VerifiableDeliveryImdn.init(version:deliveryNotificationStatus:contentMessageId:originalContentMessageId:mlsClientFailureReason:)@<X0>(_WORD *result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a2;
  v9 = *a7;
  *a8 = *result;
  *(a8 + 2) = v8;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = v9;
  return result;
}

uint64_t MLS.VerifiableDisplayImdn.contentMessageId.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

void MLS.VerifiableDisplayImdn.contentMessageId.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MLS.VerifiableDisplayImdn.originalContentMessageId.getter()
{
  v1 = *(v0 + 24);
  sub_26BE00608(v1, *(v0 + 32));
  return v1;
}

void MLS.VerifiableDisplayImdn.originalContentMessageId.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void MLS.VerifiableDisplayImdn.init(version:displayNotificationStatus:messageID:)(_WORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = *a1;
  *(a5 + 2) = v5;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  sub_26BE00608(a3, a4);
}

_WORD *MLS.VerifiableDisplayImdn.init(version:displayNotificationStatus:contentMessageId:originalContentMessageId:)@<X0>(_WORD *result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = *result;
  *(a7 + 2) = v7;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t MLS.VerifiableFileTransfer.messageID.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

void MLS.VerifiableFileTransfer.messageID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

_WORD *MLS.VerifiableFileTransfer.init(version:messageID:)@<X0>(_WORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t sub_26BE01ED4(unsigned __int16 *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v23 = *(a1 + 3);
  v24 = *(a1 + 4);
  v22 = a1[20];
  v25 = bswap32(*a1) >> 16;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v28 = MEMORY[0x277D838B0];
  v29 = MEMORY[0x277CC9C18];
  v26 = &v25;
  v27 = &v26;
  __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v25 = bswap32(v2) >> 16;
  v28 = v5;
  v29 = v6;
  v26 = &v25;
  v27 = &v26;
  __swift_project_boxed_opaque_existential_1(&v26, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v7 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v8 = HIDWORD(v3) - v3;
  }

LABEL_11:
  result = sub_26BF30414(v8);
  if (v1)
  {
    return result;
  }

  v12 = result;
  sub_26BE11228(v3, v4);
  v13 = v12 + v8;
  if (__OFADD__(v12, v8))
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = v13 + 4;
  if (__OFADD__(v13, 4))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_26;
    }

    v18 = *(v23 + 16);
    v17 = *(v23 + 24);
    v16 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v24);
    goto LABEL_26;
  }

  if (__OFSUB__(HIDWORD(v23), v23))
  {
    goto LABEL_36;
  }

  v16 = HIDWORD(v23) - v23;
LABEL_26:
  v19 = sub_26BF30414(v16);
  sub_26BE11228(v23, v24);
  v20 = v19 + v16;
  if (__OFADD__(v19, v16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = v14 + v20;
  if (__OFADD__(v14, v20))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = __rev16(v22);
  v28 = v5;
  v29 = MEMORY[0x277CC9C18];
  v26 = &v25;
  v27 = &v26;
  __swift_project_boxed_opaque_existential_1(&v26, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  result = v21 + 2;
  if (__OFADD__(v21, 2))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

void sub_26BE02154(uint64_t a1@<X8>)
{
  v3 = sub_26BEE6180();
  if ((v3 & 0x10000) != 0 || (v4 = v3, v5 = sub_26BEE6180(), (v5 & 0x10000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }

  else
  {
    v6 = v5;
    v7 = sub_26BF2F7B0();
    if (!v1)
    {
      v9 = v7;
      v10 = v8;
      v11 = sub_26BF2F7B0();
      v13 = v12;
      v14 = sub_26BEE6180();
      if ((v14 & 0x10000) != 0)
      {
        sub_26BE01600();
        swift_allocError();
        *v16 = 1;
        swift_willThrow();
        sub_26BE00258(v11, v13);
        sub_26BE00258(v9, v10);
      }

      else
      {
        *a1 = v4;
        *(a1 + 2) = v6;
        *(a1 + 8) = v9;
        *(a1 + 16) = v10;
        *(a1 + 24) = v11;
        *(a1 + 32) = v13;
        *(a1 + 40) = v14;
      }
    }
  }
}

unint64_t sub_26BE02278(unsigned __int16 *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v21 = *(a1 + 3);
  v22 = *(a1 + 4);
  v23 = bswap32(*a1) >> 16;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v26 = MEMORY[0x277D838B0];
  v27 = MEMORY[0x277CC9C18];
  v24 = &v23;
  v25 = &v24;
  __swift_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v23 = bswap32(v2) >> 16;
  v26 = v5;
  v27 = v6;
  v24 = &v23;
  v25 = &v24;
  __swift_project_boxed_opaque_existential_1(&v24, v5);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v7 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = HIDWORD(v3) - v3;
  }

LABEL_11:
  result = sub_26BF30414(v8);
  if (v1)
  {
    return result;
  }

  v12 = result;
  sub_26BE11228(v3, v4);
  v13 = v12 + v8;
  if (__OFADD__(v12, v8))
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = v13 + 4;
  if (__OFADD__(v13, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v22);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_25;
  }

  v18 = *(v21 + 16);
  v17 = *(v21 + 24);
  v16 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
LABEL_21:
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      goto LABEL_33;
    }

    v16 = HIDWORD(v21) - v21;
  }

LABEL_25:
  v19 = sub_26BF30414(v16);
  sub_26BE11228(v21, v22);
  v20 = v19 + v16;
  if (__OFADD__(v19, v16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = v14 + v20;
  if (__OFADD__(v14, v20))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BE024A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BEE6180();
  if ((v3 & 0x10000) != 0 || (v4 = v3, v5 = sub_26BEE6180(), (v5 & 0x10000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  else
  {
    v6 = v5;
    result = sub_26BF2F7B0();
    if (!v1)
    {
      v9 = result;
      v10 = v8;
      result = sub_26BF2F7B0();
      *a1 = v4;
      *(a1 + 2) = v6;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 24) = result;
      *(a1 + 32) = v12;
    }
  }

  return result;
}

unint64_t sub_26BE0256C(uint64_t a1)
{
  v3 = v1;
  v50 = *MEMORY[0x277D85DE8];
  sub_26BE037B8(a1, &v41);
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  if (!v43)
  {
    goto LABEL_7;
  }

  sub_26BE03890(&v41, v47);
  v6 = v48;
  v7 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  (*(v7 + 24))(&v35, v6, v7);
  LOBYTE(v46[0]) = v35;
  v43 = v4;
  v44 = v5;
  *&v41 = v46;
  *(&v41 + 1) = v46 + 1;
  __swift_project_boxed_opaque_existential_1(&v41, v4);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v41);
  sub_26BE038A8(v47, v46);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E2B0, &qword_26C00CA00);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v4 = *(&v41 + 1);
      v12 = v42;
      v13 = v43;
      v5 = v44;
      LODWORD(v35) = v41;
      v36 = *(&v41 + 1);
      v37 = v42;
      v38 = v43;
      v39 = v44;
      v8 = sub_26BE02278(&v35);
      sub_26BE00258(v4, v12);
      sub_26BE00258(v13, v5);
      if (v2)
      {
        goto LABEL_48;
      }

      v11 = __OFADD__(v8++, 1);
      if (!v11)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    if (swift_dynamicCast())
    {
      v14 = v36;
      v15 = v37;
      v34 = bswap32(v35) >> 16;
      v43 = v4;
      v44 = v5;
      *&v41 = &v34;
      *(&v41 + 1) = &v35;
      __swift_project_boxed_opaque_existential_1(&v41, v4);
      v8 = v3;
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v41);
      v16 = v15 >> 62;
      if ((v15 >> 62) <= 1)
      {
        if (v16)
        {
          if (__OFSUB__(HIDWORD(v14), v14))
          {
            goto LABEL_52;
          }

          v17 = HIDWORD(v14) - v14;
        }

        else
        {
          v17 = BYTE6(v15);
        }

LABEL_33:
        v8 = v3;
        v25 = sub_26BF30414(v17);
        if (v2)
        {
LABEL_43:
          sub_26BE00258(v14, v15);
          goto LABEL_48;
        }

        v26 = v25;
        sub_26BE11228(v14, v15);
        sub_26BE00258(v14, v15);
        v27 = v26 + v17;
        if (__OFADD__(v26, v17))
        {
          __break(1u);
        }

        else
        {
          v11 = __OFADD__(v27, 2);
          v28 = v27 + 2;
          if (!v11)
          {
            v8 = v28 + 1;
            if (!__OFADD__(v28, 1))
            {
              goto LABEL_48;
            }

            __break(1u);
LABEL_39:
            if (__OFSUB__(HIDWORD(v14), v14))
            {
              goto LABEL_56;
            }

            v19 = HIDWORD(v14) - v14;
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v16 == 2)
      {
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        v17 = v20 - v21;
        if (!__OFSUB__(v20, v21))
        {
          goto LABEL_33;
        }

        __break(1u);
LABEL_25:
        sub_26BE01654();
        swift_allocError();
        *v22 = 1;
        v22[112] = 9;
        swift_willThrow();
LABEL_48:
        __swift_destroy_boxed_opaque_existential_1(v46);
        __swift_destroy_boxed_opaque_existential_1(v47);
        return v8;
      }
    }

    else
    {
      if (!swift_dynamicCast())
      {
        goto LABEL_25;
      }

      v14 = v36;
      v15 = v37;
      v34 = bswap32(v35) >> 16;
      v43 = v4;
      v44 = v5;
      *&v41 = &v34;
      *(&v41 + 1) = &v35;
      __swift_project_boxed_opaque_existential_1(&v41, v4);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v41);
      v18 = v15 >> 62;
      if ((v15 >> 62) <= 1)
      {
        if (!v18)
        {
          v19 = BYTE6(v15);
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      if (v18 != 2)
      {
        v19 = 0;
        goto LABEL_42;
      }

      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      v19 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
LABEL_42:
        v8 = v3;
        v29 = sub_26BF30414(v19);
        if (v2)
        {
          goto LABEL_43;
        }

        v30 = v29;
        sub_26BE11228(v14, v15);
        sub_26BE00258(v14, v15);
        v31 = v30 + v19;
        if (!__OFADD__(v30, v19))
        {
          v11 = __OFADD__(v31, 2);
          v32 = v31 + 2;
          if (!v11)
          {
            v8 = v32 + 1;
            if (!__OFADD__(v32, 1))
            {
              goto LABEL_48;
            }

            goto LABEL_55;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      __break(1u);
    }

    v17 = 0;
    goto LABEL_33;
  }

  v4 = *(&v41 + 1);
  v9 = v42;
  v10 = v43;
  v5 = v44;
  LODWORD(v35) = v41;
  v36 = *(&v41 + 1);
  v37 = v42;
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v8 = sub_26BE01ED4(&v35);
  sub_26BE00258(v4, v9);
  sub_26BE00258(v10, v5);
  if (v2)
  {
    goto LABEL_48;
  }

  v11 = __OFADD__(v8++, 1);
  if (!v11)
  {
    goto LABEL_48;
  }

  __break(1u);
LABEL_7:
  sub_26BE03828(&v41);
  LOBYTE(v35) = 0;
  v43 = v4;
  v44 = v5;
  *&v41 = &v35;
  *(&v41 + 1) = &v35 + 1;
  __swift_project_boxed_opaque_existential_1(&v41, v4);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v41);
  return 1;
}

double sub_26BE02A74@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_26BEE62D4();
  if ((v3 & 0x100) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v5 = 1;
LABEL_8:
    swift_willThrow();
    return result;
  }

  if (v3 <= 1u)
  {
    if (!v3)
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    if (v3 != 1)
    {
LABEL_22:
      sub_26BE01654();
      swift_allocError();
      *v14 = 1;
      v14[112] = 9;
      goto LABEL_8;
    }

    *(a1 + 24) = &type metadata for MLS.VerifiableDeliveryImdn;
    *(a1 + 32) = sub_26BE03A60();
    v7 = swift_allocObject();
    *a1 = v7;
    sub_26BE02154(v7 + 16);
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        *(a1 + 24) = &type metadata for MLS.VerifiableResentMessage;
        v4 = sub_26BE0390C();
LABEL_16:
        *(a1 + 32) = v4;
        v9 = sub_26BEE6180();
        if ((v9 & 0x10000) != 0)
        {
          sub_26BE01600();
          swift_allocError();
          *v13 = 1;
          swift_willThrow();
        }

        else
        {
          v10 = v9;
          v11 = sub_26BF2F7B0();
          if (!v1)
          {
            *a1 = v10;
            *(a1 + 8) = v11;
            *(a1 + 16) = v12;
            return result;
          }
        }

        goto LABEL_20;
      }

      if (v3 == 255)
      {
        *(a1 + 24) = &type metadata for MLS.VerifiableFileTransfer;
        v4 = sub_26BE039B0();
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    *(a1 + 24) = &type metadata for MLS.VerifiableDisplayImdn;
    *(a1 + 32) = sub_26BE03A04();
    v8 = swift_allocObject();
    *a1 = v8;
    sub_26BE024A0(v8 + 16);
  }

  if (v1)
  {
LABEL_20:
    __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  return result;
}

void MLS.VerifiableDerivedContent.verifyEquals(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BE82550(v4, sub_26BE03080);
  if (!v5)
  {
    v10 = v8;
    v11 = v9;
    if (!sub_26BE02DEC(v8, v9, a1, a2))
    {
      sub_26BE01654();
      swift_allocError();
      *v12 = 2;
      v12[112] = 9;
      swift_willThrow();
    }

    sub_26BE00258(v10, v11);
  }
}

unint64_t sub_26BE02D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  v7 = sub_26BE0256C(v9);
  sub_26BE03828(v9);
  return v7;
}

BOOL sub_26BE02DEC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26BE00608(a3, a4);
          return sub_26BECB6A4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s8SwiftMLS0B0O22VerifiableDeliveryImdnV2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = a1[20];
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = a2[20];
  if (sub_26BE02DEC(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    return sub_26BE02DEC(v4, v5, v7, v8) & (v6 == v9);
  }

  else
  {
    return 0;
  }
}

BOOL _s8SwiftMLS0B0O21VerifiableDisplayImdnV2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (!sub_26BE02DEC(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    return 0;
  }

  return sub_26BE02DEC(v3, v4, v5, v6);
}

unint64_t sub_26BE0309C(uint64_t a1)
{
  result = sub_26BE030C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26BE030C4()
{
  result = qword_28045E288;
  if (!qword_28045E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E288);
  }

  return result;
}

unint64_t sub_26BE03118(uint64_t a1)
{
  result = sub_26BE03140();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26BE03140()
{
  result = qword_28045E290;
  if (!qword_28045E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E290);
  }

  return result;
}

unint64_t sub_26BE03194(uint64_t a1)
{
  result = sub_26BE031BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26BE031BC()
{
  result = qword_28045E298;
  if (!qword_28045E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E298);
  }

  return result;
}

unint64_t sub_26BE03210(uint64_t a1)
{
  result = sub_26BE03238();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26BE03238()
{
  result = qword_28045E2A0;
  if (!qword_28045E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E2A0);
  }

  return result;
}

uint64_t _s13CiphersuiteIDVwet(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *_s13CiphersuiteIDVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t _s28VerifiableDerivedContentTypeVwet(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t _s28VerifiableDerivedContentTypeVwst(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26BE03548(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 42))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE0359C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26BE0361C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE03670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BE03704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE03758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BE037B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E2A8, &qword_26C028DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE03828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E2A8, &qword_26C028DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE03890(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26BE038A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26BE0390C()
{
  result = qword_28045E2B8;
  if (!qword_28045E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E2B8);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D69A4E0);
  }

  return result;
}

unint64_t sub_26BE039B0()
{
  result = qword_28045E2C0;
  if (!qword_28045E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E2C0);
  }

  return result;
}

unint64_t sub_26BE03A04()
{
  result = qword_28045E2C8;
  if (!qword_28045E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E2C8);
  }

  return result;
}

unint64_t sub_26BE03A60()
{
  result = qword_28045E2D0;
  if (!qword_28045E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E2D0);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  sub_26BE00258(*(v1 + 24), *(v1 + 32));
  sub_26BE00258(*(v1 + 40), *(v1 + 48));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_26BE03BF4(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = 512;
  }

  else
  {
    v4 = 256;
  }

  v14 = v4;
  v17 = MEMORY[0x277D838B0];
  v18 = MEMORY[0x277CC9C18];
  *&v15 = &v14;
  *(&v15 + 1) = &v15;
  __swift_project_boxed_opaque_existential_1(&v15, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v15);
  if ((v3 & 0x2000000000000000) != 0)
  {
    v15 = xmmword_26C00BBD0;
    v16 = 0;
    v7 = sub_26BE04360(0, v2);
    if (v1)
    {
      sub_26BE00258(v15, *(&v15 + 1));
      return;
    }

    v8 = v7;
    v13 = sub_26BF30414(v7);
    sub_26BF2A30C(&v15);
    sub_26BE00258(v15, *(&v15 + 1));
    if (__OFADD__(v13, v8))
    {
      goto LABEL_28;
    }

    if (__OFADD__(v13 + v8, 2))
    {
      goto LABEL_29;
    }

    return;
  }

  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v3);
      goto LABEL_18;
    }

LABEL_15:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v6 = HIDWORD(v2) - v2;
    goto LABEL_18;
  }

  if (v5 == 2)
  {
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    v6 = v9 - v10;
    if (__OFSUB__(v9, v10))
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_18:
  v11 = sub_26BF30414(v6);
  if (!v1)
  {
    v12 = v11;
    sub_26BE11228(v2, v3);
    if (__OFADD__(v12, v6))
    {
      __break(1u);
    }

    else if (!__OFADD__(v12 + v6, 2))
    {
      return;
    }

    __break(1u);
    goto LABEL_27;
  }
}

void sub_26BE03DC0(uint64_t *a1@<X8>)
{
  v4 = sub_26BEE6180();
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    v8 = sub_26BF2F7B0();
    if (!v2)
    {
      *a1 = v8;
      a1[1] = v9;
    }

    return;
  }

  if (v4 != 2)
  {
    sub_26BE01654();
    swift_allocError();
    *v10 = 3;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0;
    *(v10 + 112) = 23;
LABEL_15:
    swift_willThrow();
    return;
  }

  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  sub_26BE00608(*v1, v5);
  sub_26BE00608(v6, v5);
  sub_26BF30764(v1, &v61);
  if (v2)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    goto LABEL_6;
  }

  if (v62)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v11 = v5;
    v12 = v6;
    v1[2] = v7;
LABEL_13:
    sub_26BE00258(v12, v11);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
LABEL_14:
    sub_26BE01600();
    swift_allocError();
    *v13 = 1;
    goto LABEL_15;
  }

  v14 = v61;
  sub_26BE00258(v6, v5);
  if (v14 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 5;
LABEL_6:
    swift_willThrow();
LABEL_7:
    sub_26BE00258(*v1, v1[1]);
    *v1 = v6;
    v1[1] = v5;
    v1[2] = v7;
    goto LABEL_15;
  }

  v52 = v7;
  v53 = v6;
  v54 = v5;
  v16 = sub_26BF2A44C(v14);
  if (v17 >> 60 == 15)
  {
    v12 = *v1;
    v11 = v1[1];
    goto LABEL_13;
  }

  v61 = v16;
  v62 = v17;
  v19 = v17 >> 62;
  v63 = v18;
  v50 = v16 >> 32;
  v51 = v16;
  v55 = BYTE6(v17);
  v20 = MEMORY[0x277D84F90];
  v56 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = v55;
  if (v19)
  {
    v21 = v50;
  }

  while (1)
  {
    v22 = __OFSUB__(v21, v18);
    v23 = v21 - v18;
    if (v22)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

    v25 = v61;
    v24 = v62;
    if (v23 < 1)
    {
      break;
    }

    sub_26BE00608(v61, v62);
    sub_26BE00608(v25, v24);
    sub_26BF30764(&v61, &v59);
    if (v60)
    {
      sub_26BE00258(v61, v62);
      v29 = v24;
      v28 = v25;
LABEL_59:
      sub_26BE00258(v28, v29);
      v61 = v25;
      v62 = v24;
      sub_26BE01600();
      swift_allocError();
      *v46 = 1;
      v48 = v61;
      v47 = v62;
      v5 = v54;
      v7 = v52;
      v6 = v53;
      swift_willThrow();

      sub_26BE00258(v48, v47);
      goto LABEL_7;
    }

    v26 = v59;
    sub_26BE00258(v25, v24);
    v22 = __OFADD__(v63, v26);
    v27 = v63 + v26;
    if (v22)
    {
      goto LABEL_68;
    }

    v28 = v61;
    v29 = v62;
    v30 = v62 >> 62;
    if ((v62 >> 62) <= 1)
    {
      if (v30)
      {
        v31 = v61 >> 32;
      }

      else
      {
        v31 = BYTE6(v62);
      }

LABEL_37:
      if (v31 < v27)
      {
        goto LABEL_59;
      }

      goto LABEL_40;
    }

    if (v30 == 2)
    {
      v31 = *(v61 + 24);
      goto LABEL_37;
    }

    if (v27 > 0)
    {
      goto LABEL_59;
    }

LABEL_40:
    v58 = v20;
    if (v27 < v63)
    {
      goto LABEL_69;
    }

    v32 = sub_26C00909C();
    v33 = v32;
    v35 = v34;
    v63 = v27;
    v36 = v34 >> 62;
    v57 = v27;
    if ((v34 >> 62) > 1)
    {
      if (v36 != 2)
      {
        goto LABEL_48;
      }

      v32 = *(v32 + 16);
      v37 = *(v33 + 24);
    }

    else
    {
      if (!v36)
      {
        goto LABEL_48;
      }

      v32 = v32;
      v37 = v33 >> 32;
    }

    if (v37 < v32)
    {
      goto LABEL_70;
    }

LABEL_48:
    v38 = sub_26C00909C();
    v40 = v39;
    sub_26BE00258(v33, v35);
    sub_26BE00258(v25, v24);
    sub_26BE00608(v38, v40);
    v20 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_26BEEBA84(0, *(v58 + 2) + 1, 1, v58);
    }

    v42 = *(v20 + 2);
    v41 = *(v20 + 3);
    if (v42 >= v41 >> 1)
    {
      v20 = sub_26BEEBA84((v41 > 1), v42 + 1, 1, v20);
    }

    sub_26BE00258(v38, v40);
    *(v20 + 2) = v42 + 1;
    v43 = &v20[16 * v42];
    *(v43 + 4) = v38;
    *(v43 + 5) = v40;
    LODWORD(v19) = v56;
    v18 = v57;
    if (v56 <= 1)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (v19 == 2)
    {
      v21 = *(v51 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  v44 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v44 == 2)
    {
      v45 = *(v61 + 24);
    }

    else
    {
      v45 = 0;
    }
  }

  else if (v44)
  {
    v45 = v61 >> 32;
  }

  else
  {
    v45 = BYTE6(v62);
  }

  if (__OFSUB__(v45, v18))
  {
    goto LABEL_71;
  }

  v6 = v53;
  v5 = v54;
  v7 = v52;
  if (v45 != v18)
  {
    sub_26BE01654();
    swift_allocError();
    *v49 = 0;
    v49[112] = 1;
    swift_willThrow();

    sub_26BE00258(v61, v62);
    goto LABEL_7;
  }

  sub_26BE00258(v61, v62);
  sub_26BE00258(v53, v54);
  *a1 = v20;
  a1[1] = 0x2000000000000000;
}

uint64_t sub_26BE04360(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  v6 = a2 + 32;
  v7 = MEMORY[0x277CC9318];
  while (v5)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    v10 = v9 >> 62;
    v29 = *v6;
    if ((v9 >> 62) <= 1)
    {
      if (!v10)
      {
        v11 = BYTE6(v9);
        goto LABEL_14;
      }

      v12 = *v6;
      if (__OFSUB__(DWORD1(v8), v8))
      {
        goto LABEL_37;
      }

      v11 = DWORD1(v8) - v8;
      goto LABEL_12;
    }

    if (v10 == 2)
    {
      v12 = *v6;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v11 = v13 - v14;
      if (__OFSUB__(v13, v14))
      {
        goto LABEL_36;
      }

LABEL_12:
      sub_26BE00608(v12, v9);
      goto LABEL_14;
    }

    v11 = 0;
LABEL_14:
    v15 = v3;
    v16 = sub_26BF30414(v11);
    if (v3)
    {
      goto LABEL_33;
    }

    v17 = v16;
    v31 = v7;
    v32 = MEMORY[0x277CC9300];
    v30 = v29;
    v18 = __swift_project_boxed_opaque_existential_1(&v30, v7);
    v19 = *v18;
    v20 = v18[1] >> 62;
    if (v20 > 1)
    {
      if (v20 != 2)
      {
LABEL_28:
        sub_26BE00608(v29, v9);
        sub_26C00908C();
        goto LABEL_29;
      }

      v21 = v9;
      v22 = *(v19 + 16);
      v27 = *(v19 + 24);
      v28 = v21;
      sub_26BE00608(v29, v21);
      if (sub_26C008E9C() && __OFSUB__(v22, sub_26C008ECC()))
      {
        goto LABEL_40;
      }

      if (__OFSUB__(v27, v22))
      {
        goto LABEL_39;
      }

      sub_26C008EBC();
      sub_26C00908C();
    }

    else
    {
      v28 = v9;
      if (!v20)
      {
        goto LABEL_28;
      }

      v23 = v19;
      if (v19 >> 32 < v19)
      {
        goto LABEL_38;
      }

      sub_26BE00608(v29, v9);
      if (sub_26C008E9C() && __OFSUB__(v23, sub_26C008ECC()))
      {
        goto LABEL_41;
      }

      sub_26C008EBC();
      sub_26C00908C();
      v3 = v15;
    }

    v7 = MEMORY[0x277CC9318];
    v9 = v28;
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(&v30);
    sub_26BE00258(v29, v9);
    v24 = v17 + v11;
    if (__OFADD__(v17, v11))
    {
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
    }

    v6 += 16;
    --v5;
    v25 = __OFADD__(a1, v24);
    a1 += v24;
    if (v25)
    {
      __break(1u);
LABEL_33:
      sub_26BE00258(v29, v9);
      return a1;
    }
  }

  return a1;
}

uint64_t _s8SwiftMLS0B0O10CredentialO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_26BE04890(*a2, a2[1]);
      sub_26BE04890(v2, v3);
      v6 = sub_26BFB20FC(v2, v4);
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_26BE04890(*a2, a2[1]);
    sub_26BE04890(v2, v3);
    v6 = sub_26BE02DEC(v2, v3, v4, v5);
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  sub_26BE04890(*a2, a2[1]);
  sub_26BE04890(v2, v3);
  v7 = 0;
LABEL_8:
  sub_26BE0489C(v2, v3);
  sub_26BE0489C(v4, v5);
  return v7 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26BE047BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE04810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

void sub_26BE04890(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_26BE00608(a1, a2);
  }
}

void sub_26BE0489C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_26BE00258(a1, a2);
  }
}

_BYTE *throwIfNotaValid25519CipherSuite(_:)(_BYTE *result)
{
  if (*result)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 65538;
    *(v1 + 112) = 10;
    return swift_willThrow();
  }

  return result;
}

uint64_t Curve25519DecryptionPrivateKey.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Curve25519DecryptionPrivateKey(0) + 24);
  v4 = sub_26C009B1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Curve25519DecryptionPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for Curve25519DecryptionPrivateKey(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Curve25519DecryptionPrivateKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26C009EEC();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009EAC();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_26C009AAC();
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Curve25519EncryptionPublicKey(0);
  MEMORY[0x28223BE20](v15 - 8);
  v51 = (v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_26C009B1C();
  v18 = MEMORY[0x28223BE20](v17);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + 32);
  if (*a3)
  {
    sub_26BE01654();
    swift_allocError();
    *v23 = 65538;
    *(v23 + 112) = 10;
    swift_willThrow();
    v24 = a1;
    v25 = a2;
LABEL_5:
    sub_26BE00258(v24, v25);
  }

  v46 = v14;
  v47 = v8;
  v48 = v19;
  v49 = v18;
  v58 = a2;
  v26 = a1;
  v27 = *(a3 + 24);
  v50 = *(a3 + 8);
  v28 = type metadata accessor for Curve25519DecryptionPrivateKey(0);
  v29 = a4 + v28[5];
  *v29 = 0;
  *(v29 + 8) = v50;
  *(v29 + 24) = v27;
  *(v29 + 32) = v22;
  v30 = v58;
  v59 = v26;
  *&v60 = v58;

  sub_26BE00608(v26, v30);
  v31 = v63;
  sub_26C009AEC();
  if (v31)
  {

    v24 = v26;
    v25 = v30;
    goto LABEL_5;
  }

  *&v50 = v26;
  (*(v48 + 32))(a4 + v28[6], v21, v49);
  v45[1] = v28;
  *(a4 + v28[7]) = 0;
  v63 = a4;
  v33 = v46;
  sub_26C009ACC();
  v35 = v53;
  v34 = v54;
  (*(v53 + 16))(v12, v22 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v54);

  v36 = v57;
  sub_26C009E8C();
  (*(v35 + 8))(v12, v34);
  v37 = sub_26C009A9C();
  v38 = (v52 + 8);
  v39 = v37;
  v41 = v40;
  (*(v56 + 8))(v36, v47);
  (*v38)(v33, v55);
  v43 = *(v29 + 24);
  v42 = *(v29 + 32);
  LOBYTE(v59) = *v29;
  v60 = *(v29 + 8);
  v61 = v43;
  v62 = v42;

  v44 = v51;
  Curve25519EncryptionPublicKey.init(data:ciphersuite:)(v39, v41, &v59, v51);
  sub_26BE00258(v50, v58);
  return sub_26BE08720(v44, v63, type metadata accessor for Curve25519EncryptionPublicKey);
}

void Curve25519EncryptionPublicKey.init(data:ciphersuite:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v55 = a2;
  v52 = a4;
  v7 = sub_26C009EEC();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = sub_26C009EAC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = sub_26C009AAC();
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 32);
  if (*a3)
  {
    sub_26BE01654();
    swift_allocError();
    *v22 = 65538;
    *(v22 + 112) = 10;
    swift_willThrow();
    v23 = a1;
LABEL_5:
    sub_26BE00258(v23, v55);

    return;
  }

  v44 = v18;
  v45 = v17;
  v24 = *(a3 + 8);
  v42 = *(a3 + 16);
  v43 = v24;
  v41 = *(a3 + 24);
  v53 = a1;
  v46 = v4;
  v25 = a1;
  v26 = v55;
  v54 = v55;
  v27 = *(v11 + 16);
  v39 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v40 = v27;
  v27(v15, v21 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v10);
  v47 = v25;
  sub_26BE00608(v25, v26);
  sub_26C009E8C();
  v28 = *(v11 + 8);
  v28(v15, v10);
  v29 = v46;
  sub_26C009ABC();
  if (v29)
  {
    v23 = v47;
    goto LABEL_5;
  }

  v30 = type metadata accessor for Curve25519EncryptionPublicKey(0);
  v46 = *(v30 + 20);
  v31 = v52;
  (*(v44 + 32))(v52 + v46, v20, v45);
  v32 = v31 + *(v30 + 24);
  *v32 = 0;
  v33 = v42;
  *(v32 + 1) = v43;
  *(v32 + 2) = v33;
  *(v32 + 3) = v41;
  *(v32 + 4) = v21;
  v34 = v48;
  v40(v48, v21 + v39, v10);
  v35 = v49;
  sub_26C009E8C();
  v28(v34, v10);
  v36 = sub_26C009A9C();
  v38 = v37;
  (*(v50 + 8))(v35, v51);
  sub_26BE00258(v47, v55);
  *v31 = v36;
  v31[1] = v38;
}

uint64_t Curve25519DecryptionPrivateKey.decryptWithLabel(label:context:ciphertext:kemOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v37 = a7;
  v38 = a8;
  v30 = a5;
  v31 = a6;
  v34 = sub_26C009EAC();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C009B1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C009FEC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v35 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v41;
  v21 = sub_26BE0FF84(a1, a2, a3, a4);
  if (!v20)
  {
    v23 = v21;
    v24 = v22;
    v29 = v18;
    v41 = v17;
    v25 = type metadata accessor for Curve25519DecryptionPrivateKey(0);
    v26 = v36;
    (*(v14 + 16))(v16, v36 + *(v25 + 24), v13);
    (*(v32 + 16))(v33, *(v26 + *(v25 + 20) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v34);
    sub_26BE00608(v23, v24);
    sub_26BE00608(v37, v38);
    v27 = v35;
    sub_26C009FAC();
    v39 = v30;
    v40 = v31;
    sub_26BE016A8();
    a2 = sub_26C009FDC();
    (*(v29 + 8))(v27, v41);
    sub_26BE00258(v23, v24);
  }

  return a2;
}

uint64_t Curve25519DecryptionPrivateKey.decryptWithInfoAndAAD(info:aad:ciphertext:kemOutput:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v35 = a7;
  v36 = a8;
  v31 = a6;
  v32 = a4;
  v29 = a5;
  v30 = a3;
  v33 = a1;
  v34 = a2;
  v10 = sub_26C009EAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C009B1C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26C009FEC();
  v27 = *(v18 - 8);
  v28 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Curve25519DecryptionPrivateKey(0);
  (*(v15 + 16))(v17, v9 + *(v21 + 24), v14);
  (*(v11 + 16))(v13, *(v9 + *(v21 + 20) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v10);
  sub_26BE00608(v33, v34);
  v22 = v36;
  sub_26BE00608(v35, v36);
  v23 = v41;
  sub_26C009FAC();
  if (!v23)
  {
    v25 = v27;
    v24 = v28;
    v39 = v29;
    v40 = v31;
    v37 = v30;
    v38 = v32;
    sub_26BE016A8();
    v22 = sub_26C009FCC();
    (*(v25 + 8))(v20, v24);
  }

  return v22;
}

uint64_t Curve25519DecryptionPrivateKey.receiveExport(label:outputByteCount:kemOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v32 = a3;
  v33 = a1;
  v34 = a2;
  v31 = a6;
  v7 = sub_26C00A4EC();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009EAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C009B1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26C009FEC();
  v30 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Curve25519DecryptionPrivateKey(0);
  (*(v14 + 16))(v16, v6 + *(v19 + 24), v13);
  (*(v10 + 16))(v12, *(v6 + *(v19 + 20) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v9);
  sub_26BE00608(v39, v40);
  v20 = v43;
  result = sub_26C009FAC();
  if (!v20)
  {
    v22 = v30;
    v41 = 0x20302E3120534C4DLL;
    v42 = 0xE800000000000000;
    MEMORY[0x26D699090](v33, v34);
    v23 = v35;
    sub_26C00A4DC();
    v24 = sub_26C00A49C();
    v26 = v25;

    (*(v37 + 8))(v23, v38);
    if (v26 >> 60 == 15)
    {
      sub_26BE01654();
      swift_allocError();
      *v27 = 5;
      v27[112] = 1;
      swift_willThrow();
      return (*(v22 + 8))(v18, v36);
    }

    else
    {
      v41 = v24;
      v42 = v26;
      sub_26BE016A8();
      sub_26C009FBC();
      v28 = v36;
      sub_26BE00258(v41, v42);
      return (*(v22 + 8))(v18, v28);
    }
  }

  return result;
}

uint64_t Curve25519EncryptionPublicKey.data.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void Curve25519EncryptionPublicKey.data.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t Curve25519EncryptionPublicKey.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Curve25519EncryptionPublicKey(0) + 20);
  v4 = sub_26C009AAC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Curve25519EncryptionPublicKey.ciphersuite.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Curve25519EncryptionPublicKey(0) + 24);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 Curve25519EncryptionPublicKey.ciphersuite.setter(char *a1)
{
  v2 = *a1;
  v7 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = v1 + *(type metadata accessor for Curve25519EncryptionPublicKey(0) + 24);

  *v5 = v2;
  result = v7;
  *(v5 + 8) = v7;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  return result;
}

uint64_t Curve25519EncryptionPublicKey.encryptWithLabel(label:context:pt:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v35 = a4;
  v9 = sub_26C009EAC();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C009AAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C009F9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v34 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v38;
  v20 = sub_26BE0FF84(a1, a2, a3, v35);
  if (!v19)
  {
    v22 = v20;
    v35 = v17;
    v38 = v16;
    v23 = v21;
    v24 = type metadata accessor for Curve25519EncryptionPublicKey(0);
    v25 = v33;
    (*(v13 + 16))(v15, v33 + *(v24 + 20), v12);
    (*(v31 + 16))(v11, *(v25 + *(v24 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v32);
    sub_26BE00608(v22, v23);
    v26 = v34;
    sub_26C009F5C();
    v36 = v29;
    v37 = v30;
    sub_26BE016A8();
    v12 = sub_26C009F8C();
    sub_26C009F6C();
    sub_26BE00258(v22, v23);
    (*(v35 + 8))(v26, v38);
  }

  return v12;
}

uint64_t Curve25519EncryptionPublicKey.encryptWithInfoAndAAD(info:aad:pt:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v29 = a4;
  v26 = a5;
  v27 = a3;
  v30 = a1;
  v31 = a2;
  v7 = sub_26C009EAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C009AAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C009F9C();
  v24 = *(v15 - 8);
  v25 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Curve25519EncryptionPublicKey(0);
  (*(v12 + 16))(v14, v6 + *(v18 + 20), v11);
  (*(v8 + 16))(v10, *(v6 + *(v18 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v7);
  v19 = v31;
  sub_26BE00608(v30, v31);
  v20 = v36;
  sub_26C009F5C();
  if (!v20)
  {
    v22 = v24;
    v21 = v25;
    v34 = v26;
    v35 = v28;
    v32 = v27;
    v33 = v29;
    sub_26BE016A8();
    v19 = sub_26C009F7C();
    sub_26C009F6C();
    (*(v22 + 8))(v17, v21);
  }

  return v19;
}

char *Curve25519EncryptionPublicKey.sendExport(label:outputByteCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v30[2] = a1;
  v31 = a2;
  v32 = a3;
  v5 = sub_26C00A4EC();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_26C009EAC();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009AAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C009F9C();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Curve25519EncryptionPublicKey(0);
  (*(v11 + 16))(v13, v4 + *(v17 + 20), v10);
  (*(v7 + 16))(v9, *(v4 + *(v17 + 24) + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v37);
  v18 = v40;
  sub_26C009F5C();
  if (!v18)
  {
    v40 = v14;
    v19 = v16;
    v9 = sub_26C009F6C();
    v21 = v20;
    v38 = 0x20302E3120534C4DLL;
    v39 = 0xE800000000000000;
    MEMORY[0x26D699090](v31, v32);
    v22 = v33;
    sub_26C00A4DC();
    v23 = sub_26C00A49C();
    v25 = v24;

    (*(v34 + 8))(v22, v35);
    if (v25 >> 60 == 15)
    {
      sub_26BE01654();
      swift_allocError();
      *v26 = 5;
      v26[112] = 1;
      swift_willThrow();
      sub_26BE00258(v9, v21);
      (*(v36 + 8))(v19, v40);
    }

    else
    {
      v38 = v23;
      v39 = v25;
      sub_26BE016A8();
      sub_26C009F4C();
      v27 = v40;
      v28 = v36;
      sub_26BE00258(v38, v39);
      (*(v28 + 8))(v19, v27);
    }
  }

  return v9;
}

uint64_t static Curve25519EncryptionPublicKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Curve25519EncryptionPublicKey(0);
  v5 = sub_26C009A8C();
  v7 = v6;
  v8 = sub_26C009A8C();
  v10 = v9;
  v11 = sub_26BE02DEC(v5, v7, v8, v9);
  sub_26BE00258(v8, v10);
  sub_26BE00258(v5, v7);
  if (v11)
  {
    v12 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t Curve25519EncryptionPublicKey.hash(into:)(uint64_t a1)
{
  type metadata accessor for Curve25519EncryptionPublicKey(0);
  v1 = sub_26C009A8C();
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  return sub_26C00B08C();
}

uint64_t Curve25519EncryptionPublicKey.hashValue.getter()
{
  sub_26C00B05C();
  type metadata accessor for Curve25519EncryptionPublicKey(0);
  v0 = sub_26C009A8C();
  v2 = v1;
  sub_26C00911C();
  sub_26BE00258(v0, v2);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE07020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a9(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    return v11;
  }

  return result;
}

uint64_t sub_26BE0706C()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_26BE070A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
}

uint64_t sub_26BE070DC(uint64_t a1)
{
  sub_26C00B05C();
  v1 = sub_26C009A8C();
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE07170(uint64_t a1, uint64_t a2)
{
  v2 = sub_26C009A8C();
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  return sub_26C00B08C();
}

uint64_t sub_26BE071F4(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  v2 = sub_26C009A8C();
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE07284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C009A8C();
  v8 = v7;
  v9 = sub_26C009A8C();
  v11 = v10;
  v12 = sub_26BE02DEC(v6, v8, v9, v10);
  sub_26BE00258(v9, v11);
  sub_26BE00258(v6, v8);
  if (v12)
  {
    v13 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t ED25519VerificationPublicKey.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C009BBC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26BE073C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  *a2 = *v4;
  *(a2 + 8) = *(v4 + 8);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
}

uint64_t ED25519VerificationPublicKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_26C009BBC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 32);
  if (*a3)
  {
    sub_26BE01654();
    swift_allocError();
    *v15 = 65538;
    *(v15 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(a1, a2);
  }

  v16 = v11;
  v17 = *(a3 + 16);
  v26 = *(a3 + 8);
  v23 = v17;
  v24 = a1;
  v18 = *(a3 + 24);
  v25 = a2;
  sub_26C009BAC();
  if (v4)
  {
  }

  (*(v10 + 32))(a4, v13, v16);
  result = type metadata accessor for ED25519VerificationPublicKey(0);
  v20 = a4 + *(result + 20);
  *v20 = 0;
  v21 = v23;
  *(v20 + 8) = v26;
  *(v20 + 16) = v21;
  *(v20 + 24) = v18;
  *(v20 + 32) = v14;
  return result;
}

uint64_t static ED25519VerificationPublicKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v6 = v5;
  v7 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v9 = v8;
  v10 = sub_26BE02DEC(v4, v6, v7, v8);
  sub_26BE00258(v7, v9);
  sub_26BE00258(v4, v6);
  if (v10)
  {
    v11 = type metadata accessor for ED25519VerificationPublicKey(0);
    v12 = *(a1 + *(v11 + 20)) ^ *(a2 + *(v11 + 20)) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ED25519VerificationPublicKey.hash(into:)(uint64_t a1)
{
  v1 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  type metadata accessor for ED25519VerificationPublicKey(0);
  return sub_26C00B08C();
}

uint64_t ED25519VerificationPublicKey.hashValue.getter()
{
  sub_26C00B05C();
  v0 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v2 = v1;
  sub_26C00911C();
  sub_26BE00258(v0, v2);
  type metadata accessor for ED25519VerificationPublicKey(0);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE07848(uint64_t a1)
{
  sub_26C00B05C();
  v1 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v3 = v2;
  sub_26C00911C();
  sub_26BE00258(v1, v3);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE078D0(uint64_t a1, uint64_t a2)
{
  v2 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  return sub_26C00B08C();
}

uint64_t sub_26BE07948(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  v2 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v4 = v3;
  sub_26C00911C();
  sub_26BE00258(v2, v4);
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE079D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
}

uint64_t sub_26BE07A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v8 = v7;
  v9 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v11 = v10;
  v12 = sub_26BE02DEC(v6, v8, v9, v10);
  sub_26BE00258(v9, v11);
  sub_26BE00258(v6, v8);
  if (v12)
  {
    v13 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t ED25519SigningPrivateKey.ciphersuite.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
}

uint64_t sub_26BE07B0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ED25519SigningPrivateKey.deviceConstrained.setter(char a1)
{
  result = type metadata accessor for ED25519SigningPrivateKey(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_26BE07CE8(char *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, _BYTE *))
{
  v26 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22[-v11 - 8];
  v13 = *a1;
  v21 = *(a1 + 8);
  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  v16 = a3(v10);
  v17 = a4(v16);
  v19 = v18;
  (*(v9 + 8))(v12, v8);
  v22[0] = v13;
  v23 = v21;
  v24 = v14;
  v25 = v15;
  return v26(v17, v19, v22);
}

uint64_t ED25519SigningPrivateKey.init(data:ciphersuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = sub_26C009BBC();
  v43 = *(v46 - 8);
  v9 = MEMORY[0x28223BE20](v46);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v41 = type metadata accessor for ED25519VerificationPublicKey(0);
  MEMORY[0x28223BE20](v41);
  v42 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C009B7C();
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + 32);
  if (*a3)
  {
    sub_26BE01654();
    swift_allocError();
    *v21 = 65538;
    *(v21 + 112) = 10;
    swift_willThrow();
LABEL_4:
    sub_26BE00258(a1, a2);
  }

  v39 = v17;
  v40 = v16;
  v22 = *(a3 + 24);
  *a4 = 0;
  *(a4 + 8) = *(a3 + 8);
  *(a4 + 24) = v22;
  *(a4 + 32) = v20;
  v44 = a1;
  v45 = a2;
  sub_26BE00608(a1, a2);
  sub_26C009B4C();
  if (v4)
  {
    goto LABEL_4;
  }

  v38 = type metadata accessor for ED25519SigningPrivateKey(0);
  (*(v39 + 32))(a4 + *(v38 + 20), v19, v40);
  sub_26C009B2C();
  v24 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
  v26 = v25;
  (*(v43 + 8))(v13, v46);
  if (*a4)
  {
    sub_26BE01654();
    swift_allocError();
    *v27 = 65538;
    *(v27 + 112) = 10;
    swift_willThrow();
    sub_26BE00258(v24, v26);
    sub_26BE00258(a1, a2);

    return (*(v39 + 8))(a4 + *(v38 + 20), v40);
  }

  else
  {
    v29 = *(a4 + 8);
    v28 = *(a4 + 16);
    v30 = *(a4 + 32);
    v36 = *(a4 + 24);
    v37 = v28;
    v44 = v24;
    v45 = v26;

    sub_26C009BAC();
    v31 = v42;
    (*(v43 + 32))(v42, v11, v46);
    sub_26BE00258(a1, a2);
    v32 = v31 + *(v41 + 20);
    *v32 = 0;
    v33 = v36;
    v34 = v37;
    *(v32 + 8) = v29;
    *(v32 + 16) = v34;
    *(v32 + 24) = v33;
    *(v32 + 32) = v30;
    v35 = v38;
    result = sub_26BE08720(v31, a4 + *(v38 + 28), type metadata accessor for ED25519VerificationPublicKey);
    *(a4 + *(v35 + 24)) = 0;
  }

  return result;
}

uint64_t ED25519SigningPrivateKey.sign(data:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ED25519SigningPrivateKey(0);
  sub_26BE016A8();
  return sub_26C009B5C();
}

uint64_t _s8SwiftMLS21P256SigningPrivateKeyV11ciphersuiteAA0B0O12CryptographyO11CiphersuiteVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
}

uint64_t sub_26BE08450(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, _BYTE *))
{
  v28 = a7;
  v10 = (a4)(0, a2, a3);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24[-v13 - 8];
  v15 = *a1;
  v23 = *(a1 + 8);
  v16 = *(a1 + 3);
  v17 = *(a1 + 4);
  v18 = a5(v12);
  v19 = a6(v18);
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  v24[0] = v15;
  v25 = v23;
  v26 = v16;
  v27 = v17;
  return v28(v19, v21, v24);
}

uint64_t sub_26BE085BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Curve25519EncryptionPublicKey(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE08680(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE086B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE08720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE087D0(uint64_t a1)
{
  result = sub_26BE08828(&qword_28045E2E0, type metadata accessor for Curve25519DecryptionPrivateKey, &protocol conformance descriptor for Curve25519DecryptionPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BE08828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BE088B8(uint64_t a1)
{
  result = sub_26BE08828(&qword_28045E2E8, type metadata accessor for Curve25519EncryptionPublicKey, &protocol conformance descriptor for Curve25519EncryptionPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BE08910(uint64_t a1)
{
  result = sub_26BE08828(&qword_28045E2F0, type metadata accessor for Curve25519EncryptionPublicKey, &protocol conformance descriptor for Curve25519EncryptionPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BE089B0(uint64_t a1)
{
  result = sub_26BE08828(&qword_28045E300, type metadata accessor for ED25519VerificationPublicKey, &protocol conformance descriptor for ED25519VerificationPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BE08A50(uint64_t a1)
{
  result = sub_26BE08828(&qword_28045E310, type metadata accessor for ED25519VerificationPublicKey, &protocol conformance descriptor for ED25519VerificationPublicKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BE08AF0(uint64_t a1)
{
  result = sub_26BE08828(&qword_28045E320, type metadata accessor for ED25519SigningPrivateKey, &protocol conformance descriptor for ED25519SigningPrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26BE08BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Curve25519EncryptionPublicKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_26C009B1C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26BE08CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Curve25519EncryptionPublicKey(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  else
  {
    v11 = sub_26C009B1C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26BE08E08(uint64_t a1)
{
  result = type metadata accessor for Curve25519EncryptionPublicKey(319);
  if (v2 <= 0x3F)
  {
    result = sub_26C009B1C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BE08EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C009AAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 32);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26BE08F88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C009AAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BE09048(uint64_t a1)
{
  result = sub_26C009AAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BE090E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C009BBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BE091B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C009BBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BE09270(uint64_t a1)
{
  result = sub_26C009BBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BE092F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C009B7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ED25519VerificationPublicKey(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26BE09430(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C009B7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ED25519VerificationPublicKey(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26BE09554(uint64_t a1)
{
  result = sub_26C009B7C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ED25519VerificationPublicKey(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t MLS.Cryptography.MACTag.rawData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v0 = sub_26BE12418(v2);

  return v0;
}

uint64_t MLS.Cryptography.CiphersuiteID.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_26BE09698(uint64_t a1)
{
  v1 = sub_26C009D9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  sub_26C009E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009D8C();
  v5 = sub_26BE12418(v7[1]);

  (*(v2 + 8))(v4, v1);
  return v5;
}

void sub_26BE097D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  v16[3] = v8;
  v16[4] = sub_26BE13630(&qword_28045E418, &qword_28045E410, &qword_26C021270, MEMORY[0x277CC9EE0]);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_26BE77028((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

uint64_t sub_26BE098EC(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_26BF2EA50(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_26BF2EB08(v3, v4);
    }

    else
    {
      v6 = sub_26BF2EB84(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_26BE099A8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E420, &qword_26C00D180);
  if (swift_dynamicCast())
  {
    sub_26BE03890(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_26C008F3C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26BE13204(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26C00AC5C();
  }

  sub_26BE112FC(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_26BE125AC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_26BE11770(sub_26BE1326C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_26C00906C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_26BE122D8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_26C00A5EC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_26C00A62C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_26C00AC5C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_26BE122D8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_26C00A5FC();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_26C00908C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_26C00908C();
    sub_26BE132D4(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_26BE132D4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_26BE00608(*&__src[0], *(&__src[0] + 1));

  sub_26BE00258(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_26BE09EB8(void *a1)
{
  v36[5] = *MEMORY[0x277D85DE8];
  v32 = a1;
  *&v33 = a1;
  sub_26BE1335C();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E420, &qword_26C00D180);
  if (swift_dynamicCast())
  {
    sub_26BE03890(v34, v36);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_26C008F3C();
    v34[0] = v33;
    __swift_destroy_boxed_opaque_existential_1(v36);
    goto LABEL_40;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_26BE13204(v34);
  v3 = sub_26C00AA5C();
  v4 = sub_26C00AA6C();
  v5 = sub_26C00AA5C();
  v6 = sub_26C00AA6C();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = sub_26C00AA5C();
  v8 = sub_26C00AA6C();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v34[0] = sub_26BE125AC(v4 - v3);
  *(&v34[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v34[0]);
  v31[2] = &v32;
  v12 = sub_26BE11B14(sub_26BE133A8, v31);
  v13 = v10;
  v14 = *&v34[0];
  v15 = *(&v34[0] + 1) >> 62;
  if ((*(&v34[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v34[0] + 16);
      v16 = *(*&v34[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v34[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v34[0]), v34[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v34[0]) - LODWORD(v34[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v34[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v34[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          sub_26C00906C();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v36, 0, 15);
  if (v10 == sub_26C00AA6C())
  {
    goto LABEL_39;
  }

  v21 = sub_26C00AA7C();
  v22 = sub_26C00AA5C();
  v23 = sub_26C00AA6C();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v36 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      *&v33 = v36[0];
      *(&v33 + 6) = *(v36 + 6);
      sub_26C00908C();
      if (v25 == sub_26C00AA6C())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == sub_26C00AA6C())
    {
      break;
    }

LABEL_32:
    v21 = sub_26C00AA7C();
    v26 = sub_26C00AA5C();
    v27 = sub_26C00AA6C();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  *&v33 = v36[0];
  *(&v33 + 6) = *(v36 + 6);
  sub_26C00908C();
LABEL_39:

LABEL_40:
  v29 = v34[0];
  sub_26BE00608(*&v34[0], *(&v34[0] + 1));

  sub_26BE00258(v29, *(&v29 + 1));
  return v29;
}

uint64_t MLS.Cryptography.CiphersuiteID.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_26BE0A2F8()
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE0A380(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

unsigned __int16 *sub_26BE0A3CC@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_26BE0A3EC(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t MLS.Cryptography.MACTag.init(tag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

double sub_26BE0A608@<D0>(unsigned int *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v25 = a2;
  v22 = a1;
  v24 = a3;
  v23 = sub_26C009F3C();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26C009EDC();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009EEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C009EAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *v22, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277CC5438], v21);
  (*(v3 + 104))(v5, *MEMORY[0x277CC5460], v23);
  sub_26C009E7C();
  type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v17 = swift_allocObject();
  (*(v14 + 32))(v17 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v16, v13);
  *(v17 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  v18 = v24;
  *v24 = v25;
  *&result = 32;
  *(v18 + 8) = xmmword_26C00CDC0;
  *(v18 + 3) = 16;
  *(v18 + 4) = v17;
  return result;
}

double _s8SwiftMLS0B0O12CryptographyO11CiphersuiteV13ciphersuiteIDAgE0dF0O_tcfC_0@<D0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v24 = a2;
  v23 = sub_26C009F3C();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26C009EDC();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009EEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26C009EAC();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277CC5450];
  v17 = *a1;
  if (!v17)
  {
    v16 = MEMORY[0x277CC5458];
  }

  (*(v10 + 104))(v12, *v16, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277CC5438], v22);
  (*(v3 + 104))(v5, *MEMORY[0x277CC5460], v23);
  sub_26C009E7C();
  type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v15, v21);
  *(v18 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  v19 = v24;
  *v24 = v17;
  *&result = 32;
  *(v19 + 8) = xmmword_26C00CDC0;
  *(v19 + 3) = 16;
  *(v19 + 4) = v18;
  return result;
}

uint64_t sub_26BE0AC60()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BE0ACD4(uint64_t a1)
{
  v2 = *v1;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v2);
  return sub_26C00B0CC();
}

uint64_t MLS.Cryptography.Ciphersuite.SuitePrimitives.hashDigestCount.getter()
{
  if (*(v0 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash))
  {
    return 64;
  }

  else
  {
    return 32;
  }
}

uint64_t MLS.Cryptography.Ciphersuite.SuitePrimitives.deinit()
{
  v1 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v2 = sub_26C009EAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MLS.Cryptography.Ciphersuite.SuitePrimitives.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v2 = sub_26C009EAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t MLS.Cryptography.Ciphersuite.selectedSuite.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

unint64_t MLS.Cryptography.Ciphersuite.refHashWithDataEncodedLabel(_:_:)(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = result;
  v10 = *(v4 + 32);
  v33 = xmmword_26C00BBD0;
  v34 = 0;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    result = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    result = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v9), v9))
  {
    __break(1u);
    goto LABEL_37;
  }

  result = HIDWORD(v9) - v9;
LABEL_10:
  v14 = &v33;
  sub_26BF30414(result);
  if (v5)
  {
    sub_26BE00258(v33, *(&v33 + 1));
    return v14;
  }

  result = sub_26BE11228(v9, a2);
  v15 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v15 != 2)
    {
      result = 0;
      goto LABEL_21;
    }

    v17 = *(a3 + 16);
    v16 = *(a3 + 24);
    result = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v15)
  {
    result = BYTE6(a4);
LABEL_21:
    sub_26BF30414(result);
    sub_26BE11228(a3, a4);
    if (*(v10 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash))
    {
      v31 = sub_26C00A33C();
      v32 = sub_26BE12564(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      __swift_allocate_boxed_opaque_existential_1(v30);
      sub_26C00A32C();
    }

    else
    {
      v31 = sub_26C00A30C();
      v32 = sub_26BE12564(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      __swift_allocate_boxed_opaque_existential_1(v30);
      sub_26C00A2FC();
    }

    v18 = *(&v33 + 1) >> 62;
    if ((*(&v33 + 1) >> 62) > 1)
    {
      if (v18 != 2 || (*(v33 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (!v18 || ((v33 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_35:
    v28 = sub_26C00909C();
    v29 = v19;
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_26BE016A8();
    sub_26C009BEC();
    sub_26BE00258(v28, v29);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = *(AssociatedTypeWitness - 1);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v23 = &v27 - v22;
    sub_26C009BDC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v25);
    (*(v21 + 8))(v23, AssociatedTypeWitness);
    v14 = sub_26BE12418(v26);

    sub_26BE00258(v33, *(&v33 + 1));
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v14;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    result = HIDWORD(a3) - a3;
    goto LABEL_21;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_26BE0B280(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_26C00AAAC();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_26C00A68C();
  v63 = sub_26C00ACFC();
  v58 = sub_26C00AD0C();
  sub_26C00ACAC();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_26C00A67C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26C00AADC();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_26C00ACEC();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_26C00AADC();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_26C00ACEC();
      sub_26C00AADC();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

unint64_t MLS.Cryptography.Ciphersuite.refHashwithUTF8EncodedLabel(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v5 = sub_26C00A4EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v4;
  v10 = *(v4 + 2);
  v18 = *(v4 + 1);
  v12 = *(v4 + 3);
  v11 = *(v4 + 4);
  sub_26C00A4CC();
  v13 = sub_26C00A49C();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15 >> 60 == 15)
  {
    sub_26BE01654();
    swift_allocError();
    *v16 = 5;
    v16[112] = 1;
    swift_willThrow();
  }

  else
  {
    v21 = v9;
    v22 = v18;
    v23 = v10;
    v24 = v12;
    v25 = v11;
    v11 = MLS.Cryptography.Ciphersuite.refHashWithDataEncodedLabel(_:_:)(v13, v15, v19, v20);
    sub_26BE132D4(v13, v15);
  }

  return v11;
}

void MLS.Cryptography.Ciphersuite.expandWithLabel(_:_:_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a4;
  v40 = a5;
  v36[2] = a7;
  v36[3] = a1;
  v48 = *MEMORY[0x277D85DE8];
  v12 = sub_26C009EDC();
  v37 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v38 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C00A4EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (a6 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = *(v7 + 32);
  v36[0] = v12;
  v36[1] = v18;
  v42 = 0x20302E3120534C4DLL;
  v43 = 0xE800000000000000;
  MEMORY[0x26D699090](a2, a3);
  sub_26C00A4DC();
  v19 = sub_26C00A49C();
  v21 = v20;

  (*(v15 + 8))(v17, v14);
  if (v21 >> 60 == 15)
  {
    sub_26BE01654();
    swift_allocError();
    *v22 = 5;
    v22[112] = 1;
    swift_willThrow();
    return;
  }

  v46 = xmmword_26C00BBD0;
  v47 = 0;
  v41 = bswap32(a6) >> 16;
  v44 = MEMORY[0x277D838B0];
  v45 = MEMORY[0x277CC9C18];
  v42 = &v41;
  v43 = &v42;
  __swift_project_boxed_opaque_existential_1(&v42, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v23 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v23)
    {
      v24 = BYTE6(v21);
      goto LABEL_14;
    }

LABEL_12:
    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      v24 = HIDWORD(v19) - v19;
      goto LABEL_14;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v24 = 0;
  if (v23 == 2)
  {
    v26 = *(v19 + 16);
    v25 = *(v19 + 24);
    v24 = v25 - v26;
    if (__OFSUB__(v25, v26))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

LABEL_14:
  sub_26BF30414(v24);
  if (!v8)
  {
    sub_26BE11228(v19, v21);
    v27 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      if (v27 != 2)
      {
        v28 = 0;
        goto LABEL_25;
      }

      v30 = *(v39 + 16);
      v29 = *(v39 + 24);
      v28 = v29 - v30;
      if (!__OFSUB__(v29, v30))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v28 = BYTE6(v40);
LABEL_25:
      sub_26BF30414(v28);
      sub_26BE11228(v39, v40);
      sub_26C009E6C();
      v31 = *(&v46 + 1) >> 62;
      if ((*(&v46 + 1) >> 62) > 1)
      {
        if (v31 != 2 || (*(v46 + 24) & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (!v31 || ((v46 >> 32) & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_36:
      v32 = sub_26C00909C();
      v34 = v33;
      v35 = v38;
      sub_26C009EBC();
      sub_26BE00258(v32, v34);
      sub_26BE132D4(v19, v21);
      (*(v37 + 8))(v35, v36[0]);
      goto LABEL_27;
    }

    if (!__OFSUB__(HIDWORD(v39), v39))
    {
      v28 = HIDWORD(v39) - v39;
      goto LABEL_25;
    }

LABEL_40:
    __break(1u);
  }

  sub_26BE132D4(v19, v21);
LABEL_27:
  sub_26BE00258(v46, *(&v46 + 1));
}

void MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v7 = sub_26C009EDC();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A4EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v4 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash))
  {
    v13 = 64;
  }

  else
  {
    v13 = 32;
  }

  *&v39 = 0x20302E3120534C4DLL;
  *(&v39 + 1) = 0xE800000000000000;
  MEMORY[0x26D699090](a2, a3);
  sub_26C00A4DC();
  v14 = sub_26C00A49C();
  v16 = v15;

  (*(v10 + 8))(v12, v9);
  if (v16 >> 60 == 15)
  {
    sub_26BE01654();
    swift_allocError();
    *v17 = 5;
    v17[112] = 1;
    swift_willThrow();
    return;
  }

  v31 = xmmword_26C00BBD0;
  v42 = xmmword_26C00BBD0;
  v43 = 0;
  v38 = v13 << 8;
  v18 = MEMORY[0x277D838B0];
  v19 = MEMORY[0x277CC9C18];
  v40 = MEMORY[0x277D838B0];
  v41 = MEMORY[0x277CC9C18];
  *&v39 = &v38;
  *(&v39 + 1) = &v39;
  __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v20 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    v21 = 0;
    if (v20 != 2)
    {
      goto LABEL_15;
    }

    v23 = *(v14 + 16);
    v22 = *(v14 + 24);
    v21 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v21 = BYTE6(v16);
    goto LABEL_15;
  }

  if (__OFSUB__(HIDWORD(v14), v14))
  {
    __break(1u);
  }

  v21 = HIDWORD(v14) - v14;
LABEL_15:
  v24 = v37;
  sub_26BF30414(v21);
  if (!v24)
  {
    sub_26BE11228(v14, v16);
    LOBYTE(v38) = 0;
    v40 = v18;
    v41 = v19;
    *&v39 = &v38;
    *(&v39 + 1) = &v38 + 1;
    __swift_project_boxed_opaque_existential_1(&v39, v18);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v39);
    v40 = MEMORY[0x277CC9318];
    v41 = MEMORY[0x277CC9300];
    v39 = v31;
    v25 = __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x277CC9318]);
    sub_26BE121A0(*v25, v25[1], &v42);
    __swift_destroy_boxed_opaque_existential_1(&v39);
    v26 = v36;
    sub_26C009E6C();
    v27 = *(&v42 + 1) >> 62;
    if ((*(&v42 + 1) >> 62) > 1)
    {
      if (v27 != 2 || (*(v42 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (!v27 || ((v42 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    v28 = sub_26C00909C();
    v30 = v29;
    sub_26C009EBC();
    sub_26BE00258(v28, v30);
    sub_26BE132D4(v14, v16);
    (*(v34 + 8))(v26, v35);
    goto LABEL_26;
  }

  sub_26BE132D4(v14, v16);
LABEL_26:
  sub_26BE00258(v42, *(&v42 + 1));
}

void MLS.Cryptography.Ciphersuite.deriveTreeSecret(_:_:_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a2;
  v52 = a3;
  v45[3] = a1;
  v45[2] = a6;
  v62 = *MEMORY[0x277D85DE8];
  v47 = sub_26C009EDC();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A4EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 32);
  v50 = xmmword_26C00BBD0;
  v60 = xmmword_26C00BBD0;
  v61 = 0;
  LODWORD(v54) = bswap32(a4);
  v16 = MEMORY[0x277D838B0];
  v58 = MEMORY[0x277D838B0];
  v59 = MEMORY[0x277CC9C18];
  v56 = &v54;
  v57 = (&v54 + 4);
  __swift_project_boxed_opaque_existential_1(&v56, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v56);
  v17 = *(&v60 + 1) >> 62;
  if ((*(&v60 + 1) >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_8;
    }

    v18 = *(v60 + 24);
  }

  else
  {
    if (!v17)
    {
      goto LABEL_8;
    }

    v18 = v60 >> 32;
  }

  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

LABEL_8:
  v19 = sub_26C00909C();
  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (a5 >> 16)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v49 = v7;
  v45[1] = v15;
  v21 = v19;
  v22 = v20;
  v23 = a5;
  v56 = 0x20302E3120534C4DLL;
  v57 = 0xE800000000000000;
  MEMORY[0x26D699090](v51, v52);
  sub_26C00A4DC();
  v52 = sub_26C00A49C();
  v25 = v24;

  (*(v12 + 8))(v14, v11);
  if (v25 >> 60 != 15)
  {
    v54 = v50;
    v55 = 0;
    v53 = bswap32(v23) >> 16;
    v58 = v16;
    v59 = MEMORY[0x277CC9C18];
    v56 = &v53;
    v57 = &v54;
    __swift_project_boxed_opaque_existential_1(&v56, v16);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v56);
    v29 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v32 = 0;
      v30 = v22;
      v31 = v52;
      if (v29 != 2)
      {
        goto LABEL_21;
      }

      v34 = *(v52 + 16);
      v33 = *(v52 + 24);
      v32 = v33 - v34;
      if (!__OFSUB__(v33, v34))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      v30 = v22;
      v31 = v52;
      if (!v29)
      {
        v32 = BYTE6(v25);
LABEL_21:
        v35 = v49;
        sub_26BF30414(v32);
        if (v35)
        {
          sub_26BE00258(v21, v30);
          sub_26BE132D4(v31, v25);
LABEL_34:
          v28 = *(&v54 + 1);
          v27 = v54;
          goto LABEL_35;
        }

        sub_26BE11228(v31, v25);
        v36 = v30 >> 62;
        if ((v30 >> 62) > 1)
        {
          if (v36 != 2)
          {
            v37 = 0;
            goto LABEL_32;
          }

          v39 = *(v21 + 16);
          v38 = *(v21 + 24);
          v37 = v38 - v39;
          if (!__OFSUB__(v38, v39))
          {
            goto LABEL_32;
          }

          __break(1u);
        }

        else if (!v36)
        {
          v37 = BYTE6(v30);
LABEL_32:
          sub_26BF30414(v37);
          sub_26BE11228(v21, v30);
          sub_26C009E6C();
          v40 = *(&v54 + 1) >> 62;
          if ((*(&v54 + 1) >> 62) > 1)
          {
            if (v40 != 2 || (*(v54 + 24) & 0x8000000000000000) == 0)
            {
              goto LABEL_44;
            }
          }

          else if (!v40 || ((v54 >> 32) & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          __break(1u);
LABEL_44:
          v41 = sub_26C00909C();
          v43 = v42;
          v44 = v48;
          sub_26C009EBC();
          sub_26BE00258(v41, v43);
          sub_26BE132D4(v52, v25);
          sub_26BE00258(v21, v30);
          (*(v46 + 8))(v44, v47);
          goto LABEL_34;
        }

        if (!__OFSUB__(HIDWORD(v21), v21))
        {
          v37 = HIDWORD(v21) - v21;
          goto LABEL_32;
        }

LABEL_49:
        __break(1u);
      }
    }

    if (!__OFSUB__(HIDWORD(v31), v31))
    {
      v32 = HIDWORD(v31) - v31;
      goto LABEL_21;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_26BE01654();
  swift_allocError();
  *v26 = 5;
  v26[112] = 1;
  swift_willThrow();
  v27 = v21;
  v28 = v22;
LABEL_35:
  sub_26BE00258(v27, v28);
  sub_26BE00258(v60, *(&v60 + 1));
}

void MLS.Cryptography.Ciphersuite.importSignaturePrivateKey(_:deviceConstrained:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v56 = a2;
  v5 = v4;
  v55 = a1;
  v62 = a4;
  v53 = sub_26C009F3C();
  v7 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009EDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C009EEC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C009EAC();
  v18 = MEMORY[0x28223BE20](v17);
  v21 = *v5;
  if ((a3 & 1) == 0)
  {
    v50 = v20;
    v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = v18;
    v31 = *(v14 + 104);
    v32 = (v10 + 104);
    v33 = (v7 + 104);
    if (v21)
    {
      v31(v16, *MEMORY[0x277CC5450], v13);
      (*v32)(v12, *MEMORY[0x277CC5438], v9);
      (*v33)(v54, *MEMORY[0x277CC5460], v53);
      v35 = v55;
      v34 = v56;
      sub_26BE00608(v55, v56);
      v36 = v51;
      sub_26C009E7C();
      type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
      v37 = swift_allocObject();
      (*(v50 + 32))(v37 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v36, v52);
      *(v37 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
      v58[0] = 1;
      v59 = xmmword_26C00CDC0;
      v60 = 16;
      v61 = v37;
      v38 = type metadata accessor for P256SigningPrivateKey(0);
      v28 = v62;
      v62[3] = v38;
      v28[4] = sub_26BE12564(&qword_28045E378, type metadata accessor for P256SigningPrivateKey, &protocol conformance descriptor for P256SigningPrivateKey);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      v40 = v57;
      P256SigningPrivateKey.init(data:ciphersuite:)(v35, v34, v58, boxed_opaque_existential_1);
      if (!v40)
      {
        return;
      }
    }

    else
    {
      v31(v16, *MEMORY[0x277CC5458], v13);
      (*v32)(v12, *MEMORY[0x277CC5438], v9);
      (*v33)(v54, *MEMORY[0x277CC5460], v53);
      v43 = v55;
      v42 = v56;
      sub_26BE00608(v55, v56);
      v44 = v51;
      sub_26C009E7C();
      type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
      v45 = swift_allocObject();
      (*(v50 + 32))(v45 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v44, v52);
      *(v45 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
      v58[0] = 0;
      v59 = xmmword_26C00CDC0;
      v60 = 16;
      v61 = v45;
      v46 = type metadata accessor for ED25519SigningPrivateKey(0);
      v28 = v62;
      v62[3] = v46;
      v28[4] = sub_26BE12564(&qword_28045E380, type metadata accessor for ED25519SigningPrivateKey, &protocol conformance descriptor for ED25519SigningPrivateKey);
      v47 = __swift_allocate_boxed_opaque_existential_1(v28);
      v48 = v57;
      ED25519SigningPrivateKey.init(data:ciphersuite:)(v43, v42, v58, v47);
      if (!v48)
      {
        return;
      }
    }

LABEL_10:
    __swift_deallocate_boxed_opaque_existential_1(v28);
    return;
  }

  if ((*v5 & 1) == 0)
  {
    sub_26BE01654();
    swift_allocError();
    *v41 = 0xD00000000000002ALL;
    *(v41 + 8) = 0x800000026C02A900;
    *(v41 + 112) = 2;
    swift_willThrow();
    return;
  }

  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v18;
  v22 = v20;
  (*(v14 + 104))(v16, *MEMORY[0x277CC5450], v13);
  (*(v10 + 104))(v12, *MEMORY[0x277CC5438], v9);
  (*(v7 + 104))(v54, *MEMORY[0x277CC5460], v53);
  v23 = v55;
  v24 = v56;
  sub_26BE00608(v55, v56);
  v25 = v51;
  sub_26C009E7C();
  type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v26 = swift_allocObject();
  (*(v22 + 32))(v26 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v25, v52);
  *(v26 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  v58[0] = 1;
  v59 = xmmword_26C00CDC0;
  v60 = 16;
  v61 = v26;
  v27 = type metadata accessor for P256SigningSEPPrivateKey(0);
  v28 = v62;
  v62[3] = v27;
  v28[4] = sub_26BE12564(&qword_28045E388, type metadata accessor for P256SigningSEPPrivateKey, &protocol conformance descriptor for P256SigningSEPPrivateKey);
  v29 = __swift_allocate_boxed_opaque_existential_1(v28);
  v30 = v57;
  P256SigningSEPPrivateKey.init(data:ciphersuite:)(v23, v24, v58, v29);
  if (v30)
  {
    goto LABEL_10;
  }
}

double MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v4 = v3;
  v48 = a1;
  v55 = a3;
  v5 = sub_26C009BBC();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009F3C();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009EDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C009EEC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26C009EAC();
  v17 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v4;
  v21 = *(v14 + 104);
  v22 = (v10 + 104);
  v23 = (v44 + 104);
  if ((v20 & 1) == 0)
  {
    v21(v16, *MEMORY[0x277CC5458], v13);
    (*v22)(v12, *MEMORY[0x277CC5438], v9);
    (*v23)(v47, *MEMORY[0x277CC5460], v45);
    v33 = v48;
    v32 = v49;
    sub_26BE00608(v48, v49);
    sub_26C009E7C();
    type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
    v34 = swift_allocObject();
    (*(v17 + 32))(v34 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v19, v46);
    *(v34 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
    v35 = type metadata accessor for ED25519VerificationPublicKey(0);
    v28 = v55;
    v55[3] = v35;
    v28[4] = sub_26BE12564(&qword_28045E318, type metadata accessor for ED25519VerificationPublicKey, &protocol conformance descriptor for ED25519VerificationPublicKey);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    v51 = v33;
    *&v52 = v32;
    v37 = v43;
    v38 = v50;
    sub_26C009BAC();
    if (!v38)
    {
      (*(v41 + 32))(boxed_opaque_existential_1, v37, v42);
      v39 = boxed_opaque_existential_1 + *(v35 + 20);
      *v39 = 0;
      *&result = 32;
      *(v39 + 8) = xmmword_26C00CDC0;
      *(v39 + 3) = 16;
      *(v39 + 4) = v34;
      return result;
    }

LABEL_6:
    __swift_deallocate_boxed_opaque_existential_1(v28);
    return result;
  }

  v21(v16, *MEMORY[0x277CC5450], v13);
  (*v22)(v12, *MEMORY[0x277CC5438], v9);
  (*v23)(v47, *MEMORY[0x277CC5460], v45);
  v25 = v48;
  v24 = v49;
  sub_26BE00608(v48, v49);
  sub_26C009E7C();
  type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v26 = swift_allocObject();
  (*(v17 + 32))(v26 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v19, v46);
  *(v26 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  LOBYTE(v51) = 1;
  v52 = xmmword_26C00CDC0;
  v53 = 16;
  v54 = v26;
  v27 = type metadata accessor for P256VerificationPublicKey(0);
  v28 = v55;
  v55[3] = v27;
  v28[4] = sub_26BE12564(&qword_28045E390, type metadata accessor for P256VerificationPublicKey, &protocol conformance descriptor for P256VerificationPublicKey);
  v29 = __swift_allocate_boxed_opaque_existential_1(v28);
  v30 = v50;
  P256VerificationPublicKey.init(data:ciphersuite:)(v25, v24, &v51, v29);
  if (v30)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t MLS.Cryptography.Ciphersuite.generateSignaturePrivateKey()@<X0>(uint64_t *a1@<X8>)
{
  v23 = sub_26C009B7C();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &boxed_opaque_existential_1 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ED25519SigningPrivateKey(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &boxed_opaque_existential_1 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  if ((*v1 & 1) == 0)
  {
    a1[3] = v7;
    a1[4] = sub_26BE12564(&qword_28045E380, type metadata accessor for ED25519SigningPrivateKey, &protocol conformance descriptor for ED25519SigningPrivateKey);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

    sub_26C009B6C();
    v18 = sub_26C009B3C();
    v22 = v19;
    (*(v3 + 8))(v5, v23);
    v24[0] = 0;
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28 = v13;
    v20 = v29;
    ED25519SigningPrivateKey.init(data:ciphersuite:)(v18, v22, v24, v9);
    if (!v20)
    {
      return sub_26BE135C8(v9, boxed_opaque_existential_1, type metadata accessor for ED25519SigningPrivateKey);
    }

    return __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  v24[0] = 1;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  a1[3] = type metadata accessor for P256SigningPrivateKey(0);
  a1[4] = sub_26BE12564(&qword_28045E378, type metadata accessor for P256SigningPrivateKey, &protocol conformance descriptor for P256SigningPrivateKey);
  v14 = __swift_allocate_boxed_opaque_existential_1(a1);

  v15 = v14;
  v16 = v29;
  result = P256SigningPrivateKey.init(ciphersuite:)(v24, v15);
  if (v16)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t MLS.Cryptography.Ciphersuite.generateSEPBoundSignaturePrivateKey()@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    v10[0] = 1;
    v11 = *(v1 + 8);
    v12 = v4;
    v13 = v5;
    v6 = v2;
    a1[3] = type metadata accessor for P256SigningSEPPrivateKey(0);
    a1[4] = sub_26BE12564(&qword_28045E388, type metadata accessor for P256SigningSEPPrivateKey, &protocol conformance descriptor for P256SigningSEPPrivateKey);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

    result = P256SigningSEPPrivateKey.init(ciphersuite:)(v10, boxed_opaque_existential_1);
    if (v6)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v9 = 0xD00000000000002ALL;
    *(v9 + 8) = 0x800000026C02A900;
    *(v9 + 112) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t MLS.Cryptography.Ciphersuite.extract(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a3;
  v6 = sub_26C009EDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009EAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, *(v3 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v10);
  sub_26C009E6C();
  (*(v11 + 8))(v13, v10);
  v15[2] = a1;
  v15[3] = a2;
  sub_26BE016A8();
  sub_26C009ECC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_26C009C8C();
  MEMORY[0x28223BE20](v7);
  v9 = *(*(v3 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash);
  (*(v10 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  if (v9)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E398, &qword_26C00CDD8);
    v27 = &off_287CBAFC8;
    __swift_allocate_boxed_opaque_existential_1(v25);
    sub_26C00A33C();
    v11 = &qword_28045E368;
    v12 = MEMORY[0x277CC5560];
    v13 = MEMORY[0x277CC5558];
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
    v27 = &off_287CBAFC8;
    __swift_allocate_boxed_opaque_existential_1(v25);
    sub_26C00A30C();
    v11 = &qword_28045E370;
    v12 = MEMORY[0x277CC5540];
    v13 = MEMORY[0x277CC5538];
  }

  sub_26BE12564(v11, v12, v13);
  sub_26C009E2C();
  v23 = a2;
  v24 = a3;
  v14 = v26;
  v15 = v27;
  __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v16 = v15[2];
  v17 = sub_26BE016A8();
  v16(&v23, MEMORY[0x277CC9318], v17, v14, v15);
  v18 = v26;
  v19 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v23 = (v19[3])(v18, v19);
  v24 = v20;
  sub_26C009C5C();
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_26BE0DDF0(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = sub_26C009F3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C009E9C();
  v7 = sub_26C009EFC();
  v8 = *(v4 + 8);
  result = v8(v6, v3);
  if ((v7 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 8 * v7)
  {
    v11 = 23;
    goto LABEL_7;
  }

  sub_26C009E9C();
  v10 = sub_26C009F0C();
  result = v8(v6, v3);
  if ((v10 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (v14 == 8 * v10)
  {
    return result;
  }

  v11 = 24;
LABEL_7:
  sub_26BE01654();
  swift_allocError();
  *v12 = v11;
  v12[112] = 0;
  return swift_willThrow();
}

uint64_t *MLS.Cryptography.Ciphersuite.aeadOpen(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v32 = a4;
  v25 = a3;
  v8 = sub_26C009F3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 24);
  v13 = *(v6 + 32);
  LOBYTE(v28) = *v6;
  v29 = *(v6 + 8);
  v30 = v12;
  v31 = v13;
  v14 = sub_26C009C7C();
  v15 = sub_26C009C7C();
  v16 = &v28;
  sub_26BE0DDF0(v14, v15);
  if (!v7)
  {
    v22 = v8;
    sub_26C009E9C();
    v28 = v23;
    *&v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
    sub_26C009C3C();
    v17 = sub_26BE12418(v26);
    v19 = v18;

    v26 = v25;
    v27 = v32;
    sub_26BE016A8();
    v16 = sub_26C009F1C();
    (*(v9 + 8))(v11, v22);
    sub_26BE00258(v17, v19);
  }

  return v16;
}

uint64_t *MLS.Cryptography.Ciphersuite.aeadSeal(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v25 = a4;
  v22 = a5;
  v23 = a3;
  v8 = sub_26C009F3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 24);
  v13 = *(v6 + 32);
  LOBYTE(v28) = *v6;
  v29 = *(v6 + 8);
  v30 = v12;
  v31 = v13;
  v14 = sub_26C009C7C();
  v15 = sub_26C009C7C();
  v16 = &v28;
  sub_26BE0DDF0(v14, v15);
  if (!v7)
  {
    v21 = v9;
    sub_26C009E9C();
    v28 = v22;
    *&v29 = v24;
    v26 = v23;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
    sub_26C009C3C();
    v17 = sub_26BE12418(v32);
    v19 = v18;

    sub_26BE016A8();
    v16 = sub_26C009F2C();
    (*(v21 + 8))(v11, v8);
    sub_26BE00258(v17, v19);
  }

  return v16;
}

char *sub_26BE0E444@<X0>(char *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  if (!result || (v4 = a2 - result, a2 == result))
  {
LABEL_3:
    *a3 = v3;
    return result;
  }

  v5 = result;
  v6 = a3;
  v13 = MEMORY[0x277D84F90];
  result = sub_26BECB874(0, v4 & ~(v4 >> 63), 0);
  if (v4 >= 1)
  {
    v3 = v13;
    v7 = *(v13 + 16);
    a3 = v6;
    v8 = v5;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v14 = v3;
      v11 = *(v3 + 24);
      if (v7 >= v11 >> 1)
      {
        v12 = v8;
        result = sub_26BECB874((v11 > 1), v7 + 1, 1);
        v8 = v12;
        a3 = v6;
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + v7++ + 32) = v9;
      --v4;
    }

    while (v4);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t MLS.Cryptography.Ciphersuite.deriveHPKEPrivateKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a1;
  v58 = a2;
  v2 = sub_26C00A09C();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v59 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C009F3C();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C009EDC();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009EEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C009EAC();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C009C8C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = sub_26C009B1C();
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v15 + 16);
  if (*v60)
  {
    v25(v18, v61, v14);
    v26 = v59;
    v27 = v66;
    result = sub_26C00A07C();
    if (!v27)
    {
      v29 = sub_26C00A05C();
      v31 = v30;
      (*(v9 + 104))(v11, *MEMORY[0x277CC5450], v8);
      (*(v49 + 104))(v52, *MEMORY[0x277CC5438], v50);
      (*(v56 + 104))(v55, *MEMORY[0x277CC5460], v57);
      v32 = v51;
      sub_26C009E7C();
      type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
      v33 = swift_allocObject();
      (*(v53 + 32))(v33 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v32, v54);
      *(v33 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
      v62[0] = 1;
      v63 = xmmword_26C00CDC0;
      v64 = 16;
      v65 = v33;
      v34 = type metadata accessor for P256DecryptionPrivateKey(0);
      v35 = v58;
      v58[3] = v34;
      v35[4] = sub_26BE12564(&qword_28045E3A8, type metadata accessor for P256DecryptionPrivateKey, &protocol conformance descriptor for P256DecryptionPrivateKey);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
      P256DecryptionPrivateKey.init(data:ciphersuite:)(v29, v31, v62, boxed_opaque_existential_1);
      return (*(v47 + 8))(v26, v48);
    }
  }

  else
  {
    v37 = v22;
    v25(v20, v61, v14);
    v38 = v66;
    result = sub_26C009AFC();
    if (!v38)
    {
      v39 = sub_26C009ADC();
      v66 = v40;
      (*(v9 + 104))(v11, *MEMORY[0x277CC5458], v8);
      (*(v49 + 104))(v52, *MEMORY[0x277CC5438], v50);
      (*(v56 + 104))(v55, *MEMORY[0x277CC5460], v57);
      v41 = v51;
      sub_26C009E7C();
      type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
      v42 = swift_allocObject();
      (*(v53 + 32))(v42 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v41, v54);
      *(v42 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
      v62[0] = 0;
      v63 = xmmword_26C00CDC0;
      v64 = 16;
      v65 = v42;
      v43 = type metadata accessor for Curve25519DecryptionPrivateKey(0);
      v44 = v58;
      v58[3] = v43;
      v44[4] = sub_26BE12564(&qword_28045E3B0, type metadata accessor for Curve25519DecryptionPrivateKey, &protocol conformance descriptor for Curve25519DecryptionPrivateKey);
      v45 = __swift_allocate_boxed_opaque_existential_1(v44);
      Curve25519DecryptionPrivateKey.init(data:ciphersuite:)(v39, v66, v62, v45);
      return (*(v37 + 8))(v24, v21);
    }
  }

  return result;
}

uint64_t MLS.Cryptography.Ciphersuite.digestHash(_:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 32) + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash))
  {
    v16 = sub_26C00A33C();
    v17 = sub_26BE12564(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_26C00A32C();
  }

  else
  {
    v16 = sub_26C00A30C();
    v17 = sub_26BE12564(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    __swift_allocate_boxed_opaque_existential_1(v15);
    sub_26C00A2FC();
  }

  v14[1] = a1;
  v14[2] = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  sub_26BE016A8();
  sub_26C009BEC();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 1);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v14 - v7;
  sub_26C009BDC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v10);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  v12 = sub_26BE12418(v11);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

void MLS.Cryptography.Ciphersuite.importDecryptionPrivateKey(_:deviceConstrained:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v10 = *(v4 + 8);
  v9 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  if ((a3 & 1) == 0)
  {
    if (*v4)
    {
      v17[0] = 1;
      v18 = v10;
      v19 = v9;
      v20 = v11;
      v21 = v12;
      a4[3] = type metadata accessor for P256DecryptionPrivateKey(0);
      a4[4] = sub_26BE12564(&qword_28045E3A8, type metadata accessor for P256DecryptionPrivateKey, &protocol conformance descriptor for P256DecryptionPrivateKey);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
      sub_26BE00608(a1, a2);

      P256DecryptionPrivateKey.init(data:ciphersuite:)(a1, a2, v17, boxed_opaque_existential_1);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v17[0] = 0;
      v18 = v10;
      v19 = v9;
      v20 = v11;
      v21 = v12;
      a4[3] = type metadata accessor for Curve25519DecryptionPrivateKey(0);
      a4[4] = sub_26BE12564(&qword_28045E3B0, type metadata accessor for Curve25519DecryptionPrivateKey, &protocol conformance descriptor for Curve25519DecryptionPrivateKey);
      v16 = __swift_allocate_boxed_opaque_existential_1(a4);
      sub_26BE00608(a1, a2);

      Curve25519DecryptionPrivateKey.init(data:ciphersuite:)(a1, a2, v17, v16);
      if (!v5)
      {
        return;
      }
    }

LABEL_10:
    __swift_deallocate_boxed_opaque_existential_1(a4);
    return;
  }

  if ((*v4 & 1) == 0)
  {
    sub_26BE01654();
    swift_allocError();
    *v15 = 0xD00000000000002DLL;
    *(v15 + 8) = 0x800000026C02A930;
    *(v15 + 112) = 2;
    swift_willThrow();
    return;
  }

  v17[0] = 1;
  v18 = v10;
  v19 = v9;
  v20 = v11;
  v21 = v12;
  a4[3] = type metadata accessor for P256DecryptionSEPPrivateKey(0);
  a4[4] = sub_26BE12564(&qword_28045E3B8, type metadata accessor for P256DecryptionSEPPrivateKey, &protocol conformance descriptor for P256DecryptionSEPPrivateKey);
  v13 = __swift_allocate_boxed_opaque_existential_1(a4);
  sub_26BE00608(a1, a2);

  P256DecryptionSEPPrivateKey.init(data:ciphersuite:)(a1, a2, v17, v13);
  if (v5)
  {
    goto LABEL_10;
  }
}

void MLS.Cryptography.Ciphersuite.importEncryptionPublicKey(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = *(v3 + 8);
  v8 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  if (*v3)
  {
    v14[0] = 1;
    v15 = v9;
    v16 = v8;
    v17 = v10;
    v18 = v11;
    a3[3] = type metadata accessor for P256EncryptionPublicKey(0);
    a3[4] = sub_26BE12564(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey, &protocol conformance descriptor for P256EncryptionPublicKey);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_26BE00608(a1, a2);

    P256EncryptionPublicKey.init(data:ciphersuite:)(a1, a2, v14, boxed_opaque_existential_1);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v14[0] = 0;
    v15 = v9;
    v16 = v8;
    v17 = v10;
    v18 = v11;
    a3[3] = type metadata accessor for Curve25519EncryptionPublicKey(0);
    a3[4] = sub_26BE12564(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey, &protocol conformance descriptor for Curve25519EncryptionPublicKey);
    v13 = __swift_allocate_boxed_opaque_existential_1(a3);
    sub_26BE00608(a1, a2);

    Curve25519EncryptionPublicKey.init(data:ciphersuite:)(a1, a2, v14, v13);
    if (!v4)
    {
      return;
    }
  }

  __swift_deallocate_boxed_opaque_existential_1(a3);
}

uint64_t MLS.Cryptography.Ciphersuite.generateHPKEPrivateKey()@<X0>(uint64_t *a1@<X8>)
{
  v28 = sub_26C00A09C();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C009B1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Curve25519DecryptionPrivateKey(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *v1;
  v14 = *(v1 + 16);
  v29 = *(v1 + 8);
  v30 = v14;
  v15 = *(v1 + 32);
  v31 = *(v1 + 24);
  if ((v12 & 1) == 0)
  {
    a1[3] = v11;
    a1[4] = sub_26BE12564(&qword_28045E3B0, type metadata accessor for Curve25519DecryptionPrivateKey, &protocol conformance descriptor for Curve25519DecryptionPrivateKey);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

    sub_26C009B0C();
    v23 = sub_26C009ADC();
    v25 = v24;
    (*(v7 + 8))(v9, v6);
    v32[0] = 0;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    v36 = v15;
    v26 = v37;
    Curve25519DecryptionPrivateKey.init(data:ciphersuite:)(v23, v25, v32, v13);
    if (!v26)
    {
      return sub_26BE135C8(v13, boxed_opaque_existential_1, type metadata accessor for Curve25519DecryptionPrivateKey);
    }

    return __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  a1[3] = type metadata accessor for P256DecryptionPrivateKey(0);
  a1[4] = sub_26BE12564(&qword_28045E3A8, type metadata accessor for P256DecryptionPrivateKey, &protocol conformance descriptor for P256DecryptionPrivateKey);
  v16 = __swift_allocate_boxed_opaque_existential_1(a1);

  sub_26C00A08C();
  v17 = sub_26C00A05C();
  v19 = v18;
  (*(v3 + 8))(v5, v28);
  v32[0] = 1;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v15;
  v20 = v37;
  result = P256DecryptionPrivateKey.init(data:ciphersuite:)(v17, v19, v32, v16);
  if (v20)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t MLS.Cryptography.Ciphersuite.generateSEPBoundHPKEPrivateKey()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for P256DecryptionSEPPrivateKey(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009CEC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v1 & 1) == 0)
  {
    sub_26BE01654();
    swift_allocError();
    *v20 = 0xD00000000000002ALL;
    *(v20 + 8) = 0x800000026C02A900;
    *(v20 + 112) = 2;
    return swift_willThrow();
  }

  v34 = v10;
  v14 = *(v1 + 8);
  v13 = *(v1 + 16);
  v15 = *(v1 + 32);
  v27 = *(v1 + 24);
  v28 = v13;
  a1[3] = v5;
  a1[4] = sub_26BE12564(&qword_28045E3B8, type metadata accessor for P256DecryptionSEPPrivateKey, &protocol conformance descriptor for P256DecryptionSEPPrivateKey);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v17 = qword_28045DFE8;

  if (v17 != -1)
  {
    swift_once();
  }

  if (byte_28045FDC1 != 1)
  {

    sub_26BE01654();
    swift_allocError();
    v23 = 33;
LABEL_11:
    *v22 = v23;
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0u;
    *(v22 + 56) = 0u;
    *(v22 + 72) = 0u;
    *(v22 + 88) = 0u;
    *(v22 + 104) = 0;
    *(v22 + 112) = 23;
    swift_willThrow();
    return __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  v18 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (!v18)
  {

    sub_26BE01654();
    swift_allocError();
    v23 = 34;
    goto LABEL_11;
  }

  v26 = v14;
  v19 = v18;
  sub_26C009CDC();
  if (!v3)
  {
    v24 = sub_26C009CBC();
    v29[0] = 1;
    v30 = v26;
    v31 = v28;
    v32 = v27;
    v33 = v15;
    P256DecryptionSEPPrivateKey.init(data:ciphersuite:)(v24, v25, v29, v7);
    (*(v9 + 8))(v12, v34);

    return sub_26BE135C8(v7, boxed_opaque_existential_1, type metadata accessor for P256DecryptionSEPPrivateKey);
  }

  return __swift_deallocate_boxed_opaque_existential_1(a1);
}

char *MLS.Cryptography.Ciphersuite.generateRandomGroupID()()
{
  v0 = sub_26C00A4EC();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C00928C();
  v4 = *(v3 - 8);
  v25 = v3;
  v26 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009C8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C009D7C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_26C009D6C();
  (*(v12 + 16))(v15, v17, v11);
  sub_26C009C6C();
  v18 = v31;
  sub_26C009C3C();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v17, v11);
  v19 = v29;
  v20 = v30;
  sub_26BF8ED18(v29, v30);
  if (v18)
  {
    sub_26BE00258(v19, v20);
    return v17;
  }

  v21 = v26;
  sub_26C00922C();
  sub_26C00A50C();

  sub_26C00A4CC();
  v17 = sub_26C00A49C();
  v23 = v22;
  result = (*(v27 + 8))(v2, v28);
  if (v23 >> 60 != 15)
  {
    (*(v21 + 8))(v6, v25);
    sub_26BE00258(v19, v20);

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t MLS.Cryptography.Ciphersuite.hashValue.getter()
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE0FE74@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
LABEL_3:
    v6 = sub_26BE12418(v4);
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
    return result;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_26BECB874(0, v5 & ~(v5 >> 63), 0);
  if (v5 >= 1)
  {
    v4 = v17;
    v11 = *(v17 + 16);
    v12 = a1;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = *(v17 + 24);
      if (v11 >= v15 >> 1)
      {
        v16 = v12;
        sub_26BECB874((v15 > 1), v11 + 1, 1);
        v12 = v16;
      }

      *(v17 + 16) = v11 + 1;
      *(v17 + v11++ + 32) = v13;
      --v5;
    }

    while (v5);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

unint64_t sub_26BE0FF84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_26C00A4EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = 0x20302E3120534C4DLL;
  *(&v26 + 1) = 0xE800000000000000;
  MEMORY[0x26D699090](a1, a2);
  sub_26C00A4DC();
  v13 = sub_26C00A49C();
  v15 = v14;

  result = (*(v10 + 8))(v12, v9);
  if (v15 >> 60 == 15)
  {
    sub_26BE01654();
    swift_allocError();
    *v17 = 5;
    v17[112] = 1;
    swift_willThrow();
    return a3;
  }

  v26 = xmmword_26C00BBD0;
  v27 = 0;
  v18 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    result = 0;
    if (v18 != 2)
    {
      goto LABEL_12;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    result = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v18)
  {
    result = BYTE6(v15);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v13), v13))
  {
    __break(1u);
    goto LABEL_36;
  }

  result = HIDWORD(v13) - v13;
LABEL_12:
  sub_26BF30414(result);
  if (v4)
  {
    sub_26BE132D4(v13, v15);
    sub_26BE00258(v26, *(&v26 + 1));
    return a3;
  }

  result = sub_26BE11228(v13, v15);
  v21 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v21 != 2)
    {
      result = 0;
      goto LABEL_23;
    }

    v23 = *(a3 + 16);
    v22 = *(a3 + 24);
    result = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v21)
  {
    result = BYTE6(a4);
LABEL_23:
    sub_26BF30414(result);
    sub_26BE11228(a3, a4);
    v24 = v26;
    v25 = *(&v26 + 1) >> 62;
    if ((*(&v26 + 1) >> 62) > 1)
    {
      if (v25 != 2 || (*(v26 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (!v25 || ((v26 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_34:
    a3 = sub_26C00909C();
    sub_26BE132D4(v13, v15);
    sub_26BE00258(v24, *(&v24 + 1));
    return a3;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    result = HIDWORD(a3) - a3;
    goto LABEL_23;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t MLS.Cryptography.SerializablePrivateKey.init(generateFor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6[0] = *a1;
  v7 = *(a1 + 8);
  v8 = v3;
  v9 = v4;
  return (*(a3 + 64))(v6, a2);
}

uint64_t MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_26BE0FF84(a1, a2, a3, a4);
  if (!v6)
  {
    v10 = v8;
    v11 = v9;
    a6 = (*(a6 + 32))();
    sub_26BE00258(v10, v11);
  }

  return a6;
}

uint64_t MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_26BE0FF84(a1, a2, a3, a4);
  if (!v8)
  {
    v15 = v13;
    v16 = a5;
    v17 = v14;
    LOBYTE(a8) = (*(a8 + 16))(v16, a6, v15, v14, a7, a8);
    sub_26BE00258(v15, v17);
  }

  return a8 & 1;
}

uint64_t sub_26BE103EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_26C00A18C();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C009BBC();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s9PublicKeyVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(*(v12 + 8) + 24))(v27, v13);
  v14 = v27[0];

  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = (*(*(v15 + 8) + 16))(v16);
  if (v14)
  {
    v25 = v17;
    v26 = v18;
    v19 = v28;
    sub_26C00A17C();
    if (!v19)
    {
      (*(v23 + 32))(v11, v5, v3);
LABEL_6:
      _s9PublicKeyV16BackingPublicKeyOMa(0);
      swift_storeEnumTagMultiPayload();
      sub_26BE135C8(v11, v24, _s9PublicKeyVMa);
    }
  }

  else
  {
    v25 = v17;
    v26 = v18;
    v20 = v28;
    sub_26C009BAC();
    if (!v20)
    {
      (*(v22 + 32))(v11, v8, v6);
      goto LABEL_6;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26BE106CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(*(v7 + 8) + 24))(v17, v8);
  LOBYTE(v7) = v17[0];

  if (v7)
  {
    if (qword_28045DFF8 != -1)
    {
      swift_once();
    }

    v9 = qword_28045FF60;
  }

  else
  {
    if (qword_28045E010 != -1)
    {
      swift_once();
    }

    v9 = qword_28045FFA8;
  }

  v10 = __swift_project_value_buffer(v4, v9);
  sub_26BE13564(v10, v6);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = (*(*(v11 + 8) + 16))(v12);
  sub_26BF2E8B4(v13, v14);
  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C00957C();
  sub_26BE135C8(v6, a2, type metadata accessor for MLS.AlgorithmIdentifier);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_26BE108EC(void *a1)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(v3 + 8) + 24))(v19, v4);
  LODWORD(v3) = LOBYTE(v19[0]);

  if (v3)
  {
    v5 = 512;
  }

  else
  {
    v5 = 256;
  }

  v18 = v5;
  v20[3] = MEMORY[0x277D838B0];
  v20[4] = MEMORY[0x277CC9C18];
  v20[0] = &v18;
  v20[1] = v19;
  __swift_project_boxed_opaque_existential_1(v20, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v20);
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v8 = (*(*(v6 + 8) + 16))(v7);
  v10 = v8;
  v11 = v9;
  v12 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(v9);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  v13 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_21;
    }

    v13 = HIDWORD(v8) - v8;
  }

LABEL_14:
  v16 = sub_26BF30414(v13);
  if (v1)
  {
    sub_26BE00258(v10, v11);
    return;
  }

  v17 = v16;
  sub_26BE11228(v10, v11);
  sub_26BE00258(v10, v11);
  if (__OFADD__(v17, v13))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v17 + v13, 2))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_26BE10AD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_26BEE6180();
  if ((v3 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  else
  {
    v4 = v3;
    result = sub_26BF2F7B0();
    if (!v1)
    {
      if (v4 - 3 < 0xFFFFFFFE)
      {
        __break(1u);
      }

      else
      {
        v7 = v6;
        v8 = result;
        MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
        MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v8, v7, a1);
        sub_26BE00258(v8, v7);
      }
    }
  }

  return result;
}

void sub_26BE10C30(void *a1)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(v3 + 8) + 24))(v24, v4);
  LODWORD(v3) = LOBYTE(v24[0]);

  if (v3)
  {
    v5 = 512;
  }

  else
  {
    v5 = 256;
  }

  v22 = v5;
  v6 = MEMORY[0x277D838B0];
  v7 = MEMORY[0x277CC9C18];
  v23[3] = MEMORY[0x277D838B0];
  v23[4] = MEMORY[0x277CC9C18];
  v23[0] = &v22;
  v23[1] = v23;
  __swift_project_boxed_opaque_existential_1(v23, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  LOBYTE(v23[0]) = (*(*(v8 + 8) + 48))(v9) & 1;
  v24[3] = v6;
  v24[4] = v7;
  v24[0] = v23;
  v24[1] = v23 + 1;
  __swift_project_boxed_opaque_existential_1(v24, v6);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v24);
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = (*(*(v10 + 8) + 40))(v11);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(v13);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v19 = *(v12 + 16);
  v18 = *(v12 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      goto LABEL_21;
    }

    v17 = HIDWORD(v12) - v12;
  }

LABEL_14:
  v20 = sub_26BF30414(v17);
  if (v1)
  {
    sub_26BE00258(v14, v15);
    return;
  }

  v21 = v20;
  sub_26BE11228(v14, v15);
  sub_26BE00258(v14, v15);
  if (__OFADD__(v21, v17))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v21 + v17, 3))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_26BE10EB8(void (*a1)(uint64_t, unint64_t, BOOL))
{
  v3 = sub_26BEE6180();
  if ((v3 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }

  v4 = v3;
  v5 = sub_26BEE62D4();
  if ((v5 & 0x1FE) != 0)
  {
    sub_26BE01654();
    swift_allocError();
    *v6 = 5;
    v6[112] = 1;
    return swift_willThrow();
  }

  v9 = v5;
  result = sub_26BF2F7B0();
  if (!v1)
  {
    if (v4 - 3 < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v11 = v10;
      v12 = result;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      a1(v12, v11, v9 == 1);
      sub_26BE00258(v12, v11);
    }
  }

  return result;
}

uint64_t sub_26BE11028@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 72) == 1)
  {
    if (*(v1 + 32))
    {
      v4 = *(v1 + 56);
      v5 = *(v1 + 64);
      v12[0] = 1;
      v13 = *(v1 + 40);
      v14 = v4;
      v15 = v5;
      v6 = v2;
      a1[3] = type metadata accessor for P256SigningSEPPrivateKey(0);
      a1[4] = sub_26BE12564(&qword_28045E388, type metadata accessor for P256SigningSEPPrivateKey, &protocol conformance descriptor for P256SigningSEPPrivateKey);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

      result = P256SigningSEPPrivateKey.init(ciphersuite:)(v12, boxed_opaque_existential_1);
      if (v6)
      {
        return __swift_deallocate_boxed_opaque_existential_1(a1);
      }
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      *v11 = 0xD00000000000002ALL;
      *(v11 + 8) = 0x800000026C02A900;
      *(v11 + 112) = 2;
      return swift_willThrow();
    }
  }

  else
  {
    v9 = *(v1 + 56);
    v10 = *(v1 + 64);
    v12[0] = *(v1 + 32);
    v13 = *(v1 + 40);
    v14 = v9;
    v15 = v10;

    MLS.Cryptography.Ciphersuite.generateSignaturePrivateKey()(a1);
  }

  return result;
}

uint64_t sub_26BE1118C@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 72) == 1)
  {

    MLS.Cryptography.Ciphersuite.generateSEPBoundHPKEPrivateKey()(a1);
  }

  else
  {

    MLS.Cryptography.Ciphersuite.generateHPKEPrivateKey()(a1);
  }
}

uint64_t sub_26BE11228(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v13[3] = MEMORY[0x277CC9318];
  v13[4] = MEMORY[0x277CC9300];
  v13[0] = a1;
  v13[1] = a2;
  v6 = __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277CC9318]);
  v7 = *v6;
  v8 = v6[1];
  sub_26BE00608(a1, a2);
  sub_26BE121A0(v7, v8, v3);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      return BYTE6(a2);
    }

    goto LABEL_8;
  }

  result = 0;
  if (v10 == 2)
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    result = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
      __break(1u);
LABEL_8:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
      }

      else
      {
        return HIDWORD(a1) - a1;
      }
    }
  }

  return result;
}

uint64_t *sub_26BE112FC@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_26BF2EA50(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_26C008EEC();
      swift_allocObject();
      v8 = sub_26C008E8C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_26C00904C();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_26BE113C4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v20 = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_26BE00258(v7, v6);
      v17[0] = v7;
      LOWORD(v17[1]) = v6;
      BYTE2(v17[1]) = BYTE2(v6);
      BYTE3(v17[1]) = BYTE3(v6);
      BYTE4(v17[1]) = BYTE4(v6);
      BYTE5(v17[1]) = BYTE5(v6);
      BYTE6(v17[1]) = BYTE6(v6);
      result = a1(&v18, v17, v17 + BYTE6(v6));
      if (!v3)
      {
        result = v18;
      }

      v10 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
      *v4 = v17[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26BE00258(v7, v6);
    *v4 = xmmword_26C00BBD0;
    sub_26BE00258(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26C008E9C() && __OFSUB__(v7, sub_26C008ECC()))
      {
LABEL_26:
        __break(1u);
      }

      sub_26C008EEC();
      swift_allocObject();
      v14 = sub_26C008E7C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_26BE11F80(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_26BE00258(v7, v6);
    v18 = v7;
    v19 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_26C00BBD0;
    sub_26BE00258(0, 0xC000000000000000);
    sub_26C008FEC();
    result = sub_26BE11F80(*(v18 + 2), *(v18 + 3), a1);
    v11 = v19 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v18;
      v4[1] = v11;
      return result;
    }

    *v4 = v18;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v17, 0, 15);
  result = a1(&v18, v17, v17);
  if (!v3)
  {
    return v18;
  }

  return result;
}

char *sub_26BE11770(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_26BE00258(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26BE00258(v7, v6);
    *v4 = xmmword_26C00BBD0;
    sub_26BE00258(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26C008E9C() && __OFSUB__(v7, sub_26C008ECC()))
      {
LABEL_26:
        __break(1u);
      }

      sub_26C008EEC();
      swift_allocObject();
      v14 = sub_26C008E7C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_26BE12038(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_26BE00258(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_26C00BBD0;
    sub_26BE00258(0, 0xC000000000000000);
    sub_26C008FEC();
    result = sub_26BE12038(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

char *sub_26BE11B14(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_26BE00258(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26BE00258(v7, v6);
    *v4 = xmmword_26C00BBD0;
    sub_26BE00258(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26C008E9C() && __OFSUB__(v7, sub_26C008ECC()))
      {
LABEL_26:
        __break(1u);
      }

      sub_26C008EEC();
      swift_allocObject();
      v14 = sub_26C008E7C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_26BE120EC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_26BE00258(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_26C00BBD0;
    sub_26BE00258(0, 0xC000000000000000);
    sub_26C008FEC();
    result = sub_26BE120EC(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_26BE11EAC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_26BE11F18(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_26BE11F80(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26C008E9C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26C008ECC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26C008EBC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_26BE12038(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26C008E9C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26C008ECC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26C008EBC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_26BE120EC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26C008E9C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26C008ECC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26C008EBC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_26BE121A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_26C00908C();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26BF8BC34(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_26BF8BC34(v4, v5);
  }

  return sub_26C00908C();
}

unint64_t sub_26BE122D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26C00A63C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D6990C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26BE12380@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_26C00AC2C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_26BE123D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_26BE13430(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t sub_26BE12418(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  v10 = sub_26BE13630(&qword_28045E440, &qword_28045E228, &qword_26C00CDD0, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26BE77028(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26BE12564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BE125AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_26BF2EA30(result);
    }

    else
    {
      sub_26C008EEC();
      swift_allocObject();
      sub_26C008EAC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26C00904C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_26BE1264C(unint64_t a1)
{
  v2 = sub_26C009C8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C009D7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v15 - v12;
  if ((a1 & 0x8000000000000000) != 0)
  {
    sub_26BE01654();
    swift_allocError();
    *v14 = 22;
    v14[112] = 0;
    return swift_willThrow();
  }

  else if (a1 >> 60)
  {
    __break(1u);
  }

  else
  {
    sub_26C009D6C();
    (*(v7 + 16))(v10, v13, v6);
    sub_26C009C6C();
    sub_26C009C3C();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v13, v6);
    return v15;
  }

  return result;
}

unint64_t sub_26BE12894()
{
  result = qword_28045E3C8;
  if (!qword_28045E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E3C8);
  }

  return result;
}

unint64_t sub_26BE12930()
{
  result = qword_28045E3E0;
  if (!qword_28045E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E3E0);
  }

  return result;
}

uint64_t _s12CryptographyOwet(unsigned int *a1, int a2)
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

_WORD *_s12CryptographyOwst(_WORD *result, int a2, int a3)
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

uint64_t sub_26BE12ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BE12B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BE12BDC(uint64_t a1)
{
  result = sub_26C009C8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BE12C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26BE12C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE12CF0(uint64_t a1)
{
  result = sub_26C009EAC();
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

uint64_t _s6ClientO11ClientStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6ClientO11ClientStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BE13178()
{
  result = qword_28045E408;
  if (!qword_28045E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E408);
  }

  return result;
}

uint64_t sub_26BE131CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BE13204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E428, &qword_26C00D188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_26BE1326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_26BE11EAC(sub_26BE132E8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}