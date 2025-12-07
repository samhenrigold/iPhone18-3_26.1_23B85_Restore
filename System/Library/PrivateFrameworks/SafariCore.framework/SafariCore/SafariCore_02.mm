unint64_t sub_1B8526228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A820, &qword_1B8574738);
    v3 = sub_1B8566638();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B853560C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B852632C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A810, &qword_1B8574700);
    v3 = sub_1B8566638();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1B853573C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B8526424()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B851F914;

  return sub_1B85234AC(v2, v3, v4);
}

uint64_t sub_1B85264D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B851F914;

  return sub_1B8521794(v2, v3, v5, v4);
}

double sub_1B8526598@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

double sub_1B85265DC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    result = *&v6;
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1B8526624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B852666C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WBSShareablePasskey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1B85266D0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_1B8526714@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

unint64_t sub_1B852675C()
{
  result = qword_1ED9856B0;
  if (!qword_1ED9856B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9856B0);
  }

  return result;
}

unint64_t sub_1B85267B0()
{
  result = qword_1EBA8A850;
  if (!qword_1EBA8A850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8A850);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B8526860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B85268CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WBSKeychainPasskey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B85269B0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

BOOL static WBSFileVaultRecoveryKeyError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (v3)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        v4 = *(a2 + 4);
      }

      return (v4 & 1) != 0;
    }

    if (v3 == 1)
    {
      v7 = *(a2 + 4);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v6 = *(a2 + 4);
    }

    else
    {
      v6 = 0;
    }

    return (v6 & 1) != 0;
  }

  if (v3 > 2)
  {
    v8 = *(a2 + 4);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

BOOL sub_1B8526A88(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

id static WBSSavedAccountStore.partialStoreForFileVaultRecoveryKeys()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A880, &qword_1B8574790);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B85740E0;
  *(v0 + 32) = sub_1B8565DA8();
  *(v0 + 40) = v1;
  v2 = objc_allocWithZone(WBSSavedAccountStore);
  v3 = sub_1B8565FF8();

  v4 = [v2 initPartialStoreForDomains:v3 forTesting:0];

  return v4;
}

uint64_t WBSSavedAccountStore.saveFileVaultRecoveryKey(request:)(uint64_t a1)
{
  v2[96] = v1;
  v2[95] = a1;
  v3 = sub_1B8565B38();
  v2[97] = v3;
  v2[98] = *(v3 - 8);
  v2[99] = swift_task_alloc();
  v4 = sub_1B8565DF8();
  v2[100] = v4;
  v2[101] = *(v4 - 8);
  v2[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8526CD8, 0, 0);
}

uint64_t sub_1B8526CD8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = [*(v0 + 760) recoveryKey];
  sub_1B8565DA8();

  sub_1B8565DE8();
  v5 = sub_1B8565DB8();
  v7 = v6;

  *(v0 + 824) = v5;
  *(v0 + 832) = v7;
  (*(v2 + 8))(v1, v3);
  if (v7 >> 60 == 15)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v8 = sub_1B8565B78();
    __swift_project_value_buffer(v8, qword_1ED985C68);
    v9 = sub_1B8565B48();
    v10 = sub_1B8566218();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B8447000, v9, v10, "Failed to encode recovery key", v11, 2u);
      MEMORY[0x1B8CC1710](v11, -1, -1);
    }

    sub_1B852B150();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 760);
    v16 = [v15 volumeID];
    v17 = sub_1B8565DA8();
    v19 = v18;

    *(v0 + 840) = v19;
    v20 = [v15 serialNumber];
    v21 = sub_1B8565DA8();
    v23 = v22;

    *(v0 + 848) = v23;
    v24 = swift_task_alloc();
    *(v0 + 856) = v24;
    *v24 = v0;
    v24[1] = sub_1B8526FC0;

    return sub_1B8528CCC(v17, v19, v21, v23, 0);
  }
}

uint64_t sub_1B8526FC0()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_1B8527D80;
  }

  else
  {

    v2 = sub_1B85270E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B85270E8()
{
  v142 = v0;
  v134 = *(v0 + 864);
  v1 = *(v0 + 760);
  v2 = sub_1B852CDA8(v1);
  v4 = v3;
  v5 = [v1 serialNumber];
  if (!v5)
  {
    sub_1B8565DA8();
    v5 = sub_1B8565D68();
  }

  v126 = v2;
  v127 = v4;
  v6 = [*(v0 + 760) volumeID];
  if (!v6)
  {
    sub_1B8565DA8();
    v6 = sub_1B8565D68();
  }

  v137 = *(v0 + 832);
  v7 = *(v0 + 824);
  v132 = *(v0 + 768);
  v8 = [objc_opt_self() uniqueIdentifierFromSerialNumber:v5 volumeID:v6];

  v136 = sub_1B8565DA8();
  v139 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574770;
  v11 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v130 = v11;
  v12 = *MEMORY[0x1E697B018];
  type metadata accessor for CFString(0);
  *(inited + 40) = v12;
  v128 = *MEMORY[0x1E697AE00];
  v13 = *MEMORY[0x1E697AE00];
  *(inited + 64) = v14;
  *(inited + 72) = v13;
  v15 = *MEMORY[0x1E697AE30];
  *(inited + 80) = *MEMORY[0x1E697AE30];
  v140 = v0;
  v16 = *MEMORY[0x1E697AC50];
  *(inited + 104) = v14;
  *(inited + 112) = v16;
  v17 = *MEMORY[0x1E697AC60];
  *(inited + 120) = *MEMORY[0x1E697AC60];
  v18 = *MEMORY[0x1E697AE80];
  *(inited + 144) = v14;
  *(inited + 152) = v18;
  v19 = sub_1B8565DA8();
  v20 = MEMORY[0x1E69E6158];
  v21 = MEMORY[0x1E697B390];
  *(inited + 160) = v19;
  *(inited + 168) = v22;
  v23 = *v21;
  *(inited + 184) = v20;
  *(inited + 192) = v23;
  v24 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v25 = *MEMORY[0x1E697B3C0];
  *(inited + 224) = v24;
  *(inited + 232) = v25;
  *(inited + 264) = MEMORY[0x1E6969080];
  *(inited + 240) = v7;
  *(inited + 248) = v137;
  v26 = v130;
  v27 = v12;
  v28 = v128;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = MEMORY[0x1E69E6158];
  v33 = v18;
  v34 = v23;
  v35 = v25;
  sub_1B852CF28(v7, v137);
  v138 = sub_1B8526100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1B8574780;
  v37 = *MEMORY[0x1E697ABD0];
  *(v36 + 32) = *MEMORY[0x1E697ABD0];
  v131 = v37;
  v38 = [v132 isForTesting];
  v39 = 0xD00000000000001BLL;
  v40 = "rds.filevault.testing";
  if (!v38)
  {
    v39 = 0xD000000000000013;
    v40 = "AccountMatchResult8";
  }

  *(v36 + 40) = v39;
  *(v36 + 48) = v40 | 0x8000000000000000;
  v41 = *MEMORY[0x1E697AEB0];
  *(v36 + 64) = v32;
  *(v36 + 72) = v41;
  *(v36 + 80) = 1;
  v42 = *MEMORY[0x1E697ACE0];
  *(v36 + 104) = MEMORY[0x1E69E6370];
  *(v36 + 112) = v42;
  *(v36 + 120) = 0xD000000000000016;
  *(v36 + 128) = 0x80000001B858E190;
  v43 = *MEMORY[0x1E697ADC8];
  *(v36 + 144) = v32;
  *(v36 + 152) = v43;
  *(v36 + 160) = v136;
  *(v36 + 168) = v139;
  v44 = *MEMORY[0x1E697AC30];
  *(v36 + 184) = v32;
  *(v36 + 192) = v44;
  *(v36 + 224) = v32;
  *(v36 + 200) = v136;
  *(v36 + 208) = v139;
  swift_bridgeObjectRetain_n();
  v133 = v41;
  v45 = v42;
  v46 = v43;
  v47 = v44;
  v48 = sub_1B8526100(v36);
  swift_setDeallocating();
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v141[0] = v138;
  sub_1B852CF3C(v48, sub_1B852CC08, 0, isUniquelyReferenced_nonNull_native, v141);

  if (v134)
  {
  }

  v51 = v47;
  v129 = v46;
  v135 = v45;
  v52 = v133;
  sub_1B85298E8(v141[0]);
  v125 = v51;

  v53 = v140;
  if (qword_1ED985688 != -1)
  {
LABEL_51:
    swift_once();
  }

  v54 = sub_1B8565B78();
  v124 = __swift_project_value_buffer(v54, qword_1ED985C68);
  v55 = sub_1B8565B48();
  v56 = sub_1B85661F8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1B8447000, v55, v56, "Saved FileVault recovery key in Passwords access group.", v57, 2u);
    MEMORY[0x1B8CC1710](v57, -1, -1);
  }

  v58 = v140[96];
  v59 = v140[95];

  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_1B8574780;
  *(v60 + 32) = v131;
  v61 = v131;
  v62 = [v58 isForTesting];
  v63 = 0xD00000000000001DLL;
  if (v62)
  {
    v63 = 0xD000000000000025;
    v64 = "com.apple.passwords.filevault";
  }

  else
  {
    v64 = "Filevault recovery key";
  }

  *(v60 + 40) = v63;
  *(v60 + 48) = v64 | 0x8000000000000000;
  v65 = MEMORY[0x1E69E6158];
  *(v60 + 64) = MEMORY[0x1E69E6158];
  *(v60 + 72) = v52;
  *(v60 + 80) = 0;
  *(v60 + 104) = MEMORY[0x1E69E6370];
  *(v60 + 112) = v135;
  *(v60 + 120) = v126;
  *(v60 + 128) = v127;
  *(v60 + 144) = v65;
  *(v60 + 152) = v129;
  v66 = v52;
  v67 = v135;
  v68 = v129;

  v69 = [v59 serialNumber];
  v70 = sub_1B8565DA8();
  v72 = v71;

  *(v60 + 160) = v70;
  *(v60 + 168) = v72;
  *(v60 + 184) = v65;
  *(v60 + 192) = v125;
  v73 = v125;
  v74 = [v59 volumeID];
  v75 = sub_1B8565DA8();
  v77 = v76;

  *(v60 + 224) = v65;
  *(v60 + 200) = v75;
  *(v60 + 208) = v77;
  v78 = sub_1B8526100(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v141[0] = v138;
  sub_1B852CF3C(v78, sub_1B852CC08, 0, v79, v141);

  sub_1B85298E8(v141[0]);

  v80 = sub_1B8565B48();
  v81 = sub_1B85661F8();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1B8447000, v80, v81, "Saved FileVault recovery key in FileVault access group.", v82, 2u);
    MEMORY[0x1B8CC1710](v82, -1, -1);
  }

  v83 = v140[96];

  [v83 reset];
  v84 = [v83 savedAccounts];
  sub_1B852D21C();
  v85 = sub_1B8566008();

  if (v85 >> 62)
  {
    v86 = sub_1B8566358();
    if (v86)
    {
      goto LABEL_23;
    }

LABEL_53:

    v117 = sub_1B8565B48();
    v118 = sub_1B8566218();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v140[104];
    v121 = v140[103];
    if (v119)
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_1B8447000, v117, v118, "Failed to fetch the saved account for recently saved recovery key.", v122, 2u);
      MEMORY[0x1B8CC1710](v122, -1, -1);
    }

    sub_1B852608C(v121, v120);

    goto LABEL_56;
  }

  v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v86)
  {
    goto LABEL_53;
  }

LABEL_23:
  v87 = 0;
  while (1)
  {
    if ((v85 & 0xC000000000000001) != 0)
    {
      v88 = MEMORY[0x1B8CBF6C0](v87, v85);
    }

    else
    {
      if (v87 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v88 = *(v85 + 8 * v87 + 32);
    }

    v89 = v88;
    v90 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v91 = [v88 user];
    if (!v91)
    {
      goto LABEL_24;
    }

    v92 = v91;
    v93 = sub_1B8565DA8();
    v95 = v94;

    if (v93 == v136 && v95 == v139)
    {
      break;
    }

    v52 = sub_1B8566758();

    if (v52)
    {
      goto LABEL_38;
    }

LABEL_24:

    ++v87;
    if (v90 == v86)
    {
      goto LABEL_53;
    }
  }

LABEL_38:
  v97 = v140[95];

  v98 = v89;
  v99 = sub_1B8565D68();

  [v98 setCustomTitle:v99 performSidecarUpdate:1];

  v100 = [v97 serialNumber];
  if (!v100)
  {
    sub_1B8565DA8();
    v100 = sub_1B8565D68();
  }

  v101 = objc_opt_self();
  v102 = [v101 currentDevice];
  v103 = [v102 modelName];

  if (!v103)
  {
    sub_1B8565DA8();
    v103 = sub_1B8565D68();
  }

  v104 = [v101 currentDevice];
  v105 = [v104 chipName];

  if (v105)
  {
    sub_1B8565DA8();
    v107 = v106;
  }

  else
  {
    v107 = 0;
  }

  v108 = v140[99];
  v109 = v140[98];
  v110 = v140[97];
  sub_1B8565B28();
  sub_1B8565B18();
  (*(v109 + 8))(v108, v110);
  if (v107)
  {
    v111 = sub_1B8565D68();
  }

  else
  {
    v111 = 0;
  }

  v53 = v140;
  v112 = v140[104];
  v113 = v140[103];
  v114 = objc_allocWithZone(WBSFileVaultRecoveryKeyDeviceInfo);
  v115 = sub_1B8565D68();

  v116 = [v114 initWithSerialNumber:v100 model:v103 variant:v111 deviceTypeIdentifier:v115];

  [v98 setFileVaultRecoveryKeyDeviceInfo_];
  sub_1B852608C(v113, v112);
LABEL_56:

  v123 = v53[1];

  return v123();
}

uint64_t sub_1B8527D80()
{
  v164 = v0;
  v1 = *(v0 + 108);

  *(v0 + 94) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6F0, &qword_1B8574540);
  v3 = &unk_1E7CF5000;
  if ((swift_dynamicCast() & 1) != 0 && v0[876] == 1 && *(v0 + 218) >= 3u)
  {

    v4 = *(v0 + 94);
  }

  else
  {

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 108);
    v6 = *(v0 + 95);
    v7 = sub_1B8565B78();
    __swift_project_value_buffer(v7, qword_1ED985C68);
    v8 = v5;
    v9 = v6;
    v10 = sub_1B8565B48();
    v11 = sub_1B8566218();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 108);
    if (v12)
    {
      v14 = *(v0 + 95);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v163[0] = v161;
      *v15 = 136315650;
      v17 = [v14 volumeID];
      v18 = sub_1B8565DA8();
      v20 = v19;

      v21 = sub_1B8525560(v18, v20, v163);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v22 = [v14 serialNumber];
      v23 = sub_1B8565DA8();
      v25 = v24;

      v26 = sub_1B8525560(v23, v25, v163);

      *(v15 + 14) = v26;
      v3 = &unk_1E7CF5000;
      *(v15 + 22) = 2112;
      v27 = v13;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v28;
      *v16 = v28;
      _os_log_impl(&dword_1B8447000, v10, v11, "Failed to delete existing keychain item while saving new one. volumeID: %s, serialNumber: %s, error: %@", v15, 0x20u);
      sub_1B8456588(v16, &qword_1EBA8A8A0, &qword_1B85747C0);
      MEMORY[0x1B8CC1710](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B8CC1710](v161, -1, -1);
      MEMORY[0x1B8CC1710](v15, -1, -1);

      goto LABEL_11;
    }

    v4 = v13;
  }

LABEL_11:
  v29 = *(v0 + 95);
  v149 = sub_1B852CDA8(v29);
  v150 = v30;
  v31 = [v29 serialNumber];
  if (!v31)
  {
    sub_1B8565DA8();
    v31 = sub_1B8565D68();
  }

  v32 = [*(v0 + 95) v3[458]];
  if (!v32)
  {
    sub_1B8565DA8();
    v32 = sub_1B8565D68();
  }

  v155 = *(v0 + 104);
  v33 = *(v0 + 103);
  v156 = *(v0 + 96);
  v34 = [objc_opt_self() uniqueIdentifierFromSerialNumber:v31 volumeID:v32];

  v158 = sub_1B8565DA8();
  v159 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574770;
  v37 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v153 = v37;
  v38 = *MEMORY[0x1E697B018];
  v151 = *MEMORY[0x1E697B018];
  type metadata accessor for CFString(0);
  *(inited + 40) = v38;
  v162 = v0;
  v39 = *MEMORY[0x1E697AE00];
  *(inited + 64) = v40;
  *(inited + 72) = v39;
  v41 = *MEMORY[0x1E697AE30];
  *(inited + 80) = *MEMORY[0x1E697AE30];
  v42 = *MEMORY[0x1E697AC50];
  *(inited + 104) = v40;
  *(inited + 112) = v42;
  v43 = *MEMORY[0x1E697AC60];
  *(inited + 120) = *MEMORY[0x1E697AC60];
  v44 = *MEMORY[0x1E697AE80];
  *(inited + 144) = v40;
  *(inited + 152) = v44;
  v45 = sub_1B8565DA8();
  v46 = MEMORY[0x1E69E6158];
  v47 = MEMORY[0x1E697B390];
  *(inited + 160) = v45;
  *(inited + 168) = v48;
  v49 = *v47;
  *(inited + 184) = v46;
  *(inited + 192) = v49;
  v50 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v51 = *MEMORY[0x1E697B3C0];
  *(inited + 224) = v50;
  *(inited + 232) = v51;
  *(inited + 264) = MEMORY[0x1E6969080];
  *(inited + 240) = v33;
  *(inited + 248) = v155;
  v52 = v153;
  v53 = v151;
  v54 = v39;
  v55 = v41;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = v49;
  v60 = v51;
  sub_1B852CF28(v33, v155);
  v61 = sub_1B8526100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1B8574780;
  v63 = *MEMORY[0x1E697ABD0];
  *(v62 + 32) = *MEMORY[0x1E697ABD0];
  v154 = v63;
  v64 = [v156 isForTesting];
  v65 = 0xD00000000000001BLL;
  v66 = "rds.filevault.testing";
  if (!v64)
  {
    v65 = 0xD000000000000013;
    v66 = "AccountMatchResult8";
  }

  *(v62 + 40) = v65;
  *(v62 + 48) = v66 | 0x8000000000000000;
  v67 = *MEMORY[0x1E697AEB0];
  v68 = MEMORY[0x1E69E6158];
  *(v62 + 64) = MEMORY[0x1E69E6158];
  *(v62 + 72) = v67;
  *(v62 + 80) = 1;
  v69 = *MEMORY[0x1E697ACE0];
  *(v62 + 104) = MEMORY[0x1E69E6370];
  *(v62 + 112) = v69;
  *(v62 + 120) = 0xD000000000000016;
  *(v62 + 128) = 0x80000001B858E190;
  v70 = *MEMORY[0x1E697ADC8];
  *(v62 + 144) = v68;
  *(v62 + 152) = v70;
  *(v62 + 160) = v158;
  *(v62 + 168) = v159;
  v71 = *MEMORY[0x1E697AC30];
  *(v62 + 184) = v68;
  *(v62 + 192) = v71;
  *(v62 + 224) = v68;
  *(v62 + 200) = v158;
  *(v62 + 208) = v159;
  swift_bridgeObjectRetain_n();
  v72 = v67;
  v73 = v69;
  v74 = v70;
  v75 = v71;
  v76 = sub_1B8526100(v62);
  swift_setDeallocating();
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v163[0] = v61;
  sub_1B852CF3C(v76, sub_1B852CC08, 0, isUniquelyReferenced_nonNull_native, v163);

  v157 = v75;
  v78 = v0;
  sub_1B85298E8(v163[0]);

  if (qword_1ED985688 != -1)
  {
LABEL_59:
    swift_once();
  }

  v152 = v61;
  v80 = sub_1B8565B78();
  v148 = __swift_project_value_buffer(v80, qword_1ED985C68);
  v81 = sub_1B8565B48();
  v82 = sub_1B85661F8();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_1B8447000, v81, v82, "Saved FileVault recovery key in Passwords access group.", v83, 2u);
    MEMORY[0x1B8CC1710](v83, -1, -1);
  }

  v84 = *(v78 + 96);
  v85 = *(v78 + 95);

  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_1B8574780;
  *(v86 + 32) = v154;
  v87 = v154;
  v88 = [v84 isForTesting];
  v89 = 0xD00000000000001DLL;
  if (v88)
  {
    v89 = 0xD000000000000025;
    v90 = "com.apple.passwords.filevault";
  }

  else
  {
    v90 = "Filevault recovery key";
  }

  *(v86 + 40) = v89;
  *(v86 + 48) = v90 | 0x8000000000000000;
  v91 = MEMORY[0x1E69E6158];
  *(v86 + 64) = MEMORY[0x1E69E6158];
  *(v86 + 72) = v72;
  *(v86 + 80) = 0;
  *(v86 + 104) = MEMORY[0x1E69E6370];
  *(v86 + 112) = v73;
  *(v86 + 120) = v149;
  *(v86 + 128) = v150;
  *(v86 + 144) = v91;
  *(v86 + 152) = v74;
  v92 = v72;
  v93 = v73;
  v94 = v74;

  v95 = [v85 serialNumber];
  v96 = sub_1B8565DA8();
  v98 = v97;

  *(v86 + 160) = v96;
  *(v86 + 168) = v98;
  *(v86 + 184) = v91;
  *(v86 + 192) = v157;
  v99 = v157;
  v100 = [v85 volumeID];
  v101 = sub_1B8565DA8();
  v103 = v102;

  *(v86 + 224) = v91;
  *(v86 + 200) = v101;
  *(v86 + 208) = v103;
  v104 = sub_1B8526100(v86);
  swift_setDeallocating();
  swift_arrayDestroy();
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v163[0] = v152;
  sub_1B852CF3C(v104, sub_1B852CC08, 0, v105, v163);

  sub_1B85298E8(v163[0]);

  v106 = sub_1B8565B48();
  v107 = sub_1B85661F8();
  v108 = v162;
  if (os_log_type_enabled(v106, v107))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_1B8447000, v106, v107, "Saved FileVault recovery key in FileVault access group.", v109, 2u);
    MEMORY[0x1B8CC1710](v109, -1, -1);
  }

  v110 = v162[96];

  [v110 reset];
  v111 = [v110 savedAccounts];
  sub_1B852D21C();
  v74 = sub_1B8566008();

  if (v74 >> 62)
  {
    v112 = sub_1B8566358();
    if (v112)
    {
      goto LABEL_31;
    }

LABEL_61:

    v141 = sub_1B8565B48();
    v142 = sub_1B8566218();
    v143 = os_log_type_enabled(v141, v142);
    v144 = v108[104];
    v145 = v108[103];
    if (v143)
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_1B8447000, v141, v142, "Failed to fetch the saved account for recently saved recovery key.", v146, 2u);
      MEMORY[0x1B8CC1710](v146, -1, -1);
    }

    sub_1B852608C(v145, v144);

    goto LABEL_64;
  }

  v112 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v112)
  {
    goto LABEL_61;
  }

LABEL_31:
  v73 = 0;
  v61 = v74 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v74 & 0xC000000000000001) != 0)
    {
      v113 = MEMORY[0x1B8CBF6C0](v73, v74);
    }

    else
    {
      if (v73 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v113 = *(v74 + 8 * v73 + 32);
    }

    v114 = v113;
    v78 = (v73 + 1);
    if (__OFADD__(v73, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v115 = [v113 user];
    if (!v115)
    {
      goto LABEL_32;
    }

    v116 = v115;
    v117 = sub_1B8565DA8();
    v119 = v118;

    if (v117 == v158 && v119 == v159)
    {
      break;
    }

    v72 = sub_1B8566758();

    v108 = v162;
    if (v72)
    {
      goto LABEL_46;
    }

LABEL_32:

    ++v73;
    if (v78 == v112)
    {
      goto LABEL_61;
    }
  }

  v108 = v162;
LABEL_46:
  v121 = v108[95];

  v122 = v114;
  v123 = sub_1B8565D68();

  v160 = v122;
  [v122 setCustomTitle:v123 performSidecarUpdate:1];

  v124 = [v121 serialNumber];
  if (!v124)
  {
    sub_1B8565DA8();
    v124 = sub_1B8565D68();
  }

  v125 = objc_opt_self();
  v126 = [v125 currentDevice];
  v127 = [v126 modelName];

  if (!v127)
  {
    sub_1B8565DA8();
    v127 = sub_1B8565D68();
  }

  v128 = [v125 currentDevice];
  v129 = [v128 chipName];

  if (v129)
  {
    sub_1B8565DA8();
    v131 = v130;
  }

  else
  {
    v131 = 0;
  }

  v132 = v108[99];
  v133 = v108[98];
  v134 = v108[97];
  sub_1B8565B28();
  sub_1B8565B18();
  (*(v133 + 8))(v132, v134);
  if (v131)
  {
    v135 = sub_1B8565D68();
  }

  else
  {
    v135 = 0;
  }

  v108 = v162;
  v136 = v162[104];
  v137 = v162[103];
  v138 = objc_allocWithZone(WBSFileVaultRecoveryKeyDeviceInfo);
  v139 = sub_1B8565D68();

  v140 = [v138 initWithSerialNumber:v124 model:v127 variant:v135 deviceTypeIdentifier:v139];

  [v160 setFileVaultRecoveryKeyDeviceInfo_];
  sub_1B852608C(v137, v136);
LABEL_64:

  v147 = v108[1];

  return v147();
}

uint64_t sub_1B8528CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 440) = a4;
  *(v6 + 448) = v5;
  *(v6 + 480) = a5;
  *(v6 + 424) = a2;
  *(v6 + 432) = a3;
  *(v6 + 416) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8528CF8, 0, 0);
}

uint64_t sub_1B8528CF8()
{
  v68 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v65 = *(v0 + 440);
  v66 = *(v0 + 424);
  v3 = *(v0 + 416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574770;
  v5 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v6 = *MEMORY[0x1E697B018];
  type metadata accessor for CFString(0);
  *(inited + 40) = v6;
  v7 = *MEMORY[0x1E697ABD0];
  *(inited + 64) = v8;
  *(inited + 72) = v7;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = [v1 isForTesting];
  v13 = MEMORY[0x1E69E6158];
  v14 = 0xD00000000000001DLL;
  if (v12)
  {
    v14 = 0xD000000000000025;
    v15 = "com.apple.passwords.filevault";
  }

  else
  {
    v15 = "Filevault recovery key";
  }

  *(inited + 80) = v14;
  *(inited + 88) = v15 | 0x8000000000000000;
  v16 = *MEMORY[0x1E697AEB0];
  v17 = MEMORY[0x1E69E6370];
  *(inited + 104) = v13;
  *(inited + 112) = v16;
  *(inited + 120) = 0;
  v18 = *MEMORY[0x1E697ADC8];
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 160) = v2;
  *(inited + 168) = v65;
  v19 = *MEMORY[0x1E697AC30];
  *(inited + 184) = v13;
  *(inited + 192) = v19;
  *(inited + 200) = v3;
  *(inited + 208) = v66;
  v20 = *MEMORY[0x1E697B390];
  *(inited + 224) = v13;
  *(inited + 232) = v20;
  *(inited + 264) = v17;
  *(inited + 240) = 1;
  v21 = v16;
  v22 = v18;

  v23 = v19;

  v24 = v20;
  sub_1B8526100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  sub_1B852D36C(&qword_1EBA8A608, &unk_1B8574238);
  v25 = sub_1B8565CB8();

  *(v0 + 476) = SecItemDelete(v25);

  v26 = [v1 savedAccounts];
  sub_1B852D21C();
  v27 = sub_1B8566008();

  v28 = sub_1B852AC68(v27, v2, v65, v3, v66);

  if (v28)
  {
    v29 = v28;
    v30 = v28;
LABEL_11:
    *(v0 + 456) = v29;
    *(v0 + 464) = v30;
    v34 = qword_1ED985688;
    v35 = v28;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = sub_1B8565B78();
    __swift_project_value_buffer(v36, qword_1ED985C68);
    v37 = sub_1B8565B48();
    v38 = sub_1B85661F8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B8447000, v37, v38, "Deleting FileVault recovery key from Passwords access group.", v39, 2u);
      MEMORY[0x1B8CC1710](v39, -1, -1);
    }

    v40 = *(v0 + 448);

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1B8529518;
    v41 = swift_continuation_init();
    *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A858, &qword_1B8574750);
    *(v0 + 352) = MEMORY[0x1E69E9820];
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_1B85269B0;
    *(v0 + 376) = &block_descriptor_1;
    *(v0 + 384) = v41;
    [v40 removeCredentialTypes:9 forSavedAccount:v29 completionHandler:v0 + 352];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  v31 = [*(v0 + 448) allRecentlyDeletedSavedAccounts];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1B8566008();
  }

  else
  {
    v33 = 0;
  }

  v30 = sub_1B852AC68(v33, *(v0 + 432), *(v0 + 440), *(v0 + 416), *(v0 + 424));

  if (v30)
  {
    v29 = v30;
    v28 = 0;
    goto LABEL_11;
  }

  if (*(v0 + 480) == 1)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v42 = sub_1B8565B78();
    __swift_project_value_buffer(v42, qword_1ED985C68);
    v43 = sub_1B8565B48();
    v44 = sub_1B8566218();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1B8447000, v43, v44, "Failed to delete FileVault recovery key from Passwords access group.", v45, 2u);
      MEMORY[0x1B8CC1710](v45, -1, -1);
    }
  }

  v46 = *(v0 + 476);
  if (v46)
  {
    if (v46 != -25300 || *(v0 + 480))
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v54 = sub_1B8565B78();
      __swift_project_value_buffer(v54, qword_1ED985C68);
      v55 = sub_1B8565B48();
      v56 = sub_1B8566218();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v0 + 476);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v67 = v59;
        *v58 = 136315394;
        *(v0 + 472) = v57;
        sub_1B852D318();
        v60 = sub_1B85662D8();
        v62 = sub_1B8525560(v60, v61, &v67);

        *(v58 + 4) = v62;
        *(v58 + 12) = 1024;
        *(v58 + 14) = v57;
        _os_log_impl(&dword_1B8447000, v55, v56, "Failed to delete FileVault recovery key from FileVault access group: %s, status code: %d", v58, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x1B8CC1710](v59, -1, -1);
        MEMORY[0x1B8CC1710](v58, -1, -1);
      }

      v47 = v46 == -25300;
      if (v46 == -25300)
      {
        v48 = 3;
      }

      else
      {
        v48 = *(v0 + 476);
      }
    }

    else
    {
      v47 = 1;
      v48 = 3;
    }

    sub_1B852B150();
    swift_allocError();
    *v63 = v48;
    *(v63 + 4) = v47;
    swift_willThrow();
    v53 = *(v0 + 8);
  }

  else
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v49 = sub_1B8565B78();
    __swift_project_value_buffer(v49, qword_1ED985C68);
    v50 = sub_1B8565B48();
    v51 = sub_1B85661F8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1B8447000, v50, v51, "Successfully deleted matching FileVault recovery key item.", v52, 2u);
      MEMORY[0x1B8CC1710](v52, -1, -1);
    }

    v53 = *(v0 + 8);
  }

  return v53();
}

uint64_t sub_1B8529518()
{

  return MEMORY[0x1EEE6DFA0](sub_1B85295F8, 0, 0);
}

uint64_t sub_1B85295F8()
{
  v24 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  v3 = *(v0 + 476);
  if (v3)
  {
    if (v3 == -25300 && *(v0 + 480) == 0)
    {
      v14 = 1;
      v15 = 3;
    }

    else
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v5 = sub_1B8565B78();
      __swift_project_value_buffer(v5, qword_1ED985C68);
      v6 = sub_1B8565B48();
      v7 = sub_1B8566218();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 476);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v23 = v10;
        *v9 = 136315394;
        *(v0 + 472) = v8;
        sub_1B852D318();
        v11 = sub_1B85662D8();
        v13 = sub_1B8525560(v11, v12, &v23);

        *(v9 + 4) = v13;
        *(v9 + 12) = 1024;
        *(v9 + 14) = v8;
        _os_log_impl(&dword_1B8447000, v6, v7, "Failed to delete FileVault recovery key from FileVault access group: %s, status code: %d", v9, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x1B8CC1710](v10, -1, -1);
        MEMORY[0x1B8CC1710](v9, -1, -1);
      }

      v14 = v3 == -25300;
      if (v3 == -25300)
      {
        v15 = 3;
      }

      else
      {
        v15 = *(v0 + 476);
      }
    }

    sub_1B852B150();
    swift_allocError();
    *v21 = v15;
    *(v21 + 4) = v14;
    swift_willThrow();

    v20 = *(v0 + 8);
  }

  else
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v16 = sub_1B8565B78();
    __swift_project_value_buffer(v16, qword_1ED985C68);
    v17 = sub_1B8565B48();
    v18 = sub_1B85661F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B8447000, v17, v18, "Successfully deleted matching FileVault recovery key item.", v19, 2u);
      MEMORY[0x1B8CC1710](v19, -1, -1);
    }

    v20 = *(v0 + 8);
  }

  return v20();
}

void sub_1B85298E8(uint64_t a1)
{
  type metadata accessor for CFString(0);
  sub_1B852D36C(&qword_1EBA8A608, &unk_1B8574238);
  v1 = sub_1B8565CB8();
  v2 = SecItemAdd(v1, 0);

  if (v2)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8565B78();
    __swift_project_value_buffer(v3, qword_1ED985C68);
    v4 = sub_1B8565B48();
    v5 = sub_1B8566218();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315394;
      sub_1B852D318();
      v8 = sub_1B85662D8();
      v10 = sub_1B8525560(v8, v9, &v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1024;
      *(v6 + 14) = v2;
      _os_log_impl(&dword_1B8447000, v4, v5, "Failed to add keychain item: %s, status code: %d", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CC1710](v7, -1, -1);
      MEMORY[0x1B8CC1710](v6, -1, -1);
    }

    sub_1B852B150();
    swift_allocError();
    *v11 = v2;
    *(v11 + 4) = 0;
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WBSSavedAccountStore.fileVaultRecoveryKey(volumeID:serialNumber:)(WBSFileVaultRecoveryKey_optional *__return_ptr retstr, Swift::String volumeID, Swift::String serialNumber)
{
  object = volumeID._object;
  v4 = v3;
  v5 = serialNumber._object;
  countAndFlagsBits = serialNumber._countAndFlagsBits;
  v7 = volumeID._countAndFlagsBits;
  v8 = sub_1B8529D54(volumeID._countAndFlagsBits, volumeID._object, serialNumber._countAndFlagsBits, serialNumber._object);
  if (v8)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8565B78();
    __swift_project_value_buffer(v9, qword_1ED985C68);
    v10 = sub_1B8565B48();
    v11 = sub_1B85661F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B8447000, v10, v11, "Found matching FileVault recovery key item.", v12, 2u);
      MEMORY[0x1B8CC1710](v12, -1, -1);
    }

    v13 = [v4 savedAccounts];
    sub_1B852D21C();
    v14 = sub_1B8566008();

    v15 = object;
    v16 = sub_1B852AC68(v14, countAndFlagsBits, v5, v7, object);

    if (!v16)
    {
      v17 = [v4 allRecentlyDeletedSavedAccounts];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1B8566008();

        v15 = object;
      }

      else
      {
        v19 = 0;
      }

      v16 = sub_1B852AC68(v19, countAndFlagsBits, v5, v7, v15);
    }

    sub_1B8529F84(v8);

    v20 = objc_allocWithZone(WBSFileVaultRecoveryKey);
    v21 = sub_1B8565CB8();

    [v20 initWithKeychainDictionary:v21 savedAccount:v16];
  }
}

uint64_t sub_1B8529D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[1] = *MEMORY[0x1E69E9840];
  result[0] = 0;
  v4 = sub_1B852AE30(a3, a4, a1, a2);
  v5 = SecItemCopyMatching(v4, result);

  if (v5)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8565B78();
    __swift_project_value_buffer(v6, qword_1ED985C68);
    v7 = sub_1B8565B48();
    v8 = sub_1B8566218();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      sub_1B852D318();
      v11 = sub_1B85662D8();
      v13 = sub_1B8525560(v11, v12, &v17);

      *(v9 + 4) = v13;
      *(v9 + 12) = 1024;
      *(v9 + 14) = v5;
      _os_log_impl(&dword_1B8447000, v7, v8, "Failed to fetch keychain item: %s, status code: %d", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CC1710](v10, -1, -1);
      MEMORY[0x1B8CC1710](v9, -1, -1);
    }

    goto LABEL_7;
  }

  if (!result[0])
  {
LABEL_7:
    v14 = 0;
    goto LABEL_12;
  }

  v17 = result[0];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C8, &qword_1B8574B60);
  if (swift_dynamicCast())
  {
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

LABEL_12:
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1B8529F84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C0, &unk_1B85748B0);
    v2 = sub_1B8566638();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1B851F688(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CFString(0);
    v15 = v14;
    swift_dynamicCast();
    sub_1B851F84C((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1B851F84C(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1B851F84C(v30, v31);
    result = sub_1B8566388();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_1B851F84C(v31, (*(v2 + 56) + 32 * v10));
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

id WBSSavedAccountStore.fileVaultRecoveryKeys(serialNumber:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 savedAccounts];
  sub_1B852D21C();
  v6 = sub_1B8566008();

  v86 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8566358())
  {
    v8 = 0;
    v79 = v6 & 0xFFFFFFFFFFFFFF8;
    v82 = v6 & 0xC000000000000001;
    v76 = v6;
    while (1)
    {
      if (v82)
      {
        v9 = MEMORY[0x1B8CBF6C0](v8, v6);
      }

      else
      {
        if (v8 >= *(v79 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 recoveryKeySerialNumber];
      if (v12)
      {
        v13 = v12;
        v14 = a1;
        v15 = a2;
        v16 = sub_1B8565DA8();
        v18 = v17;

        v19 = v16;
        a2 = v15;
        a1 = v14;
        if (v19 == v14 && v18 == a2)
        {

LABEL_18:
          sub_1B85664C8();
          sub_1B85664F8();
          sub_1B8566508();
          sub_1B85664D8();
          v6 = v76;
          goto LABEL_5;
        }

        v21 = sub_1B8566758();

        if (v21)
        {
          goto LABEL_18;
        }

        v6 = v76;
      }

      else
      {
      }

LABEL_5:
      ++v8;
      if (v11 == i)
      {
        v22 = v86;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v74 = a2;

  v23 = sub_1B8526228(MEMORY[0x1E69E7CC0]);
  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
LABEL_52:
    v51 = v23;
    v24 = sub_1B8566358();
    v23 = v51;
    v80 = a1;
    v83 = v51;
    if (!v24)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v24 = *(v22 + 16);
    v80 = a1;
    v83 = v23;
    if (!v24)
    {
      goto LABEL_53;
    }
  }

  v25 = 0;
  v26 = &unk_1E7CF5000;
  do
  {
    v27 = v25;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1B8CBF6C0](v27, v22);
      }

      else
      {
        if (v27 >= *(v22 + 16))
        {
          goto LABEL_51;
        }

        v23 = *(v22 + 8 * v27 + 32);
      }

      v28 = v23;
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v29 = [v23 v26[464]];
      if (v29)
      {
        break;
      }

      ++v27;
      if (v25 == v24)
      {
        goto LABEL_53;
      }
    }

    v30 = v29;
    a1 = sub_1B8565DA8();
    v32 = v31;

    v77 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v83;
    v73 = v32;
    v35 = sub_1B853560C(a1, v32);
    v36 = v83[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      __break(1u);
      goto LABEL_82;
    }

    v39 = v34;
    if (v83[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B852C7DC();
      }

      v43 = v77;
      v40 = v73;
      if (v39)
      {
        goto LABEL_47;
      }

LABEL_42:
      v44 = v86;
      v86[(v35 >> 6) + 8] |= 1 << v35;
      v45 = (v44[6] + 16 * v35);
      *v45 = a1;
      v45[1] = v40;
      *(v44[7] + 8 * v35) = v43;

      v46 = v44[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (!v47)
      {
        v83 = v44;
        v44[2] = v48;
        goto LABEL_48;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      result = sub_1B8566778();
      __break(1u);
      return result;
    }

    sub_1B852BC48(v38, isUniquelyReferenced_nonNull_native);
    v40 = v73;
    v41 = sub_1B853560C(a1, v73);
    if ((v39 & 1) != (v42 & 1))
    {
      goto LABEL_83;
    }

    v35 = v41;
    v43 = v77;
    if ((v39 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_47:

    v83 = v86;
    v49 = v86[7];
    v50 = *(v49 + 8 * v35);
    *(v49 + 8 * v35) = v43;

LABEL_48:
    v26 = &unk_1E7CF5000;
  }

  while (v25 != v24);
LABEL_53:

  v52 = sub_1B852A988(v80, v74);
  v53 = MEMORY[0x1E69E7CC0];
  if (qword_1ED985688 != -1)
  {
LABEL_80:
    swift_once();
  }

  v54 = sub_1B8565B78();
  __swift_project_value_buffer(v54, qword_1ED985C68);

  v55 = sub_1B8565B48();
  v56 = sub_1B85661F8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134217984;
    *(v57 + 4) = v52[2];

    _os_log_impl(&dword_1B8447000, v55, v56, "Found %ld FileVault recovery key item(s) matching the serial number.", v57, 0xCu);
    MEMORY[0x1B8CC1710](v57, -1, -1);
  }

  else
  {
  }

  v87 = v53;
  v58 = v52[2];
  if (v58)
  {
    v59 = 0;
    v60 = (v52 + 4);
    v61 = *MEMORY[0x1E697AC30];
    v78 = v52;
    v81 = *MEMORY[0x1E697AC30];
    while (1)
    {
      v75 = v53;
      v62 = v59;
      while (1)
      {
        if (v62 >= v52[2])
        {
          __break(1u);
          goto LABEL_80;
        }

        v63 = *&v60[8 * v62];
        if (*(v63 + 16))
        {
          break;
        }

LABEL_61:
        if (v58 == ++v62)
        {
          v53 = v75;
          goto LABEL_78;
        }
      }

      v64 = sub_1B8535684(v61);
      if ((v65 & 1) == 0)
      {
        break;
      }

      sub_1B851F688(*(v63 + 56) + 32 * v64, &v86);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1B8529F84(v63);
      if (v83[2])
      {
        v66 = sub_1B853560C(v84, v85);
        v68 = v67;

        if (v68)
        {
          v69 = *(v83[7] + 8 * v66);
        }

        else
        {
          v69 = 0;
        }

        v52 = v78;
      }

      else
      {

        v69 = 0;
      }

      v53 = objc_allocWithZone(WBSFileVaultRecoveryKey);
      v70 = sub_1B8565CB8();

      v71 = [v53 initWithKeychainDictionary:v70 savedAccount:v69];

      v61 = v81;
      if (!v71)
      {
        goto LABEL_61;
      }

      MEMORY[0x1B8CBF240]();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B8566028();
      }

      v59 = v62 + 1;
      sub_1B8566078();
      v53 = v87;
      if (v58 - 1 == v62)
      {
        goto LABEL_78;
      }
    }

    goto LABEL_61;
  }

LABEL_78:

  return v53;
}

CFTypeRef sub_1B852A988(uint64_t a1, uint64_t a2)
{
  result[1] = *MEMORY[0x1E69E9840];
  result[0] = 0;
  v2 = sub_1B852AE30(a1, a2, 0, 0);
  v3 = SecItemCopyMatching(v2, result);

  if (v3)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8565B78();
    __swift_project_value_buffer(v4, qword_1ED985C68);
    v5 = sub_1B8565B48();
    v6 = sub_1B8566218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315394;
      sub_1B852D318();
      v9 = sub_1B85662D8();
      v11 = sub_1B8525560(v9, v10, &v15);

      *(v7 + 4) = v11;
      *(v7 + 12) = 1024;
      *(v7 + 14) = v3;
      _os_log_impl(&dword_1B8447000, v5, v6, "Failed to fetch keychain items: %s, status code: %d", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CC1710](v8, -1, -1);
      MEMORY[0x1B8CC1710](v7, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v13 = result[0];
  if (result[0])
  {
    v15 = result[0];
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8B0, &qword_1B8574898);
    swift_dynamicCast();
    v12 = v14;
LABEL_9:
    swift_unknownObjectRelease();
    return v12;
  }

  __break(1u);
  return v13;
}

uint64_t WBSSavedAccountStore.deleteFileVaultRecoveryKey(volumeID:serialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B851F31C;

  return sub_1B8528CCC(a1, a2, a3, a4, 1);
}

void *sub_1B852AC68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  if (a1)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8566358())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B8CBF6C0](j, a1);
        }

        else
        {
          if (j >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          v10 = *(a1 + 8 * j + 32);
        }

        v11 = v10;
        v12 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v13 = [v10 recoveryKeySerialNumber];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B8565DA8();
          v17 = v16;

          if (v15 == a2 && v17 == a3)
          {
          }

          else
          {
            v19 = sub_1B8566758();

            if ((v19 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v20 = [v11 recoveryKeyVolumeID];
          if (v20)
          {
            v21 = v20;
            v22 = sub_1B8565DA8();
            v24 = v23;

            if (v22 == a4 && v24 == v26)
            {

              return v11;
            }

            v9 = sub_1B8566758();

            if (v9)
            {
              return v11;
            }
          }
        }

LABEL_6:

        if (v12 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }
  }

  return 0;
}

uint64_t sub_1B852AE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574680;
  v10 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v11 = *MEMORY[0x1E697B018];
  type metadata accessor for CFString(0);
  v13 = v12;
  *(inited + 40) = v11;
  v14 = *MEMORY[0x1E697ABD0];
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  v15 = v10;
  v16 = v11;
  v17 = v14;
  v18 = [v5 isForTesting];
  v19 = MEMORY[0x1E69E6158];
  v20 = 0xD00000000000001DLL;
  if (v18)
  {
    v20 = 0xD000000000000025;
    v21 = "com.apple.passwords.filevault";
  }

  else
  {
    v21 = "Filevault recovery key";
  }

  *(inited + 80) = v20;
  *(inited + 88) = v21 | 0x8000000000000000;
  v22 = *MEMORY[0x1E697AEB0];
  *(inited + 104) = v19;
  *(inited + 112) = v22;
  v23 = MEMORY[0x1E69E6370];
  *(inited + 120) = 0;
  v24 = *MEMORY[0x1E697ADC8];
  *(inited + 144) = v23;
  *(inited + 152) = v24;
  *(inited + 160) = a1;
  *(inited + 168) = a2;
  v25 = *MEMORY[0x1E697B318];
  *(inited + 184) = v19;
  *(inited + 192) = v25;
  v26 = MEMORY[0x1E697B310];
  *(inited + 200) = 1;
  v27 = *v26;
  *(inited + 224) = v23;
  *(inited + 232) = v27;
  v28 = MEMORY[0x1E697B390];
  *(inited + 240) = 1;
  v29 = *v28;
  *(inited + 264) = v23;
  *(inited + 272) = v29;
  *(inited + 304) = v23;
  *(inited + 280) = 1;
  v30 = v22;
  v31 = v24;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  sub_1B8526100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  if (a4)
  {
    v35 = *MEMORY[0x1E697AC30];
    v48 = v19;
    *&v47 = a3;
    *(&v47 + 1) = a4;
    sub_1B851F84C(&v47, v46);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B85542B8(v46, v35, isUniquelyReferenced_nonNull_native);
    v37 = *MEMORY[0x1E697B260];
    v38 = *MEMORY[0x1E697B270];
    v48 = v13;
    *&v47 = v38;
    sub_1B851F84C(&v47, v46);
    v39 = v38;
  }

  else
  {
    v37 = *MEMORY[0x1E697B260];
    v41 = *MEMORY[0x1E697B268];
    v48 = v13;
    *&v47 = v41;
    sub_1B851F84C(&v47, v46);
    v42 = v41;
  }

  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B85542B8(v46, v37, v40);
  sub_1B852D36C(&qword_1EBA8A608, &unk_1B8574238);
  v43 = sub_1B8565CB8();

  return v43;
}

unint64_t sub_1B852B150()
{
  result = qword_1EBA8A888;
  if (!qword_1EBA8A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A888);
  }

  return result;
}

uint64_t sub_1B852B1A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C0, &unk_1B85748B0);
  result = sub_1B8566618();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1B851F84C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1B852D3B8(v23, &v36);
        sub_1B851F688(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1B8566388();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1B851F84C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B852B45C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A870, &qword_1B85748D0);
  v33 = v4;
  result = sub_1B8566618();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B851F84C(v24, v34);
      }

      else
      {
        sub_1B851F688(v24, v34);
      }

      sub_1B85667D8();
      sub_1B8565D38();
      result = sub_1B8566808();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B851F84C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B852B714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A838, &qword_1B8574890);
  result = sub_1B8566618();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1B8566278();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B852B97C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A828, &unk_1B85748A0);
  result = sub_1B8566618();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1B851F84C(v21, v31);
      }

      else
      {
        sub_1B851F688(v21, v31);
        v22 = v20;
      }

      sub_1B85667D8();
      type metadata accessor for CFString(0);
      sub_1B852D36C(&qword_1EBA8A8B8, &unk_1B857427C);
      sub_1B8565AF8();
      result = sub_1B8566808();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1B851F84C(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B852BC48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A820, &qword_1B8574738);
  v35 = v4;
  result = sub_1B8566618();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1B85667D8();
      sub_1B8565D38();
      result = sub_1B8566808();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B852BEEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A810, &qword_1B8574700);
  v35 = v4;
  result = sub_1B8566618();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      sub_1B8565DA8();
      sub_1B85667D8();
      sub_1B8565D38();
      v24 = sub_1B8566808();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1B852C1B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C0, &unk_1B85748B0);
  v2 = *v0;
  v3 = sub_1B8566608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_1B852D3B8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B851F688(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1B851F84C(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B852C358()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A870, &qword_1B85748D0);
  v2 = *v0;
  v3 = sub_1B8566608();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B851F688(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B851F84C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1B852C4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A838, &qword_1B8574890);
  v2 = *v0;
  v3 = sub_1B8566608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1B852C65C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A828, &unk_1B85748A0);
  v2 = *v0;
  v3 = sub_1B8566608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_1B851F688(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B851F84C(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1B852C7DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A820, &qword_1B8574738);
  v2 = *v0;
  v3 = sub_1B8566608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1B852C948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8D8, &qword_1B85748D8);
  v2 = *v0;
  v3 = sub_1B8566608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B852CAA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A810, &qword_1B8574700);
  v2 = *v0;
  v3 = sub_1B8566608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1B852CC08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1B851F688((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_1B852CC58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_1B851F688(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_1B851F84C(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_1B8456588(&v18, &qword_1EBA8A8D0, &unk_1B85748C0);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B852CDA8(void *a1)
{
  v2 = [a1 displayName];
  v3 = sub_1B8565DA8();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = [a1 displayName];
    v8 = sub_1B8565DA8();

    return v8;
  }

  else
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userAssignedName];

    v12 = sub_1B8565DA8();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      v16 = sub_1B8457180();

      return v16;
    }

    return v12;
  }
}

uint64_t sub_1B852CF28(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B852550C(result, a2);
  }

  return result;
}

unint64_t sub_1B852CF3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_1B852CC58(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_1B851F84C(v41, v39);
  v13 = *a5;
  result = sub_1B8535684(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1B852B97C(v19, a4 & 1);
    result = sub_1B8535684(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    result = sub_1B8566778();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1B852C65C();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_1B851F84C(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_1B851F84C(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_1B852CC58(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_1B851F84C(v41, v39);
        v30 = *a5;
        result = sub_1B8535684(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_1B852B97C(v34, 1);
          result = sub_1B8535684(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_0(v29);
          sub_1B851F84C(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_1B851F84C(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_1B852CC58(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_1B852D3B0(v42);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B852D21C()
{
  result = qword_1EBA8A898;
  if (!qword_1EBA8A898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8A898);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WBSFileVaultRecoveryKeyError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WBSFileVaultRecoveryKeyError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B852D2C8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B852D2E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_1B852D318()
{
  result = qword_1EBA8A8A8;
  if (!qword_1EBA8A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A8A8);
  }

  return result;
}

uint64_t sub_1B852D36C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WBSPasskeyStore.passkeys(for:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for WBSKeychainPasskey(0);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v5, type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
  v7 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B852D594, v7, v6);
}

uint64_t sub_1B852D594()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = sub_1B8565DA8();
  v5 = sub_1B8451B4C(0, 0xF000000000000000, v3, v4, 0, v2, v1);

  *(v0 + 40) = 0;
  v6 = (v0 + 40);
  v7 = SecItemCopyMatching(v5, (v0 + 40));
  if (v7)
  {
    LODWORD(v8) = v7;
    if (qword_1ED985688 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_3;
  }

  if (!*v6 || (*(v0 + 48) = *v6, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E8, &qword_1B8574920), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v28 = sub_1B8565B78();
    __swift_project_value_buffer(v28, qword_1ED985C68);
    v29 = sub_1B8565B48();
    v30 = sub_1B8566218();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_38;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138477827;
    swift_beginAccess();
    if (*v6)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
LABEL_37:
        *(v31 + 4) = v33;
        *v32 = v34;
        _os_log_impl(&dword_1B8447000, v29, v30, "Unexpected keychain response: %{private}@", v31, 0xCu);
        sub_1B8456588(v32, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v32, -1, -1);
        MEMORY[0x1B8CC1710](v31, -1, -1);
LABEL_38:

        v20 = MEMORY[0x1E69E7CC0];
LABEL_45:

        swift_unknownObjectRelease();

        v35 = *(v0 + 8);

        return v35(v20);
      }

      swift_unknownObjectRelease();
    }

    v33 = 0;
    v34 = 0;
    goto LABEL_37;
  }

  v8 = *(v0 + 56);
  if (v8 >> 62)
  {
    v17 = sub_1B8566358();
    v36 = v5;
    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

  v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v5;
  if (!v17)
  {
LABEL_43:
    v20 = MEMORY[0x1E69E7CC0];
LABEL_44:

    v29 = v36;
    goto LABEL_45;
  }

LABEL_14:
  v18 = 0;
  v19 = *(v0 + 104);
  v5 = (v19 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  while ((v8 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1B8CBF6C0](v18, v8);
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_39;
    }

LABEL_20:
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);
    WBSKeychainPasskey.init(keychainDictionary:)(v21, v24);
    if ((*v5)(v24, 1, v23) == 1)
    {
      sub_1B8456588(*(v0 + 88), &qword_1EBA8A8E0, &unk_1B8574910);
    }

    else
    {
      sub_1B8538128(*(v0 + 88), *(v0 + 112), type metadata accessor for WBSKeychainPasskey);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1B8535084(0, v20[2] + 1, 1, v20);
      }

      v26 = v20[2];
      v25 = v20[3];
      if (v26 >= v25 >> 1)
      {
        v20 = sub_1B8535084((v25 > 1), v26 + 1, 1, v20);
      }

      v27 = *(v0 + 112);
      v20[2] = v26 + 1;
      sub_1B8538128(v27, v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v26, type metadata accessor for WBSKeychainPasskey);
    }

    ++v18;
    if (v22 == v17)
    {
      goto LABEL_44;
    }
  }

  if (v18 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

  v21 = *(v8 + 8 * v18 + 32);
  v22 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_20;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_3:
  v9 = sub_1B8565B78();
  __swift_project_value_buffer(v9, qword_1ED985C68);
  v10 = sub_1B8565B48();
  v11 = sub_1B8566218();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1B8447000, v10, v11, "Could not find passkey: %{public}d", v12, 8u);
    MEMORY[0x1B8CC1710](v12, -1, -1);
  }

  v13 = v8 == -25300;
  if (v8 == -25300)
  {
    LODWORD(v8) = 0;
  }

  sub_1B8535C58();
  swift_allocError();
  *v14 = v8;
  *(v14 + 4) = v13;
  swift_willThrow();

  swift_unknownObjectRelease();

  v15 = *(v0 + 8);

  return v15();
}

id WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  result[1] = *MEMORY[0x1E69E9840];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = result - v13 + 16;
  v15 = sub_1B8451B4C(a1, a2, a3, a4, a5, 0, 0);
  result[0] = 0;
  v16 = v15;
  v17 = SecItemCopyMatching(v16, result);
  v18 = [objc_opt_self() isCredentialExchangeEnabled];
  if (v18)
  {
    v19 = v17 == -25300;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
LABEL_8:

    if (v17)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v22 = sub_1B8565B78();
      __swift_project_value_buffer(v22, qword_1ED985C68);
      v23 = sub_1B8565B48();
      v24 = sub_1B8566218();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67240192;
        *(v25 + 4) = v17;
        _os_log_impl(&dword_1B8447000, v23, v24, "Could not fetch passkey: %{public}d", v25, 8u);
        MEMORY[0x1B8CC1710](v25, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v26 = v17;
      *(v26 + 4) = 0;
      goto LABEL_30;
    }

    if (result[0])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        swift_unknownObjectRetain();
        WBSKeychainPasskey.init(keychainDictionary:)(v28, v14);
        v29 = type metadata accessor for WBSKeychainPasskey(0);
        if ((*(*(v29 - 8) + 48))(v14, 1, v29) != 1)
        {
          swift_unknownObjectRelease();

          sub_1B8538128(v14, a6, type metadata accessor for WBSKeychainPasskey);
          return swift_unknownObjectRelease();
        }

        sub_1B8456588(v14, &qword_1EBA8A8E0, &unk_1B8574910);
        sub_1B8535C58();
        swift_allocError();
        *v30 = 2;
        *(v30 + 4) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();
LABEL_31:

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v31 = sub_1B8565B78();
    __swift_project_value_buffer(v31, qword_1ED985C68);
    v32 = sub_1B8565B48();
    v33 = sub_1B8566218();
    if (!os_log_type_enabled(v32, v33))
    {
LABEL_29:

      sub_1B8535C58();
      swift_allocError();
      *v38 = 1;
      *(v38 + 4) = 1;
LABEL_30:
      swift_willThrow();
      goto LABEL_31;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138477827;
    swift_beginAccess();
    if (result[0])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (v36)
      {
        v37 = v36;
LABEL_28:
        *(v34 + 4) = v36;
        *v35 = v37;
        _os_log_impl(&dword_1B8447000, v32, v33, "Unexpected keychain response: %{private}@", v34, 0xCu);
        sub_1B8456588(v35, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v35, -1, -1);
        MEMORY[0x1B8CC1710](v34, -1, -1);
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
    }

    v36 = 0;
    v37 = 0;
    goto LABEL_28;
  }

  if (*MEMORY[0x1E697AC38])
  {
    [(__CFDictionary *)v16 __swift_setObject:0 forKeyedSubscript:?];
    v20 = *MEMORY[0x1E697AC40];
    v21 = sub_1B85659A8();
    [(__CFDictionary *)v16 __swift_setObject:v21 forKeyedSubscript:v20];

    v17 = SecItemCopyMatching(v16, result);
    goto LABEL_8;
  }

  __break(1u);
  return v18;
}

uint64_t sub_1B852E114(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v29 = a1;
  v4 = type metadata accessor for WBSKeychainPasskey(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v28 - v8);
  v10 = [a3 credentialID];
  sub_1B8565DA8();

  v11 = sub_1B8565978();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v15 = [a3 groupID];
    v16 = sub_1B8565DA8();
    v18 = v17;

    v19 = v31;
    WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v11, v13, v16, v18, 0, v7);
    if (v19)
    {

      sub_1B852608C(v11, v13);
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v20 = sub_1B8565B78();
      __swift_project_value_buffer(v20, qword_1ED985C68);
      v21 = a3;
      v22 = sub_1B8565B48();
      v23 = sub_1B8566218();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_1B8447000, v22, v23, "Could not find passkey for %@", v24, 0xCu);
        sub_1B8456588(v25, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v25, -1, -1);
        MEMORY[0x1B8CC1710](v24, -1, -1);
      }

      return swift_willThrow();
    }

    else
    {

      sub_1B852608C(v11, v13);
      sub_1B8538128(v7, v9, type metadata accessor for WBSKeychainPasskey);
      v32 = 0;
      v27 = v30;

      WBSKeychainPasskey.Metadata.subscript.setter(v29, v27, &v32);
      sub_1B85360B0(v9);
      return sub_1B85260A0(v9, type metadata accessor for WBSKeychainPasskey);
    }
  }

  return result;
}

uint64_t WBSPasskeyStore.setUserVisibleName(_:relyingParty:userHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a3;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a2;
  v11 = type metadata accessor for WBSKeychainPasskey(0);
  v8[10] = v11;
  v8[11] = *(v11 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[16] = v12;
  *v12 = v8;
  v12[1] = sub_1B852E578;

  return WBSPasskeyStore.passkeys(for:)(a4, a5);
}

uint64_t sub_1B852E578(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    type metadata accessor for WBSPasskeyStore();
    sub_1B8536618(&qword_1EBA8A790, v6, type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
    v8 = sub_1B85660E8();

    return MEMORY[0x1EEE6DFA0](sub_1B852E730, v8, v7);
  }
}

void sub_1B852E730()
{
  v95 = v0;
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (!v2)
  {

    v9 = v0[18];
    v42 = 1;
LABEL_63:
    v43 = v0[14];
    v44 = v0[15];
    v45 = v0[10];
    v46 = v0[11];
    (*(v46 + 56))(v44, v42, 1, v45);
    sub_1B8526860(v44, v43, &qword_1EBA8A8E0, &unk_1B8574910);
    v47 = (*(v46 + 48))(v43, 1, v45);
    v48 = v0[14];
    if (v47 == 1)
    {
      sub_1B8456588(v48, &qword_1EBA8A8E0, &unk_1B8574910);
      if (qword_1ED985688 != -1)
      {
LABEL_86:
        swift_once();
      }

      v50 = v0[7];
      v49 = v0[8];
      v51 = sub_1B8565B78();
      __swift_project_value_buffer(v51, qword_1ED985C68);
      sub_1B852550C(v50, v49);
      v52 = sub_1B8565B48();
      v53 = sub_1B8566218();
      sub_1B851D53C(v50, v49);
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v94[0] = v55;
        *v54 = 136380675;
        v56 = sub_1B8565968();
        v58 = sub_1B8525560(v56, v57, v94);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_1B8447000, v52, v53, "Could not find passkey for userHandle: %{private}s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x1B8CC1710](v55, -1, -1);
        MEMORY[0x1B8CC1710](v54, -1, -1);
      }

      v59 = v0[15];
      sub_1B8535C58();
      swift_allocError();
      *v60 = 0;
      *(v60 + 4) = 1;
      swift_willThrow();
      sub_1B8456588(v59, &qword_1EBA8A8E0, &unk_1B8574910);
    }

    else
    {
      v61 = v0[12];
      sub_1B8538128(v48, v61, type metadata accessor for WBSKeychainPasskey);
      sub_1B85659B8();
      v62 = objc_allocWithZone(WBSPublicKeyCredentialIdentifier);
      v63 = sub_1B8565D68();

      v64 = sub_1B8565D68();
      v65 = [v62 initWithCredentialID:v63 groupID:v64];

      v66 = *(v61 + 16);
      v67 = sub_1B8565D68();
      v68 = [objc_opt_self() cborWithUTF8String_];

      v69 = sub_1B8530A58(v68, v66);
      if (v69)
      {
        v70 = [v69 string];

        if (v70)
        {
          v71 = sub_1B8565DA8();
          v69 = v72;
        }

        else
        {
          v71 = 0;
          v69 = 0;
        }
      }

      else
      {
        v71 = 0;
      }

      v73 = v0[12];
      v75 = v0[5];
      v74 = v0[6];
      LOBYTE(v94[0]) = 0;

      WBSKeychainPasskey.Metadata.subscript.setter(v75, v74, v94);
      sub_1B85360B0(v73);
      v76 = v0[15];
      if (!v9)
      {
        v79 = v0[12];
        v80 = v0[4];
        sub_1B8456588(v76, &qword_1EBA8A8E0, &unk_1B8574910);

        sub_1B85268CC(v79, v80);
        sub_1B85260A0(v79, type metadata accessor for WBSKeychainPasskey);

        v81 = v0[1];

        v81(v71, v69);
        return;
      }

      v77 = v0[12];
      sub_1B8456588(v76, &qword_1EBA8A8E0, &unk_1B8574910);

      sub_1B85260A0(v77, type metadata accessor for WBSKeychainPasskey);
    }

    v78 = v0[1];

    v78();
    return;
  }

  v93 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v91 = objc_opt_self();
  v92 = v3;
  v6 = 0;
  v90 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = v4 != 0xC000000000000000 || v5 != 0;
  v88 = v8;
  v89 = v4 >> 62;
  v87 = v5;
  v9 = v0[18];
  v10 = __OFSUB__(HIDWORD(v5), v5);
  v86 = v10;
  v85 = HIDWORD(v5) - v5;
  while (1)
  {
    if (v6 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_86;
    }

    sub_1B85268CC(v90 + *(v92 + 72) * v6, v0[13]);
    v11 = *(v93 + 16);
    v12 = sub_1B8565D68();
    v13 = [v91 cborWithUTF8String_];

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = v13;
      v15 = sub_1B8566578();

      if (!v15)
      {
        goto LABEL_35;
      }

      v0[3] = v15;
      sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
      swift_dynamicCast();
      v16 = v0[2];

      if (!v16)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (!*(v11 + 16) || (v17 = sub_1B8535584(v13), (v18 & 1) == 0))
      {
LABEL_35:

LABEL_36:
        v20 = 0;
        v22 = 0xF000000000000000;
LABEL_37:
        if (v4 >> 60 == 15)
        {
          sub_1B852550C(v0[7], v0[8]);

          sub_1B852608C(v20, v22);
          goto LABEL_62;
        }

LABEL_38:
        v29 = v0[7];
        v28 = v0[8];
        sub_1B852550C(v29, v28);
        sub_1B852608C(v20, v22);
        v30 = v29;
        v31 = v28;
LABEL_39:
        sub_1B852608C(v30, v31);
        goto LABEL_40;
      }

      v16 = *(*(v11 + 56) + 8 * v17);

      if (!v16)
      {
        goto LABEL_36;
      }
    }

    v19 = [v16 data];

    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = sub_1B85659D8();
    v22 = v21;

    if (v22 >> 60 == 15)
    {
      goto LABEL_37;
    }

    if (v4 >> 60 == 15)
    {
      goto LABEL_38;
    }

    v23 = v22 >> 62;
    if (v22 >> 62 == 3)
    {
      if (v20)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22 == 0xC000000000000000;
      }

      v26 = !v24 || v4 >> 62 != 3;
      if (((v26 | v88) & 1) == 0)
      {
        sub_1B852550C(0, 0xC000000000000000);
        sub_1B852608C(0, 0xC000000000000000);
        v20 = 0;
        goto LABEL_83;
      }

      v27 = 0;
    }

    else if (v23)
    {
      if (v23 == 1)
      {
        LODWORD(v27) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_89;
        }

        v27 = v27;
      }

      else
      {
        v33 = *(v20 + 16);
        v32 = *(v20 + 24);
        v34 = __OFSUB__(v32, v33);
        v27 = v32 - v33;
        if (v34)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      v27 = BYTE6(v22);
    }

    if (v89 <= 1)
    {
      v35 = BYTE6(v4);
      if (v89)
      {
        v35 = v85;
        if (v86)
        {
          goto LABEL_88;
        }
      }

      goto LABEL_54;
    }

    if (v89 != 2)
    {
      if (!v27)
      {
LABEL_81:
        v83 = v0[7];
        v82 = v0[8];
        sub_1B852550C(v83, v82);
        sub_1B852608C(v83, v82);
LABEL_83:
        sub_1B852608C(v20, v22);
LABEL_84:

LABEL_62:
        sub_1B8538128(v0[13], v0[15], type metadata accessor for WBSKeychainPasskey);
        v42 = 0;
        goto LABEL_63;
      }

LABEL_59:
      v41 = v0[7];
      v40 = v0[8];
      sub_1B852550C(v41, v40);
      sub_1B852608C(v41, v40);
      v30 = v20;
      v31 = v22;
      goto LABEL_39;
    }

    v37 = *(v87 + 16);
    v36 = *(v87 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      break;
    }

LABEL_54:
    if (v27 != v35)
    {
      goto LABEL_59;
    }

    if (v27 < 1)
    {
      goto LABEL_81;
    }

    v38 = v0[7];
    v39 = v0[8];
    sub_1B852550C(v38, v39);
    sub_1B852CF28(v38, v39);
    sub_1B852CF28(v20, v22);
    v84 = sub_1B8534838(v20, v22, v38, v39);
    sub_1B852608C(v20, v22);
    sub_1B852608C(v38, v39);
    sub_1B852608C(v20, v22);
    if (v84)
    {
      goto LABEL_84;
    }

LABEL_40:
    ++v6;
    sub_1B85260A0(v0[13], type metadata accessor for WBSKeychainPasskey);
    if (v2 == v6)
    {

      v42 = 1;
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

char *sub_1B852F0B4(uint64_t a1, unint64_t a2, char a3)
{
  v27 = type metadata accessor for WBSShareablePasskey(0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8565C48();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v25 - v11;
  v12 = type metadata accessor for WBSKeychainPasskey(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B8565DA8();
  v16 = a3;
  v17 = v32;
  WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(a1, a2, v15, v18, a3, v14);
  if (v17)
  {
  }

  else
  {
    v26 = v14;
    v19 = v29;
    v20 = v30;

    sub_1B8530D60(a1, a2, v16 & 1);
    v21 = v26[3];
    v22 = v26[4];
    v33 = v26[2];
    v23 = v28;
    (*(v28 + 16))(v10, v31, v19);

    WBSShareablePasskey.init(relyingParty:metadata:privateKey:)(v21, v22, &v33, v10, v20);
    sub_1B8565AA8();
    swift_allocObject();
    sub_1B8565A98();
    sub_1B8536618(&qword_1EBA8A948, 255, type metadata accessor for WBSShareablePasskey, &protocol conformance descriptor for WBSShareablePasskey);
    v10 = sub_1B8565A88();

    sub_1B85260A0(v20, type metadata accessor for WBSShareablePasskey);
    (*(v23 + 8))(v31, v19);
    sub_1B85260A0(v26, type metadata accessor for WBSKeychainPasskey);
  }

  return v10;
}

void WBSPasskeyStore.importPasskey(_:to:inRecentlyDeleted:importedCredentialID:lastModified:created:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v183 = a8;
  v182 = a7;
  v204 = a6;
  v209 = a5;
  v188 = a4;
  v199 = a3;
  v200 = a2;
  v191 = a9;
  error[1] = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A7A0, &unk_1B85764D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v187 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v186 = &v180 - v13;
  v190 = sub_1B8565A38();
  v189 = *(v190 - 8);
  v14 = MEMORY[0x1EEE9AC00](v190);
  v181 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v180 = &v180 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v207 = &v180 - v18;
  v19 = type metadata accessor for WBSKeychainPasskey(0);
  v205 = *(v19 - 8);
  v206 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v198 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1B8565C98();
  v194 = *(v196 - 1);
  MEMORY[0x1EEE9AC00](v196);
  v192 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_1B8565C88();
  v195 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v193 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1B8565C68();
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v24 = &v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B85748F0;
  v26 = *MEMORY[0x1E697AD68];
  type metadata accessor for CFString(0);
  v28 = v27;
  *(v25 + 56) = v27;
  *(v25 + 32) = v26;
  v29 = type metadata accessor for WBSShareablePasskey(0);
  v30 = MEMORY[0x1E69E6530];
  *(v25 + 64) = *&a1[*(v29 + 28)];
  v31 = *MEMORY[0x1E697AD30];
  *(v25 + 88) = v30;
  *(v25 + 96) = v31;
  v32 = *MEMORY[0x1E697AD38];
  *(v25 + 120) = v28;
  *(v25 + 128) = v32;
  v33 = *MEMORY[0x1E697AD50];
  *(v25 + 184) = v28;
  v185 = v28;
  *(v25 + 152) = v28;
  *(v25 + 160) = v33;
  v34 = *&a1[*(v29 + 32)];
  *(v25 + 216) = v30;
  *(v25 + 192) = v34;
  sub_1B8451F34(0, &qword_1EBA8A900, 0x1E695DF20);
  v35 = v26;
  v36 = v31;
  v37 = v32;
  v38 = v204;
  v39 = v33;
  v211 = sub_1B85661D8();
  v203 = a1;
  v40 = sub_1B8565BE8();
  v41 = MEMORY[0x1B8CBEEB0](v40);
  v43 = v42;
  (v201->info)(v24, v202);
  v210 = v43;
  if (v38 >> 60 == 15)
  {
    sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
    v44 = v192;
    v45 = v196;
    sub_1B8565BD8();
    sub_1B852550C(v41, v43);
    v46 = v212;
    sub_1B8535D2C(v41, v43, v44);
    sub_1B851D53C(v41, v43);
    v47 = v193;
    sub_1B8565BC8();
    (*(v194 + 1))(v44, v45);
    sub_1B8565C78();
    v212 = v46;
    (v195)[1](v47, v197);
    v48 = v215;
    v49 = v216;
  }

  else
  {
    v49 = v38;
    v48 = v209;
  }

  v201 = &stru_1F3064D08;
  v50 = sub_1B8565DA8();
  v52 = v51;
  sub_1B852CF28(v209, v38);
  v53 = v207;
  v54 = v212;
  WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v48, v49, v50, v52, 0, v207);
  if (v54)
  {

    v205[7](v53, 1, 1, v206);
    v55 = sub_1B8456588(v53, &qword_1EBA8A8E0, &unk_1B8574910);
    v56 = v203;
    goto LABEL_6;
  }

  v75 = v206;
  v205[7](v53, 0, 1, v206);
  v76 = v198;
  sub_1B8538128(v53, v198, type metadata accessor for WBSKeychainPasskey);
  v77 = (v76 + *(v75 + 44));
  v56 = v203;
  if ((*v77 != v200 || v77[1] != v199) && (sub_1B8566758() & 1) == 0)
  {
    v55 = sub_1B85260A0(v198, type metadata accessor for WBSKeychainPasskey);
LABEL_6:
    v57 = v49;
    v58 = MEMORY[0x1B8CBEE80](v55);
    v60 = v59;
    error[0] = 0;
    v212 = v58;
    v61 = sub_1B85659A8();
    v62 = SecKeyCreateWithData(v61, v211, error);

    v63 = v210;
    v202 = v48;
    if (!v62)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v87 = sub_1B8565B78();
      __swift_project_value_buffer(v87, qword_1ED985C68);
      v88 = sub_1B8565B48();
      v89 = sub_1B8566218();
      if (os_log_type_enabled(v88, v89))
      {
        v197 = v49;
        v209 = v41;
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v214 = v91;
        *v90 = 136446210;
        swift_beginAccess();
        if (error[0])
        {
          v207 = v60;
          v92 = error[0];
          v215 = 0;
          v216 = 0xE000000000000000;
          v213 = v92;
          type metadata accessor for CFError(0);
          sub_1B8536618(&qword_1EBA8A910, 255, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
          v93 = v92;
          v94 = sub_1B8566738();
          if (v94)
          {
            v95 = v94;
          }

          else
          {
            v95 = swift_allocError();
            *v171 = v93;
          }

          v172 = sub_1B85658C8();

          v173 = [v172 safari_privacyPreservingDescription];
          v174 = sub_1B8565DA8();
          v176 = v175;

          MEMORY[0x1B8CBF120](v174, v176);

          v170 = v215;
          v169 = v216;
          v60 = v207;
        }

        else
        {
          v169 = 0xED0000726F727265;
          v170 = 0x206E776F6E6B6E55;
        }

        v177 = sub_1B8525560(v170, v169, &v214);

        *(v90 + 4) = v177;
        _os_log_impl(&dword_1B8447000, v88, v89, "Could not import key data: %{public}s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x1B8CC1710](v91, -1, -1);
        MEMORY[0x1B8CC1710](v90, -1, -1);

        v41 = v209;
        v63 = v210;
        v57 = v197;
      }

      else
      {
      }

      swift_beginAccess();
      v165 = v202;
      v166 = v212;
      if (error[0])
      {
      }

      sub_1B8535C58();
      swift_allocError();
      *v178 = 1;
      *(v178 + 4) = 1;
      swift_willThrow();
      goto LABEL_69;
    }

    v209 = v41;
    sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
    sub_1B8536660(&qword_1ED9856C0, &qword_1ED9856B8, 0x1E698F6F8, MEMORY[0x1E69E81B8]);

    v64 = sub_1B8565CB8();
    v65 = [objc_opt_self() cborWithDictionary_];

    v66 = sub_1B8565958();
    v68 = v67;

    if (v68 >> 60 == 15)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v69 = sub_1B8565B78();
      __swift_project_value_buffer(v69, qword_1ED985C68);
      v70 = sub_1B8565B48();
      v71 = sub_1B8566218();
      v72 = os_log_type_enabled(v70, v71);
      v63 = v210;
      if (v72)
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1B8447000, v70, v71, "Could not import key metadata.", v73, 2u);
        MEMORY[0x1B8CC1710](v73, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v74 = 2;
      *(v74 + 4) = 1;
      swift_willThrow();

LABEL_59:
      v41 = v209;
      v165 = v202;
      v166 = v212;
LABEL_69:
      sub_1B851D53C(v166, v60);
      sub_1B851D53C(v165, v57);
      v179 = v41;
      goto LABEL_70;
    }

    v207 = v60;
    v197 = v49;
    LODWORD(v206) = [objc_opt_self() isCredentialExchangeEnabled];
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1B8574680;
    v205 = *MEMORY[0x1E697B3D0];
    v97 = v205;
    v98 = v185;
    *(v96 + 56) = v185;
    *(v96 + 32) = v97;
    type metadata accessor for SecKey(0);
    v99 = MEMORY[0x1E697ADC8];
    *(v96 + 64) = v62;
    v100 = *v99;
    v204 = v100;
    *(v96 + 88) = v101;
    *(v96 + 96) = v100;
    v102 = *v56;
    v198 = v56[1];
    v103 = v198;
    v104 = MEMORY[0x1E69E6158];
    *(v96 + 120) = v98;
    *(v96 + 128) = v102;
    v105 = MEMORY[0x1E697AC48];
    *(v96 + 136) = v103;
    v106 = *v105;
    v203 = v106;
    *(v96 + 152) = v104;
    *(v96 + 160) = v106;
    v107 = MEMORY[0x1E6969080];
    *(v96 + 184) = v98;
    *(v96 + 192) = v66;
    *(v96 + 200) = v68;
    v196 = *MEMORY[0x1E697B390];
    v108 = v196;
    *(v96 + 248) = v98;
    *(v96 + 216) = v107;
    *(v96 + 224) = v108;
    v109 = MEMORY[0x1E69E6370];
    *(v96 + 256) = 1;
    v195 = *MEMORY[0x1E697ABD8];
    v110 = v195;
    *(v96 + 280) = v109;
    *(v96 + 288) = v110;
    v111 = *MEMORY[0x1E697ABE0];
    v112 = MEMORY[0x1E697ABD0];
    *(v96 + 312) = v98;
    *(v96 + 320) = v111;
    v113 = *v112;
    v114 = 0xD000000000000019;
    v115 = 0xD00000000000002ALL;
    *(v96 + 344) = v98;
    *(v96 + 352) = v113;
    v116 = *(v208 + 16);
    v117 = ".webauthn-recently-deleted";
    if (v116)
    {
      v115 = 0xD000000000000032;
    }

    else
    {
      v117 = ".webauthn.testing";
    }

    if (*(v208 + 16))
    {
      v114 = 0xD000000000000021;
      v118 = "com.apple.webkit.webauthn";
    }

    else
    {
      v118 = "back Title)";
    }

    if (v188)
    {
      v114 = v115;
      v119 = v117;
    }

    else
    {
      v119 = v118;
    }

    *(v96 + 376) = v98;
    *(v96 + 384) = v114;
    *(v96 + 392) = v119 | 0x8000000000000000;
    v120 = *MEMORY[0x1E697AEB0];
    *(v96 + 440) = v98;
    *(v96 + 408) = v104;
    *(v96 + 416) = v120;
    *(v96 + 472) = v109;
    *(v96 + 448) = v116 ^ 1;
    sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
    v121 = v205;
    v194 = v62;
    v122 = v204;

    v123 = v203;
    v204 = v66;
    v205 = v68;
    sub_1B852CF28(v66, v68);
    v124 = v196;
    v125 = v195;
    v126 = v111;
    v127 = v113;
    v128 = v120;
    v129 = sub_1B85661D8();
    if (v206)
    {
      v130 = *MEMORY[0x1E697AC38];
      v131 = v187;
      v132 = v186;
      if (!*MEMORY[0x1E697AC38])
      {
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }

      v133 = sub_1B85659A8();
      [v129 __swift_setObject_forKeyedSubscript_];
    }

    else
    {
      v134 = *MEMORY[0x1E697AC40];
      v133 = sub_1B85659A8();
      [v129 __swift_setObject_forKeyedSubscript_];
      v131 = v187;
      v132 = v186;
    }

    sub_1B8526860(v182, v132, &qword_1EBA8A7A0, &unk_1B85764D0);
    v135 = v189;
    v136 = *(v189 + 48);
    v137 = v190;
    if (v136(v132, 1, v190) == 1)
    {
      sub_1B8456588(v132, &qword_1EBA8A7A0, &unk_1B85764D0);
    }

    else
    {
      v138 = v180;
      (*(v135 + 32))(v180, v132, v137);
      v139 = *MEMORY[0x1E697ADD0];
      v140 = sub_1B85659F8();
      v141 = v139;
      [v129 __swift_setObject_forKeyedSubscript_];

      v135 = v189;
      v137 = v190;
      (*(v135 + 8))(v138, v190);
    }

    sub_1B8526860(v183, v131, &qword_1EBA8A7A0, &unk_1B85764D0);
    v142 = v136(v131, 1, v137);
    v60 = v207;
    if (v142 == 1)
    {
      sub_1B8456588(v131, &qword_1EBA8A7A0, &unk_1B85764D0);
      v63 = v210;
      v143 = v202;
      v144 = v129;
    }

    else
    {
      v145 = v131;
      v146 = v181;
      (*(v135 + 32))(v181, v145, v137);
      v147 = v135;
      v148 = *MEMORY[0x1E697ACD0];
      v149 = v137;
      v150 = sub_1B85659F8();
      v151 = v148;
      v144 = v129;
      [v129 __swift_setObject_forKeyedSubscript_];

      (*(v147 + 8))(v146, v149);
      v63 = v210;
      v143 = v202;
    }

    v152 = sub_1B8565DA8();
    v57 = v197;
    if (v152 == v200 && v153 == v199)
    {

LABEL_53:
      v157 = SecItemAdd(v144, 0);
      if (!v157)
      {
        v167 = sub_1B8565DA8();
        WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v143, v57, v167, v168, v188 & 1, v191);

        sub_1B852608C(v204, v205);

        sub_1B851D53C(v212, v60);
        sub_1B851D53C(v143, v57);
        v179 = v209;
LABEL_70:
        sub_1B851D53C(v179, v63);

        return;
      }

      v158 = v157;
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v159 = sub_1B8565B78();
      __swift_project_value_buffer(v159, qword_1ED985C68);
      v160 = sub_1B8565B48();
      v161 = sub_1B8566218();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        *v162 = 67174657;
        *(v162 + 4) = v158;
        _os_log_impl(&dword_1B8447000, v160, v161, "Failed to save passkey to keychain: %{private}d", v162, 8u);
        v163 = v162;
        v63 = v210;
        MEMORY[0x1B8CC1710](v163, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v164 = v158;
      *(v164 + 4) = 0;
      swift_willThrow();

      sub_1B852608C(v204, v205);
      goto LABEL_59;
    }

    v154 = sub_1B8566758();

    if (v154)
    {
      goto LABEL_53;
    }

    v155 = *MEMORY[0x1E697AE90];
    if (*MEMORY[0x1E697AE90])
    {
      v156 = sub_1B8565D68();
      [(__CFDictionary *)v144 __swift_setObject:v156 forKeyedSubscript:v155];

      goto LABEL_53;
    }

    goto LABEL_72;
  }

  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v78 = sub_1B8565B78();
  __swift_project_value_buffer(v78, qword_1ED985C68);
  v79 = sub_1B8565B48();
  v80 = sub_1B85661F8();
  v81 = os_log_type_enabled(v79, v80);
  v82 = v210;
  if (v81)
  {
    v83 = v48;
    v84 = v41;
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_1B8447000, v79, v80, "Imported duplicate passkey.", v85, 2u);
    v86 = v85;
    v41 = v84;
    v48 = v83;
    MEMORY[0x1B8CC1710](v86, -1, -1);
  }

  sub_1B851D53C(v41, v82);
  sub_1B851D53C(v48, v49);

  sub_1B8538128(v198, v191, type metadata accessor for WBSKeychainPasskey);
}

void *sub_1B8530A58(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1B8566578();

    if (v4)
    {
      sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1B8535584(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id WBSPasskeyStore.__allocating_init(forTesting:queue:)(char a1, void *a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 40) = a2;
  v7 = a2;
  *(v6 + 24) = sub_1B8566268();
  *(v6 + 32) = v8;
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id WBSPasskeyStore.init(forTesting:queue:)(char a1, void *a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  *(v2 + 40) = a2;
  v4 = a2;
  v3[3] = sub_1B8566268();
  v3[4] = v5;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WBSPasskeyStore();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t WBSPasskeyStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

BOOL static WBSPasskeyStore.PasskeyStoreError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (v3)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        v4 = *(a2 + 4);
      }

      return (v4 & 1) != 0;
    }

    if (v3 == 1)
    {
      v7 = *(a2 + 4);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v6 = *(a2 + 4);
    }

    else
    {
      v6 = 0;
    }

    return (v6 & 1) != 0;
  }

  if (v3 > 2)
  {
    v8 = *(a2 + 4);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

uint64_t sub_1B8530D60(uint64_t a1, uint64_t a2, char a3)
{
  result[1] = *MEMORY[0x1E69E9840];
  v83 = [objc_opt_self() isCredentialExchangeEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B8574770;
  v6 = *MEMORY[0x1E697AFF8];
  v82 = *MEMORY[0x1E697AFF8];
  type metadata accessor for CFString(0);
  v8 = MEMORY[0x1E697B020];
  *(v5 + 32) = v6;
  v81 = *v8;
  *(v5 + 56) = v7;
  *(v5 + 64) = v81;
  v9 = *MEMORY[0x1E697AEB0];
  *(v5 + 88) = v7;
  *(v5 + 96) = v9;
  v10 = *MEMORY[0x1E697AEB8];
  *(v5 + 120) = v7;
  *(v5 + 128) = v10;
  v11 = *MEMORY[0x1E697B390];
  *(v5 + 184) = v7;
  *(v5 + 152) = v7;
  *(v5 + 160) = v11;
  v12 = MEMORY[0x1E69E6370];
  *(v5 + 192) = 1;
  v13 = *MEMORY[0x1E697ABD0];
  *(v5 + 216) = v12;
  *(v5 + 224) = v13;
  v14 = 0xD000000000000019;
  if (*(v3 + 16))
  {
    v15 = 0xD000000000000032;
  }

  else
  {
    v15 = 0xD00000000000002ALL;
  }

  if (*(v3 + 16))
  {
    v16 = ".webauthn-recently-deleted";
  }

  else
  {
    v16 = ".webauthn.testing";
  }

  if (*(v3 + 16))
  {
    v14 = 0xD000000000000021;
    v17 = "com.apple.webkit.webauthn";
  }

  else
  {
    v17 = "back Title)";
  }

  if (a3)
  {
    v18 = v16;
  }

  else
  {
    v15 = v14;
    v18 = v17;
  }

  v19 = MEMORY[0x1E69E6158];
  *(v5 + 248) = v7;
  *(v5 + 256) = v15;
  *(v5 + 264) = v18 | 0x8000000000000000;
  v20 = *MEMORY[0x1E697B260];
  v21 = MEMORY[0x1E697B270];
  *(v5 + 280) = v19;
  *(v5 + 288) = v20;
  v22 = *v21;
  *(v5 + 312) = v7;
  *(v5 + 320) = v22;
  v23 = *MEMORY[0x1E697B328];
  *(v5 + 376) = v7;
  *(v5 + 344) = v7;
  *(v5 + 352) = v23;
  *(v5 + 408) = v12;
  *(v5 + 384) = 1;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v24 = v82;
  v25 = v81;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v13;
  v30 = v20;
  v31 = v22;
  v32 = v23;
  v33 = sub_1B85661D8();
  if (v83)
  {
    v34 = *MEMORY[0x1E697AC38];
    if (*MEMORY[0x1E697AC38])
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v34 = *MEMORY[0x1E697AC40];
LABEL_17:
  v35 = sub_1B85659A8();
  [v33 __swift_setObject_forKeyedSubscript_];

  result[0] = 0;
  v36 = v33;
  v37 = SecItemCopyMatching(v36, result);
  v38 = v37;
  if (!v83)
  {
    goto LABEL_21;
  }

  if (!v37)
  {

    goto LABEL_28;
  }

  if (*MEMORY[0x1E697AC38])
  {
    [(__CFDictionary *)v36 __swift_setObject:0 forKeyedSubscript:?];
    v39 = *MEMORY[0x1E697AC40];
    v40 = sub_1B85659A8();
    [(__CFDictionary *)v36 __swift_setObject:v40 forKeyedSubscript:v39];

    v38 = SecItemCopyMatching(v36, result);
LABEL_21:

    if (v38)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v41 = sub_1B8565B78();
      __swift_project_value_buffer(v41, qword_1ED985C68);
      v42 = sub_1B8565B48();
      v43 = sub_1B8566218();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67240192;
        *(v44 + 4) = v38;
        _os_log_impl(&dword_1B8447000, v42, v43, "Could not find passkey: %{public}d", v44, 8u);
        MEMORY[0x1B8CC1710](v44, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v45 = v38;
      *(v45 + 4) = 0;
      goto LABEL_49;
    }

LABEL_28:
    if (result[0])
    {
      v46 = swift_unknownObjectRetain();
      v47 = CFGetTypeID(v46);
      if (v47 == SecKeyGetTypeID())
      {
        error = 0;
        type metadata accessor for SecKey(0);
        swift_unknownObjectRetain();
        v48 = swift_dynamicCastUnknownClassUnconditional();
        v49 = SecKeyCopyExternalRepresentation(v48, &error);

        if (v49)
        {
          v50 = v49;
          v51 = sub_1B85659D8();
          v53 = v52;

          v88 = v51;
          v89 = v53;
          sub_1B8565C38();
          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_1ED985688 != -1)
          {
            swift_once();
          }

          v61 = sub_1B8565B78();
          __swift_project_value_buffer(v61, qword_1ED985C68);
          v62 = sub_1B8565B48();
          v63 = sub_1B8566218();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v86 = v65;
            *v64 = 136446210;
            swift_beginAccess();
            if (error)
            {
              v85 = v65;
              v66 = error;
              v88 = 0;
              v89 = 0xE000000000000000;
              type metadata accessor for CFError(0);
              sub_1B8536618(&qword_1EBA8A910, 255, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
              v67 = v66;
              v68 = sub_1B8566738();
              v84 = v67;
              if (v68)
              {
                v69 = v68;
              }

              else
              {
                v69 = swift_allocError();
                *v73 = v67;
              }

              v74 = sub_1B85658C8();

              v75 = [v74 safari_privacyPreservingDescription];
              v76 = sub_1B8565DA8();
              v78 = v77;

              MEMORY[0x1B8CBF120](v76, v78);

              v72 = v88;
              v71 = v89;
              v65 = v85;
            }

            else
            {
              v71 = 0xED0000726F727265;
              v72 = 0x206E776F6E6B6E55;
            }

            v79 = sub_1B8525560(v72, v71, &v86);

            *(v64 + 4) = v79;
            _os_log_impl(&dword_1B8447000, v62, v63, "Could not read key data: %{public}s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v65);
            MEMORY[0x1B8CC1710](v65, -1, -1);
            MEMORY[0x1B8CC1710](v64, -1, -1);
          }

          swift_beginAccess();
          if (error)
          {
          }

          sub_1B8535C58();
          swift_allocError();
          *v80 = 1;
          *(v80 + 4) = 1;
          swift_willThrow();
          swift_unknownObjectRelease();
        }

        goto LABEL_50;
      }

      swift_unknownObjectRelease();
    }

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v54 = sub_1B8565B78();
    __swift_project_value_buffer(v54, qword_1ED985C68);
    v55 = sub_1B8565B48();
    v56 = sub_1B8566218();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_48;
    }

    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138477827;
    swift_beginAccess();
    if (result[0])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (v59)
      {
        v60 = v59;
LABEL_47:
        *(v57 + 4) = v59;
        *v58 = v60;
        _os_log_impl(&dword_1B8447000, v55, v56, "Unexpected keychain response: %{private}@", v57, 0xCu);
        sub_1B8456588(v58, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v58, -1, -1);
        MEMORY[0x1B8CC1710](v57, -1, -1);
LABEL_48:

        sub_1B8535C58();
        swift_allocError();
        *v70 = 1;
        *(v70 + 4) = 1;
LABEL_49:
        swift_willThrow();
LABEL_50:

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v59 = 0;
    v60 = 0;
    goto LABEL_47;
  }

  __break(1u);
  return v37;
}

uint64_t WBSPasskeyStore.exportPrivateKey(credentialID:)(uint64_t a1, uint64_t a2)
{
  v6 = sub_1B8565C48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8530D60(a1, a2, 0);
  if (!v3)
  {
    v2 = sub_1B8565BF8();
    (*(v7 + 8))(v9, v6);
  }

  return v2;
}

const __CFDictionary *sub_1B85317C4(uint64_t a1, uint64_t a2)
{
  result[1] = *MEMORY[0x1E69E9840];
  v42 = [objc_opt_self() isCredentialExchangeEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B8574770;
  v4 = *MEMORY[0x1E697AFF8];
  v41 = *MEMORY[0x1E697AFF8];
  type metadata accessor for CFString(0);
  *(v3 + 32) = v4;
  v40 = *MEMORY[0x1E697B020];
  v6 = *MEMORY[0x1E697B020];
  v7 = MEMORY[0x1E697AEB0];
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v8 = *v7;
  *(v3 + 88) = v5;
  *(v3 + 96) = v8;
  v9 = *MEMORY[0x1E697AEB8];
  *(v3 + 120) = v5;
  *(v3 + 128) = v9;
  v10 = *MEMORY[0x1E697B390];
  *(v3 + 184) = v5;
  *(v3 + 152) = v5;
  *(v3 + 160) = v10;
  v11 = MEMORY[0x1E69E6370];
  *(v3 + 192) = 1;
  v12 = *MEMORY[0x1E697ABD0];
  *(v3 + 216) = v11;
  *(v3 + 224) = v12;
  if (*(v2 + 16))
  {
    v13 = 0xD000000000000021;
  }

  else
  {
    v13 = 0xD000000000000019;
  }

  if (*(v2 + 16))
  {
    v14 = "com.apple.webkit.webauthn";
  }

  else
  {
    v14 = "back Title)";
  }

  v15 = MEMORY[0x1E69E6158];
  *(v3 + 248) = v5;
  *(v3 + 256) = v13;
  *(v3 + 264) = v14 | 0x8000000000000000;
  v16 = *MEMORY[0x1E697B260];
  v17 = MEMORY[0x1E697B270];
  *(v3 + 280) = v15;
  *(v3 + 288) = v16;
  v18 = *v17;
  *(v3 + 312) = v5;
  *(v3 + 320) = v18;
  v19 = *MEMORY[0x1E697B328];
  *(v3 + 376) = v5;
  *(v3 + 344) = v5;
  *(v3 + 352) = v19;
  *(v3 + 408) = v11;
  *(v3 + 384) = 1;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v20 = v41;
  v21 = v40;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v12;
  v26 = v16;
  v27 = v18;
  v28 = v19;
  v29 = sub_1B85661D8();
  if (v42)
  {
    v30 = *MEMORY[0x1E697AC38];
    if (*MEMORY[0x1E697AC38])
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v30 = *MEMORY[0x1E697AC40];
LABEL_11:
  v31 = sub_1B85659A8();
  [v29 __swift_setObject_forKeyedSubscript_];

  result[0] = 0;
  v32 = v29;
  v33 = SecItemCopyMatching(v32, result);
  v34 = v33;
  if (v33 == -25300)
  {
    v35 = v42;
  }

  else
  {
    v35 = 0;
  }

  if (v35 != 1)
  {
LABEL_17:

    if (v34 == -25300)
    {
      v34 = 0;
      v38 = 1;
    }

    else
    {
      if (!v34 && result[0])
      {
        swift_unknownObjectRetain();

        type metadata accessor for SecKey(0);
        v32 = swift_dynamicCastUnknownClassUnconditional();
        swift_unknownObjectRelease();
        return v32;
      }

      v38 = 0;
    }

    sub_1B8535C58();
    swift_allocError();
    *v39 = v34;
    *(v39 + 4) = v38;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v32;
  }

  if (*MEMORY[0x1E697AC38])
  {
    [(__CFDictionary *)v32 __swift_setObject:0 forKeyedSubscript:?];
    v36 = *MEMORY[0x1E697AC40];
    v37 = sub_1B85659A8();
    [(__CFDictionary *)v32 __swift_setObject:v37 forKeyedSubscript:v36];

    v34 = SecItemCopyMatching(v32, result);
    goto LABEL_17;
  }

  __break(1u);
  return v33;
}

uint64_t WBSPasskeyStore.test_createPasskey(name:displayName:relyingParty:userHandle:groupID:inRecentlyDeleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1B8531C90;

  return (sub_1B85374C0)(a1, a2, a5, a6, a7, a8);
}

uint64_t sub_1B8531C90(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t WBSPasskeyStore.test_createPasskey(for:username:displayName:userHandle:groupID:inRecentlyDeleted:asLegacyCredential:unsafeAllowRealKeychainAccess:keyClass:)@<X0>(__CFError *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t x8_0@<X8>, __CFString *a9, uint64_t a10, unsigned __int8 a11, char a12, char a13, uint64_t a14, uint64_t a15)
{
  v34 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  LOBYTE(v33) = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(a3, a4, &v33);
  LOBYTE(v33) = 1;

  WBSKeychainPasskey.Metadata.subscript.setter(a5, a6, &v33);
  LOBYTE(v33) = 1;
  sub_1B852550C(a7, a8);
  WBSKeychainPasskey.Metadata.subscript.setter(a7, a8, &v33);
  v22 = sub_1B8565D68();
  v23 = objc_opt_self();
  v24 = [v23 cborWithUTF8String_];

  v25 = sub_1B8525C44(v24);
  v26 = sub_1B8565D68();
  v27 = [v23 cborWithUTF8String_];

  v28 = sub_1B8525C44(v27);
  v33 = v34;
  sub_1B8532F84(a1, a2, &v33, a9, a10, a11, a12, a13, x8_0, a14, a15);
}

void sub_1B8532164(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5, int a6, void *aBlock, uint64_t a8, char a9)
{
  v9[2] = a8;
  v9[3] = _Block_copy(aBlock);
  sub_1B8565DA8();
  v9[4] = v12;
  sub_1B8565DA8();
  v9[5] = v13;
  v14 = a5;
  v15 = a4;

  v16 = sub_1B85659D8();
  v18 = v17;

  v9[6] = v16;
  v9[7] = v18;
  if (a5)
  {
    sub_1B8565DA8();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v9[8] = v20;
  v21 = swift_task_alloc();
  v9[9] = v21;
  *v21 = v9;
  v21[1] = sub_1B85322F4;

  JUMPOUT(0x1B85374C0);
}

uint64_t sub_1B85322F4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *v3;

  v10 = *(v7 + 56);
  v11 = *(v7 + 48);

  sub_1B851D53C(v11, v10);

  if (v4)
  {
    v12 = sub_1B85658C8();

    v13 = v12;
    v14 = 0;
  }

  else
  {
    v12 = sub_1B85659A8();
    sub_1B851D53C(a1, a2);
    v14 = v12;
    v13 = 0;
  }

  v15 = *(v8 + 24);
  (v15)[2](v15, v14, v13);

  _Block_release(v15);
  v16 = *(v9 + 8);

  return v16();
}

uint64_t WBSPasskeyStore.test_createPasskey(name:displayName:relyingParty:userHandle:groupID:inRecentlyDeleted:unsafeAllowRealKeychainAccess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B8538754;

  return sub_1B85378F4(a1, a2, a5, a6, a7, a8, v18, v19);
}

uint64_t sub_1B8532810(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5, int a6, int a7, void *aBlock, uint64_t a9)
{
  v9[2] = a9;
  v9[3] = _Block_copy(aBlock);
  v26 = sub_1B8565DA8();
  v13 = v12;
  v9[4] = v12;
  v25 = sub_1B8565DA8();
  v15 = v14;
  v9[5] = v14;
  v16 = a5;
  v17 = a4;

  v18 = sub_1B85659D8();
  v20 = v19;

  v9[6] = v18;
  v9[7] = v20;
  if (a5)
  {
    a5 = sub_1B8565DA8();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v9[8] = v22;
  v23 = swift_task_alloc();
  v9[9] = v23;
  *v23 = v9;
  v23[1] = sub_1B8538750;

  return sub_1B85378F4(v26, v13, v25, v15, v18, v20, a5, v22);
}

uint64_t WBSPasskeyStore.test_createLegacyCredential(name:displayName:relyingParty:userHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1B8538754;

  return sub_1B8537D30(a1, a2, a5, a6, a7, a8);
}

uint64_t sub_1B8532C40(uint64_t a1, int a2, uint64_t a3, void *a4, void *aBlock, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v8 = sub_1B8565DA8();
  v10 = v9;
  v6[4] = v9;
  v11 = sub_1B8565DA8();
  v13 = v12;
  v6[5] = v12;
  v14 = a4;

  v15 = sub_1B85659D8();
  v17 = v16;

  v6[6] = v15;
  v6[7] = v17;
  v18 = swift_task_alloc();
  v6[8] = v18;
  *v18 = v6;
  v18[1] = sub_1B8532D84;

  return sub_1B8537D30(v8, v10, v11, v13, v15, v17);
}

uint64_t sub_1B8532D84(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *v3;

  sub_1B851D53C(*(v7 + 48), *(v7 + 56));

  if (v4)
  {
    v10 = sub_1B85658C8();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v10 = sub_1B85659A8();
    sub_1B851D53C(a1, a2);
    v12 = v10;
    v11 = 0;
  }

  v13 = *(v8 + 24);
  (v13)[2](v13, v12, v11);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

void sub_1B8532F84(__CFError *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, __CFString *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v138 = a4;
  v139 = a5;
  v140 = a1;
  v141 = a2;
  v147[25] = *MEMORY[0x1E69E9840];
  v17 = sub_1B8565C98();
  v136 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B8565C88();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a3;
  v25 = *(v11 + 16);
  if ((v25 & 1) == 0 && (a8 & 1) == 0)
  {
    sub_1B8535C58();
    swift_allocError();
    *v26 = 3;
    *(v26 + 4) = 1;
    swift_willThrow();
    return;
  }

  v117 = v23;
  v118 = v21;
  v134 = v17;
  v119 = a9;
  v120 = v11;
  v121 = v20;
  v143 = v24;
  v122 = a6;
  if (a7)
  {

    v27 = sub_1B8565D68();
    v28 = objc_opt_self();
    v29 = [v28 cborWithUTF8String_];

    v30 = [v28 cborWithInteger_];
    if (v30)
    {
      v31 = v30;
      if ((v24 & 0xC000000000000001) != 0)
      {
        if (v24 < 0)
        {
          v32 = v24;
        }

        else
        {
          v32 = v24 & 0xFFFFFFFFFFFFFF8;
        }

        v33 = sub_1B8566358();
        if (__OFADD__(v33, 1))
        {
          __break(1u);
        }

        v24 = sub_1B8553CCC(v32, v33 + 1);
      }

      v34 = a8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v24;
      sub_1B8554184(v31, v29, isUniquelyReferenced_nonNull_native);

      v36 = v145;

      v143 = v36;
    }

    else
    {
      v34 = a8;
      v37 = sub_1B8525C44(v29);
    }

    LOBYTE(a6) = v122;
  }

  else
  {
    v34 = a8;
  }

  v127 = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B8574770;
  v133 = *MEMORY[0x1E697AEB0];
  v39 = v133;
  type metadata accessor for CFString(0);
  *(v38 + 56) = v40;
  *(v38 + 32) = v39;
  v41 = MEMORY[0x1E69E6370];
  *(v38 + 64) = v34 & 1;
  v132 = *MEMORY[0x1E697AD68];
  v42 = v132;
  *(v38 + 88) = v41;
  *(v38 + 96) = v42;
  v131 = *MEMORY[0x1E697AD78];
  v43 = v131;
  *(v38 + 120) = v40;
  *(v38 + 128) = v43;
  v130 = *MEMORY[0x1E697AD50];
  v44 = v130;
  *(v38 + 152) = v40;
  *(v38 + 160) = v44;
  v45 = MEMORY[0x1E69E6530];
  *(v38 + 184) = v40;
  *(v38 + 192) = 256;
  v129 = *MEMORY[0x1E697B390];
  v46 = v129;
  *(v38 + 248) = v40;
  *(v38 + 216) = v45;
  *(v38 + 224) = v46;
  *(v38 + 256) = 1;
  v128 = *MEMORY[0x1E697AD30];
  v47 = v128;
  *(v38 + 280) = v41;
  *(v38 + 288) = v47;
  v48 = MEMORY[0x1E69E6158];
  *(v38 + 312) = v40;
  *(v38 + 320) = a10;
  *(v38 + 328) = a11;
  v126 = *MEMORY[0x1E697B2D0];
  v49 = v126;
  *(v38 + 376) = v40;
  *(v38 + 344) = v48;
  *(v38 + 352) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  v51 = inited;
  *(inited + 16) = xmmword_1B8574900;
  v125 = *MEMORY[0x1E697AD18];
  *(inited + 32) = v125;
  v123 = inited + 32;
  *(inited + 40) = 1;
  v124 = *MEMORY[0x1E697ABD0];
  v52 = v124;
  *(inited + 64) = v41;
  *(inited + 72) = v52;
  v53 = 0xD00000000000002ALL;
  if (v25)
  {
    v53 = 0xD000000000000032;
    v54 = ".webauthn-recently-deleted";
  }

  else
  {
    v54 = ".webauthn.testing";
  }

  v55 = 0xD000000000000019;
  if (v25)
  {
    v55 = 0xD000000000000021;
    v56 = "com.apple.webkit.webauthn";
  }

  else
  {
    v56 = "back Title)";
  }

  if ((a6 & 1) == 0)
  {
    v53 = v55;
    v54 = v56;
  }

  v57 = MEMORY[0x1E697ADC8];
  *(inited + 80) = v53;
  *(inited + 88) = v54 | 0x8000000000000000;
  v58 = *v57;
  *(inited + 104) = v48;
  *(inited + 112) = v58;
  v59 = v141;
  *(inited + 120) = v140;
  *(inited + 128) = v59;
  v60 = *MEMORY[0x1E697AC48];
  *(inited + 144) = v48;
  *(inited + 152) = v60;
  v140 = v143;
  sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
  sub_1B8536660(&qword_1ED9856C0, &qword_1ED9856B8, 0x1E698F6F8, MEMORY[0x1E69E81B8]);
  v61 = v133;
  v62 = v132;
  v63 = v131;
  v64 = v130;
  v65 = v129;
  v66 = v128;

  v67 = v126;
  v68 = v125;
  v69 = v124;
  v70 = v58;

  v71 = v60;

  v72 = sub_1B8565CB8();
  v73 = [objc_opt_self() cborWithDictionary_];

  v74 = sub_1B8565958();
  v76 = v75;

  if (v76 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_50;
  }

  v51[23] = MEMORY[0x1E6969080];
  v51[20] = v74;
  v51[21] = v76;
  v77 = sub_1B8526100(v51);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  *(v38 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C8, &qword_1B8574B60);
  *(v38 + 384) = v77;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v78 = sub_1B85661D8();
  if (sub_1B8565DA8() == v138 && v79 == v139)
  {

    v80 = v134;
    goto LABEL_31;
  }

  v81 = sub_1B8566758();

  v80 = v134;
  if ((v81 & 1) == 0)
  {
    v82 = *MEMORY[0x1E697AE90];
    if (*MEMORY[0x1E697AE90])
    {
      v83 = sub_1B8565D68();
      [v78 __swift_setObject_forKeyedSubscript_];

      goto LABEL_31;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_31:
  v147[0] = 0;
  RandomKey = SecKeyCreateRandomKey(v78, v147);
  if (RandomKey)
  {
    v85 = RandomKey;
    v86 = v137;
    v87 = sub_1B8536BE4(RandomKey);
    if (v86)
    {
    }

    else
    {
      v141 = v78;
      v138 = &stru_1F3064D08;
      v98 = v87;
      v99 = v88;
      sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
      v100 = v135;
      sub_1B8565BD8();
      sub_1B852550C(v98, v99);
      sub_1B8535D2C(v98, v99, v100);
      v137 = 0;
      v139 = v98;
      v140 = v99;
      sub_1B851D53C(v98, v99);
      v101 = v117;
      sub_1B8565BC8();
      (*(v136 + 8))(v100, v80);
      sub_1B8565C78();
      (*(v118 + 8))(v101, v121);

      v102 = v145;
      v103 = v146;
      v104 = sub_1B8565DA8();
      WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v102, v103, v104, v105, v122 & 1, v119);

      sub_1B851D53C(v102, v103);
      sub_1B851D53C(v139, v140);
    }
  }

  else
  {

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v89 = sub_1B8565B78();
    __swift_project_value_buffer(v89, qword_1ED985C68);
    v90 = sub_1B8565B48();
    v91 = sub_1B8566218();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v144 = v93;
      *v92 = 136446210;
      swift_beginAccess();
      if (v147[0])
      {
        v141 = v78;
        v94 = v147[0];
        v145 = 0;
        v146 = 0xE000000000000000;
        v142 = v94;
        type metadata accessor for CFError(0);
        sub_1B8536618(&qword_1EBA8A910, 255, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
        v95 = v94;
        v96 = sub_1B8566738();
        v140 = v95;
        if (v96)
        {
          v97 = v96;
        }

        else
        {
          v97 = swift_allocError();
          *v108 = v95;
        }

        v109 = sub_1B85658C8();

        v110 = [v109 safari_privacyPreservingDescription];
        v111 = sub_1B8565DA8();
        v113 = v112;

        MEMORY[0x1B8CBF120](v111, v113);

        v107 = v145;
        v106 = v146;
        v78 = v141;
      }

      else
      {
        v106 = 0xED0000726F727265;
        v107 = 0x206E776F6E6B6E55;
      }

      v114 = sub_1B8525560(v107, v106, &v144);

      *(v92 + 4) = v114;
      _os_log_impl(&dword_1B8447000, v90, v91, "Could not create passkey: %{public}s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x1B8CC1710](v93, -1, -1);
      MEMORY[0x1B8CC1710](v92, -1, -1);
    }

    swift_beginAccess();
    if (v147[0])
    {
    }

    sub_1B8535C58();
    swift_allocError();
    *v115 = 1;
    *(v115 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1B8533B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1B8540798(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1B85408D4(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1B8540850(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t WBSPasskeyStore.test_copyPasskey(credentialID:to:inRecentlyDeleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 104) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A7A0, &unk_1B85764D0);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = type metadata accessor for WBSShareablePasskey(0);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  type metadata accessor for WBSKeychainPasskey(0);
  *(v6 + 96) = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v7, type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
  v9 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8533DB8, v9, v8);
}

uint64_t sub_1B8533DB8()
{
  v1 = sub_1B852F0B4(*(v0 + 16), *(v0 + 24), *(v0 + 104));
  v3 = v2;
  sub_1B8565A78();
  swift_allocObject();
  sub_1B852550C(v1, v3);
  sub_1B8565A68();
  sub_1B8536618(&qword_1EBA8A840, 255, type metadata accessor for WBSShareablePasskey, &protocol conformance descriptor for WBSShareablePasskey);
  sub_1B8565A58();

  sub_1B851D53C(v1, v3);
  v4 = *(v0 + 40);
  sub_1B8538128(*(v0 + 80), *(v0 + 88), type metadata accessor for WBSShareablePasskey);
  if (v4)
  {
    v16 = *(v0 + 32);
    v5 = *(v0 + 40);
  }

  else
  {
    v16 = sub_1B8565DA8();
    v5 = v6;
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v13 = *(v0 + 104);
  v9 = sub_1B8565A38();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 1, 1, v9);
  v10(v8, 1, 1, v9);

  WBSPasskeyStore.importPasskey(_:to:inRecentlyDeleted:importedCredentialID:lastModified:created:)(v14, v16, v5, v13, 0, 0xF000000000000000, v7, v8, v15);

  sub_1B851D53C(v1, v3);
  sub_1B8456588(v8, &qword_1EBA8A7A0, &unk_1B85764D0);
  sub_1B8456588(v7, &qword_1EBA8A7A0, &unk_1B85764D0);
  sub_1B85260A0(v14, type metadata accessor for WBSShareablePasskey);
  sub_1B85260A0(*(v0 + 96), type metadata accessor for WBSKeychainPasskey);

  v11 = *(v0 + 8);

  return v11(1);
}

uint64_t sub_1B853426C(void *a1, void *a2, char a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = a2;
  v10 = a1;

  v11 = sub_1B85659D8();
  v13 = v12;

  if (a2)
  {
    a2 = sub_1B8565DA8();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v5[4] = v15;
  v5[5] = v13;
  v5[6] = v11;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_1B8534398;

  return WBSPasskeyStore.test_copyPasskey(credentialID:to:inRecentlyDeleted:)(v11, v13, a2, v15, a3 & 1);
}

uint64_t sub_1B8534398(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v8 = *v1;

  sub_1B851D53C(v3, v4);

  v5[2](v5, a1 & 1);
  _Block_release(v5);
  v6 = *(v8 + 8);

  return v6();
}

NSObject *WBSPasskeyStore.test_publicKey(for:)(uint64_t a1)
{
  v3 = sub_1B85317C4(*(a1 + 40), *(a1 + 48));
  if (!v2)
  {
    v4 = v3;
    v1 = sub_1B8536BE4(v3);
  }

  return v1;
}

NSObject *WBSPasskeyStore.test_sign(data:usingPasskeyWithCredentialID:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B85317C4(a3, a4);
  if (!v4)
  {
    v8 = v7;
    a2 = sub_1B8537034(a1, a2, v7);
  }

  return a2;
}

uint64_t sub_1B8534608@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B8565888();
    if (v10)
    {
      v11 = sub_1B85658A8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B8565898();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B8565888();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B85658A8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B8565898();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B8534838(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B8535FF8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B851D53C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1B8534608(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B851D53C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1B85349C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B851F914;

  return v6();
}

uint64_t sub_1B8534AB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B851F31C;

  return v7();
}

uint64_t sub_1B8534B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B8526860(a3, v23 - v10, &qword_1EBA8A638, &qword_1B8574410);
  v12 = sub_1B8566108();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B8456588(v11, &qword_1EBA8A638, &qword_1B8574410);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B85660F8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B85660E8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B8565E28() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B8456588(a3, &qword_1EBA8A638, &qword_1B8574410);

    return v21;
  }

LABEL_8:
  sub_1B8456588(a3, &qword_1EBA8A638, &qword_1B8574410);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B8534E94(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B8534F8C;

  return v6(a1);
}

uint64_t sub_1B8534F8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1B8535084(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A950, &qword_1B8574B68);
  v10 = *(type metadata accessor for WBSKeychainPasskey(0) - 8);
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
  v15 = *(type metadata accessor for WBSKeychainPasskey(0) - 8);
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

char *sub_1B853525C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A928, &qword_1B8574B48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B8535388(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1B8535484(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A920, &qword_1B8574B40);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

unint64_t sub_1B8535584(uint64_t a1)
{
  v2 = sub_1B8566278();

  return sub_1B85357D0(a1, v2);
}

unint64_t sub_1B85355C8(uint64_t a1)
{
  v2 = sub_1B8566388();

  return sub_1B85358A4(a1, v2);
}

unint64_t sub_1B853560C(uint64_t a1, uint64_t a2)
{
  sub_1B85667D8();
  sub_1B8565D38();
  v4 = sub_1B8566808();

  return sub_1B853596C(a1, a2, v4);
}

unint64_t sub_1B8535684(uint64_t a1)
{
  sub_1B85667D8();
  type metadata accessor for CFString(0);
  sub_1B8536618(&qword_1EBA8A8B8, 255, type metadata accessor for CFString, &unk_1B857427C);
  sub_1B8565AF8();
  v2 = sub_1B8566808();

  return sub_1B8535A24(a1, v2);
}

unint64_t sub_1B853573C(uint64_t a1)
{
  sub_1B8565DA8();
  sub_1B85667D8();
  sub_1B8565D38();
  v2 = sub_1B8566808();

  return sub_1B8535B34(a1, v2);
}

unint64_t sub_1B85357D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B8566288();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B85358A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B852D3B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CBF5F0](v9, a1);
      sub_1B851F7F8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B853596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B8566758())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B8535A24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B8536618(&qword_1EBA8A8B8, 255, type metadata accessor for CFString, &unk_1B857427C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B8565AE8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B8535B34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B8565DA8();
      v8 = v7;
      if (v6 == sub_1B8565DA8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B8566758();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_1B8535C38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B85589B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1B8535C58()
{
  result = qword_1EBA8A8F0;
  if (!qword_1EBA8A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A8F0);
  }

  return result;
}

void *sub_1B8535CAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B85589DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8535CCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8558B10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8535CEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8558C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8535D0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8558D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B8535D2C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1B8565C98();
      sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
      return sub_1B8565BB8();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1B8535F14(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1B8535F14(v5, v6);
  }

  sub_1B8565C98();
  sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
  return sub_1B8565BB8();
}

uint64_t sub_1B8535F14(uint64_t a1, uint64_t a2)
{
  result = sub_1B8565888();
  if (!result || (result = sub_1B85658A8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B8565898();
      sub_1B8565C98();
      sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
      return sub_1B8565BB8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8535FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B8565888();
  v11 = result;
  if (result)
  {
    result = sub_1B85658A8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B8565898();
  sub_1B8534608(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1B85360B0(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 >> 60 != 15)
  {
    v8 = *a1;
    sub_1B852CF28(*a1, v1);
    sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
    sub_1B8536660(&qword_1ED9856C0, &qword_1ED9856B8, 0x1E698F6F8, MEMORY[0x1E69E81B8]);

    v9 = sub_1B8565CB8();
    v10 = [objc_opt_self() cborWithDictionary_];

    v11 = sub_1B8565958();
    v13 = v12;

    if (v13 >> 60 == 15)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v14 = sub_1B8565B78();
      __swift_project_value_buffer(v14, qword_1ED985C68);
      v15 = sub_1B8565B48();
      v16 = sub_1B8566218();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B8447000, v15, v16, "Could not encode passkey metadata", v17, 2u);
        MEMORY[0x1B8CC1710](v17, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v18 = 2;
      *(v18 + 4) = 1;
      swift_willThrow();
      v19 = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1B85740E0;
      v21 = *MEMORY[0x1E697B3C8];
      type metadata accessor for CFString(0);
      v23 = v22;
      *(v20 + 32) = v21;
      *(v20 + 88) = MEMORY[0x1E6969080];
      *(v20 + 56) = v22;
      *(v20 + 64) = v8;
      *(v20 + 72) = v1;
      sub_1B8451F34(0, &qword_1EBA8A900, 0x1E695DF20);
      sub_1B852CF28(v8, v1);
      v24 = v21;
      v25 = sub_1B85661D8();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1B85740E0;
      v27 = *MEMORY[0x1E697AC48];
      *(v26 + 32) = *MEMORY[0x1E697AC48];
      *(v26 + 88) = MEMORY[0x1E6969080];
      *(v26 + 56) = v23;
      *(v26 + 64) = v11;
      *(v26 + 72) = v13;
      v28 = v27;
      sub_1B852CF28(v11, v13);
      v29 = sub_1B85661D8();
      v30 = SecItemUpdate(v25, v29);
      if (!v30)
      {

        sub_1B852608C(v11, v13);
        return sub_1B852608C(v8, v1);
      }

      v31 = v30;
      v39 = v8;
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v32 = sub_1B8565B78();
      __swift_project_value_buffer(v32, qword_1ED985C68);
      v33 = sub_1B8565B48();
      v34 = sub_1B8566218();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = v25;
        v36 = swift_slowAlloc();
        *v36 = 67240192;
        *(v36 + 4) = v31;
        _os_log_impl(&dword_1B8447000, v33, v34, "Could not update passkey: %{public}d", v36, 8u);
        v37 = v36;
        v25 = v35;
        MEMORY[0x1B8CC1710](v37, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v38 = v31;
      *(v38 + 4) = 0;
      swift_willThrow();

      sub_1B852608C(v11, v13);
      v19 = v39;
    }

    return sub_1B852608C(v19, v1);
  }

  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8565B78();
  __swift_project_value_buffer(v2, qword_1ED985C68);
  v3 = sub_1B8565B48();
  v4 = sub_1B8566218();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B8447000, v3, v4, "No persistent ref specified", v5, 2u);
    MEMORY[0x1B8CC1710](v5, -1, -1);
  }

  sub_1B8535C58();
  swift_allocError();
  *v6 = 0;
  *(v6 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_1B8536618(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1B8536660(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B8451F34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B85366A4(void *a1)
{
  v1 = [a1 credentialID];
  sub_1B8565DA8();

  v49 = sub_1B8565978();
  v3 = v2;

  v46 = v3;
  if (v3 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = [objc_opt_self() isCredentialExchangeEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B85748F0;
  v7 = *MEMORY[0x1E697AFF8];
  type metadata accessor for CFString(0);
  v9 = v8;
  *(v6 + 32) = v7;
  v10 = *MEMORY[0x1E697B020];
  *(v6 + 56) = v8;
  *(v6 + 64) = v10;
  v11 = *MEMORY[0x1E697B390];
  *(v6 + 120) = v8;
  *(v6 + 88) = v8;
  *(v6 + 96) = v11;
  v12 = MEMORY[0x1E69E6370];
  *(v6 + 128) = 1;
  v13 = *MEMORY[0x1E697AEB0];
  *(v6 + 152) = v12;
  *(v6 + 160) = v13;
  v14 = *MEMORY[0x1E697AEB8];
  *(v6 + 216) = v8;
  *(v6 + 184) = v8;
  *(v6 + 192) = v14;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v15 = v7;
  v16 = v10;
  v17 = v11;
  v18 = v13;
  v19 = v14;
  result = sub_1B85661D8();
  v20 = result;
  if (v5)
  {
    v21 = *MEMORY[0x1E697AC38];
    v22 = v46;
    if (*MEMORY[0x1E697AC38])
    {
      goto LABEL_6;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v21 = *MEMORY[0x1E697AC40];
  v22 = v46;
LABEL_6:
  v23 = sub_1B85659A8();
  [v20 __swift_setObject_forKeyedSubscript_];

  v24 = [a1 groupID];
  v25 = sub_1B8565DA8();
  v27 = v26;

  if (v25 == sub_1B8565DA8() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_1B8566758();

    if ((v29 & 1) == 0)
    {
      v30 = *MEMORY[0x1E697AE90];
      if (!*MEMORY[0x1E697AE90])
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v48[3] = v9;
      v48[0] = v30;
      v31 = v30;
      v32 = [a1 groupID];
      if (!v32)
      {
        sub_1B8565DA8();
        v32 = sub_1B8565D68();
      }

      __swift_project_boxed_opaque_existential_0(v48, v9);
      [v20 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v48);
    }
  }

  v33 = v20;
  result = SecItemDelete(v33);
  v34 = result;
  if (result == -25300)
  {
    v35 = v5;
  }

  else
  {
    v35 = 0;
  }

  if (v35 == 1)
  {
    if (*MEMORY[0x1E697AC38])
    {
      [(__CFDictionary *)v33 __swift_setObject:0 forKeyedSubscript:?];
      v36 = *MEMORY[0x1E697AC40];
      v37 = sub_1B85659A8();
      [(__CFDictionary *)v33 __swift_setObject:v37 forKeyedSubscript:v36];

      v34 = SecItemDelete(v33);
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_20:

  if (v34)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v38 = sub_1B8565B78();
    __swift_project_value_buffer(v38, qword_1ED985C68);
    v39 = a1;
    v40 = sub_1B8565B48();
    v41 = sub_1B8566218();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412546;
      *(v42 + 4) = v39;
      *v43 = v39;
      *(v42 + 12) = 1024;
      *(v42 + 14) = v34;
      v44 = v39;
      _os_log_impl(&dword_1B8447000, v40, v41, "Failed to delete passkey for %@: %d", v42, 0x12u);
      sub_1B8456588(v43, &qword_1EBA8A8A0, &qword_1B85747C0);
      MEMORY[0x1B8CC1710](v43, -1, -1);
      MEMORY[0x1B8CC1710](v42, -1, -1);
    }

    sub_1B8535C58();
    swift_allocError();
    *v45 = v34;
    *(v45 + 4) = 0;
    swift_willThrow();

    return sub_1B852608C(v49, v46);
  }

  else
  {

    return sub_1B852608C(v49, v22);
  }
}

NSObject *sub_1B8536BE4(__SecKey *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = SecKeyCopyPublicKey(a1);
  if (v2)
  {
    v3 = v2;
    error[0] = 0;
    v4 = SecKeyCopyExternalRepresentation(v2, error);
    if (v4)
    {
      v5 = v4;
      v1 = sub_1B85659D8();
    }

    else
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v10 = sub_1B8565B78();
      __swift_project_value_buffer(v10, qword_1ED985C68);
      v1 = sub_1B8565B48();
      v11 = sub_1B8566218();
      if (os_log_type_enabled(v1, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v30 = v13;
        *v12 = 136446210;
        swift_beginAccess();
        if (error[0])
        {
          v31 = 0;
          v32 = 0xE000000000000000;
          v29 = error[0];
          type metadata accessor for CFError(0);
          sub_1B8536618(&qword_1EBA8A910, 255, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
          v14 = v29;
          v15 = sub_1B8566738();
          v28 = v14;
          if (v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = swift_allocError();
            *v19 = v14;
          }

          v20 = sub_1B85658C8();

          v21 = [v20 safari_privacyPreservingDescription];
          v22 = sub_1B8565DA8();
          v24 = v23;

          MEMORY[0x1B8CBF120](v22, v24);

          v18 = v31;
          v17 = v32;
        }

        else
        {
          v17 = 0xED0000726F727265;
          v18 = 0x206E776F6E6B6E55;
        }

        v25 = sub_1B8525560(v18, v17, &v30);

        *(v12 + 4) = v25;
        _os_log_impl(&dword_1B8447000, v1, v11, "Could not read public key data: %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x1B8CC1710](v13, -1, -1);
        MEMORY[0x1B8CC1710](v12, -1, -1);
      }

      swift_beginAccess();
      if (error[0])
      {
      }

      sub_1B8535C58();
      swift_allocError();
      *v26 = 1;
      *(v26 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8565B78();
    __swift_project_value_buffer(v6, qword_1ED985C68);
    v7 = sub_1B8565B48();
    v8 = sub_1B8566218();
    if (os_log_type_enabled(v7, v8))
    {
      v1 = swift_slowAlloc();
      LOWORD(v1->isa) = 0;
      _os_log_impl(&dword_1B8447000, v7, v8, "Could not read passkey public key", v1, 2u);
      MEMORY[0x1B8CC1710](v1, -1, -1);
    }

    sub_1B8535C58();
    swift_allocError();
    *v9 = 1;
    *(v9 + 4) = 1;
    swift_willThrow();
  }

  return v1;
}

NSObject *sub_1B8537034(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v4 = *MEMORY[0x1E697B128];
  v5 = sub_1B85659A8();
  Signature = SecKeyCreateSignature(a3, v4, v5, error);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_1B85659D8();
  }

  else
  {
    if (error[0])
    {
      error[0];
      type metadata accessor for CFError(0);
      sub_1B8451F34(0, &qword_1EBA8A938, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        if (qword_1ED985688 != -1)
        {
          swift_once();
        }

        v9 = sub_1B8565B78();
        __swift_project_value_buffer(v9, qword_1ED985C68);
        v8 = v32;
        v10 = sub_1B8565B48();
        v11 = sub_1B8566218();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 136315138;
          v32 = v13;
          sub_1B8536660(&qword_1EBA8A940, &qword_1EBA8A938, 0x1E696ABC0, MEMORY[0x1E6969F58]);
          v14 = v8;
          v15 = sub_1B8566738();
          if (v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = swift_allocError();
            *v21 = v14;
          }

          v22 = sub_1B85658C8();

          v23 = [v22 safari_privacyPreservingDescription];
          v24 = sub_1B8565DA8();
          v26 = v25;

          MEMORY[0x1B8CBF120](v24, v26);

          v27 = sub_1B8525560(0, 0xE000000000000000, &v32);

          *(v12 + 4) = v27;
          _os_log_impl(&dword_1B8447000, v10, v11, "Unable to sign data with passkey: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v13);
          MEMORY[0x1B8CC1710](v13, -1, -1);
          MEMORY[0x1B8CC1710](v12, -1, -1);
        }

        if (error[0])
        {
        }

        v28 = [v8 code];
        if (v28 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v29 = v28;
          if (v28 <= 0x7FFFFFFF)
          {
            sub_1B8535C58();
            swift_allocError();
            *v30 = v29;
            *(v30 + 4) = 0;
            swift_willThrow();

            return v8;
          }
        }

        __break(1u);
      }
    }

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v17 = sub_1B8565B78();
    __swift_project_value_buffer(v17, qword_1ED985C68);
    v8 = sub_1B8565B48();
    v18 = sub_1B8566218();
    if (os_log_type_enabled(v8, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B8447000, v8, v18, "Unable to sign data with passkey: Unknown error", v19, 2u);
      MEMORY[0x1B8CC1710](v19, -1, -1);
    }

    sub_1B8535C58();
    swift_allocError();
    *v20 = 1;
    *(v20 + 4) = 1;
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_1B85374C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 96) = v15;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  type metadata accessor for WBSKeychainPasskey(0);
  *(v9 + 88) = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v10, type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
  v12 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B85375BC, v12, v11);
}

uint64_t sub_1B85375BC()
{
  v33 = v0;
  if (*(v0 + 72))
  {
    v30 = *(v0 + 64);
    v1 = *(v0 + 72);
  }

  else
  {
    v30 = sub_1B8565DA8();
    v1 = v2;
  }

  v29 = *(v0 + 96);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v27 = *(v0 + 40);
  v28 = *(v0 + 88);
  v26 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = sub_1B8565DA8();
  v9 = v8;

  v31 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  v32[0] = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(v6, v5, v32);
  v10 = sub_1B8565D68();
  v11 = objc_opt_self();
  v12 = [v11 cborWithUTF8String_];

  v13 = sub_1B8525C44(v12);
  v32[0] = 1;
  sub_1B852550C(v4, v3);
  WBSKeychainPasskey.Metadata.subscript.setter(v4, v3, v32);
  v14 = sub_1B8565D68();
  v15 = [v11 cborWithUTF8String_];

  v16 = sub_1B8525C44(v15);
  v17 = sub_1B8565D68();
  v18 = [v11 cborWithUTF8String_];

  v19 = sub_1B8525C44(v18);
  sub_1B8532F84(v26, v27, &v31, v30, v1, v29, 0, 0, v28, v7, v9);

  v20 = *(v0 + 88);
  v22 = *(v20 + 40);
  v21 = *(v20 + 48);
  v23 = v20;
  sub_1B852550C(v22, v21);
  sub_1B85260A0(v23, type metadata accessor for WBSKeychainPasskey);

  v24 = *(v0 + 8);

  return v24(v22, v21);
}

uint64_t sub_1B85378F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 97) = v16;
  *(v9 + 96) = v15;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  type metadata accessor for WBSKeychainPasskey(0);
  *(v9 + 88) = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v10, type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
  v12 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B85379F8, v12, v11);
}

uint64_t sub_1B85379F8()
{
  v34 = v0;
  if (*(v0 + 72))
  {
    v31 = *(v0 + 64);
    v1 = *(v0 + 72);
  }

  else
  {
    v31 = sub_1B8565DA8();
    v1 = v2;
  }

  v29 = *(v0 + 96);
  v30 = *(v0 + 97);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v27 = *(v0 + 40);
  v28 = *(v0 + 88);
  v26 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = sub_1B8565DA8();
  v9 = v8;

  v32 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  v33[0] = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(v6, v5, v33);
  v10 = sub_1B8565D68();
  v11 = objc_opt_self();
  v12 = [v11 cborWithUTF8String_];

  v13 = sub_1B8525C44(v12);
  v33[0] = 1;
  sub_1B852550C(v4, v3);
  WBSKeychainPasskey.Metadata.subscript.setter(v4, v3, v33);
  v14 = sub_1B8565D68();
  v15 = [v11 cborWithUTF8String_];

  v16 = sub_1B8525C44(v15);
  v17 = sub_1B8565D68();
  v18 = [v11 cborWithUTF8String_];

  v19 = sub_1B8525C44(v18);
  sub_1B8532F84(v26, v27, &v32, v31, v1, v29, 0, v30, v28, v7, v9);

  v20 = *(v0 + 88);
  v22 = *(v20 + 40);
  v21 = *(v20 + 48);
  v23 = v20;
  sub_1B852550C(v22, v21);
  sub_1B85260A0(v23, type metadata accessor for WBSKeychainPasskey);

  v24 = *(v0 + 8);

  return v24(v22, v21);
}

uint64_t sub_1B8537D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  type metadata accessor for WBSKeychainPasskey(0);
  v7[9] = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v8, type metadata accessor for WBSPasskeyStore, &protocol conformance descriptor for WBSPasskeyStore);
  v10 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8537E1C, v10, v9);
}

uint64_t sub_1B8537E1C()
{
  v32 = v0;
  v29 = v0[9];
  v2 = v0[6];
  v1 = v0[7];
  v27 = v0[4];
  v28 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v26 = sub_1B8565DA8();
  v6 = v5;
  v7 = sub_1B8565DA8();
  v9 = v8;
  v30 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  v31[0] = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(v4, v3, v31);
  v10 = sub_1B8565D68();
  v11 = objc_opt_self();
  v12 = [v11 cborWithUTF8String_];

  v13 = sub_1B8525C44(v12);
  v31[0] = 1;
  sub_1B852550C(v2, v1);
  WBSKeychainPasskey.Metadata.subscript.setter(v2, v1, v31);
  v14 = sub_1B8565D68();
  v15 = [v11 cborWithUTF8String_];

  v16 = sub_1B8525C44(v15);
  v17 = sub_1B8565D68();
  v18 = [v11 cborWithUTF8String_];

  v19 = sub_1B8525C44(v18);
  sub_1B8532F84(v27, v28, &v30, v26, v6, 0, 1, 0, v29, v7, v9);

  v20 = v0[9];
  v22 = *(v20 + 40);
  v21 = *(v20 + 48);
  v23 = v20;
  sub_1B852550C(v22, v21);
  sub_1B85260A0(v23, type metadata accessor for WBSKeychainPasskey);

  v24 = v0[1];

  return v24(v22, v21);
}

uint64_t sub_1B8538128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B85381CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B851F31C;

  return sub_1B853426C(v2, v3, v4, v6, v5);
}

uint64_t sub_1B8538294(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B851F914;

  return sub_1B8534E94(a1, v4);
}

uint64_t sub_1B853834C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B851F31C;

  return sub_1B8534E94(a1, v4);
}

uint64_t sub_1B8538404()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B851F914;

  return sub_1B8532C40(v2, v3, v4, v5, v7, v6);
}

void sub_1B85384D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B851F914;

  JUMPOUT(0x1B8532810);
}

uint64_t objectdestroy_53Tm()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_1B853863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
  v15 = *(v9 + 48);
  v16 = *(v9 + 56);
  v18 = *(v9 + 64);
  v17 = *(v9 + 72);
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_1B851F914;

  sub_1B8532164(v11, v12, v13, v14, v15, v16, v18, v17, a9);
}

uint64_t sub_1B8538758(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B8566198();
  if (!v19)
  {
    return sub_1B8566048();
  }

  v41 = v19;
  v45 = sub_1B8566528();
  v32 = sub_1B8566538();
  sub_1B85664E8();
  result = sub_1B8566188();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1B85661C8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1B8566518();
      result = sub_1B85661A8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.appendIfExists(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_1B8566298();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v3 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  (*(v9 + 32))(v14, v8, v3);
  (*(v9 + 16))(v12, v14, v3);
  sub_1B8566098();
  return (*(v9 + 8))(v14, v3);
}

uint64_t Array.mapConcurrently<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8538DB8, 0, 0);
}

uint64_t sub_1B8538DB8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1B85660C8();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1B8538EEC;

  return MEMORY[0x1EEE6DD58](v0 + 16, TupleTypeMetadata2, v5, 0, 0, &unk_1B8574B80, v6, TupleTypeMetadata2);
}

uint64_t sub_1B8538EEC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B8539024;
  }

  else
  {

    v2 = sub_1B8539008;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8539024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8539088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v7[18] = *(a7 - 8);
  v7[19] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[20] = TupleTypeMetadata2;
  v10 = sub_1B8566298();
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();
  v11 = *(TupleTypeMetadata2 - 8);
  v7[24] = v11;
  v7[25] = *(v11 + 64);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v12 = *(a6 - 8);
  v7[30] = v12;
  v7[31] = *(v12 + 64);
  v7[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v7[33] = swift_task_alloc();
  v7[34] = swift_getTupleTypeMetadata2();
  v13 = sub_1B8566298();
  v7[35] = v13;
  v7[36] = *(v13 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B853937C, 0, 0);
}

uint64_t sub_1B853937C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  *(v0 + 48) = *(v0 + 104);
  v4 = sub_1B85660C8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CBF1F0](v4, WitnessTable);
  *(v0 + 56) = *(v0 + 40);
  sub_1B85665E8();
  sub_1B85665B8();
  v24 = (v1 + 32);
  sub_1B85665D8();
  while (1)
  {
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    sub_1B85665C8();
    (*v24)(v6, v7, v8);
    if ((*(*(v2 - 8) + 48))(v6, 1, v9) == 1)
    {
      break;
    }

    v10 = *(v0 + 304);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 120);
    v26 = *(v0 + 112);
    v25 = *v10;
    v14 = *(v2 + 48);
    v15 = sub_1B8566108();
    v27 = *(v0 + 128);
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = *(v3 + 32);
    v16(v11, &v10[v14], v27);
    v17 = (*(v3 + 80) + 72) & ~*(v3 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v27;
    *(v18 + 48) = v25;
    *(v18 + 56) = v26;
    *(v18 + 64) = v13;
    v16((v18 + v17), v11, v27);

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8A6F0, &qword_1B8574540);
    v19 = sub_1B8566128();
    sub_1B853A14C(v12, &unk_1B8574B90, v18, v19);
    sub_1B853B060(v12);
  }

  *(v0 + 64) = sub_1B8566048();
  v20 = swift_task_alloc();
  *(v0 + 312) = v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8A6F0, &qword_1B8574540);
  v21 = sub_1B8566128();
  *v20 = v0;
  v20[1] = sub_1B8539714;
  v22 = *(v0 + 184);

  return MEMORY[0x1EEE6DAC8](v22, 0, 0, v21);
}

uint64_t sub_1B8539714()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_1B8539D48;
  }

  else
  {
    v2 = sub_1B8539830;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8539830()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[16];
    v4 = v0[17];
    (*(v0[22] + 8))(v1, v0[21]);
    v6 = v0[8];
    v0[9] = v6;
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    v2 = sub_1B85660C8();

    WitnessTable = swift_getWitnessTable();
    v10 = sub_1B8538758(sub_1B853AF24, v7, v2, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

    v39 = v10;
    if (sub_1B8566088())
    {
      v11 = 0;
      v37 = v0[26];
      v38 = v0[24];
      v12 = v0[18];
      v36 = *(v0[20] + 48);
      v35 = v0[25];
      do
      {
        v1 = v0[20];
        v3 = sub_1B8566068();
        sub_1B8566018();
        if (v3)
        {
          (*(v0[24] + 16))(v0[26], v6 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v11, v0[20]);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v18 = sub_1B8566458();
          if (v35 != 8)
          {
            __break(1u);
            return MEMORY[0x1EEE6DAC8](v18, v19, v20, v21);
          }

          v22 = v0[26];
          v23 = v0[24];
          v24 = v0[20];
          v0[10] = v18;
          v1 = v18;
          (*(v23 + 16))(v22, v0 + 10, v24);
          swift_unknownObjectRelease();
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        v14 = v0[19];
        v15 = v0[17];
        v2 = *v0[26];
        (*(v0[18] + 32))(v14, v37 + v36, v15);
        sub_1B85660C8();
        sub_1B8566038();
        v10 = v39;
        sub_1B853AAF0(v2, v39, v15);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v17 = v39 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v17 = v39;
        }

        (*(v12 + 40))(v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v2, v14, v15);
        ++v11;
      }

      while (v13 != sub_1B8566088());
    }

    v32 = v0[11];

    *v32 = v10;

    v33 = v0[1];

    return v33();
  }

  else
  {
LABEL_14:
    v26 = v0[28];
    v25 = v0[29];
    v27 = v0[27];
    v28 = v0[17];
    v29 = v0[18];
    (*(v2 + 32))(v25, v1, v3);
    (*(v2 + 16))(v26, v25, v3);
    v30 = *(v3 + 48);
    *v27 = *v26;
    (*(v29 + 32))(&v27[v30], &v26[v30], v28);
    sub_1B85660C8();
    sub_1B8566098();
    (*(v2 + 8))(v25, v3);
    v31 = swift_task_alloc();
    v0[39] = v31;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8A6F0, &qword_1B8574540);
    v21 = sub_1B8566128();
    *v31 = v0;
    v31[1] = sub_1B8539714;
    v18 = v0[23];
    v19 = 0;
    v20 = 0;

    return MEMORY[0x1EEE6DAC8](v18, v19, v20, v21);
  }
}