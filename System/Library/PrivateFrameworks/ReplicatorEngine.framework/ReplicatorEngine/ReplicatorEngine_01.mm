unint64_t sub_1DEE28FF4()
{
  result = qword_1ECDE54B8;
  if (!qword_1ECDE54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE54B8);
  }

  return result;
}

uint64_t sub_1DEE29070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = *(v11 + 16);
  (v14)(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v12);
  sub_1DEE29204();
  if (swift_dynamicCast())
  {
    v16 = v25[0];
  }

  else
  {
    v23 = a3;
    v24 = v5;
    v17 = *(v5 + 16);
    v18 = *(v5 + 24);
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = v17;
    *(inited + 24) = v18;
    v25[3] = a4;
    v25[4] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    v14(boxed_opaque_existential_1, a1, a4);
    v16 = sub_1DEE29274(v25);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    if (v6)
    {
      return result;
    }

    a3 = v23;
  }

  sub_1DEE28720(v16, v26, a3);
  return swift_unknownObjectRelease();
}

unint64_t sub_1DEE29204()
{
  result = qword_1ED7863D8;
  if (!qword_1ED7863D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7863D8);
  }

  return result;
}

uint64_t sub_1DEE29274(void *a1)
{
  v4 = sub_1DEF8DF88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE29594(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58B0, &qword_1DEF9A6D0);
  sub_1DEE29204();
  if (swift_dynamicCast())
  {
    return v23[6];
  }

  v22 = v5;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = type metadata accessor for PropertyListTypeEncoder.RootEncoder();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23[3] = v11;
  v23[4] = sub_1DEE2961C(&qword_1ED7863D0, &unk_1DEF9A808);
  v23[0] = v12;

  sub_1DEF8D8A8();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    v13 = *(v12 + 16);
    if (v13)
    {
      swift_unknownObjectRetain();

      return v13;
    }

    else
    {
      sub_1DEF8DF48();
      v14 = sub_1DEF8DF98();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58B8, &qword_1DEF9A6D8) + 48);
      v18 = a1[3];
      v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
      v16[3] = v18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
      v21 = v22;
      (*(v22 + 16))(v16 + v17, v7, v4);
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B30], v14);
      swift_willThrow();

      return (*(v21 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1DEE29594(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DEE2961C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PropertyListTypeEncoder.RootEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEE29660(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5540, &qword_1DEF98948);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE29774();
  sub_1DEF8E858();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DEE29774()
{
  result = qword_1ECDE5548;
  if (!qword_1ECDE5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5548);
  }

  return result;
}

uint64_t sub_1DEE297EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  *(v3 + 16) = v6;
  v6;
  swift_unknownObjectRelease();
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder(0, a2, a3, v7);
  swift_getWitnessTable();
  return sub_1DEF8E2C8();
}

uint64_t sub_1DEE298C0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE29904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v44 - v12 + 24;
  v44[3] = type metadata accessor for ReplicatorMessage(0);
  v44[4] = sub_1DEE2BAF8(&qword_1ECDE3DA8, type metadata accessor for ReplicatorMessage, &unk_1DEF98794);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  sub_1DEEACA70(a1, boxed_opaque_existential_1, type metadata accessor for ReplicatorMessage);
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = 0;
  v16 = sub_1DEE29274(v44);
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v17 = sub_1DEF8D508();
    __swift_project_value_buffer(v17, qword_1ECDF6028);

    v18 = v5;
    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DC98();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_1DEE12A5C(v6[66], v6[67], v44);
      *(v21 + 12) = 2082;
      v44[6] = v5;
      v23 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
      v24 = sub_1DEF8D988();
      v26 = sub_1DEE12A5C(v24, v25, v44);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_1DEE0F000, v19, v20, "(%{public}s) Failed to encode message: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v22, -1, -1);
      MEMORY[0x1E12CCD70](v21, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v28 = sub_1DEE1187C(v16);
    v30 = v29;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_1DEE17214(a3, v13, &unk_1ECDE3E80, &unk_1DEF90970);
    v31 = v6[32];
    if (v31)
    {
      v43 = v6[31];
      v32 = v31;
    }

    else
    {
      v33 = v6[23];
      ObjectType = swift_getObjectType();
      v35 = (*(v33 + 16))(ObjectType, v33);
      if (v36)
      {
        v32 = v36;
        v43 = v35;
      }

      else
      {
        v32 = 0x80000001DEF9BCA0;
        v43 = 0xD000000000000016;
      }
    }

    sub_1DEF8D3E8();
    v37 = type metadata accessor for Message(0);
    v38 = v37[5];
    v39 = sub_1DEF8D3F8();
    (*(*(v39 - 8) + 56))(a4 + v38, 1, 1, v39);
    result = sub_1DEE29D60(v13, a4 + v38, &unk_1ECDE3E80, &unk_1DEF90970);
    v40 = (a4 + v37[6]);
    *v40 = 0x7065526574617453;
    v40[1] = 0xEF726F746163696CLL;
    v41 = (a4 + v37[7]);
    *v41 = v43;
    v41[1] = v32;
    *(a4 + v37[8]) = a2;
    v42 = (a4 + v37[9]);
    *v42 = v28;
    v42[1] = v30;
  }

  return result;
}

uint64_t sub_1DEE29D60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1DEE29DC8(uint64_t a1, uint64_t a2)
{
  v176 = a2;
  v204 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v167 = &v165 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v175 = &v165 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v199 = &v165 - v8;
  v198 = type metadata accessor for PairingRelationship(0);
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v170 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v195 = &v165 - v11;
  v12 = type metadata accessor for Message(0);
  v174 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v168 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v165 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v169 = &v165 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v178 = &v165 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v180 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v192 = &v165 - v23;
  v193 = sub_1DEF8D3F8();
  v194 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v177 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v188 = &v165 - v26;
  v27 = type metadata accessor for ReplicatorMessage.Sync(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v191 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v173 = (&v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  MEMORY[0x1EEE9AC00](v172);
  v182 = &v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  MEMORY[0x1EEE9AC00](v171);
  v181 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v33);
  v190 = &v165 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v196 = &v165 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D00, &unk_1DEF91610);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v165 - v38;
  v203 = type metadata accessor for ReplicatorMessage(0);
  v40 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v179 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v187 = &v165 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v200 = &v165 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v165 - v47;
  v49 = sub_1DEF8D788();
  v50 = *(v49 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = (&v165 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = v2;
  v54 = *(v2 + 232);
  *v53 = v54;
  v55 = *(v50 + 104);
  v184 = *MEMORY[0x1E69E8020];
  v185 = v55;
  v55(v53, v51);
  v183 = v54;
  LOBYTE(v54) = sub_1DEF8D7B8();
  v186 = *(v50 + 8);
  v186(v53, v49);
  if (v54)
  {
    v189 = v33;
    v201 = v48;
    v56 = *(v204 + *(v12 + 32));
    type metadata accessor for OPACKCoder();
    sub_1DEE115C8(&v213);
    v165 = v12;
    sub_1DEE12F7C(&v213, v208);
    v57 = MEMORY[0x1E69E7CC0];
    v58 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
    v207[0] = v57;
    v207[1] = v58;
    v211 = v56;
    v212 = 0;
    v206[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
    v206[4] = sub_1DEE1DC98();
    v206[0] = swift_allocObject();
    sub_1DEE1DCEC(v207, v206[0] + 16);
    sub_1DEF6A778(v206, v39);
    v64 = v56;
    sub_1DEE1EBB4(v207);
    __swift_destroy_boxed_opaque_existential_1(&v213);
    (*(v40 + 56))(v39, 0, 1, v203);
    v65 = v201;
    sub_1DEEAB218(v39, v201, type metadata accessor for ReplicatorMessage);
    v66 = v200;
    sub_1DEEACA70(v65, v200, type metadata accessor for ReplicatorMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v68 = v204;
      if (EnumCaseMultiPayload == 1)
      {
        v69 = v191;
        sub_1DEEAB218(v66, v191, type metadata accessor for ReplicatorMessage.Sync);
        v70 = v202;
        v71 = v199;
        v72 = v198;
        if (*(v202 + 624) == 1)
        {
          sub_1DEE72AD8(v69, v176);
        }

        v73 = type metadata accessor for ReplicatorMessage.Sync;
        v74 = v69;
        goto LABEL_40;
      }

      v86 = v192;
      sub_1DEE17214(v204 + *(v165 + 20), v192, &unk_1ECDE3E80, &unk_1DEF90970);
      v87 = v194;
      v88 = v193;
      if ((*(v194 + 48))(v86, 1, v193) == 1)
      {
        sub_1DEE171B4(v86, &unk_1ECDE3E80, &unk_1DEF90970);
        v70 = v202;
LABEL_24:
        v71 = v199;
        v72 = v198;
        goto LABEL_41;
      }

      v89 = v188;
      (*(v87 + 32))(v188, v86, v88);
      v70 = v202;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v90 = sub_1DEF8D508();
      __swift_project_value_buffer(v90, qword_1ECDF6028);
      v91 = v178;
      sub_1DEEACA70(v68, v178, type metadata accessor for Message);
      v92 = v177;
      (*(v87 + 16))(v177, v89, v88);

      v93 = sub_1DEF8D4D8();
      v94 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v207[0] = v200;
        *v95 = 136381187;
        *(v95 + 4) = sub_1DEE12A5C(*(v70 + 528), *(v70 + 536), v207);
        *(v95 + 12) = 2080;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        LODWORD(v196) = v94;
        v96 = sub_1DEF8E2E8();
        v98 = v97;
        sub_1DEE273A0(v91, type metadata accessor for Message);
        v99 = sub_1DEE12A5C(v96, v98, v207);

        *(v95 + 14) = v99;
        *(v95 + 22) = 2082;
        v100 = sub_1DEF8E2E8();
        v102 = v101;
        v103 = *(v194 + 8);
        v103(v92, v88);
        v104 = sub_1DEE12A5C(v100, v102, v207);
        v68 = v204;

        *(v95 + 24) = v104;
        _os_log_impl(&dword_1DEE0F000, v93, v196, "(%{private}s) Received ack with ID %s for %{public}s)", v95, 0x20u);
        v105 = v200;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v105, -1, -1);
        MEMORY[0x1E12CCD70](v95, -1, -1);

        v103(v188, v88);
        v65 = v201;
        goto LABEL_24;
      }

      v113 = *(v87 + 8);
      v113(v92, v88);
      sub_1DEE273A0(v91, type metadata accessor for Message);
      v113(v89, v88);
      v71 = v199;
      v72 = v198;
      v65 = v201;
LABEL_34:
      v68 = v204;
      goto LABEL_41;
    }

    v75 = v66;
    v76 = v196;
    sub_1DEEAB218(v75, v196, type metadata accessor for ReplicatorMessage.Handshake);
    v77 = v76;
    v78 = v190;
    sub_1DEEACA70(v77, v190, type metadata accessor for ReplicatorMessage.Handshake);
    v79 = swift_getEnumCaseMultiPayload();
    if (v79)
    {
      v70 = v202;
      if (v79 != 1)
      {
        v112 = v173;
        sub_1DEEAB218(v78, v173, type metadata accessor for ReplicatorMessage.Handshake.Complete);
        if (*(v70 + 624) == 1)
        {
          sub_1DEE711C0(v112);
        }

        sub_1DEE273A0(v112, type metadata accessor for ReplicatorMessage.Handshake.Complete);
        sub_1DEE273A0(v196, type metadata accessor for ReplicatorMessage.Handshake);
        v71 = v199;
        v72 = v198;
        goto LABEL_34;
      }

      sub_1DEEAB218(v78, v182, type metadata accessor for ReplicatorMessage.Handshake.Response);
      v200 = *(v172 + 24);
      v80 = v183;
      *v53 = v183;
      v185(v53, v184, v49);
      v81 = v80;
      v82 = sub_1DEF8D7B8();
      v186(v53, v49);
      if (v82)
      {
        v71 = v199;
        v72 = v198;
        v83 = v182;
        if (*(v70 + 624) == 1 && (*(v182 + v200 + 32) > 7uLL || (swift_beginAccess(), v84 = *(v70 + 672), , v85 = sub_1DEF01E3C(0xD000000000000011, 0x80000001DEF9C1B0, v84), , (v85 & 1) == 0)))
        {
          sub_1DEE70E4C(v83);
        }

        else
        {
          sub_1DEE70B44(v83, v64);
        }

        v68 = v204;
        v114 = type metadata accessor for ReplicatorMessage.Handshake.Response;
LABEL_39:
        sub_1DEE273A0(v83, v114);
        v73 = type metadata accessor for ReplicatorMessage.Handshake;
        v74 = v196;
LABEL_40:
        sub_1DEE273A0(v74, v73);
LABEL_41:
        swift_beginAccess();
        sub_1DEE29594(v70 + 192, v207);
        v115 = v209;
        v116 = v210;
        __swift_project_boxed_opaque_existential_1(v207, v209);
        MetadataStoring.pairingRelationship(remoteDeviceID:)(*(v68 + *(v165 + 28)), *(v68 + *(v165 + 28) + 8), v115, *(v116 + 8), v71);
        if ((*(v197 + 48))(v71, 1, v72) == 1)
        {
          sub_1DEE273A0(v65, type metadata accessor for ReplicatorMessage);
          sub_1DEE171B4(v71, &qword_1ECDE3C18, &unk_1DEF94D20);
          __swift_destroy_boxed_opaque_existential_1(v207);
          return;
        }

        v49 = v195;
        sub_1DEEAB218(v71, v195, type metadata accessor for PairingRelationship);
        __swift_destroy_boxed_opaque_existential_1(v207);
        v117 = v49 + *(v72 + 20);
        if (*(v117 + 32) < 7uLL || (v118 = v187, sub_1DEEACA70(v65, v187, type metadata accessor for ReplicatorMessage), swift_getEnumCaseMultiPayload() >= 2))
        {
          v135 = v49;
        }

        else
        {
          sub_1DEE273A0(v118, type metadata accessor for ReplicatorMessage);
          v119 = v179;
          swift_storeEnumTagMultiPayload();
          v120 = v194;
          v121 = v180;
          v122 = v193;
          (*(v194 + 16))(v180, v68, v193);
          (*(v120 + 56))(v121, 0, 1, v122);
          v123 = sub_1DEE5D178(v49);
          if (v124)
          {
            if (qword_1ECDE2E58 == -1)
            {
LABEL_47:
              v125 = sub_1DEF8D508();
              __swift_project_value_buffer(v125, qword_1ECDF6028);
              v126 = v170;
              sub_1DEEACA70(v49, v170, type metadata accessor for PairingRelationship);

              v127 = sub_1DEF8D4D8();
              v128 = sub_1DEF8DC98();

              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                v130 = swift_slowAlloc();
                v207[0] = v130;
                *v129 = 136446466;
                *(v129 + 4) = sub_1DEE12A5C(*(v70 + 528), *(v70 + 536), v207);
                *(v129 + 12) = 2082;
                sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                v131 = sub_1DEF8E2E8();
                v133 = v132;
                sub_1DEE273A0(v126, type metadata accessor for PairingRelationship);
                v134 = sub_1DEE12A5C(v131, v133, v207);

                *(v129 + 14) = v134;
                _os_log_impl(&dword_1DEE0F000, v127, v128, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v129, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E12CCD70](v130, -1, -1);
                MEMORY[0x1E12CCD70](v129, -1, -1);
              }

              else
              {

                sub_1DEE273A0(v126, type metadata accessor for PairingRelationship);
              }

              v137 = v195;
              v138 = v165;
              v139 = v175;
              v140 = v174;
              v141 = v179;
              sub_1DEE171B4(v180, &unk_1ECDE3E80, &unk_1DEF90970);
              sub_1DEE273A0(v141, type metadata accessor for ReplicatorMessage);
              sub_1DEE273A0(v137, type metadata accessor for PairingRelationship);
              sub_1DEE273A0(v65, type metadata accessor for ReplicatorMessage);
              (*(v140 + 56))(v139, 1, 1, v138);
              sub_1DEE171B4(v139, &unk_1ECDE4E20, &unk_1DEF95B10);
              return;
            }

LABEL_63:
            swift_once();
            goto LABEL_47;
          }

          v136 = v175;
          sub_1DEE29904(v119, v123, v121, v175);
          sub_1DEE171B4(v121, &unk_1ECDE3E80, &unk_1DEF90970);
          sub_1DEE273A0(v119, type metadata accessor for ReplicatorMessage);
          (*(v174 + 56))(v136, 0, 1, v165);
          sub_1DEEAB218(v136, v169, type metadata accessor for Message);
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v142 = sub_1DEF8D508();
          __swift_project_value_buffer(v142, qword_1ECDF6028);
          v143 = v166;
          sub_1DEEACA70(v68, v166, type metadata accessor for Message);
          v144 = v168;
          sub_1DEEACA70(v68, v168, type metadata accessor for Message);

          v145 = sub_1DEF8D4D8();
          v146 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v204 = swift_slowAlloc();
            v207[0] = v204;
            *v147 = 136381187;
            *(v147 + 4) = sub_1DEE12A5C(*(v70 + 528), *(v70 + 536), v207);
            *(v147 + 12) = 2080;
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v148 = sub_1DEF8E2E8();
            v150 = v149;
            sub_1DEE273A0(v143, type metadata accessor for Message);
            v151 = sub_1DEE12A5C(v148, v150, v207);

            *(v147 + 14) = v151;
            *(v147 + 22) = 2082;
            v152 = v168;
            v153 = (v168 + *(v165 + 28));
            v154 = *v153;
            v155 = v153[1];

            sub_1DEE273A0(v152, type metadata accessor for Message);
            v156 = sub_1DEE12A5C(v154, v155, v207);

            *(v147 + 24) = v156;
            _os_log_impl(&dword_1DEE0F000, v145, v146, "(%{private}s) Sending ack for ID %s to %{public}s)", v147, 0x20u);
            v157 = v204;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v157, -1, -1);
            MEMORY[0x1E12CCD70](v147, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v144, type metadata accessor for Message);
            sub_1DEE273A0(v143, type metadata accessor for Message);
          }

          v158 = *(v70 + 184);
          ObjectType = swift_getObjectType();
          v160 = sub_1DEF8D1E8();
          v161 = v167;
          (*(*(v160 - 8) + 56))(v167, 1, 1, v160);
          LOBYTE(v207[0]) = 0;
          v205 = 0;
          v162 = *(v158 + 40);
          v164 = v158;
          v163 = v169;
          v162(v169, v161, v207, v117, &v205, 0, 0, ObjectType, v164);
          sub_1DEE171B4(v161, &qword_1ECDE4890, &qword_1DEF90990);
          sub_1DEE273A0(v163, type metadata accessor for Message);
          v135 = v195;
        }

        sub_1DEE273A0(v135, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v65, type metadata accessor for ReplicatorMessage);
        return;
      }

      __break(1u);
    }

    else
    {
      sub_1DEEAB218(v78, v181, type metadata accessor for ReplicatorMessage.Handshake.Request);
      v106 = *(v171 + 24);
      v107 = v183;
      *v53 = v183;
      v185(v53, v184, v49);
      v108 = v107;
      v109 = sub_1DEF8D7B8();
      v186(v53, v49);
      v70 = v202;
      if (v109)
      {
        v71 = v199;
        v72 = v198;
        v83 = v181;
        if (*(v202 + 624) == 1 && (*(v181 + v106 + 32) > 7uLL || (swift_beginAccess(), v110 = *(v70 + 672), , v111 = sub_1DEF01E3C(0xD000000000000011, 0x80000001DEF9C1B0, v110), , (v111 & 1) == 0)))
        {
          sub_1DEE26C70(v83);
        }

        else
        {
          sub_1DEE7083C(v83, v64);
        }

        v68 = v204;
        v114 = type metadata accessor for ReplicatorMessage.Handshake.Request;
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

  __break(1u);
  swift_once();
  v59 = sub_1DEF8D508();
  __swift_project_value_buffer(v59, qword_1ECDF6028);

  v60 = sub_1DEF8D4D8();
  v61 = sub_1DEF8DC98();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v207[0] = v63;
    *v62 = 136380675;
    *(v62 + 4) = sub_1DEE12A5C(v53[66], v53[67], v207);
    _os_log_impl(&dword_1DEE0F000, v60, v61, "(%{private}s) Sync message could not be decoded", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1E12CCD70](v63, -1, -1);
    MEMORY[0x1E12CCD70](v62, -1, -1);
  }
}

uint64_t sub_1DEE2BA48()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DEE2BAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE2BAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE2BB40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE2BB88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE2BBD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE2BC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE2BC64(uint64_t a1, uint64_t (*a2)(uint64_t a1), unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a6;
  v49 = a7;
  v44 = a4;
  v42 = a2;
  v40 = a1;
  v46 = *v7;
  v47 = v46;
  v11 = type metadata accessor for DeviceDescriptor(0);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - v15;
  v37 = &v34 - v15;
  v17 = type metadata accessor for Message(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a3;
  v41 = *a5;
  v45 = v8[2];
  v35 = type metadata accessor for Message;
  sub_1DEE280F8(v40, v20, type metadata accessor for Message);
  sub_1DEE17214(v42, v16, &qword_1ECDE4890, &qword_1DEF90990);
  v42 = type metadata accessor for DeviceDescriptor;
  sub_1DEE280F8(v44, &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceDescriptor);
  v21 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v22 = (v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v38 + 80) + v22 + 8) & ~*(v38 + 80);
  v24 = v23 + v14;
  v25 = (*(v43 + 80) + v24 + 1) & ~*(v43 + 80);
  v26 = v25 + v12;
  v27 = (v25 + v12) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = *(v46 + 80);
  *(v28 + 24) = *(v47 + 88);
  *(v28 + 40) = *(v29 + 104);
  sub_1DEE13A28(v20, v28 + v21, v35);
  *(v28 + v22) = v8;
  sub_1DEE1BA88(v37, v28 + v23, &qword_1ECDE4890, &qword_1DEF90990);
  *(v28 + v24) = v39;
  sub_1DEE13A28(v36, v28 + v25, v42);
  *(v28 + v26) = v41;
  v30 = v28 + v27;
  v32 = v48;
  v31 = v49;
  *(v30 + 8) = v48;
  *(v30 + 16) = v31;

  sub_1DEE2CB00(v32, v31);
  sub_1DEE2C448(0x20676E69646E6553, 0xEF6567617373656DLL, v45, sub_1DEF5CE08, v28, 0.0);
}

uint64_t sub_1DEE2C038()
{
  v1 = type metadata accessor for Message(0);
  v26 = *(*(v1 - 8) + 80);
  v2 = (v26 + 48) & ~v26;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v25 = *(v4 + 80);
  v5 = (v3 + v25 + 8) & ~v25;
  v6 = *(v4 + 64);
  v24 = type metadata accessor for DeviceDescriptor(0);
  v7 = *(*(v24 - 8) + 80);
  v8 = v6 + v7 + v5 + 1;
  v22 = *(*(v24 - 8) + 64);
  v9 = v0 + v2;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v21 = *(v11 + 8);
  v21(v9, v10);
  v12 = *(v1 + 20);
  v23 = *(v11 + 48);
  if (!v23(v9 + v12, 1, v10))
  {
    v21(v9 + v12, v10);
  }

  v13 = v8 & ~v7;

  sub_1DEE1BFA0(*(v9 + *(v1 + 36)), *(v9 + *(v1 + 36) + 8));

  v14 = sub_1DEF8D1E8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v5, 1, v14))
  {
    (*(v15 + 8))(v0 + v5, v14);
  }

  v16 = v0 + v13;

  v17 = *(v0 + v13 + 120);
  if (v17 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v16 + 112), v17);
  }

  v18 = (v13 + v22) & 0xFFFFFFFFFFFFFFF8;

  v19 = *(v24 + 60);
  if (!v23(v16 + v19, 1, v10))
  {
    v21(v16 + v19, v10);
  }

  if (*(v0 + v18 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v18 + 24, v26 | v25 | v7 | 7);
}

uint64_t sub_1DEE2C3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DEE2C448(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v39 = a4;
  v40 = a5;
  v41 = a3;
  v45 = a1;
  v8 = sub_1DEF8D698();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D6D8();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D688();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1DEF8D758();
  v37 = *(v18 - 8);
  v38 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  type metadata accessor for KeepAliveTransaction();
  v24 = swift_allocObject();

  result = sub_1DEE2CB34(v45, a2);
  if (a6 <= 0.0)
  {
    v33 = swift_allocObject();
    v34 = v40;
    v33[2] = v39;
    v33[3] = v34;
    v33[4] = v24;
    v51 = sub_1DEEDB450;
    v52 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1DEE3F0C0;
    v50 = &block_descriptor_20;
    v35 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v13, v10, v35);
    _Block_release(v35);

    (*(v44 + 8))(v10, v8);
    (*(v42 + 8))(v13, v43);
  }

  v45 = v10;
  v26 = a6 * 1000.0;
  if (COERCE_UNSIGNED_INT64(a6 * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v26 < 9.22337204e18)
  {
    v27 = v26;
    sub_1DEF8D738();
    *v17 = v27;
    (*(v15 + 104))(v17, *MEMORY[0x1E69E7F38], v14);
    v36 = v23;
    sub_1DEF8D748();
    (*(v15 + 8))(v17, v14);
    v37 = *(v37 + 8);
    (v37)(v20, v38);
    v28 = swift_allocObject();
    v29 = v40;
    v28[2] = v39;
    v28[3] = v29;
    v28[4] = v24;
    v51 = sub_1DEEDB4A8;
    v52 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1DEE3F0C0;
    v50 = &block_descriptor_26_0;
    v30 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v31 = v45;
    sub_1DEF8DE08();
    v32 = v36;
    MEMORY[0x1E12CB490](v36, v13, v31, v30);
    _Block_release(v30);

    (*(v44 + 8))(v31, v8);
    (*(v42 + 8))(v13, v43);
    (v37)(v32, v38);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DEE2CB00(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_1DEE2CB34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v28 = sub_1DEF8D698();
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DEF8D6D8();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[4] = a1;
  v2[5] = a2;
  sub_1DEE1EA18(0, &qword_1ECDE2BB0, 0x1E69E9630);
  v13 = qword_1ECDE30E0;

  if (v13 != -1)
  {
    swift_once();
  }

  v29 = qword_1ECDE30F0;
  v2[3] = sub_1DEF8DD68();
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = v6;
  v34 = sub_1DEEDB444;
  v35 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v26 = v6;
  v32 = sub_1DEE3F0C0;
  v33 = &block_descriptor_4;
  v16 = _Block_copy(&aBlock);
  v25 = a1;
  v17 = v16;

  sub_1DEE160E8(ObjectType);
  sub_1DEE160EC();
  sub_1DEF8DD78();
  _Block_release(v17);
  (*(v7 + 8))(v9, v28);
  (*(v10 + 8))(v12, v27);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DEF8DD98();
  swift_unknownObjectRelease();
  v18 = swift_allocObject();
  v20 = v25;
  v19 = v26;
  v18[2] = v3;
  v18[3] = v20;
  v18[4] = a2;
  v18[5] = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1DEE2CF8C;
  *(v21 + 24) = v18;
  v34 = sub_1DEE13B20;
  v35 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1DEE134F4;
  v33 = &block_descriptor_14;
  v22 = _Block_copy(&aBlock);

  dispatch_sync(v29, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE2CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_1ECDE45F8)
  {
    v4 = 0;
  }

  else
  {
    sub_1DEF8D998();
    v4 = os_transaction_create();
  }

  *(a1 + 16) = v4;

  return swift_unknownObjectRelease();
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_71Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_2(uint64_t a1)
{

  if (v1[3])
  {

    sub_1DEE1BFA0(v1[4], v1[5]);
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t type metadata accessor for PairingRelationship(uint64_t a1)
{
  result = qword_1ECDE30F8;
  if (!qword_1ECDE30F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEE2D1D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1DEF8D1E8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1DEE29DC8(a2, v5);
  return sub_1DEE171B4(v5, &qword_1ECDE4890, &qword_1DEF90990);
}

void sub_1DEE2D2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1DEF8D1E8();
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v22 = v7;
    v23 = (v8 + 48);
    v19 = (v8 + 8);
    v20 = (v8 + 32);
    v11 = (a1 + 40);
    v12 = v24;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 24);
      swift_unknownObjectRetain();
      v25 = ObjectType;
      if (v15(v26, &off_1F5A21098, v12, ObjectType, v13))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
        sub_1DEE17214(v12 + *(v16 + 28), v6, &qword_1ECDE4890, &qword_1DEF90990);
        v17 = v22;
        if ((*v23)(v6, 1, v22) == 1)
        {
          sub_1DEE171B4(v6, &qword_1ECDE4890, &qword_1DEF90990);
          (*(v13 + 8))(v26, &off_1F5A21098, v12, v25, v13);
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = v21;
          (*v20)(v21, v6, v17);
          (*(v13 + 16))(v26, &off_1F5A21098, v12, v18, v25, v13);
          swift_unknownObjectRelease();
          (*v19)(v18, v17);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v11 += 2;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1DEE2D58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(a1, a2, a3, ObjectType, v8);
    swift_unknownObjectRelease();
    return v10 & 1;
  }

  return result;
}

uint64_t Message.messageType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Message(0) + 24));

  return v1;
}

uint64_t Message.senderDeviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Message(0) + 28));

  return v1;
}

uint64_t sub_1DEE2D738(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for DeviceDescriptor(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1DEF8D378();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 + 3);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DEE2D8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  MetadataStoring.pairingRelationship(remoteDeviceID:)(a2, a3, v8, *(v9 + 8), a4);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t MetadataStoring.pairingRelationship(remoteDeviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2;
  v63 = a1;
  v56 = a5;
  v7 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v55 = &v54 - v17;
  v18 = (*(*(a4 + 8) + 32))(a3, v16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v60 = v18;

  v25 = 0;
  v59 = v9;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_8:
      v27 = __clz(__rbit64(v22)) | (v26 << 6);
      v28 = v60;
      v29 = *(v60 + 48);
      v30 = sub_1DEF8D3F8();
      v31 = *(v30 - 8);
      v32 = v31;
      v33 = v29 + *(v31 + 72) * v27;
      v34 = *(v31 + 16);
      v35 = v57;
      v62 = v30;
      v34(v57, v33);
      v36 = *(v28 + 56);
      v37 = (type metadata accessor for PairingRelationship(0) - 8);
      v38 = v59;
      sub_1DEE28090(v36 + *(*v37 + 72) * v27, &v35[*(v59 + 48)], type metadata accessor for PairingRelationship);
      v39 = v35;
      v40 = v64;
      sub_1DEE1BA88(v39, v64, &unk_1ECDE4350, &qword_1DEF93400);
      v41 = v40;
      v42 = v65;
      v9 = v38;
      sub_1DEE17214(v41, v65, &unk_1ECDE4350, &qword_1DEF93400);
      v43 = v42 + *(v38 + 48);
      v44 = v58;
      sub_1DEE28090(v43 + v37[7], v58, type metadata accessor for DeviceDescriptor);
      sub_1DEE27460(v43, type metadata accessor for PairingRelationship);
      v46 = *v44;
      v45 = v44[1];

      sub_1DEE27460(v44, type metadata accessor for DeviceDescriptor);
      if (v46 == v63 && v45 == v61)
      {
        break;
      }

      v47 = sub_1DEF8E4E8();

      (*(v32 + 8))(v65, v62);
      if (v47)
      {
        goto LABEL_15;
      }

      v22 &= v22 - 1;
      result = sub_1DEE171B4(v64, &unk_1ECDE4350, &qword_1DEF93400);
      v25 = v26;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    (*(v32 + 8))(v65, v62);
LABEL_15:

    v49 = v55;
    sub_1DEE1BA88(v64, v55, &unk_1ECDE4350, &qword_1DEF93400);
    v48 = v54;
    (*(v54 + 56))(v49, 0, 1, v9);
LABEL_16:

    if ((*(v48 + 48))(v49, 1, v9) == 1)
    {
      sub_1DEE171B4(v49, &qword_1ECDE3C98, &unk_1DEF95610);
      v50 = type metadata accessor for PairingRelationship(0);
      return (*(*(v50 - 8) + 56))(v56, 1, 1, v50);
    }

    else
    {
      v51 = v56;
      sub_1DEE139C0(v49 + *(v9 + 48), v56, type metadata accessor for PairingRelationship);
      v52 = type metadata accessor for PairingRelationship(0);
      (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
      v53 = sub_1DEF8D3F8();
      return (*(*(v53 - 8) + 8))(v49, v53);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        v48 = v54;
        v49 = v55;
        (*(v54 + 56))(v55, 1, 1, v9);
        goto LABEL_16;
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE2DF78()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void *sub_1DEE2DFE4@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1DEE2E070@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 104);
}

uint64_t sub_1DEE2E0D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DeviceDescriptor(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1DEF8D378();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 4;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t PairingRelationship.remoteDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PairingRelationship(0) + 20);

  return sub_1DEE251CC(v3, a1);
}

uint64_t sub_1DEE2E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for Message(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3 == 0xD000000000000015 && 0x80000001DEF9CBB0 == v5;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {
    return 1;
  }

  if (v4 == 0xD000000000000014 && 0x80000001DEF9CBD0 == v5)
  {
    return 1;
  }

  return sub_1DEF8E4E8();
}

_DWORD *sub_1DEE2E394@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1DEE2E3AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEF8D948();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DEE2E3F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE2E42C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE2E464()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 120);
  if (v6 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v5 + 112), v6);
  }

  v7 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DEE2E608@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1DEF8DD18();
  *a2 = v4;
  return result;
}

uint64_t sub_1DEE2E698@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEE3F574();
  *a1 = result;
  return result;
}

uint64_t sub_1DEE2E6C4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 56) = *a1;
}

uint64_t sub_1DEE2E708()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 120);
  if (v6 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v5 + 112), v6);
  }

  v7 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1DEE2E8AC()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 120);
  if (v6 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v5 + 112), v6);
  }

  v7 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DEE2EA54()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DEE2EAAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE2EAE4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE2EB1C()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 120);
  if (v6 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v5 + 112), v6);
  }

  v7 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DEE2ECC0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1DEF8DD18();
  *a2 = v4;
  return result;
}

uint64_t sub_1DEE2ED58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEE4772C();
  *a1 = result;
  return result;
}

uint64_t sub_1DEE2ED84(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher) = *a1;
}

uint64_t sub_1DEE2EDD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE2EE18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DEE2EEE8()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v15 = *(v1 + 64);
  v4 = sub_1DEF8D488();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v14 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = v0 + v3;

  v8 = *(v0 + v3 + 120);
  if (v8 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v7 + 112), v8);
  }

  v9 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = (((v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;

  (*(v5 + 8))(v0 + v12, v4);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v12 + 1, v2 | v6 | 7);
}

uint64_t sub_1DEE2F150()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE2F1AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DEE2F1C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE2F22C()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DEE2F2F0()
{
  v1 = type metadata accessor for DeviceDescriptor(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 120);
  if (v6 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v5 + 112), v6);
  }

  v7 = *(v1 + 60);
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1DEE2F4D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DEE2F568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEE50774();
  *a1 = result;
  return result;
}

uint64_t sub_1DEE2F594(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 152) = *a1;
}

uint64_t sub_1DEE2F5D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEE508A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DEE2F604(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 168) = *a1;
}

uint64_t sub_1DEE2F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DEE2F748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DEE2F804(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1DEE2F86C()
{

  sub_1DEEA8A18(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DEE2F8B0()
{
  v1 = type metadata accessor for Message(0);
  v2 = *(*(v1 - 8) + 80);
  v12 = *(*(v1 - 8) + 64);
  v14 = sub_1DEF8D1E8();
  v3 = *(v14 - 8);
  v4 = *(v3 + 80);
  v13 = *(v3 + 64);

  v5 = v0 + ((v2 + 24) & ~v2);
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = *(v1 + 20);
  if (!(*(v7 + 48))(v5 + v9, 1, v6))
  {
    v8(v5 + v9, v6);
  }

  v10 = (((v2 + 24) & ~v2) + v12 + v4) & ~v4;

  sub_1DEE1BFA0(*(v5 + *(v1 + 36)), *(v5 + *(v1 + 36) + 8));
  (*(v3 + 8))(v0 + v10, v14);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v13, v2 | v4 | 7);
}

uint64_t sub_1DEE2FAC4()
{

  if (*(v0 + 104) >= 4uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DEE2FB24()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v16 = type metadata accessor for SessionManager.Session(0);
  v3 = *(*(v16 - 8) + 80);
  v14 = *(*(v16 - 8) + 64);

  v4 = v0 + ((v2 + 24) & ~v2);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v17 = *(v6 + 8);
  v17(v4, v5);
  if (*(v4 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v7 = v4 + *(v1 + 24);

  v8 = *(v7 + 120);
  if (v8 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v7 + 112), v8);
  }

  v9 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v6 + 48))(v7 + v9, 1, v5))
  {
    v17(v7 + v9, v5);
  }

  v10 = (((v15 + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + v3 + 8) & ~v3;

  v17(v0 + v10, v5);

  v11 = *(v16 + 28);
  v12 = sub_1DEF8D378();
  (*(*(v12 - 8) + 8))(v0 + v10 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v0, ((((v14 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | v3 | 7);
}

uint64_t sub_1DEE2FE2C()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v15 = *(*(v1 - 8) + 80);
  v2 = (v15 + 40) & ~v15;
  v14 = *(*(v1 - 8) + 64);
  v16 = type metadata accessor for SessionManager.Session(0);
  v3 = *(*(v16 - 8) + 80);
  v13 = *(*(v16 - 8) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));

  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v17 = *(v5 + 8);
  v17(v0 + v2, v4);
  if (*(v0 + v2 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v6 = v0 + v2 + *(v1 + 24);

  v7 = *(v6 + 120);
  if (v7 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v6 + 112), v7);
  }

  v8 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v5 + 48))(v6 + v8, 1, v4))
  {
    v17(v6 + v8, v4);
  }

  v9 = (((v14 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v3 + 8) & ~v3;

  v17(v0 + v9, v4);

  v10 = *(v16 + 28);
  v11 = sub_1DEF8D378();
  (*(*(v11 - 8) + 8))(v0 + v9 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, ((((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 9, v15 | v3 | 7);
}

uint64_t sub_1DEE30148()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v24 = *(*(v1 - 8) + 80);
  v2 = (v24 + 24) & ~v24;
  v3 = *(*(v1 - 8) + 64);
  v29 = type metadata accessor for PairingRelationship(0);
  v26 = *(*(v29 - 1) + 80);
  v22 = *(*(v29 - 1) + 64);
  v25 = type metadata accessor for SessionManager.Session(0);
  v21 = *(*(v25 - 8) + 80);
  v23 = *(*(v25 - 8) + 64);

  v27 = v0;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v28 = *(v5 + 8);
  v28(v0 + v2, v4);
  if (*(v0 + v2 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v6 = v0 + v2 + *(v1 + 24);

  v7 = *(v6 + 120);
  if (v7 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v6 + 112), v7);
  }

  v8 = (v2 + v3 + v26) & ~v26;

  v9 = type metadata accessor for DeviceDescriptor(0);
  v10 = *(v9 + 60);
  v11 = *(v5 + 48);
  if (!v11(v6 + v10, 1, v4))
  {
    v28(v6 + v10, v4);
  }

  v12 = v27 + v8;
  v28(v27 + v8, v4);
  v13 = v27 + v8 + v29[5];

  v14 = *(v13 + 120);
  if (v14 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v13 + 112), v14);
  }

  v15 = *(v9 + 60);
  if (!v11(v13 + v15, 1, v4))
  {
    v28(v13 + v15, v4);
  }

  v16 = v29[6];
  v17 = sub_1DEF8D378();
  v18 = *(*(v17 - 8) + 8);
  v18(v12 + v16, v17);
  v18(v12 + v29[7], v17);
  if (*(v12 + v29[8] + 8) >= 4uLL)
  {
  }

  v19 = (v8 + v22 + v21) & ~v21;
  v18(v12 + v29[9], v17);
  v28(v27 + v19, v4);

  v18(v27 + v19 + *(v25 + 28), v17);

  return MEMORY[0x1EEE6BDD0](v27, v19 + v23, v24 | v26 | v21 | 7);
}

uint64_t sub_1DEE305AC()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v29 = *(*(v1 - 8) + 80);
  v2 = (v29 + 40) & ~v29;
  v3 = *(*(v1 - 8) + 64);
  v33 = type metadata accessor for PairingRelationship(0);
  v4 = *(*(v33 - 1) + 80);
  v5 = v3 + v4;
  v26 = *(*(v33 - 1) + 64);
  v30 = type metadata accessor for SessionManager.Session(0);
  v25 = *(*(v30 - 8) + 80);
  v28 = *(*(v30 - 8) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));

  v31 = v0;
  v6 = v0 + v2;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v32 = *(v8 + 8);
  v32(v0 + v2, v7);
  if (*(v0 + v2 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v9 = v2 + v5;
  v10 = v6 + *(v1 + 24);

  v11 = *(v10 + 120);
  if (v11 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v10 + 112), v11);
  }

  v27 = v4;
  v12 = v9 & ~v4;

  v13 = type metadata accessor for DeviceDescriptor(0);
  v14 = *(v13 + 60);
  v15 = *(v8 + 48);
  if (!v15(v10 + v14, 1, v7))
  {
    v32(v10 + v14, v7);
  }

  v16 = v31 + v12;
  v32(v31 + v12, v7);
  v17 = v31 + v12 + v33[5];

  v18 = *(v17 + 120);
  if (v18 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v17 + 112), v18);
  }

  v19 = *(v13 + 60);
  if (!v15(v17 + v19, 1, v7))
  {
    v32(v17 + v19, v7);
  }

  v20 = v33[6];
  v21 = sub_1DEF8D378();
  v22 = *(*(v21 - 8) + 8);
  v22(v16 + v20, v21);
  v22(v16 + v33[7], v21);
  if (*(v16 + v33[8] + 8) >= 4uLL)
  {
  }

  v23 = (v12 + v26 + v25) & ~v25;
  v22(v16 + v33[9], v21);
  v32(v31 + v23, v7);

  v22(v31 + v23 + *(v30 + 28), v21);

  return MEMORY[0x1EEE6BDD0](v31, v23 + v28, v29 | v27 | v25 | 7);
}

uint64_t sub_1DEE30A1C()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v11 = *(*(v1 - 8) + 64);

  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v10 = *(v5 + 8);
  v10(v0 + v3, v4);
  if (*(v0 + v3 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v6 = v0 + v3 + *(v1 + 24);

  v7 = *(v6 + 120);
  if (v7 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v6 + 112), v7);
  }

  v8 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v5 + 48))(v6 + v8, 1, v4))
  {
    v10(v6 + v8, v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v11, v2 | 7);
}

uint64_t sub_1DEE30C00()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v2 = *(*(v1 - 8) + 80);
  v11 = *(*(v1 - 8) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));

  v3 = v0 + ((v2 + 40) & ~v2);
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  if (*(v3 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v7 = v3 + *(v1 + 24);

  v8 = *(v7 + 120);
  if (v8 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v7 + 112), v8);
  }

  v9 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v5 + 48))(v7 + v9, 1, v4))
  {
    v6(v7 + v9, v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 40) & ~v2) + v11, v2 | 7);
}

uint64_t sub_1DEE30DF0()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v24 = *(*(v1 - 8) + 80);
  v2 = (v24 + 24) & ~v24;
  v3 = *(*(v1 - 8) + 64);
  v29 = type metadata accessor for PairingRelationship(0);
  v26 = *(*(v29 - 1) + 80);
  v22 = *(*(v29 - 1) + 64);
  v25 = type metadata accessor for SessionManager.Session(0);
  v21 = *(*(v25 - 8) + 80);
  v23 = *(*(v25 - 8) + 64);

  v27 = v0;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v28 = *(v5 + 8);
  v28(v0 + v2, v4);
  if (*(v0 + v2 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v6 = v0 + v2 + *(v1 + 24);

  v7 = *(v6 + 120);
  if (v7 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v6 + 112), v7);
  }

  v8 = (v2 + v3 + v26) & ~v26;

  v9 = type metadata accessor for DeviceDescriptor(0);
  v10 = *(v9 + 60);
  v11 = *(v5 + 48);
  if (!v11(v6 + v10, 1, v4))
  {
    v28(v6 + v10, v4);
  }

  v12 = v27 + v8;
  v28(v27 + v8, v4);
  v13 = v27 + v8 + v29[5];

  v14 = *(v13 + 120);
  if (v14 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v13 + 112), v14);
  }

  v15 = *(v9 + 60);
  if (!v11(v13 + v15, 1, v4))
  {
    v28(v13 + v15, v4);
  }

  v16 = v29[6];
  v17 = sub_1DEF8D378();
  v18 = *(*(v17 - 8) + 8);
  v18(v12 + v16, v17);
  v18(v12 + v29[7], v17);
  if (*(v12 + v29[8] + 8) >= 4uLL)
  {
  }

  v19 = (v8 + v22 + v21) & ~v21;
  v18(v12 + v29[9], v17);
  v28(v27 + v19, v4);

  v18(v27 + v19 + *(v25 + 28), v17);

  return MEMORY[0x1EEE6BDD0](v27, v19 + v23, v24 | v26 | v21 | 7);
}

uint64_t sub_1DEE31280()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DEE312B8()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v29 = *(*(v1 - 8) + 80);
  v2 = (v29 + 40) & ~v29;
  v3 = *(*(v1 - 8) + 64);
  v33 = type metadata accessor for PairingRelationship(0);
  v4 = *(*(v33 - 1) + 80);
  v5 = v3 + v4;
  v26 = *(*(v33 - 1) + 64);
  v30 = type metadata accessor for SessionManager.Session(0);
  v25 = *(*(v30 - 8) + 80);
  v28 = *(*(v30 - 8) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));

  v31 = v0;
  v6 = v0 + v2;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v32 = *(v8 + 8);
  v32(v0 + v2, v7);
  if (*(v0 + v2 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v9 = v2 + v5;
  v10 = v6 + *(v1 + 24);

  v11 = *(v10 + 120);
  if (v11 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v10 + 112), v11);
  }

  v27 = v4;
  v12 = v9 & ~v4;

  v13 = type metadata accessor for DeviceDescriptor(0);
  v14 = *(v13 + 60);
  v15 = *(v8 + 48);
  if (!v15(v10 + v14, 1, v7))
  {
    v32(v10 + v14, v7);
  }

  v16 = v31 + v12;
  v32(v31 + v12, v7);
  v17 = v31 + v12 + v33[5];

  v18 = *(v17 + 120);
  if (v18 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v17 + 112), v18);
  }

  v19 = *(v13 + 60);
  if (!v15(v17 + v19, 1, v7))
  {
    v32(v17 + v19, v7);
  }

  v20 = v33[6];
  v21 = sub_1DEF8D378();
  v22 = *(*(v21 - 8) + 8);
  v22(v16 + v20, v21);
  v22(v16 + v33[7], v21);
  if (*(v16 + v33[8] + 8) >= 4uLL)
  {
  }

  v23 = (v12 + v26 + v25) & ~v25;
  v22(v16 + v33[9], v21);
  v32(v31 + v23, v7);

  v22(v31 + v23 + *(v30 + 28), v21);

  return MEMORY[0x1EEE6BDD0](v31, v23 + v28, v29 | v27 | v25 | 7);
}

uint64_t sub_1DEE31734()
{
  v1 = (type metadata accessor for SessionManager.Session(0) - 8);
  v20 = *(*v1 + 80);
  v2 = (v20 + 24) & ~v20;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for PairingRelationship(0);
  v19 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v19) & ~v19;
  v18 = *(*(v4 - 1) + 64);

  v6 = v0 + v2;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);

  v10 = v1[9];
  v11 = sub_1DEF8D378();
  v17 = *(*(v11 - 8) + 8);
  v17(v6 + v10, v11);
  v21 = v0;
  v12 = v0 + v5;
  v9(v0 + v5, v7);
  v13 = v0 + v5 + v4[5];

  v14 = *(v13 + 120);
  if (v14 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v13 + 112), v14);
  }

  v15 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v8 + 48))(v13 + v15, 1, v7))
  {
    v9(v13 + v15, v7);
  }

  v17(v12 + v4[6], v11);
  v17(v12 + v4[7], v11);
  if (*(v12 + v4[8] + 8) >= 4uLL)
  {
  }

  v17(v12 + v4[9], v11);

  return MEMORY[0x1EEE6BDD0](v21, ((v18 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v20 | v19 | 7);
}

uint64_t sub_1DEE31A54()
{
  v1 = (type metadata accessor for SessionManager.Session(0) - 8);
  v21 = *(*v1 + 80);
  v2 = (v21 + 40) & ~v21;
  v3 = *(*v1 + 64);
  v17 = type metadata accessor for PairingRelationship(0);
  v19 = *(*(v17 - 1) + 64);
  v20 = *(*(v17 - 1) + 80);
  v4 = (v2 + v3 + v20) & ~v20;
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));

  v5 = v0 + v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);

  v9 = v1[9];
  v10 = sub_1DEF8D378();
  v11 = (*(v10 - 8) + 8);
  v18 = *v11;
  (*v11)(v5 + v9, v10);
  v22 = v0;
  v12 = v0 + v4;
  v8(v0 + v4, v6);
  v13 = v0 + v4 + v17[5];

  v14 = *(v13 + 120);
  if (v14 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v13 + 112), v14);
  }

  v15 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v7 + 48))(v13 + v15, 1, v6))
  {
    v8(v13 + v15, v6);
  }

  v18(v12 + v17[6], v10);
  v18(v12 + v17[7], v10);
  if (*(v12 + v17[8] + 8) >= 4uLL)
  {
  }

  v18(v12 + v17[9], v10);

  return MEMORY[0x1EEE6BDD0](v22, ((v19 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v21 | v20 | 7);
}

uint64_t sub_1DEE31D88()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v2 = *(*(v1 - 8) + 80);
  v11 = *(*(v1 - 8) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  if (*(v3 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v7 = v3 + *(v1 + 24);

  v8 = *(v7 + 120);
  if (v8 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v7 + 112), v8);
  }

  v9 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v5 + 48))(v7 + v9, 1, v4))
  {
    v6(v7 + v9, v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v11, v2 | 7);
}

uint64_t sub_1DEE31F74()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v2 = *(*(v1 - 8) + 80);
  v11 = *(*(v1 - 8) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));

  v3 = v0 + ((v2 + 40) & ~v2);
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  if (*(v3 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v7 = v3 + *(v1 + 24);

  v8 = *(v7 + 120);
  if (v8 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v7 + 112), v8);
  }

  v9 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v5 + 48))(v7 + v9, 1, v4))
  {
    v6(v7 + v9, v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 40) & ~v2) + v11, v2 | 7);
}

uint64_t sub_1DEE32170()
{
  v1 = type metadata accessor for Message(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v10 = *(*(v1 - 8) + 64);

  v4 = v0 + v3;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = *(v1 + 20);
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  sub_1DEE1BFA0(*(v4 + *(v1 + 36)), *(v4 + *(v1 + 36) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v10, v2 | 7);
}

uint64_t sub_1DEE32310()
{
  v1 = type metadata accessor for PairingRelationship(0);
  v2 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = v3 + v1[5];

  v8 = *(v7 + 120);
  if (v8 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v7 + 112), v8);
  }

  v9 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v5 + 48))(v7 + v9, 1, v4))
  {
    v6(v7 + v9, v4);
  }

  v10 = v1[6];
  v11 = sub_1DEF8D378();
  v12 = *(*(v11 - 8) + 8);
  v12(v3 + v10, v11);
  v12(v3 + v1[7], v11);
  if (*(v3 + v1[8] + 8) >= 4uLL)
  {
  }

  v12(v3 + v1[9], v11);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v14, v2 | 7);
}

uint64_t sub_1DEE32554()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE32710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE327CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE3287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DEF8D378();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE32928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D378();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE329CC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE32A04()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DEE32A5C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DEE32AAC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE32AFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DEF8D3F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DEE32C2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1DEF8D3F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DEE32D60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Record.Value(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DEE32E0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Record.Value(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE32EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEE32F1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DEF8D3F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DEE32FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
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

uint64_t sub_1DEE33094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
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

uint64_t sub_1DEE3314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE33208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE332B8()
{
  sub_1DEE1BFA0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE332F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DEE33348()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DEE33398()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE333D8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DEE33420()
{
  MEMORY[0x1E12CCE60](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEEEA02C();
  *a1 = result;
  return result;
}

uint64_t sub_1DEE33484(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_1DEE334D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33508()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33540()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE33580()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE335B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DEE33604()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DEE3364C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DEE336B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DEE33730()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1DEE33808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEEF0904();
  *a1 = result;
  return result;
}

uint64_t sub_1DEE33834(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_1DEE33878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
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
    v11 = sub_1DEF8D378();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1DEE339A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
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
    v11 = sub_1DEF8D378();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DEE33AC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE33B08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33B40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33B78()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE33BC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEE33C18()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE33C58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE33CA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE33CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DEE33D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DEE33DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DEE33E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 48)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1DEE33F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEEFE184();
  *a1 = result;
  return result;
}

uint64_t sub_1DEE33F54(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_1DEE33FC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE3400C()
{
  v1 = sub_1DEF8D378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DEE340E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1DEE34134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEE341A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DEF8D3F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DEE34220(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DEF8D3F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DEE342CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D3F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE34388()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE3447C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MetadataStore.localDeviceID.setter(v1, v2);
}

uint64_t sub_1DEE34500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Message(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DEE345C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Message(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1DEE34680()
{
  v1 = type metadata accessor for Message(0);
  v16 = *(*(v1 - 8) + 80);
  v2 = (v16 + 40) & ~v16;
  v3 = v2 + *(*(v1 - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5) & ~v5;
  v15 = *(v4 + 64);

  v7 = v0 + v2;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = *(v1 + 20);
  if (!(*(v9 + 48))(v7 + v11, 1, v8))
  {
    v10(v7 + v11, v8);
  }

  sub_1DEE1BFA0(*(v7 + *(v1 + 36)), *(v7 + *(v1 + 36) + 8));
  v12 = sub_1DEF8D1E8();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6, 1, v12))
  {
    (*(v13 + 8))(v0 + v6, v12);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + v15) & 0xFFFFFFFFFFFFFFF8) + 40, v16 | v5 | 7);
}

uint64_t sub_1DEE34908()
{
  v1 = type metadata accessor for Message(0);
  v16 = *(*(v1 - 8) + 80);
  v2 = (v16 + 32) & ~v16;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);

  v6 = v0 + v2;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = *(v1 + 20);
  if (!(*(v8 + 48))(v6 + v10, 1, v7))
  {
    v9(v6 + v10, v7);
  }

  sub_1DEE1BFA0(*(v6 + *(v1 + 36)), *(v6 + *(v1 + 36) + 8));

  v11 = sub_1DEF8D1E8();
  v12 = *(v11 - 8);
  v14 = (v3 + v5 + 8) & ~v5;
  if (!(*(v12 + 48))(v0 + v14, 1, v11))
  {
    (*(v12 + 8))(v0 + v14, v11);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + v15) & 0xFFFFFFFFFFFFFFF8) + 40, v16 | v5 | 7);
}

uint64_t sub_1DEE34BBC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1DEF8D1E8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1DEE34CFC()
{
  v16 = sub_1DEF8D1E8();
  v1 = *(v16 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v17 = v2 | v7;
  v10 = (v9 + v7 + v8) & ~v7;
  v14 = (v2 + ((((((((((v10 + v9) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  v15 = v4 + v14;

  v11 = *(v1 + 8);
  v11(v0 + v3, v16);
  v12 = *(v6 + 8);
  v12(v0 + v8, v5);
  v12(v0 + v10, v5);
  swift_unknownObjectRelease();

  v11(v0 + v14, v16);

  return MEMORY[0x1EEE6BDD0](v0, v15 + 1, v17 | 7);
}

uint64_t sub_1DEE34F00()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE34F48()
{
  if (*(v0 + 16))
  {
  }

  sub_1DEE39214(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DEE34F94()
{

  sub_1DEE39214(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DEE34FDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE3501C()
{
  v1 = type metadata accessor for Message(0);
  v17 = *(*(v1 - 8) + 80);
  v2 = (v17 + 40) & ~v17;
  v3 = v2 + *(*(v1 - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v6 = v3 + v5;
  v16 = *(v4 + 64);

  if (*(v0 + 24))
  {
  }

  v7 = v6 & ~v5;
  v8 = v0 + v2;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = *(v1 + 20);
  if (!(*(v10 + 48))(v8 + v12, 1, v9))
  {
    v11(v8 + v12, v9);
  }

  sub_1DEE1BFA0(*(v8 + *(v1 + 36)), *(v8 + *(v1 + 36) + 8));
  v13 = sub_1DEF8D1E8();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v7, 1, v13))
  {
    (*(v14 + 8))(v0 + v7, v13);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + v16) & 0xFFFFFFFFFFFFFFF8) + 17, v17 | v5 | 7);
}

uint64_t sub_1DEE352C0()
{
  v1 = type metadata accessor for Message(0);
  v17 = *(*(v1 - 8) + 80);
  v2 = (v17 + 56) & ~v17;
  v3 = v2 + *(*(v1 - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v6 = v3 + v5;
  v16 = *(v4 + 64);
  if (*(v0 + 16))
  {
  }

  v7 = v6 & ~v5;

  v8 = v0 + v2;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = *(v1 + 20);
  if (!(*(v10 + 48))(v8 + v12, 1, v9))
  {
    v11(v8 + v12, v9);
  }

  sub_1DEE1BFA0(*(v8 + *(v1 + 36)), *(v8 + *(v1 + 36) + 8));
  v13 = sub_1DEF8D1E8();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v7, 1, v13))
  {
    (*(v14 + 8))(v0 + v7, v13);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + v16) & 0xFFFFFFFFFFFFFFF8) + 17, v17 | v5 | 7);
}

uint64_t sub_1DEE35558()
{
  v1 = (type metadata accessor for NetworkSyncHeader(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;

  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_1DEF8D3F8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[8], v6);
  v7(v5 + v1[9], v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 4, v2 | 7);
}

uint64_t sub_1DEE35694()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE356E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE357C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE3583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for PairingRelationship(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DEE358F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for PairingRelationship(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE35998()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE359D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE35A10()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE35A58()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE35AA8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE35AEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEE35B68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DEF8D1E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1DEE35C14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D1E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE35CC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE35D14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE35D4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE35DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  v2 = *(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);

  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = type metadata accessor for Message(0);
  v8 = *(v7 + 20);
  if (!(*(v5 + 48))(v3 + v8, 1, v4))
  {
    v6(v3 + v8, v4);
  }

  sub_1DEE1BFA0(*(v3 + *(v7 + 36)), *(v3 + *(v7 + 36) + 8));
  v9 = *(v1 + 28);
  v10 = sub_1DEF8D1E8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v13, v2 | 7);
}

uint64_t sub_1DEE35FEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE3602C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEE3608C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE360DC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE36114()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEE3614C()
{
  v1 = type metadata accessor for Message(0);
  v25 = *(*(v1 - 8) + 80);
  v2 = (v25 + 48) & ~v25;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v24 = *(v4 + 80);
  v5 = (v3 + v24 + 8) & ~v24;
  v6 = *(v4 + 64);
  v22 = type metadata accessor for DeviceDescriptor(0);
  v7 = *(*(v22 - 8) + 80);
  v8 = v6 + v7 + v5 + 1;
  v23 = *(*(v22 - 8) + 64);
  v9 = v0 + v2;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v20 = *(v11 + 8);
  v20(v9, v10);
  v12 = *(v1 + 20);
  v21 = *(v11 + 48);
  if (!v21(v9 + v12, 1, v10))
  {
    v20(v9 + v12, v10);
  }

  v13 = v8 & ~v7;

  sub_1DEE1BFA0(*(v9 + *(v1 + 36)), *(v9 + *(v1 + 36) + 8));

  v14 = sub_1DEF8D1E8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v5, 1, v14))
  {
    (*(v15 + 8))(v0 + v5, v14);
  }

  v16 = v0 + v13;

  v17 = *(v0 + v13 + 120);
  if (v17 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v16 + 112), v17);
  }

  v18 = *(v22 + 60);
  if (!v21(v16 + v18, 1, v10))
  {
    v20(v16 + v18, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v13 + v23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16, v25 | v24 | v7 | 7);
}

uint64_t sub_1DEE364F4()
{
  v1 = type metadata accessor for Message(0);
  v18 = *(*(v1 - 8) + 80);
  v2 = (v18 + 56) & ~v18;
  v3 = *(*(v1 - 8) + 64);
  v16 = type metadata accessor for DeviceDescriptor(0);
  v4 = *(*(v16 - 8) + 80);
  v5 = (v2 + v3 + v4) & ~v4;
  v17 = *(*(v16 - 8) + 64);

  v6 = v0 + v2;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v15 = *(v8 + 8);
  v15(v0 + v2, v7);
  v9 = *(v1 + 20);
  v10 = *(v8 + 48);
  if (!v10(v6 + v9, 1, v7))
  {
    v15(v6 + v9, v7);
  }

  sub_1DEE1BFA0(*(v6 + *(v1 + 36)), *(v6 + *(v1 + 36) + 8));
  v11 = v0 + v5;

  v12 = *(v0 + v5 + 120);
  if (v12 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v11 + 112), v12);
  }

  v13 = *(v16 + 60);
  if (!v10(v11 + v13, 1, v7))
  {
    v15(v11 + v13, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v17 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v18 | v4 | 7);
}

uint64_t sub_1DEE367AC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v30 = *(v2 + 80);
  v3 = (v30 + 72) & ~v30;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Message(0);
  v29 = *(*(v5 - 8) + 80);
  v6 = (v3 + v4 + v29) & ~v29;
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v28 = *(v8 + 80);
  v9 = (v7 + v28 + 16) & ~v28;
  v10 = *(v8 + 64);
  v26 = type metadata accessor for DeviceDescriptor(0);
  v11 = *(*(v26 - 8) + 80);
  v12 = v10 + v11 + v9 + 1;
  v27 = *(*(v26 - 8) + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v13 = v0 + v6;
  v14 = sub_1DEF8D3F8();
  v15 = *(v14 - 8);
  v24 = *(v15 + 8);
  v24(v0 + v6, v14);
  v16 = *(v5 + 20);
  v25 = *(v15 + 48);
  if (!v25(v13 + v16, 1, v14))
  {
    v24(v13 + v16, v14);
  }

  v17 = v12 & ~v11;

  sub_1DEE1BFA0(*(v13 + *(v5 + 36)), *(v13 + *(v5 + 36) + 8));

  v18 = sub_1DEF8D1E8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v9, 1, v18))
  {
    (*(v19 + 8))(v0 + v9, v18);
  }

  v20 = v0 + v17;

  v21 = *(v0 + v17 + 120);
  if (v21 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v20 + 112), v21);
  }

  v22 = *(v26 + 60);
  if (!v25(v20 + v22, 1, v14))
  {
    v24(v20 + v22, v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, v27 + v17 + 1, v30 | v29 | v28 | v11 | 7);
}

uint64_t sub_1DEE36BC4()
{
  v1 = *(v0 + 24);
  v19 = v1;
  v20 = sub_1DEF8D378();
  v2 = *(v20 - 8);
  v26 = *(v2 + 80);
  v18 = (v26 + 48) & ~v26;
  v3 = *(v1 - 8);
  v25 = *(v3 + 80);
  v4 = (v25 + ((((*(v2 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v25;
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Message(0);
  v24 = *(*(v6 - 8) + 80);
  v7 = (v24 + v5 + 8) & ~v24;
  v8 = *(*(v6 - 8) + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v23 = *(v9 + 80);
  v21 = (v7 + v8 + v23) & ~v23;
  v22 = *(v9 + 64);
  (*(v2 + 8))(v0 + v18, v20);

  (*(v3 + 8))(v0 + v4, v19);

  v10 = v0 + v7;
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = *(v6 + 20);
  if (!(*(v12 + 48))(v10 + v14, 1, v11))
  {
    v13(v10 + v14, v11);
  }

  sub_1DEE1BFA0(*(v10 + *(v6 + 36)), *(v10 + *(v6 + 36) + 8));
  v15 = sub_1DEF8D1E8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v21, 1, v15))
  {
    (*(v16 + 8))(v0 + v21, v15);
  }

  return MEMORY[0x1EEE6BDD0](v0, v22 + v21 + 2, v26 | v25 | v24 | v23 | 7);
}

uint64_t sub_1DEE36F88()
{
  v1 = type metadata accessor for Message(0);
  v2 = *(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = AssociatedTypeWitness;
  v4 = *(v15 + 80);
  v14 = *(v15 + 64);
  v5 = v0 + ((v2 + 48) & ~v2);
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = *(v1 + 20);
  if (!(*(v7 + 48))(v5 + v9, 1, v6))
  {
    v8(v5 + v9, v6);
  }

  v10 = v2 | v4;
  v11 = (v4 + ((((((v13 + ((v2 + 48) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v4;

  sub_1DEE1BFA0(*(v5 + *(v1 + 36)), *(v5 + *(v1 + 36) + 8));

  (*(v15 + 8))(v0 + v11, v16);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v14, v10 | 7);
}

uint64_t sub_1DEE371E0()
{
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v44 = v5;
  v6 = *(sub_1DEF8E808() - 8);
  v56 = *(v6 + 80);
  v7 = (v56 + 48) & ~v56;
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1DEF8DDC8() - 8);
  v55 = *(v9 + 80);
  v10 = (v8 + v55 + 16) & ~v55;
  v47 = v1;
  v11 = *(v1 - 8);
  v54 = *(v11 + 80);
  v46 = (v10 + *(v9 + 64) + v54) & ~v54;
  v12 = (*(v11 + 64) + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for Message(0);
  v53 = *(*(v13 - 8) + 80);
  v45 = (v12 + v53 + 16) & ~v53;
  v14 = (((*(*(v13 - 8) + 64) + v45 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v52 = *(v15 + 80);
  v16 = (v14 + v52 + 8) & ~v52;
  v17 = *(v15 + 64);
  v49 = type metadata accessor for DeviceDescriptor(0);
  v51 = *(*(v49 - 8) + 80);
  v18 = v17 + v51;
  v50 = *(*(v49 - 8) + 64);
  v19 = (v0 + v7);
  v57 = v16;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v42 = v18;
    v43 = (v8 + v55 + 16) & ~v55;
    v20 = sub_1DEF8D3F8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 8);
    v22(v19, v20);
    v23 = *(v13 + 20);
    if (!(*(v21 + 48))(v19 + v23, 1, v20))
    {
      v22((v19 + v23), v20);
    }

    sub_1DEE1BFA0(*(v19 + *(v13 + 36)), *(v19 + *(v13 + 36) + 8));
    v24 = *(v44 + 28);
    v25 = sub_1DEF8D1E8();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v19 + v24, 1, v25))
    {
      (*(v26 + 8))(v19 + v24, v25);
    }

    (*(*(AssociatedTypeWitness - 8) + 8))(v19 + *(v44 + 32), AssociatedTypeWitness);
    v16 = v57;
    v10 = v43;
    v18 = v42;
  }

  v27 = v18 + v16;

  v28 = *(AssociatedTypeWitness - 8);
  if (!(*(v28 + 48))(v0 + v10, 1, AssociatedTypeWitness))
  {
    (*(v28 + 8))(v0 + v10, AssociatedTypeWitness);
  }

  v29 = v27 + 1;
  (*(v11 + 8))(v0 + v46, v47);
  v30 = v0 + v45;
  v31 = sub_1DEF8D3F8();
  v32 = *(v31 - 8);
  v48 = *(v32 + 8);
  v48(v0 + v45, v31);
  v33 = *(v13 + 20);
  v34 = *(v32 + 48);
  if (!v34(v0 + v45 + v33, 1, v31))
  {
    v48(v30 + v33, v31);
  }

  v35 = v29 & ~v51;

  sub_1DEE1BFA0(*(v30 + *(v13 + 36)), *(v30 + *(v13 + 36) + 8));

  v36 = sub_1DEF8D1E8();
  v37 = *(v36 - 8);
  if (!(*(v37 + 48))(v0 + v57, 1, v36))
  {
    (*(v37 + 8))(v0 + v57, v36);
  }

  v38 = v0 + v35;

  v39 = *(v0 + v35 + 120);
  if (v39 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v38 + 112), v39);
  }

  v40 = *(v49 + 60);
  if (!v34(v38 + v40, 1, v31))
  {
    v48(v38 + v40, v31);
  }

  return MEMORY[0x1EEE6BDD0](v0, v50 + v35 + 1, v56 | v55 | v54 | v53 | v52 | v51 | 7);
}

uint64_t sub_1DEE3799C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE379E4()
{
  v1 = type metadata accessor for Message(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = *(v1 + 20);
  if (!(*(v7 + 48))(v5 + v9, 1, v6))
  {
    v8(v5 + v9, v6);
  }

  sub_1DEE1BFA0(*(v5 + *(v1 + 36)), *(v5 + *(v1 + 36) + 8));
  if (*(v0 + v4))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1DEE37B90()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 56))
  {
  }

  v5 = (v3 + 72) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1DEE37C74()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v22 = *(v2 + 80);
  v3 = (v22 + 64) & ~v22;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Message(0);
  v21 = *(*(v5 - 8) + 80);
  v6 = (v4 + v21 + 16) & ~v21;
  v7 = *(*(v5 - 8) + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v7 + v9;
  v20 = *(v8 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  v11 = v10 & ~v9;
  v12 = v0 + v6;
  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v12, v13);
  v16 = *(v5 + 20);
  if (!(*(v14 + 48))(v12 + v16, 1, v13))
  {
    v15(v12 + v16, v13);
  }

  sub_1DEE1BFA0(*(v12 + *(v5 + 36)), *(v12 + *(v5 + 36) + 8));
  v17 = sub_1DEF8D1E8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v11, 1, v17))
  {
    (*(v18 + 8))(v0 + v11, v17);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v20 + v11 + 9) & 0xFFFFFFFFFFFFFFF8) + 16, v22 | v21 | v9 | 7);
}

uint64_t sub_1DEE37FA8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  sub_1DEE39214(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 64))
  {
  }

  v9 = (v3 + 80) & ~v3;
  v10 = (v9 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

uint64_t sub_1DEE38144()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE3819C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE381DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Record.Value(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DEE38294(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Record.Value(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1DEE3834C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE383CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DEE38488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DEE38540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
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

uint64_t sub_1DEE385FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
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

uint64_t sub_1DEE386CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1DEE387EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1DEE3883C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1DEE3888C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1DEE388DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1DEE38924(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1DEE38968@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1DEE389B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 49) = v2;
  return result;
}

uint64_t sub_1DEE389F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1DEE38A44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  return sub_1DEECF850(v3 + v4, a2);
}

uint64_t sub_1DEE38AA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE38AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D818();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DEE38B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D818();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DEE38BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Message(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1DEE38CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Message(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DEE38DF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DEE38E40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE38E88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1DEE38ED0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1DEE38F14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEF86AA0();
  *a1 = result;
  return result;
}

uint64_t sub_1DEE38F40(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_1DEE38F8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE38FC8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE39000()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DEE39040()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DEE39088@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEF899E4();
  *a1 = result;
  return result;
}

__n128 sub_1DEE390EC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1DEE39100()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

id sub_1DEE39150(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DEE391C8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

void sub_1DEE39214(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1DEE3A258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id STRPLogCoding(uint64_t a1)
{
  if (STRPLogCoding_onceToken[0] != -1)
  {
    STRPLogCoding_cold_1();
  }

  v2 = STRPLogCoding___logObj;

  return v2;
}

uint64_t __STRPLogCoding_block_invoke()
{
  STRPLogCoding___logObj = os_log_create("com.apple.replicatorengine", "Coding");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t getEnumTagSinglePayload for ProtocolVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProtocolVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1DEE3BB88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEE3BBA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1DEE3BBE4()
{
  v0 = sub_1DEF8DD08();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1DEE3C630();
  sub_1DEF8D6C8();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1DEE3C0A4(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE3C6C4();
  sub_1DEF8DE08();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1DEF8DD38();
  qword_1ECDE33F8 = result;
  return result;
}

uint64_t sub_1DEE3BE1C(uint64_t a1, id *a2)
{
  result = sub_1DEF8D928();
  *a2 = 0;
  return result;
}

uint64_t sub_1DEE3BE94(uint64_t a1, id *a2)
{
  v3 = sub_1DEF8D938();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DEE3BF14@<X0>(uint64_t *a2@<X8>)
{
  sub_1DEF8D948();
  v3 = sub_1DEF8D918();

  *a2 = v3;
  return result;
}

uint64_t sub_1DEE3BF58(uint64_t a1)
{
  v2 = sub_1DEE3C0A4(&qword_1ECDE2BF0, type metadata accessor for FileAttributeKey, &unk_1DEF90310);
  v3 = sub_1DEE3C0A4(&qword_1ECDE3950, type metadata accessor for FileAttributeKey, &unk_1DEF8FFB4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DEE3C0A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEE3C0EC(uint64_t a1)
{
  v2 = sub_1DEE3C0A4(&qword_1ECDE3938, type metadata accessor for FileProtectionType, &unk_1DEF90128);
  v3 = sub_1DEE3C0A4(&unk_1ECDE3940, type metadata accessor for FileProtectionType, &unk_1DEF900C8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DEE3C238@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DEF8D918();

  *a2 = v3;
  return result;
}

uint64_t sub_1DEE3C280(uint64_t a1)
{
  v2 = sub_1DEE3C0A4(&qword_1ECDE3928, type metadata accessor for Name, &unk_1DEF90280);
  v3 = sub_1DEE3C0A4(&qword_1ECDE3930, type metadata accessor for Name, &unk_1DEF90220);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DEE3C33C()
{
  v0 = sub_1DEF8D948();
  v1 = MEMORY[0x1E12CB1B0](v0);

  return v1;
}

uint64_t sub_1DEE3C378(uint64_t a1)
{
  sub_1DEF8D948();
  sub_1DEF8D9B8();
}

uint64_t sub_1DEE3C3CC(uint64_t a1)
{
  sub_1DEF8D948();
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v1 = sub_1DEF8E7F8();

  return v1;
}

uint64_t sub_1DEE3C518(void *a1, uint64_t *a2)
{
  v2 = sub_1DEF8D948();
  v4 = v3;
  if (v2 == sub_1DEF8D948() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DEF8E4E8();
  }

  return v7 & 1;
}

unint64_t sub_1DEE3C630()
{
  result = qword_1ECDE2C00;
  if (!qword_1ECDE2C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE2C00);
  }

  return result;
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

unint64_t sub_1DEE3C6C4()
{
  result = qword_1ECDE2C30;
  if (!qword_1ECDE2C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C30);
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

uint64_t TimedHandshakeTask.handshakeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 56);
}

void TimedHandshakeTask.schedule.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t TimedHandshakeTask.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_creationDate;
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TimedHandshakeTask.__allocating_init(handshakeDescriptor:schedule:handler:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  TimedHandshakeTask.init(handshakeDescriptor:schedule:handler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t TimedHandshakeTask.init(handshakeDescriptor:schedule:handler:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v26 = sub_1DEF8DD08();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v34 = *a1;
  v13 = *(a1 + 2);
  v32 = *(a1 + 3);
  v33 = v13;
  v31 = *(a1 + 32);
  v14 = *(a1 + 5);
  v29 = *(a1 + 6);
  v30 = v14;
  v28 = *a2;
  v27 = *(a2 + 8);
  sub_1DEF8D348();
  v25 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue;
  sub_1DEE3C630();
  sub_1DEF8D6C8();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAB0(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE3C6C4();
  sub_1DEF8DE08();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8098], v26);
  *(v4 + v25) = sub_1DEF8DD38();
  v15 = (v4 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer;
  type metadata accessor for BasicTimer();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v17 + 24) = v18;
  *(v5 + v16) = v17;
  *(v5 + 16) = v34;
  v19 = v32;
  *(v5 + 32) = v33;
  *(v5 + 40) = v19;
  *(v5 + 48) = v31;
  v20 = v29;
  *(v5 + 56) = v30;
  *(v5 + 64) = v20;
  *(v5 + 72) = v28;
  *(v5 + 80) = v27;
  v21 = (v5 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  return v5;
}

Swift::Void __swiftcall TimedHandshakeTask.start()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DEE3DBC0;
  *(v2 + 24) = v0;
  v4[4] = sub_1DEE13AF8;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEE134F4;
  v4[3] = &block_descriptor;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE3CDC8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1DEF8D378();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v50 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  sub_1DEF8D348();
  v16 = a1[9];
  v17 = *(a1 + 80);
  v50[1] = v2;
  if (!v17)
  {
    v54 = v16;
    v55 = 0;
    goto LABEL_5;
  }

  if (v17 == 1)
  {
    v54 = v16;
    v55 = 1;
LABEL_5:
    sub_1DEE3DDBC(v16);
    goto LABEL_7;
  }

  sub_1DEE3DD28(0x20000000000001uLL);
LABEL_7:
  sub_1DEF8D2E8();
  v52 = *(v4 + 8);
  v52(v12, v3);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v18 = sub_1DEF8D508();
  __swift_project_value_buffer(v18, qword_1ECDF6028);
  v19 = *(v4 + 16);
  v19(v9, v15, v3);
  v51 = v15;
  v19(v6, v15, v3);

  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v3;
    v23 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    v53 = a1;
    v54 = v50[0];
    *v23 = 136315650;

    v24 = sub_1DEF8D988();
    v26 = sub_1DEE12A5C(v24, v25, &v54);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    sub_1DEE2BAB0(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v27 = sub_1DEF8E2E8();
    v29 = v28;
    v30 = v9;
    v31 = v52;
    v52(v30, v22);
    v32 = sub_1DEE12A5C(v27, v29, &v54);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2050;
    sub_1DEF8D318();
    v34 = v33;
    v31(v6, v22);
    *(v23 + 24) = v34;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "%s scheduling timed handshake task at: %{public}s in %{public}fs", v23, 0x20u);
    v35 = v50[0];
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v35, -1, -1);
    v36 = v23;
    v3 = v22;
    MEMORY[0x1E12CCD70](v36, -1, -1);
  }

  else
  {

    v37 = v52;
    v52(v6, v3);
    v37(v9, v3);
  }

  type metadata accessor for BasicTimer();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v38 + 24) = v39;
  *(a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer) = v38;

  v40 = a1[9];
  v41 = v51;
  if (*(a1 + 80))
  {
    if (*(a1 + 80) != 1)
    {
      v42 = sub_1DEE3DD28(0x20000000000001uLL);
      goto LABEL_18;
    }

    v54 = a1[9];
    v55 = 1;
  }

  else
  {
    v54 = a1[9];
    v55 = 0;
  }

  sub_1DEE3DDBC(v40);
LABEL_18:
  v43 = *(v38 + 24);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v50[-6] = v38;
  *&v50[-5] = v44;
  v50[-4] = v45;
  v50[-3] = sub_1DEE3DDB4;
  v50[-2] = a1;
  MEMORY[0x1EEE9AC00](v46);
  v50[-2] = sub_1DEE1B740;
  v50[-1] = v47;

  os_unfair_lock_lock(v43 + 4);
  sub_1DEE3DEF0(v48);
  os_unfair_lock_unlock(v43 + 4);

  v52(v41, v3);
}

uint64_t sub_1DEE3D3FC(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  if (v1)
  {

    v1(v2);

    return sub_1DEE3DBD0(v1);
  }

  return result;
}

Swift::Void __swiftcall TimedHandshakeTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DEE3DBC8;
  *(v2 + 24) = v0;
  v4[4] = sub_1DEE3DEE0;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEE134F4;
  v4[3] = &block_descriptor_7;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE3D5A0(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  v3 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  *v2 = 0;
  v2[1] = 0;
  sub_1DEE3DBD0(v3);
  v4 = *(*(a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer) + 24);

  os_unfair_lock_lock(v4 + 4);
  sub_1DEE15434(v5);
  os_unfair_lock_unlock(v4 + 4);
}

uint64_t TimedHandshakeTask.deinit()
{

  v1 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_creationDate;
  v2 = sub_1DEF8D378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1DEE3DBD0(*(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler));

  return v0;
}

uint64_t TimedHandshakeTask.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_creationDate;
  v2 = sub_1DEF8D378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1DEE3DBD0(*(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler));

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE3D7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v5 = *(*v1 + 32);
  v4 = *(*v1 + 40);
  v6 = *(*v1 + 48);
  *a1 = *(*v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v2 + 56);
}

void sub_1DEE3D82C(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 80);
  *a1 = *(*v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t sub_1DEE3D844@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_creationDate;
  v5 = sub_1DEF8D378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DEE3D8C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a2 + 8);
  v12 = *a2;
  v13 = v9;
  v10 = swift_allocObject();
  result = TimedHandshakeTask.init(handshakeDescriptor:schedule:handler:)(a1, &v12, a3, a4);
  *a5 = v10;
  return result;
}

uint64_t sub_1DEE3D940()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEE3DEDC;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE3DEE0;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_25;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE3DA80()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEE3DED8;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE3DEE0;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_17;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE3DBD0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for TimedHandshakeTask(uint64_t a1)
{
  result = qword_1ECDE3118;
  if (!qword_1ECDE3118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEE3DC34(uint64_t a1)
{
  result = sub_1DEF8D378();
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

unint64_t sub_1DEE3DD28(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E12CCD90](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E12CCD90](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE3DDBC(uint64_t a1)
{
  if (a1 && (a1 - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v1 = a1 - 1;
    sub_1DEE3DD28(0x20000000000001uLL);
    exp2(v1);
  }

  else
  {
    sub_1DEE3DD28(0x20000000000001uLL);
  }
}

uint64_t sub_1DEE3DF08@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a2) != 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_1DEE3E0EC();
      sub_1DEF8CFB8();
      sub_1DEF8D3C8();
      sub_1DEE1BFA0(a1, a2);
      v11 = sub_1DEF8D3F8();
      return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEE1BFA0(a1, a2);
  v13 = sub_1DEF8D3F8();
  v14 = *(*(v13 - 8) + 56);

  return v14(a3, 1, 1, v13);
}

unint64_t sub_1DEE3E0EC()
{
  result = qword_1ED786058;
  if (!qword_1ED786058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786058);
  }

  return result;
}

uint64_t ProtocolVersion.init(current:minimum:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t ProtocolVersion.highestCompatibleProtocolVersion(with:)(unint64_t *a1)
{
  v2 = *a1;
  v4 = *v1 < a1[1] || v2 < v1[1];
  if (*v1 < v2)
  {
    v2 = *v1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

Swift::UInt64_optional __swiftcall ProtocolVersion.highestCompatibleProtocolVersion(with:)(Swift::UInt64 with)
{
  v3 = v1[1] > with || *v1 < with;
  if (v3)
  {
    with = 0;
  }

  result.value = with;
  result.is_nil = v3;
  return result;
}

uint64_t _s16ReplicatorEngine29NetworkMessagingCriticalErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE3E2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEE3E38C(uint64_t a1)
{
  v2 = sub_1DEE24474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEE3E3C8(uint64_t a1)
{
  v2 = sub_1DEE24474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProtocolVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A38, &qword_1DEF90580);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24474();
  sub_1DEF8E858();
  v11 = 0;
  sub_1DEF8E2B8();
  if (!v2)
  {
    v10 = 1;
    sub_1DEF8E2B8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ProtocolVersion.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E12CBF90](*v0);
  return MEMORY[0x1E12CBF90](v1);
}

uint64_t ProtocolVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE3E640()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE3E69C()
{
  v1 = v0[1];
  MEMORY[0x1E12CBF90](*v0);
  return MEMORY[0x1E12CBF90](v1);
}

uint64_t sub_1DEE3E6D8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v2);
  MEMORY[0x1E12CBF90](v3);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEE3E734()
{
  result = qword_1ECDE3A48;
  if (!qword_1ECDE3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3A48);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ProtocolVersion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DEE3E878()
{
  result = qword_1ECDE3A50;
  if (!qword_1ECDE3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3A50);
  }

  return result;
}

unint64_t sub_1DEE3E8D0()
{
  result = qword_1ECDE3478;
  if (!qword_1ECDE3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3478);
  }

  return result;
}

unint64_t sub_1DEE3E928()
{
  result = qword_1ECDE3480;
  if (!qword_1ECDE3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3480);
  }

  return result;
}

uint64_t sub_1DEE3E9F0(char a1)
{
  v3 = sub_1DEF8D698();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D6D8();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1DEE3ECC4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B8D8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_1DEE3ECC4()
{
  if (*(v0 + 16) == 1)
  {
    return sub_1DEE3ECFC();
  }

  else
  {
    return sub_1DEE3EEE0();
  }
}

uint64_t sub_1DEE3ECFC()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 72);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  result = v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v9 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled))
  {
    return result;
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF5FE0);
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Enabling IDS zone advertiser", v15, 2u);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  *(v1 + v9) = 1;
  sub_1DEE3FE28();
  return sub_1DEE4254C();
}

uint64_t sub_1DEE3EEE0()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 72);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  v8 = sub_1DEF8D7B8();
  v10 = *(v2 + 8);
  v9 = v2 + 8;
  result = v10(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled) != 1)
  {
    return result;
  }

  v9 = v0;
  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF5FE0);
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Disabling IDS zone advertiser", v15, 2u);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  *(v9 + v8) = 0;
  return sub_1DEE42DAC();
}

uint64_t sub_1DEE3F0C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t (*sub_1DEE3F104(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1DEF8DD18();
  *(a1 + 8) = *(a1 + 9);
  return sub_1DEE3F18C;
}

uint64_t sub_1DEE3F220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v5 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ZoneVersionAdvertisement(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement;
  swift_beginAccess();
  sub_1DEE17214(a1 + v15, v14, &qword_1ECDE3A78, &qword_1DEF90820);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    result = sub_1DEE171B4(v14, &qword_1ECDE3A78, &qword_1DEF90820);
    v17 = 0;
  }

  else
  {
    sub_1DEE46C34(v14, v11, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE171B4(v14, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE46C34(v11, v7, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    sub_1DEE46C9C(v11, type metadata accessor for ZoneVersionAdvertisement);
    v19 = *v7;
    v18 = v7[1];

    sub_1DEE46C9C(v7, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    if (v19 == v21 && v18 == v22)
    {

      v17 = 1;
    }

    else
    {
      v17 = sub_1DEF8E4E8();
    }
  }

  *v23 = v17 & 1;
  return result;
}

uint64_t sub_1DEE3F4E4()
{
  v0 = sub_1DEF8D688();
  __swift_allocate_value_buffer(v0, qword_1ECDE3318);
  *__swift_project_value_buffer(v0, qword_1ECDE3318) = 500;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_1DEE3F574()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEE1B548(&qword_1ECDE2D28, &qword_1ECDE3A58, &qword_1DEF937F0, MEMORY[0x1E695BF88]);
    v1 = sub_1DEF8D5B8();
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEE3F648(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1DEE3F574();
  return sub_1DEE3F690;
}

uint64_t IDSZoneAdvertiser.__allocating_init(idsServiceName:firstLockStateProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  IDSZoneAdvertiser.init(idsServiceName:firstLockStateProvider:)(a1, a2, a3);
  return v6;
}

char *IDSZoneAdvertiser.init(idsServiceName:firstLockStateProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a1;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A68, &unk_1DEF9B100);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v32 - v9;
  v10 = sub_1DEF8DD08();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  *(v3 + 7) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  swift_allocObject();
  *(v3 + 8) = sub_1DEF8D598();
  sub_1DEE3C630();
  v32 = "eue_timer";
  sub_1DEF8D6C8();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B8D8(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  (*(v33 + 104))(v12, *MEMORY[0x1E69E8098], v34);
  *(v3 + 9) = sub_1DEF8DD38();
  v15 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement;
  v16 = type metadata accessor for ZoneVersionAdvertisement(0);
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending] = 0;
  v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed] = 0;
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscriptionTask] = 0;
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask] = 0;
  v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled] = 0;
  v17(&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement], 1, 1, v16);
  v18 = &v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper] = 0;
  v19 = MEMORY[0x1E69E7CD0];
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_subscriptions] = MEMORY[0x1E69E7CD0];
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapperSubscriptions] = v19;
  v20 = v35;
  sub_1DEE29594(v35, (v4 + 16));
  v21 = &v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceName];
  v22 = v37;
  *v21 = v36;
  v21[1] = v22;
  v23 = v20[3];
  v24 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v23);
  v42 = (*(v24 + 8))(v23, v24);
  v43 = *(v4 + 9);
  v25 = v43;
  v26 = sub_1DEF8DCF8();
  v27 = v38;
  (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
  v28 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE1B548(&qword_1ECDE2D68, &qword_1ECDE3A70, &unk_1DEF90A40, MEMORY[0x1E695BED8]);
  sub_1DEE1B8D8(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
  v29 = v39;
  sub_1DEF8D5D8();
  sub_1DEE171B4(v27, &qword_1ECDE3A60, &unk_1DEF90810);

  swift_allocObject();
  swift_weakInit();
  sub_1DEE1B548(&qword_1ECDE2DD8, &qword_1ECDE3A68, &unk_1DEF9B100, MEMORY[0x1E695BE98]);
  v30 = v40;
  sub_1DEF8D5E8();

  (*(v41 + 8))(v29, v30);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v4;
}

uint64_t sub_1DEE3FDB8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      sub_1DEE3FE28();
    }
  }

  return result;
}

void sub_1DEE3FE28()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[9];
  *v6 = v7;
  v8 = *MEMORY[0x1E69E8020];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v22 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_5;
  }

  v21 = v9;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled) != 1)
  {
    return;
  }

  v11 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  if (((*(v12 + 16))(v11, v12) & 1) == 0)
  {
    return;
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_14;
  }

LABEL_5:
  v13 = sub_1DEF8D508();
  __swift_project_value_buffer(v13, qword_1ECDF5FE0);
  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DEE0F000, v14, v15, "Activating IDS zone advertiser", v16, 2u);
    MEMORY[0x1E12CCD70](v16, -1, -1);
  }

  sub_1DEE400F4(*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceName), *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceName + 8));
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) == 1)
  {
    sub_1DEE43210();
  }

  v17 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed) == 1)
  {
    v18 = v21;
    v19 = v22;
    *v6 = v22;
    v18(v6, v8, v2);
    v20 = v19;
    LOBYTE(v19) = sub_1DEF8D7B8();
    v10(v6, v2);
    if (v19)
    {
      *(v1 + v17) = 1;
      sub_1DEE4254C();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1DEE400F4(char *a1, unint64_t a2)
{
  v3 = v2;
  v66 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A80, &qword_1DEF90900);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A88, &qword_1DEF90908);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A90, &qword_1DEF90910);
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + 72);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v21 = v20;
  v22 = sub_1DEF8D7B8();
  v23 = (*(v16 + 8))(v19, v15);
  if (v22)
  {
    v60 = v12;
    if (qword_1ECDE3358 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v23 = swift_once();
LABEL_3:
  v24 = qword_1ECDE3360;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v66;
  *(&v54 - 2) = a1;
  *(&v54 - 1) = v25;

  os_unfair_lock_lock((v24 + 24));
  sub_1DEE46484((v24 + 16), &v67);
  os_unfair_lock_unlock((v24 + 24));
  v26 = v67;

  v27 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper;
  v28 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper);
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper) = v26;
  v29 = v26;

  v30 = sub_1DEEE5AF0();
  v67 = v30;
  v68 = v21;
  v65 = sub_1DEF8DCF8();
  v31 = *(v65 - 8);
  v32 = *(v31 + 56);
  v63 = v31 + 56;
  v64 = v32;
  v32(v11, 1, 1, v65);
  v33 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A98, &qword_1DEF90918);
  v34 = sub_1DEE3C630();
  sub_1DEE1B548(&qword_1ECDE2D90, &qword_1ECDE3A98, &qword_1DEF90918, MEMORY[0x1E695BED8]);
  v35 = sub_1DEE1B8D8(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
  v66 = v34;
  v62 = v35;
  sub_1DEF8D5D8();
  sub_1DEE171B4(v11, &qword_1ECDE3A60, &unk_1DEF90810);

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1DEE464A0;
  *(v37 + 24) = v36;
  sub_1DEE1B548(&qword_1ECDE2DF0, &qword_1ECDE3A90, &qword_1DEF90910, MEMORY[0x1E695BE98]);
  v38 = v60;
  sub_1DEF8D5E8();

  (*(v61 + 8))(v14, v38);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  v40 = *(v3 + v27);
  if (v40)
  {
    v41 = v27;
    v42 = v11;
    v43 = v40;
    v44 = sub_1DEEE5BCC();

    v67 = v44;
    v68 = v33;
    v64(v11, 1, 1, v65);
    v45 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AA0, &qword_1DEF90920);
    sub_1DEE1B548(&unk_1ECDE2D70, &qword_1ECDE3AA0, &qword_1DEF90920, MEMORY[0x1E695BED8]);
    v46 = v57;
    sub_1DEF8D5D8();
    sub_1DEE171B4(v42, &qword_1ECDE3A60, &unk_1DEF90810);

    swift_allocObject();
    swift_weakInit();
    sub_1DEE1B548(&qword_1ECDE2DE0, &qword_1ECDE3A88, &qword_1DEF90908, MEMORY[0x1E695BE98]);
    v47 = v59;
    sub_1DEF8D5E8();

    (*(v58 + 8))(v46, v47);
    swift_beginAccess();
    sub_1DEF8D568();
    swift_endAccess();

    v48 = *(v3 + v41);
    if (v48)
    {
      v49 = v48;
      v50 = sub_1DEEE5CA8();

      v67 = v50;
      v68 = v45;
      v64(v42, 1, 1, v65);
      v51 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AA8, &qword_1DEF90928);
      sub_1DEE1B548(&unk_1ECDE2DC0, &qword_1ECDE3AA8, &qword_1DEF90928, MEMORY[0x1E695BED8]);
      v52 = v54;
      sub_1DEF8D5D8();
      sub_1DEE171B4(v42, &qword_1ECDE3A60, &unk_1DEF90810);

      swift_allocObject();
      swift_weakInit();
      sub_1DEE1B548(&qword_1ECDE2E20, &qword_1ECDE3A80, &qword_1DEF90900, MEMORY[0x1E695BE98]);
      v53 = v56;
      sub_1DEF8D5E8();

      (*(v55 + 8))(v52, v53);
      swift_beginAccess();
      sub_1DEF8D568();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1DEE40A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DEE40AD4(a1, a2);
  }

  return result;
}

void sub_1DEE40AD4(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  v10 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v18 = sub_1DEF8D788();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v2;
  v23 = *(v2 + 72);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18, v20);
  v24 = v23;
  LOBYTE(v23) = sub_1DEF8D7B8();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = (a1 + *(v10 + 24));
  if (*v25 == 0xD000000000000014 && 0x80000001DEF9BB30 == v25[1] || (sub_1DEF8E4E8() & 1) != 0)
  {
    if (qword_1ECDE2E40 == -1)
    {
LABEL_6:
      v26 = sub_1DEF8D508();
      v27 = __swift_project_value_buffer(v26, qword_1ECDF5FE0);
      sub_1DEE46C34(a1, v17, type metadata accessor for Message);
      sub_1DEE17214(v63, v9, &qword_1ECDE4890, &qword_1DEF90990);
      v28 = sub_1DEF8D4D8();
      v29 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v57 = v27;
        v31 = v30;
        v32 = swift_slowAlloc();
        v63 = a1;
        v33 = v32;
        v65[0] = v32;
        *v31 = 136446466;
        v34 = Message.description.getter();
        v36 = v35;
        sub_1DEE46C9C(v17, type metadata accessor for Message);
        v37 = sub_1DEE12A5C(v34, v36, v65);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2082;
        sub_1DEE17214(v9, v60, &qword_1ECDE4890, &qword_1DEF90990);
        v38 = sub_1DEF8D988();
        v40 = v39;
        sub_1DEE171B4(v9, &qword_1ECDE4890, &qword_1DEF90990);
        v41 = sub_1DEE12A5C(v38, v40, v65);

        *(v31 + 14) = v41;
        _os_log_impl(&dword_1DEE0F000, v28, v29, "IDS zone advertiser got message %{public}s and url %{public}s", v31, 0x16u);
        swift_arrayDestroy();
        a1 = v63;
        MEMORY[0x1E12CCD70](v33, -1, -1);
        MEMORY[0x1E12CCD70](v31, -1, -1);
      }

      else
      {

        sub_1DEE171B4(v9, &qword_1ECDE4890, &qword_1DEF90990);
        sub_1DEE46C9C(v17, type metadata accessor for Message);
      }

      v42 = *(a1 + *(v10 + 32));
      type metadata accessor for OPACKCoder();
      sub_1DEE115C8(v68);
      sub_1DEE12F7C(v68, v66);
      v43 = MEMORY[0x1E69E7CC0];
      v44 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
      v65[0] = v43;
      v65[1] = v44;
      v66[4] = v42;
      v67 = 0;
      v64[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
      v64[4] = sub_1DEE1DC98();
      v64[0] = swift_allocObject();
      sub_1DEE1DCEC(v65, v64[0] + 16);
      v45 = v59;
      ZoneVersionAdvertisement.init(from:)(v64, v59);
      sub_1DEE1EBB4(v65);
      __swift_destroy_boxed_opaque_existential_1(v68);
      sub_1DEE4608C(v45);
      v55 = type metadata accessor for ZoneVersionAdvertisement;
      v56 = v45;
      goto LABEL_15;
    }

LABEL_17:
    swift_once();
    goto LABEL_6;
  }

  if (qword_1ECDE2E40 != -1)
  {
    swift_once();
  }

  v46 = sub_1DEF8D508();
  __swift_project_value_buffer(v46, qword_1ECDF5FE0);
  sub_1DEE46C34(a1, v12, type metadata accessor for Message);
  v47 = sub_1DEF8D4D8();
  v48 = sub_1DEF8DC98();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v65[0] = v50;
    *v49 = 136446210;
    v51 = &v12[*(v10 + 24)];
    v52 = *v51;
    v53 = v51[1];

    sub_1DEE46C9C(v12, type metadata accessor for Message);
    v54 = sub_1DEE12A5C(v52, v53, v65);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_1DEE0F000, v47, v48, "IDS zone advertiser ignoring unexpected message of type %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1E12CCD70](v50, -1, -1);
    MEMORY[0x1E12CCD70](v49, -1, -1);

    return;
  }

  v55 = type metadata accessor for Message;
  v56 = v12;
LABEL_15:
  sub_1DEE46C9C(v56, v55);
}

uint64_t sub_1DEE41484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DEE46984();
  }

  return result;
}

uint64_t sub_1DEE414DC(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v2 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[0] = v4;
    v6[1] = v5;
    v7 = v2;
    sub_1DEE41558(v6);
  }

  return result;
}

void sub_1DEE41558(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(a1 + 32);
  v14 = *(v2 + 72);
  *v8 = v14;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v15 = v14;
  LOBYTE(v14) = sub_1DEF8D7B8();
  (*(v5 + 8))(v8, v4);
  if (v14)
  {
    if (qword_1ECDE2E40 == -1)
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
  v16 = sub_1DEF8D508();
  __swift_project_value_buffer(v16, qword_1ECDF5FE0);
  sub_1DEE4650C(v9, v10, v11, v12);
  v17 = sub_1DEF8D4D8();
  v18 = sub_1DEF8DCB8();
  sub_1DEE46550(v9, v10, v11, v12);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136446210;
    v24[0] = v9;
    v24[1] = v10;
    v24[2] = v11;
    v24[3] = v12;
    v25 = v13;
    sub_1DEE4650C(v9, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB0, &unk_1DEF90930);
    v21 = sub_1DEF8D988();
    v23 = sub_1DEE12A5C(v21, v22, &v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DEE0F000, v17, v18, "IDS zone advertiser didUpdatePairedDevice to %{public}s; sending latest advertisment", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12CCD70](v20, -1, -1);
    MEMORY[0x1E12CCD70](v19, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) = 1;
  sub_1DEE43210();
}

void sub_1DEE41818()
{
  v2 = v0;
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 72);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1DEF8D7B8();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    v10 = swift_once();
    goto LABEL_4;
  }

  v1 = v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID;
  v7 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID);
  v10 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID + 8);
  if (v10)
  {
LABEL_10:

    return;
  }

  if (qword_1ECDE33F0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](v10);
  v19[-4] = v7;
  v19[-3] = 0;
  v19[-2] = sub_1DEE4467C;
  v19[-1] = v2;
  sub_1DEF8DD18();
  if (qword_1ECDE2E40 != -1)
  {
    swift_once();
  }

  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF5FE0);

  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136446210;
    sub_1DEE41818();
    v18 = sub_1DEE12A5C(v16, v17, v19);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Found local device ID: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12CCD70](v15, -1, -1);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  if (*(v1 + 8))
  {

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1DEE41B30(uint64_t a1)
{
  v2 = IDSCopyLocalDeviceUniqueID();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DEF8D948();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID);
  *v7 = v4;
  v7[1] = v6;
}

uint64_t IDSZoneAdvertiser.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement, &qword_1ECDE3A78, &qword_1DEF90820);

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement, &qword_1ECDE3A78, &qword_1DEF90820);

  return v0;
}

uint64_t IDSZoneAdvertiser.__deallocating_deinit()
{
  IDSZoneAdvertiser.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1DEE41DA4(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  sub_1DEF8DD18();
  *(a1 + 8) = *(a1 + 9);
  return sub_1DEE3F18C;
}

uint64_t IDSZoneAdvertiser.advertise(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DEF8D698();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D6D8();
  v7 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ZoneVersionAdvertisement(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v17 = v1[9];
  sub_1DEE46C34(a1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ZoneVersionAdvertisement);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1DEE442B0(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = sub_1DEE44314;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_10;
  v15 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B8D8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v6, v15);
  _Block_release(v15);
  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);
}

Swift::Void __swiftcall IDSZoneAdvertiser.subscribe()()
{
  v1 = sub_1DEF8D698();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D6D8();
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 72);
  aBlock[4] = sub_1DEE443A4;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_13;
  v8 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B8D8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_1DEE4254C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - v5;
  v7 = type metadata accessor for ZoneVersionAdvertisement(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = sub_1DEF8D788();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 72);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  v23 = sub_1DEF8D7B8();
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v25(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_11;
  }

  v26 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement;
  swift_beginAccess();
  sub_1DEE17214(v1 + v26, v6, &qword_1ECDE3A78, &qword_1DEF90820);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1DEE171B4(v6, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  v24 = v15;
  sub_1DEE442B0(v6, v15);
  v23 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed) == 1 && *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled) == 1)
  {
    v28 = v7;
    v55 = v8;
    if (qword_1ECDE2E40 != -1)
    {
      swift_once();
    }

    v29 = sub_1DEF8D508();
    __swift_project_value_buffer(v29, qword_1ECDF5FE0);
    v30 = v56;
    sub_1DEE46C34(v24, v56, type metadata accessor for ZoneVersionAdvertisement);
    v31 = sub_1DEF8D4D8();
    v32 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v33 = 136446210;
      v58[0] = 0;
      v58[1] = 0xE000000000000000;
      sub_1DEF8DF28();

      strcpy(v58, "remoteDevice: ");
      HIBYTE(v58[1]) = -18;
      v34 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
      MEMORY[0x1E12CB180](v34);

      MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
      type metadata accessor for ZoneVersion(0);
      v35 = sub_1DEF8D858();
      MEMORY[0x1E12CB180](v35);

      v36 = v58[0];
      v37 = v58[1];
      sub_1DEE46C9C(v30, type metadata accessor for ZoneVersionAdvertisement);
      v38 = sub_1DEE12A5C(v36, v37, &v59);

      *(v33 + 4) = v38;
      v39 = v33;
      _os_log_impl(&dword_1DEE0F000, v31, v32, "subscribed, enabled, and got advertisement:%{public}s", v33, 0xCu);
      v40 = v54;
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1E12CCD70](v40, -1, -1);
      MEMORY[0x1E12CCD70](v39, -1, -1);
    }

    else
    {

      sub_1DEE46C9C(v30, type metadata accessor for ZoneVersionAdvertisement);
    }

    v52 = v57;
    (*(v55 + 56))(v57, 1, 1, v28);
    swift_beginAccess();
    sub_1DEE29D60(v52, v1 + v26, &qword_1ECDE3A78, &qword_1DEF90820);
    swift_endAccess();
    sub_1DEF8D588();
    v51 = v24;
    return sub_1DEE46C9C(v51, type metadata accessor for ZoneVersionAdvertisement);
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v41 = sub_1DEF8D508();
  __swift_project_value_buffer(v41, qword_1ECDF5FE0);
  sub_1DEE46C34(v24, v10, type metadata accessor for ZoneVersionAdvertisement);
  swift_retain_n();
  v42 = sub_1DEF8D4D8();
  v43 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59 = v45;
    *v44 = 67240706;
    *(v44 + 4) = *(v1 + v23);

    *(v44 + 8) = 1026;
    *(v44 + 10) = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled);

    *(v44 + 14) = 2082;
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    sub_1DEF8DF28();

    strcpy(v58, "remoteDevice: ");
    HIBYTE(v58[1]) = -18;
    v46 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
    MEMORY[0x1E12CB180](v46);

    MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
    type metadata accessor for ZoneVersion(0);
    v47 = sub_1DEF8D858();
    MEMORY[0x1E12CB180](v47);

    v48 = v58[0];
    v49 = v58[1];
    sub_1DEE46C9C(v10, type metadata accessor for ZoneVersionAdvertisement);
    v50 = sub_1DEE12A5C(v48, v49, &v59);

    *(v44 + 16) = v50;
    _os_log_impl(&dword_1DEE0F000, v42, v43, "received advertisement, but _queue_subscribed:%{BOOL,public}d _queue_enabled:%{BOOL,public}d so ignoring:%{public}s", v44, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E12CCD70](v45, -1, -1);
    MEMORY[0x1E12CCD70](v44, -1, -1);
  }

  else
  {

    sub_1DEE46C9C(v10, type metadata accessor for ZoneVersionAdvertisement);
  }

  v51 = v24;
  return sub_1DEE46C9C(v51, type metadata accessor for ZoneVersionAdvertisement);
}

uint64_t sub_1DEE42DAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28[-v3];
  v5 = type metadata accessor for ZoneVersionAdvertisement(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28[-v10];
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v1 + 72);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled))
  {
    return result;
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v20 = sub_1DEF8D508();
  __swift_project_value_buffer(v20, qword_1ECDF5FE0);
  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Deactivating IDS zone advertiser", v23, 2u);
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }

  v24 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper);
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper) = 0;

  v25 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapperSubscriptions;
  swift_beginAccess();
  *(v1 + v25) = MEMORY[0x1E69E7CD0];

  v26 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement;
  swift_beginAccess();
  sub_1DEE17214(v1 + v26, v4, &qword_1ECDE3A78, &qword_1DEF90820);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DEE171B4(v4, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    sub_1DEE442B0(v4, v11);
    sub_1DEE46C34(v11, v8, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    *&v8[*(v5 + 20)] = sub_1DEEA29E4(MEMORY[0x1E69E7CC0]);
    sub_1DEE43580(v8, 1);
    sub_1DEE46C9C(v8, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE46C9C(v11, type metadata accessor for ZoneVersionAdvertisement);
    *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) = 1;
  }

  v27 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscriptionTask;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscriptionTask))
  {

    sub_1DEF8DB88();
  }

  *(v1 + v27) = 0;
}

void sub_1DEE43210()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + 72);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled) == 1)
  {
    v15 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending;
    if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) == 1)
    {
      v16 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement;
      swift_beginAccess();
      sub_1DEE17214(v0 + v16, v3, &qword_1ECDE3A78, &qword_1DEF90820);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_1DEE171B4(v3, &qword_1ECDE3A78, &qword_1DEF90820);
      }

      else
      {
        sub_1DEE442B0(v3, v7);
        *(v0 + v15) = 0;
        sub_1DEE43580(v7, 0);
        sub_1DEE46C9C(v7, type metadata accessor for ZoneVersionAdvertisement);
      }
    }

    return;
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v17 = sub_1DEF8D508();
  __swift_project_value_buffer(v17, qword_1ECDF5FE0);
  v18 = sub_1DEF8D4D8();
  v19 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DEE0F000, v18, v19, "advertiser will advertise when enabled", v20, 2u);
    MEMORY[0x1E12CCD70](v20, -1, -1);
  }
}

uint64_t sub_1DEE43580(uint64_t a1, int a2)
{
  v24 = a2;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23[-v8];
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v2 + 72);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask;
    if (*(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask))
    {

      sub_1DEF8DB88();
    }

    v19 = sub_1DEF8DB78();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    sub_1DEE46C34(a1, &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ZoneVersionAdvertisement);
    v21 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    sub_1DEE442B0(&v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v21);
    *(v22 + v21 + v6) = v24 & 1;
    *(v2 + v18) = sub_1DEE45D8C(0, 0, v9, &unk_1DEF90948, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE438A4(uint64_t a1)
{
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed;
  if ((*(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed) & 1) == 0)
  {
    v8 = *(a1 + 72);
    *v6 = v8;
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
    v9 = v8;
    LOBYTE(v8) = sub_1DEF8D7B8();
    (*(v3 + 8))(v6, v2);
    if (v8)
    {
      *(a1 + v7) = 1;
      sub_1DEE4254C();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1DEE439CC(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_1DEF8D698();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1DEF8D6D8();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DEF8D758();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  v10 = type metadata accessor for ZoneVersionAdvertisement(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD8, &qword_1DEF90998);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v63 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v49 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v24 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement;
  swift_beginAccess();
  v64 = a2;
  sub_1DEE46C34(a2, v23, type metadata accessor for ZoneVersionAdvertisement);
  v61 = *(v11 + 56);
  v61(v23, 0, 1, v10);
  v25 = *(v14 + 56);
  v65 = a1;
  v62 = v24;
  v26 = a1 + v24;
  v27 = v10;
  sub_1DEE17214(v26, v16, &qword_1ECDE3A78, &qword_1DEF90820);
  sub_1DEE17214(v23, &v16[v25], &qword_1ECDE3A78, &qword_1DEF90820);
  v28 = *(v11 + 48);
  if (v28(v16, 1, v10) == 1)
  {
    sub_1DEE171B4(v23, &qword_1ECDE3A78, &qword_1DEF90820);
    if (v28(&v16[v25], 1, v10) == 1)
    {
      return sub_1DEE171B4(v16, &qword_1ECDE3A78, &qword_1DEF90820);
    }

    goto LABEL_6;
  }

  v30 = v60;
  sub_1DEE17214(v16, v60, &qword_1ECDE3A78, &qword_1DEF90820);
  if (v28(&v16[v25], 1, v10) == 1)
  {
    sub_1DEE171B4(v23, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE46C9C(v30, type metadata accessor for ZoneVersionAdvertisement);
LABEL_6:
    v31 = &qword_1ECDE3AD8;
    v32 = &qword_1DEF90998;
    v33 = v16;
    goto LABEL_7;
  }

  v46 = v49;
  sub_1DEE442B0(&v16[v25], v49);
  if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(v30, v46))
  {
    sub_1DEEDB5A8(*(v30 + *(v10 + 20)), *(v46 + *(v10 + 20)));
    v48 = v47;
    sub_1DEE171B4(v23, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE46C9C(v46, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE46C9C(v30, type metadata accessor for ZoneVersionAdvertisement);
    result = sub_1DEE171B4(v16, &qword_1ECDE3A78, &qword_1DEF90820);
    v34 = v65;
    if (v48)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_1DEE171B4(v23, &qword_1ECDE3A78, &qword_1DEF90820);
  sub_1DEE46C9C(v46, type metadata accessor for ZoneVersionAdvertisement);
  sub_1DEE46C9C(v30, type metadata accessor for ZoneVersionAdvertisement);
  v33 = v16;
  v31 = &qword_1ECDE3A78;
  v32 = &qword_1DEF90820;
LABEL_7:
  sub_1DEE171B4(v33, v31, v32);
  v34 = v65;
LABEL_8:
  v35 = v63;
  sub_1DEE46C34(v64, v63, type metadata accessor for ZoneVersionAdvertisement);
  v61(v35, 0, 1, v27);
  v36 = v62;
  swift_beginAccess();
  sub_1DEE29D60(v35, v34 + v36, &qword_1ECDE3A78, &qword_1DEF90820);
  result = swift_endAccess();
  if ((*(v34 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) & 1) == 0)
  {
    *(v34 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) = 1;
    v65 = *(v34 + 72);
    v37 = v50;
    sub_1DEF8D738();
    if (qword_1ECDE3310 != -1)
    {
      swift_once();
    }

    v38 = sub_1DEF8D688();
    v39 = __swift_project_value_buffer(v38, qword_1ECDE3318);
    v40 = v51;
    MEMORY[0x1E12CAF40](v37, v39);
    v64 = *(v52 + 8);
    v41 = v53;
    v64(v37, v53);
    aBlock[4] = sub_1DEE46BCC;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_97;
    v42 = _Block_copy(aBlock);

    v43 = v54;
    sub_1DEF8D6B8();
    v66 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B8D8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v44 = v56;
    v45 = v59;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB490](v40, v43, v44, v42);
    _Block_release(v42);
    (*(v58 + 8))(v44, v45);
    (*(v55 + 8))(v43, v57);
    v64(v40, v41);
  }

  return result;
}

uint64_t sub_1DEE442B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE44314()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1DEE439CC(v2, v3);
}

uint64_t type metadata accessor for IDSZoneAdvertiser(uint64_t a1)
{
  result = qword_1ECDE32C0;
  if (!qword_1ECDE32C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEE44400(uint64_t a1)
{
  sub_1DEE44624(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DEE44624(uint64_t a1)
{
  if (!qword_1ECDE2EF8)
  {
    type metadata accessor for ZoneVersionAdvertisement(255);
    v1 = sub_1DEF8DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE2EF8);
    }
  }
}

uint64_t sub_1DEE446A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 192) = a6;
  *(v6 + 136) = a4;
  *(v6 + 144) = a5;
  v7 = type metadata accessor for ZoneVersionAdvertisement(0);
  *(v6 + 152) = v7;
  v8 = *(v7 - 8);
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 + 64);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DEE4477C, 0, 0);
}

uint64_t sub_1DEE4477C()
{
  v31 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (v0 + 16);
    if (qword_1ECDE2E40 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 184);
    v5 = *(v0 + 144);
    v6 = sub_1DEF8D508();
    __swift_project_value_buffer(v6, qword_1ECDF5FE0);
    sub_1DEE46C34(v5, v4, type metadata accessor for ZoneVersionAdvertisement);
    v7 = sub_1DEF8D4D8();
    v8 = sub_1DEF8DCB8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 184);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136446210;
      sub_1DEF8DF28();

      strcpy(v30, "remoteDevice: ");
      HIBYTE(v30[1]) = -18;
      v13 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
      MEMORY[0x1E12CB180](v13);

      MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
      type metadata accessor for ZoneVersion(0);
      v14 = sub_1DEF8D858();
      MEMORY[0x1E12CB180](v14);

      sub_1DEE46C9C(v10, type metadata accessor for ZoneVersionAdvertisement);
      v15 = sub_1DEE12A5C(v30[0], v30[1], &v29);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DEE0F000, v7, v8, "IDS advertiser advertising %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E12CCD70](v12, -1, -1);
      v16 = v11;
      v3 = (v0 + 16);
      MEMORY[0x1E12CCD70](v16, -1, -1);
    }

    else
    {

      sub_1DEE46C9C(v10, type metadata accessor for ZoneVersionAdvertisement);
    }

    v17 = *(v0 + 176);
    v18 = *(v0 + 160);
    v19 = *(v2 + 72);
    sub_1DEE46C34(*(v0 + 144), v17, type metadata accessor for ZoneVersionAdvertisement);
    v20 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    sub_1DEE442B0(v17, v21 + v20);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1DEE46918;
    *(v22 + 24) = v21;
    *(v0 + 48) = sub_1DEE13B20;
    *(v0 + 56) = v22;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DEE134F4;
    *(v0 + 40) = &block_descriptor_80;
    v23 = _Block_copy(v3);

    dispatch_sync(v19, v23);
    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      __break(1u);
      return result;
    }

    if (*(v0 + 192) != 1)
    {
      goto LABEL_11;
    }

    v25 = *(v2 + 72);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1DEE4697C;
    *(v26 + 24) = v2;
    *(v0 + 96) = sub_1DEE46D40;
    *(v0 + 104) = v26;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1DEE134F4;
    *(v0 + 88) = &block_descriptor_87;
    v27 = _Block_copy((v0 + 64));

    dispatch_sync(v25, v27);

    _Block_release(v27);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
LABEL_11:
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

void sub_1DEE44EB8(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v120 - v6;
  v8 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + 72);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  v18 = *(v11 + 8);
  v17 = (v11 + 8);
  v18(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_4;
  }

  v19 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper);
  if (!v19)
  {
    if (qword_1ECDE2E40 != -1)
    {
      swift_once();
    }

    v28 = sub_1DEF8D508();
    __swift_project_value_buffer(v28, qword_1ECDF5FE0);

    v29 = sub_1DEF8D4D8();
    v30 = sub_1DEF8DC98();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v134 = v32;
      *v31 = 136446210;
      sub_1DEE41818();
      v35 = sub_1DEE12A5C(v33, v34, &v134);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1DEE0F000, v29, v30, "(%{public}s) Cannot send advertisement as we have no IDS service wrapper", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E12CCD70](v32, -1, -1);
      MEMORY[0x1E12CCD70](v31, -1, -1);
    }

    return;
  }

  v137 = type metadata accessor for ZoneVersionAdvertisement(0);
  v138 = sub_1DEE1B8D8(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v134);
  sub_1DEE46C34(a1, boxed_opaque_existential_1, type metadata accessor for ZoneVersionAdvertisement);
  v21 = qword_1ED786060;
  v17 = v19;
  if (v21 != -1)
  {
    goto LABEL_33;
  }

LABEL_4:
  v22 = xmmword_1ED786068;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v22;
  *(inited + 24) = 0;
  v24 = sub_1DEE29274(&v134);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(&v134);
    return;
  }

  v25 = sub_1DEE1187C(v24);
  v27 = v26;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v134);
  v36 = sub_1DEF8D3F8();
  v129 = v27;
  v130 = v25;
  v37 = v36;
  v38 = *(v36 - 8);
  v132 = v17;
  v39 = *(v38 + 56);
  v39(v7, 1, 1, v36);
  v128 = 0x80000001DEF9BB30;
  sub_1DEE41818();
  v127 = v40;
  v126 = v41;
  v131 = 0;
  v42 = v133;
  sub_1DEF8D3E8();
  v43 = v8[5];
  v39((v42 + v43), 1, 1, v37);
  v44 = v132;
  v45 = sub_1DEE29D60(v7, v42 + v43, &unk_1ECDE3E80, &unk_1DEF90970);
  v46 = (v42 + v8[6]);
  *v46 = 0xD000000000000014;
  v46[1] = v128;
  v47 = (v42 + v8[7]);
  v48 = v126;
  *v47 = v127;
  v47[1] = v48;
  *(v42 + v8[8]) = v22;
  v49 = (v42 + v8[9]);
  v50 = v129;
  *v49 = v130;
  v49[1] = v50;
  v51 = *&v44[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceLock];
  MEMORY[0x1EEE9AC00](v45);
  *(&v120 - 2) = v44;
  MEMORY[0x1EEE9AC00](v52);
  *(&v120 - 2) = sub_1DEE46B38;
  *(&v120 - 1) = v53;

  os_unfair_lock_lock(v51 + 4);
  v54 = v131;
  sub_1DEE15434(v55);
  if (!v54)
  {
    os_unfair_lock_unlock(v51 + 4);

    v56 = v135;
    if (v135)
    {
      v57 = v134;
      v58 = v137;
      v130 = v136;
      LODWORD(v131) = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
      v59 = swift_initStackObject();
      *(v59 + 16) = xmmword_1DEF907F0;
      *(v59 + 32) = v57;
      *(v59 + 40) = v56;

      v60 = sub_1DEEA3AD8(v59);
      swift_setDeallocating();
      v61 = sub_1DEE46B54(v59 + 32);
      MEMORY[0x1EEE9AC00](v61);
      v62 = v133;
      *(&v120 - 4) = v63;
      *(&v120 - 3) = v62;
      *(&v120 - 2) = v60;
      *(&v120 - 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC8, &qword_1DEF90980);
      sub_1DEF8DD18();

      v129 = v134;
      LODWORD(v124) = v135;
      if (qword_1ECDE2E40 != -1)
      {
        swift_once();
      }

      v64 = sub_1DEF8D508();
      v65 = __swift_project_value_buffer(v64, qword_1ECDF5FE0);

      v66 = v130;
      v67 = v131;
      sub_1DEE4650C(v57, v56, v130, v58);
      v125 = v65;
      v68 = sub_1DEF8D4D8();
      v69 = sub_1DEF8DCB8();

      sub_1DEE46550(v57, v56, v66, v58);
      v123 = v69;
      v70 = os_log_type_enabled(v68, v69);
      v128 = v58;
      v127 = v57;
      v126 = v56;
      if (v70)
      {
        v71 = v57;
        v72 = swift_slowAlloc();
        v120 = v72;
        v122 = swift_slowAlloc();
        v139 = v122;
        *v72 = 136446466;
        v121 = v68;
        sub_1DEE41818();
        v75 = sub_1DEE12A5C(v73, v74, &v139);

        v76 = v120;
        *(v120 + 1) = v75;
        *(v76 + 6) = 2080;
        v77 = v76;
        v134 = v71;
        v135 = v56;
        v136 = v66;
        v137 = v58;
        LOBYTE(v138) = v67;

        v78 = PairedDevice.description.getter();
        v80 = v79;

        v81 = sub_1DEE12A5C(v78, v80, &v139);

        *(v77 + 14) = v81;
        v68 = v121;
        _os_log_impl(&dword_1DEE0F000, v121, v123, "(%{public}s) Sending advertisement to %s", v77, 0x16u);
        v82 = v122;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v82, -1, -1);
        MEMORY[0x1E12CCD70](v77, -1, -1);
      }

      v44 = v132;
      if (v124)
      {

        v83 = v127;
        v84 = v126;
        v85 = v130;
        v86 = v128;
        v87 = v131;
        sub_1DEE4650C(v127, v126, v130, v128);
        sub_1DEE39150(v129, 1);
        v88 = sub_1DEF8D4D8();
        v89 = sub_1DEF8DC98();

        sub_1DEE46550(v83, v84, v85, v86);
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v124 = v88;
          v91 = v90;
          v125 = swift_slowAlloc();
          v139 = v125;
          *v91 = 136446722;
          v123 = v89;
          sub_1DEE41818();
          v94 = v85;
          v95 = sub_1DEE12A5C(v92, v93, &v139);

          *(v91 + 4) = v95;
          *(v91 + 12) = 2080;
          v134 = v83;
          v135 = v84;
          v136 = v94;
          v137 = v86;
          LOBYTE(v138) = v87;
          v96 = PairedDevice.description.getter();
          v98 = v97;

          v99 = sub_1DEE12A5C(v96, v98, &v139);

          *(v91 + 14) = v99;
          *(v91 + 22) = 2082;
          v100 = v129;
          v134 = v129;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
          v101 = sub_1DEF8D988();
          v103 = sub_1DEE12A5C(v101, v102, &v139);

          *(v91 + 24) = v103;
          v104 = v124;
          _os_log_impl(&dword_1DEE0F000, v124, v123, "(%{public}s) Error sending advertisement to %s: %{public}s", v91, 0x20u);
          v105 = v125;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v105, -1, -1);
          MEMORY[0x1E12CCD70](v91, -1, -1);

          v106 = v100;
        }

        else
        {
          sub_1DEE46550(v83, v84, v85, v86);
          v119 = v129;
          sub_1DEE39214(v129, 1);

          v106 = v119;
        }

        sub_1DEE39214(v106, 1);
        goto LABEL_31;
      }

      sub_1DEE46550(v127, v126, v130, v128);

      v108 = sub_1DEF8D4D8();
      v109 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v108, v109))
      {
LABEL_28:

LABEL_31:
        sub_1DEE46C9C(v133, type metadata accessor for Message);
        return;
      }

      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v134 = v111;
      *v110 = 136446210;
      sub_1DEE41818();
      v118 = sub_1DEE12A5C(v116, v117, &v134);

      *(v110 + 4) = v118;
      v115 = "(%{public}s) Sucessfully sent advertisement";
    }

    else
    {
      if (qword_1ECDE2E40 != -1)
      {
        swift_once();
      }

      v107 = sub_1DEF8D508();
      __swift_project_value_buffer(v107, qword_1ECDF5FE0);

      v108 = sub_1DEF8D4D8();
      v109 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v108, v109))
      {
        goto LABEL_28;
      }

      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v134 = v111;
      *v110 = 136446210;
      sub_1DEE41818();
      v114 = sub_1DEE12A5C(v112, v113, &v134);

      *(v110 + 4) = v114;
      v115 = "(%{public}s) No current paired device, so couldn't send advertisement";
    }

    _os_log_impl(&dword_1DEE0F000, v108, v109, v115, v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x1E12CCD70](v111, -1, -1);
    MEMORY[0x1E12CCD70](v110, -1, -1);
    goto LABEL_28;
  }

  os_unfair_lock_unlock(v51 + 4);
  __break(1u);
}

uint64_t sub_1DEE45C50(uint64_t a1)
{
  if (qword_1ECDE2E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF5FE0);
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "advertisement task is shutting down", v5, 2u);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask;
  if (*(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask))
  {

    sub_1DEF8DB88();
  }

  *(a1 + v6) = 0;
}

uint64_t sub_1DEE45D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DEE17214(a3, v25 - v10, &qword_1ECDE3AB8, &qword_1DEF90AD0);
  v12 = sub_1DEF8DB78();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DEE171B4(v11, &qword_1ECDE3AB8, &qword_1DEF90AD0);
  }

  else
  {
    sub_1DEF8DB68();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DEF8DB48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DEF8D998() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1DEE171B4(a3, &qword_1ECDE3AB8, &qword_1DEF90AD0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DEE171B4(a3, &qword_1ECDE3AB8, &qword_1DEF90AD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DEE4608C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 72);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1DEF8D7B8();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    sub_1DEE46C34(a1, v5, type metadata accessor for ZoneVersionAdvertisement);
    v14 = type metadata accessor for ZoneVersionAdvertisement(0);
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    v15 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement;
    swift_beginAccess();
    sub_1DEE29D60(v5, v1 + v15, &qword_1ECDE3A78, &qword_1DEF90820);
    swift_endAccess();
    return sub_1DEE4254C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE46294(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DEE4638C;

  return v6(a1);
}

uint64_t sub_1DEE4638C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DEE464A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD0, &qword_1DEF90988);
  return v3(a1, a1 + *(v4 + 48));
}

void sub_1DEE4650C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_1DEE46550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1DEE46594(uint64_t a1)
{
  v4 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DEE466B4;

  return sub_1DEE446A4(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_1DEE466B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DEE467A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DEE46D44;

  return sub_1DEE46294(a1, v4);
}

uint64_t sub_1DEE46860(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DEE466B4;

  return sub_1DEE46294(a1, v4);
}

void sub_1DEE46918()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1DEE44CF0(v2, v3);
}

void sub_1DEE46984()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 72);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1DEF8D7B8();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_1ECDE2E40 == -1)
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
  v8 = sub_1DEF8D508();
  __swift_project_value_buffer(v8, qword_1ECDF5FE0);
  v9 = sub_1DEF8D4D8();
  v10 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DEE0F000, v9, v10, "IDS zone advertiser devicesDidChange", v11, 2u);
    MEMORY[0x1E12CCD70](v11, -1, -1);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1DEE46C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE46C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PublicationMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEE46DEC()
{
  result = qword_1ECDE3AE0;
  if (!qword_1ECDE3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3AE0);
  }

  return result;
}

uint64_t sub_1DEE46ECC(char a1)
{
  v3 = sub_1DEF8D698();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D6D8();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1DEE471A8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

void sub_1DEE471A8()
{
  if (*(v0 + 16) == 1)
  {
    sub_1DEE471E0();
  }

  else
  {
    sub_1DEE473FC();
  }
}

void sub_1DEE471E0()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  v8 = sub_1DEF8D7B8();
  v10 = *(v2 + 8);
  v9 = v2 + 8;
  v10(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled))
  {
    return;
  }

  v9 = v0;
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF6028);
  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Enabling zone advertiser", v14, 2u);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice;
  swift_beginAccess();
  *(v9 + v15) = MEMORY[0x1E69E7CC8];

  *(v9 + v8) = 1;
  sub_1DEE481C0();
}

uint64_t sub_1DEE473FC()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  v8 = sub_1DEF8D7B8();
  v10 = *(v2 + 8);
  v9 = v2 + 8;
  result = v10(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) != 1)
  {
    return result;
  }

  v9 = v0;
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF6028);
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Disabling zone advertiser", v15, 2u);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  *(v9 + v8) = 0;
  return sub_1DEE490B4();
}

uint64_t (*sub_1DEE475E4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1DEF8DD18();
  *(a1 + 8) = *(a1 + 9);
  return sub_1DEE47674;
}

uint64_t sub_1DEE4769C()
{
  v0 = sub_1DEF8D688();
  __swift_allocate_value_buffer(v0, qword_1ECDE3000);
  *__swift_project_value_buffer(v0, qword_1ECDE3000) = 500;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_1DEE4772C()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEE1B548(&qword_1ECDE2D28, &qword_1ECDE3A58, &qword_1DEF937F0, MEMORY[0x1E695BF88]);
    v2 = sub_1DEF8D5B8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1DEE47820(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1DEE4772C();
  return sub_1DEE47868;
}

uint64_t StatusKitZoneAdvertiser.__allocating_init(key:firstLockStateProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  StatusKitZoneAdvertiser.init(key:firstLockStateProvider:)(a1, a2, a3);
  return v6;
}

uint64_t StatusKitZoneAdvertiser.init(key:firstLockStateProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A68, &unk_1DEF9B100);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v33 - v9;
  v10 = sub_1DEF8D4C8();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AE8, &unk_1DEF90A30);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v33 - v13;
  v14 = sub_1DEF8DD08();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher) = 0;
  v19 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__zoneVersionPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  swift_allocObject();
  *(v3 + v19) = sub_1DEF8D598();
  v34 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue;
  sub_1DEE3C630();
  v33 = "IDSZoneAdvertisement";
  sub_1DEF8D6C8();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B920(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  (*(v35 + 104))(v16, *MEMORY[0x1E69E8098], v36);
  *(v3 + v34) = sub_1DEF8DD38();
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client) = 0;
  v20 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement;
  v21 = type metadata accessor for ZoneVersionAdvertisement(0);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscribed) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) = 0;
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice) = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_subscriptions) = MEMORY[0x1E69E7CD0];
  (*(v39 + 104))(v37, *MEMORY[0x1E69AD348], v40);
  sub_1DEE1B920(&qword_1ECDE2F10, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
  sub_1DEE1B920(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
  v22 = v38;
  sub_1DEF8D4A8();
  (*(v41 + 32))(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_key, v22, v42);
  v23 = v45;
  sub_1DEE29594(v45, v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider);
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v50 = (*(v25 + 8))(v24, v25);
  v26 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  v51 = v26;
  v27 = sub_1DEF8DCF8();
  v28 = v46;
  (*(*(v27 - 8) + 56))(v46, 1, 1, v27);
  v29 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE1B548(&qword_1ECDE2D68, &qword_1ECDE3A70, &unk_1DEF90A40, MEMORY[0x1E695BED8]);
  sub_1DEE1B920(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
  v30 = v47;
  sub_1DEF8D5D8();
  sub_1DEE171B4(v28, &qword_1ECDE3A60, &unk_1DEF90810);

  swift_allocObject();
  swift_weakInit();
  sub_1DEE1B548(&qword_1ECDE2DD8, &qword_1ECDE3A68, &unk_1DEF9B100, MEMORY[0x1E695BE98]);
  v31 = v48;
  sub_1DEF8D5E8();

  (*(v49 + 8))(v30, v31);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v4;
}

uint64_t sub_1DEE48150(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      sub_1DEE481C0();
    }
  }

  return result;
}

void sub_1DEE481C0()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) != 1)
  {
    return;
  }

  v9 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider + 24);
  v10 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider), v9);
  if (((*(v10 + 16))(v9, v10) & 1) == 0)
  {
    return;
  }

  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v11 = sub_1DEF8D508();
  __swift_project_value_buffer(v11, qword_1ECDF6028);
  v12 = sub_1DEF8D4D8();
  v13 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DEE0F000, v12, v13, "Activating zone advertiser", v14, 2u);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }

  sub_1DEF8D448();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client) = sub_1DEF8D438();

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) == 1)
  {
    sub_1DEE49520();
  }

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscribed) == 1)
  {
    sub_1DEE498AC();
  }
}

uint64_t sub_1DEE484B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_incomingAdvertisementsByRemoteDevice;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (!*(v12 + 16))
  {
    goto LABEL_5;
  }

  v13 = sub_1DEE13224(a2, a3);
  if ((v14 & 1) == 0)
  {

LABEL_5:
    v20 = type metadata accessor for ZoneVersionAdvertisement(0);
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    v19 = 0;
    goto LABEL_6;
  }

  v15 = v13;
  v16 = *(v12 + 56);
  v17 = type metadata accessor for ZoneVersionAdvertisement(0);
  v18 = *(v17 - 8);
  sub_1DEE4DB84(v16 + *(v18 + 72) * v15, v10, type metadata accessor for ZoneVersionAdvertisement);

  v19 = 1;
  (*(v18 + 56))(v10, 0, 1, v17);
LABEL_6:
  result = sub_1DEE171B4(v10, &qword_1ECDE3A78, &qword_1DEF90820);
  *a4 = v19;
  return result;
}

uint64_t StatusKitZoneAdvertiser.deinit()
{
  v1 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_key;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AE8, &unk_1DEF90A30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_firstLockStateProvider));

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement, &qword_1ECDE3A78, &qword_1DEF90820);

  return v0;
}

uint64_t StatusKitZoneAdvertiser.__deallocating_deinit()
{
  StatusKitZoneAdvertiser.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1DEE488EC(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  sub_1DEF8DD18();
  *(a1 + 8) = *(a1 + 9);
  return sub_1DEE47674;
}

uint64_t StatusKitZoneAdvertiser.advertise(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DEF8D698();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D6D8();
  v7 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ZoneVersionAdvertisement(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v17 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  sub_1DEE4DB84(a1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ZoneVersionAdvertisement);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1DEE442B0(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = sub_1DEE4CAB8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_10_0;
  v15 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v6, v15);
  _Block_release(v15);
  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);
}

Swift::Void __swiftcall StatusKitZoneAdvertiser.subscribe()()
{
  v1 = sub_1DEF8D698();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D6D8();
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  aBlock[4] = sub_1DEE4CB48;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_13_0;
  v8 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_1DEE490B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for ZoneVersionAdvertisement(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled))
  {
    return result;
  }

  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v20 = sub_1DEF8D508();
  __swift_project_value_buffer(v20, qword_1ECDF6028);
  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Deactivating zone advertiser", v23, 2u);
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }

  v24 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement;
  swift_beginAccess();
  sub_1DEE4DC4C(v1 + v24, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DEE171B4(v4, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    sub_1DEE442B0(v4, v11);
    v25 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);
    if (v25)
    {
      sub_1DEE4DB84(v11, v8, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);

      *&v8[*(v5 + 20)] = sub_1DEEA29E4(MEMORY[0x1E69E7CC0]);
      sub_1DEE49C5C(v8, v25, 1);

      sub_1DEE4DBEC(v8, type metadata accessor for ZoneVersionAdvertisement);
      sub_1DEE4DBEC(v11, type metadata accessor for ZoneVersionAdvertisement);
      *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) = 1;
    }

    else
    {
      sub_1DEE4DBEC(v11, type metadata accessor for ZoneVersionAdvertisement);
    }
  }

  v26 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask))
  {

    sub_1DEF8DB88();
  }

  *(v1 + v26) = 0;

  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client) = 0;
}

void sub_1DEE49520()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) == 1)
  {
    v15 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);
    if (v15)
    {
      v16 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending;
      if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementPending) == 1)
      {
        v17 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_latestAdvertisement;
        swift_beginAccess();
        sub_1DEE4DC4C(v0 + v17, v3);
        if ((*(v5 + 48))(v3, 1, v4) == 1)
        {
          sub_1DEE171B4(v3, &qword_1ECDE3A78, &qword_1DEF90820);
        }

        else
        {
          sub_1DEE442B0(v3, v7);
          *(v0 + v16) = 0;

          sub_1DEE49C5C(v7, v15, 0);

          sub_1DEE4DBEC(v7, type metadata accessor for ZoneVersionAdvertisement);
        }
      }
    }

    return;
  }

  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = sub_1DEF8D508();
  __swift_project_value_buffer(v18, qword_1ECDF6028);
  v19 = sub_1DEF8D4D8();
  v20 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DEE0F000, v19, v20, "Zone advertiser will advertise when enabled", v21, 2u);
    MEMORY[0x1E12CCD70](v21, -1, -1);
  }
}

uint64_t sub_1DEE498AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1DEF8D788();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1DEF8D7B8();
  result = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v9 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_client);
  if (!v9)
  {
    return result;
  }

  v13 = qword_1ECDE2E58;

  if (v13 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = sub_1DEF8D508();
  __swift_project_value_buffer(v14, qword_1ECDF6028);

  v15 = sub_1DEF8D4D8();
  v16 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AE8, &unk_1DEF90A30);
    sub_1DEE1B548(&qword_1ECDE35E8, &qword_1ECDE3AE8, &unk_1DEF90A30, MEMORY[0x1E69AD340]);
    v19 = sub_1DEF8E2E8();
    v21 = sub_1DEE12A5C(v19, v20, &v25);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1DEE0F000, v15, v16, "Zone advertiser subscribing to %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12CCD70](v18, -1, -1);
    MEMORY[0x1E12CCD70](v17, -1, -1);
  }

  v22 = sub_1DEF8DB78();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v9;
  v23[5] = v1;

  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscriptionTask) = sub_1DEE45D8C(0, 0, v4, &unk_1DEF90AE0, v23);
}

uint64_t sub_1DEE49C5C(char *a1, uint64_t a2, int a3)
{
  v53 = a3;
  v54 = a2;
  v49 = a1;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = v5;
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v44 - v7;
  v45 = sub_1DEF8D468();
  v8 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DEF8D488();
  v46 = *(v50 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3;
  v21 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  *v19 = v21;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v22 = v21;
  LOBYTE(v21) = sub_1DEF8D7B8();
  result = (*(v16 + 8))(v19, v15);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B10, &qword_1DEF90B10);
    v24 = sub_1DEF8D458();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1DEF907F0;
    (*(v25 + 104))(v27 + v26, *MEMORY[0x1E69AD328], v24);
    (*(v8 + 104))(v10, *MEMORY[0x1E69AD330], v45);
    sub_1DEF8D478();
    v45 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask;
    v28 = v20;
    v29 = v14;
    if (*(v20 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_advertisementTask))
    {

      sub_1DEF8DB88();
    }

    v30 = sub_1DEF8DB78();
    (*(*(v30 - 8) + 56))(v55, 1, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = v48;
    sub_1DEE4DB84(v49, v48, type metadata accessor for ZoneVersionAdvertisement);
    v34 = v46;
    v33 = v47;
    v35 = *(v46 + 16);
    v36 = v29;
    v49 = v29;
    v37 = v50;
    v35(v47, v36, v50);
    v38 = (*(v51 + 80) + 40) & ~*(v51 + 80);
    v39 = (v52 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v34 + 80) + v39 + 8) & ~*(v34 + 80);
    v41 = swift_allocObject();
    v52 = v28;
    v42 = v41;
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v31;
    sub_1DEE442B0(v32, v41 + v38);
    *(v42 + v39) = v54;
    (*(v34 + 32))(v42 + v40, v33, v37);
    *(v42 + v40 + v11) = v53 & 1;

    v43 = sub_1DEE45D8C(0, 0, v55, &unk_1DEF90B20, v42);
    (*(v34 + 8))(v49, v37);
    *(v52 + v45) = v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE4A250(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscribed) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_subscribed) = 1;
    if (*(a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser__queue_enabled) == 1)
    {
      sub_1DEE498AC();
    }

    else
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v1 = sub_1DEF8D508();
      __swift_project_value_buffer(v1, qword_1ECDF6028);

      oslog = sub_1DEF8D4D8();
      v2 = sub_1DEF8DCB8();

      if (os_log_type_enabled(oslog, v2))
      {
        v3 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v9 = v4;
        *v3 = 136446210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AE8, &unk_1DEF90A30);
        sub_1DEE1B548(&qword_1ECDE35E8, &qword_1ECDE3AE8, &unk_1DEF90A30, MEMORY[0x1E69AD340]);
        v5 = sub_1DEF8E2E8();
        v7 = sub_1DEE12A5C(v5, v6, &v9);

        *(v3 + 4) = v7;
        _os_log_impl(&dword_1DEE0F000, oslog, v2, "Zone advertiser will subscribe when enabled to %{public}s", v3, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v4);
        MEMORY[0x1E12CCD70](v4, -1, -1);
        MEMORY[0x1E12CCD70](v3, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1DEE4A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v7 = sub_1DEF8D698();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_1DEF8D6D8();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = sub_1DEF8D688();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = sub_1DEF8D758();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);
  v5[26] = v11;
  v12 = *(v11 - 8);
  v5[27] = v12;
  v5[28] = *(v12 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF8, &qword_1DEF90AF0);
  v5[32] = v13;
  v5[33] = *(v13 - 8);
  v5[34] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B00, &qword_1DEF90AF8);
  v5[35] = v14;
  v5[36] = *(v14 - 8);
  v15 = swift_task_alloc();
  v5[37] = v15;
  v16 = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_key;
  v17 = swift_task_alloc();
  v5[38] = v17;
  v18 = type metadata accessor for ZoneVersionAdvertisement(0);
  v19 = sub_1DEE1B920(&qword_1ECDE2F10, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
  v20 = sub_1DEE1B920(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement, &protocol conformance descriptor for ZoneVersionAdvertisement);
  *v17 = v5;
  v17[1] = sub_1DEE4A888;

  return MEMORY[0x1EEE19080](v15, a5 + v16, v18, v19, v20);
}

uint64_t sub_1DEE4A888()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1DEE4B76C;
  }

  else
  {
    v2 = sub_1DEE4A99C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DEE4A99C()
{
  sub_1DEF8D498();
  *(v0 + 320) = OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue;
  *(v0 + 352) = *MEMORY[0x1E69E7F48];
  v1 = sub_1DEE1B548(&qword_1ECDE35F0, &qword_1ECDE3AF8, &qword_1DEF90AF0, MEMORY[0x1E69AD338]);
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_1DEE4AA9C;
  v3 = *(v0 + 256);

  return MEMORY[0x1EEE6D8C8](v0 + 72, v3, v1);
}

uint64_t sub_1DEE4AA9C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1DEE4B464;
  }

  else
  {
    v2 = sub_1DEE4ABB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DEE4ABD4()
{
  v71 = v0;
  v1 = *(v0 + 344);
  if (v1)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v2 = sub_1DEF8D508();
    __swift_project_value_buffer(v2, qword_1ECDF6028);
    v3 = sub_1DEF8D4D8();
    v4 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DEE0F000, v3, v4, "Zone advertiser received new zone versions", v5, 2u);
      MEMORY[0x1E12CCD70](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = *(v0 + 216);
      v8 = *(v7 + 80);
      v9 = v1 + ((v8 + 32) & ~v8);
      v50 = (v8 + 24) & ~v8;
      v63 = *(v7 + 72);
      v64 = *(v7 + 16);
      v10 = *(v0 + 336);
      do
      {
        v68 = v9;
        v69 = v6;
        v11 = *(v0 + 240);
        v12 = *(v0 + 248);
        v13 = *(v0 + 208);
        v64(v12);
        (v64)(v11, v12, v13);
        v14 = sub_1DEF8D4D8();
        v15 = sub_1DEF8DCB8();
        v16 = os_log_type_enabled(v14, v15);
        v17 = *(v0 + 240);
        v18 = *(v0 + 208);
        v19 = *(v0 + 216);
        if (v16)
        {
          v66 = v10;
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v70[0] = v21;
          *v20 = 136446210;
          sub_1DEE1B548(&qword_1ECDE3B08, &qword_1ECDE3AF0, &qword_1DEF90AE8, MEMORY[0x1E69AD310]);
          v22 = sub_1DEF8E2E8();
          v24 = v23;
          v65 = *(v19 + 8);
          v65(v17, v18);
          v25 = sub_1DEE12A5C(v22, v24, v70);

          *(v20 + 4) = v25;
          _os_log_impl(&dword_1DEE0F000, v14, v15, "Zone advertiser handling observation: %{public}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x1E12CCD70](v21, -1, -1);
          v10 = v66;
          MEMORY[0x1E12CCD70](v20, -1, -1);
        }

        else
        {

          v65 = *(v19 + 8);
          v65(v17, v18);
        }

        v26 = *(v0 + 248);
        v27 = *(v0 + 96);
        v28 = swift_task_alloc();
        *(v28 + 16) = v27;
        *(v28 + 24) = v26;
        sub_1DEF8DD18();

        if (*(v0 + 356) == 1)
        {
          v29 = *(v0 + 352);
          v52 = *(v0 + 232);
          v53 = *(v0 + 248);
          v30 = *(v0 + 208);
          v31 = *(v0 + 216);
          v32 = *(v0 + 192);
          v55 = *(v0 + 200);
          v58 = *(v0 + 184);
          v51 = *(v0 + 176);
          v67 = v10;
          v34 = *(v0 + 160);
          v33 = *(v0 + 168);
          v35 = *(v0 + 152);
          v54 = *(v0 + 144);
          v61 = *(v0 + 136);
          v62 = *(v0 + 128);
          v60 = *(v0 + 112);
          v36 = *(v0 + 96);
          v56 = *(v0 + 120);
          v57 = *(v0 + 104);
          sub_1DEF8D738();
          *v33 = 5;
          (*(v34 + 104))(v33, v29, v35);
          MEMORY[0x1E12CAF40](v32, v33);
          (*(v34 + 8))(v33, v35);
          v59 = *(v58 + 8);
          v59(v32, v51);
          (v64)(v52, v53, v30);
          v37 = swift_allocObject();
          *(v37 + 16) = v36;
          (*(v31 + 32))(v37 + v50, v52, v30);
          *(v0 + 48) = sub_1DEE4DB14;
          *(v0 + 56) = v37;
          *(v0 + 16) = MEMORY[0x1E69E9820];
          *(v0 + 24) = 1107296256;
          *(v0 + 32) = sub_1DEE3F0C0;
          *(v0 + 40) = &block_descriptor_59;
          v38 = _Block_copy((v0 + 16));

          sub_1DEF8D6B8();
          *(v0 + 88) = MEMORY[0x1E69E7CC0];
          sub_1DEE1B920(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
          sub_1DEF8DE08();
          MEMORY[0x1E12CB490](v55, v54, v56, v38);
          _Block_release(v38);
          (*(v60 + 8))(v56, v57);
          (*(v61 + 8))(v54, v62);
          v59(v55, v51);
          v10 = v67;
        }

        v65(*(v0 + 248), *(v0 + 208));
        v9 = v68 + v63;
        v6 = v69 - 1;
      }

      while (v69 != 1);
    }

    else
    {

      v44 = sub_1DEF8D4D8();
      v45 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1DEE0F000, v44, v45, "Zone advertiser payload is empty; ignoring", v46, 2u);
        MEMORY[0x1E12CCD70](v46, -1, -1);
      }
    }

    v47 = sub_1DEE1B548(&qword_1ECDE35F0, &qword_1ECDE3AF8, &qword_1DEF90AF0, MEMORY[0x1E69AD338]);
    v48 = swift_task_alloc();
    *(v0 + 328) = v48;
    *v48 = v0;
    v48[1] = sub_1DEE4AA9C;
    v49 = *(v0 + 256);

    return MEMORY[0x1EEE6D8C8](v0 + 72, v49, v47);
  }

  else
  {
    v40 = *(v0 + 288);
    v39 = *(v0 + 296);
    v41 = *(v0 + 280);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    (*(v40 + 8))(v39, v41);

    v42 = *(v0 + 8);

    return v42();
  }
}