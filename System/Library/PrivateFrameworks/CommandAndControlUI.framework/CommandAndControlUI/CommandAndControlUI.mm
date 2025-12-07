__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_243BC1B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_243BC1BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243BC1C5C()
{
  v1 = *v0;
  sub_243BD0FB8();
  MEMORY[0x245D4BD40](v1);
  return sub_243BD0FE8();
}

uint64_t sub_243BC1CD0(uint64_t a1)
{
  v2 = *v1;
  sub_243BD0FB8();
  MEMORY[0x245D4BD40](v2);
  return sub_243BD0FE8();
}

uint64_t sub_243BC1D14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6300, &qword_243BD1778);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6308, &qword_243BD1780);
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6310, &qword_243BD1788);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6318, &qword_243BD1790);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6320, &qword_243BD1798);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v50 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v24 = *(v59 + 16);

  v25 = 1;
  if (!v24)
  {
    *v14 = sub_243BD0A28();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6350, &qword_243BD1800);
    sub_243BC23F0(&v14[*(v26 + 44)]);
    sub_243BC86BC(v14, v12, &qword_27EDA6310, &qword_243BD1788);
    sub_243BC86BC(v12, v18, &qword_27EDA6310, &qword_243BD1788);
    v27 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6358, &qword_243BD1808) + 48)];
    *v27 = 0;
    v27[8] = 1;
    sub_243BC8724(v14, &qword_27EDA6310, &qword_243BD1788);
    sub_243BC8724(v12, &qword_27EDA6310, &qword_243BD1788);
    v28 = [objc_opt_self() systemGroupedBackgroundColor];
    v29 = sub_243BD0C68();
    v30 = sub_243BD0B08();
    v31 = &v18[*(v15 + 36)];
    *v31 = v29;
    v31[8] = v30;
    sub_243BC77B0(v18, v23, &qword_27EDA6318, &qword_243BD1790);
    v25 = 0;
  }

  v32 = *(v16 + 56);
  v49 = v23;
  v33 = v32(v23, v25, 1, v15);
  MEMORY[0x28223BE20](v33);
  *(&v48 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6328, &qword_243BD17E8);
  sub_243BC894C(&qword_27EDA6330, &qword_27EDA6328, &qword_243BD17E8, MEMORY[0x277CE14C8]);
  v34 = v51;
  sub_243BD0B78();
  v60 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
  v35 = sub_243BD0CD8();
  MEMORY[0x28223BE20](v35);
  *(&v48 - 2) = v2;
  sub_243BC894C(&qword_27EDA6340, &qword_27EDA6300, &qword_243BD1778, MEMORY[0x277CDE5A8]);
  v36 = v52;
  v37 = v54;
  sub_243BD0C18();

  (*(v53 + 8))(v34, v37);
  v38 = v23;
  v39 = v50;
  sub_243BC86BC(v38, v50, &qword_27EDA6320, &qword_243BD1798);
  v41 = v55;
  v40 = v56;
  v42 = *(v56 + 16);
  v43 = v57;
  v42(v55, v36, v57);
  v44 = v58;
  sub_243BC86BC(v39, v58, &qword_27EDA6320, &qword_243BD1798);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6348, &qword_243BD17F8);
  v42((v44 + *(v45 + 48)), v41, v43);
  v46 = *(v40 + 8);
  v46(v36, v43);
  sub_243BC8724(v49, &qword_27EDA6320, &qword_243BD1798);
  v46(v41, v43);
  return sub_243BC8724(v39, &qword_27EDA6320, &qword_243BD1798);
}

uint64_t sub_243BC23F0@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v1 = sub_243BD0AC8();
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6360, &qword_243BD1810);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6368, &qword_243BD1818);
  v8 = *(v38 - 8);
  v9 = MEMORY[0x28223BE20](v38);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  type metadata accessor for CACUILocaleUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_243BD0898();
  v17 = v16;

  v44 = v15;
  v45 = v17;
  sub_243BC7098();
  v18 = sub_243BD0BA8();
  v20 = v19;
  v37 = v21;
  v23 = v22;
  v36 = v22;
  sub_243BD0978();
  v24 = v4;
  sub_243BD0AB8();
  sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810, MEMORY[0x277CDD7F0]);
  sub_243BC8390(&qword_27EDA6380, MEMORY[0x277CDE328], MEMORY[0x277CDE320]);
  v25 = v5;
  v26 = v41;
  sub_243BD0BD8();
  (*(v42 + 8))(v24, v26);
  (*(v40 + 8))(v7, v25);
  v27 = v8;
  v28 = *(v8 + 16);
  v29 = v38;
  v30 = v39;
  v28(v39, v12, v38);
  v31 = v43;
  *v43 = v18;
  v31[1] = v20;
  LOBYTE(v7) = v37 & 1;
  *(v31 + 16) = v37 & 1;
  v31[3] = v23;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6388, &unk_243BD1820);
  v28(v32 + *(v33 + 48), v30, v29);
  sub_243BC70EC(v18, v20, v7);
  v34 = *(v27 + 8);

  v34(v12, v29);
  v34(v30, v29);
  sub_243BC70FC(v18, v20, v7);
}

uint64_t sub_243BC284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v75 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63A8, &qword_243BD1838);
  MEMORY[0x28223BE20](v66);
  v72 = &v58 - v2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63B0, &qword_243BD1840);
  MEMORY[0x28223BE20](v69);
  v59 = &v58 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63B8, &qword_243BD1848);
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63C0, &qword_243BD1850);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v70 = &v58 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63C8, &qword_243BD1858);
  MEMORY[0x28223BE20](v61);
  v12 = &v58 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63D0, &qword_243BD1860);
  MEMORY[0x28223BE20](v62);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63D8, &qword_243BD1868);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63E0, &qword_243BD1870);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v64 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v63 = &v58 - v25;
  type metadata accessor for CACUILocaleUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();
  v60 = ObjCClassFromMetadata;
  v28 = [v27 bundleForClass_];
  v29 = sub_243BD0898();
  v31 = v30;

  v77 = v29;
  v78 = v31;
  sub_243BC7098();
  v77 = sub_243BD0BA8();
  v78 = v32;
  v79 = v33 & 1;
  v80 = v34;
  v76 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63E8, &qword_243BD1878);
  sub_243BC7208();
  sub_243BD0D08();
  v35 = *(sub_243BCDB4C() + 16);

  v36 = *(v16 + 16);
  if (v35)
  {
    v36(v12, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_243BC72E0();
    sub_243BC7720(&qword_27EDA6408, &qword_27EDA63D8, &qword_243BD1868, sub_243BC7208);
    sub_243BD0AA8();
  }

  else
  {
    v36(v14, v18, v15);
    sub_243BC86BC(v14, v12, &qword_27EDA63D0, &qword_243BD1860);
    swift_storeEnumTagMultiPayload();
    sub_243BC72E0();
    sub_243BC7720(&qword_27EDA6408, &qword_27EDA63D8, &qword_243BD1868, sub_243BC7208);
    sub_243BD0AA8();
    sub_243BC8724(v14, &qword_27EDA63D0, &qword_243BD1860);
  }

  (*(v16 + 8))(v18, v15);
  v37 = v63;
  sub_243BC73EC(v24, v63);
  v38 = [v27 bundleForClass_];
  v39 = sub_243BD0898();
  v41 = v40;

  v77 = v39;
  v78 = v41;
  v77 = sub_243BD0BA8();
  v78 = v42;
  v79 = v43 & 1;
  v80 = v44;
  MEMORY[0x28223BE20](v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6418, &qword_243BD1880);
  sub_243BC7464();
  v45 = v67;
  sub_243BD0D08();
  v46 = *(sub_243BCDCC0() + 16);

  v47 = v68;
  v48 = *(v68 + 16);
  v49 = v65;
  if (v46)
  {
    v50 = v71;
    v48(v72, v45, v71);
    swift_storeEnumTagMultiPayload();
    sub_243BC7668();
    sub_243BC7720(&qword_27EDA6460, &qword_27EDA63B8, &qword_243BD1848, sub_243BC7464);
    sub_243BD0AA8();
  }

  else
  {
    v51 = v59;
    v50 = v71;
    v48(v59, v45, v71);
    sub_243BC86BC(v51, v72, &qword_27EDA63B0, &qword_243BD1840);
    swift_storeEnumTagMultiPayload();
    sub_243BC7668();
    sub_243BC7720(&qword_27EDA6460, &qword_27EDA63B8, &qword_243BD1848, sub_243BC7464);
    sub_243BD0AA8();
    sub_243BC8724(v51, &qword_27EDA63B0, &qword_243BD1840);
  }

  (*(v47 + 8))(v45, v50);
  v52 = v70;
  sub_243BC77B0(v49, v70, &qword_27EDA63C0, &qword_243BD1850);
  v53 = v64;
  sub_243BC86BC(v37, v64, &qword_27EDA63E0, &qword_243BD1870);
  v54 = v73;
  sub_243BC86BC(v52, v73, &qword_27EDA63C0, &qword_243BD1850);
  v55 = v74;
  sub_243BC86BC(v53, v74, &qword_27EDA63E0, &qword_243BD1870);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6468, &unk_243BD18A0);
  sub_243BC86BC(v54, v55 + *(v56 + 48), &qword_27EDA63C0, &qword_243BD1850);
  sub_243BC8724(v52, &qword_27EDA63C0, &qword_243BD1850);
  sub_243BC8724(v37, &qword_27EDA63E0, &qword_243BD1870);
  sub_243BC8724(v54, &qword_27EDA63C0, &qword_243BD1850);
  return sub_243BC8724(v53, &qword_27EDA63E0, &qword_243BD1870);
}

uint64_t sub_243BC3284(uint64_t a1)
{
  v8 = sub_243BCDB4C();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_243BC71C8(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6470, &qword_243BD18C8);
  sub_243BC894C(&qword_27EDA6480, &qword_27EDA6470, &qword_243BD18C8, MEMORY[0x277D83980]);
  sub_243BC7820();
  sub_243BC728C();
  return sub_243BD0CF8();
}

uint64_t sub_243BC33B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v9 = v17[0];
  v10 = v17[1];
  v11 = swift_allocObject();
  v12 = *(a2 + 80);
  *(v11 + 80) = *(a2 + 64);
  *(v11 + 96) = v12;
  v13 = *(a2 + 96);
  v14 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v14;
  v15 = *(a2 + 48);
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = v15;
  *(v11 + 112) = v13;
  *(v11 + 120) = v6;
  *(v11 + 128) = v5;
  *(v11 + 136) = v7;
  *(v11 + 144) = v8;
  v18 = v8;
  *a3 = 0;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v6;
  *(a3 + 32) = v5;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = sub_243BC7B60;
  *(a3 + 64) = v11;
  swift_bridgeObjectRetain_n();
  return sub_243BC71C8(a2, v17);
}

uint64_t sub_243BC34D8(uint64_t a1)
{
  v9[13] = sub_243BCDCC0();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_243BC71C8(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6470, &qword_243BD18C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6478, &qword_243BD18D0);
  sub_243BC894C(&qword_27EDA6480, &qword_27EDA6470, &qword_243BD18C8, MEMORY[0x277D83980]);
  sub_243BC7820();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6428, &qword_243BD1888);
  v7 = sub_243BC7524();
  v9[0] = v6;
  v9[1] = v7;
  swift_getOpaqueTypeConformance2();
  return sub_243BD0CF8();
}

uint64_t sub_243BC3664(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v8 = v43[0];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v10 = *(a2 + 80);
  *(v9 + 112) = *(a2 + 64);
  *(v9 + 128) = v10;
  *(v9 + 144) = *(a2 + 96);
  v11 = *(a2 + 16);
  *(v9 + 48) = *a2;
  *(v9 + 64) = v11;
  v12 = *(a2 + 48);
  *(v9 + 80) = *(a2 + 32);
  *(v9 + 96) = v12;
  swift_bridgeObjectRetain_n();
  sub_243BC71C8(a2, v43);
  v13 = *(sub_243BCDB4C() + 16);

  *v39 = 0;
  *&v39[8] = v8;
  *&v39[24] = v5;
  *&v40 = v4;
  *(&v40 + 1) = v6;
  LOBYTE(v41) = v7;
  *(&v41 + 1) = sub_243BC78EC;
  v42 = v9;
  if (v13 || (v7 & 1) != 0)
  {
    v34 = v40;
    v35 = v41;
    *&v36 = v42;
    v32 = *v39;
    v33 = *&v39[16];
    LOBYTE(v25) = 1;
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6440, &qword_243BD1890);
    sub_243BC75B0();
    sub_243BC728C();
    sub_243BD0AA8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    v27 = v40;
    v28 = v41;
    *&v29 = v42;
    *(&v29 + 1) = KeyPath;
    v25 = *v39;
    v26 = *&v39[16];
    v20 = v40;
    v21 = v41;
    v18 = *v39;
    v19 = *&v39[16];
    *&v22 = v42;
    *(&v22 + 1) = KeyPath;
    *&v23 = sub_243BC7934;
    *(&v23 + 1) = v15;
    *&v30 = sub_243BC7934;
    *(&v30 + 1) = v15;
    sub_243BC794C(v39, v43);
    sub_243BC86BC(&v18, v43, &qword_27EDA6440, &qword_243BD1890);
    sub_243BC8724(&v25, &qword_27EDA6440, &qword_243BD1890);
    v34 = v20;
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v32 = v18;
    v33 = v19;
    v24 = 0;
    v38 = 0;
    sub_243BC86BC(&v18, v43, &qword_27EDA6440, &qword_243BD1890);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6440, &qword_243BD1890);
    sub_243BC75B0();
    sub_243BC728C();
    sub_243BD0AA8();
    sub_243BC7984(v39);
    sub_243BC8724(&v18, &qword_27EDA6440, &qword_243BD1890);
  }

  v29 = v43[4];
  v30 = v43[5];
  v31 = v44;
  v25 = v43[0];
  v26 = v43[1];
  v27 = v43[2];
  v28 = v43[3];
  v18 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
  v16 = sub_243BD0CD8();
  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6428, &qword_243BD1888);
  sub_243BC7524();
  sub_243BD0C18();

  v36 = v29;
  v37 = v30;
  v38 = v31;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  return sub_243BC8724(&v32, &qword_27EDA6428, &qword_243BD1888);
}

void sub_243BC3A58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
    sub_243BD0CC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
    sub_243BD0CC8();
    v9 = sub_243BD0E68();
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_243BD0F48();
    v24 = v21;
    MEMORY[0x245D4BBA0](0xD000000000000015, 0x8000000243BD40F0);
    *&v21 = a1;
    *(&v21 + 1) = a2;
    v22 = a3;
    v23 = 0;
    sub_243BD0F68();
    sub_243BC79BC();
    v10 = sub_243BD0EE8();
    v11 = v10;
    if (qword_27EDA62F8 == -1)
    {
      goto LABEL_7;
    }

LABEL_17:
    v10 = swift_once();
    goto LABEL_7;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
    sub_243BD0CC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
    sub_243BD0CC8();
    v9 = sub_243BD0E68();
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_243BD0F48();
    v24 = v21;
    MEMORY[0x245D4BBA0](0xD00000000000001FLL, 0x8000000243BD40C0);
    *&v21 = a1;
    *(&v21 + 1) = a2;
    v22 = 3;
    v23 = 1;
    sub_243BD0F68();
    sub_243BC79BC();
    v18 = sub_243BD0EE8();
    v11 = v18;
    if (qword_27EDA62F8 != -1)
    {
      v18 = swift_once();
    }

    *&v21 = v11;
    MEMORY[0x28223BE20](v18);
    v20 = &v21;
    v13 = sub_243BC7A60;
    goto LABEL_8;
  }

  if (a3)
  {
    v21 = *(a5 + 80);
    v22 = *(a5 + 96);
    *&v24 = a1;
    *(&v24 + 1) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
    sub_243BD0CC8();
    v21 = *(a5 + 64);
    LOBYTE(v24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
    sub_243BD0CC8();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  sub_243BD0CC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6338, &qword_243BD17F0);
  sub_243BD0CC8();
  v9 = sub_243BD0E68();
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_243BD0F48();
  v24 = v21;
  MEMORY[0x245D4BBA0](0xD000000000000017, 0x8000000243BD4110);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = 0;
  v23 = 1;
  sub_243BD0F68();
  sub_243BC79BC();
  v10 = sub_243BD0EE8();
  v11 = v10;
  if (qword_27EDA62F8 != -1)
  {
    goto LABEL_17;
  }

LABEL_7:
  *&v21 = v11;
  MEMORY[0x28223BE20](v10);
  v20 = &v21;
  v13 = sub_243BC8B6C;
LABEL_8:
  if (sub_243BCA3C4(v13, &v19, v12))
  {
    v14 = sub_243BD0DE8();
    v16 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_243BD1690;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_243BC710C();
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    sub_243BD08D8(v9, &dword_243BC0000, v11, "%@", 2, 2, v17);
  }

  else
  {
  }
}

uint64_t sub_243BC4054@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_243BD0C58();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v57 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = v47 - v6;
  v49 = sub_243BD08C8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CACUILocaleUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_243BD0898();
  v14 = v13;

  *&v59 = v12;
  *(&v59 + 1) = v14;
  sub_243BC7098();
  v55 = sub_243BD0BA8();
  v54 = v15;
  v52 = v16;
  v53 = v17;
  v50 = v10;
  v51 = ObjCClassFromMetadata;
  v18 = [v10 bundleForClass_];
  v47[1] = sub_243BD0898();
  v47[2] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_243BD1690;
  v59 = *(v2 + 40);
  v60 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  sub_243BD0CB8();
  if (v62)
  {
    v21 = v61;
  }

  else
  {
    v21 = 4271950;
  }

  if (v62)
  {
    v22 = v62;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  v23 = [objc_opt_self() currentLocale];
  sub_243BD08B8();

  v24 = sub_243BD08A8();
  v26 = v25;
  (*(v48 + 8))(v8, v49);
  if (v26)
  {
    *&v59 = v24;
    *(&v59 + 1) = v26;
    v21 = sub_243BD0F08();
    v28 = v27;

    v22 = v28;
  }

  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_243BC710C();
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v29 = sub_243BD0DF8();
  v31 = v30;

  *&v59 = v29;
  *(&v59 + 1) = v31;
  v49 = sub_243BD0BA8();
  v48 = v32;
  sub_243BD0C38();
  v33 = [v50 bundleForClass_];
  v34 = sub_243BD0898();
  v36 = v35;

  *&v59 = v34;
  *(&v59 + 1) = v36;
  v37 = sub_243BD0BA8();
  v39 = v38;
  v41 = v40;
  v42 = swift_allocObject();
  v43 = *(v2 + 80);
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = v43;
  *(v42 + 112) = *(v2 + 96);
  v44 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v44;
  v45 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v45;
  sub_243BC71C8(v2, &v59);
  sub_243BD0C48();

  sub_243BC70FC(v37, v39, v41 & 1);

  return sub_243BD0C28();
}

uint64_t sub_243BC4648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_243BD0C58();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v57 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = v47 - v6;
  v49 = sub_243BD08C8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CACUILocaleUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_243BD0898();
  v14 = v13;

  *&v59 = v12;
  *(&v59 + 1) = v14;
  sub_243BC7098();
  v55 = sub_243BD0BA8();
  v54 = v15;
  v52 = v16;
  v53 = v17;
  v50 = v10;
  v51 = ObjCClassFromMetadata;
  v18 = [v10 bundleForClass_];
  v47[1] = sub_243BD0898();
  v47[2] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_243BD1690;
  v59 = *(v2 + 80);
  v60 = *(v2 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  sub_243BD0CB8();
  if (v62)
  {
    v21 = v61;
  }

  else
  {
    v21 = 4271950;
  }

  if (v62)
  {
    v22 = v62;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  v23 = [objc_opt_self() currentLocale];
  sub_243BD08B8();

  v24 = sub_243BD08A8();
  v26 = v25;
  (*(v48 + 8))(v8, v49);
  if (v26)
  {
    *&v59 = v24;
    *(&v59 + 1) = v26;
    v21 = sub_243BD0F08();
    v28 = v27;

    v22 = v28;
  }

  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_243BC710C();
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v29 = sub_243BD0DF8();
  v31 = v30;

  *&v59 = v29;
  *(&v59 + 1) = v31;
  v49 = sub_243BD0BA8();
  v48 = v32;
  sub_243BD0C38();
  v33 = [v50 bundleForClass_];
  v34 = sub_243BD0898();
  v36 = v35;

  *&v59 = v34;
  *(&v59 + 1) = v36;
  v37 = sub_243BD0BA8();
  v39 = v38;
  v41 = v40;
  v42 = swift_allocObject();
  v43 = *(v2 + 80);
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = v43;
  *(v42 + 112) = *(v2 + 96);
  v44 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v44;
  v45 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v45;
  sub_243BC71C8(v2, &v59);
  sub_243BD0C48();

  sub_243BC70FC(v37, v39, v41 & 1);

  return sub_243BD0C28();
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

void *sub_243BC4CD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  result = sub_243BD0CB8();
  if (v3)
  {
    sub_243BCE094(v2, v3);
  }

  return result;
}

void *sub_243BC4D54(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6398, &qword_243BD1830);
  result = sub_243BD0CB8();
  if (v3)
  {
    sub_243BCE940(v2, v3);
  }

  return result;
}

uint64_t sub_243BC4DD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18[1] = a1;
  v18[0] = sub_243BD08C8();
  v3 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243BD0A68();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_243BD0A88();
  v24 = 1;
  sub_243BC5128(v2, v26);
  *&v23[55] = v27;
  *&v23[39] = v26[2];
  *&v23[23] = v26[1];
  *&v23[7] = v26[0];
  *&v22[17] = *&v23[16];
  *&v22[33] = *&v23[32];
  *&v22[49] = *&v23[48];
  v21 = v7;
  v22[0] = v24;
  *&v22[64] = *(&v27 + 1);
  *&v22[1] = *v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA65F0, &qword_243BD1C88);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_243BD1690;
  sub_243BD0A58();
  sub_243BD0A48();
  v25[0] = *v2;
  *(v25 + 9) = *(v2 + 9);
  v9 = objc_opt_self();

  v10 = [v9 currentLocale];
  sub_243BD08B8();

  v11 = sub_243BD08A8();
  v13 = v12;
  (*(v3 + 8))(v5, v18[0]);
  if (v13)
  {
    *&v19[0] = v11;
    *(&v19[0] + 1) = v13;
    sub_243BC7098();
    sub_243BD0F08();

    sub_243BC8994(v25);
  }

  sub_243BD0A38();

  sub_243BD0A48();
  *(v8 + 32) = sub_243BD0A78();
  *(v8 + 40) = v14;
  *(v8 + 48) = v15 & 1;
  *(v8 + 56) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA65F8, &qword_243BD1C90);
  sub_243BC894C(&qword_27EDA6600, &qword_27EDA65F8, &qword_243BD1C90, MEMORY[0x277CE11A0]);
  sub_243BD0C08();

  v19[2] = *&v22[16];
  v19[3] = *&v22[32];
  v19[4] = *&v22[48];
  v20 = *&v22[64];
  v19[0] = v21;
  v19[1] = *v22;
  return sub_243BC8724(v19, &qword_27EDA65F8, &qword_243BD1C90);
}

uint64_t sub_243BC5128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243BD0A18();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243BD08C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v70 = *(a1 + 16);
  LODWORD(v74) = *(a1 + 24);
  v12 = [objc_opt_self() currentLocale];
  sub_243BD08B8();

  v13 = sub_243BD08A8();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  if (v15)
  {
    v76 = v13;
    v77 = v15;
    sub_243BC7098();
    v10 = sub_243BD0F08();
    v11 = v16;
  }

  else
  {
  }

  v76 = v10;
  v77 = v11;
  v68 = sub_243BC7098();
  v17 = sub_243BD0BA8();
  v19 = v18;
  v21 = v20;
  v79 = *(a1 + 40);
  v22 = *(a1 + 32);
  v78 = v22;
  v69 = v79;
  if (v79 == 1)
  {
    if (v22)
    {
LABEL_6:
      v23 = &selRef_labelColor;
      goto LABEL_9;
    }
  }

  else
  {

    v24 = sub_243BD0E98();
    v25 = sub_243BD0AF8();
    sub_243BD08D8(v24, &dword_243BC0000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    v26 = v71;
    sub_243BD0A08();
    swift_getAtKeyPath();
    sub_243BC8724(&v78, &qword_27EDA6608, &qword_243BD1C98);
    (*(v72 + 8))(v26, v73);
    if (v76)
    {
      goto LABEL_6;
    }
  }

  v23 = &selRef_secondaryLabelColor;
LABEL_9:
  v27 = [objc_opt_self() *v23];
  sub_243BD0C68();
  v28 = sub_243BD0B88();
  v30 = v29;
  v75 = v31;
  v33 = v32;

  sub_243BC70FC(v17, v19, v21 & 1);

  v34 = 0;
  if (v74)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    if (v70 >= 3)
    {
      type metadata accessor for CACUILocaleUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      v40 = sub_243BD0898();
      v42 = v41;

      v76 = v40;
      v77 = v42;
      v43 = sub_243BD0BA8();
      v45 = v44;
      v47 = v46;
      sub_243BD0B68();
      v70 = sub_243BD0B98();
      v68 = v48;
      v65 = v49;
      v74 = v50;

      sub_243BC70FC(v43, v45, v47 & 1);

      v66 = v28;
      v67 = v33;
      v64 = v30;
      if (!v69)
      {

        v51 = sub_243BD0E98();
        v52 = sub_243BD0AF8();
        sub_243BD08D8(v51, &dword_243BC0000, v52, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

        v53 = v71;
        sub_243BD0A08();
        swift_getAtKeyPath();
        sub_243BC8724(&v78, &qword_27EDA6608, &qword_243BD1C98);
        (*(v72 + 8))(v53, v73);
      }

      v54 = [objc_opt_self() secondaryLabelColor];
      sub_243BD0C68();
      v55 = v65;
      v56 = v70;
      v57 = v68;
      v34 = sub_243BD0B88();
      v35 = v58;
      v60 = v59;
      v37 = v61;

      sub_243BC70FC(v56, v57, v55 & 1);

      v36 = v60 & 1;
      sub_243BC70EC(v34, v35, v36);

      v28 = v66;
      v33 = v67;
      v30 = v64;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  v62 = v75 & 1;
  sub_243BC70EC(v28, v30, v75 & 1);

  sub_243BC89E8(v34, v35, v36, v37);
  sub_243BC8A2C(v34, v35, v36, v37);
  LOBYTE(v76) = v62;
  *a2 = v28;
  *(a2 + 8) = v30;
  *(a2 + 16) = v62;
  *(a2 + 24) = v33;
  *(a2 + 32) = v34;
  *(a2 + 40) = v35;
  *(a2 + 48) = v36;
  *(a2 + 56) = v37;
  sub_243BC8A2C(v34, v35, v36, v37);
  sub_243BC70FC(v28, v30, v62);
}

uint64_t sub_243BC57F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243BD0A28();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64D8, &qword_243BD1AA8);
  return sub_243BC5848(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_243BC5848@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v124 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64E0, &qword_243BD1AB0);
  MEMORY[0x28223BE20](v116);
  v4 = &v101 - v3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64E8, &qword_243BD1AB8);
  MEMORY[0x28223BE20](v121);
  v117 = &v101 - v5;
  *(&v122 + 1) = sub_243BD0AC8();
  v6 = *(*(&v122 + 1) - 8);
  MEMORY[0x28223BE20](*(&v122 + 1));
  v108 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6360, &qword_243BD1810);
  v107 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v106 = &v101 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6368, &qword_243BD1818);
  v109 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v110 = &v101 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64F0, &qword_243BD1AC0);
  MEMORY[0x28223BE20](v125);
  v123 = &v101 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64F8, &qword_243BD1AC8);
  MEMORY[0x28223BE20](v119);
  v12 = &v101 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6500, &qword_243BD1AD0);
  MEMORY[0x28223BE20](v112);
  v113 = &v101 - v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6508, &qword_243BD1AD8);
  MEMORY[0x28223BE20](v120);
  v114 = &v101 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6510, &qword_243BD1AE0);
  MEMORY[0x28223BE20](v126);
  v16 = &v101 - v15;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6518, &qword_243BD1AE8);
  MEMORY[0x28223BE20](v111);
  v115 = &v101 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6520, &qword_243BD1AF0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v131 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v101 - v21;
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  KeyPath = swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  v127 = sub_243BD0B08();
  sub_243BD0948();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LOBYTE(v139) = v26;
  LOBYTE(v134) = 0;
  v147 = 0;
  v129 = v26;
  v130 = v23;
  v133 = v22;
  v132 = v24;
  if (v26 == 1)
  {
    v103 = v6;
    v35 = *(&v122 + 1);
    v36 = v122;
    v104 = v12;
    v105 = v25;
    if (v25 > 1)
    {
      if (v25 == 2)
      {

        v56 = v130;
        if (v130 == *(a1 + 8) && v24 == *(a1 + 16) || (sub_243BD0F98() & 1) != 0)
        {
          v57 = sub_243BD0C78();
          sub_243BD0B28();
          sub_243BD0B38();
          v58 = sub_243BD0B58();

          v59 = swift_getKeyPath();
          v60 = sub_243BD0B18();
          sub_243BD0948();
          LOBYTE(v139) = 0;
          v147 = 0;
          *&v134 = v57;
          *(&v134 + 1) = v59;
          *&v135 = v58;
          BYTE8(v135) = v60;
          *&v136 = v61;
          *(&v136 + 1) = v62;
          *&v137 = v63;
          *(&v137 + 1) = v64;
          *v138 = 0;
        }

        else
        {
          v147 = 1;
          v138[1] = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6528, &qword_243BD1B28);
        sub_243BC8080();
        sub_243BD0AA8();
        v22 = v133;
        v86 = v142;
        v87 = v123;
        *(v123 + 32) = v141;
        *(v87 + 48) = v86;
        *(v87 + 64) = v143;
        v88 = v140;
        *v87 = v139;
        *(v87 + 16) = v88;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
        sub_243BC81C4();
        sub_243BC8630();
        sub_243BD0AA8();
        goto LABEL_17;
      }

      v75 = v16;

      v76 = sub_243BD0C78();
      sub_243BD0B28();
      sub_243BD0B48();
      v77 = sub_243BD0B58();

      v78 = swift_getKeyPath();
      *&v139 = v76;
      *(&v139 + 1) = v78;
      *&v140 = v77;
      type metadata accessor for CACUILocaleUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v80 = [objc_opt_self() bundleForClass_];
      v81 = sub_243BD0898();
      v83 = v82;

      *&v134 = v81;
      *(&v134 + 1) = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6540, &unk_243BD1B30);
      sub_243BC810C();
      sub_243BC7098();
      v84 = v115;
      sub_243BD0BF8();

      sub_243BC86BC(v84, v113, &qword_27EDA6518, &qword_243BD1AE8);
      swift_storeEnumTagMultiPayload();
      sub_243BC82D4();
      v85 = v114;
      sub_243BD0AA8();
      sub_243BC86BC(v85, v104, &qword_27EDA6508, &qword_243BD1AD8);
      swift_storeEnumTagMultiPayload();
      sub_243BC8250();
      sub_243BC83D8();
      sub_243BD0AA8();
      sub_243BC8724(v85, &qword_27EDA6508, &qword_243BD1AD8);
      sub_243BC86BC(v75, v123, &qword_27EDA6510, &qword_243BD1AE0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
      sub_243BC81C4();
      sub_243BC8630();
      v22 = v133;
      v24 = v132;
      sub_243BD0AA8();
      sub_243BC8724(v75, &qword_27EDA6510, &qword_243BD1AE0);
      v48 = v84;
    }

    else
    {
      v102 = v16;
      if (v25)
      {

        v65 = v106;
        sub_243BD0978();
        v66 = v108;
        sub_243BD0AB8();
        v67 = sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810, MEMORY[0x277CDD7F0]);
        v68 = sub_243BC8390(&qword_27EDA6380, MEMORY[0x277CDE328], MEMORY[0x277CDE320]);
        v69 = v110;
        v70 = v36;
        v71 = v67;
        sub_243BD0BD8();
        v24 = v132;
        (*(v103 + 8))(v66, v35);
        (*(v107 + 8))(v65, v70);
        v72 = v109;
        (*(v109 + 16))(v4, v69, v118);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6590, &qword_243BD1B48);
        v139 = __PAIR128__(v35, v70);
        *&v140 = v71;
        *(&v140 + 1) = v68;
        swift_getOpaqueTypeConformance2();
        sub_243BC8524();
        v73 = v117;
        sub_243BD0AA8();
        sub_243BC86BC(v73, v104, &qword_27EDA64E8, &qword_243BD1AB8);
        swift_storeEnumTagMultiPayload();
        sub_243BC8250();
        sub_243BC83D8();
        v74 = v102;
        sub_243BD0AA8();
        sub_243BC8724(v73, &qword_27EDA64E8, &qword_243BD1AB8);
        sub_243BC86BC(v74, v123, &qword_27EDA6510, &qword_243BD1AE0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
        sub_243BC81C4();
        sub_243BC8630();
        v22 = v133;
        sub_243BD0AA8();
        sub_243BC8724(v74, &qword_27EDA6510, &qword_243BD1AE0);
        (*(v72 + 8))(v110, v118);
LABEL_14:
        v56 = v130;
LABEL_17:
        v25 = v105;
        goto LABEL_18;
      }

      v37 = sub_243BD0C78();
      sub_243BD0B28();
      sub_243BD0B48();
      v38 = sub_243BD0B58();

      v39 = swift_getKeyPath();
      *&v139 = v37;
      *(&v139 + 1) = v39;
      *&v140 = v38;
      type metadata accessor for CACUILocaleUtilities();
      v40 = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
      v42 = sub_243BD0898();
      v44 = v43;

      *&v134 = v42;
      *(&v134 + 1) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6540, &unk_243BD1B30);
      sub_243BC810C();
      v45 = v102;
      sub_243BC7098();
      v46 = v115;
      sub_243BD0BF8();

      sub_243BC86BC(v46, v113, &qword_27EDA6518, &qword_243BD1AE8);
      swift_storeEnumTagMultiPayload();
      sub_243BC82D4();
      v47 = v114;
      sub_243BD0AA8();
      sub_243BC86BC(v47, v104, &qword_27EDA6508, &qword_243BD1AD8);
      swift_storeEnumTagMultiPayload();
      sub_243BC8250();
      sub_243BC83D8();
      sub_243BD0AA8();
      sub_243BC8724(v47, &qword_27EDA6508, &qword_243BD1AD8);
      sub_243BC86BC(v45, v123, &qword_27EDA6510, &qword_243BD1AE0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
      sub_243BC81C4();
      sub_243BC8630();
      v22 = v133;
      sub_243BD0AA8();
      sub_243BC8724(v45, &qword_27EDA6510, &qword_243BD1AE0);
      v48 = v46;
    }

    sub_243BC8724(v48, &qword_27EDA6518, &qword_243BD1AE8);
    goto LABEL_14;
  }

  v49 = sub_243BD0D38();
  v50 = sub_243BD0AD8();
  sub_243BD0D48();
  *v4 = v25;
  *(v4 + 1) = v23;
  *(v4 + 2) = v24;
  *(v4 + 3) = v49;
  *(v4 + 8) = v50;
  *(v4 + 5) = v51;
  *(v4 + 6) = v52;
  v4[56] = 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6590, &qword_243BD1B48);
  v53 = sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810, MEMORY[0x277CDD7F0]);
  v54 = sub_243BC8390(&qword_27EDA6380, MEMORY[0x277CDE328], MEMORY[0x277CDE320]);
  v139 = v122;
  *&v140 = v53;
  *(&v140 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  sub_243BC8524();
  v55 = v117;
  sub_243BD0AA8();
  sub_243BC86BC(v55, v12, &qword_27EDA64E8, &qword_243BD1AB8);
  swift_storeEnumTagMultiPayload();
  sub_243BC8250();
  sub_243BC83D8();
  sub_243BD0AA8();
  sub_243BC8724(v55, &qword_27EDA64E8, &qword_243BD1AB8);
  sub_243BC86BC(v16, v123, &qword_27EDA6510, &qword_243BD1AE0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6558, &qword_243BD1B40);
  sub_243BC81C4();
  sub_243BC8630();
  sub_243BD0AA8();
  sub_243BC8724(v16, &qword_27EDA6510, &qword_243BD1AE0);
  v56 = v130;
LABEL_18:
  v89 = v131;
  sub_243BC86BC(v22, v131, &qword_27EDA6520, &qword_243BD1AF0);
  *&v134 = v56;
  *(&v134 + 1) = v24;
  *&v135 = v25;
  v90 = v129;
  BYTE8(v135) = v129;
  *(&v135 + 9) = v150[0];
  HIDWORD(v135) = *(v150 + 3);
  v91 = KeyPath;
  *&v136 = KeyPath;
  BYTE8(v136) = 0;
  HIDWORD(v136) = *&v149[3];
  *(&v136 + 9) = *v149;
  v92 = v127;
  LOBYTE(v137) = v127;
  DWORD1(v137) = *&v148[3];
  *(&v137 + 1) = *v148;
  *(&v137 + 1) = v28;
  *v138 = v30;
  *&v138[8] = v32;
  *&v138[16] = v34;
  v138[24] = 0;
  v93 = v135;
  v94 = v56;
  v95 = v124;
  *v124 = v134;
  v95[1] = v93;
  v96 = v136;
  v97 = v137;
  v98 = *v138;
  *(v95 + 73) = *&v138[9];
  v95[3] = v97;
  v95[4] = v98;
  v95[2] = v96;
  *(v95 + 12) = 0;
  *(v95 + 104) = 1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA65B8, &qword_243BD1B58);
  sub_243BC86BC(v89, v95 + *(v99 + 64), &qword_27EDA6520, &qword_243BD1AF0);
  sub_243BC86BC(&v134, &v139, &qword_27EDA65C0, &qword_243BD1B60);
  sub_243BC8724(v133, &qword_27EDA6520, &qword_243BD1AF0);
  sub_243BC8724(v89, &qword_27EDA6520, &qword_243BD1AF0);
  *&v139 = v94;
  *(&v139 + 1) = v132;
  *&v140 = v25;
  BYTE8(v140) = v90;
  *(&v140 + 9) = v150[0];
  HIDWORD(v140) = *(v150 + 3);
  *&v141 = v91;
  BYTE8(v141) = 0;
  *(&v141 + 9) = *v149;
  HIDWORD(v141) = *&v149[3];
  LOBYTE(v142) = v92;
  DWORD1(v142) = *&v148[3];
  *(&v142 + 1) = *v148;
  *(&v142 + 1) = v28;
  v143 = v30;
  v144 = v32;
  v145 = v34;
  v146 = 0;
  return sub_243BC8724(&v139, &qword_27EDA65C0, &qword_243BD1B60);
}

uint64_t sub_243BC6DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  sub_243BC794C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64C0, &qword_243BD1A98);
  sub_243BC894C(&qword_27EDA64C8, &qword_27EDA64C0, &qword_243BD1A98, MEMORY[0x277CE1140]);
  sub_243BD0CE8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA64D0, &qword_243BD1AA0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_243BC6F28@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  *a2 = v4;
  return result;
}

uint64_t sub_243BC6FA8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243BD0928();
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

unint64_t sub_243BC7098()
{
  result = qword_27EDA6370;
  if (!qword_27EDA6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6370);
  }

  return result;
}

uint64_t sub_243BC70EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243BC70FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_243BC710C()
{
  result = qword_27EDA63A0;
  if (!qword_27EDA63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA63A0);
  }

  return result;
}

uint64_t sub_243BC7160@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243BD09E8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_243BC7208()
{
  result = qword_27EDA63F0;
  if (!qword_27EDA63F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA63E8, &qword_243BD1878);
    sub_243BC728C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA63F0);
  }

  return result;
}

unint64_t sub_243BC728C()
{
  result = qword_27EDA63F8;
  if (!qword_27EDA63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA63F8);
  }

  return result;
}

unint64_t sub_243BC72E0()
{
  result = qword_27EDA6400;
  if (!qword_27EDA6400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA63D0, &qword_243BD1860);
    sub_243BC7720(&qword_27EDA6408, &qword_27EDA63D8, &qword_243BD1868, sub_243BC7208);
    sub_243BC7398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6400);
  }

  return result;
}

unint64_t sub_243BC7398()
{
  result = qword_27EDA6410;
  if (!qword_27EDA6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6410);
  }

  return result;
}

uint64_t sub_243BC73EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA63E0, &qword_243BD1870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243BC7464()
{
  result = qword_27EDA6420;
  if (!qword_27EDA6420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6418, &qword_243BD1880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6428, &qword_243BD1888);
    sub_243BC7524();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6420);
  }

  return result;
}

unint64_t sub_243BC7524()
{
  result = qword_27EDA6430;
  if (!qword_27EDA6430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6428, &qword_243BD1888);
    sub_243BC75B0();
    sub_243BC728C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6430);
  }

  return result;
}

unint64_t sub_243BC75B0()
{
  result = qword_27EDA6438;
  if (!qword_27EDA6438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6440, &qword_243BD1890);
    sub_243BC728C();
    sub_243BC894C(&qword_27EDA6448, &qword_27EDA6450, &qword_243BD1898, MEMORY[0x277CE08A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6438);
  }

  return result;
}

unint64_t sub_243BC7668()
{
  result = qword_27EDA6458;
  if (!qword_27EDA6458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA63B0, &qword_243BD1840);
    sub_243BC7720(&qword_27EDA6460, &qword_27EDA63B8, &qword_243BD1848, sub_243BC7464);
    sub_243BC7398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6458);
  }

  return result;
}

uint64_t sub_243BC7720(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243BC77B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_243BC7820()
{
  result = qword_27EDA6488;
  if (!qword_27EDA6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6488);
  }

  return result;
}

uint64_t sub_243BC787C()
{

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

unint64_t sub_243BC79BC()
{
  result = qword_27EDA6490;
  if (!qword_27EDA6490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA6490);
  }

  return result;
}

uint64_t sub_243BC7A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243BD09C8();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_243BC7AF0()
{

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

__n128 sub_243BC7B88@<Q0>(char a2@<W1>, uint64_t a3@<X8>)
{
  sub_243BD0CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6498, &qword_243BD1950);
  sub_243BD0CA8();
  sub_243BD0CA8();
  sub_243BD0CA8();
  type metadata accessor for CACUILanguageViewModel(0);
  sub_243BC8390(&qword_27EDA64A0, type metadata accessor for CACUILanguageViewModel, &unk_243BD21B0);
  *a3 = sub_243BD0998();
  *(a3 + 8) = v5;
  *(a3 + 16) = a2;
  *(a3 + 24) = v7.n128_u8[0];
  *(a3 + 32) = v7.n128_u64[1];
  result = v7;
  *(a3 + 40) = v7;
  *(a3 + 56) = v8;
  *(a3 + 64) = v7.n128_u8[0];
  *(a3 + 72) = v7.n128_u64[1];
  *(a3 + 80) = v7;
  *(a3 + 96) = v8;
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_243BC7D28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243BC7D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CACUILanguageView.ContextView(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CACUILanguageView.ContextView(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_243BC7F88()
{
  result = qword_27EDA64B8;
  if (!qword_27EDA64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA64B8);
  }

  return result;
}

uint64_t sub_243BC7FF8()
{

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_243BC8048()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_243BC8080()
{
  result = qword_27EDA6530;
  if (!qword_27EDA6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6528, &qword_243BD1B28);
    sub_243BC810C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6530);
  }

  return result;
}

unint64_t sub_243BC810C()
{
  result = qword_27EDA6538;
  if (!qword_27EDA6538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6540, &unk_243BD1B30);
    sub_243BC894C(&qword_27EDA6548, &qword_27EDA6550, &qword_243BD2080, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6538);
  }

  return result;
}

unint64_t sub_243BC81C4()
{
  result = qword_27EDA6560;
  if (!qword_27EDA6560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6510, &qword_243BD1AE0);
    sub_243BC8250();
    sub_243BC83D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6560);
  }

  return result;
}

unint64_t sub_243BC8250()
{
  result = qword_27EDA6568;
  if (!qword_27EDA6568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6508, &qword_243BD1AD8);
    sub_243BC82D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6568);
  }

  return result;
}

unint64_t sub_243BC82D4()
{
  result = qword_27EDA6570;
  if (!qword_27EDA6570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6518, &qword_243BD1AE8);
    sub_243BC810C();
    sub_243BC8390(&qword_27EDA6578, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6570);
  }

  return result;
}

uint64_t sub_243BC8390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243BC83D8()
{
  result = qword_27EDA6580;
  if (!qword_27EDA6580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA64E8, &qword_243BD1AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6360, &qword_243BD1810);
    sub_243BD0AC8();
    sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810, MEMORY[0x277CDD7F0]);
    sub_243BC8390(&qword_27EDA6380, MEMORY[0x277CDE328], MEMORY[0x277CDE320]);
    swift_getOpaqueTypeConformance2();
    sub_243BC8524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6580);
  }

  return result;
}

unint64_t sub_243BC8524()
{
  result = qword_27EDA6588;
  if (!qword_27EDA6588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6590, &qword_243BD1B48);
    sub_243BC85DC();
    sub_243BC894C(&qword_27EDA65A0, &qword_27EDA65A8, &qword_243BD1B50, MEMORY[0x277CE05B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6588);
  }

  return result;
}

unint64_t sub_243BC85DC()
{
  result = qword_27EDA6598;
  if (!qword_27EDA6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6598);
  }

  return result;
}

unint64_t sub_243BC8630()
{
  result = qword_27EDA65B0;
  if (!qword_27EDA65B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6558, &qword_243BD1B40);
    sub_243BC8080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA65B0);
  }

  return result;
}

uint64_t sub_243BC86BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243BC8724(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243BC87A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_243BC87EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243BC884C()
{
  result = qword_27EDA65C8;
  if (!qword_27EDA65C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA64D0, &qword_243BD1AA0);
    sub_243BC894C(&qword_27EDA65D0, &qword_27EDA65D8, &qword_243BD1C28, MEMORY[0x277CDF030]);
    sub_243BC894C(&qword_27EDA65E0, &qword_27EDA65E8, qword_243BD1C30, MEMORY[0x277CE0478]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA65C8);
  }

  return result;
}

uint64_t sub_243BC894C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_243BC89E8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243BC70EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_243BC8A2C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243BC70FC(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_243BC8A74()
{
  result = qword_27EDA6610;
  if (!qword_27EDA6610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6618, &unk_243BD1CA0);
    sub_243BC894C(&qword_27EDA6600, &qword_27EDA65F8, &qword_243BD1C90, MEMORY[0x277CE11A0]);
    sub_243BC8390(&qword_27EDA6578, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6610);
  }

  return result;
}

uint64_t sub_243BC8B98()
{
  sub_243BC79BC();
  result = sub_243BD0EF8();
  qword_27EDA6F70 = result;
  return result;
}

uint64_t sub_243BC8BFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6628, &unk_243BD1CC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_243BD1CB0;
  if (qword_27EDA62F0 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  *(v0 + 32) = qword_27EDA6F70;
  qword_27EDA6620 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_243BC8DB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_243BC8E08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id CACLanguageViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CACLanguageViewBridge.init()()
{
  v1 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model;
  type metadata accessor for CACUILanguageViewModel(0);
  swift_allocObject();
  *&v0[v1] = sub_243BCDE2C(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CACLanguageViewBridge();
  v2 = objc_msgSendSuper2(&v5, sel_init);
  *(*&v2[OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_model] + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate) = v2;
  v3 = v2;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_243BC8FE0()
{

  sub_243BC7B88(0, v2);
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6640, &qword_243BD1CD0));
  return sub_243BD0A98();
}

uint64_t sub_243BC911C(uint64_t a1)
{

  sub_243BC7B88(0, v13);
  if (a1)
  {
    v2 = *(a1 + 16);

    if (v2)
    {
      sub_243BC7098();
      v3 = a1 + 40;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v5 = sub_243BD0F18();
        v7 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_243BCA5F0(0, *(v4 + 2) + 1, 1, v4);
        }

        v9 = *(v4 + 2);
        v8 = *(v4 + 3);
        if (v9 >= v8 >> 1)
        {
          v4 = sub_243BCA5F0((v8 > 1), v9 + 1, 1, v4);
        }

        *(v4 + 2) = v9 + 1;
        v10 = &v4[32 * v9];
        *(v10 + 4) = v5;
        *(v10 + 5) = v7;
        *(v10 + 6) = 0;
        v10[56] = 1;
        v3 += 16;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_243BCF364(v4);
  }

  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6640, &qword_243BD1CD0));
  return sub_243BD0A98();
}

uint64_t sub_243BC9378(uint64_t a1, uint64_t a2)
{
  sub_243BC7098();

  sub_243BD0F18();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_243BD0928();
}

void sub_243BC9460(void *a1)
{
  v2 = sub_243BCA768(a1);
  if (v2)
  {
    v3 = v2;

    sub_243BCF364(v3);
  }

  else
  {
    v4 = sub_243BD0EA8();
    sub_243BD0F48();

    v17[0] = 0xD000000000000026;
    v17[1] = 0x8000000243BD42D0;
    v5 = [a1 description];
    v6 = sub_243BD0DD8();
    v8 = v7;

    MEMORY[0x245D4BBA0](v6, v8);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v9 = sub_243BD0EE8();
    v10 = v9;
    if (qword_27EDA62F8 != -1)
    {
      v9 = swift_once();
    }

    v17[0] = v10;
    MEMORY[0x28223BE20](v9);
    v16[2] = v17;
    if (sub_243BCA3C4(sub_243BCACA0, v16, v11))
    {
      v12 = sub_243BD0DE8();
      v14 = v13;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_243BD1690;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_243BC710C();
      *(v15 + 32) = v12;
      *(v15 + 40) = v14;
      sub_243BD08D8(v4, &dword_243BC0000, v10, "%@", 2, 2, v15);
    }

    else
    {
    }
  }
}

uint64_t sub_243BC9750(void *a1)
{
  result = sub_243BCB2B0(a1);
  if (v2)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6648, &qword_243BD2240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243BD1690;
    *(inited + 32) = v5;
    *(inited + 40) = v6;
    *(inited + 48) = v7;
    *(inited + 56) = v8 & 1;

    sub_243BCF364(inited);

    swift_setDeallocating();
    return sub_243BC8994(inited + 32);
  }

  return result;
}

id CACLanguageViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CACLanguageViewBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CACLanguageViewBridge.downloadLanguage(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = v1;
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  v5 = sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v6 = qword_27EDA6F70;
  sub_243BD0F48();

  v17[0] = 0xD000000000000015;
  v17[1] = 0x8000000243BD4300;
  v7 = MEMORY[0x245D4BBA0](countAndFlagsBits, object);
  if (qword_27EDA62F8 != -1)
  {
    v7 = swift_once();
  }

  v17[0] = v6;
  MEMORY[0x28223BE20](v7);
  v16[2] = v17;
  if (sub_243BCA3C4(sub_243BCC0F0, v16, v8))
  {
    v9 = sub_243BD0DE8();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_243BD1690;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_243BC710C();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_243BD08D8(v5, &dword_243BC0000, v6, "%@", 2, 2, v12, v17[0]);
  }

  v13 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (v14)
  {
    swift_unknownObjectRetain();
    v15 = sub_243BD0DC8();
    [v14 downloadLanguageWithIdentifier_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CACLanguageViewBridge.cancelDownload(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = v1;
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  v5 = sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v6 = qword_27EDA6F70;
  sub_243BD0F48();

  v17[0] = 0xD000000000000013;
  v17[1] = 0x8000000243BD4320;
  v7 = MEMORY[0x245D4BBA0](countAndFlagsBits, object);
  if (qword_27EDA62F8 != -1)
  {
    v7 = swift_once();
  }

  v17[0] = v6;
  MEMORY[0x28223BE20](v7);
  v16[2] = v17;
  if (sub_243BCA3C4(sub_243BCC0F0, v16, v8))
  {
    v9 = sub_243BD0DE8();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_243BD1690;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_243BC710C();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_243BD08D8(v5, &dword_243BC0000, v6, "%@", 2, 2, v12, v17[0]);
  }

  v13 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (v14)
  {
    swift_unknownObjectRetain();
    v15 = sub_243BD0DC8();
    [v14 cancelDownloadWithIdentifier_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CACLanguageViewBridge.selectedLanguage(withIdentifier:)(Swift::String withIdentifier)
{
  v2 = v1;
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  v5 = sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v6 = qword_27EDA6F70;
  sub_243BD0F48();

  v17[0] = 0xD000000000000015;
  v17[1] = 0x8000000243BD4340;
  v7 = MEMORY[0x245D4BBA0](countAndFlagsBits, object);
  if (qword_27EDA62F8 != -1)
  {
    v7 = swift_once();
  }

  v17[0] = v6;
  MEMORY[0x28223BE20](v7);
  v16[2] = v17;
  if (sub_243BCA3C4(sub_243BCC0F0, v16, v8))
  {
    v9 = sub_243BD0DE8();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_243BD1690;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_243BC710C();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_243BD08D8(v5, &dword_243BC0000, v6, "%@", 2, 2, v12, v17[0]);
  }

  v13 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (v14)
  {
    swift_unknownObjectRetain();
    v15 = sub_243BD0DC8();
    [v14 selectedLanguageWithIdentifier_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_243BCA11C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_243BD0DD8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_243BCA188(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_243BCF964(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_243BCC090(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_243BCF964((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_243BCA2C0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_243BCA340(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243BD0928();
}

uint64_t sub_243BCA3C4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x245D4BCD0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_243BD0F78();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

char *sub_243BCA4EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6660, &qword_243BD1D88);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_243BCA5F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6648, &qword_243BD2240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243BCA768(void *a1)
{
  v40 = a1;
  v1 = [a1 allKeys];
  v2 = sub_243BD0E48();

  v3 = sub_243BCA188(v2);

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v36 = v3;
  v37 = "No status string for ";
  v39 = 0x8000000243BD4540;
  v5 = (v3 + 40);
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D837D0];
  v38 = xmmword_243BD1690;
  do
  {
    v8 = *(v5 - 1);
    v9 = *v5;

    v10 = sub_243BD0DC8();
    v11 = [v40 objectForKey_];

    if (v11)
    {
      sub_243BD0F28();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45[0] = v43;
    v45[1] = v44;
    if (*(&v44 + 1))
    {
      if (swift_dynamicCast())
      {
        *&v45[0] = v8;
        *(&v45[0] + 1) = v9;
        *&v43 = 95;
        *(&v43 + 1) = 0xE100000000000000;
        v41 = 45;
        v42 = 0xE100000000000000;
        v34 = sub_243BC7098();
        v35 = v34;
        v33[0] = v7;
        v33[1] = v34;
        v12 = sub_243BD0F18();
        v14 = v13;

        if (sub_243BD0E38())
        {

          v15 = 2;
        }

        else if (sub_243BD0E38())
        {

          v15 = 1;
        }

        else
        {
          v28 = sub_243BD0E38();

          v15 = v28 & 1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_243BCA5F0(0, *(v6 + 2) + 1, 1, v6);
        }

        v30 = *(v6 + 2);
        v29 = *(v6 + 3);
        if (v30 >= v29 >> 1)
        {
          v6 = sub_243BCA5F0((v29 > 1), v30 + 1, 1, v6);
        }

        *(v6 + 2) = v30 + 1;
        v31 = &v6[32 * v30];
        *(v31 + 4) = v12;
        *(v31 + 5) = v14;
        *(v31 + 6) = v15;
        v31[56] = 1;
        goto LABEL_5;
      }
    }

    else
    {
      sub_243BCBFE0(v45);
    }

    v16 = sub_243BD0E88();
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    sub_243BD0F48();

    *&v45[0] = 0xD000000000000015;
    *(&v45[0] + 1) = v39;
    MEMORY[0x245D4BBA0](v8, v9);

    MEMORY[0x245D4BBA0](8238, 0xE200000000000000);
    v17 = [v40 description];
    v18 = sub_243BD0DD8();
    v20 = v19;

    MEMORY[0x245D4BBA0](v18, v20);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v21 = sub_243BD0EE8();
    v22 = v21;
    if (qword_27EDA62F8 != -1)
    {
      v21 = swift_once();
    }

    *&v45[0] = v22;
    MEMORY[0x28223BE20](v21);
    v34 = v45;
    if (sub_243BCA3C4(sub_243BCC0F0, v33, v23))
    {
      v24 = sub_243BD0DE8();
      v26 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v27 = swift_allocObject();
      *(v27 + 16) = v38;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = sub_243BC710C();
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      sub_243BD08D8(v16, &dword_243BC0000, v22, "%@", 2, 2, v27);
    }

    else
    {
    }

LABEL_5:
    v5 += 2;
    --v4;
    v7 = MEMORY[0x277D837D0];
  }

  while (v4);

  return v6;
}

unint64_t sub_243BCACBC(void *a1)
{
  v2 = sub_243BD0DC8();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    goto LABEL_15;
  }

  sub_243BCC048(0, &qword_27EDA6658, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v12 = sub_243BD0E88();
    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v13 = sub_243BD0EE8();
    v14 = v13;
    if (qword_27EDA62F8 != -1)
    {
      v13 = swift_once();
    }

    *&v34 = v14;
    MEMORY[0x28223BE20](v13);
    v30 = &v34;
    if ((sub_243BCA3C4(sub_243BCC0F0, v29, v15) & 1) == 0)
    {
      goto LABEL_21;
    }

    v16 = sub_243BD0DE8();
    v18 = v17;
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_243BD1690;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_243BC710C();
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    sub_243BD08D8(v12, &dword_243BC0000, v14, "%@", 2, 2, v19);

LABEL_21:

    return 0;
  }

  [v31 floatValue];
  v5 = v4;

  v6 = sub_243BD0DC8();
  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
LABEL_15:
    sub_243BCBFE0(&v34);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  [v31 floatValue];
  v9 = v8;

  if (v5 <= 0.0 || v9 < 0.0)
  {
    goto LABEL_16;
  }

  v10 = sub_243BD0DC8();
  v11 = [a1 objectForKey_];

  if (v11)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    sub_243BCBFE0(&v34);
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0 || ([v31 floatValue], v22 = v21, v31, v22 < 0.0))
  {
LABEL_29:
    v12 = sub_243BD0E88();
    *&v34 = 0;
    *(&v34 + 1) = 0xE000000000000000;
    sub_243BD0F48();

    strcpy(&v32, "Issue in time ");
    HIBYTE(v32) = -18;
    v23 = sub_243BD0DC8();
    v24 = [a1 objectForKey_];

    if (v24)
    {
      sub_243BD0F28();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6650, &qword_243BD1D80);
    v25 = sub_243BD0E08();
    MEMORY[0x245D4BBA0](v25);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v26 = sub_243BD0EE8();
    v14 = v26;
    if (qword_27EDA62F8 != -1)
    {
      v26 = swift_once();
    }

    *&v34 = v14;
    MEMORY[0x28223BE20](v26);
    v30 = &v34;
    if ((sub_243BCA3C4(sub_243BCC0F0, v29, v27) & 1) == 0)
    {

      return 0;
    }

    v16 = sub_243BD0DE8();
    v18 = v28;

    goto LABEL_20;
  }

  return COERCE_UNSIGNED_INT(v9 / v5) | (LODWORD(v22) << 32);
}

uint64_t sub_243BCB2B0(void *a1)
{
  *&v44 = 0x65676175676E614CLL;
  *(&v44 + 1) = 0xE800000000000000;
  v2 = MEMORY[0x277D837D0];
  v3 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {
    sub_243BCBFE0(&v46);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v6 = sub_243BD0E88();
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_243BD0F48();
    MEMORY[0x245D4BBA0](0xD000000000000033, 0x8000000243BD4450);
    v7 = [a1 description];
    v8 = sub_243BD0DD8();
    v10 = v9;

    MEMORY[0x245D4BBA0](v8, v10);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v11 = sub_243BD0EE8();
    v12 = v11;
    if (qword_27EDA62F8 != -1)
    {
      v11 = swift_once();
    }

    *&v46 = v12;
    MEMORY[0x28223BE20](v11);
    v42 = &v46;
    goto LABEL_12;
  }

  *&v44 = 0x6573616850;
  *(&v44 + 1) = 0xE500000000000000;
  v4 = MEMORY[0x277D837D0];
  v5 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_243BD0F28();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {

    sub_243BCBFE0(&v46);
LABEL_26:
    v18 = sub_243BD0E88();
    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v19 = sub_243BD0EE8();
    v20 = v19;
    if (qword_27EDA62F8 != -1)
    {
      v19 = swift_once();
    }

    *&v46 = v20;
    MEMORY[0x28223BE20](v19);
    v42 = &v46;
    if (sub_243BCA3C4(sub_243BCC0F0, v41, v21))
    {
      v22 = sub_243BD0DE8();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_243BD1690;
      *(v25 + 56) = v4;
      *(v25 + 64) = sub_243BC710C();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;
      sub_243BD08D8(v18, &dword_243BC0000, v20, "%@", 2, 2, v25);
    }

    return 0;
  }

  v2 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_26;
  }

  if (v43 == __PAIR128__(0xE400000000000000, 1701602377) || (sub_243BD0F98() & 1) != 0 || v43 == __PAIR128__(0xE700000000000000, 0x64656C6C617453) || (sub_243BD0F98() & 1) != 0)
  {

    return 0;
  }

  if (v43 == __PAIR128__(0xE900000000000064, 0x656C6C65636E6143) || (sub_243BD0F98() & 1) != 0 || v43 == __PAIR128__(0xEA00000000006465, 0x64616F6C6E776F44) || (sub_243BD0F98() & 1) != 0)
  {
    goto LABEL_34;
  }

  if (v43 == __PAIR128__(0xEB00000000676E69, 0x64616F6C6E776F44) || (sub_243BD0F98() & 1) != 0)
  {

    sub_243BCACBC(a1);
    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }

    v6 = sub_243BD0E88();
    sub_243BD0F48();

    *&v46 = 0xD00000000000002ALL;
    *(&v46 + 1) = 0x8000000243BD44F0;
    v29 = [a1 description];
    v30 = sub_243BD0DD8();
    v32 = v31;

    MEMORY[0x245D4BBA0](v30, v32);

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v33 = sub_243BD0EE8();
    v12 = v33;
    if (qword_27EDA62F8 != -1)
    {
      v33 = swift_once();
    }

    *&v46 = v12;
    MEMORY[0x28223BE20](v33);
    v42 = &v46;
LABEL_12:
    if (sub_243BCA3C4(sub_243BCC0F0, v41, v13))
    {
      v14 = sub_243BD0DE8();
      v16 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_243BD1690;
      *(v17 + 56) = v2;
      *(v17 + 64) = sub_243BC710C();
      *(v17 + 32) = v14;
      *(v17 + 40) = v16;
      sub_243BD08D8(v6, &dword_243BC0000, v12, "%@", 2, 2, v17);
LABEL_14:

      return 0;
    }

    goto LABEL_15;
  }

  if (v43 != __PAIR128__(0xEE0064656C696146, 0x64616F6C6E776F44) && (sub_243BD0F98() & 1) == 0)
  {

    v34 = sub_243BD0E98();
    sub_243BD0F48();

    *&v46 = 0xD000000000000024;
    *(&v46 + 1) = 0x8000000243BD44C0;
    MEMORY[0x245D4BBA0](v43, *(&v43 + 1));

    sub_243BCC048(0, &qword_27EDA6490, 0x277D86200);
    v35 = sub_243BD0EE8();
    v12 = v35;
    if (qword_27EDA62F8 != -1)
    {
      v35 = swift_once();
    }

    *&v46 = v12;
    MEMORY[0x28223BE20](v35);
    v42 = &v46;
    if (sub_243BCA3C4(sub_243BCC0F0, v41, v36))
    {
      v37 = sub_243BD0DE8();
      v39 = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_243BD1690;
      *(v40 + 56) = v2;
      *(v40 + 64) = sub_243BC710C();
      *(v40 + 32) = v37;
      *(v40 + 40) = v39;
      sub_243BD08D8(v34, &dword_243BC0000, v12, "%@", 2, 2, v40);
      goto LABEL_14;
    }

LABEL_15:

    return 0;
  }

LABEL_34:

LABEL_35:
  v46 = v43;
  *&v44 = 95;
  *(&v44 + 1) = 0xE100000000000000;
  *&v43 = 45;
  *(&v43 + 1) = 0xE100000000000000;
  v41[0] = v2;
  v41[1] = sub_243BC7098();
  v27 = sub_243BD0F18();

  return v27;
}

uint64_t sub_243BCBD74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19CommandAndControlUI21CACLanguageViewBridge_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_243BCBFE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6650, &qword_243BD1D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243BCC048(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243BCC090(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_243BCC154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_243BCC19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243BCC24C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }
    }

    else
    {
      v3 = a2 != 0;
    }

    return MEMORY[0x245D4BD40](v3);
  }

  else
  {
    MEMORY[0x245D4BD40](2);
    sub_243BD0FD8();
    return sub_243BD0FD8();
  }
}

uint64_t sub_243BCC2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_243BD0E18();
  if (a5)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v7 = 3;
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = a4 != 0;
    }

    return MEMORY[0x245D4BD40](v7);
  }

  else
  {
    MEMORY[0x245D4BD40](2);
    sub_243BD0FD8();
    return sub_243BD0FD8();
  }
}

uint64_t sub_243BCC3B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_243BD0FB8();
  sub_243BCC1FC(v1, v2);
  return sub_243BD0FE8();
}

uint64_t sub_243BCC414(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_243BD0FB8();
  sub_243BCC1FC(v2, v3);
  return sub_243BD0FE8();
}

BOOL sub_243BCC464(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v3 == 1)
        {
          v9 = *(a2 + 8);
        }

        else
        {
          v9 = 0;
        }

        if (v9)
        {
          return 1;
        }
      }

      else
      {
        if (v3)
        {
          LOBYTE(v4) = 0;
        }

        else
        {
          v4 = *(a2 + 8);
        }

        if (v4)
        {
          return 1;
        }
      }

      return 0;
    }

    if (v2 == 2)
    {
      if (v3 == 2)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        v6 = 0;
      }

      return (v6 & 1) != 0;
    }

    if (v3 > 2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 0;
    }

    return v10 == 1;
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    return *(&v2 + 1) == *(&v3 + 1) && *&v2 == COERCE_FLOAT(*a2);
  }
}

uint64_t sub_243BCC518()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_243BD0FB8();
  sub_243BCC24C(v4, v1, v2);
  return sub_243BD0FE8();
}

uint64_t sub_243BCC574(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_243BD0FB8();
  sub_243BCC24C(v5, v2, v3);
  return sub_243BD0FE8();
}

BOOL sub_243BCC5C0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_243BD0F98(), result = 0, (v7 & 1) != 0))
  {
    if (!v3)
    {
      if (v5)
      {
        return 0;
      }

      return *&v2 == *&v4 && *(&v2 + 1) == *(&v4 + 1);
    }

    if (v2 > 1)
    {
      if (v2 != 2)
      {
        if (v4 > 2)
        {
          v12 = v5;
        }

        else
        {
          v12 = 0;
        }

        return v12 == 1;
      }

      v9 = v4 == 2;
    }

    else if (v2)
    {
      v9 = v4 == 1;
    }

    else
    {
      v9 = v4 == 0;
    }

    if (v9)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1) != 0;
  }

  return result;
}

uint64_t sub_243BCC6A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_243BD0FB8();
  sub_243BCC2E8(v6, v1, v2, v3, v4);
  return sub_243BD0FE8();
}

uint64_t sub_243BCC714(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_243BD0FB8();
  sub_243BCC2E8(v7, v2, v3, v4, v5);
  return sub_243BD0FE8();
}

uint64_t sub_243BCC774@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_243BCC784()
{
  result = qword_27EDA6668;
  if (!qword_27EDA6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6668);
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CACUILanguageData.InstallationStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CACUILanguageData.InstallationStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_243BCC838(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243BCC854(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_243BCC888()
{
  result = qword_27EDA6670;
  if (!qword_27EDA6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CACUILanguageData.InstallationStatus.DownloadProgress(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CACUILanguageData.InstallationStatus.DownloadProgress(uint64_t result, int a2, int a3)
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

unint64_t sub_243BCC944()
{
  result = qword_27EDA6678;
  if (!qword_27EDA6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6678);
  }

  return result;
}

uint64_t sub_243BCC9C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243BD0C88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  [v7 scaledValueForValue_];

  sub_243BD0958();
  v8 = v80;
  v47 = v81;
  v9 = v82;
  v45 = v83;
  v10 = v84;
  v11 = [objc_opt_self() secondarySystemFillColor];
  v46 = sub_243BD0C68();
  KeyPath = swift_getKeyPath();
  v12 = COERCE_DOUBLE(sub_243BD0AE8());
  if (v13)
  {
    v12 = 0.0;
  }

  v14 = fmax(v12, 0.1);
  v15 = [v6 0x278DE602ELL];
  [v15 scaledValueForValue_];

  sub_243BD0958();
  v42 = sub_243BD0D28();
  v41 = sub_243BD0AE8();
  HIDWORD(v40) = v16 & 1;
  v79 = v16 & 1;
  sub_243BD0D48();
  v18 = v17;
  v20 = v19;
  sub_243BD0C78();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE8], v2);
  v43 = sub_243BD0C98();

  (*(v3 + 8))(v5, v2);
  v21 = [v6 defaultMetrics];
  [v21 scaledValueForValue_];

  v22 = [v6 defaultMetrics];
  [v22 scaledValueForValue_];

  sub_243BD0D18();
  sub_243BD0988();
  v23 = v85;
  v24 = v86;
  v25 = v87;
  v26 = v88;
  *&v58 = v8;
  *(&v58 + 1) = v47;
  *&v59 = v9;
  v28 = KeyPath;
  v27 = v45;
  *(&v59 + 1) = v45;
  *&v60 = v10;
  *(&v60 + 1) = KeyPath;
  v61 = v46;
  *&v53[0] = v46;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  *&v62[0] = 0;
  *(v62 + 1) = v14;
  v62[1] = v55;
  v62[2] = v56;
  v29 = v41;
  v30 = v42;
  *&v63 = v57;
  *(&v63 + 1) = v42;
  *&v64 = v41;
  v31 = BYTE4(v40);
  BYTE8(v64) = BYTE4(v40);
  HIDWORD(v64) = *&v54[3];
  *(&v64 + 9) = *v54;
  *&v65 = 0xBFF921FB54442D18;
  *(&v65 + 1) = v18;
  v66 = v20;
  *(&v53[2] + 8) = v56;
  *(&v53[1] + 8) = v55;
  *(v53 + 8) = v62[0];
  *(&v53[6] + 1) = v20;
  *(&v53[5] + 8) = v65;
  *(&v53[4] + 8) = v64;
  *(&v53[3] + 8) = v63;
  v49 = v86;
  v48 = v88;
  v32 = v59;
  *a1 = v58;
  *(a1 + 16) = v32;
  v33 = v52;
  v34 = v53[0];
  v35 = v53[2];
  *(a1 + 64) = v53[1];
  *(a1 + 80) = v35;
  *(a1 + 32) = v33;
  *(a1 + 48) = v34;
  v36 = v53[3];
  v37 = v53[4];
  v38 = v53[6];
  *(a1 + 128) = v53[5];
  *(a1 + 144) = v38;
  *(a1 + 96) = v36;
  *(a1 + 112) = v37;
  *(a1 + 160) = v43;
  *(a1 + 168) = v23;
  *(a1 + 176) = v24;
  *(a1 + 184) = v25;
  *(a1 + 192) = v26;
  *(a1 + 200) = v89;
  sub_243BC86BC(&v58, v67, &qword_27EDA66D0, &qword_243BD2150);
  sub_243BC86BC(v62, v67, &qword_27EDA66D8, &qword_243BD2158);
  v67[0] = 0;
  *&v67[1] = v14;
  v68 = v55;
  v69 = v56;
  v70 = v57;
  v71 = v30;
  v72 = v29;
  v73 = v31;
  *v74 = *v54;
  *&v74[3] = *&v54[3];
  v75 = 0xBFF921FB54442D18;
  v76 = v18;
  v77 = v20;
  sub_243BC8724(v67, &qword_27EDA66D8, &qword_243BD2158);
  v78[0] = v8;
  v78[1] = v47;
  v78[2] = v9;
  v78[3] = v27;
  v78[4] = v10;
  v78[5] = v28;
  v78[6] = v46;
  return sub_243BC8724(v78, &qword_27EDA66D0, &qword_243BD2150);
}

double sub_243BCCF20@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_243BD0D18();
  v4 = v3;
  sub_243BCC9C4(&v13);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v27 = v13;
  v28 = v14;
  v41[10] = v23;
  v41[11] = v24;
  v41[12] = v25;
  v41[6] = v19;
  v41[7] = v20;
  v41[8] = v21;
  v41[9] = v22;
  v41[2] = v15;
  v41[3] = v16;
  v41[4] = v17;
  v41[5] = v18;
  v40 = v26;
  v42 = v26;
  v41[0] = v13;
  v41[1] = v14;
  sub_243BC86BC(&v27, &v12, &qword_27EDA66C8, &qword_243BD2118);
  sub_243BC8724(v41, &qword_27EDA66C8, &qword_243BD2118);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v38;
  *(a1 + 176) = v37;
  *(a1 + 192) = v5;
  *(a1 + 208) = v39;
  *(a1 + 224) = v40;
  v6 = v34;
  *(a1 + 112) = v33;
  *(a1 + 128) = v6;
  v7 = v36;
  *(a1 + 144) = v35;
  *(a1 + 160) = v7;
  v8 = v30;
  *(a1 + 48) = v29;
  *(a1 + 64) = v8;
  v9 = v32;
  *(a1 + 80) = v31;
  *(a1 + 96) = v9;
  result = *&v27;
  v11 = v28;
  *(a1 + 16) = v27;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_243BCD070@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v30 = a1;
  v3 = sub_243BD0C88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6680, &unk_243BD2058);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6360, &qword_243BD1810);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6688, &qword_243BD2068);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  if (a2 == 0.0)
  {
    sub_243BD0C78();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE8], v3);
    v17 = sub_243BD0C98();

    (*(v4 + 8))(v6, v3);
    sub_243BD0B28();
    sub_243BD0B48();
    v18 = sub_243BD0B58();

    KeyPath = swift_getKeyPath();
    v20 = objc_opt_self();
    v21 = [v20 defaultMetrics];
    [v21 scaledValueForValue_];

    v22 = [v20 defaultMetrics];
    [v22 scaledValueForValue_];

    sub_243BD0D18();
    sub_243BD0988();
    *v9 = v17;
    *(v9 + 1) = KeyPath;
    *(v9 + 2) = v18;
    v23 = v33;
    *(v9 + 24) = v32;
    *(v9 + 40) = v23;
    *(v9 + 56) = v34;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA66A0, &unk_243BD2070);
    sub_243BCD700();
    sub_243BCD810();
    return sub_243BD0AA8();
  }

  else
  {
    *&v32 = a2;
    BYTE4(v32) = 0;
    v31 = 1065353216;
    sub_243BCD5E8();
    sub_243BD0968();
    sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810, MEMORY[0x277CDD7F0]);
    sub_243BCD63C();
    sub_243BD0BD8();
    (*(v11 + 8))(v13, v10);
    v25 = objc_opt_self();
    v26 = [v25 defaultMetrics];
    [v26 scaledValueForValue_];

    v27 = [v25 defaultMetrics];
    [v27 scaledValueForValue_];

    sub_243BD0D18();
    sub_243BD0988();
    v28 = &v16[*(v14 + 36)];
    v29 = v33;
    *v28 = v32;
    *(v28 + 1) = v29;
    *(v28 + 2) = v34;
    sub_243BCD690(v16, v9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA66A0, &unk_243BD2070);
    sub_243BCD700();
    sub_243BCD810();
    sub_243BD0AA8();
    return sub_243BCD89C(v16);
  }
}

unint64_t sub_243BCD5E8()
{
  result = qword_27EDA6690;
  if (!qword_27EDA6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6690);
  }

  return result;
}

unint64_t sub_243BCD63C()
{
  result = qword_27EDA6698;
  if (!qword_27EDA6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6698);
  }

  return result;
}

uint64_t sub_243BCD690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6688, &qword_243BD2068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243BCD700()
{
  result = qword_27EDA66A8;
  if (!qword_27EDA66A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6688, &qword_243BD2068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6360, &qword_243BD1810);
    sub_243BC894C(&qword_27EDA6378, &qword_27EDA6360, &qword_243BD1810, MEMORY[0x277CDD7F0]);
    sub_243BCD63C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA66A8);
  }

  return result;
}

unint64_t sub_243BCD810()
{
  result = qword_27EDA66B0;
  if (!qword_27EDA66B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA66A0, &unk_243BD2070);
    sub_243BC810C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA66B0);
  }

  return result;
}

uint64_t sub_243BCD89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6688, &qword_243BD2068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243BCD920()
{
  result = qword_27EDA66B8;
  if (!qword_27EDA66B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA66C0, &qword_243BD20D8);
    sub_243BCD700();
    sub_243BCD810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA66B8);
  }

  return result;
}

uint64_t sub_243BCD9C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243BD09A8();
  *a1 = result;
  return result;
}

uint64_t sub_243BCDA64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  return v1;
}

uint64_t sub_243BCDAD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  return v1;
}

uint64_t sub_243BCDB4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v1 = 0;
  v2 = *(v13 + 16);
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = 32 * v1;
  while (1)
  {
    if (v2 == v1)
    {

      return v3;
    }

    if (v1 >= *(v13 + 16))
    {
      break;
    }

    v5 = v4 + 32;
    ++v1;
    v6 = v13 + v4;
    v7 = *(v6 + 56) == 1 && *(v6 + 48) == 2;
    v4 = v5;
    if (v7)
    {
      v9 = *(v13 + v5);
      v8 = *(v13 + v5 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_243BCF944(0, *(v3 + 16) + 1, 1);
      }

      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_243BCF944((v10 > 1), v11 + 1, 1);
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 32 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      *(v12 + 48) = 2;
      *(v12 + 56) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243BCDCC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v1 = 0;
  v2 = *(v15 + 16);
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = 32 * v1;
  while (1)
  {
    if (v2 == v1)
    {

      return v3;
    }

    if (v1 >= *(v15 + 16))
    {
      break;
    }

    v5 = v4 + 32;
    ++v1;
    v6 = v15 + v4;
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
    v9 = v8 == 1 && v7 == 2;
    v4 = v5;
    if (!v9)
    {
      v11 = *(v15 + v5);
      v10 = *(v15 + v5 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_243BCF944(0, *(v3 + 16) + 1, 1);
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_243BCF944((v12 > 1), v13 + 1, 1);
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + 32 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      *(v14 + 48) = v7;
      *(v14 + 56) = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243BCDE2C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6748, &qword_243BD2298);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6740, &qword_243BD2290);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel__languages;
  v16[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6470, &qword_243BD18C8);
  sub_243BD08F8();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel__selectedLanguageIdentifier;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_243BD08F8();
  (*(v4 + 32))(v1 + v12, v6, v3);
  *(v1 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate) = 0;
  v16[0] = a1;

  sub_243BCFB9C(v16);

  v13 = v16[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v16[0] = v13;

  sub_243BD0928();
  return v1;
}

uint64_t sub_243BCE094(uint64_t a1, uint64_t a2)
{
  v4 = sub_243BD0D68();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_243BD0D88();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_243BD0D58();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_243BD0DB8();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  LODWORD(v38) = sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v16 = qword_27EDA6F70;
  strcpy(&aBlock, "UI: Download ");
  HIWORD(aBlock) = -4864;
  v17 = a1;
  v42 = a2;
  v18 = MEMORY[0x245D4BBA0](a1, a2);
  if (qword_27EDA62F8 != -1)
  {
    v18 = swift_once();
  }

  *&aBlock = v16;
  MEMORY[0x28223BE20](v18);
  *(&v38 - 2) = &aBlock;
  if (sub_243BCA3C4(sub_243BC8B6C, (&v38 - 4), v19))
  {
    v20 = sub_243BD0DE8();
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_243BD1690;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_243BC710C();
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
    sub_243BD08D8(v38, &dword_243BC0000, v16, "%@", 2, 2, v23);
  }

  v24 = *(v49 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
  v25 = v42;
  if (v24)
  {
    swift_unknownObjectRetain();
    v26 = sub_243BD0DC8();
    [v24 downloadLanguageWithIdentifier_];

    swift_unknownObjectRelease();
  }

  sub_243BD06EC();
  v38 = sub_243BD0EC8();
  sub_243BD0D98();
  *v9 = 1;
  v27 = v39;
  (*(v7 + 104))(v9, *MEMORY[0x277D85188], v39);
  sub_243BD0DA8();
  (*(v7 + 8))(v9, v27);
  v28 = *(v40 + 8);
  v29 = v13;
  v30 = v41;
  v28(v29, v41);
  v31 = swift_allocObject();
  v31[2] = v49;
  v31[3] = v17;
  v31[4] = v25;
  v53 = sub_243BD0864;
  v54 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v51 = sub_243BCE8FC;
  v52 = &block_descriptor_25;
  v32 = _Block_copy(&aBlock);

  v33 = v43;
  sub_243BD0D78();
  *&aBlock = MEMORY[0x277D84F90];
  sub_243BD0760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6730, &qword_243BD21F0);
  sub_243BD07B8();
  v34 = v45;
  v35 = v48;
  sub_243BD0F38();
  v36 = v38;
  MEMORY[0x245D4BC30](v15, v33, v34, v32);
  _Block_release(v32);

  (*(v47 + 8))(v34, v35);
  (*(v44 + 8))(v33, v46);
  return (v28)(v15, v30);
}

uint64_t sub_243BCE6EC(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v6 = v17[0];
  v7 = *(v17[0] + 16);
  if (!v7)
  {
  }

  v8 = 0;
  for (i = 56; ; i += 32)
  {
    v10 = *(v17[0] + i - 24) == a2 && *(v17[0] + i - 16) == a3;
    if (v10 || (sub_243BD0F98() & 1) != 0)
    {
      break;
    }

    if (v7 == ++v8)
    {
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  if (v8 >= *(v17[0] + 16))
  {
    __break(1u);
LABEL_20:
    result = sub_243BD06D8(v6);
    v6 = result;
    *v7 = result;
LABEL_16:
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + i);
      *(v16 - 1) = 1;
      *v16 = 1;
      a1(v17, 0);
    }

    return result;
  }

  v12 = *(v17[0] + i - 8);
  v13 = *(v17[0] + i);

  if (v13 == 1 && (v12 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    a1 = sub_243BD0908();
    v7 = v15;
    v6 = *v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v6;
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_243BCE8FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_243BCE940(uint64_t a1, uint64_t a2)
{
  v4 = sub_243BD0D68();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_243BD0D88();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_243BD0D58();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_243BD0DB8();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  LODWORD(v38) = sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v16 = qword_27EDA6F70;
  aBlock = 0x636E6143203A4955;
  v51 = 0xEB00000000206C65;
  v17 = a1;
  v42 = a2;
  v18 = MEMORY[0x245D4BBA0](a1, a2);
  if (qword_27EDA62F8 != -1)
  {
    v18 = swift_once();
  }

  aBlock = v16;
  MEMORY[0x28223BE20](v18);
  *(&v38 - 2) = &aBlock;
  if (sub_243BCA3C4(sub_243BC8B6C, (&v38 - 4), v19))
  {
    v20 = sub_243BD0DE8();
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_243BD1690;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_243BC710C();
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
    sub_243BD08D8(v38, &dword_243BC0000, v16, "%@", 2, 2, v23);
  }

  v24 = *(v49 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
  v25 = v42;
  if (v24)
  {
    swift_unknownObjectRetain();
    v26 = sub_243BD0DC8();
    [v24 cancelDownloadWithIdentifier_];

    swift_unknownObjectRelease();
  }

  sub_243BD06EC();
  v38 = sub_243BD0EC8();
  sub_243BD0D98();
  *v9 = 1;
  v27 = v39;
  (*(v7 + 104))(v9, *MEMORY[0x277D85188], v39);
  sub_243BD0DA8();
  (*(v7 + 8))(v9, v27);
  v28 = *(v40 + 8);
  v29 = v13;
  v30 = v41;
  v28(v29, v41);
  v31 = swift_allocObject();
  v31[2] = v49;
  v31[3] = v17;
  v31[4] = v25;
  v54 = sub_243BD073C;
  v55 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_243BCE8FC;
  v53 = &block_descriptor;
  v32 = _Block_copy(&aBlock);

  v33 = v43;
  sub_243BD0D78();
  aBlock = MEMORY[0x277D84F90];
  sub_243BD0760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6730, &qword_243BD21F0);
  sub_243BD07B8();
  v34 = v45;
  v35 = v48;
  sub_243BD0F38();
  v36 = v38;
  MEMORY[0x245D4BC30](v15, v33, v34, v32);
  _Block_release(v32);

  (*(v47 + 8))(v34, v35);
  (*(v44 + 8))(v33, v46);
  return (v28)(v15, v30);
}

uint64_t sub_243BCEF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v5 = *(v15[0] + 16);
  if (!v5)
  {
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = *(v15[0] + v6 + 32) == a2 && *(v15[0] + v6 + 40) == a3;
    if (v8 || (sub_243BD0F98() & 1) != 0)
    {
      break;
    }

    ++v7;
    v6 += 32;
    if (v5 == v7)
    {
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = sub_243BD0908();
  v12 = v11;
  v13 = *v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((result & 1) == 0)
  {
    result = sub_243BD06D8(v13);
    v13 = result;
    *v12 = result;
  }

  if (v7 >= *(v13 + 16))
  {
    __break(1u);
  }

  else
  {
    v14 = v13 + v6;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    v10(v15, 0);
  }

  return result;
}

uint64_t sub_243BCF12C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_243BD0E78();
  if (qword_27EDA62F0 != -1)
  {
    swift_once();
  }

  v7 = qword_27EDA6F70;
  strcpy(v18, "UI: Selected ");
  HIWORD(v18[1]) = -4864;
  v8 = MEMORY[0x245D4BBA0](a1, a2);
  if (qword_27EDA62F8 != -1)
  {
    v8 = swift_once();
  }

  v18[0] = v7;
  MEMORY[0x28223BE20](v8);
  v17[2] = v18;
  if (sub_243BCA3C4(sub_243BC7A60, v17, v9))
  {
    v10 = sub_243BD0DE8();
    v12 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6390, qword_243BD1D20);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_243BD1690;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_243BC710C();
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    sub_243BD08D8(v6, &dword_243BC0000, v7, "%@", 2, 2, v13);
  }

  v15 = *(v3 + OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel_delegate);
  if (v15)
  {
    swift_unknownObjectRetain();
    v16 = sub_243BD0DC8();
    [v15 selectedLanguageWithIdentifier_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_243BCF364(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243BD0918();

  v2 = v21;
  v20 = *(a1 + 16);
  if (!v20)
  {
LABEL_21:
    v21 = v2;

    sub_243BCFB9C(&v21);

    v17 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v17;

    return sub_243BD0928();
  }

  v3 = 0;
  v19 = a1 + 32;
  while (1)
  {
    v5 = (v19 + 32 * v3);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = *(v5 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243BD0918();

    v10 = *(v21 + 2);
    if (!v10)
    {
LABEL_13:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_243BCA5F0(0, *(v2 + 2) + 1, 1, v2);
      }

      v15 = *(v2 + 2);
      v14 = *(v2 + 3);
      if (v15 >= v14 >> 1)
      {
        v2 = sub_243BCA5F0((v14 > 1), v15 + 1, 1, v2);
      }

      *(v2 + 2) = v15 + 1;
      v4 = &v2[32 * v15];
      *(v4 + 4) = v6;
      *(v4 + 5) = v7;
      *(v4 + 6) = v8;
      v4[56] = v9;
      goto LABEL_4;
    }

    v11 = 0;
    v12 = 56;
    while (1)
    {
      v13 = *&v21[v12 - 24] == v6 && *&v21[v12 - 16] == v7;
      if (v13 || (sub_243BD0F98() & 1) != 0)
      {
        break;
      }

      ++v11;
      v12 += 32;
      if (v10 == v11)
      {
        goto LABEL_13;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_243BD06D8(v2);
    }

    if (v11 >= *(v2 + 2))
    {
      break;
    }

    v16 = &v2[v12];
    *(v16 - 3) = v6;
    *(v16 - 2) = v7;
    *(v16 - 1) = v8;
    *v16 = v9;

LABEL_4:
    if (++v3 == v20)
    {
      goto LABEL_21;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_243BCF618()
{
  v1 = OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel__languages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6740, &qword_243BD2290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19CommandAndControlUI22CACUILanguageViewModel__selectedLanguageIdentifier;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6748, &qword_243BD2298);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for CACUILanguageViewModel(uint64_t a1)
{
  result = qword_27EDA6700;
  if (!qword_27EDA6700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243BCF770(uint64_t a1)
{
  sub_243BCF844(319);
  if (v1 <= 0x3F)
  {
    sub_243BCF8A8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243BCF844(uint64_t a1)
{
  if (!qword_27EDA6710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6470, &qword_243BD18C8);
    v1 = sub_243BD0938();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA6710);
    }
  }
}

void sub_243BCF8A8()
{
  if (!qword_27EDA6718)
  {
    v0 = sub_243BD0938();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA6718);
    }
  }
}

uint64_t sub_243BCF904@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CACUILanguageViewModel(0);
  result = sub_243BD08E8();
  *a2 = result;
  return result;
}

char *sub_243BCF944(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243BCF984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243BCF964(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243BCFA90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243BCF984(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA6648, &qword_243BD2240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243BCFA90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA6750, &qword_243BD22A0);
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

uint64_t sub_243BCFB9C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_243BD0878(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_243BCFC08(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_243BCFC08(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_243BD0F88();
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
        v5 = sub_243BD0E58();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_243BCFDE4(v7, v8, a1, v4);
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
    return sub_243BCFD00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_243BCFD00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 + 24;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 - 24);
      v11 = (v10 - 24);
      v12 = result == *(v10 - 56) && *(v10 - 16) == *(v10 - 48);
      if (v12 || (result = sub_243BD0F98(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
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

      v14 = *(v10 - 56);
      v13 = *(v10 - 40);
      *(v10 - 32) = *v10;
      v10 -= 32;
      v15 = *(v10 + 8);
      v16 = *(v10 + 16);
      v17 = *(v10 + 24);
      *v11 = v14;
      v11[1] = v13;
      *(v10 - 24) = v15;
      *(v10 - 16) = v16;
      *(v10 - 8) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_243BCFDE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v103 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_109:
    v9 = *v103;
    if (!*v103)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_142:
      result = sub_243BD06C4(v8);
      v8 = result;
    }

    v94 = v5;
    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (*a3)
      {
        v97 = &v8[16 * v96];
        v5 = *v97;
        v98 = &v95[2 * v96];
        v99 = v98[1];
        sub_243BD0418((*a3 + 32 * *v97), (*a3 + 32 * *v98), (*a3 + 32 * v99), v9);
        if (v94)
        {
        }

        if (v99 < v5)
        {
          goto LABEL_134;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_135;
        }

        *v97 = v5;
        *(v97 + 1) = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_136;
        }

        v96 = *v95 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v95 = v96;
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 32 * v7);
      result = *v10;
      v11 = (*a3 + 32 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_243BD0F98();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 5;
        v15 = v11 + 5;
        do
        {
          result = v14[3];
          v17 = v15[4];
          v15 += 4;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_25;
            }
          }

          else
          {
            result = sub_243BD0F98();
            if ((v13 ^ result))
            {
              goto LABEL_24;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_24:
      if (v13)
      {
LABEL_25:
        if (v7 < v9)
        {
          goto LABEL_139;
        }

        if (v9 < v7)
        {
          v19 = 32 * v7 - 32;
          v20 = 32 * v9;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v26 = (v25 + v20);
              v27 = (v25 + v19);
              v28 = *(v25 + v20);
              v29 = *(v25 + v20 + 8);
              v30 = *(v25 + v20 + 16);
              v31 = *(v25 + v20 + 24);
              if (v20 != v19 || (result = (v27 + 2), v26 >= v27 + 2))
              {
                v23 = v27[1];
                *v26 = *v27;
                v26[1] = v23;
              }

              v24 = v25 + v19;
              *v24 = v28;
              *(v24 + 8) = v29;
              *(v24 + 16) = v30;
              *(v24 + 24) = v31;
            }

            ++v22;
            v19 -= 32;
            v20 += 32;
          }

          while (v22 < v21);
        }
      }
    }

    v32 = a3[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_138;
      }

      if (v7 - v9 < a4)
      {
        v33 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_140;
        }

        if (v33 >= v32)
        {
          v33 = a3[1];
        }

        if (v33 < v9)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v7 < v9)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v47 = v5;
    if ((result & 1) == 0)
    {
      result = sub_243BCA4EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_243BCA4EC((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v103;
    if (!*v103)
    {
      goto LABEL_147;
    }

    if (v49)
    {
      v5 = v47;
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_78:
          if (v57)
          {
            goto LABEL_125;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_128;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_132;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_92:
        if (v75)
        {
          goto LABEL_127;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_130;
        }

        if (v86 < v74)
        {
          goto LABEL_4;
        }

LABEL_99:
        v9 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v91 = *&v8[16 * v9 + 32];
        v92 = *&v8[16 * v53 + 40];
        sub_243BD0418((*a3 + 32 * v91), (*a3 + 32 * *&v8[16 * v53 + 32]), (*a3 + 32 * v92), v52);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_243BD06C4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v93 = &v8[16 * v9];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_243BD0638(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_4;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_123;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_124;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_126;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_129;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_133;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

    v5 = v47;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_109;
    }
  }

  v101 = v9;
  v34 = *a3;
  v35 = *a3 + 32 * v7 + 24;
  v36 = (v9 - v7);
  v104 = v33;
LABEL_46:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = (v38 - 24);
    v40 = *(v38 - 24) == *(v38 - 56) && *(v38 - 16) == *(v38 - 48);
    if (v40 || (result = sub_243BD0F98(), (result & 1) == 0))
    {
LABEL_45:
      ++v7;
      v35 += 32;
      --v36;
      if (v7 != v104)
      {
        goto LABEL_46;
      }

      v7 = v104;
      v9 = v101;
      goto LABEL_57;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 - 56);
    v41 = *(v38 - 40);
    *(v38 - 32) = *v38;
    v38 -= 32;
    v43 = *(v38 + 8);
    v44 = *(v38 + 16);
    v45 = *(v38 + 24);
    *v39 = v42;
    v39[1] = v41;
    *(v38 - 24) = v43;
    *(v38 - 16) = v44;
    *(v38 - 8) = v45;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_243BD0418(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
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

      v18 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v18 && (sub_243BD0F98() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v18 = v7 == v4;
      v4 += 32;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v18 = v7 == v6;
    v6 += 32;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = *(v21 - 4);
      v23 = *(v21 - 3);
      v21 -= 32;
      v24 = v22 == *(v6 - 4) && v23 == *(v6 - 3);
      if (!v24 && (sub_243BD0F98() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v26 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v26;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v15)
      {
        v25 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v25;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_43:
  v27 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_243BD0638(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_243BD06C4(v3);
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

unint64_t sub_243BD06EC()
{
  result = qword_27EDA6720;
  if (!qword_27EDA6720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDA6720);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243BD0760()
{
  result = qword_27EDA6728;
  if (!qword_27EDA6728)
  {
    sub_243BD0D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6728);
  }

  return result;
}

unint64_t sub_243BD07B8()
{
  result = qword_27EDA6738;
  if (!qword_27EDA6738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA6730, &qword_243BD21F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA6738);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}