uint64_t sub_1BF483720(uint64_t a1, double a2)
{
  v97 = sub_1BF4E7194();
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v89 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v89 - v7;
  v8 = sub_1BF4E7FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BF4E7FC4();
  v12 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9948, qword_1BF4F4290);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v89 - v19;
  v21 = sub_1BF4E7FD4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v89 - v26;
  sub_1BF484DFC(a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1BF38C9B4(v20, &qword_1EBDD9948, qword_1BF4F4290);
  }

  (*(v22 + 32))(v27, v20, v21);
  (*(v22 + 16))(v24, v27, v21);
  if ((*(v22 + 88))(v24, v21) == *MEMORY[0x1E697CB08])
  {
    v91 = v27;
    (*(v22 + 96))(v24, v21);
    v29 = v100;
    v30 = v99;
    (*(v12 + 32))();
    sub_1BF4E7FB4();
    if ((*(v9 + 88))(v11, v8) == *MEMORY[0x1E697CAF0])
    {
      (*(v9 + 96))(v11, v8);
      v31 = v94;
      v33 = v97;
      v32 = v98;
      (*(v94 + 32))(v98, v11, v97);
      v103[0] = sub_1BF4E7174();
      v103[1] = v34;
      v101 = 0xD00000000000001BLL;
      v102 = 0x80000001BF4FCB30;
      sub_1BF399080();
      v35 = sub_1BF4E9154();

      v36 = 0x1EBDD8000uLL;
      v37 = v12;
      v38 = v95;
      if ((v35 & 1) == 0)
      {
        v39 = v33;
        if (qword_1EBDD8578 != -1)
        {
          swift_once();
        }

        v40 = sub_1BF4E7B54();
        __swift_project_value_buffer(v40, qword_1EBDE1ED8);
        v41 = v92;
        v42 = v30;
        v43 = v100;
        (*(v37 + 16))(v92, v42, v100);
        v44 = v93;
        (*(v31 + 16))(v93, v32, v39);
        v45 = v37;
        v46 = sub_1BF4E7B34();
        v90 = sub_1BF4E8E64();
        if (os_log_type_enabled(v46, v90))
        {
          v47 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v103[0] = v89;
          *v47 = 136446466;
          v48 = v45;
          v49 = sub_1BF4E7F94();
          v51 = v50;
          (*(v48 + 8))(v41, v43);
          v52 = sub_1BF38D65C(v49, v51, v103);
          v53 = v94;

          *(v47 + 4) = v52;
          *(v47 + 12) = 2082;
          v54 = sub_1BF4E7174();
          v56 = v55;
          v57 = v44;
          v33 = v97;
          (*(v53 + 8))(v57, v97);
          v58 = sub_1BF38D65C(v54, v56, v103);

          *(v47 + 14) = v58;
          v38 = v95;
          _os_log_impl(&dword_1BF389000, v46, v90, "ERROR! graphic from template for %{public}s contains old path %{public}s", v47, 0x16u);
          v59 = v89;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v59, -1, -1);
          v60 = v47;
          v31 = v53;
          v32 = v98;
          MEMORY[0x1BFB5A5D0](v60, -1, -1);

          v37 = v48;
          v30 = v99;
          v36 = 0x1EBDD8000;
        }

        else
        {

          (*(v31 + 8))(v44, v39);
          (*(v45 + 8))(v41, v43);
          v37 = v45;
          v30 = v99;
          v33 = v39;
          v36 = 0x1EBDD8000uLL;
          v38 = v95;
        }
      }

      v62 = v96;
      if (*(v36 + 1400) != -1)
      {
        swift_once();
      }

      v63 = sub_1BF4E7B54();
      __swift_project_value_buffer(v63, qword_1EBDE1ED8);
      v64 = v30;
      v65 = v100;
      (*(v37 + 16))(v38, v64, v100);
      (*(v31 + 16))(v62, v32, v33);
      v66 = v38;
      v67 = sub_1BF4E7B34();
      v68 = sub_1BF4E8E54();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = v37;
        v70 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v103[0] = v93;
        *v70 = 136446466;
        LODWORD(v92) = v68;
        v71 = v66;
        v72 = sub_1BF4E7F94();
        v73 = v65;
        v74 = v31;
        v76 = v75;
        v94 = *(v69 + 8);
        (v94)(v71, v73);
        v77 = sub_1BF38D65C(v72, v76, v103);

        *(v70 + 4) = v77;
        *(v70 + 12) = 2082;
        v78 = v96;
        v79 = sub_1BF4E7174();
        v81 = v80;
        v82 = *(v74 + 8);
        v83 = v78;
        v84 = v97;
        v82(v83, v97);
        v85 = sub_1BF38D65C(v79, v81, v103);

        *(v70 + 14) = v85;
        _os_log_impl(&dword_1BF389000, v67, v92, "Graphic from template for %{public}s is at %{public}s", v70, 0x16u);
        v86 = v93;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v86, -1, -1);
        MEMORY[0x1BFB5A5D0](v70, -1, -1);

        v82(v98, v84);
        (v94)(v99, v100);
      }

      else
      {

        v87 = *(v31 + 8);
        v87(v62, v33);
        v88 = *(v37 + 8);
        v88(v66, v65);
        v87(v98, v33);
        v88(v99, v65);
      }

      return (*(v22 + 8))(v91, v21);
    }

    else
    {
      (*(v12 + 8))(v30, v29);
      (*(v22 + 8))(v91, v21);
      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v61 = *(v22 + 8);
    v61(v27, v21);
    return (v61)(v24, v21);
  }
}

void static ControlArchive.saveEncodedVectorGlyphAssetLibs(key:content:cacheManager:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v76 = a6;
  v75 = a5;
  v77 = a4;
  v85 = sub_1BF4E7194();
  v10 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v68 - v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v68 - v16;
  v18 = [*a1 extensionIdentity];
  v19 = &v18[*MEMORY[0x1E69941A8]];
  swift_beginAccess();
  v20 = *(v19 + 1);

  if (v20)
  {
    v72 = a1;
    v73 = a3;

    swift_beginAccess();
    sub_1BF38E49C(a2 + 16, v86);
    __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    v21 = sub_1BF4E8394();
    v23 = v21 + 64;
    v22 = *(v21 + 64);
    v78 = v21;
    v24 = 1 << *(v21 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    v27 = 0;
    v28 = (v24 + 63) >> 6;
    v71 = (v10 + 16);
    v83 = (v10 + 8);
    *&v29 = 136315394;
    v68 = v29;
    v70 = v23;
    v69 = v28;
    v79 = v17;
    if (v26)
    {
      while (1)
      {
        v30 = v27;
LABEL_9:
        v31 = __clz(__rbit64(v26)) | (v30 << 6);
        v32 = *(*(v78 + 48) + 8 * v31);
        v33 = (*(v78 + 56) + 16 * v31);
        v35 = *v33;
        v34 = v33[1];
        ObjectType = swift_getObjectType();
        v37 = *(v77 + 8);
        v80 = *(v37 + 16);

        v81 = v35;
        v82 = v34;
        sub_1BF3D8864(v35, v34);
        v38 = v79;
        v39 = v72;
        v40 = v87;
        v80(v72, v32, ObjectType, v37);
        if (v40)
        {

          sub_1BF3B03C0(v81, v82);

          return;
        }

        (*(v37 + 24))(v39, v32, ObjectType, v37);
        v87 = 0;
        v41 = v85;
        v42 = v38;
        if (qword_1EBDD8578 != -1)
        {
          swift_once();
        }

        v43 = sub_1BF4E7B54();
        __swift_project_value_buffer(v43, qword_1EBDE1ED8);
        v44 = v74;
        (*v71)(v74, v42, v41);

        v45 = sub_1BF4E7B34();
        v46 = sub_1BF4E8E84();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v86[0] = swift_slowAlloc();
          v48 = v86[0];
          *v47 = v68;
          v49 = sub_1BF4E8D34();
          v51 = v50;

          v52 = sub_1BF38D65C(v49, v51, v86);

          *(v47 + 4) = v52;
          *(v47 + 12) = 2080;
          sub_1BF426950(v53);
          v54 = sub_1BF4E96A4();
          v55 = v44;
          v57 = v56;
          v58 = *v83;
          (*v83)(v55, v85);
          v59 = sub_1BF38D65C(v54, v57, v86);

          *(v47 + 14) = v59;
          _os_log_impl(&dword_1BF389000, v45, v46, "writing vector glyphs asset library for %s to %s", v47, 0x16u);
          swift_arrayDestroy();
          v60 = v48;
          v42 = v79;
          MEMORY[0x1BFB5A5D0](v60, -1, -1);
          v61 = v47;
          v41 = v85;
          MEMORY[0x1BFB5A5D0](v61, -1, -1);
        }

        else
        {

          v58 = *v83;
          v62 = (*v83)(v44, v41);
        }

        v64 = v81;
        v63 = v82;
        v65 = v84;
        v66 = v87;
        sub_1BF484860(v81, v82, v62);
        v87 = v66;
        if (v66)
        {
          break;
        }

        v26 &= v26 - 1;
        v67 = sub_1BF3B03C0(v64, v63);
        (v58)(v65, v41, v67);
        v58(v42, v41);
        v27 = v30;
        v23 = v70;
        v28 = v69;
        if (!v26)
        {
          goto LABEL_6;
        }
      }

      sub_1BF3B03C0(v64, v63);

      v58(v65, v41);
      v58(v42, v41);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          return;
        }

        v26 = *(v23 + 8 * v30);
        ++v27;
        if (v26)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }
}

double sub_1BF484860(uint64_t a1, uint64_t a2, double a3)
{
  v41[1] = a1;
  v41[2] = a2;
  v49 = *MEMORY[0x1E69E9840];
  v3 = sub_1BF4E7194();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  sub_1BF4E7104();
  v44 = v11;
  sub_1BF4E7114();
  v12 = *(v4 + 8);
  v12(v8, v3);
  sub_1BF4E70D4();
  v13 = sub_1BF4E7084();
  v15 = v14;
  v45 = v3;
  v46 = v12;
  v12(v8, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A18, &qword_1BF4EBF08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF4F4280;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001BF4FCA80;
  v47 = 0xD000000000000027;
  v48 = 0x80000001BF4FCAA0;
  MEMORY[0x1BFB58C90](v13, v15);
  v17 = MEMORY[0x1E69E6158];
  v18 = v48;
  *(inited + 48) = v47;
  *(inited + 56) = v18;
  *(inited + 72) = v17;
  *(inited + 80) = 0xD00000000000001DLL;
  v19 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0x80000001BF4FCAD0;
  *(inited + 96) = 6;
  *(inited + 120) = v19;
  strcpy((inited + 128), "CFBundleName");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 168) = v17;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001BF4FCAF0;
  *(inited + 192) = 1279544898;
  *(inited + 200) = 0xE400000000000000;
  *(inited + 216) = v17;
  *(inited + 224) = 0xD00000000000001ALL;
  *(inited + 232) = 0x80000001BF4FCB10;
  *(inited + 240) = 3157553;
  *(inited + 248) = 0xE300000000000000;
  *(inited + 264) = v17;
  *(inited + 272) = 0x656C646E75424643;
  *(inited + 312) = v17;
  *(inited + 280) = 0xEF6E6F6973726556;
  *(inited + 288) = 49;
  *(inited + 296) = 0xE100000000000000;
  sub_1BF3DA488(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87D0, &qword_1BF4EB2E8);
  swift_arrayDestroy();
  v20 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v21 = sub_1BF4E7094();
  v47 = 0;
  v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v47];

  v23 = v47;
  if (v22)
  {
    v24 = v44;
    v25 = v45;
    v26 = objc_opt_self();
    v27 = v23;
    v28 = sub_1BF4E8744();

    v47 = 0;
    v29 = [v26 dataWithPropertyList:v28 format:200 options:0 error:&v47];

    v30 = v47;
    if (v29)
    {
      v31 = sub_1BF4E71C4();
      v33 = v32;

      v34 = v42;
      sub_1BF4E7104();
      v35 = v43;
      sub_1BF4E71D4();
      v36 = v46;
      if (v35)
      {
        v37 = sub_1BF3B03C0(v31, v33);
        v36(v34, v25, v37);
        (v36)(v24, v25);
      }

      else
      {
        v46(v34, v25);
        sub_1BF4E71D4();
        (v36)(v24, v25);
        return sub_1BF3B03C0(v31, v33);
      }
    }

    else
    {
      v40 = v30;
      sub_1BF4E6FF4();

      swift_willThrow();
      v46(v24, v25);
    }
  }

  else
  {
    v39 = v47;

    sub_1BF4E6FF4();

    swift_willThrow();
    v46(v44, v45);
  }

  return result;
}

uint64_t sub_1BF484DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9948, qword_1BF4F4290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF484F48(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 160) - 8) + 32))(v2 + *(*v2 + 176), a1);
  return v2;
}

uint64_t sub_1BF485044()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4852A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF485450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(*v5 + 160);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v18 - v15;
  (*(v13 + 16))(&v18 - v15, v5 + *(v11 + 176), v12, v14);
  (*(*(v11 + 168) + 64))(a1, a2, a3, a4, a5, v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1BF48560C()
{
  (*(*(*(*v0 + 160) - 8) + 8))(v0 + *(*v0 + 176));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4856D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyReloadConfigurationPolicyBox(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  *(v3 + 16) = sub_1BF484F48(v8);
  return v3;
}

uint64_t StatefulStoreReloadVariantsEvent.init(key:variantKeys:configuration:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for StatefulStoreReloadVariantsEvent(0, a5, a6, a4);
  v15 = v14[11];
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  *(a7 + v14[9]) = a2;
  result = sub_1BF3B4B88(a3, a7 + v14[10]);
  *(a7 + v15) = a4;
  return result;
}

uint64_t StatefulStoreReloadEvent.init(key:configuration:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for StatefulStoreReloadEvent(0, a4, a5, a6);
  v13 = *(v12 + 48);
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = sub_1BF3B4B88(a2, a7 + *(v12 + 44));
  *(a7 + v13) = a3;
  return result;
}

uint64_t sub_1BF485984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v18 = type metadata accessor for VariantIdentifier(0, &v20);
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  result = type metadata accessor for VariantReloadResult(0, &v20);
  *(a9 + *(result + 68)) = a2;
  return result;
}

uint64_t VariantIdentifier.description.getter(uint64_t a1)
{
  sub_1BF4E96F4();
  MEMORY[0x1BFB58C90](58, 0xE100000000000000);
  sub_1BF4E96F4();
  return 0;
}

uint64_t static VariantIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_1BF4E88C4())
  {
    v16[0] = a3;
    v16[1] = a4;
    v16[2] = a5;
    v16[3] = a6;
    v16[4] = a7;
    v16[5] = a8;
    type metadata accessor for VariantIdentifier(0, v16);
    v14 = sub_1BF4E88C4();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t VariantIdentifier.hashValue.getter(void *a1, double a2)
{
  sub_1BF4E9804();
  VariantIdentifier.hash(into:)(v4, a1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF485C54(uint64_t a1, void *a2, double a3)
{
  sub_1BF4E9804();
  VariantIdentifier.hash(into:)(v5, a2);
  return sub_1BF4E9844();
}

uint64_t VariantReloadResult.variantIdentifier.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v7[0] = a1[1];
  v7[1] = v4;
  v7[2] = a1[3];
  v5 = type metadata accessor for VariantIdentifier(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

void *VariantReloadResult.error.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));
  v3 = v2;
  return v2;
}

void *StatefulStoreReloadEvent.error.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  v3 = v2;
  return v2;
}

void StatefulStoreReloadEvent.error.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);

  *(v2 + v4) = a1;
}

uint64_t StatefulStoreReloadVariantsEvent.variantKeys.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

void *StatefulStoreReloadVariantsEvent.error.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  v3 = v2;
  return v2;
}

void StatefulStoreReloadVariantsEvent.error.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
}

uint64_t sub_1BF4860F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF486184(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1BF486360(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

void sub_1BF48661C(_OWORD *a1)
{
  v1 = a1[2];
  v6[0] = a1[1];
  v6[1] = v1;
  v6[2] = a1[3];
  v2 = type metadata accessor for VariantIdentifier(319, v6);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    *&v6[0] = v2;
    sub_1BF486B9C(319);
    if (v5 <= 0x3F)
    {
      v8 = 0;
      *(&v6[0] + 1) = v4;
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BF4866B4(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = (v12 & ~v9) + *(*(v6 - 8) + 64);
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v11;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v11 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v10 < 0x7FFFFFFE)
  {
    v24 = *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if ((v24 + 1) >= 2)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }

  else if (v5 >= v8)
  {
    return (*(v4 + 48))(a1);
  }

  else
  {
    return (*(v7 + 48))((a1 + v12) & ~v9, v8, v6);
  }
}

void sub_1BF486894(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 + v11;
  v15 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v16 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v20 = 0;
    v21 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = a3 - v13;
    if (((v15 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v20)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v12 < 0x7FFFFFFE)
        {
          v29 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v29 = 0;
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v29 = a2;
          }
        }

        else if (v12 >= a2)
        {
          if (v6 >= v9)
          {
            v32 = *(v5 + 56);

            v32();
          }

          else
          {
            v30 = *(v8 + 56);
            v31 = (a1 + v14) & ~v11;

            v30(v31);
          }
        }

        else
        {
          if (v15 <= 3)
          {
            v25 = ~(-1 << (8 * v15));
          }

          else
          {
            v25 = -1;
          }

          if (v15)
          {
            v26 = v25 & (~v12 + a2);
            if (v15 <= 3)
            {
              v27 = v15;
            }

            else
            {
              v27 = 4;
            }

            v28 = a1;
            bzero(a1, v15);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v28 = v26;
                *(v28 + 2) = BYTE2(v26);
              }

              else
              {
                *v28 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v28 = v26;
            }

            else
            {
              *v28 = v26;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((v15 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((v15 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v23 = ~v13 + a2;
    v24 = a1;
    bzero(a1, ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v16) = v22;
    }

    else
    {
      *(a1 + v16) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v16) = v22;
  }
}

void sub_1BF486B9C(uint64_t a1)
{
  if (!qword_1EDC962C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    v1 = sub_1BF4E90F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC962C0);
    }
  }
}

void sub_1BF486C08(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReloadConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_1BF486B9C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF486CA8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1BF4E8CA4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ReloadConfiguration(319);
      if (v3 <= 0x3F)
      {
        sub_1BF486B9C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BF486D64(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  if (v11)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v9 + 80) & 0xF8 | 7;
  if (v14 >= a2)
  {
    goto LABEL_35;
  }

  v18 = ((((v17 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17) + (((v16 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v14 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v14 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  if (v7 == v14)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  else
  {
    v28 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v30 = (*(v10 + 48))((v28 + v17 + 8) & ~v17);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v29 = *v28;
      if (*v28 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }
  }
}

void sub_1BF486FDC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = 0;
  v10 = *(sub_1BF4E7334() - 8);
  v11 = *(v10 + 84);
  v12 = *(v26 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  v14 = *(v10 + 64);
  if (v13 <= v8)
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(v10 + 80) & 0xF8 | 7;
  if (!v11)
  {
    ++v14;
  }

  v17 = ((((v16 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + (((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    if (((((v16 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v16) + (((v14 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v15 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v15)
  {
    if (v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v15;
    }

    if (v17)
    {
      v21 = ~v15 + a2;
      bzero(a1, v17);
      *a1 = v21;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v17) = v20;
      }

      else
      {
        *(a1 + v17) = v20;
      }
    }

    else if (v9)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v17) = 0;
  }

  else if (v9)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v8 == v15)
  {
    v22 = *(v26 + 56);

    v22(a1, a2, v8, v7);
  }

  else
  {
    v23 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v25 = *(v10 + 56);

      v25((v23 + v16 + 8) & ~v16, (a2 + 1));
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = (a2 - 1);
      }

      *v23 = v24;
    }
  }
}

uint64_t dispatch thunk of StatefulStoring.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 152))(a1, a2);
}

{
  return (*(a3 + 168))(a1, a2);
}

uint64_t sub_1BF4874A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9960, &qword_1BF4F46C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReloadTaskCancellable.init(_:description:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1BF38E610(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t ReloadTaskCancellable.__allocating_init(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BF4E7BE4();
  swift_allocObject();
  v7 = sub_1BF4E7BF4();
  v11 = v6;
  v12 = MEMORY[0x1E695BF08];
  *&v10 = v7;
  type metadata accessor for ReloadTaskCancellable();
  v8 = swift_allocObject();
  sub_1BF38E610(&v10, v8 + 16);
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  return v8;
}

uint64_t ReloadTaskCancellable.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t sub_1BF487698(double a1)
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF487728(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](*v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF48778C(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 144) - 8) + 32))(v2 + *(*v2 + 160), a1);
  return v2;
}

uint64_t sub_1BF48792C()
{
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 160));

  return swift_deallocClassInstance();
}

unint64_t sub_1BF4879DC()
{
  result = qword_1EBDD9968;
  if (!qword_1EBDD9968)
  {
    type metadata accessor for ReloadTaskCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9968);
  }

  return result;
}

uint64_t sub_1BF487BB0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF487C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyReloadingStrategyBox(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  *(v3 + 16) = sub_1BF48778C(v8);
  return v3;
}

double static DescriptorKind.all.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static DescriptorKind.all.setter(void *a1)
{
  swift_beginAccess();
  off_1EBDD9970 = a1;
}

uint64_t sub_1BF487EB8(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EBDD9970 = v1;
}

uint64_t DescriptorChangeReason.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        return MEMORY[0x1BFB59A70](v3);
      case 4:
        v3 = 4;
        return MEMORY[0x1BFB59A70](v3);
      case 5:
        v3 = 6;
        return MEMORY[0x1BFB59A70](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x1BFB59A70](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x1BFB59A70](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x1BFB59A70](v3);
    }
  }

  MEMORY[0x1BFB59A70](5);

  return sub_1BF4E89F4();
}

uint64_t DescriptorChangeReason.hashValue.getter(double a1)
{
  v2 = *(v1 + 8);
  sub_1BF4E9804();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1BFB59A70](v3);
        return sub_1BF4E9844();
    }
  }

  MEMORY[0x1BFB59A70](5);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4880C8(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        return MEMORY[0x1BFB59A70](v3);
      case 4:
        v3 = 4;
        return MEMORY[0x1BFB59A70](v3);
      case 5:
        v3 = 6;
        return MEMORY[0x1BFB59A70](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x1BFB59A70](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x1BFB59A70](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x1BFB59A70](v3);
    }
  }

  MEMORY[0x1BFB59A70](5);

  return sub_1BF4E89F4();
}

uint64_t WidgetDescriptorsChangeEvent.reasons.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t WidgetDescriptorsChangeEvent.init(descriptors:reasons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CombinedDescriptorsChangeEvent.init(widgetDescriptors:controlDescriptors:affectedExtensions:reasons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void *CombinedDescriptorsChangeEvent.combinedDescriptorCollection.getter()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
  KeyPath = swift_getKeyPath();

  sub_1BF3FEE8C(v2, KeyPath);
  v5 = v4;

  if (v5 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v6 = sub_1BF4E9474();
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    v6 = v5;
  }

  v8 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v7);
  sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
  v9 = swift_getKeyPath();

  sub_1BF488A30(v8, v9);
  v11 = v10;

  if (v11 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v12 = sub_1BF4E9474();
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    v12 = v11;
  }

  sub_1BF44BBA4(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9978, &qword_1BF4F4970);
  v13 = swift_allocObject();
  v14 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v13[3] = swift_allocObject();
  v13[6] = v14;
  v13[7] = &off_1F3DF42A8;
  v15 = sub_1BF4887CC(v6);

  v13[2] = v15;
  return v13;
}

uint64_t _s9ChronoKit22DescriptorChangeReasonO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_1BF44B9A8(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_1BF44B9A8(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_1BF44B9A8(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_1BF44B994(*a2, *(a2 + 8));
        sub_1BF44B994(v2, v3);
        sub_1BF44B9A8(v2, v3);
        sub_1BF44B9A8(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_1BF44B9A8(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_1BF44B9A8(*a1, 1uLL);
          sub_1BF44B9A8(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_1BF44B9A8(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_1BF44B9A8(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1BF44B994(*a1, v3);
    sub_1BF44B994(v2, v3);
    sub_1BF44B9A8(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = sub_1BF4E9734();
  sub_1BF44B994(v4, v5);
  sub_1BF44B994(v2, v3);
  sub_1BF44B9A8(v2, v3);
  sub_1BF44B9A8(v4, v5);
  return v10 & 1;
}

void *sub_1BF4887CC(unint64_t a1)
{
  v23 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_1BF4E9204();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFB59570](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = [v6 extensionIdentity];
        v11 = sub_1BF3916CC(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_1BF4A067C(v14, 1);
          v4 = v23;
          v16 = sub_1BF3916CC(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            sub_1BF4E9034();
            result = sub_1BF4E9794();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x1BFB58DD0]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BF4E8BE4();
          }

          sub_1BF4E8C24();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9270, &unk_1BF4F0880);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1BF4F4940;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1BF488A30(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v39 = v6;
  v40 = v7;
  v37 = v2;
  while (1)
  {
    v10 = v9;
    if (!v5)
    {
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v11 >= v6)
        {
          goto LABEL_39;
        }

        v5 = *(v2 + 8 * v11);
        ++v8;
        if (v5)
        {
          v8 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

LABEL_10:
    v12 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(v7 + 56) + v12);
    v44[0] = *(*(v7 + 48) + v12);
    v44[1] = v13;
    v14 = v44[0];

    swift_getAtKeyPath();

    v15 = v45 >> 62;
    v43 = v45;
    v16 = v45 >> 62 ? sub_1BF4E9204() : *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v10 >> 62;
    v42 = v16;
    if (v10 >> 62)
    {
      break;
    }

    v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v18 + v16;
    if (__OFADD__(v18, v16))
    {
      goto LABEL_38;
    }

LABEL_14:
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v17)
      {
LABEL_20:
        sub_1BF4E9204();
        v22 = v43;
      }

      else
      {
LABEL_19:
        v22 = v43;
      }

      v20 = sub_1BF4E9324();
      v21 = v20 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v17)
    {
      goto LABEL_20;
    }

    v20 = v10;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v19 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    v22 = v43;
LABEL_22:
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v41 = v20;
    if (v15)
    {
      v26 = v21;
      v27 = sub_1BF4E9204();
      v21 = v26;
      v25 = v27;
    }

    else
    {
      v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      if (((v24 >> 1) - v23) < v42)
      {
        goto LABEL_42;
      }

      v28 = v21 + 8 * v23 + 32;
      v38 = v21;
      if (v15)
      {
        if (v25 < 1)
        {
          goto LABEL_44;
        }

        sub_1BF48914C();
        for (i = 0; i != v25; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9090, &qword_1BF4F5400);
          v30 = sub_1BF3E20B0(v44, i, v22);
          v32 = *v31;
          (v30)(v44, 0);
          v22 = v43;
          *(v28 + 8 * i) = v32;
        }
      }

      else
      {
        sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
        swift_arrayInitWithCopy();
      }

      v9 = v41;
      v6 = v39;
      v7 = v40;
      v2 = v37;
      v5 &= v5 - 1;
      if (v42 >= 1)
      {
        v33 = *(v38 + 16);
        v34 = __OFADD__(v33, v42);
        v35 = v33 + v42;
        if (v34)
        {
          goto LABEL_43;
        }

        *(v38 + 16) = v35;
      }
    }

    else
    {

      v5 &= v5 - 1;
      v6 = v39;
      v7 = v40;
      v9 = v41;
      if (v42 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v36 = sub_1BF4E9204();
  v19 = v36 + v42;
  if (!__OFADD__(v36, v42))
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:
}

unint64_t sub_1BF488DCC()
{
  result = qword_1EBDD9980;
  if (!qword_1EBDD9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9980);
  }

  return result;
}

unint64_t sub_1BF488E24()
{
  result = qword_1EBDD9988;
  if (!qword_1EBDD9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9988);
  }

  return result;
}

unint64_t sub_1BF488E7C()
{
  result = qword_1EBDD9990;
  if (!qword_1EBDD9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9990);
  }

  return result;
}

unint64_t sub_1BF488ED4()
{
  result = qword_1EBDD9998;
  if (!qword_1EBDD9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9998);
  }

  return result;
}

uint64_t sub_1BF488FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF489048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1BF4890A8(uint64_t *a1, int a2)
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

uint64_t sub_1BF4890F0(uint64_t result, int a2, int a3)
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

unint64_t sub_1BF48914C()
{
  result = qword_1EBDD99A0;
  if (!qword_1EBDD99A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9090, &qword_1BF4F5400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD99A0);
  }

  return result;
}

void ChronoMetadataStore.MutableRemoteExtensionStore.update(remoteWidgetExtensionInfo:)(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v4 = *(Strong + 24);
  v5 = Strong;
  os_unfair_lock_lock(*(v4 + 16));
  v6 = *(v5 + 64);
  os_unfair_lock_unlock(*(v4 + 16));

  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *a1;
  if (![*a1 isRemote])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1BF4E6DE4();
  swift_allocObject();
  sub_1BF4E6DD4();
  type metadata accessor for WidgetExtensionInfo(0);
  sub_1BF4A6514(&qword_1EBDD99C0, type metadata accessor for WidgetExtensionInfo, &protocol conformance descriptor for WidgetExtensionInfo);
  v8 = sub_1BF4E6DC4();
  v10 = v9;

  if (v1)
  {
    return;
  }

  v11 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](75);
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  v17 = [v7 tokenString];
  v18 = sub_1BF4E8914();
  v20 = v19;

  v22 = sub_1BF3D8148(v18, v20, v21);
  v24 = v23;
  v26 = v25;
  v27 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v27);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v22, v24, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v22, v24, v26, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v29);

  sub_1BF3D88B8(v22, v24, v26);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v31 = *(a1 + 8);
  v30 = *(a1 + 16);

  v33 = sub_1BF3D8148(v31, v30, v32);
  v35 = v34;
  v37 = v36;
  v38 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v38);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v33, v35, v37);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v33, v35, v37, 0x676E69646E696240, 0xE800000000000000, v39, v40);

  v41 = sub_1BF3D88B8(v33, v35, v37);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v41);
  sub_1BF4E71F4();
  v43 = sub_1BF3D833C(v42);
  v45 = v44;
  v47 = v46;
  v48 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v48);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v43, v45, v47);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v43, v45, v47, 0x676E69646E696240, 0xE800000000000000, v49, v50);

  v51 = sub_1BF3D88B8(v43, v45, v47);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v51);
  sub_1BF3D8864(v8, v10);
  sub_1BF3D8864(v8, v10);
  v53 = sub_1BF3D8134(v8, v10, v52);
  v55 = v54;
  v57 = v56;
  v58 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v58);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v53, v55, v57);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v53, v55, v57, 0x676E69646E696240, 0xE800000000000000, v59, v60);

  sub_1BF3D88B8(v53, v55, v57);
  v61 = sub_1BF3B03C0(v8, v10);
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000, v61);
  if (!swift_weakLoadStrong())
  {
LABEL_10:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v11, 0, 0xE000000000000000);

  sub_1BF3B03C0(v8, v10);
}

double ChronoMetadataStore.update(reason:_:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v11 = sub_1BF4A4E98(v10);
  v12 = *(v5 + 136);
  os_unfair_lock_lock(*(v12 + 16));

  sub_1BF3E7904(a1, a2, v10, a3, a4, v11);

  os_unfair_lock_unlock(*(v12 + 16));
  sub_1BF48EBD0();

  return result;
}

void ChronoMetadataStore.MutableRemoteExtensionStore.removeExtension(with:)(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v4 = *(Strong + 24);
  v5 = Strong;
  os_unfair_lock_lock(*(v4 + 16));
  v6 = *(v5 + 64);
  os_unfair_lock_unlock(*(v4 + 16));

  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (![a1 isRemote])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v10 = [a1 tokenString];
  v11 = sub_1BF4E8914();
  v13 = v12;

  v15 = sub_1BF3D8148(v11, v13, v14);
  v17 = v16;
  v19 = v18;
  v20 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v15, v17, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v15, v17, v19, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v22);

  sub_1BF3D88B8(v15, v17, v19);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_10:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v7, 0, 0xE000000000000000);

  if (!v1)
  {
  }
}

uint64_t sub_1BF489DA8(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v7 = v5;
  v24 = a1;
  v25 = a2;
  v23 = a4(0);
  v9 = *(v23 - 8);
  v10 = MEMORY[0x1EEE9AC00](v23);
  v12 = &v20 - v11;
  v13 = *(a3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v21 = a5;
  (a5)(0, v13, 0, v10);
  v14 = v27;
  v22 = v9 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v16 = *i;
    v26[0] = *(i - 1);
    v26[1] = v16;

    v24(v26);
    if (v7)
    {
      break;
    }

    v7 = 0;

    v27 = v14;
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      v21(v17 > 1, v18 + 1, 1);
      v14 = v27;
    }

    *(v14 + 16) = v18 + 1;
    (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v12, v23);
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1BF489F88(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9[0] = *(i - 2);
      v9[1] = v7;
      v9[2] = v8;

      v5(v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1BF48A044(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v27 = a1 + 32;
  v3 = &qword_1EBDD8CE8;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_1BF4E9204();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1BF4E9204();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1BF4E9204();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1BF4E9324();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_1BF38C8B4(&qword_1EDC963D0, v3, &unk_1BF4ED970, MEMORY[0x1E69E6340]);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_1BF4ED970);
        v18 = v3;
        v19 = sub_1BF3E20B0(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_1BF4E9204();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BF48A33C(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v27 = a1 + 32;
  v3 = &qword_1EBDD9090;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_1BF4E9204();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1BF4E9204();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1BF4E9204();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1BF4E9324();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_1BF38C8B4(&qword_1EBDD99A0, v3, &qword_1BF4F5400, MEMORY[0x1E69E6340]);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_1BF4F5400);
        v18 = v3;
        v19 = sub_1BF3E20B0(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_1BF4E9204();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BF48A634(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v27 = a1 + 32;
  v3 = &qword_1EBDD8A28;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_1BF4E9204();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1BF4E9204();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1BF4E9204();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1BF4E9324();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_1BF38C8B4(&qword_1EBDD9A30, v3, &qword_1BF4EBFF8, MEMORY[0x1E69E6340]);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_1BF4EBFF8);
        v18 = v3;
        v19 = sub_1BF3E20B0(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1BF3901C0(0, &qword_1EDC96310, 0x1E6994358);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_1BF4E9204();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BF48A92C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BF4E7394();
  __swift_allocate_value_buffer(v3, qword_1EBDD99A8);
  v4 = __swift_project_value_buffer(v3, qword_1EBDD99A8);
  sub_1BF4E7344();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF48AA5C(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A90](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF48AAD0(uint64_t a1, double a2)
{
  v3 = *v2;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A90](v3);
  return sub_1BF4E9844();
}

unint64_t sub_1BF48AB14@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF4A563C(*a1);
  *a2 = result;
  return result;
}

uint64_t ChronoMetadataStore.__allocating_init(storage:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ChronoMetadataStore.init(storage:corruptionHandler:)(a1, a2, a3);
  return v6;
}

uint64_t *ChronoMetadataStore.init(storage:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for SQLDatabase.Storage(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v3[17] = v11;
  sub_1BF4A63E4(a1, v10, type metadata accessor for SQLDatabase.Storage);
  v14 = sub_1BF3E8ACC(v10, 2, &unk_1F3DED560, a2, a3, v13);
  if (v4)
  {
    sub_1BF4A644C(a1, type metadata accessor for SQLDatabase.Storage);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v14;
    sub_1BF4A644C(a1, type metadata accessor for SQLDatabase.Storage);
    v3[2] = v15;
    type metadata accessor for ChronoMetadataStore.ExtensionStore();
    v16 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[3] = v16;
    type metadata accessor for ChronoMetadataStore.RemoteExtensionStore();
    v17 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[4] = v17;
    type metadata accessor for ChronoMetadataStore.ConfiguredWidgetStore();
    v18 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[5] = v18;
    type metadata accessor for ChronoMetadataStore.HostConfigurationStore();
    v19 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[6] = v19;
    type metadata accessor for ChronoMetadataStore.PreviewConfigurationStore();
    v20 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[7] = v20;
    type metadata accessor for ChronoMetadataStore.StateReplicatorDeviceMetadataStore();
    v21 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[8] = v21;
    type metadata accessor for ChronoMetadataStore.StateReplicatorRecordMetadataStore();
    v22 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[9] = v22;
    type metadata accessor for ChronoMetadataStore.StateReplicatorPairingRelationshipStore();
    v23 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[10] = v23;
    type metadata accessor for ChronoMetadataStore.ReloadStateStore();
    v24 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[11] = v24;
    type metadata accessor for ChronoMetadataStore.RemoteActivitySubscriptionStore();
    v25 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[12] = v25;
    type metadata accessor for ChronoMetadataStore.RemoteActivityArchiveBudgetStore();
    v26 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[13] = v26;
    type metadata accessor for ChronoMetadataStore.PushTokenStore();
    v27 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[14] = v27;
    type metadata accessor for ChronoMetadataStore.PushSubscriptionStore();
    v28 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[15] = v28;
    type metadata accessor for ChronoMetadataStore.PublicTokenStore();
    v29 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[16] = v29;
  }

  return v3;
}

void *ChronoMetadataStore.deinit()
{
  v1 = v0;
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  v2 = *(v0 + 16);

  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  sub_1BF3E4F48(v3, 0xD00000000000001BLL, 0x80000001BF4F93C0);

  [*(v2 + 32) close];

  return v1;
}

uint64_t ChronoMetadataStore.__deallocating_deinit()
{
  ChronoMetadataStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF48B2FC()
{
  v0 = MEMORY[0x1E69E7CC0];
  v16 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](80);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v1 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4FDCC0);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000023, 0x80000001BF4FDCE0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  v17 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](120);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FDD10);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4FDC60);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FDC80);
  v11 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x4920455441455243, 0xED0000205845444ELL);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x202020200A4E4F20, 0xE800000000000000);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](15145, 0xE200000000000000);
  sub_1BF3E4F48(v16, 0, 0xE000000000000000);

  if (!v18)
  {
    sub_1BF3E4F48(v17, 0, 0xE000000000000000);

    sub_1BF3E4F48(v11, 0, 0xE000000000000000);
  }
}

uint64_t sub_1BF48B860()
{
  v0 = MEMORY[0x1E69E7CC0];
  v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](11);
  MEMORY[0x1BFB58C90](0x444E4920504F5244, 0xEB00000000205845);
  v1 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v1);

  v20 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x4920455441455243, 0xED0000205845444ELL);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A4E4F20, 0xE800000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](15145, 0xE200000000000000);
  v19 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](199);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FDBD0);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FDBD0);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000045, 0x80000001BF4FDBF0);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FDC40);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4FDC60);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FDC80);
  v17 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x4920455441455243, 0xED0000205845444ELL);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x202020200A4E4F20, 0xE800000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](15145, 0xE200000000000000);
  sub_1BF3E4F48(v18, 0, 0xE000000000000000);

  if (v21)
  {
  }

  else
  {
    sub_1BF3E4F48(v20, 0, 0xE000000000000000);

    sub_1BF3E4F48(v19, 0, 0xE000000000000000);

    sub_1BF3E4F48(v17, 0, 0xE000000000000000);
  }
}

uint64_t sub_1BF48BEF8()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](60);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B50);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FDB80);
  v4 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](25);
  MEMORY[0x1BFB58C90](0x4144505520202020, 0xEB00000000204554);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x544553202020200ALL, 0xE900000000000020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x3B31203D20, 0xE500000000000000);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v8)
  {

    sub_1BF3E4F48(v4, 0, 0xE000000000000000);
  }
}

uint64_t sub_1BF48C188()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](25);
  MEMORY[0x1BFB58C90](0x4144505520202020, 0xEB00000000204554);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x544553202020200ALL, 0xE900000000000020);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x3B31203D20, 0xE500000000000000);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF48C2F4()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](60);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B50);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FDB80);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF48C480()
{
  v0 = MEMORY[0x1E69E7CC0];
  v24 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](61);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v1 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD000000000000021, 0x80000001BF4FDA10);
  v23 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](200);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD00000000000003CLL, 0x80000001BF4FD980);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4FD9C0);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x3B29202020200A29, 0xE800000000000000);
  v22 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](470);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0xD0000000000000C8, 0x80000001BF4FDA40);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FDB10);
  v17 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FDB10);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v19 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0xD000000000000041, 0x80000001BF4FDB30);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x3B29202020200A29, 0xE800000000000000);
  sub_1BF3E4F48(v24, 0, 0xE000000000000000);

  if (!v25)
  {
    sub_1BF3E4F48(v23, 0, 0xE000000000000000);

    sub_1BF3E4F48(v22, 0, 0xE000000000000000);
  }
}

uint64_t sub_1BF48CBBC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](62);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD00000000000002ELL, 0x80000001BF4FD9E0);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF48CD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](47);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B50);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x554E205458455420, 0xEF3B454C42414C4CLL);
  sub_1BF3E4F48(v6, 0, 0xE000000000000000);

  if (!v5)
  {
  }

  return result;
}

uint64_t sub_1BF48CEA0()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](111);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FD800);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FD960);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FD830);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF48D0EC()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](12);
  MEMORY[0x1BFB58C90](0x42415420504F5244, 0xEB0000000020454CLL);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v14 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](226);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD00000000000003CLL, 0x80000001BF4FD980);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4FD9C0);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x3B29202020200A29, 0xE800000000000000);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v15)
  {

    sub_1BF3E4F48(v14, 0, 0xE000000000000000);
  }
}

uint64_t sub_1BF48D554()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](12);
  MEMORY[0x1BFB58C90](0x42415420504F5244, 0xEB0000000020454CLL);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v4 = sub_1BF3D871C(v1);
  MEMORY[0x1BFB58C40](111);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FD800);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FD960);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FD830);
  sub_1BF3E4F48(v2, 0, 0xE000000000000000);

  if (!v0)
  {

    sub_1BF3E4F48(v4, 0, 0xE000000000000000);
  }
}

uint64_t sub_1BF48D870()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](37);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD000000000000019, 0x80000001BF4FD940);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF48D984()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](38);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD00000000000001ALL, 0x80000001BF4FD920);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF48DA98()
{
  v0 = MEMORY[0x1E69E7CC0];
  v8 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](39);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v1 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4FD850);
  v11 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](41);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD00000000000001DLL, 0x80000001BF4FD870);
  v10 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](52);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000028, 0x80000001BF4FD890);
  v9 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](52);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000028, 0x80000001BF4FD8C0);
  v5 = sub_1BF3D871C(v0);
  MEMORY[0x1BFB58C40](45);
  MEMORY[0x1BFB58C90](0x4154205245544C41, 0xEC00000020454C42);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000021, 0x80000001BF4FD8F0);
  sub_1BF3E4F48(v8, 0, 0xE000000000000000);

  if (v12)
  {
  }

  else
  {
    sub_1BF3E4F48(v11, 0, 0xE000000000000000);

    sub_1BF3E4F48(v10, 0, 0xE000000000000000);

    sub_1BF3E4F48(v9, 0, 0xE000000000000000);

    sub_1BF3E4F48(v5, 0, 0xE000000000000000);
  }
}

uint64_t sub_1BF48DF8C()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](69);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FD800);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FD830);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF48E134(void *a1)
{
  result = sub_1BF4C2EFC();
  if (!v1)
  {
    return sub_1BF414430();
  }

  return result;
}

uint64_t sub_1BF48E1BC(uint64_t *a1, void *a2, uint64_t a3)
{
  v64 = a3;
  v66 = a2;
  v63 = sub_1BF4E7334();
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v74 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1BF4E6E14();
  v5 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_1BF4E92F4();
  v11 = sub_1BF48063C(v9, v10, v8);
  v13 = v12;
  v15 = v14;
  v16 = ~v14;

  if (v16)
  {
    sub_1BF429594(v11, v13, v15, &v71);
    sub_1BF3DB1FC(v11, v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
    swift_dynamicCast();
    v61 = v69;
    v62 = v70;
    v18 = sub_1BF4E92F4();
    v20 = sub_1BF48063C(v18, v19, v8);
    v22 = v21;
    v24 = v23;
    v25 = ~v23;

    if (v25)
    {
      sub_1BF429594(v20, v22, v24, &v71);
      sub_1BF3DB1FC(v20, v22, v24);
      v26 = swift_dynamicCast();
      v27 = v69;
      v28 = v70;
      *&v71 = 40;
      *(&v71 + 1) = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v26);
      *(&v58 - 2) = &v71;

      v29 = v68;
      v31 = sub_1BF49DA68(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF4A655C, (&v58 - 4), v27, v28, v30);
      v32 = *(v31 + 16);
      if (v32)
      {
        if (v32 != 1)
        {
          v68 = v29;
          v34 = *(v31 + 32);
          v33 = *(v31 + 40);
          v35 = *(v31 + 56);
          v58 = *(v31 + 48);
          v59 = v33;
          v60 = *(v31 + 64);
          v37 = *(v31 + 80);
          v36 = *(v31 + 88);

          v71 = v60;
          v72 = v37;
          v73 = v36;
          sub_1BF4E6DF4();
          sub_1BF4A65B4();
          sub_1BF4E9124();
          (*(v5 + 8))(v7, v65);

          v38 = sub_1BF4E88E4();

          v39 = [v66 dateFromString_];

          if (v39)
          {

            v27 = v74;
            sub_1BF4E72E4();

            v7 = v63;
            v5 = v64;
          }

          else
          {
            v66 = v34;
            sub_1BF4E7214();
            if (qword_1EDC9D460 != -1)
            {
              swift_once();
            }

            v40 = sub_1BF4E7B54();
            __swift_project_value_buffer(v40, qword_1EDCA6898);

            v41 = sub_1BF4E7B34();
            v42 = sub_1BF4E8E64();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              *&v71 = v44;
              *v43 = 136446210;
              v45 = sub_1BF38D65C(v27, v28, &v71);

              *(v43 + 4) = v45;
              _os_log_impl(&dword_1BF389000, v41, v42, "Error parsing date from version string: %{public}s", v43, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v44);
              MEMORY[0x1BFB5A5D0](v44, -1, -1);
              MEMORY[0x1BFB5A5D0](v43, -1, -1);
            }

            else
            {
            }

            v7 = v63;
            v5 = v64;
            v27 = v74;
            v34 = v66;
          }

          v46 = MEMORY[0x1BFB58C30](v34, v59, v58, v35);
          v48 = v47;

          *&v71 = v46;
          *(&v71 + 1) = v48;
          MEMORY[0x1BFB58C90](40, 0xE100000000000000);
          if (qword_1EDC9F0D8 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_17:
      swift_once();
LABEL_14:
      v49 = qword_1EDC9F0E0;
      v50 = sub_1BF4E7254();
      v51 = [v49 stringFromDate_];

      v52 = sub_1BF4E8914();
      v54 = v53;

      MEMORY[0x1BFB58C90](v52, v54);

      MEMORY[0x1BFB58C90](41, 0xE100000000000000);
      v55 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v71 = *v5;
      *v5 = 0x8000000000000000;
      sub_1BF3D76F4(v55, *(&v55 + 1), v61, v62, isUniquelyReferenced_nonNull_native, v57);

      *v5 = v71;
      return (*(v67 + 8))(v27, v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BF48E838(uint64_t *a1)
{
  v1 = a1[1];
  v26 = *a1;
  v3 = a1[2];
  v2 = a1[3];
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](25);
  MEMORY[0x1BFB58C90](0x20657461647075, 0xE700000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x207465730ALL, 0xE500000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  swift_bridgeObjectRetain_n();
  v8 = sub_1BF3D8148(v3, v2, v7);
  v10 = v9;
  v12 = v11;
  v13 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v8, v10, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v8, v10, v12, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v15);

  sub_1BF3D88B8(v8, v10, v12);

  MEMORY[0x1BFB58C90](0x2065726568770ALL, 0xE700000000000000);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  swift_bridgeObjectRetain_n();
  v18 = sub_1BF3D8148(v26, v1, v17);
  v20 = v19;
  v22 = v21;
  v23 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v23);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v18, v20, v22);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v18, v20, v22, 0x676E69646E696240, 0xE800000000000000, v24, v25);

  sub_1BF3D88B8(v18, v20, v22);

  sub_1BF3E4F48(v4, 0, 0xE000000000000000);

  if (!v27)
  {
  }
}

uint64_t sub_1BF48EBD0()
{
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF4E7B54();
  __swift_project_value_buffer(v0, qword_1EDCA6898);
  v1 = sub_1BF4E7B34();
  v2 = sub_1BF4E8E54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF389000, v1, v2, "MutableStore invalidated.", v3, 2u);
    MEMORY[0x1BFB5A5D0](v3, -1, -1);
  }

  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();

  return swift_weakAssign();
}

uint64_t ChronoMetadataStore.MutableStore.deinit()
{

  return v0;
}

uint64_t ChronoMetadataStore.MutableStore.__deallocating_deinit()
{
  ChronoMetadataStore.MutableStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF48EE44()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](85);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FCD40);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x200A45524548570ALL, 0xEB00000000202020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](807419168, 0xE400000000000000);
  v11 = 0xE000000000000000;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_35;
  }

  v12 = sub_1BF3E4F48(v1, 0, 0xE000000000000000);
  if (v0)
  {

    return v11;
  }

  v13 = v12;

  v63 = sub_1BF3DABCC(MEMORY[0x1E69E7CC0]);
  v14 = v13;
  v15 = v13[2];
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = 0;
  v66 = (v13 + 4);
  v64 = v13[2];
  v65 = v13;
  v62 = v15 - 1;
  do
  {
    v17 = v16;
    while (1)
    {
      if (v17 >= v14[2])
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        while (1)
        {
LABEL_35:
          sub_1BF4E9464();
          __break(1u);
        }
      }

      v18 = *&v66[8 * v17];

      v19 = sub_1BF4E92F4();
      v21 = sub_1BF48063C(v19, v20, v18);
      v23 = v22;
      v25 = v24;
      v26 = ~v24;

      if (!v26)
      {
        goto LABEL_35;
      }

      v27 = sub_1BF4244EC(v21, v23, v25);
      v29 = v28;
      sub_1BF3DB1FC(v21, v23, v25);
      if (!v29)
      {
        goto LABEL_35;
      }

      v30 = sub_1BF4E92F4();
      v32 = sub_1BF48063C(v30, v31, v18);
      v34 = v33;
      v36 = v35;
      v37 = ~v35;

      if (v37)
      {
        v38 = sub_1BF4244E0(v32, v34, v36);
        v40 = v39;
        sub_1BF3DB1FC(v32, v34, v36);
        if ((v40 & 1) == 0 && !v38)
        {
          break;
        }
      }

      ++v17;

      v14 = v65;
      if (v64 == v17)
      {
        goto LABEL_30;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = sub_1BF3CD5D0(v27, v29, v42);
    v45 = v63[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_33;
    }

    v48 = v43;
    if (v63[3] >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v43 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1BF4A43E8();
        if ((v48 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_21:

      goto LABEL_25;
    }

    sub_1BF4A08EC(v47, isUniquelyReferenced_nonNull_native);
    v50 = sub_1BF3CD5D0(v27, v29, v49);
    if ((v48 & 1) != (v51 & 1))
    {
      result = sub_1BF4E9794();
      __break(1u);
      return result;
    }

    v44 = v50;
    if (v48)
    {
      goto LABEL_21;
    }

LABEL_23:
    v63[(v44 >> 6) + 8] |= 1 << v44;
    v52 = (v63[6] + 16 * v44);
    *v52 = v27;
    v52[1] = v29;
    *(v63[7] + 8 * v44) = MEMORY[0x1E69E7CC0];
    v53 = v63[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_34;
    }

    v63[2] = v55;
LABEL_25:
    v56 = v63[7];
    v57 = *(v56 + 8 * v44);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 8 * v44) = v57;
    if ((v58 & 1) == 0)
    {
      v57 = sub_1BF4321E4(0, *(v57 + 2) + 1, 1, v57);
      *(v56 + 8 * v44) = v57;
    }

    v60 = *(v57 + 2);
    v59 = *(v57 + 3);
    if (v60 >= v59 >> 1)
    {
      v57 = sub_1BF4321E4((v59 > 1), v60 + 1, 1, v57);
      *(v56 + 8 * v44) = v57;
    }

    v16 = v17 + 1;
    *(v57 + 2) = v60 + 1;
    *&v57[8 * v60 + 32] = v18;
    v14 = v65;
  }

  while (v62 != v17);
LABEL_30:

  v11 = sub_1BF4A5180(v63);

  return v11;
}

void sub_1BF48F56C(uint64_t a1@<X8>)
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](98);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FCD40);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x200A45524548570ALL, 0xEB00000000202020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v11 = sub_1BF4E7794();
  v13 = v12;

  v15 = sub_1BF3D8148(v11, v13, v14);
  v17 = v16;
  v19 = v18;
  v20 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v15, v17, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v15, v17, v19, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v22);

  sub_1BF3D88B8(v15, v17, v19);

  MEMORY[0x1BFB58C90](0x2020200A444E4120, 0xE900000000000020);
  v23 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v23);

  MEMORY[0x1BFB58C90](807419168, 0xE400000000000000);
  if (swift_weakLoadStrong())
  {
    v24 = sub_1BF3E4F48(v1, 0, 0xE000000000000000);
    if (v29)
    {
    }

    else
    {
      v25 = v24;

      if (*(v25 + 16))
      {
        sub_1BF48FB24(v25, a1);

        v26 = type metadata accessor for ExtensionMetadata(0);
        (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
      }

      else
      {
        v27 = type metadata accessor for ExtensionMetadata(0);
        (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
      }
    }
  }

  else
  {
    sub_1BF4E9464();
    __break(1u);
  }
}

int *sub_1BF48FB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  MEMORY[0x1EEE9AC00](v5);
  v211 = &v204 - v8;
  v9 = *(a1 + 16);
  if (v9 && (v208 = v7, v209 = v6, v207 = a2, v212 = v2, v12 = *(a1 + 32), v11 = a1 + 32, v10 = v12, , v13 = sub_1BF4E92F4(), v15 = sub_1BF48063C(v13, v14, v12), v17 = v16, v19 = v18, v20 = ~v18, , , v20) && (v218 = sub_1BF4244EC(v15, v17, v19), v22 = v21, sub_1BF3DB1FC(v15, v17, v19), (v215 = v22) != 0) && (, v23 = sub_1BF4E92F4(), v25 = sub_1BF48063C(v23, v24, v10), v27 = v26, v29 = v28, v30 = ~v28, , , v30) && (v217 = sub_1BF4244EC(v25, v27, v29), v32 = v31, sub_1BF3DB1FC(v25, v27, v29), (v214 = v32) != 0))
  {

    v33 = sub_1BF4E92F4();
    v35 = sub_1BF48063C(v33, v34, v10);
    v37 = v36;
    v39 = v38;
    v40 = ~v38;

    if (v40)
    {
      v213 = sub_1BF4244EC(v35, v37, v39);
      v216 = v41;
      sub_1BF3DB1FC(v35, v37, v39);
    }

    else
    {
      v213 = 0;
      v216 = 0;
    }

    v42 = 0;
    v219 = v11;
    v221 = v9;
    while (v42 != v9)
    {
      v43 = *(v11 + 8 * v42);
      v220 = v42 + 1;

      v44 = sub_1BF4E92F4();
      v46 = v45;
      v47 = (v43 + 64);
      v48 = *(v43 + 16) + 1;
      do
      {
        if (!--v48)
        {

          __break(1u);
LABEL_160:

          __break(1u);
LABEL_161:

          __break(1u);
LABEL_162:

          __break(1u);
LABEL_163:

          __break(1u);
LABEL_164:

          __break(1u);
LABEL_165:

LABEL_166:

          __break(1u);
          goto LABEL_167;
        }

        v50 = *(v47 - 2);
        v49 = *(v47 - 1);
        v51 = *v47;
        if (*(v47 - 4) == v44 && *(v47 - 3) == v46)
        {
          break;
        }

        v47 += 40;
      }

      while ((sub_1BF4E9734() & 1) == 0);

      sub_1BF3D8840(v50, v49, v51);

      v53 = sub_1BF4244EC(v50, v49, v51);
      v55 = v54;
      sub_1BF3D88B8(v50, v49, v51);
      if (!v55)
      {
        goto LABEL_160;
      }

      v11 = v219;
      if (v53 == v218 && v55 == v215)
      {

        goto LABEL_26;
      }

      v56 = sub_1BF4E9734();

      if ((v56 & 1) == 0)
      {
        goto LABEL_163;
      }

LABEL_26:
      v57 = sub_1BF4E92F4();
      v59 = sub_1BF48063C(v57, v58, v43);
      v61 = v60;
      v63 = v62;
      v64 = ~v62;

      if (!v64)
      {
        goto LABEL_161;
      }

      v65 = sub_1BF4244EC(v59, v61, v63);
      v67 = v66;
      sub_1BF3DB1FC(v59, v61, v63);
      if (!v67)
      {
        goto LABEL_162;
      }

      if (v65 != v217 || v67 != v214)
      {
        v68 = sub_1BF4E9734();

        if (v68)
        {
          goto LABEL_32;
        }

        goto LABEL_164;
      }

LABEL_32:
      v69 = sub_1BF4E92F4();
      v10 = v70;
      v71 = sub_1BF48063C(v69, v70, v43);
      v73 = v72;
      v75 = v74;
      v76 = ~v74;

      if (!v76 || (v77 = sub_1BF4244EC(v71, v73, v75), v10 = v78, sub_1BF3DB1FC(v71, v73, v75), !v10))
      {
        v9 = v221;
        if (!v216)
        {
          goto LABEL_11;
        }

        goto LABEL_166;
      }

      if (!v216)
      {
        goto LABEL_165;
      }

      v9 = v221;
      if (v77 != v213 || v10 != v216)
      {
        v79 = sub_1BF4E9734();

        if (v79)
        {
          goto LABEL_12;
        }

        __break(1u);
LABEL_40:
        v10 = &qword_1EBDD8B48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
        sub_1BF38C8B4(&qword_1EDC9D598, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940B0]);
        sub_1BF38C8B4(&qword_1EDC9D570, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940D8]);
        v9 = sub_1BF38C8B4(&qword_1EDC9D590, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940B8]);
        sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]);
        v80 = v221;
        sub_1BF4E7784();
        v81 = 0;
        v210 = MEMORY[0x1E69E7CC0];
        v204 = xmmword_1BF4ECFE0;
        while (2)
        {
          v82 = v81;
LABEL_42:
          if (v82 >= v80)
          {
            goto LABEL_148;
          }

          v81 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_149;
          }

          v83 = *(v11 + 8 * v82);

          v84 = sub_1BF4E92F4();
          v10 = v85;
          v86 = sub_1BF48063C(v84, v85, v83);
          v88 = v87;
          v90 = v89;
          v9 = ~v89;

          if (!v9 || (sub_1BF424370(v86, v88, v90, &v222), sub_1BF3DB1FC(v86, v88, v90), *(&v222 + 1) >> 60 == 15))
          {

            goto LABEL_53;
          }

          v220 = *(&v222 + 1);
          v91 = v222;
          v92 = sub_1BF4E92F4();
          v10 = v93;
          v94 = sub_1BF48063C(v92, v93, v83);
          v9 = v95;
          v97 = v96;
          v98 = ~v96;

          if (v98)
          {
            v218 = v91;
            v99 = sub_1BF4244E0(v94, v9, v97);
            v10 = v100;
            sub_1BF3DB1FC(v94, v9, v97);
            if (v10)
            {

              v101 = v218;
              goto LABEL_51;
            }

            v103 = sub_1BF4E92F4();
            v105 = sub_1BF48063C(v103, v104, v83);
            v9 = v106;
            v108 = v107;
            v109 = ~v107;

            v10 = v220;
            if (!v109)
            {

              v101 = v218;
              v102 = v10;
              goto LABEL_52;
            }

            v110 = v220;
            v215 = sub_1BF4244E0(v105, v9, v108);
            v10 = v111;
            sub_1BF3DB1FC(v105, v9, v108);
            if (v10)
            {

              v101 = v218;
              v102 = v110;
              goto LABEL_52;
            }

            v11 = v219;
            v80 = v221;
            if (v99)
            {

              v112 = v218;
              goto LABEL_64;
            }

            v10 = v218;
            if (v215)
            {

              v112 = v10;
LABEL_64:
              sub_1BF3DB210(v112, v110);
            }

            else
            {
              v215 = sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9530, &qword_1BF4F1678);
              v9 = swift_allocObject();
              *(v9 + 16) = v204;
              *(v9 + 32) = sub_1BF3901C0(0, &qword_1EDC962F0, 0x1E695DEC8);
              *(v9 + 40) = sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
              v113 = v212;
              sub_1BF4E8EC4();
              v212 = v113;
              if (v113)
              {
                (*(v208 + 8))(v211, v209);
                sub_1BF3DB210(v10, v110);
              }

              sub_1BF3DB210(v10, v110);

              if (v223)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CE8, &unk_1BF4ED970);
                if (swift_dynamicCast())
                {
                  v10 = v224;
                  if (v224)
                  {
                    v114 = v210;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v114 = sub_1BF4328DC(0, v114[2] + 1, 1, v114);
                    }

                    v117 = v114[2];
                    v116 = v114[3];
                    if (v117 >= v116 >> 1)
                    {
                      v114 = sub_1BF4328DC((v116 > 1), v117 + 1, 1, v114);
                    }

                    v114[2] = v117 + 1;
                    v210 = v114;
                    v114[v117 + 4] = v10;
                    if (v81 != v80)
                    {
                      continue;
                    }

LABEL_76:
                    v10 = v210;
                    v118 = v212;
                    v206 = sub_1BF48A044(v210);
                    v212 = v118;

                    v119 = 0;
                    v210 = MEMORY[0x1E69E7CC0];
                    while (2)
                    {
                      v120 = v119;
LABEL_78:
                      if (v120 >= v80)
                      {
                        goto LABEL_150;
                      }

                      v119 = v120 + 1;
                      if (__OFADD__(v120, 1))
                      {
                        goto LABEL_151;
                      }

                      v121 = *(v11 + 8 * v120);

                      v122 = sub_1BF4E92F4();
                      v10 = sub_1BF48063C(v122, v123, v121);
                      v125 = v124;
                      v127 = v126;
                      v9 = ~v126;

                      if (!v9 || (sub_1BF424370(v10, v125, v127, &v222), sub_1BF3DB1FC(v10, v125, v127), *(&v222 + 1) >> 60 == 15))
                      {

                        goto LABEL_89;
                      }

                      v220 = *(&v222 + 1);
                      v128 = v222;
                      v129 = sub_1BF4E92F4();
                      v10 = v130;
                      v131 = sub_1BF48063C(v129, v130, v121);
                      v133 = v132;
                      v9 = v134;
                      v135 = ~v134;

                      if (v135)
                      {
                        v218 = v128;
                        v136 = sub_1BF4244E0(v131, v133, v9);
                        v138 = v137;
                        sub_1BF3DB1FC(v131, v133, v9);
                        if (v138)
                        {

                          v139 = v218;
                          goto LABEL_87;
                        }

                        v141 = sub_1BF4E92F4();
                        v143 = sub_1BF48063C(v141, v142, v121);
                        v145 = v144;
                        v9 = v146;
                        v10 = ~v146;

                        v147 = v220;
                        if (!v10)
                        {

                          v139 = v218;
                          v140 = v147;
                          goto LABEL_88;
                        }

                        v10 = v220;
                        v215 = sub_1BF4244E0(v143, v145, v9);
                        v149 = v148;
                        sub_1BF3DB1FC(v143, v145, v9);
                        if (v149)
                        {

                          v139 = v218;
                          v140 = v10;
                          goto LABEL_88;
                        }

                        v80 = v221;
                        v9 = v218;
                        if (v136)
                        {

                          sub_1BF3DB210(v9, v10);
                          v11 = v219;
                        }

                        else
                        {
                          v11 = v219;
                          if (v215 == 2)
                          {
                            sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9530, &qword_1BF4F1678);
                            v150 = swift_allocObject();
                            *(v150 + 16) = v204;
                            *(v150 + 32) = sub_1BF3901C0(0, &qword_1EDC962F0, 0x1E695DEC8);
                            *(v150 + 40) = sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
                            v151 = v212;
                            sub_1BF4E8EC4();
                            v212 = v151;
                            if (v151)
                            {
                              goto LABEL_154;
                            }

                            sub_1BF3DB210(v9, v10);

                            if (v223)
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9090, &qword_1BF4F5400);
                              if (swift_dynamicCast())
                              {
                                v152 = v224;
                                if (v224)
                                {
                                  v153 = v210;
                                  v154 = swift_isUniquelyReferenced_nonNull_native();
                                  if ((v154 & 1) == 0)
                                  {
                                    v153 = sub_1BF4328B8(0, v153[2] + 1, 1, v153);
                                  }

                                  v156 = v153[2];
                                  v155 = v153[3];
                                  v10 = v156 + 1;
                                  if (v156 >= v155 >> 1)
                                  {
                                    v153 = sub_1BF4328B8((v155 > 1), v156 + 1, 1, v153);
                                  }

                                  v153[2] = v10;
                                  v210 = v153;
                                  v153[v156 + 4] = v152;
                                  if (v119 == v80)
                                  {
LABEL_111:
                                    v10 = v210;
                                    v157 = v212;
                                    v205 = sub_1BF48A33C(v210);
                                    v212 = v157;

                                    v158 = 0;
                                    v210 = MEMORY[0x1E69E7CC0];
                                    while (2)
                                    {
                                      v159 = v158;
LABEL_113:
                                      if (v159 >= v80)
                                      {
                                        goto LABEL_152;
                                      }

                                      v158 = v159 + 1;
                                      if (__OFADD__(v159, 1))
                                      {
                                        goto LABEL_153;
                                      }

                                      v160 = *(v11 + 8 * v159);

                                      v161 = sub_1BF4E92F4();
                                      v10 = sub_1BF48063C(v161, v162, v160);
                                      v164 = v163;
                                      v166 = v165;
                                      v9 = ~v165;

                                      if (!v9 || (sub_1BF424370(v10, v164, v166, &v222), sub_1BF3DB1FC(v10, v164, v166), *(&v222 + 1) >> 60 == 15))
                                      {

                                        goto LABEL_124;
                                      }

                                      v220 = *(&v222 + 1);
                                      v167 = v222;
                                      v168 = sub_1BF4E92F4();
                                      v10 = v169;
                                      v170 = sub_1BF48063C(v168, v169, v160);
                                      v172 = v171;
                                      v9 = v173;
                                      v174 = ~v173;

                                      if (v174)
                                      {
                                        v218 = v167;
                                        v175 = sub_1BF4244E0(v170, v172, v9);
                                        v177 = v176;
                                        sub_1BF3DB1FC(v170, v172, v9);
                                        if (v177)
                                        {

                                          v178 = v218;
                                          goto LABEL_122;
                                        }

                                        v180 = sub_1BF4E92F4();
                                        v182 = sub_1BF48063C(v180, v181, v160);
                                        v184 = v183;
                                        v9 = v185;
                                        v10 = ~v185;

                                        v186 = v220;
                                        if (!v10)
                                        {

                                          v178 = v218;
                                          v179 = v186;
                                          goto LABEL_123;
                                        }

                                        v10 = v220;
                                        v215 = sub_1BF4244E0(v182, v184, v9);
                                        v188 = v187;
                                        sub_1BF3DB1FC(v182, v184, v9);
                                        if (v188)
                                        {

                                          v178 = v218;
                                          v179 = v10;
                                          goto LABEL_123;
                                        }

                                        v80 = v221;
                                        v9 = v218;
                                        if (v175)
                                        {

                                          sub_1BF3DB210(v9, v10);
                                          v11 = v219;
                                        }

                                        else
                                        {
                                          v11 = v219;
                                          if (v215 == 1)
                                          {
                                            sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
                                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9530, &qword_1BF4F1678);
                                            v189 = swift_allocObject();
                                            *(v189 + 16) = v204;
                                            *(v189 + 32) = sub_1BF3901C0(0, &qword_1EDC962F0, 0x1E695DEC8);
                                            *(v189 + 40) = sub_1BF3901C0(0, &qword_1EDC96310, 0x1E6994358);
                                            v190 = v212;
                                            sub_1BF4E8EC4();
                                            v212 = v190;
                                            if (v190)
                                            {
                                              (*(v208 + 8))(v211, v209);

                                              sub_1BF3DB210(v9, v10);

                                              goto LABEL_156;
                                            }

                                            sub_1BF3DB210(v9, v10);

                                            if (v223)
                                            {
                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A28, &qword_1BF4EBFF8);
                                              if (swift_dynamicCast())
                                              {
                                                v191 = v224;
                                                if (v224)
                                                {
                                                  v192 = v210;
                                                  v193 = swift_isUniquelyReferenced_nonNull_native();
                                                  if ((v193 & 1) == 0)
                                                  {
                                                    v192 = sub_1BF432894(0, v192[2] + 1, 1, v192);
                                                  }

                                                  v195 = v192[2];
                                                  v194 = v192[3];
                                                  v10 = v195 + 1;
                                                  if (v195 >= v194 >> 1)
                                                  {
                                                    v192 = sub_1BF432894((v194 > 1), v195 + 1, 1, v192);
                                                  }

                                                  v192[2] = v10;
                                                  v210 = v192;
                                                  v192[v195 + 4] = v191;
                                                  if (v158 == v80)
                                                  {
LABEL_146:
                                                    v196 = sub_1BF48A634(v210);

                                                    v197 = v207;
                                                    (*(v208 + 32))(v207, v211, v209);
                                                    result = type metadata accessor for ExtensionMetadata(0);
                                                    v199 = (v197 + result[8]);
                                                    v200 = (v197 + result[5]);
                                                    v201 = v214;
                                                    *v200 = v217;
                                                    v200[1] = v201;
                                                    v202 = v216;
                                                    *v199 = v213;
                                                    v199[1] = v202;
                                                    v203 = v205;
                                                    *(v197 + result[6]) = v206;
                                                    *(v197 + result[9]) = v196;
                                                    *(v197 + result[7]) = v203;
                                                    return result;
                                                  }

                                                  continue;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              sub_1BF38C9B4(&v222, &qword_1EBDD8AD0, &unk_1BF4F53F0);
                                            }
                                          }

                                          else
                                          {

                                            sub_1BF3DB210(v9, v10);
                                          }
                                        }
                                      }

                                      else
                                      {

                                        v178 = v167;
LABEL_122:
                                        v179 = v220;
LABEL_123:
                                        sub_1BF3DB210(v178, v179);
                                        v11 = v219;
LABEL_124:
                                        v80 = v221;
                                      }

                                      break;
                                    }

                                    ++v159;
                                    if (v158 == v80)
                                    {
                                      goto LABEL_146;
                                    }

                                    goto LABEL_113;
                                  }

                                  continue;
                                }
                              }
                            }

                            else
                            {
                              sub_1BF38C9B4(&v222, &qword_1EBDD8AD0, &unk_1BF4F53F0);
                            }
                          }

                          else
                          {

                            sub_1BF3DB210(v9, v10);
                          }
                        }
                      }

                      else
                      {

                        v139 = v128;
LABEL_87:
                        v140 = v220;
LABEL_88:
                        sub_1BF3DB210(v139, v140);
                        v11 = v219;
LABEL_89:
                        v80 = v221;
                      }

                      break;
                    }

                    ++v120;
                    if (v119 == v80)
                    {
                      goto LABEL_111;
                    }

                    goto LABEL_78;
                  }
                }
              }

              else
              {
                sub_1BF38C9B4(&v222, &qword_1EBDD8AD0, &unk_1BF4F53F0);
              }
            }
          }

          else
          {

            v101 = v91;
LABEL_51:
            v102 = v220;
LABEL_52:
            sub_1BF3DB210(v101, v102);
            v11 = v219;
LABEL_53:
            v80 = v221;
          }

          break;
        }

        ++v82;
        if (v81 == v80)
        {
          goto LABEL_76;
        }

        goto LABEL_42;
      }

LABEL_11:

LABEL_12:
      v42 = v220;
      if (v220 == v9)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    (*(v208 + 8))(v211, v209);

    sub_1BF3DB210(v9, v10);

LABEL_156:
  }

  else
  {
LABEL_167:
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF491068(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1BF4A63E4(a1, &v7 - v3, type metadata accessor for ExtensionMetadata);
  v5 = type metadata accessor for ExtensionMetadata(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1BF49117C(v4, a1);
  return sub_1BF38C9B4(v4, &qword_1EBDD9318, &qword_1BF4F09A8);
}

uint64_t sub_1BF49117C(char *a1, char *a2)
{
  v434 = a2;
  v447 = *MEMORY[0x1E69E9840];
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v424 = *(v425 - 8);
  MEMORY[0x1EEE9AC00](v425);
  v423 = &v417 - v4;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v428 = *(v436 - 8);
  MEMORY[0x1EEE9AC00](v436);
  v421 = &v417 - v5;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99C8, &qword_1BF4F4E68);
  MEMORY[0x1EEE9AC00](v426);
  v7 = &v417 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v427 = &v417 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v430 = &v417 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v431 = &v417 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v417 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v417 - v18;
  v20 = type metadata accessor for ExtensionMetadata(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v420 = &v417 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v422 = &v417 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v435 = &v417 - v26;
  v429 = v2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_68;
  }

  v28 = Strong;
  v29 = *(Strong + 24);
  os_unfair_lock_lock(*(v29 + 16));
  v30 = *(v28 + 64);
  os_unfair_lock_unlock(*(v29 + 16));

  if (!v30)
  {
    __break(1u);
    goto LABEL_57;
  }

  v34 = *(v21 + 48);
  v33 = v21 + 48;
  v32 = v34;
  v35 = v34(a1, 1, v20);
  v432 = v20;
  v433 = a1;
  v36 = v20;
  if (v35 == 1)
  {
LABEL_12:
    sub_1BF38C94C(a1, v19, &qword_1EBDD9318, &qword_1BF4F09A8);
    if (v32(v19, 1, v36) == 1)
    {
      sub_1BF38C9B4(v19, &qword_1EBDD9318, &qword_1BF4F09A8);
      v443 = 0;
      v444 = 0xE000000000000000;
      v58 = MEMORY[0x1E69E7CC0];
      v59 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](23);
      MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
      v60 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v60);

      MEMORY[0x1BFB58C90](0x20455245485720, 0xE700000000000000);
      v61 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v61);

      MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
      v62 = sub_1BF4E7794();
      v64 = v63;

      v66 = sub_1BF3D8148(v62, v64, v65);
      v68 = v67;
      v70 = v69;
      *&v440 = 0x676E69646E696240;
      *(&v440 + 1) = 0xE800000000000000;
      v437 = *(v59 + 16) + 1;
      v71 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v71);

      v73 = *(&v440 + 1);
      v72 = v440;
      MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
      sub_1BF3D8840(v66, v68, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v440 = v59;
      sub_1BF3D6680(v66, v68, v70, v72, v73, isUniquelyReferenced_nonNull_native, v75);

      sub_1BF3D88B8(v66, v68, v70);

      v30 = v440;
      v20 = v443;
      v16 = v444;
      v76 = sub_1BF432A34(0, 1, 1, v58);
      a1 = v76;
      v7 = *(v76 + 16);
      v31 = *(v76 + 24);
      v29 = v7 + 1;
      if (v7 < v31 >> 1)
      {
LABEL_14:
        *(a1 + 2) = v29;
        v77 = &a1[24 * v7];
        *(v77 + 4) = v30;
        *(v77 + 5) = v20;
        *(v77 + 6) = v16;
        v78 = v433;
LABEL_52:
        MEMORY[0x1EEE9AC00](v76);
        v415 = v78;
        v416 = v411;
        sub_1BF489F88(sub_1BF4A5588, (&v417 - 4), a1);
      }

LABEL_57:
      v76 = sub_1BF432A34((v31 > 1), v29, 1, a1);
      a1 = v76;
      goto LABEL_14;
    }

    v79 = v435;
    sub_1BF4A64AC(v19, v435, type metadata accessor for ExtensionMetadata);
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v80 = sub_1BF4E7B54();
    __swift_project_value_buffer(v80, qword_1EDCA6898);
    v81 = v422;
    sub_1BF4A63E4(v79, v422, type metadata accessor for ExtensionMetadata);
    v82 = sub_1BF4E7B34();
    v83 = sub_1BF4E8E84();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v443 = v85;
      *v84 = 136446210;
      sub_1BF4A63E4(v81, v420, type metadata accessor for ExtensionMetadata);
      v86 = sub_1BF4E8994();
      v88 = v87;
      sub_1BF4A644C(v81, type metadata accessor for ExtensionMetadata);
      v89 = sub_1BF38D65C(v86, v88, &v443);

      *(v84 + 4) = v89;
      _os_log_impl(&dword_1BF389000, v82, v83, "inserting metadata %{public}s into store.", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x1BFB5A5D0](v85, -1, -1);
      MEMORY[0x1BFB5A5D0](v84, -1, -1);
    }

    else
    {

      sub_1BF4A644C(v81, type metadata accessor for ExtensionMetadata);
    }

    v443 = 0;
    v444 = 0xE000000000000000;
    v90 = MEMORY[0x1E69E7CC0];
    v91 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](23);
    MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
    v92 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v92);

    MEMORY[0x1BFB58C90](0x20455245485720, 0xE700000000000000);
    v93 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v93);

    MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
    v94 = sub_1BF4E7794();
    v96 = v95;

    v98 = sub_1BF3D8148(v94, v96, v97);
    v100 = v99;
    v102 = v101;
    *&v440 = 0x676E69646E696240;
    *(&v440 + 1) = 0xE800000000000000;
    v437 = *(v91 + 16) + 1;
    v103 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v103);

    v104 = v440;
    MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
    sub_1BF3D8840(v98, v100, v102);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    *&v440 = v91;
    sub_1BF3D6680(v98, v100, v102, v104, *(&v104 + 1), v105, v106);

    sub_1BF3D88B8(v98, v100, v102);

    v107 = v440;
    v108 = v443;
    v109 = v444;
    v110 = sub_1BF432A34(0, 1, 1, v90);
    v112 = *(v110 + 2);
    v111 = *(v110 + 3);
    if (v112 >= v111 >> 1)
    {
      v110 = sub_1BF432A34((v111 > 1), v112 + 1, 1, v110);
    }

    *(v110 + 2) = v112 + 1;
    v113 = &v110[24 * v112];
    *(v113 + 4) = v107;
    *(v113 + 5) = v108;
    *(v113 + 6) = v109;
    v443 = 0;
    v444 = 0xE000000000000000;
    v114 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](23);
    MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
    v115 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v115);

    MEMORY[0x1BFB58C90](0x20455245485720, 0xE700000000000000);
    v116 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v116);

    MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
    v117 = v423;
    sub_1BF4E77C4();
    v118 = v425;
    v119 = sub_1BF4E76B4();
    v121 = v120;
    (*(v424 + 8))(v117, v118);

    v123 = sub_1BF3D8148(v119, v121, v122);
    v125 = v124;
    v127 = v126;
    *&v440 = 0x676E69646E696240;
    *(&v440 + 1) = 0xE800000000000000;
    v437 = *(v114 + 16) + 1;
    v128 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v128);

    v129 = v440;
    MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
    sub_1BF3D8840(v123, v125, v127);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *&v440 = v114;
    sub_1BF3D6680(v123, v125, v127, v129, *(&v129 + 1), v130, v131);

    sub_1BF3D88B8(v123, v125, v127);

    v132 = v440;
    v133 = v443;
    v134 = v444;
    v136 = *(v110 + 2);
    v135 = *(v110 + 3);
    if (v136 >= v135 >> 1)
    {
      v110 = sub_1BF432A34((v135 > 1), v136 + 1, 1, v110);
    }

    *(v110 + 2) = v136 + 1;
    v434 = v110;
    v137 = &v110[24 * v136];
    *(v137 + 4) = v132;
    *(v137 + 5) = v133;
    *(v137 + 6) = v134;
    v443 = 0;
    v444 = 0xE000000000000000;
    v138 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](132);
    v437 = v443;
    v438 = v444;
    v439 = v138;
    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8850);
    v139 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v139);

    MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
    v140 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v140);

    MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
    v141 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v141);

    MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
    v142 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v142);

    MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FCD60);
    v143 = v435;
    v144 = sub_1BF4E7794();
    v146 = v145;

    v148 = sub_1BF3D8148(v144, v146, v147);
    v150 = v149;
    v152 = v151;
    v443 = 0x676E69646E696240;
    v444 = 0xE800000000000000;
    *&v440 = *(v138 + 16) + 1;
    v153 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v153);

    v154 = v443;
    v155 = v444;
    MEMORY[0x1BFB58C90](v443, v444);
    sub_1BF3D8840(v148, v150, v152);
    v156 = v439;
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v156;
    sub_1BF3D6680(v148, v150, v152, v154, v155, v157, v158);

    sub_1BF3D88B8(v148, v150, v152);

    v159 = v443;
    v439 = v443;
    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v160 = v432;
    v161 = (v143 + *(v432 + 20));
    v163 = *v161;
    v162 = v161[1];
    swift_bridgeObjectRetain_n();
    v431 = v163;
    v165 = sub_1BF3D8148(v163, v162, v164);
    v167 = v166;
    v169 = v168;
    v443 = 0x676E69646E696240;
    v444 = 0xE800000000000000;
    *&v440 = *(v159 + 16) + 1;
    v170 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v170);

    v171 = v443;
    v172 = v444;
    MEMORY[0x1BFB58C90](v443, v444);
    sub_1BF3D8840(v165, v167, v169);
    v173 = v439;
    v174 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v173;
    sub_1BF3D6680(v165, v167, v169, v171, v172, v174, v175);

    sub_1BF3D88B8(v165, v167, v169);

    v439 = v443;
    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v176 = (v435 + *(v160 + 32));
    v177 = *v176;
    v178 = v176[1];
    v430 = *v176;
    if (v178)
    {
      *(&v441 + 1) = MEMORY[0x1E69E6158];
      v442 = &off_1F3DF00A0;
      *&v440 = v177;
      *(&v440 + 1) = v178;
      sub_1BF38E610(&v440, &v443);
    }

    else
    {
      v442 = 0;
      v440 = 0u;
      v441 = 0u;
      v179 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v445 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
      v446 = &off_1F3DF0088;
      v443 = v179;
      if (*(&v441 + 1))
      {
        sub_1BF38C9B4(&v440, &qword_1EBDD99D0, &qword_1BF4F7B80);
      }
    }

    v180 = v445;
    v181 = v446;
    v182 = __swift_project_boxed_opaque_existential_1(&v443, v445);
    swift_bridgeObjectRetain_n();
    sub_1BF478C08(v182, &v437, v180, v181);
    __swift_destroy_boxed_opaque_existential_1Tm(&v443);
    MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FCD80);
    v183 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v183);

    MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FCDA0);
    v184 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v184);

    MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);

    v186 = sub_1BF3D8148(v431, v162, v185);
    v188 = v187;
    v190 = v189;
    v443 = 0x676E69646E696240;
    v444 = 0xE800000000000000;
    *&v440 = *(v439 + 16) + 1;
    v191 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v191);

    v192 = v443;
    v193 = v444;
    MEMORY[0x1BFB58C90](v443, v444);
    sub_1BF3D8840(v186, v188, v190);
    v194 = v439;
    v195 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v194;
    sub_1BF3D6680(v186, v188, v190, v192, v193, v195, v196);

    sub_1BF3D88B8(v186, v188, v190);

    v439 = v443;
    MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FCDC0);
    v197 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v197);

    MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
    if (v178)
    {
      *(&v441 + 1) = MEMORY[0x1E69E6158];
      v442 = &off_1F3DF00A0;
      *&v440 = v430;
      *(&v440 + 1) = v178;
      sub_1BF38E610(&v440, &v443);
      v78 = v433;
      a1 = v434;
    }

    else
    {
      v442 = 0;
      v440 = 0u;
      v441 = 0u;
      v198 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v445 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
      v446 = &off_1F3DF0088;
      v443 = v198;
      v78 = v433;
      a1 = v434;
      if (*(&v441 + 1))
      {
        sub_1BF38C9B4(&v440, &qword_1EBDD99D0, &qword_1BF4F7B80);
      }
    }

    v199 = v445;
    v200 = v446;
    v201 = __swift_project_boxed_opaque_existential_1(&v443, v445);
    sub_1BF478C08(v201, &v437, v199, v200);
    __swift_destroy_boxed_opaque_existential_1Tm(&v443);
    v202 = v437;
    v203 = v438;
    v204 = v439;
    v206 = *(a1 + 2);
    v205 = *(a1 + 3);
    if (v206 >= v205 >> 1)
    {
      a1 = sub_1BF432A34((v205 > 1), v206 + 1, 1, a1);
    }

    *(a1 + 2) = v206 + 1;
    v207 = &a1[24 * v206];
    *(v207 + 4) = v204;
    *(v207 + 5) = v202;
    *(v207 + 6) = v203;
    v208 = v432;
    v209 = v435;
    v210 = *(v435 + *(v432 + 24));
    if (v210 >> 62)
    {
      if (!sub_1BF4E9204())
      {
        goto LABEL_39;
      }
    }

    else if (!*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_39:
      v276 = *(v209 + *(v208 + 28));
      if (v276 >> 62)
      {
        if (!sub_1BF4E9204())
        {
          goto LABEL_45;
        }
      }

      else if (!*((v276 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v277 = objc_opt_self();
      sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
      v278 = sub_1BF4E8B84();
      v443 = 0;
      v279 = [v277 archivedDataWithRootObject:v278 requiringSecureCoding:1 error:&v443];

      v214 = v443;
      if (v279)
      {
        v430 = sub_1BF4E71C4();
        v281 = v280;

        v443 = 0;
        v444 = 0xE000000000000000;
        v282 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
        v434 = a1;
        v283 = v282;
        MEMORY[0x1BFB58C40](73);
        MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
        v284 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v284);

        MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
        v285 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v285);

        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        v286 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v286);

        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        v287 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v287);

        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        v288 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v288);

        MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
        v289 = sub_1BF4E7794();
        v291 = v290;

        v293 = sub_1BF3D8148(v289, v291, v292);
        v295 = v294;
        v297 = v296;
        *&v440 = 0x676E69646E696240;
        *(&v440 + 1) = 0xE800000000000000;
        v437 = *(v283 + 16) + 1;
        v298 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v298);

        v299 = v440;
        MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
        sub_1BF3D8840(v293, v295, v297);
        v300 = swift_isUniquelyReferenced_nonNull_native();
        *&v440 = v283;
        sub_1BF3D6680(v293, v295, v297, v299, *(&v299 + 1), v300, v301);

        sub_1BF3D88B8(v293, v295, v297);
        v302 = v430;

        v303 = v440;
        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        sub_1BF3D8864(v302, v281);
        sub_1BF3D8864(v302, v281);
        v305 = sub_1BF3D8134(v302, v281, v304);
        v307 = v306;
        v309 = v308;
        *&v440 = 0x676E69646E696240;
        *(&v440 + 1) = 0xE800000000000000;
        v437 = *(v303 + 16) + 1;
        v310 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v310);

        v311 = v440;
        MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
        sub_1BF3D8840(v305, v307, v309);
        v312 = swift_isUniquelyReferenced_nonNull_native();
        *&v440 = v303;
        sub_1BF3D6680(v305, v307, v309, v311, *(&v311 + 1), v312, v313);

        sub_1BF3D88B8(v305, v307, v309);
        v431 = v281;
        v314 = sub_1BF3B03C0(v302, v281);
        v315 = v440;
        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v314);
        v316 = sub_1BF3D833C(0.0);
        v318 = v317;
        v320 = v319;
        *&v440 = 0x676E69646E696240;
        *(&v440 + 1) = 0xE800000000000000;
        v437 = *(v315 + 16) + 1;
        v321 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v321);

        v322 = v440;
        MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
        sub_1BF3D8840(v316, v318, v320);
        v323 = swift_isUniquelyReferenced_nonNull_native();
        *&v440 = v315;
        sub_1BF3D6680(v316, v318, v320, v322, *(&v322 + 1), v323, v324);

        v325 = sub_1BF3D88B8(v316, v318, v320);
        v326 = v440;
        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v325);
        v327 = sub_1BF3D7F44(2);
        v329 = v328;
        v331 = v330;
        *&v440 = 0x676E69646E696240;
        *(&v440 + 1) = 0xE800000000000000;
        v437 = *(v326 + 16) + 1;
        v332 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v332);

        v333 = v440;
        MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
        sub_1BF3D8840(v327, v329, v331);
        v334 = swift_isUniquelyReferenced_nonNull_native();
        *&v440 = v326;
        a1 = v434;
        sub_1BF3D6680(v327, v329, v331, v333, *(&v333 + 1), v334, v335);

        v336 = sub_1BF3D88B8(v327, v329, v331);
        v337 = v440;
        MEMORY[0x1BFB58C90](10506, 0xE200000000000000, v336);
        v338 = v443;
        v339 = v444;
        v341 = *(a1 + 2);
        v340 = *(a1 + 3);
        if (v341 >= v340 >> 1)
        {
          a1 = sub_1BF432A34((v340 > 1), v341 + 1, 1, a1);
        }

        v78 = v433;
        sub_1BF3B03C0(v302, v431);
        *(a1 + 2) = v341 + 1;
        v342 = &a1[24 * v341];
        *(v342 + 4) = v337;
        *(v342 + 5) = v338;
        *(v342 + 6) = v339;
        v209 = v435;
        v208 = v432;
LABEL_45:
        v343 = *(v209 + *(v208 + 36));
        if (v343 >> 62)
        {
          if (sub_1BF4E9204())
          {
            goto LABEL_47;
          }
        }

        else if (*((v343 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_47:
          v344 = objc_opt_self();
          sub_1BF3901C0(0, &qword_1EDC96310, 0x1E6994358);
          v345 = sub_1BF4E8B84();
          v443 = 0;
          v346 = [v344 archivedDataWithRootObject:v345 requiringSecureCoding:1 error:&v443];

          v347 = v443;
          if (v346)
          {
            v432 = sub_1BF4E71C4();
            v349 = v348;

            v443 = 0;
            v444 = 0xE000000000000000;
            v350 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
            v434 = a1;
            v351 = v350;
            MEMORY[0x1BFB58C40](73);
            MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
            v352 = sub_1BF4E92F4();
            MEMORY[0x1BFB58C90](v352);

            MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
            v353 = sub_1BF4E92F4();
            MEMORY[0x1BFB58C90](v353);

            MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
            v354 = sub_1BF4E92F4();
            MEMORY[0x1BFB58C90](v354);

            MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
            v355 = sub_1BF4E92F4();
            MEMORY[0x1BFB58C90](v355);

            MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
            v356 = sub_1BF4E92F4();
            MEMORY[0x1BFB58C90](v356);

            MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
            v357 = sub_1BF4E7794();
            v359 = v358;

            v361 = sub_1BF3D8148(v357, v359, v360);
            v363 = v362;
            v365 = v364;
            *&v440 = 0x676E69646E696240;
            *(&v440 + 1) = 0xE800000000000000;
            v437 = *(v351 + 16) + 1;
            v366 = sub_1BF4E96A4();
            MEMORY[0x1BFB58C90](v366);

            v367 = v440;
            MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
            sub_1BF3D8840(v361, v363, v365);
            v368 = swift_isUniquelyReferenced_nonNull_native();
            *&v440 = v351;
            sub_1BF3D6680(v361, v363, v365, v367, *(&v367 + 1), v368, v369);

            sub_1BF3D88B8(v361, v363, v365);
            v370 = v432;

            v371 = v440;
            MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
            sub_1BF3D8864(v370, v349);
            sub_1BF3D8864(v370, v349);
            v373 = sub_1BF3D8134(v370, v349, v372);
            v375 = v374;
            v377 = v376;
            *&v440 = 0x676E69646E696240;
            *(&v440 + 1) = 0xE800000000000000;
            v437 = *(v371 + 16) + 1;
            v378 = sub_1BF4E96A4();
            MEMORY[0x1BFB58C90](v378);

            v379 = v440;
            MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
            sub_1BF3D8840(v373, v375, v377);
            v380 = swift_isUniquelyReferenced_nonNull_native();
            *&v440 = v371;
            sub_1BF3D6680(v373, v375, v377, v379, *(&v379 + 1), v380, v381);

            sub_1BF3D88B8(v373, v375, v377);
            v436 = v349;
            v382 = sub_1BF3B03C0(v370, v349);
            v383 = v440;
            MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v382);
            v384 = sub_1BF3D833C(0.0);
            v386 = v385;
            v388 = v387;
            *&v440 = 0x676E69646E696240;
            *(&v440 + 1) = 0xE800000000000000;
            v437 = *(v383 + 16) + 1;
            v389 = sub_1BF4E96A4();
            MEMORY[0x1BFB58C90](v389);

            v390 = v440;
            MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
            sub_1BF3D8840(v384, v386, v388);
            v391 = swift_isUniquelyReferenced_nonNull_native();
            *&v440 = v383;
            sub_1BF3D6680(v384, v386, v388, v390, *(&v390 + 1), v391, v392);

            v393 = sub_1BF3D88B8(v384, v386, v388);
            v394 = v440;
            MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v393);
            v395 = sub_1BF3D7F44(1);
            v397 = v396;
            v399 = v398;
            *&v440 = 0x676E69646E696240;
            *(&v440 + 1) = 0xE800000000000000;
            v437 = *(v394 + 16) + 1;
            v400 = sub_1BF4E96A4();
            MEMORY[0x1BFB58C90](v400);

            v401 = v440;
            MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
            sub_1BF3D8840(v395, v397, v399);
            v402 = swift_isUniquelyReferenced_nonNull_native();
            *&v440 = v394;
            a1 = v434;
            sub_1BF3D6680(v395, v397, v399, v401, *(&v401 + 1), v402, v403);

            v404 = sub_1BF3D88B8(v395, v397, v399);
            v405 = v440;
            MEMORY[0x1BFB58C90](10506, 0xE200000000000000, v404);
            v406 = v443;
            v407 = v444;
            v409 = *(a1 + 2);
            v408 = *(a1 + 3);
            if (v409 >= v408 >> 1)
            {
              a1 = sub_1BF432A34((v408 > 1), v409 + 1, 1, a1);
            }

            v78 = v433;
            sub_1BF3B03C0(v370, v436);
            *(a1 + 2) = v409 + 1;
            v410 = &a1[24 * v409];
            *(v410 + 4) = v405;
            *(v410 + 5) = v406;
            *(v410 + 6) = v407;
            v209 = v435;
            goto LABEL_51;
          }

          v414 = v347;

          sub_1BF4E6FF4();

          goto LABEL_55;
        }

LABEL_51:
        v76 = sub_1BF4A644C(v209, type metadata accessor for ExtensionMetadata);
        goto LABEL_52;
      }

LABEL_53:
      v413 = v214;

      sub_1BF4E6FF4();

LABEL_55:
      swift_willThrow();
      return sub_1BF4A644C(v209, type metadata accessor for ExtensionMetadata);
    }

    v211 = objc_opt_self();
    sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
    v212 = sub_1BF4E8B84();
    v443 = 0;
    v213 = [v211 archivedDataWithRootObject:v212 requiringSecureCoding:1 error:&v443];

    v214 = v443;
    if (!v213)
    {
      goto LABEL_53;
    }

    v430 = sub_1BF4E71C4();
    v216 = v215;

    v443 = 0;
    v444 = 0xE000000000000000;
    v217 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    v434 = a1;
    v218 = v217;
    MEMORY[0x1BFB58C40](73);
    MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
    v219 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v219);

    MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
    v220 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v220);

    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    v221 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v221);

    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    v222 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v222);

    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    v223 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v223);

    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
    v224 = sub_1BF4E7794();
    v226 = v225;

    v228 = sub_1BF3D8148(v224, v226, v227);
    v230 = v229;
    v232 = v231;
    *&v440 = 0x676E69646E696240;
    *(&v440 + 1) = 0xE800000000000000;
    v437 = *(v218 + 16) + 1;
    v233 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v233);

    v234 = *(&v440 + 1);
    v235 = v440;
    MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
    sub_1BF3D8840(v228, v230, v232);
    v236 = swift_isUniquelyReferenced_nonNull_native();
    *&v440 = v218;
    sub_1BF3D6680(v228, v230, v232, v235, v234, v236, v237);

    sub_1BF3D88B8(v228, v230, v232);
    v57 = v430;

    v238 = v440;
    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    sub_1BF3D8864(v57, v216);
    sub_1BF3D8864(v57, v216);
    v240 = sub_1BF3D8134(v57, v216, v239);
    v242 = v241;
    v244 = v243;
    *&v440 = 0x676E69646E696240;
    *(&v440 + 1) = 0xE800000000000000;
    v437 = *(v238 + 16) + 1;
    v245 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v245);

    v247 = *(&v440 + 1);
    v246 = v440;
    MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
    sub_1BF3D8840(v240, v242, v244);
    v248 = swift_isUniquelyReferenced_nonNull_native();
    *&v440 = v238;
    sub_1BF3D6680(v240, v242, v244, v246, v247, v248, v249);

    sub_1BF3D88B8(v240, v242, v244);
    v431 = v216;
    v250 = sub_1BF3B03C0(v57, v216);
    v251 = v440;
    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v250);
    v252 = sub_1BF3D833C(0.0);
    v254 = v253;
    v256 = v255;
    *&v440 = 0x676E69646E696240;
    *(&v440 + 1) = 0xE800000000000000;
    v437 = *(v251 + 16) + 1;
    v257 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v257);

    v259 = *(&v440 + 1);
    v258 = v440;
    MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
    sub_1BF3D8840(v252, v254, v256);
    v260 = swift_isUniquelyReferenced_nonNull_native();
    *&v440 = v251;
    sub_1BF3D6680(v252, v254, v256, v258, v259, v260, v261);

    v262 = sub_1BF3D88B8(v252, v254, v256);
    v263 = v440;
    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v262);
    v264 = sub_1BF3D7F44(0);
    v266 = v265;
    v268 = v267;
    *&v440 = 0x676E69646E696240;
    *(&v440 + 1) = 0xE800000000000000;
    v437 = *(v263 + 16) + 1;
    v269 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v269);

    v271 = *(&v440 + 1);
    v270 = v440;
    MEMORY[0x1BFB58C90](v440, *(&v440 + 1));
    sub_1BF3D8840(v264, v266, v268);
    v272 = swift_isUniquelyReferenced_nonNull_native();
    *&v440 = v263;
    a1 = v434;
    sub_1BF3D6680(v264, v266, v268, v270, v271, v272, v273);

    v274 = sub_1BF3D88B8(v264, v266, v268);
    v36 = v440;
    MEMORY[0x1BFB58C90](10506, 0xE200000000000000, v274);
    v55 = v443;
    v51 = v444;
    v19 = *(a1 + 2);
    v56 = *(a1 + 3);
    v32 = (v19 + 1);
    if (v19 < v56 >> 1)
    {
LABEL_38:
      v78 = v433;
      sub_1BF3B03C0(v57, v431);
      *(a1 + 2) = v32;
      v275 = &a1[24 * v19];
      *(v275 + 4) = v36;
      *(v275 + 5) = v55;
      *(v275 + 6) = v51;
      v209 = v435;
      v208 = v432;
      goto LABEL_39;
    }

LABEL_65:
    a1 = sub_1BF432A34((v56 > 1), v32, 1, a1);
    goto LABEL_38;
  }

  v37 = v7;
  sub_1BF38C94C(a1, v16, &qword_1EBDD9318, &qword_1BF4F09A8);
  v418 = v32;
  v417 = v33;
  v38 = v32(v16, 1, v36);
  v419 = v19;
  if (v38 == 1)
  {
    sub_1BF38C9B4(v16, &qword_1EBDD9318, &qword_1BF4F09A8);
    v39 = v428;
    v40 = *(v428 + 56);
    v41 = v431;
    v42 = v436;
    v40(v431, 1, 1, v436);
    v43 = *(v39 + 16);
  }

  else
  {
    v39 = v428;
    v43 = *(v428 + 16);
    v41 = v431;
    v42 = v436;
    v43(v431, v16, v436);
    sub_1BF4A644C(v16, type metadata accessor for ExtensionMetadata);
    v40 = *(v39 + 56);
    v40(v41, 0, 1, v42);
  }

  v44 = v430;
  v43(v430, v434, v42);
  v40(v44, 0, 1, v42);
  v45 = *(v426 + 48);
  sub_1BF38C94C(v41, v37, &unk_1EBDD92E0, &unk_1BF4F08D0);
  sub_1BF38C94C(v44, v37 + v45, &unk_1EBDD92E0, &unk_1BF4F08D0);
  v46 = v42;
  v47 = *(v39 + 48);
  if (v47(v37, 1, v46) == 1)
  {
    sub_1BF38C9B4(v44, &unk_1EBDD92E0, &unk_1BF4F08D0);
    sub_1BF38C9B4(v41, &unk_1EBDD92E0, &unk_1BF4F08D0);
    if (v47(v37 + v45, 1, v46) == 1)
    {
      sub_1BF38C9B4(v37, &unk_1EBDD92E0, &unk_1BF4F08D0);
      v36 = v432;
      a1 = v433;
      v19 = v419;
      v32 = v418;
      goto LABEL_12;
    }

    goto LABEL_67;
  }

  sub_1BF38C94C(v37, v427, &unk_1EBDD92E0, &unk_1BF4F08D0);
  v48 = v47(v37 + v45, 1, v46);
  v19 = v419;
  if (v48 != 1)
  {
    v49 = v39;
    v50 = v421;
    v51 = v37;
    (*(v39 + 32))(v421, v37 + v45, v46);
    sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994148]);
    v52 = v427;
    v53 = sub_1BF4E88C4();
    v54 = *(v49 + 8);
    v54(v50, v46);
    v55 = &unk_1EBDD92E0;
    sub_1BF38C9B4(v430, &unk_1EBDD92E0, &unk_1BF4F08D0);
    sub_1BF38C9B4(v431, &unk_1EBDD92E0, &unk_1BF4F08D0);
    v54(v52, v46);
    sub_1BF38C9B4(v51, &unk_1EBDD92E0, &unk_1BF4F08D0);
    v36 = v432;
    a1 = v433;
    v32 = v418;
    v56 = &v445;
    v57 = v417;
    if ((v53 & 1) == 0)
    {
      __break(1u);
      goto LABEL_65;
    }

    goto LABEL_12;
  }

  sub_1BF38C9B4(v430, &unk_1EBDD92E0, &unk_1BF4F08D0);
  sub_1BF38C9B4(v431, &unk_1EBDD92E0, &unk_1BF4F08D0);
  (*(v39 + 8))(v427, v46);
LABEL_67:
  sub_1BF38C9B4(v37, &qword_1EBDD99C8, &qword_1BF4F4E68);
  __break(1u);
LABEL_68:
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF493E44(uint64_t **a1, uint64_t a2, void *a3)
{
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  v21 = *a1;
  v68 = a1[1];
  v69 = v21;
  v67 = a1[2];
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v22 = sub_1BF4E7B54();
  v23 = __swift_project_value_buffer(v22, qword_1EDCA6898);
  sub_1BF38C94C(a2, v20, &qword_1EBDD9318, &qword_1BF4F09A8);
  v65 = v23;
  v24 = sub_1BF4E7B34();
  v25 = sub_1BF4E8E54();
  v26 = os_log_type_enabled(v24, v25);
  v66 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v61 = v7;
    v28 = v27;
    v29 = swift_slowAlloc();
    v64 = v8;
    v30 = v29;
    v73 = v29;
    *v28 = 136446210;
    v63 = v9;
    sub_1BF38C94C(v20, v17, &qword_1EBDD9318, &qword_1BF4F09A8);
    v31 = sub_1BF4E8994();
    v33 = v32;
    sub_1BF38C9B4(v20, &qword_1EBDD9318, &qword_1BF4F09A8);
    v34 = sub_1BF38D65C(v31, v33, &v73);

    *(v28 + 4) = v34;
    v9 = v63;
    _os_log_impl(&dword_1BF389000, v24, v25, "Executing metadata update for %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v35 = v30;
    v8 = v64;
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
    v36 = v28;
    v7 = v61;
    MEMORY[0x1BFB5A5D0](v36, -1, -1);
  }

  else
  {

    sub_1BF38C9B4(v20, &qword_1EBDD9318, &qword_1BF4F09A8);
  }

  Strong = swift_weakLoadStrong();
  v38 = v72;
  if (Strong)
  {
    v39 = v71;
    sub_1BF3E4F48(v69, v68, v67);
    if (v39)
    {

      sub_1BF38C94C(v66, v38, &qword_1EBDD9318, &qword_1BF4F09A8);
      v40 = v39;
      v41 = sub_1BF4E7B34();
      v42 = sub_1BF4E8E84();

      if (os_log_type_enabled(v41, v42))
      {
        LODWORD(v71) = v42;
        v43 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v73 = v70;
        *v43 = 136446466;
        v44 = v60;
        sub_1BF38C94C(v38, v60, &qword_1EBDD9318, &qword_1BF4F09A8);
        v45 = type metadata accessor for ExtensionMetadata(0);
        if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
        {
          sub_1BF38C9B4(v44, &qword_1EBDD9318, &qword_1BF4F09A8);
          (*(v9 + 56))(v7, 1, 1, v8);
          v61 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
          v64 = v8;
          sub_1BF38C8B4(&qword_1EDC9D598, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940B0]);
          v63 = v9;
          sub_1BF38C8B4(&qword_1EDC9D570, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940D8]);
          sub_1BF38C8B4(&qword_1EDC9D590, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940B8]);
          v46 = v61;
          sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]);
          v47 = v62;
          v9 = v63;
          v8 = v64;
          v38 = v72;
          sub_1BF4E7764();
          if ((*(v9 + 48))(v46, 1, v8) != 1)
          {
            sub_1BF38C9B4(v46, &unk_1EBDD92E0, &unk_1BF4F08D0);
          }
        }

        else
        {
          (*(v9 + 16))(v7, v44, v8);
          sub_1BF4A644C(v44, type metadata accessor for ExtensionMetadata);
          (*(v9 + 56))(v7, 0, 1, v8);
          v49 = v7;
          v47 = v62;
          (*(v9 + 32))(v62, v49, v8);
        }

        sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994160]);
        v50 = v47;
        v51 = sub_1BF4E96A4();
        v53 = v52;
        (*(v9 + 8))(v50, v8);
        sub_1BF38C9B4(v38, &qword_1EBDD9318, &qword_1BF4F09A8);
        v54 = sub_1BF38D65C(v51, v53, &v73);

        *(v43 + 4) = v54;
        *(v43 + 12) = 2114;
        v55 = v39;
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 14) = v56;
        v57 = v69;
        *v69 = v56;
        _os_log_impl(&dword_1BF389000, v41, v71, "Unexpected error performing metadata update for %{public}s: %{public}@", v43, 0x16u);
        sub_1BF38C9B4(v57, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v57, -1, -1);
        v58 = v70;
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x1BFB5A5D0](v58, -1, -1);
        MEMORY[0x1BFB5A5D0](v43, -1, -1);
      }

      else
      {

        sub_1BF38C9B4(v38, &qword_1EBDD9318, &qword_1BF4F09A8);
      }

      return swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF494700()
{
  if (swift_weakLoadStrong())
  {
    v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](12);
    MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
    v2 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v2);

    sub_1BF3E4F48(v1, 0, 0xE000000000000000);

    if (!v0)
    {
    }
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF494854()
{
  v52 = sub_1BF4E7334();
  v1 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v44 - v4;
  v53 = 0;
  v54 = 0xE000000000000000;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x454C455320202020, 0xEB00000000205443);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x4F5246202020200ALL, 0xEA0000000000204DLL);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v9 = v53;
  v10 = v54;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v12 = Strong;
  v13 = sub_1BF3E4F48(v5, v9, v10);
  if (!v0)
  {
    v44[1] = 0;
    v14 = v13;

    v12 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
    v15 = v14;
    v49 = v14[2];
    if (!v49)
    {
LABEL_12:

      return v12;
    }

    v16 = 0;
    v46 = (v1 + 16);
    v47 = (v14 + 4);
    v45 = (v1 + 8);
    v48 = v14;
    while (v16 < v15[2])
    {
      v17 = *&v47[8 * v16];

      v18 = sub_1BF4E92F4();
      v20 = sub_1BF48063C(v18, v19, v17);
      v22 = v21;
      v24 = v23;
      v25 = ~v23;

      if (!v25)
      {
        goto LABEL_16;
      }

      v55 = sub_1BF4244EC(v20, v22, v24);
      v27 = v26;
      sub_1BF3DB1FC(v20, v22, v24);
      if (!v27)
      {
        goto LABEL_16;
      }

      v28 = sub_1BF4E92F4();
      v30 = sub_1BF48063C(v28, v29, v17);
      v32 = v31;
      v34 = v33;
      v35 = ~v33;

      if (!v35)
      {
        goto LABEL_15;
      }

      sub_1BF424634(v30, v32, v34);
      v37 = v36;
      sub_1BF3DB1FC(v30, v32, v34);
      if (v37)
      {
        goto LABEL_15;
      }

      ++v16;
      v38 = v50;
      sub_1BF4E72B4();
      v40 = v51;
      v39 = v52;
      (*v46)(v51, v38, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v12;
      sub_1BF3D6A84(v40, v55, v27, isUniquelyReferenced_nonNull_native, v42);

      (*v45)(v38, v39);
      v12 = v53;
      v15 = v48;
      if (v49 == v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:

    while (1)
    {
LABEL_16:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  return v12;
}

void sub_1BF494D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a2;
  v105 = a3;
  v103 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v99 - v7;
  v106 = sub_1BF4E7334();
  v9 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v13 = *(Strong + 24);
  v14 = Strong;
  os_unfair_lock_lock(*(v13 + 16));
  v15 = *(v14 + 64);
  os_unfair_lock_unlock(*(v13 + 16));

  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1BF38C94C(a4, v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v16 = v106;
  v17 = (*(v9 + 48))(v8, 1, v106);
  v102 = v4;
  if (v17 == 1)
  {
    sub_1BF38C9B4(v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v106 = swift_weakLoadStrong();
    if (v106)
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](43);
      MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FCE10);
      v19 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v19);

      MEMORY[0x1BFB58C90](2107402, 0xE300000000000000);
      v20 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v20);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v21 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v21);

      MEMORY[0x1BFB58C90](0x45554C41560A2920, 0xEC00000020282053);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
      v22 = sub_1BF4E7794();
      v24 = v23;

      v26 = sub_1BF3D8148(v22, v24, v25);
      v28 = v27;
      v30 = v29;
      v107 = 0x676E69646E696240;
      v108 = 0xE800000000000000;
      v111 = *(v18 + 16) + 1;
      v31 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v31);

      v33 = v107;
      v32 = v108;
      MEMORY[0x1BFB58C90](v107, v108);
      sub_1BF3D8840(v26, v28, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v18;
      sub_1BF3D6680(v26, v28, v30, v33, v32, isUniquelyReferenced_nonNull_native, v35);

      sub_1BF3D88B8(v26, v28, v30);

      v36 = v107;
      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v37 = v105;

      v39 = sub_1BF3D8148(v104, v37, v38);
      v41 = v40;
      v43 = v42;
      v107 = 0x676E69646E696240;
      v108 = 0xE800000000000000;
      v111 = *(v36 + 16) + 1;
      v44 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v44);

      v45 = v107;
      v46 = v108;
      MEMORY[0x1BFB58C90](v107, v108);
      sub_1BF3D8840(v39, v41, v43);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v36;
      sub_1BF3D6680(v39, v41, v43, v45, v46, v47, v48);

      v49 = sub_1BF3D88B8(v39, v41, v43);
      v50 = v107;
      MEMORY[0x1BFB58C90](10528, 0xE200000000000000, v49);
      v51 = v102;
      sub_1BF3E4F48(v50, v109, v110);

      if (!v51)
      {
      }

      return;
    }

LABEL_13:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v52 = *(v9 + 32);
  v100 = v11;
  v52(v11, v8, v16);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_13;
  }

  v109 = 0;
  v110 = 0xE000000000000000;
  v53 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](46);
  MEMORY[0x1BFB58C90](0xD00000000000001ALL, 0x80000001BF4FCE50);
  v54 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v54);

  MEMORY[0x1BFB58C90](0x4C4156202020200ALL, 0xEE00202820534555);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v55 = sub_1BF4E7794();
  v57 = v56;

  v59 = sub_1BF3D8148(v55, v57, v58);
  v61 = v60;
  v63 = v62;
  v107 = 0x676E69646E696240;
  v108 = 0xE800000000000000;
  v111 = *(v53 + 16) + 1;
  v64 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v64);

  v65 = v107;
  v66 = v108;
  MEMORY[0x1BFB58C90](v107, v108);
  sub_1BF3D8840(v59, v61, v63);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v53;
  sub_1BF3D6680(v59, v61, v63, v65, v66, v67, v68);

  sub_1BF3D88B8(v59, v61, v63);

  v69 = v107;
  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v70 = v105;

  v72 = sub_1BF3D8148(v104, v70, v71);
  v74 = v73;
  v76 = v75;
  v107 = 0x676E69646E696240;
  v108 = 0xE800000000000000;
  v111 = *(v69 + 16) + 1;
  v77 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v77);

  v78 = v107;
  v79 = v108;
  MEMORY[0x1BFB58C90](v107, v108);
  sub_1BF3D8840(v72, v74, v76);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v69;
  sub_1BF3D6680(v72, v74, v76, v78, v79, v80, v81);

  v82 = sub_1BF3D88B8(v72, v74, v76);
  v83 = v107;
  MEMORY[0x1BFB58C90](8236, 0xE200000000000000, v82);
  v84 = v100;
  sub_1BF4E72C4();
  v86 = sub_1BF3D833C(v85);
  v88 = v87;
  v90 = v89;
  v107 = 0x676E69646E696240;
  v108 = 0xE800000000000000;
  v111 = *(v83 + 16) + 1;
  v91 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v91);

  v92 = v107;
  v93 = v108;
  MEMORY[0x1BFB58C90](v107, v108);
  sub_1BF3D8840(v86, v88, v90);
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v83;
  sub_1BF3D6680(v86, v88, v90, v92, v93, v94, v95);

  v96 = sub_1BF3D88B8(v86, v88, v90);
  v97 = v107;
  MEMORY[0x1BFB58C90](10528, 0xE200000000000000, v96);
  v98 = v102;
  sub_1BF3E4F48(v97, v109, v110);
  if (v98)
  {
    (*(v9 + 8))(v84, v106);
  }

  else
  {

    (*(v9 + 8))(v84, v106);
  }
}

void sub_1BF4956D4(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](31);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F88F0);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x200A455245485720, 0xEB00000000202020);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v13 = sub_1BF3D8148(a1, a2, v12);
  v15 = v14;
  v17 = v16;
  v18 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v13, v15, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v13, v15, v17, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v20);

  sub_1BF3D88B8(v13, v15, v17);
  sub_1BF3E4F48(v9, 0, 0xE000000000000000);

  if (!v2)
  {
  }
}

uint64_t sub_1BF4959B8()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](12);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  sub_1BF3E4F48(v5, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF495B48()
{
  v45 = type metadata accessor for RemoteActivitySubscription(0);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - v3;
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](28);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v9 = v47;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_17;
  }

  v10 = sub_1BF3E4F48(v5, v9, *(&v9 + 1));
  if (!v0)
  {
    v48 = 0;
    v12 = v10;

    v13 = v12;
    v43 = v12[2];
    if (!v43)
    {
      v11 = MEMORY[0x1E69E7CC8];

      return v11;
    }

    v14 = 0;
    v11 = MEMORY[0x1E69E7CC8];
    v42 = v12;
    while (v14 < v13[2])
    {
      v46 = v11;
      v15 = v4;
      v16 = v13[v14 + 4];

      v17 = sub_1BF4E92F4();
      v19 = sub_1BF48063C(v17, v18, v16);
      v21 = v20;
      v23 = v22;
      v24 = ~v22;

      if (!v24)
      {
        goto LABEL_17;
      }

      sub_1BF3DB1FC(v19, v21, v23);
      v25 = sub_1BF4E92F4();
      v27 = sub_1BF48063C(v25, v26, v16);
      v29 = v28;
      v31 = v30;
      v32 = ~v30;

      if (!v32)
      {
        goto LABEL_17;
      }

      sub_1BF424370(v27, v29, v31, &v47);
      sub_1BF3DB1FC(v27, v29, v31);
      v33 = *(&v47 + 1);
      if (*(&v47 + 1) >> 60 == 15)
      {
        goto LABEL_17;
      }

      v34 = v47;
      sub_1BF4E6DB4();
      swift_allocObject();
      v11 = sub_1BF4E6DA4();
      sub_1BF4A6514(&qword_1EBDD99D8, type metadata accessor for RemoteActivitySubscription, &protocol conformance descriptor for RemoteActivitySubscription);
      v35 = v48;
      sub_1BF4E6D94();
      v48 = v35;
      if (v35)
      {

        sub_1BF3DB210(v34, v33);

        return v11;
      }

      ++v14;
      v36 = v44;
      sub_1BF4A63E4(v15, v44, type metadata accessor for RemoteActivitySubscription);
      v37 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v47 = v37;
      v39 = v36;
      v4 = v15;
      sub_1BF3D7844(v39, v15, isUniquelyReferenced_nonNull_native);

      sub_1BF3DB210(v34, v33);

      sub_1BF4A644C(v15, type metadata accessor for RemoteActivitySubscription);
      v11 = v47;
      v13 = v42;
      if (v43 == v14)
      {

        return v11;
      }
    }

    __break(1u);
    while (1)
    {
LABEL_17:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v11 = v0;

  return v11;
}

void sub_1BF496078(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);
    v4 = Strong;
    os_unfair_lock_lock(*(v3 + 16));
    v5 = *(v4 + 64);
    os_unfair_lock_unlock(*(v3 + 16));

    if (v5)
    {
      sub_1BF4E6DE4();
      swift_allocObject();
      sub_1BF4E6DD4();
      type metadata accessor for RemoteActivitySubscription(0);
      sub_1BF4A6514(&qword_1EBDD99E0, type metadata accessor for RemoteActivitySubscription, &protocol conformance descriptor for RemoteActivitySubscription);
      v6 = sub_1BF4E6DC4();
      if (v1)
      {
LABEL_6:

        return;
      }

      v8 = v6;
      v9 = v7;
      v35 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](83);
      MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FAD70);
      v10 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v10);

      MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
      v11 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v11);

      MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
      v12 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v12);

      MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FAD90);
      v13 = sub_1BF4E7354();
      v15 = v14;

      v17 = sub_1BF3D8148(v13, v15, v16);
      v19 = v18;
      v21 = v20;
      v36 = v8;
      v22 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v22);

      MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
      sub_1BF3D8840(v17, v19, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BF3D6680(v17, v19, v21, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v24);

      sub_1BF3D88B8(v17, v19, v21);

      MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
      sub_1BF3D8864(v8, v9);
      sub_1BF3D8864(v8, v9);
      v26 = sub_1BF3D8134(v8, v9, v25);
      v28 = v27;
      v30 = v29;
      v31 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v31);

      MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
      sub_1BF3D8840(v26, v28, v30);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1BF3D6680(v26, v28, v30, 0x676E69646E696240, 0xE800000000000000, v32, v33);

      sub_1BF3D88B8(v26, v28, v30);
      v34 = sub_1BF3B03C0(v36, v9);
      MEMORY[0x1BFB58C90](0x3B29202020200ALL, 0xE700000000000000, v34);
      if (swift_weakLoadStrong())
      {
        sub_1BF3E4F48(v35, 0, 0xE000000000000000);

        sub_1BF3B03C0(v36, v9);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }
  }

  sub_1BF4E9464();
  __break(1u);
}

void sub_1BF4965D8(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v27 = 0;
  v28 = 0xE000000000000000;
  v6 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](22);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v9 = v27;
  v10 = v28;
  if (swift_weakLoadStrong())
  {
    v11 = sub_1BF3E4F48(v6, v9, v10);
    if (v1)
    {

      return;
    }

    v12 = v11;

    if (!v12[2])
    {

      goto LABEL_10;
    }

    v13 = v12[4];

    v14 = sub_1BF4E92F4();
    v16 = sub_1BF48063C(v14, v15, v13);
    v18 = v17;
    v20 = v19;
    v21 = ~v19;

    if (!v21)
    {
      goto LABEL_10;
    }

    sub_1BF4244EC(v16, v18, v20);
    v23 = v22;
    sub_1BF3DB1FC(v16, v18, v20);
    if (!v23)
    {
      goto LABEL_10;
    }

    sub_1BF4E7344();

    v24 = sub_1BF4E7394();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v5, 1, v24) == 1)
    {
      sub_1BF38C9B4(v5, &qword_1EBDD97E8, &unk_1BF4F29E0);
LABEL_10:
      v26 = sub_1BF4E7394();
      (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
      return;
    }

    (*(v25 + 32))(a1, v5, v24);
    (*(v25 + 56))(a1, 0, 1, v24);
  }

  else
  {
    sub_1BF4E9464();
    __break(1u);
  }
}

void sub_1BF4969A4()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BF496CD8();
  if (v0)
  {
    return;
  }

  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](38);
  MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  v8 = sub_1BF4E7354();
  v10 = v9;

  v12 = sub_1BF3D8148(v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v17 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v12, v14, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v12, v14, v16, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v19);

  sub_1BF3D88B8(v12, v14, v16);

  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v5, 0, 0xE000000000000000);
}

uint64_t sub_1BF496CFC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](52);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v9 = sub_1BF3E4F48(v1, 0, 0xE000000000000000);
    if (v0)
    {
    }

    else
    {
      v10 = v9;

      v1 = sub_1BF4A59F0(v10);
    }

    return v1;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void sub_1BF49700C(uint64_t *a1, unint64_t *a2)
{
  v167 = a1;
  v176 = sub_1BF4E7394();
  v180 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v166 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v168 = &v154 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v175 = &v154 - v8;
  v169 = sub_1BF4E7914();
  v171 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v165 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v170 = (&v154 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v172 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v173 = &v154 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v154 - v17;
  v19 = sub_1BF4E7984();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v174 = &v154 - v23;
  v24 = *a2;
  v25 = sub_1BF4E92F4();
  v27 = sub_1BF48063C(v25, v26, v24);
  v29 = v28;
  v31 = v30;
  v32 = ~v30;

  if (!v32)
  {
    goto LABEL_17;
  }

  v33 = sub_1BF4244EC(v27, v29, v31);
  v35 = v34;
  sub_1BF3DB1FC(v27, v29, v31);
  if (!v35)
  {
    goto LABEL_17;
  }

  v163 = v33;
  v164 = v2;
  v36 = sub_1BF4E92F4();
  v38 = sub_1BF48063C(v36, v37, v24);
  v40 = v39;
  v42 = v41;
  v43 = ~v41;

  if (v43)
  {
    v44 = sub_1BF4244EC(v38, v40, v42);
    v46 = v45;
    sub_1BF3DB1FC(v38, v40, v42);
    if (v46)
    {
      v161 = v44;
      v162 = v46;
      v47 = sub_1BF4E92F4();
      v49 = sub_1BF48063C(v47, v48, v24);
      v51 = v50;
      v53 = v52;
      v54 = ~v52;

      if (!v54)
      {
        goto LABEL_15;
      }

      v55 = sub_1BF4244EC(v49, v51, v53);
      v57 = v56;
      sub_1BF3DB1FC(v49, v51, v53);
      if (!v57)
      {
        goto LABEL_15;
      }

      v159 = v55;
      v160 = v57;
      v58 = sub_1BF4E92F4();
      v60 = sub_1BF48063C(v58, v59, v24);
      v62 = v61;
      v64 = v63;
      v65 = ~v63;

      if (!v65 || (v66 = sub_1BF4244EC(v60, v62, v64), v68 = v67, sub_1BF3DB1FC(v60, v62, v64), (v158 = v68) == 0))
      {
LABEL_14:

LABEL_15:

        goto LABEL_16;
      }

      v156 = v66;
      v69 = sub_1BF4E92F4();
      v157 = sub_1BF48063C(v69, v70, v24);
      v72 = v71;
      v74 = v73;
      v75 = ~v73;

      if (!v75 || (v76 = v157, v155 = sub_1BF4244E0(v157, v72, v74), v78 = v77, sub_1BF3DB1FC(v76, v72, v74), (v78 & 1) != 0))
      {

        goto LABEL_14;
      }

      if (qword_1EBDD8550 != -1)
      {
        goto LABEL_87;
      }

      while (1)
      {
        v83 = v176;
        __swift_project_value_buffer(v176, qword_1EBDD99A8);
        if (v159 == sub_1BF4E7354() && v160 == v84)
        {
          break;
        }

        v85 = sub_1BF4E9734();

        if (v85)
        {

          v83 = v176;
          goto LABEL_29;
        }

        sub_1BF4E7344();
        v120 = v180;
        v83 = v176;
        if ((*(v180 + 48))(v18, 1, v176) == 1)
        {

          sub_1BF38C9B4(v18, &qword_1EBDD97E8, &unk_1BF4F29E0);
          if (qword_1EDC9D460 != -1)
          {
            swift_once();
          }

          v121 = sub_1BF4E7B54();
          __swift_project_value_buffer(v121, qword_1EDCA6898);
          v122 = v160;

          v80 = sub_1BF4E7B34();
          v123 = sub_1BF4E8E64();

          if (os_log_type_enabled(v80, v123))
          {
            v82 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v179[0] = v124;
            *v82 = 136446466;
            v125 = sub_1BF38D65C(v159, v122, v179);

            *(v82 + 4) = v125;
            *(v82 + 12) = 2082;
            v126 = sub_1BF38D65C(v163, v35, v179);

            *(v82 + 14) = v126;
            _os_log_impl(&dword_1BF389000, v80, v123, "Malformed relationshipID %{public}s for %{public}s", v82, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB5A5D0](v124, -1, -1);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        v86 = v174;
        (*(v120 + 32))(v174, v18, v83);
        (*(v120 + 56))(v86, 0, 1, v83);
LABEL_30:
        sub_1BF4E7944();
        swift_allocObject();
        sub_1BF4E7924();
        sub_1BF4A63E4(v86, v21, MEMORY[0x1E69C7330]);
        v160 = sub_1BF4E79A4();
        swift_allocObject();
        v161 = sub_1BF4E7954();
        v87 = sub_1BF4E92F4();
        v89 = sub_1BF48063C(v87, v88, v24);
        v91 = v90;
        v93 = v92;
        v94 = ~v92;

        if (v94)
        {
          v95 = sub_1BF4244EC(v89, v91, v93);
          v97 = v96;
          sub_1BF3DB1FC(v89, v91, v93);
        }

        else
        {
          v95 = 0;
          v97 = 0;
        }

        v98 = v172;
        if (v155 == 1)
        {
          v99 = 1;
        }

        else
        {
          v99 = 2;
        }

        if (!v155)
        {
          v99 = 0;
        }

        v21 = v174;
        v100 = v180;
        v101 = v161;
        if (v99 == 2)
        {

          if (qword_1EDC9D460 != -1)
          {
            swift_once();
          }

          v102 = sub_1BF4E7B54();
          __swift_project_value_buffer(v102, qword_1EDCA6898);

          v103 = sub_1BF4E7B34();
          v104 = sub_1BF4E8E64();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v179[0] = v106;
            *v105 = 136446466;
            LOBYTE(v177) = 2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A10, &unk_1BF4F53D0);
            v107 = sub_1BF4E8994();
            v109 = sub_1BF38D65C(v107, v108, v179);

            *(v105 + 4) = v109;
            *(v105 + 12) = 2082;
            v177 = v101;
            sub_1BF4A6514(&qword_1EBDD9A18, MEMORY[0x1E69C7338], MEMORY[0x1E69C7350]);
            v110 = sub_1BF4E96A4();
            v112 = sub_1BF38D65C(v110, v111, v179);

            *(v105 + 14) = v112;
            _os_log_impl(&dword_1BF389000, v103, v104, "Illegal destination type %{public}s for %{public}s", v105, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB5A5D0](v106, -1, -1);
            MEMORY[0x1BFB5A5D0](v105, -1, -1);

LABEL_62:
            sub_1BF4A644C(v21, MEMORY[0x1E69C7330]);
            return;
          }

LABEL_61:

          goto LABEL_62;
        }

        if ((v99 & 1) == 0)
        {

          v127 = v169;
          (*(v171 + 104))(v170, *MEMORY[0x1E69C72D8], v169);
          goto LABEL_71;
        }

        if (!v97)
        {

          if (qword_1EDC9D460 == -1)
          {
            goto LABEL_66;
          }

          goto LABEL_89;
        }

        v179[0] = v95;
        v179[1] = v97;
        v177 = 124;
        v178 = 0xE100000000000000;
        sub_1BF399080();
        v113 = sub_1BF4E9114();

        v114 = v113;
        v163 = *(v113 + 16);
        if (!v163)
        {
          v115 = MEMORY[0x1E69E7CC0];
LABEL_70:

          v127 = v169;
          *v170 = v115;
          (*(v171 + 104))();
          v21 = v174;
          v100 = v180;
          v101 = v161;
          v98 = v172;
LABEL_71:
          sub_1BF4E7344();
          if ((*(v100 + 48))(v98, 1, v83) == 1)
          {
            sub_1BF38C9B4(v98, &qword_1EBDD97E8, &unk_1BF4F29E0);
            if (qword_1EDC9D460 != -1)
            {
              swift_once();
            }

            v135 = sub_1BF4E7B54();
            __swift_project_value_buffer(v135, qword_1EDCA6898);

            v136 = v158;

            v137 = sub_1BF4E7B34();
            v138 = sub_1BF4E8E64();

            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              v140 = v127;
              v141 = swift_slowAlloc();
              v179[0] = v141;
              *v139 = 136446466;
              v142 = sub_1BF38D65C(v156, v136, v179);

              *(v139 + 4) = v142;
              *(v139 + 12) = 2082;
              v177 = v101;
              sub_1BF4A6514(&qword_1EBDD9A18, MEMORY[0x1E69C7338], MEMORY[0x1E69C7350]);
              v143 = sub_1BF4E96A4();
              v145 = sub_1BF38D65C(v143, v144, v179);

              *(v139 + 14) = v145;
              _os_log_impl(&dword_1BF389000, v137, v138, "Malformed version %{public}s for %{public}s", v139, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1BFB5A5D0](v141, -1, -1);
              MEMORY[0x1BFB5A5D0](v139, -1, -1);

              (*(v171 + 8))(v170, v140);
              goto LABEL_62;
            }
          }

          else
          {

            v146 = v168;
            (*(v100 + 32))(v168, v98, v83);
            sub_1BF4E7904();
            (*(v100 + 16))(v166, v146, v83);
            (*(v171 + 16))(v165, v170, v127);

            v147 = sub_1BF4E78D4();
            v148 = v167;
            v149 = *v167;
            if ((*v167 & 0xC000000000000001) != 0)
            {
              if (v149 < 0)
              {
                v150 = *v167;
              }

              else
              {
                v150 = v149 & 0xFFFFFFFFFFFFFF8;
              }

              v151 = sub_1BF4E9204();
              if (__OFADD__(v151, 1))
              {
                __break(1u);
LABEL_89:
                swift_once();
LABEL_66:
                v128 = sub_1BF4E7B54();
                __swift_project_value_buffer(v128, qword_1EDCA6898);

                v103 = sub_1BF4E7B34();
                v129 = sub_1BF4E8E64();

                if (os_log_type_enabled(v103, v129))
                {
                  v130 = swift_slowAlloc();
                  v131 = swift_slowAlloc();
                  v179[0] = v131;
                  *v130 = 136446210;
                  v177 = v101;
                  sub_1BF4A6514(&qword_1EBDD9A18, MEMORY[0x1E69C7338], MEMORY[0x1E69C7350]);
                  v132 = sub_1BF4E96A4();
                  v134 = sub_1BF38D65C(v132, v133, v179);

                  *(v130 + 4) = v134;
                  _os_log_impl(&dword_1BF389000, v103, v129, "Missing destination IDs for %{public}s", v130, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v131);
                  MEMORY[0x1BFB5A5D0](v131, -1, -1);
                  MEMORY[0x1BFB5A5D0](v130, -1, -1);

                  goto LABEL_62;
                }

                goto LABEL_61;
              }

              v152 = sub_1BF4E40F8(v150, v151 + 1);
              v148 = v167;
              *v167 = v152;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v179[0] = *v148;
            sub_1BF3D7A18(v147, v101, isUniquelyReferenced_nonNull_native);

            *v148 = v179[0];
            (*(v100 + 8))(v168, v83);
          }

          (*(v171 + 8))(v170, v127);
          goto LABEL_62;
        }

        v24 = 0;
        v35 = (v100 + 48);
        v162 = (v100 + 32);
        v18 = (v113 + 40);
        v115 = MEMORY[0x1E69E7CC0];
        v116 = v173;
        while (v24 < *(v114 + 2))
        {
          v21 = v114;

          sub_1BF4E7344();

          if ((*v35)(v116, 1, v83) == 1)
          {
            sub_1BF38C9B4(v116, &qword_1EBDD97E8, &unk_1BF4F29E0);
          }

          else
          {
            v117 = *v162;
            (*v162)(v175, v116, v83);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v115 = sub_1BF432B54(0, *(v115 + 2) + 1, 1, v115);
            }

            v119 = *(v115 + 2);
            v118 = *(v115 + 3);
            if (v119 >= v118 >> 1)
            {
              v115 = sub_1BF432B54((v118 > 1), v119 + 1, 1, v115);
            }

            *(v115 + 2) = v119 + 1;
            v83 = v176;
            v117(&v115[((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v119], v175, v176);
            v116 = v173;
          }

          ++v24;
          v18 += 16;
          v114 = v21;
          if (v163 == v24)
          {
            goto LABEL_70;
          }
        }

        __break(1u);
LABEL_87:
        swift_once();
      }

LABEL_29:
      v86 = v174;
      (*(v180 + 56))(v174, 1, 1, v83);
      goto LABEL_30;
    }
  }

LABEL_16:

LABEL_17:
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v79 = sub_1BF4E7B54();
  __swift_project_value_buffer(v79, qword_1EDCA6898);
  v80 = sub_1BF4E7B34();
  v81 = sub_1BF4E8E64();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1BF389000, v80, v81, "Encountered malformed record metadata", v82, 2u);
LABEL_21:
    MEMORY[0x1BFB5A5D0](v82, -1, -1);
  }

LABEL_22:
}

void sub_1BF4983D0(uint64_t a1, double a2)
{
  v4 = sub_1BF4E7984();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v132 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E7394();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v151 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7914();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v14 = *(Strong + 24);
  v15 = Strong;
  os_unfair_lock_lock(*(v14 + 16));
  v16 = *(v15 + 64);
  os_unfair_lock_unlock(*(v14 + 16));

  if (!v16)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = 0xD00000000000002FLL;
  sub_1BF4E78C4();
  v17 = (*(v10 + 88))(v12, v9);
  v130 = *MEMORY[0x1E69C72D0];
  v135 = a1;
  v136 = v7;
  v140 = v6;
  v131 = v17;
  if (v17 == v130)
  {
    (*(v10 + 96))(v12, v9);
    v18 = *v12;
    v19 = *(*v12 + 16);
    if (v19)
    {
      v144 = MEMORY[0x1E69E7CC0];
      sub_1BF3A31DC(0, v19, 0);
      v20 = v144;
      v138 = *(v136 + 16);
      v21 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v129 = v18;
      v22 = v18 + v21;
      v137 = *(v136 + 72);
      v139 = v136 + 16;
      v23 = (v136 + 8);
      do
      {
        v24 = v151;
        v25 = v140;
        (v138)(v151, v22, v140);
        v26 = sub_1BF4E7354();
        v28 = v27;
        (*v23)(v24, v25);
        v144 = v20;
        v30 = *(v20 + 16);
        v29 = *(v20 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1BF3A31DC((v29 > 1), v30 + 1, 1);
          v20 = v144;
        }

        *(v20 + 16) = v30 + 1;
        v31 = v20 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v22 += v137;
        --v19;
      }

      while (v19);

      v16 = 0xD00000000000002FLL;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v144 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6310]);
    v129 = sub_1BF4E8894();
    v139 = v32;

    v6 = v140;
    v7 = v136;
  }

  else
  {
    if (v17 != *MEMORY[0x1E69C72D8])
    {
      goto LABEL_28;
    }

    v129 = 0;
    v139 = 0;
  }

  v33 = v151;
  v34 = v132;
  LODWORD(v12) = v130;
  sub_1BF4E78E4();
  sub_1BF4E7994();

  if ((*(v7 + 48))(v34, 1, v6) == 1)
  {
    if (qword_1EBDD8550 == -1)
    {
LABEL_16:
      __swift_project_value_buffer(v6, qword_1EBDD99A8);
      v132 = sub_1BF4E7354();
      v137 = v35;
      goto LABEL_18;
    }

LABEL_27:
    swift_once();
    goto LABEL_16;
  }

  (*(v7 + 32))(v33, v34, v6);
  v132 = sub_1BF4E7354();
  v137 = v36;
  (*(v7 + 8))(v33, v6);
LABEL_18:
  v138 = v131 == v12;
  v144 = 0;
  v145 = 0xE000000000000000;
  v37 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](99);
  v148 = v144;
  v149 = v145;
  v150 = v37;
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v38 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v38);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v39 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v39);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v40 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v40);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v41 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v41);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v42 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v42);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v43 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v43);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v44 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v44);

  MEMORY[0x1BFB58C90](v16 - 31, 0x80000001BF4FA310);
  sub_1BF4E78E4();
  v45 = sub_1BF4E7964();
  v47 = v46;

  v49 = sub_1BF3D8148(v45, v47, v48);
  v51 = v50;
  v53 = v52;
  v144 = 0x676E69646E696240;
  v145 = 0xE800000000000000;
  *&v141 = *(v37 + 16) + 1;
  v54 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v54);

  v56 = v144;
  v55 = v145;
  MEMORY[0x1BFB58C90](v144, v145);
  sub_1BF3D8840(v49, v51, v53);
  v57 = v150;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v144 = v57;
  sub_1BF3D6680(v49, v51, v53, v56, v55, isUniquelyReferenced_nonNull_native, v59);

  sub_1BF3D88B8(v49, v51, v53);

  v60 = v144;
  v150 = v144;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF4E78E4();
  sub_1BF4E7974();

  v61 = sub_1BF4E7934();
  v63 = v62;

  v65 = sub_1BF3D8148(v61, v63, v64);
  v67 = v66;
  v69 = v68;
  v144 = 0x676E69646E696240;
  v145 = 0xE800000000000000;
  *&v141 = *(v60 + 16) + 1;
  v70 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v70);

  v71 = v144;
  v72 = v145;
  MEMORY[0x1BFB58C90](v144, v145);
  sub_1BF3D8840(v65, v67, v69);
  v73 = v150;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v144 = v73;
  sub_1BF3D6680(v65, v67, v69, v71, v72, v74, v75);

  sub_1BF3D88B8(v65, v67, v69);

  v76 = v144;
  v150 = v144;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v77 = v137;

  v79 = sub_1BF3D8148(v132, v77, v78);
  v81 = v80;
  v83 = v82;
  v144 = 0x676E69646E696240;
  v145 = 0xE800000000000000;
  *&v141 = *(v76 + 16) + 1;
  v84 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v84);

  v85 = v144;
  v86 = v145;
  MEMORY[0x1BFB58C90](v144, v145);
  sub_1BF3D8840(v79, v81, v83);
  v87 = v150;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v144 = v87;
  sub_1BF3D6680(v79, v81, v83, v85, v86, v88, v89);

  sub_1BF3D88B8(v79, v81, v83);

  v90 = v144;
  v150 = v144;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v91 = v151;
  sub_1BF4E78F4();
  v92 = sub_1BF4E7354();
  v94 = v93;
  (*(v136 + 8))(v91, v140);

  v96 = sub_1BF3D8148(v92, v94, v95);
  v98 = v97;
  v100 = v99;
  v144 = 0x676E69646E696240;
  v145 = 0xE800000000000000;
  *&v141 = *(v90 + 16) + 1;
  v101 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v101);

  v102 = v144;
  v103 = v145;
  MEMORY[0x1BFB58C90](v144, v145);
  sub_1BF3D8840(v96, v98, v100);
  v104 = v150;
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v144 = v104;
  sub_1BF3D6680(v96, v98, v100, v102, v103, v105, v106);

  sub_1BF3D88B8(v96, v98, v100);

  v107 = v144;
  v150 = v144;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v108 = sub_1BF3D7F44(v138);
  v110 = v109;
  v112 = v111;
  v144 = 0x676E69646E696240;
  v145 = 0xE800000000000000;
  *&v141 = *(v107 + 16) + 1;
  v113 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v113);

  v114 = v144;
  v115 = v145;
  MEMORY[0x1BFB58C90](v144, v145);
  sub_1BF3D8840(v108, v110, v112);
  v116 = v150;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v144 = v116;
  sub_1BF3D6680(v108, v110, v112, v114, v115, v117, v118);

  v119 = sub_1BF3D88B8(v108, v110, v112);
  v150 = v144;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v119);
  if (v139)
  {
    *(&v142 + 1) = MEMORY[0x1E69E6158];
    v143 = &off_1F3DF00A0;
    *&v141 = v129;
    *(&v141 + 1) = v139;
    sub_1BF38E610(&v141, &v144);
  }

  else
  {
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v120 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v146 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v147 = &off_1F3DF0088;
    v144 = v120;
    if (*(&v142 + 1))
    {
      sub_1BF38C9B4(&v141, &qword_1EBDD99D0, &qword_1BF4F7B80);
    }
  }

  v121 = v146;
  v122 = v147;
  v123 = __swift_project_boxed_opaque_existential_1(&v144, v146);
  sub_1BF478C08(v123, &v148, v121, v122);
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  v125 = v148;
  v124 = v149;
  v126 = v150;
  if (!swift_weakLoadStrong())
  {
    while (1)
    {
LABEL_28:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v127 = v134;
  sub_1BF3E4F48(v126, v125, v124);

  if (!v127)
  {
  }
}

void sub_1BF49920C()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v33 = v0;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](33);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v8 = sub_1BF4E7964();
  v10 = v9;

  v12 = sub_1BF3D8148(v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v17 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v12, v14, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v12, v14, v16, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v19);

  sub_1BF3D88B8(v12, v14, v16);

  MEMORY[0x1BFB58C90](0x20444E410ALL, 0xE500000000000000);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  sub_1BF4E7974();
  v21 = sub_1BF4E7934();
  v23 = v22;

  v25 = sub_1BF3D8148(v21, v23, v24);
  v27 = v26;
  v29 = v28;
  v30 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v30);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v25, v27, v29);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v25, v27, v29, 0x676E69646E696240, 0xE800000000000000, v31, v32);

  sub_1BF3D88B8(v25, v27, v29);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v5, 0, 0xE000000000000000);

  if (!v33)
  {
  }
}

uint64_t sub_1BF49969C()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](64);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v11 = sub_1BF3E4F48(v1, 0, 0xE000000000000000);
    if (v0)
    {
    }

    else
    {
      v12 = v11;

      v1 = sub_1BF4A5A9C(v12);
    }

    return v1;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void sub_1BF499A1C(void *a1, uint64_t *a2)
{
  v265 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A00, &qword_1BF4F53C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v263 = &v247 - v5;
  v270 = sub_1BF4E7A94();
  v267 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v261 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v266 = &v247 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v264 = &v247 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v271 = &v247 - v12;
  v276 = sub_1BF4E7A34();
  v272 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v262 = &v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v275 = &v247 - v15;
  v16 = sub_1BF4E79F4();
  v17 = *(v16 - 8);
  v281 = v16;
  v282 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v269 = &v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v280 = &v247 - v20;
  v286 = sub_1BF4E79E4();
  v288 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v268 = &v247 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v278 = &v247 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v277 = &v247 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v279 = &v247 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v258 = &v247 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v247 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v247 - v34;
  v285 = sub_1BF4E7394();
  v287 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v273 = &v247 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v274 = &v247 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v260 = &v247 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v257 = &v247 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v256 = &v247 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v259 = &v247 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v284 = &v247 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v283 = &v247 - v50;
  v51 = *a2;
  v52 = sub_1BF4E92F4();
  v54 = sub_1BF48063C(v52, v53, v51);
  v56 = v55;
  v58 = v57;
  v59 = ~v57;

  if (!v59 || (v60 = sub_1BF4244EC(v54, v56, v58), v62 = v61, sub_1BF3DB1FC(v54, v56, v58), !v62))
  {
LABEL_12:
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v103 = sub_1BF4E7B54();
    __swift_project_value_buffer(v103, qword_1EDCA6898);
    v104 = sub_1BF4E7B34();
    v105 = sub_1BF4E8E64();
    if (!os_log_type_enabled(v104, v105))
    {
      goto LABEL_17;
    }

    v106 = swift_slowAlloc();
    *v106 = 0;
    v107 = "Encountered malformed pairing relationship";
LABEL_16:
    _os_log_impl(&dword_1BF389000, v104, v105, v107, v106, 2u);
    MEMORY[0x1BFB5A5D0](v106, -1, -1);
LABEL_17:

    return;
  }

  v254 = v60;
  v255 = v2;
  v63 = sub_1BF4E92F4();
  v65 = sub_1BF48063C(v63, v64, v51);
  v67 = v66;
  v69 = v68;
  v70 = ~v68;

  if (!v70 || (v253 = sub_1BF4244E0(v65, v67, v69), v72 = v71, sub_1BF3DB1FC(v65, v67, v69), (v72 & 1) != 0) || (v73 = sub_1BF4E92F4(), v75 = sub_1BF48063C(v73, v74, v51), v77 = v76, v79 = v78, v80 = ~v78, , !v80) || (v252 = sub_1BF4244E0(v75, v77, v79), v82 = v81, sub_1BF3DB1FC(v75, v77, v79), (v82 & 1) != 0) || (v83 = sub_1BF4E92F4(), v85 = sub_1BF48063C(v83, v84, v51), v87 = v86, v89 = v88, v90 = ~v88, , !v90) || (v251 = sub_1BF4244E0(v85, v87, v89), v92 = v91, sub_1BF3DB1FC(v85, v87, v89), (v92 & 1) != 0) || (v93 = sub_1BF4E92F4(), v95 = sub_1BF48063C(v93, v94, v51), v97 = v96, v99 = v98, v100 = ~v98, , !v100) || (v250 = sub_1BF4244E0(v95, v97, v99), v102 = v101, sub_1BF3DB1FC(v95, v97, v99), (v102 & 1) != 0))
  {

    goto LABEL_12;
  }

  v108 = sub_1BF4E92F4();
  v110 = sub_1BF48063C(v108, v109, v51);
  v112 = v111;
  v114 = v113;
  v115 = ~v113;

  if (v115 && (sub_1BF4244EC(v110, v112, v114), v117 = v116, sub_1BF3DB1FC(v110, v112, v114), v117))
  {

    sub_1BF4E7344();

    v118 = v287;
    v119 = v285;
    if ((*(v287 + 48))(v35, 1, v285) == 1)
    {

      sub_1BF38C9B4(v35, &qword_1EBDD97E8, &unk_1BF4F29E0);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v120 = sub_1BF4E7B54();
      __swift_project_value_buffer(v120, qword_1EDCA6898);
      v104 = sub_1BF4E7B34();
      v105 = sub_1BF4E8E64();
      if (!os_log_type_enabled(v104, v105))
      {
        goto LABEL_17;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = "Encountered malformed relationship ID";
      goto LABEL_16;
    }

    (*(v118 + 32))(v283, v35, v119);
  }

  else
  {
    _s9ChronoKit26RemoteActivitySubscriptionV2id10activityID12hostIdentity0G5Owner7metrics6family16subscriptionType12creationDateAC10Foundation4UUIDV_SS0A8Services012DeviceScopedJ0VyAO15TypedIdentifierVyAO0xO0O10WidgetHostOGGAC0D9OwnershipO0yB00D17MetricsDefinitionVA0_0D6FamilyOAC0deO0OAL0Q0VSgtcfcfA__0();
    v118 = v287;
    v119 = v285;
  }

  sub_1BF4E7344();
  v248 = *(v118 + 48);
  if (v248(v32, 1, v119) == 1)
  {
    __break(1u);
    return;
  }

  v121 = (v118 + 32);
  v247 = *(v118 + 32);
  v247(v284, v32, v119);
  v122 = sub_1BF4E92F4();
  v124 = sub_1BF48063C(v122, v123, v51);
  v126 = v125;
  v128 = v127;
  v129 = ~v127;

  if (v129 && (v130 = sub_1BF4244EC(v124, v126, v128), v132 = v131, sub_1BF3DB1FC(v124, v126, v128), v132))
  {
    v249 = v130;
    v254 = v132;
  }

  else
  {

    v249 = 0;
    v254 = 0xE000000000000000;
  }

  v133 = v279;
  sub_1BF4E79B4();
  v134 = MEMORY[0x1E69C7478];
  if (v251 != 1)
  {
    v134 = MEMORY[0x1E69C7460];
  }

  (*(v282 + 104))(v280, *v134, v281);
  v135 = *(v288 + 16);
  v136 = v286;
  v135(v277, v133, v286);
  v135(v278, v133, v136);
  v137 = v255;
  v138 = v287;
  v139 = v274;
  if (v250 > 1)
  {
    v140 = v273;
    if (v250 == 2)
    {
      v141 = MEMORY[0x1E69C74A0];
      goto LABEL_53;
    }

    if (v250 != 3)
    {
      goto LABEL_47;
    }

    v142 = sub_1BF4E92F4();
    v144 = sub_1BF48063C(v142, v143, v51);
    v146 = v145;
    v148 = v147;
    v149 = ~v147;

    if (v149 && (sub_1BF4244EC(v144, v146, v148), v151 = v150, sub_1BF3DB1FC(v144, v146, v148), v151))
    {
      v152 = v258;
      sub_1BF4E7344();

      v153 = v285;
      if (v248(v152, 1, v285) != 1)
      {
        v242 = v256;
        v243 = v247;
        v247(v256, v152, v153);
        v244 = v275;
        v243(v275, v242, v153);
        v190 = v244;
        v141 = MEMORY[0x1E69C74B8];
        v137 = v255;
        v138 = v287;
        v139 = v274;
LABEL_54:
        (*(v272 + 104))(v190, *v141, v276);
        v191 = (v138 + 16);
        v192 = *(v138 + 16);
        v193 = v285;
        v192(v139, v284, v285);
        v192(v140, v283, v193);
        if ((v252 | v253) < 0)
        {
          __break(1u);
        }

        else
        {
          sub_1BF4E79B4();
          (*(v282 + 16))(v269, v280, v281);
          v194 = sub_1BF4E7A84();
          v195 = (*(*(v194 - 8) + 56))(v263, 1, 1, v194);
          MEMORY[0x1EEE9AC00](v195);
          *(&v247 - 4) = 0xD000000000000011;
          *(&v247 - 3) = 0x80000001BF4FD740;
          v196 = v277;
          v245 = v277;
          v197 = v137;
          v260 = sub_1BF489DA8(sub_1BF4A6374, (&v247 - 6), &unk_1F3DED760, MEMORY[0x1E69C73C8], sub_1BF3E1648);
          swift_arrayDestroy();
          v199 = v288 + 8;
          v198 = *(v288 + 8);
          v200 = v196;
          v201 = v286;
          v202 = v198(v200, v286);
          MEMORY[0x1EEE9AC00](v202);
          *(&v247 - 4) = 0xD000000000000011;
          *(&v247 - 3) = 0x80000001BF4FD740;
          v203 = v278;
          v245 = v278;
          v204 = sub_1BF489DA8(sub_1BF4A63AC, (&v247 - 6), &unk_1F3DED7F0, MEMORY[0x1E69C7370], sub_1BF3E168C);
          v255 = v197;
          swift_arrayDestroy();
          v288 = v199;
          v278 = v198;
          v198(v203, v201);
          v138 = v272;
          v205 = v262;
          (*(v272 + 16))(v262, v275, v276);
          v245 = v204;
          v246 = v205;
          v206 = v271;
          sub_1BF4E7A64();
          v139 = v267;
          v121 = v264;
          v277 = *(v267 + 2);
          (v277)(v264, v206, v270);
          v137 = v265;
          v191 = *v265;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_56:
            v208 = v191[2];
            v207 = v191[3];
            v209 = v139;
            if (v208 >= v207 >> 1)
            {
              v191 = sub_1BF432B7C((v207 > 1), v208 + 1, 1, v191);
            }

            v210 = v270;
            v191[2] = v208 + 1;
            (*(v209 + 4))(v191 + ((v209[80] + 32) & ~v209[80]) + *(v209 + 9) * v208, v121, v210);
            *v137 = v191;
            if (qword_1EDC9D460 != -1)
            {
              swift_once();
            }

            v211 = sub_1BF4E7B54();
            __swift_project_value_buffer(v211, qword_1EDCA6898);
            v212 = v266;
            v213 = v271;
            v214 = v277;
            (v277)(v266, v271, v210);
            v215 = sub_1BF4E7B34();
            v216 = sub_1BF4E8E84();
            if (os_log_type_enabled(v215, v216))
            {
              v217 = swift_slowAlloc();
              v274 = swift_slowAlloc();
              v290 = v274;
              *v217 = 136446210;
              v214(v261, v212, v210);
              v218 = sub_1BF4E8994();
              v220 = v219;
              v221 = *(v209 + 1);
              v221(v212, v210);
              v222 = sub_1BF38D65C(v218, v220, &v290);

              *(v217 + 4) = v222;
              _os_log_impl(&dword_1BF389000, v215, v216, "Parsed stored remote device: %{public}s", v217, 0xCu);
              v223 = v274;
              __swift_destroy_boxed_opaque_existential_1Tm(v274);
              MEMORY[0x1BFB5A5D0](v223, -1, -1);
              MEMORY[0x1BFB5A5D0](v217, -1, -1);

              v221(v271, v210);
              (*(v272 + 8))(v275, v276);
            }

            else
            {

              v224 = *(v209 + 1);
              v224(v212, v210);
              v224(v213, v210);
              (*(v138 + 8))(v275, v276);
            }

            (*(v282 + 8))(v280, v281);
            (v278)(v279, v286);
            v225 = *(v287 + 8);
            v226 = v285;
            v225(v284, v285);
            v225(v283, v226);
            return;
          }
        }

        v191 = sub_1BF432B7C(0, v191[2] + 1, 1, v191);
        goto LABEL_56;
      }

      v154 = v288 + 8;
      v155 = *(v288 + 8);
      v156 = v286;
      v155(v278, v286);
      v288 = v154;
      v278 = v155;
      v155(v277, v156);
      sub_1BF38C9B4(v152, &qword_1EBDD97E8, &unk_1BF4F29E0);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v157 = sub_1BF4E7B54();
      __swift_project_value_buffer(v157, qword_1EDCA6898);
      v158 = v287;
      v159 = v257;
      (*(v287 + 16))(v257, v284, v153);
      v160 = sub_1BF4E7B34();
      v161 = sub_1BF4E8E64();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v290 = v163;
        *v162 = 136446210;
        sub_1BF4A6514(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v164 = sub_1BF4E96A4();
        v165 = v159;
        v167 = v166;
        v168 = *(v158 + 8);
        v168(v165, v153);
        v169 = sub_1BF38D65C(v164, v167, &v290);

        *(v162 + 4) = v169;
        v170 = "Bad migrating-from ID for %{public}s";
LABEL_68:
        _os_log_impl(&dword_1BF389000, v160, v161, v170, v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
        MEMORY[0x1BFB5A5D0](v163, -1, -1);
        MEMORY[0x1BFB5A5D0](v162, -1, -1);

        (*(v282 + 8))(v280, v281);
        (v278)(v279, v286);
        v168(v284, v153);
        v168(v283, v153);
        return;
      }

      v240 = *(v158 + 8);
      v240(v159, v153);
      (*(v282 + 8))(v280, v281);
      (v278)(v279, v286);
      v241 = v284;
    }

    else
    {

      v227 = v288 + 8;
      v228 = *(v288 + 8);
      v229 = v286;
      v228(v278, v286);
      v288 = v227;
      v228(v277, v229);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v230 = sub_1BF4E7B54();
      __swift_project_value_buffer(v230, qword_1EDCA6898);
      v231 = v287;
      v232 = v259;
      v233 = v284;
      v153 = v285;
      (*(v287 + 16))(v259, v284, v285);
      v160 = sub_1BF4E7B34();
      v161 = sub_1BF4E8E64();
      if (os_log_type_enabled(v160, v161))
      {
        v234 = swift_slowAlloc();
        v278 = v228;
        v162 = v234;
        v163 = swift_slowAlloc();
        v290 = v163;
        *v162 = 136446210;
        sub_1BF4A6514(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v235 = sub_1BF4E96A4();
        v237 = v236;
        v168 = *(v231 + 8);
        v168(v232, v153);
        v238 = sub_1BF38D65C(v235, v237, &v290);

        *(v162 + 4) = v238;
        v170 = "No migrating-from ID for %{public}s";
        goto LABEL_68;
      }

      v240 = *(v231 + 8);
      v240(v232, v153);
      (*(v282 + 8))(v280, v281);
      v228(v279, v286);
      v241 = v233;
    }

    v240(v241, v153);
    v240(v283, v153);
    return;
  }

  v140 = v273;
  if (!v250)
  {
    v141 = MEMORY[0x1E69C7490];
    goto LABEL_53;
  }

  if (v250 == 1)
  {
    v141 = MEMORY[0x1E69C74A8];
LABEL_53:
    v190 = v275;
    goto LABEL_54;
  }

LABEL_47:

  v171 = v288 + 8;
  v172 = *(v288 + 8);
  v173 = v286;
  v172(v278, v286);
  v288 = v171;
  v278 = v172;
  v172(v277, v173);
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v174 = sub_1BF4E7B54();
  __swift_project_value_buffer(v174, qword_1EDCA6898);
  v175 = v260;
  v176 = v284;
  v177 = v285;
  (*(v138 + 16))(v260, v284, v285);
  v178 = sub_1BF4E7B34();
  v179 = sub_1BF4E8E64();
  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v290 = v181;
    *v180 = 136446466;
    sub_1BF4A6514(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v182 = sub_1BF4E96A4();
    v184 = v183;
    v185 = *(v138 + 8);
    v185(v175, v177);
    v186 = sub_1BF38D65C(v182, v184, &v290);

    *(v180 + 4) = v186;
    *(v180 + 12) = 2082;
    v289 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A08, &qword_1BF4F53C8);
    v187 = sub_1BF4E8994();
    v189 = sub_1BF38D65C(v187, v188, &v290);

    *(v180 + 14) = v189;
    _os_log_impl(&dword_1BF389000, v178, v179, "Illegal state for %{public}s: %{public}s", v180, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v181, -1, -1);
    MEMORY[0x1BFB5A5D0](v180, -1, -1);

    (*(v282 + 8))(v280, v281);
    (v278)(v279, v286);
    v185(v284, v177);
    v185(v283, v177);
  }

  else
  {

    v239 = *(v138 + 8);
    v239(v175, v177);
    (*(v282 + 8))(v280, v281);
    (v278)(v279, v286);
    v239(v176, v177);
    v239(v283, v177);
  }
}

uint64_t sub_1BF49B604(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v12 = sub_1BF4E79E4();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  (*(v18 + 16))(v15, a4, v13);

  return a7(v17, v16, a2, a3, v15);
}

void sub_1BF49B728(void (*a1)(char *, uint64_t))
{
  v174 = sub_1BF4E7334();
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v167 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BF4E79E4();
  v4 = *(v3 - 8);
  v181 = v3;
  v182 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v180 = (&v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = sub_1BF4E79F4();
  v6 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v8 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7394();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF4E7A34();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = a1;
  sub_1BF4E7A44();
  v17 = v14[11](v16, v13);
  v18 = *MEMORY[0x1E69C74B8];
  v179 = v10;
  if (v17 == v18)
  {
    v14[12](v16, v13);
    (*(v10 + 32))(v12, v16, v9);
    v168 = sub_1BF4E7354();
    v175 = v19;
    (*(v10 + 8))(v12, v9);
    v20 = 3;
LABEL_3:
    v171 = v20;
    goto LABEL_6;
  }

  if (v17 != *MEMORY[0x1E69C7490])
  {
    if (v17 == *MEMORY[0x1E69C74A8])
    {
      v168 = 0;
      v175 = 0;
      v20 = 1;
    }

    else
    {
      if (v17 != *MEMORY[0x1E69C74A0])
      {
        goto LABEL_27;
      }

      v168 = 0;
      v175 = 0;
      v20 = 2;
    }

    goto LABEL_3;
  }

  v168 = 0;
  v175 = 0;
  v171 = 0;
LABEL_6:
  v21 = v9;
  sub_1BF4E7A04();
  v22 = v178;
  v23 = (*(v6 + 88))(v8, v178);
  v24 = *MEMORY[0x1E69C7478];
  v170 = v23;
  v169 = v24;
  if (v23 != v24)
  {
    (*(v6 + 8))(v8, v22);
  }

  v187 = 0;
  v188 = 0xE000000000000000;
  v25 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](147);
  v191 = v187;
  v192 = v188;
  v193 = v25;
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v26 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v26);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v27 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v27);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v28 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v28);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v29 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v29);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v30 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v30);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v31 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v31);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v32 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v32);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v33 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v33);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v34 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v34);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v35 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v35);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v36 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v36);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  sub_1BF4E7A14();
  v37 = sub_1BF4E7354();
  v39 = v38;
  v179 = *(v179 + 8);
  (v179)(v12, v21);

  v41 = sub_1BF3D8148(v37, v39, v40);
  v178 = v21;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v187 = 0x676E69646E696240;
  v188 = 0xE800000000000000;
  *&v184 = *(v25 + 16) + 1;
  v47 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v47);

  v49 = v187;
  v48 = v188;
  MEMORY[0x1BFB58C90](v187, v188);
  sub_1BF3D8840(v42, v44, v46);
  v50 = v193;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v187 = v50;
  sub_1BF3D6680(v42, v44, v46, v49, v48, isUniquelyReferenced_nonNull_native, v52);

  sub_1BF3D88B8(v42, v44, v46);

  v53 = v187;
  v193 = v187;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF4E7A54();
  v54 = sub_1BF4E7354();
  v56 = v55;
  (v179)(v12, v178);

  v58 = sub_1BF3D8148(v54, v56, v57);
  v60 = v59;
  v62 = v61;
  v187 = 0x676E69646E696240;
  v188 = 0xE800000000000000;
  *&v184 = *(v53 + 16) + 1;
  v63 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v63);

  v64 = v187;
  v65 = v188;
  MEMORY[0x1BFB58C90](v187, v188);
  sub_1BF3D8840(v58, v60, v62);
  v66 = v193;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v66;
  sub_1BF3D6680(v58, v60, v62, v64, v65, v67, v68);

  sub_1BF3D88B8(v58, v60, v62);

  v69 = v187;
  v193 = v187;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v70 = sub_1BF4E7A74();
  v16 = v71;

  v13 = sub_1BF3D8148(v70, v16, v72);
  v74 = v73;
  v76 = v75;
  v187 = 0x676E69646E696240;
  v188 = 0xE800000000000000;
  *&v184 = *(v69 + 16) + 1;
  v77 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v77);

  v78 = v187;
  v79 = v188;
  MEMORY[0x1BFB58C90](v187, v188);
  sub_1BF3D8840(v13, v74, v76);
  v80 = v193;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v80;
  sub_1BF3D6680(v13, v74, v76, v78, v79, v81, v82);

  sub_1BF3D88B8(v13, v74, v76);

  v83 = v187;
  v193 = v187;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v14 = v180;
  sub_1BF4E7A24();
  v84 = sub_1BF4E79D4();
  v85 = v181;
  v87 = v182 + 8;
  v86 = *(v182 + 8);
  v86(v14, v181);
  if (v84 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v88 = sub_1BF3D7F44(v84);
  v13 = v89;
  v16 = v90;
  v187 = 0x676E69646E696240;
  v188 = 0xE800000000000000;
  *&v184 = *(v83 + 16) + 1;
  v182 = v87;
  v91 = v86;
  v92 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v92);

  v93 = v187;
  v94 = v188;
  MEMORY[0x1BFB58C90](v187, v188);
  sub_1BF3D8840(v88, v13, v16);
  v95 = v193;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v95;
  sub_1BF3D6680(v88, v13, v16, v93, v94, v96, v97);

  v98 = sub_1BF3D88B8(v88, v13, v16);
  v99 = v187;
  v193 = v187;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v98);
  sub_1BF4E7A24();
  v100 = sub_1BF4E79C4();
  v91(v14, v85);
  if (v100 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v101 = sub_1BF3D7F44(v100);
  v103 = v102;
  v105 = v104;
  v187 = 0x676E69646E696240;
  v188 = 0xE800000000000000;
  *&v184 = *(v99 + 16) + 1;
  v106 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v106);

  v107 = v187;
  v108 = v188;
  MEMORY[0x1BFB58C90](v187, v188);
  sub_1BF3D8840(v101, v103, v105);
  v109 = v193;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v109;
  sub_1BF3D6680(v101, v103, v105, v107, v108, v110, v111);

  v112 = sub_1BF3D88B8(v101, v103, v105);
  v193 = v187;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v112);
  v113 = 0.0;
  v114 = MEMORY[0x1E69E63B0];
  if (v170 == v169)
  {
    v113 = 1.0;
  }

  v189 = MEMORY[0x1E69E63B0];
  v190 = &off_1F3DF0098;
  v187 = *&v113;
  v115 = __swift_project_boxed_opaque_existential_1(&v187, MEMORY[0x1E69E63B0]);
  sub_1BF478C08(v115, &v191, v114, &off_1F3DF0098);
  __swift_destroy_boxed_opaque_existential_1Tm(&v187);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v116 = v172;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E72C4();
  v118 = v117;
  v183 = *(v173 + 8);
  v119 = v174;
  v183(v116, v174);
  v120 = sub_1BF3D833C(v118);
  v122 = v121;
  v124 = v123;
  v187 = 0x676E69646E696240;
  v188 = 0xE800000000000000;
  *&v184 = *(v193 + 16) + 1;
  v125 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v125);

  v126 = v187;
  v127 = v188;
  MEMORY[0x1BFB58C90](v187, v188);
  sub_1BF3D8840(v120, v122, v124);
  v128 = v193;
  v129 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v128;
  sub_1BF3D6680(v120, v122, v124, v126, v127, v129, v130);

  v131 = sub_1BF3D88B8(v120, v122, v124);
  v132 = v187;
  v193 = v187;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v131);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E72C4();
  v134 = v133;
  v183(v116, v119);
  v135 = sub_1BF3D833C(v134);
  v137 = v136;
  v139 = v138;
  v187 = 0x676E69646E696240;
  v188 = 0xE800000000000000;
  *&v184 = *(v132 + 16) + 1;
  v140 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v140);

  v141 = v187;
  v142 = v188;
  MEMORY[0x1BFB58C90](v187, v188);
  sub_1BF3D8840(v135, v137, v139);
  v143 = v193;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v143;
  sub_1BF3D6680(v135, v137, v139, v141, v142, v144, v145);

  v146 = sub_1BF3D88B8(v135, v137, v139);
  v14 = v187;
  v193 = v187;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v146);
  v147 = sub_1BF3D7F44(v171);
  v149 = v148;
  v151 = v150;
  v187 = 0x676E69646E696240;
  v188 = 0xE800000000000000;
  *&v184 = v14[2] + 1;
  v152 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v152);

  v153 = v187;
  v154 = v188;
  MEMORY[0x1BFB58C90](v187, v188);
  sub_1BF3D8840(v147, v149, v151);
  v155 = v193;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v155;
  sub_1BF3D6680(v147, v149, v151, v153, v154, v156, v157);

  v158 = sub_1BF3D88B8(v147, v149, v151);
  v193 = v187;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v158);
  if (v175)
  {
    *(&v185 + 1) = MEMORY[0x1E69E6158];
    v186 = &off_1F3DF00A0;
    *&v184 = v168;
    *(&v184 + 1) = v175;
    sub_1BF38E610(&v184, &v187);
    v16 = v176;
  }

  else
  {
    v186 = 0;
    v184 = 0u;
    v185 = 0u;
    v159 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v189 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v190 = &off_1F3DF0088;
    v187 = v159;
    v16 = v176;
    if (*(&v185 + 1))
    {
      sub_1BF38C9B4(&v184, &qword_1EBDD99D0, &qword_1BF4F7B80);
    }
  }

  v160 = v189;
  v161 = v190;
  v162 = __swift_project_boxed_opaque_existential_1(&v187, v189);
  sub_1BF478C08(v162, &v191, v160, v161);
  __swift_destroy_boxed_opaque_existential_1Tm(&v187);
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  v13 = v191;
  v163 = v192;
  v164 = v193;
  if (!swift_weakLoadStrong())
  {
    while (1)
    {
LABEL_26:
      v17 = sub_1BF4E9464();
      __break(1u);
LABEL_27:
      if (v17 != *MEMORY[0x1E69C74B0])
      {
        v166 = v14[1];
        ++v14;
        v166(v16, v13);
      }
    }
  }

  v165 = v177;
  sub_1BF3E4F48(v164, v13, v163);

  if (!v165)
  {
  }
}