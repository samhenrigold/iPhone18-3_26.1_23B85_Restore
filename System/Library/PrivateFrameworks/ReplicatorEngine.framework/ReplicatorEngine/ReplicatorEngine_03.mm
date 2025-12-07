Swift::Void __swiftcall Replicator.removePairingRelationship(remoteDeviceID:)(Swift::String remoteDeviceID)
{
  v2 = v1;
  object = remoteDeviceID._object;
  countAndFlagsBits = remoteDeviceID._countAndFlagsBits;
  v5 = *(v1 + 232);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = countAndFlagsBits;
  v6[4] = object;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DEEA6248;
  *(v7 + 24) = v6;
  v9[4] = sub_1DEE46D40;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_152;
  v8 = _Block_copy(v9);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE670D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PairingRelationship(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v24);
  v16 = v25;
  v15 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  MetadataStoring.pairingRelationship(remoteDeviceID:)(v22, v23, v16, *(v15 + 8), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DEE171B4(v10, &qword_1ECDE3C18, &unk_1DEF94D20);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  sub_1DEEAB218(v10, v14, type metadata accessor for PairingRelationship);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v17 = *(a1 + 232);
  *v7 = v17;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v18 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  result = (*(v5 + 8))(v7, v4);
  if (v17)
  {
    sub_1DEE67760(v14);
    sub_1DEE29594(a1 + 192, v24);
    v20 = v25;
    v21 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(*(v21 + 16) + 120))(v14, v20);
    sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  __break(1u);
  return result;
}

uint64_t Replicator._queue_removePairingRelationship(relationshipID:)(uint64_t a1)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for PairingRelationship(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 232);
  *v12 = v13;
  v14 = *MEMORY[0x1E69E8020];
  v15 = *MEMORY[0x1E69E8020];
  v32 = *(v9 + 104);
  v32(v12, v15, v8, v10);
  v30 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  v31 = *(v9 + 8);
  result = v31(v12, v8);
  if (v13)
  {
    v29 = v14;
    swift_beginAccess();
    v28 = v1;
    sub_1DEE29594(v1 + 192, v35);
    v18 = v36;
    v17 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    MetadataStoring.pairingRelationship(relationshipID:)(v34, v18, *(v17 + 8), v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1DEE171B4(v4, &qword_1ECDE3C18, &unk_1DEF94D20);
      return __swift_destroy_boxed_opaque_existential_1(v35);
    }

    v19 = v4;
    v20 = v33;
    sub_1DEEAB218(v19, v33, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v21 = v30;
    *v12 = v30;
    (v32)(v12, v29, v8);
    v22 = v21;
    v23 = sub_1DEF8D7B8();
    result = v31(v12, v8);
    if (v23)
    {
      v24 = v28;
      sub_1DEE67760(v20);
      sub_1DEE29594(v24 + 192, v35);
      v25 = v36;
      v26 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      (*(*(v26 + 16) + 120))(v20, v25);
      sub_1DEE273A0(v20, type metadata accessor for PairingRelationship);
      return __swift_destroy_boxed_opaque_existential_1(v35);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE67760(uint64_t a1)
{
  v2 = v1;
  v259 = a1;
  v3 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v233 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265 = sub_1DEF8D3F8();
  v257 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v241 = &v233 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v263 = &v233 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v233 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v253 = (&v233 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v233 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v256 = &v233 - v18;
  v264 = type metadata accessor for MetadataRecordPredicate(0);
  MEMORY[0x1EEE9AC00](v264);
  v20 = &v233 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v239 = &v233 - v22;
  v23 = type metadata accessor for PairingRelationship(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DEF8D788();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v233 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v2[29];
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x1E69E8020], v26, v28);
  v32 = v31;
  LOBYTE(v31) = sub_1DEF8D7B8();
  (*(v27 + 8))(v30, v26);
  if ((v31 & 1) == 0)
  {
    goto LABEL_151;
  }

  v251 = v16;
  if (qword_1ECDE2E58 != -1)
  {
LABEL_152:
    swift_once();
  }

  v33 = sub_1DEF8D508();
  v34 = __swift_project_value_buffer(v33, qword_1ECDF6028);
  sub_1DEEACA70(v259, v25, type metadata accessor for PairingRelationship);

  v238 = v34;
  v35 = sub_1DEF8D4D8();
  v36 = sub_1DEF8DCB8();

  v37 = os_log_type_enabled(v35, v36);
  v242 = v11;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v266 = v39;
    *v38 = 136446466;
    *(v38 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v266);
    *(v38 + 12) = 2082;
    v40 = PairingRelationship.description.getter();
    v42 = v41;
    sub_1DEE273A0(v25, type metadata accessor for PairingRelationship);
    v43 = sub_1DEE12A5C(v40, v42, &v266);

    *(v38 + 14) = v43;
    _os_log_impl(&dword_1DEE0F000, v35, v36, "(%{public}s) Discarding data for pairing relationship: %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v39, -1, -1);
    MEMORY[0x1E12CCD70](v38, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v25, type metadata accessor for PairingRelationship);
  }

  v44 = v264;
  v45 = v239;
  v46 = v259;
  sub_1DEEACA70(v259, v239 + *(v264 + 32), type metadata accessor for PairingRelationship);
  *v45 = 256;
  *(v45 + 2) = 2;
  *(v45 + 8) = 0;
  swift_beginAccess();
  sub_1DEE29594((v2 + 24), &v266);
  v47 = v267;
  v48 = v268;
  __swift_project_boxed_opaque_existential_1(&v266, v267);
  v49 = MetadataStoring.recordVersions(matching:)(v45, v47, *(v48 + 8));
  __swift_destroy_boxed_opaque_existential_1(&v266);
  sub_1DEEACA70(v46, v20 + *(v44 + 32), type metadata accessor for PairingRelationship);
  *v20 = 1;
  *(v20 + 2) = 1;
  *(v20 + 8) = 0;
  v255 = v2;
  sub_1DEE29594((v2 + 24), &v266);
  v50 = v267;
  v51 = v268;
  __swift_project_boxed_opaque_existential_1(&v266, v267);
  v52 = *(v51 + 8);
  v236 = v20;
  v244 = MetadataStoring.recordVersions(matching:)(v20, v50, v52);
  __swift_destroy_boxed_opaque_existential_1(&v266);
  v53 = 0;
  v55 = (v49 + 64);
  v54 = *(v49 + 64);
  v248 = v49;
  v56 = 1 << *(v49 + 32);
  v275 = MEMORY[0x1E69E7CC8];
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  else
  {
    v57 = -1;
  }

  v20 = v57 & v54;
  v246 = (v56 + 63) >> 6;
  v261 = v257 + 16;
  v260 = (v257 + 32);
  v262 = (v257 + 48);
  v11 = &qword_1DEF91680;
  v264 = v257 + 8;
  v250 = xmmword_1DEF91010;
  v258 = v5;
  v2 = v251;
  v58 = v256;
  v249 = (v49 + 64);
  while (1)
  {
    if (v20)
    {
      v65 = v53;
LABEL_22:
      v67 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v68 = v67 | (v65 << 6);
      v69 = *(*(v248 + 48) + 8 * v68);
      v70 = v257;
      v71 = v263;
      v72 = v265;
      (*(v257 + 16))(v263, *(v248 + 56) + *(v257 + 72) * v68, v265);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v74 = *(v73 + 48);
      *v2 = v69;
      (*(v70 + 32))(v2 + v74, v71, v72);
      (*(*(v73 - 8) + 56))(v2, 0, 1, v73);

      v58 = v256;
    }

    else
    {
      v66 = v246 <= v53 + 1 ? v53 + 1 : v246;
      v25 = v66 - 1;
      while (1)
      {
        v65 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (v65 >= v246)
        {
          break;
        }

        v20 = v55[v65];
        ++v53;
        if (v20)
        {
          v53 = v65;
          goto LABEL_22;
        }
      }

      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      (*(*(v107 - 8) + 56))(v2, 1, 1, v107);
      v20 = 0;
      v53 = v25;
    }

    sub_1DEE1BA88(v2, v58, &qword_1ECDE3D50, &qword_1DEF91668);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
    v76 = *(v75 - 8);
    v2 = (v76 + 48);
    v77 = *(v76 + 48);
    if ((v77)(v58, 1, v75) == 1)
    {
      break;
    }

    v5 = *v58;
    v2 = v255;
    sub_1DEE29594((v255 + 24), &v271);
    v78 = v272;
    v79 = v273;
    __swift_project_boxed_opaque_existential_1(&v271, v272);
    v80 = *(*(v79 + 8) + 8);
    v11 = *(v80 + 64);

    v82 = (v11)(v81, v78, v80);
    if (v82)
    {
      v83 = v82;
      v252 = v5;
      v25 = v275;
      v254 = v75;
      if ((v275 & 0xC000000000000001) != 0)
      {
        v84 = sub_1DEF8DE68();
        v5 = v258;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_149;
        }

        if (v84 == -1)
        {

          v25 = MEMORY[0x1E69E7CC8];
          v275 = MEMORY[0x1E69E7CC8];
        }

        else
        {
          v247 = v83;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
          v25 = sub_1DEF8E138();
          v274 = v25;
          sub_1DEF8E038();
          v85 = sub_1DEF8E0D8();
          if (v85)
          {
            v87 = v85;
            v88 = v86;
            v11 = type metadata accessor for Record.ID(0);
            do
            {
              v266 = v87;
              swift_dynamicCast();
              v266 = v88;
              type metadata accessor for RecordMetadata(0);
              swift_dynamicCast();
              v91 = *(v25 + 16);
              if (*(v25 + 24) <= v91)
              {
                sub_1DEEB1864(v91 + 1, 1);
              }

              v25 = v274;
              v92 = v269;
              v93 = v270;
              sub_1DEF8E7A8();
              sub_1DEF8D9B8();
              sub_1DEF8D9B8();

              sub_1DEF8D9B8();

              sub_1DEEACA70(v93 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v5, type metadata accessor for Record.ID.Ownership);
              if ((*v262)(v5, 1, v265) == 1)
              {
                MEMORY[0x1E12CBF60](0);
              }

              else
              {
                v94 = v263;
                v95 = v5;
                v96 = v265;
                (*v260)(v263, v95, v265);
                MEMORY[0x1E12CBF60](1);
                sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
                sub_1DEF8D8C8();
                v97 = v96;
                v5 = v258;
                (*v264)(v94, v97);
              }

              v98 = sub_1DEF8E7F8();
              v99 = v25 + 64;
              v100 = -1 << *(v25 + 32);
              v101 = v98 & ~v100;
              v102 = v101 >> 6;
              if (((-1 << v101) & ~*(v25 + 64 + 8 * (v101 >> 6))) != 0)
              {
                v89 = __clz(__rbit64((-1 << v101) & ~*(v25 + 64 + 8 * (v101 >> 6)))) | v101 & 0x7FFFFFFFFFFFFFC0;
                goto LABEL_31;
              }

              v103 = 0;
              v104 = (63 - v100) >> 6;
              do
              {
                if (++v102 == v104 && (v103 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_117;
                }

                v105 = v102 == v104;
                if (v102 == v104)
                {
                  v102 = 0;
                }

                v103 |= v105;
                v106 = *(v99 + 8 * v102);
              }

              while (v106 == -1);
              v89 = __clz(__rbit64(~v106)) + (v102 << 6);
LABEL_31:
              *(v99 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
              *(*(v25 + 48) + 8 * v89) = v93;
              *(*(v25 + 56) + 8 * v89) = v92;
              ++*(v25 + 16);
              v87 = sub_1DEF8E0D8();
              v88 = v90;
            }

            while (v87);
          }

          v275 = v25;
          v2 = v255;
          v83 = v247;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v266 = v25;
      v5 = v252;
      v109 = sub_1DEEAF3E8(v252);
      v111 = *(v25 + 16);
      v112 = (v110 & 1) == 0;
      v113 = __OFADD__(v111, v112);
      v114 = v111 + v112;
      if (v113)
      {
        goto LABEL_148;
      }

      v11 = v110;
      if (*(v25 + 24) >= v114)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = v109;
          sub_1DEEB7AC8();
          v109 = v25;
        }
      }

      else
      {
        sub_1DEEB1864(v114, isUniquelyReferenced_nonNull_native);
        v109 = sub_1DEEAF3E8(v5);
        if ((v11 & 1) != (v115 & 1))
        {
          goto LABEL_154;
        }
      }

      v75 = v254;
      v116 = v266;
      if (v11)
      {
        *(v266[7] + 8 * v109) = v83;

        v275 = v116;
      }

      else
      {
        v266[(v109 >> 6) + 8] |= 1 << v109;
        *(v116[6] + 8 * v109) = v5;
        *(v116[7] + 8 * v109) = v83;
        v117 = v116[2];
        v113 = __OFADD__(v117, 1);
        v118 = v117 + 1;
        if (v113)
        {
          goto LABEL_150;
        }

        v116[2] = v118;
        v275 = v116;
      }
    }

    else
    {
      sub_1DEF75014(v5);
    }

    v59 = *(v75 + 48);
    __swift_destroy_boxed_opaque_existential_1(&v271);
    sub_1DEE29594((v2 + 24), &v266);
    v60 = v267;
    v61 = v268;
    __swift_project_boxed_opaque_existential_1(&v266, v267);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
    v62 = swift_allocObject();
    *(v62 + 16) = v250;
    *(v62 + 32) = v5;
    v63 = *(v61 + 16);
    v64 = *(v63 + 136);

    v64(v62, v60, v63);

    __swift_destroy_boxed_opaque_existential_1(&v266);
    v58 = v256;
    (*v264)(&v256[v59], v265);
    v2 = v251;
    v55 = v249;
    v11 = &qword_1DEF91680;
  }

  v249 = v77;

  v5 = 0;
  v119 = v244 + 64;
  v120 = 1 << *(v244 + 32);
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  else
  {
    v121 = -1;
  }

  v122 = v121 & *(v244 + 64);
  v123 = (v120 + 63) >> 6;
  v248 = v76 + 56;
  *(&v124 + 1) = 2;
  v237 = xmmword_1DEF907F0;
  *&v124 = 136446466;
  v235 = v124;
  v125 = v263;
  v126 = v253;
  v127 = v255;
  v246 = v244 + 64;
  v245 = v123;
  v11 = v242;
  v254 = v75;
  v247 = (v76 + 48);
  if (!v122)
  {
    goto LABEL_67;
  }

LABEL_66:
  v128 = v127;
  v129 = v5;
LABEL_75:
  v258 = (v122 - 1) & v122;
  v131 = __clz(__rbit64(v122)) | (v129 << 6);
  v132 = *(*(v244 + 48) + 8 * v131);
  v133 = v257;
  v134 = v265;
  (*(v257 + 16))(v125, *(v244 + 56) + *(v257 + 72) * v131, v265);
  v135 = *(v75 + 48);
  *v11 = v132;
  (*(v133 + 32))(v11 + v135, v125, v134);
  (*v248)(v11, 0, 1, v75);

  v126 = v253;
  v127 = v128;
  while (1)
  {
    sub_1DEE1BA88(v11, v126, &qword_1ECDE3D50, &qword_1DEF91668);
    if ((v249)(v126, 1, v75) == 1)
    {

      v25 = v275;
      if ((v275 & 0xC000000000000001) != 0)
      {
        v211 = 0;
        v212 = 0;
        v213 = 0;
        v25 = sub_1DEF8E038() | 0x8000000000000000;
      }

      else
      {
LABEL_117:
        v214 = -1 << *(v25 + 32);
        v211 = v25 + 64;
        v212 = ~v214;
        v215 = -v214;
        if (v215 < 64)
        {
          v216 = ~(-1 << v215);
        }

        else
        {
          v216 = -1;
        }

        v213 = v216 & *(v25 + 64);
      }

      v20 = 0;
      v2 = ((v212 + 64) >> 6);
      while (1)
      {
        v11 = v213;
        v5 = v20;
        if (v25 < 0)
        {
          v220 = sub_1DEF8E0D8();
          if (!v220 || (v222 = v221, v274 = v220, type metadata accessor for Record.ID(0), swift_dynamicCast(), v219 = v271, v274 = v222, type metadata accessor for RecordMetadata(0), swift_dynamicCast(), !v219))
          {
LABEL_144:
            sub_1DEE2774C(v25);
            sub_1DEE273A0(v236, type metadata accessor for MetadataRecordPredicate);
            return sub_1DEE273A0(v239, type metadata accessor for MetadataRecordPredicate);
          }
        }

        else
        {
          v217 = v20;
          v218 = v213;
          if (!v213)
          {
            while (1)
            {
              v20 = v217 + 1;
              if (__OFADD__(v217, 1))
              {
                break;
              }

              if (v20 >= v2)
              {
                goto LABEL_144;
              }

              v218 = *(v211 + 8 * v20);
              ++v217;
              if (v218)
              {
                goto LABEL_129;
              }
            }

LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

LABEL_129:
          v213 = (v218 - 1) & v218;
          v219 = *(*(v25 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v218)))));

          if (!v219)
          {
            goto LABEL_144;
          }
        }

        v223 = *(v219 + 32);
        v224 = v255;
        swift_beginAccess();
        v225 = v224[30];
        if ((v225 & 0xC000000000000001) != 0)
        {

          v226 = sub_1DEF8E0B8();

          if (!v226)
          {
            goto LABEL_122;
          }

          v274 = v226;
          type metadata accessor for Replicator.WeakSource();
          swift_dynamicCast();
          v227 = v271;

          if (v227)
          {
LABEL_140:
            if (swift_unknownObjectWeakLoadStrong())
            {
              v230 = *(v227 + 24);
              ObjectType = swift_getObjectType();
              (*(v230 + 48))(v219, ObjectType, v230);
              swift_unknownObjectRelease();
            }

LABEL_122:
          }
        }

        else if (*(v225 + 16))
        {

          v228 = sub_1DEEAF20C(v223);
          if (v229)
          {
            v227 = *(*(v225 + 56) + 8 * v228);

            if (v227)
            {
              goto LABEL_140;
            }
          }

          else
          {
          }
        }
      }
    }

    v136 = v11;
    v256 = v5;
    v20 = *v126;
    v137 = *(v75 + 48);
    v138 = v127;
    sub_1DEE29594(v127 + 192, &v266);
    v139 = v267;
    v140 = v268;
    __swift_project_boxed_opaque_existential_1(&v266, v267);
    v141 = (*(*(*(v140 + 8) + 8) + 64))(v20, v139);
    if (!v141)
    {

      __swift_destroy_boxed_opaque_existential_1(&v266);
      (*v264)(&v137[v126], v265);
      goto LABEL_65;
    }

    v142 = v141;
    v252 = v20;
    v251 = v137;
    __swift_destroy_boxed_opaque_existential_1(&v266);
    v143 = *(v142 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (!v143)
    {

      v126 = v253;
      (*v264)(&v251[v253], v265);
LABEL_65:
      v127 = v138;
      v2 = v247;
      v119 = v246;
      v123 = v245;
      v122 = v258;
      v5 = v256;
      v11 = v136;
      if (v258)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v243 = v142;
    v144 = *(v143 + 16);
    v145 = sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v146 = MEMORY[0x1E12CB3B0](v144, v265, v145);
    v266 = v146;
    v147 = *(v143 + 16);
    if (v147)
    {
      v262 = v145;
      v148 = v143 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
      v149 = *(v257 + 72);
      v150 = *(v257 + 16);
      v151 = v263;
      v20 = v264;
      v152 = v241;
      do
      {
        v153 = v265;
        v150(v152, v148, v265);
        sub_1DEF386D8(v151, v152);
        (*v20)(v151, v153);
        v148 += v149;
        --v147;
      }

      while (v147);
      v154 = v266;
      v75 = v254;
    }

    else
    {
      v154 = v146;
      v20 = v264;
    }

    v155 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!*(v154 + 16) || (v156 = sub_1DEF8D8B8(), v157 = -1 << *(v154 + 32), v158 = v156 & ~v157, ((*(v154 + 56 + ((v158 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v158) & 1) == 0))
    {
LABEL_91:

      v165 = *v264;
      v127 = v255;
      v2 = v247;
      goto LABEL_92;
    }

    v20 = ~v157;
    v159 = *(v257 + 72);
    v262 = *(v257 + 16);
    while (1)
    {
      v160 = v265;
      v161 = v263;
      v262(v263, *(v154 + 48) + v159 * v158, v265);
      sub_1DEE2BAF8(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v162 = sub_1DEF8D908();
      v163 = v161;
      v164 = *v264;
      (*v264)(v163, v160);
      if (v162)
      {
        break;
      }

      v158 = (v158 + 1) & v20;
      if (((*(v154 + 56 + ((v158 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v158) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    v240 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DF8, &unk_1DEF91710);
    v166 = (*(v257 + 80) + 32) & ~*(v257 + 80);
    v167 = swift_allocObject();
    *(v167 + 16) = v237;
    v168 = v265;
    v262((v167 + v166), v259, v265);
    v169 = sub_1DEEA3B70(v167);
    swift_setDeallocating();
    v262 = v164;
    v164((v167 + v166), v168);
    swift_deallocClassInstance();
    if (*(v169 + 16) <= *(v154 + 16) >> 3)
    {
      v266 = v154;
      sub_1DEEC8B48(v169);

      v170 = v266;
    }

    else
    {
      v170 = sub_1DEEC8FB4(v169, v154);
    }

    v127 = v255;
    v2 = v247;
    v171 = v252;
    v172 = v243;
    if (!*(v170 + 16))
    {

      v189 = sub_1DEF8D4D8();
      v190 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v266 = v234;
        *v191 = v235;
        *(v191 + 4) = sub_1DEE12A5C(*(v127 + 528), *(v127 + 536), &v266);
        *(v191 + 12) = 2082;

        LODWORD(v233) = v190;
        v192 = Record.ID.description.getter();
        v194 = v193;

        v195 = sub_1DEE12A5C(v192, v194, &v266);

        *(v191 + 14) = v195;
        _os_log_impl(&dword_1DEE0F000, v189, v233, "(%{public}s) Removing record ID: %{public}s", v191, 0x16u);
        v196 = v234;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v196, -1, -1);
        MEMORY[0x1E12CCD70](v191, -1, -1);
      }

      v197 = v275;
      if ((v275 & 0xC000000000000001) != 0)
      {
        if (v275 >= 0)
        {
          v197 = v275 & 0xFFFFFFFFFFFFFF8;
        }

        v198 = sub_1DEF8DE68();
        if (__OFADD__(v198, 1))
        {
          goto LABEL_153;
        }

        v197 = sub_1DEEB07B8(v197, v198 + 1);
      }

      else
      {
      }

      v205 = swift_isUniquelyReferenced_nonNull_native();
      v266 = v197;
      sub_1DEF3E0C4(v172, v171, v205);

      v275 = v266;
      sub_1DEE29594(v127 + 192, &v266);
      v207 = v267;
      v206 = v268;
      __swift_project_boxed_opaque_existential_1(&v266, v267);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
      v208 = swift_allocObject();
      *(v208 + 16) = v250;
      *(v208 + 32) = v171;
      v209 = *(v206 + 16);
      v20 = v127;
      v210 = *(v209 + 136);

      v210(v208, v207, v209);

      goto LABEL_114;
    }

    v173 = sub_1DEF8D4D8();
    v174 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      v234 = v170;
      v176 = v175;
      v233 = swift_slowAlloc();
      v266 = v233;
      *v176 = v235;
      *(v176 + 4) = sub_1DEE12A5C(*(v127 + 528), *(v127 + 536), &v266);
      *(v176 + 12) = 2082;

      v177 = v173;
      v178 = Record.ID.description.getter();
      v179 = v174;
      v181 = v180;

      v182 = sub_1DEE12A5C(v178, v181, &v266);

      *(v176 + 14) = v182;
      _os_log_impl(&dword_1DEE0F000, v177, v179, "(%{public}s) Removing destination from record ID: %{public}s", v176, 0x16u);
      v183 = v233;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v183, -1, -1);
      v184 = v176;
      v170 = v234;
      MEMORY[0x1E12CCD70](v184, -1, -1);

      v185 = *(v170 + 16);
      if (!v185)
      {
        goto LABEL_110;
      }
    }

    else
    {

      v185 = *(v170 + 16);
      if (!v185)
      {
LABEL_110:

        v186 = MEMORY[0x1E69E7CC0];
        goto LABEL_111;
      }
    }

    v186 = sub_1DEF2B328(v185, 0);
    sub_1DEF2D158(&v266, &v186[v166], v185, v170);
    v188 = v187;
    sub_1DEE2774C(v266);
    if (v188 != v185)
    {
      break;
    }

LABEL_111:
    v266 = v186;
    v199 = RecordMetadata.copy(replacingDestination:)(&v266);

    sub_1DEE29594(v127 + 192, &v266);
    v201 = v267;
    v200 = v268;
    __swift_project_boxed_opaque_existential_1(&v266, v267);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
    v202 = swift_allocObject();
    *(v202 + 16) = v250;
    *(v202 + 32) = v199;
    v203 = *(v200 + 16);
    v20 = v127;
    v204 = *(v203 + 128);

    v204(v202, v201, v203);

LABEL_114:

    __swift_destroy_boxed_opaque_existential_1(&v266);
    v165 = v262;
LABEL_92:
    v126 = v253;
    v165(&v251[v253], v265);
    v125 = v263;
    v11 = v242;
    v119 = v246;
    v123 = v245;
    v122 = v258;
    v5 = v256;
    if (v258)
    {
      goto LABEL_66;
    }

LABEL_67:
    if (v123 <= v5 + 1)
    {
      v130 = v5 + 1;
    }

    else
    {
      v130 = v123;
    }

    v25 = (v130 - 1);
    while (1)
    {
      v129 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_146;
      }

      if (v129 >= v123)
      {
        break;
      }

      v122 = *(v119 + 8 * v129);
      v5 = (v5 + 1);
      if (v122)
      {
        v128 = v127;
        v5 = v129;
        goto LABEL_75;
      }
    }

    (*v248)(v11, 1, 1, v75);
    v258 = 0;
    v5 = v25;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  type metadata accessor for Record.ID(0);
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Replicator.readvertiseIfNecessary()()
{
  v1 = *(v0 + 232);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DEEA6254;
  *(v2 + 24) = v0;
  v4[4] = sub_1DEE46D40;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEE134F4;
  v4[3] = &block_descriptor_159;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE6991C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEEACDA8;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE46D40;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_371;
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

unint64_t Replicator.localDeviceIdentifier.getter()
{
  if (v0[32])
  {
    v1 = v0[31];
  }

  else
  {
    v2 = v0[23];
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(ObjectType, v2);
    if (v5)
    {
      v1 = v4;
    }

    else
    {
      v1 = 0xD000000000000016;
    }
  }

  return v1;
}

uint64_t sub_1DEE69B50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = sub_1DEF8D788();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v1[32])
  {
    v9 = v1[31];
    v111 = v1[32];
  }

  else
  {
    v10 = v1[23];
    ObjectType = swift_getObjectType();
    v13 = (*(v10 + 16))(ObjectType, v10);
    if (v12)
    {
      v9 = v13;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0x80000001DEF9BCA0;
    }

    v111 = v14;
  }

  v15 = sub_1DEEAEE94(0);
  if (v16)
  {
    v107 = v16;
    v108 = v15;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v18 = [v17 hostName];
    v19 = sub_1DEF8D948();
    v107 = v20;
    v108 = v19;
  }

  if (qword_1ED786060 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v103 = *(&xmmword_1ED786068 + 1);
    v104 = xmmword_1ED786068;
    v102 = *(v2 + 96);
    v21 = *(v2 + 104);
    v105 = *(v2 + 120);
    v106 = v21;
    v101 = *(v2 + 136);
    v100 = *(v2 + 137);
    v22 = *(v2 + 232);
    *v8 = v22;
    v23 = *MEMORY[0x1E69E8020];
    v24 = v6[13];
    v24(v8, v23, v5);
    v112 = v22;
    LOBYTE(v22) = sub_1DEF8D7B8();
    v25 = v6[1];
    v26 = v25(v8, v5);
    if ((v22 & 1) == 0)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v99 = v9;
    swift_beginAccess();
    v9 = *(v2 + 240);

    sub_1DEEA59EC(v27, v2);
    v113 = v28;

    *v8 = v112;
    v24(v8, v23, v5);
    v29 = sub_1DEF8D7B8();
    v26 = v25(v8, v5);
    if ((v29 & 1) == 0)
    {
      goto LABEL_52;
    }

    swift_beginAccess();

    v31 = sub_1DEEA4880(v30, v2, sub_1DEEA5DF0, sub_1DEEA5DF0);

    v32 = sub_1DEE581C8(v31);

    v8 = *(v2 + 648);
    v33 = *(v2 + 656);
    sub_1DEEA8818(v8, v33);
    v34 = 1;
    v98 = sub_1DEEAEE94(1u);
    v97 = v35;
    v96 = sub_1DEEAEE94(2u);
    v9 = v36;
    v37 = sub_1DEEAEFF8(3u);
    if (v38 != 1)
    {
      v39 = v37;
      v40 = v38;
      v34 = 0;
      sub_1DEEAD7B4(v37, v38, v109);
      sub_1DEEA889C(v39, v40);
    }

    v112 = v32;
    v41 = sub_1DEF8D3F8();
    v42 = *(v41 - 8);
    v43 = *(v42 + 56);
    v5 = v42 + 56;
    v44 = v109;
    v43(v109, v34, 1, v41);
    v45 = v110;
    *(v110 + 72) = 0u;
    *(v45 + 56) = 0u;
    *(v45 + 88) = 256;
    *(v45 + 112) = xmmword_1DEF90FE0;
    v46 = *(type metadata accessor for DeviceDescriptor(0) + 60);
    v43(v45 + v46, 1, 1, v41);
    v47 = v111;
    *v45 = v99;
    *(v45 + 8) = v47;
    v48 = v107;
    *(v45 + 16) = v108;
    *(v45 + 24) = v48;
    v49 = v103;
    *(v45 + 32) = v104;
    *(v45 + 40) = v49;
    *(v45 + 48) = v102;
    v50 = v106;
    *(v45 + 72) = v105;
    *(v45 + 56) = v50;
    *(v45 + 88) = v101;
    *(v45 + 89) = v100;
    sub_1DEE2416C(*(v45 + 112), *(v45 + 120));
    *(v45 + 112) = v8;
    *(v45 + 120) = v33;
    v51 = v97;
    *(v45 + 128) = v98;
    *(v45 + 136) = v51;
    *(v45 + 144) = v96;
    *(v45 + 152) = v9;
    *(v45 + 160) = 0;
    *(v45 + 168) = 0;
    sub_1DEEA882C(v44, v45 + v46);
    v26 = v113;
    if (!(v113 >> 62))
    {
      v52 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        break;
      }

      goto LABEL_20;
    }

LABEL_53:
    v69 = v26;
    v52 = sub_1DEF8DE68();
    v26 = v69;
    if (!v52)
    {
      break;
    }

LABEL_20:
    v2 = 0;
    v53 = v26 & 0xC000000000000001;
    v6 = (v26 & 0xFFFFFFFFFFFFFF8);
    v54 = MEMORY[0x1E69E7CC8];
    while (v53)
    {
      v9 = MEMORY[0x1E12CB6E0](v2, v26);
      v56 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_45;
      }

LABEL_26:
      v8 = *(v9 + 16);
      if ((v54 & 0xC000000000000001) != 0)
      {
        if (v54 >= 0)
        {
          v54 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v57 = sub_1DEF8DE68();
        if (__OFADD__(v57, 1))
        {
          goto LABEL_48;
        }

        v54 = sub_1DEEB0790(v54, v57 + 1);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v54;
      v59 = sub_1DEEAF20C(v8);
      v61 = *(v54 + 16);
      v62 = (v60 & 1) == 0;
      v63 = __OFADD__(v61, v62);
      v64 = v61 + v62;
      if (v63)
      {
        goto LABEL_47;
      }

      v5 = v60;
      if (*(v54 + 24) < v64)
      {
        sub_1DEEB0D00(v64, isUniquelyReferenced_nonNull_native);
        v59 = sub_1DEEAF20C(v8);
        if ((v5 & 1) != (v65 & 1))
        {
          goto LABEL_75;
        }

LABEL_37:
        v54 = v114;
        if (v5)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_37;
      }

      v68 = v59;
      sub_1DEEB753C();
      v59 = v68;
      v54 = v114;
      if (v5)
      {
LABEL_21:
        v55 = *(v54 + 56);
        v5 = *(v55 + 8 * v59);
        *(v55 + 8 * v59) = v9;

        goto LABEL_22;
      }

LABEL_38:
      *(v54 + 8 * (v59 >> 6) + 64) |= 1 << v59;
      *(*(v54 + 48) + 8 * v59) = v8;
      *(*(v54 + 56) + 8 * v59) = v9;

      v66 = *(v54 + 16);
      v63 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v63)
      {
        goto LABEL_49;
      }

      *(v54 + 16) = v67;
LABEL_22:
      ++v2;
      v26 = v113;
      if (v56 == v52)
      {
        goto LABEL_55;
      }
    }

    if (v2 >= v6[2])
    {
      goto LABEL_46;
    }

    v9 = *(v26 + 8 * v2 + 32);

    v56 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_26;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v54 = MEMORY[0x1E69E7CC8];
LABEL_55:

  *(v110 + 96) = v54;
  v70 = v112;
  v111 = v112[2];
  if (!v111)
  {
    v73 = MEMORY[0x1E69E7CC8];
LABEL_71:
    sub_1DEE171B4(v109, &unk_1ECDE3E80, &unk_1DEF90970);

    *(v110 + 104) = v73;
    return result;
  }

  v71 = 0;
  v72 = v112 + 9;
  v73 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    if (v71 < v70[2])
    {
      v77 = *(v72 - 5);
      v76 = *(v72 - 4);
      v79 = *(v72 - 3);
      v78 = *(v72 - 2);
      v80 = *(v72 - 1);
      v113 = *v72;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v73;
      v82 = sub_1DEEAF16C(v77, v76, v79, v78);
      v84 = v73[2];
      v85 = (v83 & 1) == 0;
      v63 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v63)
      {
        goto LABEL_73;
      }

      v87 = v83;
      if (v73[3] >= v86)
      {
        if (v81)
        {
          goto LABEL_65;
        }

        v94 = v82;
        sub_1DEEB7550();
        v82 = v94;
        v73 = v114;
        if (v87)
        {
          goto LABEL_57;
        }

LABEL_66:
        v73[(v82 >> 6) + 8] |= 1 << v82;
        v89 = (v73[6] + 32 * v82);
        *v89 = v77;
        v89[1] = v76;
        v89[2] = v79;
        v89[3] = v78;
        v90 = (v73[7] + 48 * v82);
        *v90 = v77;
        v90[1] = v76;
        v90[2] = v79;
        v90[3] = v78;
        v91 = v113;
        v90[4] = v80;
        v90[5] = v91;
        v92 = v73[2];
        v63 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v63)
        {
          goto LABEL_74;
        }

        v73[2] = v93;
      }

      else
      {
        sub_1DEEB0D14(v86, v81);
        v82 = sub_1DEEAF16C(v77, v76, v79, v78);
        if ((v87 & 1) != (v88 & 1))
        {
          goto LABEL_76;
        }

LABEL_65:
        v73 = v114;
        if ((v87 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_57:
        v74 = (v73[7] + 48 * v82);
        *v74 = v77;
        v74[1] = v76;
        v74[2] = v79;
        v74[3] = v78;
        v75 = v113;
        v74[4] = v80;
        v74[5] = v75;
      }

      ++v71;
      v72 += 6;
      v70 = v112;
      if (v111 == v71)
      {
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  type metadata accessor for Zone.ID();
  sub_1DEF8E6E8();
  __break(1u);
LABEL_76:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t Replicator.metadata(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C28, &qword_1DEF910E8);
  sub_1DEF8DD18();
  return v2;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C30, &unk_1DEF910F0);
  sub_1DEF8DD18();
  return v2;
}

uint64_t sub_1DEE6A57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  *a3 = (*(*(*(v7 + 8) + 8) + 64))(a2, v6);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1DEE6A6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  *a3 = (*(*(*(v7 + 8) + 8) + 72))(a2, v6);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t Replicator.clientDefinedID(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  sub_1DEF8DD18();
  return v2;
}

uint64_t sub_1DEE6A7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  *a3 = (*(*(*(v7 + 8) + 8) + 56))(a2, v6);
  a3[1] = v8;
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t Replicator.zoneIDs(for:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C38, &qword_1DEF91100);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE6A8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v20);
  v9 = v21;
  v8 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  MetadataStoring.zones()(v9, *(v8 + 8));
  v11 = v10;
  v23 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
LABEL_20:
    v12 = sub_1DEF8DE68();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v19 = a4;
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E12CB6E0](v13, v11);
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v17 = v23;
            a4 = v19;
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v14 = *(v11 + 8 * v13 + 32);

          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_17;
          }
        }

        v16 = *(v14 + 32) == a2 && *(v14 + 40) == a3;
        if (v16 || (sub_1DEF8E4E8() & 1) != 0)
        {
          sub_1DEF8DFB8();
          a4 = a3;
          sub_1DEF8DFE8();
          sub_1DEF8DFF8();
          sub_1DEF8DFC8();
        }

        else
        {
        }

        ++v13;
        if (v15 == v12)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_22:

  result = __swift_destroy_boxed_opaque_existential_1(v20);
  *a4 = v17;
  return result;
}

uint64_t Replicator.add(recordStubs:destination:schedule:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = v3;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(v3 + 232);
  result = sub_1DEF8DD18();
  if (!v4)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = a1;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;

    sub_1DEE2C448(0xD000000000000016, 0x80000001DEF9BCC0, v10, sub_1DEEA6318, v12, 0.0);
  }

  return result;
}

uint64_t sub_1DEE6ABF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for RecordStub(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v16 = a3;
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_1DEEACA70(v12, v9, type metadata accessor for RecordStub);

      sub_1DEE273A0(v9, type metadata accessor for RecordStub);
      sub_1DEF8DFB8();
      sub_1DEF8DFE8();
      sub_1DEF8DFF8();
      sub_1DEF8DFC8();
      v12 += v13;
      --v10;
    }

    while (v10);
    v11 = v17;
    a3 = v16;
  }

  sub_1DEE6ADBC(v11);
  if (!v3)
  {
    v17 = a3;
    sub_1DEE6B420(v11, &v17);
  }
}

uint64_t sub_1DEE6ADBC(unint64_t a1)
{
  v58 = a1;
  v59 = sub_1DEF8D3F8();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v54 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v53 - v4;
  v6 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v1;
  v15 = *(v1 + 232);
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v16 = v15;
  v17 = sub_1DEF8D7B8();
  result = (*(v10 + 8))(v13, v9);
  if ((v17 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1DEF8DE68();
    v19 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v1 = v58;
  v55 = v5;
  v53[1] = v14;
  if (v58 >> 62)
  {
    goto LABEL_23;
  }

  v19 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    return result;
  }

LABEL_4:
  v20 = 0;
  v21 = v1 & 0xC000000000000001;
  v22 = v1 & 0xFFFFFFFFFFFFFF8;
  v23 = (v57 + 48);
  while (v21)
  {
    v24 = v1;
    v25 = MEMORY[0x1E12CB6E0](v20, v1);
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_14;
    }

LABEL_8:
    sub_1DEEACA70(v25 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v8, type metadata accessor for Record.ID.Ownership);
    if ((*v23)(v8, 1, v59) != 1)
    {
      goto LABEL_15;
    }

    ++v20;
    v27 = v26 == v19;
    v1 = v24;
    if (v27)
    {
      return result;
    }
  }

  if (v20 >= *(v22 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v24 = v1;
  v25 = *(v1 + 8 * v20 + 32);

  v26 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v28 = v57;
  v29 = v55;
  v30 = v59;
  (*(v57 + 32))(v55, v8, v59);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v31 = sub_1DEF8D508();
  __swift_project_value_buffer(v31, qword_1ECDF6028);
  v32 = v54;
  (*(v28 + 16))(v54, v29, v30);

  v34 = sub_1DEF8D4D8();
  v35 = sub_1DEF8DCA8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    LODWORD(v56) = v35;
    v37 = v32;
    v38 = v36;
    v58 = swift_slowAlloc();
    v62 = v58;
    *v38 = 136446978;
    *(v38 + 4) = sub_1DEE12A5C(*(v33 + 528), *(v33 + 536), &v62);
    *(v38 + 12) = 2082;
    v39 = *(v25 + 32);
    v40 = v39[5];
    v60 = v39[4];
    v61 = v40;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v39[2], v39[3]);

    v41 = sub_1DEE12A5C(v60, v61, &v62);

    *(v38 + 14) = v41;
    *(v38 + 22) = 2082;
    sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v42 = sub_1DEF8E2E8();
    v44 = v43;
    v45 = *(v28 + 8);
    v45(v37, v30);
    v46 = sub_1DEE12A5C(v42, v44, &v62);

    *(v38 + 24) = v46;
    *(v38 + 32) = 2082;

    v47 = Record.ID.description.getter();
    v49 = v48;

    v50 = sub_1DEE12A5C(v47, v49, &v62);

    *(v38 + 34) = v50;
    _os_log_impl(&dword_1DEE0F000, v34, v56, "(%{public}s) Ownership verification failed: record in zone %{public}s is owned by relationship %{public}s: %{public}s", v38, 0x2Au);
    v51 = v58;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v51, -1, -1);
    MEMORY[0x1E12CCD70](v38, -1, -1);
  }

  else
  {

    v45 = *(v28 + 8);
    v45(v32, v30);
  }

  sub_1DEEAA8E8();
  swift_allocError();
  *v52 = 0;
  swift_willThrow();

  return (v45)(v55, v30);
}

uint64_t sub_1DEE6B420(unint64_t a1, uint64_t *a2)
{
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = *a2;
  v47 = v2;
  v11 = *(v2 + 232);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1DEF8D7B8();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    goto LABEL_37;
  }

  v44[1] = v3;
  if (a1 >> 62)
  {
LABEL_38:
    result = sub_1DEF8DE68();
    v14 = result;
    v15 = v47;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v47;
    if (v14)
    {
LABEL_4:
      swift_beginAccess();
      v16 = 0;
      v45 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E12CB6E0](v16, a1);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v16 >= *(v45 + 16))
          {
            goto LABEL_36;
          }

          v17 = *(a1 + 8 * v16 + 32);

          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }
        }

        v19 = *(v17 + 32);
        v20 = *(v15 + 240);
        if ((v20 & 0xC000000000000001) != 0)
        {

          v21 = sub_1DEF8E0B8();

          if (!v21)
          {

            goto LABEL_29;
          }

          v50 = v21;
          type metadata accessor for Replicator.WeakSource();
          swift_dynamicCast();
          v22 = v48;

          if (!v22)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (!*(v20 + 16))
          {
            goto LABEL_29;
          }

          v23 = sub_1DEEAF20C(v19);
          if ((v24 & 1) == 0)
          {

LABEL_29:
            v34 = v47;
            if (qword_1ECDE2E58 != -1)
            {
              swift_once();
            }

            v35 = sub_1DEF8D508();
            __swift_project_value_buffer(v35, qword_1ECDF6028);

            v36 = sub_1DEF8D4D8();
            v37 = sub_1DEF8DCA8();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v50 = v39;
              *v38 = 136446466;
              *(v38 + 4) = sub_1DEE12A5C(*(v34 + 528), *(v34 + 536), &v50);
              *(v38 + 12) = 2082;
              v40 = *(v17 + 32);
              v41 = v40[5];
              v48 = v40[4];
              v49 = v41;

              MEMORY[0x1E12CB180](14906, 0xE200000000000000);
              MEMORY[0x1E12CB180](v40[2], v40[3]);

              v42 = sub_1DEE12A5C(v48, v49, &v50);

              *(v38 + 14) = v42;
              _os_log_impl(&dword_1DEE0F000, v36, v37, "(%{public}s) Destination verification failed: zone %{public}s does not exist", v38, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E12CCD70](v39, -1, -1);
              MEMORY[0x1E12CCD70](v38, -1, -1);
            }

            sub_1DEEAA8E8();
            swift_allocError();
            *v43 = 0;
            swift_willThrow();
          }

          v22 = *(*(v20 + 56) + 8 * v23);

          if (!v22)
          {
            goto LABEL_29;
          }
        }

        if (v46)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v25 = *(v22 + 24);
            ObjectType = swift_getObjectType();
            (*(v25 + 8))(&v50, ObjectType, v25);
            swift_unknownObjectRelease();
            if (v50 == 1)
            {
              if (qword_1ECDE2E58 != -1)
              {
                swift_once();
              }

              v27 = sub_1DEF8D508();
              __swift_project_value_buffer(v27, qword_1ECDF6028);
              v28 = v47;

              v29 = sub_1DEF8D4D8();
              v30 = sub_1DEF8DCA8();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v32 = swift_slowAlloc();
                v48 = v32;
                *v31 = 136446210;
                *(v31 + 4) = sub_1DEE12A5C(*(v28 + 528), *(v28 + 536), &v48);
                _os_log_impl(&dword_1DEE0F000, v29, v30, "(%{public}s) Destination verification failed: a record sent to a collection cannot be advertised", v31, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v32);
                MEMORY[0x1E12CCD70](v32, -1, -1);
                MEMORY[0x1E12CCD70](v31, -1, -1);
              }

              sub_1DEEAA8E8();
              swift_allocError();
              *v33 = 0;
              swift_willThrow();
            }
          }
        }

        ++v16;
        v15 = v47;
      }

      while (v18 != v14);
    }
  }

  return result;
}

uint64_t sub_1DEE6BA78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v72 - v11;
  v92 = sub_1DEF8D3F8();
  v83 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for RecordStub(0);
  v13 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v95 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a2;
  v81 = *a3;
  v80 = *(a3 + 8);
  v21 = v4[29];
  *v19 = v21;
  v22 = *(v16 + 104);
  v76 = *MEMORY[0x1E69E8020];
  v77 = v16 + 104;
  v75 = v22;
  v22(v19, v17);
  v73 = v21;
  LOBYTE(v21) = sub_1DEF8D7B8();
  v23 = *(v16 + 8);
  v78 = v19;
  v79 = v16 + 8;
  v74 = v23;
  result = v23(v19, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v100 = v20;
  v82 = sub_1DEE92FA8(a1, &v100);
  v104 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = v20;
    v72 = v15;
    v27 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v94 = v4;
    swift_beginAccess();
    v28 = v27;
    v86 = 0;
    v85 = 0;
    v89 = *(v13 + 72);
    v88 = (v83 + 16);
    v87 = (v83 + 32);
    v29 = v95;
    while (1)
    {
      v97 = v28;
      v98 = v25;
      sub_1DEEACA70(v28, v29, type metadata accessor for RecordStub);
      v31 = *v29;
      v32 = *(v29 + 1);
      v33 = *(v29 + 2);
      v34 = v90;
      v35 = v26;
      v37 = v91;
      v36 = v92;
      (*v88)(v91, &v29[*(v90 + 24)], v92);
      v96 = *(v34 + 28);
      v38 = v93;
      sub_1DEE17214(&v29[v96], v93, &qword_1ECDE4DC0, &qword_1DEF91640);
      v39 = *&v29[*(v34 + 32)];
      type metadata accessor for RecordMetadata(0);
      v40 = swift_allocObject();
      *(v40 + 16) = v31;
      type metadata accessor for RecordMetadata.ClientDefinedID();
      v41 = swift_allocObject();
      *(v41 + 16) = v32;
      *(v41 + 24) = v33;
      *(v40 + 24) = v41;
      v42 = v37;
      v26 = v35;
      (*v87)(v40 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v42, v36);
      *(v40 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v35;
      sub_1DEE1BA88(v38, v40 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);
      *(v40 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v39;

      MEMORY[0x1E12CB260](v43);
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DEF8DAF8();
      }

      sub_1DEF8DB18();
      v44 = v104;
      v45 = *(v31 + 32);
      v29 = v95;
      v46 = v94[30];
      if ((v46 & 0xC000000000000001) != 0)
      {

        v47 = sub_1DEF8E0B8();
        if (!v47)
        {
          goto LABEL_4;
        }

        v99[1] = v47;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v48 = v100;
      }

      else
      {
        if (!*(v46 + 16))
        {
          goto LABEL_5;
        }

        v49 = sub_1DEEAF20C(v45);
        if ((v50 & 1) == 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v48 = *(*(v46 + 56) + 8 * v49);
      }

      if (v48)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v51 = *(v48 + 24);
          ObjectType = swift_getObjectType();
          (*(v51 + 8))(&v100, ObjectType, v51);
          swift_unknownObjectRelease();

          v85 |= v100;
        }

        else
        {
        }

        v30 = v98;
        v53 = v84;
        sub_1DEE17214(&v29[v96], v84, &qword_1ECDE4DC0, &qword_1DEF91640);
        v54 = sub_1DEF8D378();
        v55 = (*(*(v54 - 8) + 48))(v53, 1, v54) != 1;
        v86 |= v55;
        sub_1DEE171B4(v53, &qword_1ECDE4DC0, &qword_1DEF91640);
        goto LABEL_6;
      }

LABEL_5:

      v30 = v98;
LABEL_6:
      sub_1DEE273A0(v29, type metadata accessor for RecordStub);
      v28 = v97 + v89;
      v25 = v30 - 1;
      if (!v25)
      {
        v56 = v44;
        v4 = v94;
        v15 = v72;
        v57 = v86;
        v58 = v85;
        goto LABEL_22;
      }
    }
  }

  v56 = MEMORY[0x1E69E7CC0];
  v57 = 0;
  v58 = 0;
LABEL_22:
  v59 = v82;
  swift_beginAccess();
  sub_1DEE29594((v4 + 24), &v100);
  v60 = v102;
  v61 = v103;
  __swift_project_boxed_opaque_existential_1(&v100, v102);
  (*(*(v61 + 16) + 128))(v56, v60);

  __swift_destroy_boxed_opaque_existential_1(&v100);
  v62 = *(v59 + 16);
  if (v62)
  {
    v63 = sub_1DEF2B328(*(v59 + 16), 0);
    sub_1DEF2D158(&v100, &v63[(*(v83 + 80) + 32) & ~*(v83 + 80)], v62, v59);
    v65 = v64;
    result = sub_1DEE2774C(v100);
    if (v65 == v62)
    {
      v99[0] = v63;
      v100 = v81;
      LOBYTE(v101) = v80;
      sub_1DEE6E9BC(v99, &v100);

      if ((v58 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v58 & 1) == 0)
  {
LABEL_25:
    if ((v57 & 1) == 0)
    {
      return result;
    }

    return sub_1DEE56F88();
  }

LABEL_29:
  v66 = v78;
  v67 = v73;
  *v78 = v73;
  v75(v66, v76, v15);
  v68 = v67;
  LOBYTE(v67) = sub_1DEF8D7B8();
  result = v74(v66, v15);
  if ((v67 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v69 = v4[63];
  v70 = v4[64];
  __swift_project_boxed_opaque_existential_1(v4 + 60, v69);
  v71 = *(v70 + 8);

  v71(sub_1DEEACFC8, v4, v69, v70);

  if (v57)
  {
    return sub_1DEE56F88();
  }

  return result;
}

uint64_t Replicator.delete(recordIDs:schedule:)(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(v2 + 232);
  result = sub_1DEF8DD18();
  if (!v3)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a1;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;

    sub_1DEE2C448(0xD000000000000018, 0x80000001DEF9BCE0, v8, sub_1DEEA63A8, v10, 0.0);
  }

  return result;
}

uint64_t sub_1DEE6C510(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v94 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v94 - v10;
  v124 = sub_1DEF8D3F8();
  v11 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v116 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = *a2;
  v103 = *(a2 + 8);
  v18 = v3[29];
  *v17 = v18;
  v19 = *(v14 + 104);
  v98 = *MEMORY[0x1E69E8020];
  v99 = v14 + 104;
  v97 = v19;
  v19(v17, v15);
  v95 = v18;
  LOBYTE(v18) = sub_1DEF8D7B8();
  v20 = *(v14 + 8);
  v100 = v17;
  v102 = v13;
  v101 = v14 + 8;
  v96 = v20;
  v20(v17, v13);
  if ((v18 & 1) == 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  swift_beginAccess();
  sub_1DEE29594((v3 + 24), &v127);
  v21 = v129;
  v22 = v130;
  __swift_project_boxed_opaque_existential_1(&v127, v129);
  v23 = (*(*(*(v22 + 8) + 8) + 32))(v21);
  v24 = sub_1DEE9EBC8(v23, sub_1DEE9FFA8, sub_1DEE9FFA8);

  __swift_destroy_boxed_opaque_existential_1(&v127);
  v25 = *(v24 + 2);
  v117 = v3;
  if (v25)
  {
    v94 = a1;
    v127 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7D60(0, v25, 0);
    v123 = v127;
    v26 = v24 + 64;
    v27 = sub_1DEF8DE18();
    v28 = 0;
    v111 = (v11 + 16);
    a1 = v11 + 32;
    v110 = v11 + 8;
    v105 = v24 + 72;
    v106 = v25;
    v107 = v24 + 64;
    v109 = v11 + 32;
    v108 = v24;
    while ((v27 & 0x8000000000000000) == 0 && v27 < 1 << v24[32])
    {
      if ((*&v26[8 * (v27 >> 6)] & (1 << v27)) == 0)
      {
        goto LABEL_56;
      }

      v120 = v27 >> 6;
      v121 = 1 << v27;
      v31 = *(v24 + 9);
      v118 = v28;
      v119 = v31;
      v32 = v115;
      v33 = *(v115 + 48);
      v34 = *(v24 + 6);
      v122 = *(v11 + 72);
      v35 = *(v11 + 16);
      v36 = v112;
      v3 = v111;
      v35(v112, v34 + v122 * v27, v124);
      v37 = *(v24 + 7);
      v38 = type metadata accessor for PairingRelationship(0);
      sub_1DEEACA70(v37 + *(*(v38 - 8) + 72) * v27, &v36[v33], type metadata accessor for PairingRelationship);
      v39 = *(v11 + 32);
      v40 = v113;
      v39(v113, v36, v124);
      v41 = &v36[v33];
      v42 = v124;
      sub_1DEEAB218(v41, &v40[*(v32 + 48)], type metadata accessor for PairingRelationship);
      v43 = v40;
      v44 = v114;
      sub_1DEE1BA88(v43, v114, &unk_1ECDE4350, &qword_1DEF93400);
      v45 = *(v32 + 48);
      v46 = v116;
      v35(v116, v44 + v45, v42);
      sub_1DEE273A0(v44 + v45, type metadata accessor for PairingRelationship);
      (*(v11 + 8))(v44, v42);
      v47 = v123;
      v127 = v123;
      v49 = *(v123 + 16);
      v48 = *(v123 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1DEEC7D60((v48 > 1), v49 + 1, 1);
        v46 = v116;
        v47 = v127;
      }

      *(v47 + 16) = v49 + 1;
      v50 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v123 = v47;
      v51 = v47 + v50 + v49 * v122;
      a1 = v109;
      v39(v51, v46, v42);
      v24 = v108;
      v29 = 1 << v108[32];
      if (v27 >= v29)
      {
        goto LABEL_57;
      }

      v26 = v107;
      v52 = *&v107[8 * v120];
      if ((v52 & v121) == 0)
      {
        goto LABEL_58;
      }

      if (v119 != *(v108 + 9))
      {
        goto LABEL_59;
      }

      v53 = v52 & (-2 << (v27 & 0x3F));
      if (v53)
      {
        v29 = __clz(__rbit64(v53)) | v27 & 0x7FFFFFFFFFFFFFC0;
        v3 = v117;
        v30 = v106;
      }

      else
      {
        v54 = v108;
        v55 = v120 << 6;
        v56 = v120 + 1;
        v57 = &v105[8 * v120];
        v3 = v117;
        v30 = v106;
        while (v56 < (v29 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_1DEE2F804(v27, v119, 0);
            v29 = __clz(__rbit64(v58)) + v55;
            goto LABEL_20;
          }
        }

        sub_1DEE2F804(v27, v119, 0);
LABEL_20:
        v24 = v54;
      }

      v28 = v118 + 1;
      v27 = v29;
      if (v118 + 1 == v30)
      {

        a1 = v94;
        v60 = v123;
        goto LABEL_23;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v123 = sub_1DEEA3B70(v60);

  v126 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
LABEL_62:
    v61 = sub_1DEF8DE68();
    v121 = v11;
    if (!v61)
    {
      goto LABEL_63;
    }

    goto LABEL_25;
  }

  v61 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v121 = v11;
  if (v61)
  {
LABEL_25:
    v11 = a1 & 0xC000000000000001;
    swift_beginAccess();
    LODWORD(v122) = 0;
    v62 = 0;
    v124 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v11)
      {
        v63 = MEMORY[0x1E12CB6E0](v62, a1);
        v64 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v62 >= *(v124 + 16))
        {
          goto LABEL_60;
        }

        v63 = *(a1 + 8 * v62 + 32);

        v64 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      v65 = *(v63 + 32);
      v66 = v3[30];
      if ((v66 & 0xC000000000000001) != 0)
      {

        v67 = sub_1DEF8E0B8();

        if (!v67)
        {

LABEL_46:

          goto LABEL_50;
        }

        v125 = v67;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v68 = v127;

        if (!v68)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (!*(v66 + 16))
        {
          goto LABEL_46;
        }

        v69 = sub_1DEEAF20C(v65);
        if ((v70 & 1) == 0)
        {

          goto LABEL_46;
        }

        v68 = *(*(v66 + 56) + 8 * v69);

        if (!v68)
        {
          goto LABEL_46;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v71 = *(v68 + 24);
        ObjectType = swift_getObjectType();
        (*(v71 + 8))(&v127, ObjectType, v71);
        swift_unknownObjectRelease();
        if (v127 == 1)
        {

          LODWORD(v122) = 1;
          v62 = v64;
          goto LABEL_51;
        }
      }

      sub_1DEE29594((v3 + 24), &v127);
      v73 = v129;
      v74 = v130;
      __swift_project_boxed_opaque_existential_1(&v127, v129);
      v75 = (*(*(*(v74 + 8) + 8) + 64))(v63, v73);
      if (v75)
      {
        v76 = v75;
        __swift_destroy_boxed_opaque_existential_1(&v127);
        if (*(v76 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination))
        {

          v78 = sub_1DEEA3B70(v77);

          sub_1DEE944FC(v78);
        }

        else
        {

          v126 = v123;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v127);
      }

      v3 = v117;
LABEL_50:
      ++v62;
LABEL_51:
      if (v64 == v61)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_63:
  LODWORD(v122) = 0;
LABEL_64:

  sub_1DEE29594((v3 + 24), &v127);
  v79 = v129;
  v80 = v130;
  __swift_project_boxed_opaque_existential_1(&v127, v129);
  (*(*(v80 + 16) + 136))(a1, v79);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v81 = v126;
  v82 = *(v126 + 16);
  if (v82)
  {
    v83 = sub_1DEF2B328(*(v126 + 16), 0);
    sub_1DEF2D158(&v127, &v83[(*(v121 + 80) + 32) & ~*(v121 + 80)], v82, v81);
    v85 = v84;
    result = sub_1DEE2774C(v127);
    if (v85 != v82)
    {
      __break(1u);
      goto LABEL_72;
    }

    v125 = v83;
    v127 = v104;
    v128 = v103;
    sub_1DEE6E9BC(&v125, &v127);
  }

  if ((v122 & 1) == 0)
  {
    return result;
  }

  v87 = v100;
  v88 = v95;
  *v100 = v95;
  v89 = v102;
  v97(v87, v98, v102);
  v90 = v88;
  LOBYTE(v88) = sub_1DEF8D7B8();
  result = v96(v87, v89);
  if ((v88 & 1) == 0)
  {
LABEL_72:
    __break(1u);
    return result;
  }

  v91 = v3[63];
  v92 = v3[64];
  __swift_project_boxed_opaque_existential_1(v3 + 60, v91);
  v93 = *(v92 + 8);

  v93(sub_1DEEACFC8, v3, v91, v92);
}

uint64_t Replicator.set(dataSource:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 232);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  swift_unknownObjectRetain();

  sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9BD00, v7, sub_1DEEA6408, v8, 0.0);
}

uint64_t sub_1DEE6D230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v4[29];
  *v12 = v13;
  v14 = *MEMORY[0x1E69E8020];
  v15 = *MEMORY[0x1E69E8020];
  v39 = *(v9 + 104);
  v39(v12, v15, v8, v10);
  v37 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  v38 = *(v9 + 8);
  v38(v12, v8);
  if (v13)
  {
    HIDWORD(v36) = v14;
    if (a1)
    {
      swift_beginAccess();
      v16 = v4[30];

      swift_unknownObjectRetain();
      v17 = sub_1DEF718FC(a3, v16);

      if (v17)
      {
        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          goto LABEL_18;
        }
      }

      type metadata accessor for Replicator.WeakSource();
      v19 = swift_allocObject();
      *(v19 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v19 + 24) = a2;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v20 = v4[30];
      v21 = HIDWORD(v36);
      if ((v20 & 0xC000000000000001) != 0)
      {
        if (v20 < 0)
        {
          v22 = v4[30];
        }

        else
        {
          v22 = v20 & 0xFFFFFFFFFFFFFF8;
        }

        v23 = sub_1DEF8DE68();
        if (__OFADD__(v23, 1))
        {
          goto LABEL_17;
        }

        v4[30] = sub_1DEEB0920(v22, v23 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v4[30];
      sub_1DEF3E3C0(v19, a3, isUniquelyReferenced_nonNull_native);
      v4[30] = v40;
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      sub_1DEE29594((v4 + 24), v41);
      v25 = v42;
      v26 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v27 = (*(*(*(v26 + 8) + 8) + 72))(a3, v25);
      v28 = sub_1DEE5844C(v27, sub_1DEF415BC, sub_1DEF41428, &qword_1ECDE3DE0, &unk_1DEF91700);

      __swift_destroy_boxed_opaque_existential_1(v41);
      sub_1DEE29594((v4 + 24), v41);
      v29 = v42;
      v30 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      (*(*(v30 + 16) + 136))(v28, v29);

      __swift_destroy_boxed_opaque_existential_1(v41);
      swift_beginAccess();
      sub_1DEF750BC(a3);
      swift_endAccess();

      v21 = HIDWORD(v36);
    }

    sub_1DEE9470C(a3);
    *v12 = v37;
    (v39)(v12, v21, v8);
    v31 = sub_1DEF8D7B8();
    v38(v12, v8);
    if (v31)
    {
      v32 = v4[63];
      v33 = v4[64];
      __swift_project_boxed_opaque_existential_1(v4 + 60, v32);
      v34 = *(v33 + 8);

      v34(sub_1DEEACFC8, v4, v32, v33);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  swift_unknownObjectRelease();
  result = sub_1DEF8E0F8();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Replicator.set(clientID:enabled:)(Swift::String clientID, Swift::Bool enabled)
{
  object = clientID._object;
  countAndFlagsBits = clientID._countAndFlagsBits;
  v6 = *(v2 + 232);
  v7 = swift_allocObject();
  *(v7 + 16) = enabled;
  *(v7 + 24) = countAndFlagsBits;
  *(v7 + 32) = object;
  *(v7 + 40) = v2;

  sub_1DEE2C448(0xD000000000000020, 0x80000001DEF9BD20, v6, sub_1DEEA640C, v7, 0.0);
}

uint64_t sub_1DEE6D7A4(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, void *a4, unint64_t a5, uint64_t a6)
{
  v112[1] = a2;
  v113 = a1;
  v116 = sub_1DEF8D788();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = (v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = sub_1DEF8D3F8();
  v11 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v127 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v112 - v13;
  v14 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v134 = v112 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v133 = v112 - v20;
  if (a3)
  {
    if (qword_1ECDE2E58 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_3;
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v27 = sub_1DEF8D508();
  v28 = __swift_project_value_buffer(v27, qword_1ECDF6028);

  v125 = v28;
  v29 = sub_1DEF8D4D8();
  v30 = sub_1DEF8DCB8();

  v31 = os_log_type_enabled(v29, v30);
  v132 = v16;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v149 = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_1DEE12A5C(a4, a5, &v149);
    _os_log_impl(&dword_1DEE0F000, v29, v30, "Disabling client %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12CCD70](v33, -1, -1);
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  swift_beginAccess();

  sub_1DEF38588(v153, a4, a5);
  swift_endAccess();

  swift_beginAccess();

  v35 = a4;
  a4 = 0;
  v36 = sub_1DEEA5168(v34, v35, a5);

  a5 = sub_1DEE5844C(v36, sub_1DEF415FC, sub_1DEF41EBC, &qword_1ECDE3DA0, &qword_1DEF916B8);
  v120 = 0;

  if (a5 >> 62)
  {
    v37 = sub_1DEF8DE68();
    if (v37)
    {
      goto LABEL_12;
    }

LABEL_89:
    v26 = v116;
    goto LABEL_90;
  }

  v37 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_89;
  }

LABEL_12:
  v124 = a5 & 0xC000000000000001;
  swift_beginAccess();
  v118 = a5 & 0xFFFFFFFFFFFFFF8;
  v117 = a5 + 32;
  v136 = (v11 + 56);
  v135 = (v11 + 48);
  v126 = (v11 + 32);
  v131 = (v11 + 8);
  *&v38 = 136446210;
  v119 = v38;
  v39 = 0;
  v123 = a6;
  v122 = a5;
  v121 = v37;
  while (1)
  {
    if (v124)
    {
      a4 = MEMORY[0x1E12CB6E0](v39, a5);
      v43 = __OFADD__(v39, 1);
      v44 = v39 + 1;
      if (v43)
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v39 >= *(v118 + 16))
      {
        goto LABEL_86;
      }

      a4 = *(v117 + 8 * v39);

      v43 = __OFADD__(v39, 1);
      v44 = v39 + 1;
      if (v43)
      {
        goto LABEL_84;
      }
    }

    v45 = sub_1DEF8D4D8();
    v46 = sub_1DEF8DCB8();

    v47 = os_log_type_enabled(v45, v46);
    v128 = v44;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v145 = v49;
      *v48 = v119;
      v50 = a4[5];
      v149 = a4[4];
      v150 = v50;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      MEMORY[0x1E12CB180](a4[2], a4[3]);

      v51 = sub_1DEE12A5C(v149, v150, &v145);

      *(v48 + 4) = v51;
      _os_log_impl(&dword_1DEE0F000, v45, v46, "Removing all remote records in zone %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E12CCD70](v49, -1, -1);
      MEMORY[0x1E12CCD70](v48, -1, -1);
    }

    v52 = v134;
    sub_1DEE29594(a6 + 192, &v149);
    v54 = v151;
    v53 = v152;
    __swift_project_boxed_opaque_existential_1(&v149, v151);
    v55 = *(*(*(v53 + 8) + 8) + 72);
    v129 = a4;
    v56 = v55(a4, v54);
    if ((v56 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1E69E7CC8];
      v145 = MEMORY[0x1E69E7CC8];
      v141 = sub_1DEF8E038();
      v58 = sub_1DEF8E0D8();
      v60 = v133;
      if (v58)
      {
        v61 = v59;
        v62 = v58;
        v140 = type metadata accessor for Record.ID(0);
        v63 = v62;
        v64 = v57;
        while (1)
        {
          v144 = v63;
          swift_dynamicCast();
          v143 = v61;
          type metadata accessor for RecordMetadata(0);
          swift_dynamicCast();
          a6 = v148;
          if (!v148)
          {
            goto LABEL_41;
          }

          v142 = v64;
          sub_1DEEACA70(v148 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v60, type metadata accessor for Record.ID.Ownership);
          v66 = v139;
          (*v136)(v52, 1, 1, v139);
          v67 = *(v138 + 48);
          v68 = v137;
          sub_1DEEACA70(v60, v137, type metadata accessor for Record.ID.Ownership);
          v69 = v66;
          sub_1DEEACA70(v52, v68 + v67, type metadata accessor for Record.ID.Ownership);
          v70 = *v135;
          if ((*v135)(v68, 1, v69) == 1)
          {

            sub_1DEE273A0(v52, type metadata accessor for Record.ID.Ownership);
            sub_1DEE273A0(v60, type metadata accessor for Record.ID.Ownership);
            if (v70(v68 + v67, 1, v69) != 1)
            {
              goto LABEL_34;
            }

            sub_1DEE273A0(v68, type metadata accessor for Record.ID.Ownership);

            v64 = v142;
          }

          else
          {
            v71 = v132;
            sub_1DEEACA70(v68, v132, type metadata accessor for Record.ID.Ownership);
            if (v70(v68 + v67, 1, v69) == 1)
            {

              v72 = v134;
              sub_1DEE273A0(v134, type metadata accessor for Record.ID.Ownership);
              v60 = v133;
              sub_1DEE273A0(v133, type metadata accessor for Record.ID.Ownership);
              v73 = v71;
              v52 = v72;
              (*v131)(v73, v69);
LABEL_34:
              sub_1DEE171B4(v68, &unk_1ECDE40F0, &unk_1DEF91C20);

              v64 = v142;
LABEL_35:
              v74 = *(v64 + 16);
              if (*(v64 + 24) <= v74)
              {
                sub_1DEEB1864(v74 + 1, 1);
              }

              v64 = v145;
              sub_1DEF41EC0();
              goto LABEL_27;
            }

            v75 = v127;
            (*v126)(v127, v68 + v67, v69);

            v130 = sub_1DEF8D3A8();
            v76 = *v131;
            (*v131)(v75, v69);
            v77 = v134;
            sub_1DEE273A0(v134, type metadata accessor for Record.ID.Ownership);
            v60 = v133;
            sub_1DEE273A0(v133, type metadata accessor for Record.ID.Ownership);
            v78 = v71;
            v52 = v77;
            v76(v78, v69);
            sub_1DEE273A0(v68, type metadata accessor for Record.ID.Ownership);

            v64 = v142;
            if ((v130 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

LABEL_27:
          v63 = sub_1DEF8E0D8();
          v61 = v65;
          if (!v63)
          {
            goto LABEL_41;
          }
        }
      }

      v64 = v57;
LABEL_41:
      sub_1DEE2774C(v141 | 0x8000000000000000);
    }

    else
    {
      v79 = v120;
      v64 = sub_1DEE9EEA4(v56, sub_1DEEA08F4, sub_1DEEA08F4);
      v120 = v79;
    }

    __swift_destroy_boxed_opaque_existential_1(&v149);
    a5 = v64 & 0xC000000000000001;
    if ((v64 & 0xC000000000000001) == 0)
    {
      break;
    }

    v80 = sub_1DEF8DE68();
    a4 = v129;
    if (v80)
    {
      v81 = v80;
      v148 = MEMORY[0x1E69E7CC0];
      sub_1DEF8DFD8();
      v145 = sub_1DEF8E028();
      v146 = v82;
      v147 = 1;
      if ((v81 & 0x8000000000000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_85;
    }

LABEL_13:

    v40 = MEMORY[0x1E69E7CC0];
LABEL_14:
    a6 = v123;
    sub_1DEE29594(v123 + 192, &v149);
    v42 = v151;
    v41 = v152;
    __swift_project_boxed_opaque_existential_1(&v149, v151);
    (*(*(v41 + 16) + 136))(v40, v42);

    __swift_destroy_boxed_opaque_existential_1(&v149);
    v39 = v128;
    a5 = v122;
    if (v128 == v121)
    {
      goto LABEL_89;
    }
  }

  v81 = *(v64 + 16);
  a4 = v129;
  if (!v81)
  {
    goto LABEL_13;
  }

  v148 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  v83 = sub_1DEF8DE18();
  v84 = *(v64 + 36);
  v145 = v83;
  v146 = v84;
  v147 = 0;
LABEL_48:
  a4 = 0;
  v85 = v64 & 0xFFFFFFFFFFFFFF8;
  if (v64 < 0)
  {
    v85 = v64;
  }

  v141 = v64 + 64;
  v142 = v85;
  v140 = v64 + 72;
  while (a4 < v81)
  {
    v43 = __OFADD__(a4, 1);
    a4 = (a4 + 1);
    if (v43)
    {
      goto LABEL_78;
    }

    a6 = v145;
    v87 = v146;
    v88 = v147;
    v89 = v64;
    sub_1DEF415BC(&v149, v145, v146, v147, v64);

    sub_1DEF8DFB8();
    sub_1DEF8DFE8();
    sub_1DEF8DFF8();
    result = sub_1DEF8DFC8();
    if (a5)
    {
      if (!v88)
      {
        goto LABEL_93;
      }

      if (sub_1DEF8E058())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DE0, &unk_1DEF91700);
      v86 = sub_1DEF8D878();
      sub_1DEF8E0E8();
      v86(&v149, 0);
      if (a4 == v81)
      {
LABEL_76:
        sub_1DEE2F804(v145, v146, v147);

        v40 = v148;
        a4 = v129;
        goto LABEL_14;
      }
    }

    else
    {
      if (v88)
      {
        if (sub_1DEF8E068() != *(v64 + 36))
        {
          goto LABEL_79;
        }

        v144 = sub_1DEF8E078();
        type metadata accessor for Record.ID(0);
        swift_dynamicCast();
        sub_1DEEAF3E8(v149);
        v92 = v91;

        if ((v92 & 1) == 0)
        {
          goto LABEL_81;
        }

        sub_1DEF8E048();
        v93 = sub_1DEF8E098();
        v95 = v94;
        sub_1DEE2F804(a6, v87, 1);
        swift_unknownObjectRelease();
      }

      else
      {
        if (a6 < 0)
        {
          goto LABEL_80;
        }

        v93 = 1 << *(v64 + 32);
        if (a6 >= v93)
        {
          goto LABEL_80;
        }

        v96 = a6 >> 6;
        v97 = *(v141 + 8 * (a6 >> 6));
        if (((v97 >> a6) & 1) == 0)
        {
          goto LABEL_82;
        }

        if (*(v64 + 36) != v87)
        {
          goto LABEL_83;
        }

        v98 = v97 & (-2 << (a6 & 0x3F));
        if (v98)
        {
          v93 = __clz(__rbit64(v98)) | a6 & 0x7FFFFFFFFFFFFFC0;
          v95 = *(v64 + 36);
        }

        else
        {
          v99 = v96 << 6;
          v100 = v96 + 1;
          v101 = (v140 + 8 * v96);
          while (v100 < (v93 + 63) >> 6)
          {
            v103 = *v101++;
            v102 = v103;
            v99 += 64;
            ++v100;
            if (v103)
            {
              sub_1DEE2F804(a6, v87, 0);
              v93 = __clz(__rbit64(v102)) + v99;
              goto LABEL_74;
            }
          }

          sub_1DEE2F804(a6, v87, 0);
LABEL_74:
          v95 = *(v89 + 36);
        }
      }

      v145 = v93;
      v146 = v95;
      v147 = v88;
      v64 = v89;
      if (a4 == v81)
      {
        goto LABEL_76;
      }
    }
  }

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
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_3:
  v21 = sub_1DEF8D508();
  __swift_project_value_buffer(v21, qword_1ECDF6028);

  v22 = sub_1DEF8D4D8();
  v23 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v149 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1DEE12A5C(a4, a5, &v149);
    _os_log_impl(&dword_1DEE0F000, v22, v23, "Enabling client %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E12CCD70](v25, -1, -1);
    MEMORY[0x1E12CCD70](v24, -1, -1);
  }

  v26 = v116;
  swift_beginAccess();
  sub_1DEECB6E4(a4, a5);
  swift_endAccess();
LABEL_90:

  v104 = *(a6 + 232);
  v105 = v114;
  *v114 = v104;
  v106 = v115;
  (*(v115 + 104))(v105, *MEMORY[0x1E69E8020], v26);
  v107 = v104;
  LOBYTE(v104) = sub_1DEF8D7B8();
  result = (*(v106 + 8))(v105, v26);
  if (v104)
  {
    v108 = *(a6 + 504);
    v109 = *(a6 + 512);
    __swift_project_boxed_opaque_existential_1((a6 + 480), v108);
    v110 = *(v109 + 8);

    v110(sub_1DEEACFC8, a6, v108, v109);

    v145 = 0;
    v149 = 0;
    LOBYTE(v150) = 0;
    v111 = sub_1DEE6E9BC(&v145, &v149);
    return v113(v111);
  }

  else
  {
    __break(1u);
LABEL_93:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE6E9BC(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DEF8D788();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v25 = *a2;
  v24 = *(a2 + 8);
  v11 = v2[29];
  *v9 = v11;
  v12 = *MEMORY[0x1E69E8020];
  v13 = *(v6 + 104);
  v13(v9, v12, v5, v7);
  v23 = v11;
  LOBYTE(v11) = sub_1DEF8D7B8();
  v14 = *(v6 + 8);
  result = v14(v9, v5);
  if (v11)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v10;
    *(v16 + 32) = v25;
    *(v16 + 40) = v24;
    *v9 = v23;
    (v13)(v9, v12, v5);

    v17 = sub_1DEF8D7B8();
    result = v14(v9, v5);
    if (v17)
    {
      v18 = v2[63];
      v19 = v2[64];
      __swift_project_boxed_opaque_existential_1(v2 + 60, v18);
      v20 = swift_allocObject();
      v20[2] = v2;
      v20[3] = sub_1DEEAC82C;
      v20[4] = v16;
      v21 = *(v19 + 8);

      v21(sub_1DEEACE1C, v20, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Replicator.sync()()
{
  v1 = *(v0 + 232);

  sub_1DEE2C448(0x676E69636E7953, 0xE700000000000000, v1, sub_1DEEA641C, v0, 0.0);
}

uint64_t sub_1DEE6ECFC(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DEEACE20;
  *(v6 + 24) = v5;
  v9[4] = sub_1DEE46D40;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DEE134F4;
  v9[3] = &block_descriptor_362;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void (*sub_1DEE6EE58(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = *v1;
  sub_1DEF8DD18();
  v4[56] = *v4;
  return sub_1DEE6EF08;
}

void sub_1DEE6EF08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  isEscapingClosureAtFileLocation = *(v3 + 232);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v4 = v7;
    *(v7 + 16) = sub_1DEEACE20;
    *(v7 + 24) = v6;
    v2[4] = sub_1DEE46D40;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1DEE134F4;
    v2[3] = &block_descriptor_340;
    v8 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DEEACE20;
  *(v10 + 24) = v9;
  v2[4] = sub_1DEE46D40;
  v2[5] = v10;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1DEE134F4;
  v2[3] = &block_descriptor_351;
  v11 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1DEE6F274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(v7 + 232);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  swift_unknownObjectRetain();

  sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9BD00, v8, sub_1DEEACF60, v9, 0.0);
}

uint64_t sub_1DEE6F344(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(v7 + 232);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = v7;

  sub_1DEE2C448(0xD000000000000020, 0x80000001DEF9BD20, v8, sub_1DEEACCF0, v9, 0.0);
}

uint64_t sub_1DEE6F410()
{
  v1 = *v0;
  v2 = *(*v0 + 232);

  sub_1DEE2C448(0x676E69636E7953, 0xE700000000000000, v2, sub_1DEEACF5C, v1, 0.0);
}

uint64_t sub_1DEE6F488(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C28, &qword_1DEF910E8);
  sub_1DEF8DD18();
  return v2;
}

uint64_t sub_1DEE6F500(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  sub_1DEF8DD18();
  return v2;
}

uint64_t sub_1DEE6F578(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C30, &unk_1DEF910F0);
  sub_1DEF8DD18();
  return v2;
}

uint64_t sub_1DEE6F5F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C38, &qword_1DEF91100);
  sub_1DEF8DD18();
  return v3;
}

unint64_t Replicator.captureState(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000;
  if (v3 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return sub_1DEE9AD1C();
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return sub_1DEE9BFF0();
  }

  else if (a1 == 0x746163696C706572 && a2 == 0xEA0000000000726FLL || (sub_1DEF8E4E8() & 1) != 0)
  {

    return sub_1DEE9D7B0();
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEC00000073657079 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return sub_1DEE9DFA0();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1DEEA31A8(v6);
  }
}

Swift::Void __swiftcall Replicator.retryStuckRemotePairings()()
{
  v1 = *(v0 + 232);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DEEA6420;
  *(v2 + 24) = v0;
  v4[4] = sub_1DEE46D40;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEE134F4;
  v4[3] = &block_descriptor_178;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE6F9E0(void *a1)
{
  v2 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v77 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v67 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v67 - v8;
  swift_beginAccess();
  v68 = a1;
  sub_1DEE29594((a1 + 24), v85);
  v9 = v86;
  v10 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v11 = (*(*(*(v10 + 8) + 8) + 32))(v9);
  v12 = sub_1DEE9EEA4(v11, sub_1DEEA048C, sub_1DEEA048C);

  __swift_destroy_boxed_opaque_existential_1(v85);
  v13 = v12[2];
  if (v13)
  {
    v85[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E28(0, v13, 0);
    v84 = v85[0];
    v14 = (v12 + 8);
    v15 = sub_1DEF8DE18();
    v16 = 0;
    v17 = *(v12 + 9);
    v69 = (v12 + 9);
    v70 = v13;
    v72 = (v12 + 8);
    v71 = v17;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v12 + 32))
    {
      v19 = v15 >> 6;
      if ((*&v14[8 * (v15 >> 6)] & (1 << v15)) == 0)
      {
        goto LABEL_37;
      }

      if (v17 != *(v12 + 9))
      {
        goto LABEL_38;
      }

      v78 = v16;
      v79 = 1 << v15;
      v20 = v76;
      v21 = *(v76 + 48);
      v22 = v12[6];
      v23 = sub_1DEF8D3F8();
      v24 = *(v23 - 8);
      v25 = v73;
      (*(v24 + 16))(v73, v22 + *(v24 + 72) * v15, v23);
      v26 = v12[7];
      v27 = (type metadata accessor for PairingRelationship(0) - 8);
      sub_1DEEACA70(v26 + *(*v27 + 72) * v15, &v25[v21], type metadata accessor for PairingRelationship);
      v28 = v74;
      (*(v24 + 32))(v74, v25, v23);
      sub_1DEEAB218(&v25[v21], v28 + *(v20 + 48), type metadata accessor for PairingRelationship);
      v29 = v75;
      sub_1DEE1BA88(v28, v75, &unk_1ECDE4350, &qword_1DEF93400);
      v30 = v29 + *(v20 + 48);
      v31 = v77;
      sub_1DEEACA70(v30 + v27[7], v77, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v30, type metadata accessor for PairingRelationship);
      v32 = *(v31 + 8);
      v83 = *v31;
      v33 = *(v31 + 160);
      v34 = *(v31 + 168);
      v82 = *(v31 + 48);
      v35 = *(v31 + 32);
      v80 = *(v31 + 40);
      v81 = v35;

      sub_1DEE273A0(v31, type metadata accessor for DeviceDescriptor);
      (*(v24 + 8))(v29, v23);
      v36 = v84;
      v85[0] = v84;
      v38 = *(v84 + 16);
      v37 = *(v84 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1DEEC7E28((v37 > 1), v38 + 1, 1);
        v36 = v85[0];
      }

      *(v36 + 16) = v38 + 1;
      v39 = v36 + 56 * v38;
      *(v39 + 32) = v83;
      *(v39 + 40) = v32;
      *(v39 + 48) = v33;
      *(v39 + 56) = v34;
      *(v39 + 64) = v82;
      v40 = v80;
      *(v39 + 72) = v81;
      *(v39 + 80) = v40;
      v18 = 1 << *(v12 + 32);
      if (v15 >= v18)
      {
        goto LABEL_39;
      }

      v14 = v72;
      v41 = *&v72[8 * v19];
      if ((v41 & v79) == 0)
      {
        goto LABEL_40;
      }

      v84 = v36;
      LODWORD(v17) = v71;
      if (v71 != *(v12 + 9))
      {
        goto LABEL_41;
      }

      v42 = v41 & (-2 << (v15 & 0x3F));
      if (v42)
      {
        v18 = __clz(__rbit64(v42)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v19 << 6;
        v44 = v19 + 1;
        v45 = &v69[8 * v19];
        while (v44 < (v18 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_1DEE2F804(v15, v71, 0);
            v18 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        sub_1DEE2F804(v15, v71, 0);
      }

LABEL_4:
      v16 = v78 + 1;
      v15 = v18;
      if (v78 + 1 == v70)
      {
        goto LABEL_21;
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
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v84 = MEMORY[0x1E69E7CC0];
LABEL_21:
  if (qword_1ECDE2E58 != -1)
  {
LABEL_42:
    swift_once();
  }

  v48 = sub_1DEF8D508();
  __swift_project_value_buffer(v48, qword_1ECDF6028);
  v49 = v68;

  v50 = v49;
  v51 = sub_1DEF8D4D8();
  v52 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v85[0] = v54;
    *v53 = 136380931;
    if (v50[32])
    {
      v55 = v50[31];
      v56 = v50[32];
    }

    else
    {
      v57 = v50[23];
      ObjectType = swift_getObjectType();
      v59 = (*(v57 + 16))(ObjectType, v57);
      if (v60)
      {
        v55 = v59;
      }

      else
      {
        v55 = 0xD000000000000016;
      }

      if (v60)
      {
        v56 = v60;
      }

      else
      {
        v56 = 0x80000001DEF9BCA0;
      }
    }

    v61 = sub_1DEE12A5C(v55, v56, v85);

    *(v53 + 4) = v61;
    *(v53 + 12) = 2082;
    v62 = MEMORY[0x1E12CB290](v84, &type metadata for HandshakeDescriptor);
    v64 = sub_1DEE12A5C(v62, v63, v85);

    *(v53 + 14) = v64;
    _os_log_impl(&dword_1DEE0F000, v51, v52, "(%{private}s) Attempting to handshake with stuck pairings: %{public}s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v54, -1, -1);
    MEMORY[0x1E12CCD70](v53, -1, -1);
  }

  else
  {
  }

  v65 = v12[2];

  if (v65)
  {
    sub_1DEE701E0(v84);
  }
}

uint64_t sub_1DEE701E0(uint64_t a1)
{
  v22 = a1;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[29];
  *v6 = v7;
  v8 = *MEMORY[0x1E69E8020];
  v9 = *(v3 + 104);
  v9(v6, v8, v2, v4);
  v10 = v7;
  v11 = sub_1DEF8D7B8();
  v12 = *(v3 + 8);
  result = v12(v6, v2);
  if (v11)
  {
    v14 = swift_allocObject();
    v15 = v10;
    v16 = v22;
    *(v14 + 16) = v1;
    *(v14 + 24) = v16;
    *v6 = v15;
    (v9)(v6, v8, v2);

    LOBYTE(v16) = sub_1DEF8D7B8();
    result = v12(v6, v2);
    if (v16)
    {
      v17 = v1[63];
      v18 = v1[64];
      __swift_project_boxed_opaque_existential_1(v1 + 60, v17);
      v19 = swift_allocObject();
      v19[2] = v1;
      v19[3] = sub_1DEEABFA4;
      v19[4] = v14;
      v20 = *(v18 + 8);

      v20(sub_1DEEACE1C, v19, v17, v18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE70420()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEEACDA4;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE46D40;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_314;
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

uint64_t sub_1DEE7056C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1DEF8D1E8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1DEE29DC8(a2, v7);
  return sub_1DEE171B4(v7, &qword_1ECDE4890, &qword_1DEF90990);
}

uint64_t sub_1DEE70704@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  if (*(a2 + 176) == result)
  {
    v6 = (a3 + *(type metadata accessor for Message(0) + 24));
    result = *v6;
    if (*v6 == 0x7065526574617453 && v6[1] == 0xEF726F746163696CLL)
    {
      v5 = 1;
    }

    else
    {
      result = sub_1DEF8E4E8();
      v5 = result & 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  return result;
}

uint64_t sub_1DEE7083C(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2[29];
  *v10 = v11;
  v12 = *(v7 + 104);
  v25 = *MEMORY[0x1E69E8020];
  v24 = v12;
  v12(v10, v8);
  v23 = v11;
  LOBYTE(v11) = sub_1DEF8D7B8();
  v13 = *(v7 + 8);
  result = v13(v10, v6);
  if (v11)
  {
    sub_1DEEACA70(v26, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Request);
    v15 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    sub_1DEEAB218(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ReplicatorMessage.Handshake.Request);
    *(v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v17 = v24;
    *v10 = v23;
    v17(v10, v25, v6);

    LOBYTE(v15) = sub_1DEF8D7B8();
    result = v13(v10, v6);
    if (v15)
    {
      v18 = v2[63];
      v19 = v2[64];
      __swift_project_boxed_opaque_existential_1(v2 + 60, v18);
      v20 = swift_allocObject();
      v20[2] = v2;
      v20[3] = sub_1DEEAAC28;
      v20[4] = v16;
      v21 = *(v19 + 8);

      v21(sub_1DEEACE1C, v20, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE70B44(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2[29];
  *v10 = v11;
  v12 = *(v7 + 104);
  v25 = *MEMORY[0x1E69E8020];
  v24 = v12;
  v12(v10, v8);
  v23 = v11;
  LOBYTE(v11) = sub_1DEF8D7B8();
  v13 = *(v7 + 8);
  result = v13(v10, v6);
  if (v11)
  {
    sub_1DEEACA70(v26, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Response);
    v15 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    sub_1DEEAB218(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ReplicatorMessage.Handshake.Response);
    *(v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v17 = v24;
    *v10 = v23;
    v17(v10, v25, v6);

    LOBYTE(v15) = sub_1DEF8D7B8();
    result = v13(v10, v6);
    if (v15)
    {
      v18 = v2[63];
      v19 = v2[64];
      __swift_project_boxed_opaque_existential_1(v2 + 60, v18);
      v20 = swift_allocObject();
      v20[2] = v2;
      v20[3] = sub_1DEEAB5A0;
      v20[4] = v16;
      v21 = *(v19 + 8);

      v21(sub_1DEEACE1C, v20, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE70E4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[29];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (qword_1ECDE2E58 == -1)
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
  v17 = sub_1DEF8D508();
  __swift_project_value_buffer(v17, qword_1ECDF6028);
  sub_1DEEACA70(a1, v9, type metadata accessor for ReplicatorMessage.Handshake.Response);

  v18 = sub_1DEF8D4D8();
  v19 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v28);
    *(v20 + 12) = 2080;
    sub_1DEEACA70(v9, v6, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v22 = sub_1DEF8D988();
    v24 = v23;
    sub_1DEE273A0(v9, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v25 = sub_1DEE12A5C(v22, v24, &v28);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_1DEE0F000, v18, v19, "(%{public}s) Received handshake response: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v21, -1, -1);
    MEMORY[0x1E12CCD70](v20, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v9, type metadata accessor for ReplicatorMessage.Handshake.Response);
  }

  return sub_1DEE78B0C(a1);
}

void sub_1DEE711C0(uint64_t *a1)
{
  v3 = v1;
  v200 = a1;
  v4 = sub_1DEF8D698();
  v174 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D6D8();
  v173 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v172 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_1DEF8D3F8();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v177 = v9;
  v178 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v183 = &v163 - v11;
  v184 = type metadata accessor for PairingRelationship(0);
  v190 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v166 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v181 = &v163 - v14;
  v171 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v193 = &v163 - v17;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v194);
  v195 = &v163 - v18;
  v196 = type metadata accessor for SessionManager.Session(0);
  isa = v196[-1].isa;
  MEMORY[0x1EEE9AC00](v196);
  v170 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v199 = &v163 - v21;
  v192 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v167 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v176 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v163 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v191 = &v163 - v26;
  v168 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v163 - v29;
  v31 = sub_1DEF8D788();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = (&v163 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = v1[29];
  *v35 = v36;
  v37 = *(v32 + 104);
  v187 = *MEMORY[0x1E69E8020];
  v188 = v32 + 104;
  v186 = v37;
  v37(v35, v33);
  v185 = v36;
  v38 = sub_1DEF8D7B8();
  v41 = *(v32 + 8);
  v40 = v32 + 8;
  v39 = v41;
  v189 = v31;
  v41(v35, v31);
  if (v38)
  {
    if (qword_1ECDE2E58 == -1)
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
  v42 = sub_1DEF8D508();
  v43 = __swift_project_value_buffer(v42, qword_1ECDF6028);
  sub_1DEEACA70(v200, v30, type metadata accessor for ReplicatorMessage.Handshake.Complete);

  v197 = v43;
  v44 = sub_1DEF8D4D8();
  v45 = sub_1DEF8DCB8();

  v46 = os_log_type_enabled(v44, v45);
  v165 = v4;
  v164 = v7;
  v163 = v6;
  v182 = v39;
  if (v46)
  {
    v47 = v3;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock = v49;
    *v48 = 136446466;
    *(v48 + 4) = sub_1DEE12A5C(v47[66], v47[67], &aBlock);
    *(v48 + 12) = 2080;
    sub_1DEEACA70(v30, v191, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    v50 = sub_1DEF8D988();
    v52 = v51;
    sub_1DEE273A0(v30, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    v53 = sub_1DEE12A5C(v50, v52, &aBlock);

    *(v48 + 14) = v53;
    _os_log_impl(&dword_1DEE0F000, v44, v45, "(%{public}s) Received handshake complete %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v49, -1, -1);
    v54 = v48;
    v3 = v47;
    MEMORY[0x1E12CCD70](v54, -1, -1);
  }

  else
  {

    v55 = sub_1DEE273A0(v30, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  }

  MEMORY[0x1EEE9AC00](v55);

  v56 = v195;
  sub_1DEF8DD18();

  v57 = v196;
  v58 = (*(isa + 6))(v56, 1, v196);
  v59 = v199;
  if (v58 == 1)
  {
    sub_1DEE171B4(v56, &qword_1ECDE3D08, &unk_1DEF95E50);

    v60 = sub_1DEF8D4D8();
    v61 = sub_1DEF8DC98();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v62 = 136446210;
      *(v62 + 4) = sub_1DEE12A5C(v3[66], v3[67], &aBlock);
      _os_log_impl(&dword_1DEE0F000, v60, v61, "(%{public}s) No session established", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1E12CCD70](v63, -1, -1);
      MEMORY[0x1E12CCD70](v62, -1, -1);
    }

    return;
  }

  sub_1DEEAB218(v56, v199, type metadata accessor for SessionManager.Session);
  v64 = v185;
  *v35 = v185;
  v65 = v189;
  v186(v35, v187, v189);
  v66 = v64;
  isEscapingClosureAtFileLocation = sub_1DEF8D7B8();
  v182(v35, v65);
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v140 = sub_1DEF8DE68();
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1DEE29594((v3 + 24), &aBlock);
  v68 = v205;
  v69 = v206;
  __swift_project_boxed_opaque_existential_1(&aBlock, v205);
  v70 = *(v69 + 1);
  v71 = v183;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(*(v59 + *(v57 + 20)), *(v59 + *(v57 + 20) + 8), v68, v70, v183);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v40 = v184;
  if ((*(v190 + 48))(v71, 1, v184) == 1)
  {
    sub_1DEE171B4(v71, &qword_1ECDE3C18, &unk_1DEF94D20);

    v72 = sub_1DEF8D4D8();
    v73 = sub_1DEF8DC98();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_1DEE12A5C(v3[66], v3[67], &aBlock);
      _os_log_impl(&dword_1DEE0F000, v72, v73, "(%{public}s) No pairing relationship established", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1E12CCD70](v75, -1, -1);
      MEMORY[0x1E12CCD70](v74, -1, -1);
    }

    sub_1DEE273A0(v59, type metadata accessor for SessionManager.Session);
    return;
  }

  v195 = v66;
  sub_1DEEAB218(v71, v193, type metadata accessor for PairingRelationship);
  v76 = v3[68];
  v196 = *(v76 + 32);
  v77 = v179;
  v78 = v178;
  v79 = v180;
  (*(v179 + 16))(v178, v59, v180);
  v80 = (*(v77 + 80) + 24) & ~*(v77 + 80);
  v56 = v80 + v177;
  v81 = swift_allocObject();
  *(v81 + 16) = v76;
  (*(v77 + 32))(v81 + v80, v78, v79);
  *(v81 + v56) = 1;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1DEEACDAC;
  *(v82 + 24) = v81;
  v206 = sub_1DEE46D40;
  v207 = v82;
  aBlock = MEMORY[0x1E69E9820];
  v2 = 1107296256;
  v203 = 1107296256;
  v204 = sub_1DEE134F4;
  v205 = &block_descriptor_712;
  v83 = _Block_copy(&aBlock);
  v57 = v207;
  swift_retain_n();

  dispatch_sync(v196, v83);
  _Block_release(v83);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_39;
  }

  v84 = v193;
  v85 = (v193 + *(v40 + 20));
  v86 = v192;
  v87 = v200;
  v88 = (v200 + *(v192 + 20));
  v89 = v88[1];
  aBlock = *v88;
  v203 = v89;
  sub_1DEE4F8C0(aBlock, v89);
  v90 = v181;
  v196 = v85;
  sub_1DEE5F828(v85, &aBlock, 0, 1, v181);
  sub_1DEE4F8D4(aBlock, v203);
  sub_1DEE273A0(v90, type metadata accessor for PairingRelationship);
  v194 = *(v87 + *(v86 + 24));
  v91 = sub_1DEEA7A18(v194, v84);
  v189 = *(v87 + *(v86 + 28));
  swift_beginAccess();
  v92 = v3[84];
  v93 = *(v92 + 16);
  v94 = MEMORY[0x1E69E7CC0];
  if (v93)
  {
    v188 = v91;
    v95 = v3;
    v94 = sub_1DEF2B2A4(v93, 0);
    v96 = sub_1DEF2DE0C(&aBlock, v94 + 4, v93, v92);
    v97 = aBlock;

    sub_1DEE2774C(v97);
    if (v96 != v93)
    {
      __break(1u);
      return;
    }

    v3 = v95;
    v91 = v188;
  }

  v99 = v3[27];
  v98 = v3[28];
  v100 = __swift_project_boxed_opaque_existential_1(v3 + 24, v99);
  v101 = *(v99 - 8);
  v102 = MEMORY[0x1EEE9AC00](v100);
  v104 = v3;
  v105 = &v163 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v101 + 16))(v105, v102);
  swift_beginAccess();

  sub_1DEF653EC(v106);
  v108 = v107;

  v109 = v193;
  v57 = sub_1DEED02EC(v193, v189, v91, v94, v105, v108, v110, v99, *(v98 + 8));

  v111 = v105;
  v3 = v104;
  (*(v101 + 8))(v111, v99);
  v112 = v166;
  sub_1DEEACA70(v109, v166, type metadata accessor for PairingRelationship);

  v113 = sub_1DEF8D4D8();
  v114 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    aBlock = v116;
    *v115 = 136446466;
    *(v115 + 4) = sub_1DEE12A5C(v104[66], v104[67], &aBlock);
    *(v115 + 12) = 2082;
    v117 = PairingRelationship.description.getter();
    v119 = v118;
    sub_1DEE273A0(v112, type metadata accessor for PairingRelationship);
    v120 = sub_1DEE12A5C(v117, v119, &aBlock);

    *(v115 + 14) = v120;
    _os_log_impl(&dword_1DEE0F000, v113, v114, "(%{public}s) [Handle Complete] Found pairing relationship: %{public}s", v115, 0x16u);
    swift_arrayDestroy();
    v121 = v116;
    v3 = v104;
    MEMORY[0x1E12CCD70](v121, -1, -1);
    MEMORY[0x1E12CCD70](v115, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v112, type metadata accessor for PairingRelationship);
  }

  v56 = v199;
  v122 = v176;
  v123 = v175;
  v40 = v193;
  if (v194[2])
  {
    v124 = v200;
    sub_1DEEACA70(v200, v175, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEEACA70(v124, v122, type metadata accessor for ReplicatorMessage.Handshake.Complete);

    v125 = sub_1DEF8D4D8();
    v126 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = v123;
      v128 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      aBlock = v194;
      *v128 = 136446722;
      *(v128 + 4) = sub_1DEE12A5C(v3[66], v3[67], &aBlock);
      *(v128 + 12) = 2050;
      v129 = v57;
      v130 = v40;
      v131 = v192;
      v132 = *(*(v127 + *(v192 + 24)) + 16);
      LODWORD(v189) = v126;
      sub_1DEE273A0(v127, type metadata accessor for ReplicatorMessage.Handshake.Complete);
      *(v128 + 14) = v132;
      *(v128 + 22) = 2082;
      v133 = *(v131 + 24);
      v40 = v130;
      v57 = v129;
      v134 = MEMORY[0x1E12CB290](*(v122 + v133), MEMORY[0x1E69E6158]);
      v135 = v122;
      v137 = v136;
      sub_1DEE273A0(v135, type metadata accessor for ReplicatorMessage.Handshake.Complete);
      v138 = sub_1DEE12A5C(v134, v137, &aBlock);

      *(v128 + 24) = v138;
      _os_log_impl(&dword_1DEE0F000, v125, v189, "(%{public}s) [Handle Complete] Remote device identified mismatched zones (%{public}ld): %{public}s", v128, 0x20u);
      v139 = v194;
      swift_arrayDestroy();
      v56 = v199;
      MEMORY[0x1E12CCD70](v139, -1, -1);
      MEMORY[0x1E12CCD70](v128, -1, -1);
    }

    else
    {
      sub_1DEE273A0(v123, type metadata accessor for ReplicatorMessage.Handshake.Complete);

      sub_1DEE273A0(v122, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    }
  }

  isEscapingClosureAtFileLocation = v57 >> 62;
  if (v57 >> 62)
  {
    goto LABEL_40;
  }

  v140 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v141 = v196;
  if (v140)
  {

    v142 = sub_1DEF8D4D8();
    v143 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      aBlock = v145;
      *v144 = 136446722;
      *(v144 + 4) = sub_1DEE12A5C(v3[66], v3[67], &aBlock);
      *(v144 + 12) = 2050;
      if (isEscapingClosureAtFileLocation)
      {
        v146 = sub_1DEF8DE68();
      }

      else
      {
        v146 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v144 + 14) = v146;

      *(v144 + 22) = 2082;
      v147 = type metadata accessor for Record.ID(0);
      v148 = MEMORY[0x1E12CB290](v57, v147);
      v150 = sub_1DEE12A5C(v148, v149, &aBlock);

      *(v144 + 24) = v150;
      _os_log_impl(&dword_1DEE0F000, v142, v143, "(%{public}s) [Handle Complete] Found mismatched records (%{public}ld): %{public}s", v144, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v145, -1, -1);
      MEMORY[0x1E12CCD70](v144, -1, -1);

      v56 = v199;
    }

    else
    {
    }
  }

  v151 = v200;
  sub_1DEE79004(v57, v200);

  sub_1DEE7D6B8(*v141, v141[1]);
  sub_1DEE53BFC();
  v152 = v170;
  sub_1DEEACA70(v56, v170, type metadata accessor for SessionManager.Session);
  v153 = v191;
  sub_1DEEACA70(v151, v191, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  v154 = v181;
  sub_1DEEACA70(v40, v181, type metadata accessor for PairingRelationship);
  v155 = (*(isa + 80) + 24) & ~*(isa + 80);
  v156 = (v169 + *(v167 + 80) + v155) & ~*(v167 + 80);
  v157 = (v168 + *(v190 + 80) + v156) & ~*(v190 + 80);
  v158 = swift_allocObject();
  *(v158 + 16) = v3;
  sub_1DEEAB218(v152, v158 + v155, type metadata accessor for SessionManager.Session);
  sub_1DEEAB218(v153, v158 + v156, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  sub_1DEEAB218(v154, v158 + v157, type metadata accessor for PairingRelationship);
  v206 = sub_1DEEABBD0;
  v207 = v158;
  aBlock = MEMORY[0x1E69E9820];
  v203 = v2;
  v204 = sub_1DEE3F0C0;
  v205 = &block_descriptor_718;
  v159 = _Block_copy(&aBlock);

  v160 = v172;
  sub_1DEF8D6B8();
  v201 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  v161 = v163;
  v162 = v165;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v160, v161, v159);
  _Block_release(v159);
  (*(v174 + 8))(v161, v162);
  (*(v173 + 8))(v160, v164);
  sub_1DEE273A0(v40, type metadata accessor for PairingRelationship);
  sub_1DEE273A0(v56, type metadata accessor for SessionManager.Session);
}

uint64_t sub_1DEE72AD8(uint64_t a1, uint64_t a2)
{
  v209 = a2;
  v210 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v180 - v4;
  v184 = type metadata accessor for Record(0);
  MEMORY[0x1EEE9AC00](v184);
  v7 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v183 = &v180 - v9;
  v10 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v188 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1DEF8D3F8();
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v185 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v187 = &v180 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v193 = &v180 - v16;
  v199 = type metadata accessor for PairingRelationship(0);
  v192 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v200 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v204);
  v205 = &v180 - v18;
  v206 = type metadata accessor for SessionManager.Session(0);
  v203 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v20 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for ReplicatorMessage.Sync(0);
  MEMORY[0x1EEE9AC00](v201);
  v22 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v180 - v24;
  v26 = sub_1DEF8D788();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = v2;
  v31 = v2[29];
  *v30 = v31;
  v32 = *(v27 + 104);
  v197 = *MEMORY[0x1E69E8020];
  v196 = v32;
  v32(v30, v28);
  v194 = v31;
  LOBYTE(v31) = sub_1DEF8D7B8();
  v33 = *(v27 + 8);
  v198 = v26;
  v195 = v33;
  v33(v30, v26);
  if (v31)
  {
    v191 = v27 + 104;
    v181 = v5;
    v182 = v7;
    v207 = v20;
    if (qword_1ECDE2E58 == -1)
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
  v34 = sub_1DEF8D508();
  v35 = __swift_project_value_buffer(v34, qword_1ECDF6028);
  sub_1DEEACA70(v210, v25, type metadata accessor for ReplicatorMessage.Sync);
  v36 = v208;

  v202 = v35;
  v37 = sub_1DEF8D4D8();
  v38 = sub_1DEF8DCB8();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v209;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136446466;
    *(v41 + 4) = sub_1DEE12A5C(v36[66], v36[67], aBlock);
    *(v41 + 12) = 2082;
    sub_1DEEACA70(v25, v22, type metadata accessor for ReplicatorMessage.Sync);
    v43 = sub_1DEF8D988();
    v45 = v44;
    sub_1DEE273A0(v25, type metadata accessor for ReplicatorMessage.Sync);
    v46 = sub_1DEE12A5C(v43, v45, aBlock);

    *(v41 + 14) = v46;
    _os_log_impl(&dword_1DEE0F000, v37, v38, "(%{public}s) Received sync message: %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    v47 = v42;
    v40 = v209;
    MEMORY[0x1E12CCD70](v47, -1, -1);
    MEMORY[0x1E12CCD70](v41, -1, -1);
  }

  else
  {

    v48 = sub_1DEE273A0(v25, type metadata accessor for ReplicatorMessage.Sync);
  }

  v49 = v207;
  v50 = v36[68];
  MEMORY[0x1EEE9AC00](v48);
  v51 = v210;
  *(&v180 - 2) = v50;
  *(&v180 - 1) = v51;

  v52 = v205;
  sub_1DEF8DD18();
  v53 = v52;

  v54 = v52;
  v55 = v206;
  if ((*(v203 + 48))(v54, 1, v206) == 1)
  {
    sub_1DEE171B4(v53, &qword_1ECDE3D08, &unk_1DEF95E50);

    v56 = sub_1DEF8D4D8();
    v57 = sub_1DEF8DC98();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_1DEE12A5C(v36[66], v36[67], aBlock);
      _os_log_impl(&dword_1DEE0F000, v56, v57, "(%{public}s) No session established", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1E12CCD70](v59, -1, -1);
      MEMORY[0x1E12CCD70](v58, -1, -1);
    }

    return sub_1DEE8DED0(v40);
  }

  sub_1DEEAB218(v53, v49, type metadata accessor for SessionManager.Session);
  v60 = v194;
  *v30 = v194;
  v61 = v198;
  v196(v30, v197, v198);
  v62 = v60;
  LOBYTE(v60) = sub_1DEF8D7B8();
  result = v195(v30, v61);
  if (v60)
  {
    swift_beginAccess();
    sub_1DEE29594((v36 + 24), aBlock);
    v64 = v212;
    v65 = v213;
    __swift_project_boxed_opaque_existential_1(aBlock, v212);
    v66 = *(v65 + 1);
    v67 = v193;
    MetadataStoring.pairingRelationship(remoteDeviceID:)(*(v49 + *(v55 + 20)), *(v49 + *(v55 + 20) + 8), v64, v66, v193);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if ((*(v192 + 48))(v67, 1, v199) == 1)
    {
      sub_1DEE171B4(v67, &qword_1ECDE3C18, &unk_1DEF94D20);

      v68 = sub_1DEF8D4D8();
      v69 = sub_1DEF8DC98();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock[0] = v71;
        *v70 = 136446210;
        *(v70 + 4) = sub_1DEE12A5C(v36[66], v36[67], aBlock);
        _os_log_impl(&dword_1DEE0F000, v68, v69, "(%{public}s) No pairing relationship established", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1E12CCD70](v71, -1, -1);
        MEMORY[0x1E12CCD70](v70, -1, -1);
      }

      sub_1DEE273A0(v49, type metadata accessor for SessionManager.Session);
      return sub_1DEE8DED0(v40);
    }

    sub_1DEEAB218(v67, v200, type metadata accessor for PairingRelationship);
    v72 = v210 + *(v201 + 20);
    v73 = *v72;
    v74 = *(*v72 + 32);
    swift_beginAccess();
    v75 = v36[30];

    v76 = sub_1DEF718FC(v74, v75);

    if (!v76)
    {

      v81 = sub_1DEF8D4D8();
      v85 = sub_1DEF8DC98();

      if (os_log_type_enabled(v81, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        aBlock[0] = v87;
        *v86 = 136446210;
        *(v86 + 4) = sub_1DEE12A5C(v36[66], v36[67], aBlock);
        _os_log_impl(&dword_1DEE0F000, v81, v85, "(%{public}s) No data source", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x1E12CCD70](v87, -1, -1);
        MEMORY[0x1E12CCD70](v86, -1, -1);
      }

      goto LABEL_21;
    }

    swift_beginAccess();
    v77 = v36[84];
    v78 = v73[4];
    v79 = *(v78 + 32);
    v80 = *(v78 + 40);

    LOBYTE(v79) = sub_1DEF01E3C(v79, v80, v77);

    if (v79)
    {

      v81 = sub_1DEF8D4D8();
      v82 = sub_1DEF8DC98();

      if (!os_log_type_enabled(v81, v82))
      {

        goto LABEL_29;
      }

      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock[0] = v84;
      *v83 = 136446210;
      *(v83 + 4) = sub_1DEE12A5C(v36[66], v36[67], aBlock);
      _os_log_impl(&dword_1DEE0F000, v81, v82, "(%{public}s) Client is disabled", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x1E12CCD70](v84, -1, -1);
      MEMORY[0x1E12CCD70](v83, -1, -1);

LABEL_21:

LABEL_29:
      sub_1DEE273A0(v200, type metadata accessor for PairingRelationship);
      sub_1DEE273A0(v49, type metadata accessor for SessionManager.Session);
LABEL_52:
      v40 = v209;
      return sub_1DEE8DED0(v40);
    }

    v204 = 0;
    v206 = v72;
    v210 = v76;
    v88 = v36[68];
    v89 = *(v88 + 32);
    v90 = v189;
    v91 = v189 + 16;
    v92 = v187;
    v93 = v190;
    v205 = *(v189 + 16);
    (v205)(v187, v49, v190);
    v94 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v95 = v94 + v186;
    v96 = swift_allocObject();
    *(v96 + 16) = v88;
    v97 = *(v90 + 32);
    v201 = v90 + 32;
    v198 = v97;
    v97(v96 + v94, v92, v93);
    *(v96 + v95) = 1;
    v98 = swift_allocObject();
    *(v98 + 16) = sub_1DEEACDAC;
    *(v98 + 24) = v96;
    v213 = sub_1DEE46D40;
    v214 = v98;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE134F4;
    v212 = &block_descriptor_730;
    v99 = _Block_copy(aBlock);
    swift_retain_n();

    dispatch_sync(v89, v99);
    _Block_release(v99);
    LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

    if ((v89 & 1) == 0)
    {
      v101 = v73[2];
      v100 = v73[3];
      v102 = v73[4];
      v103 = v188;
      v104 = v200;
      v105 = v190;
      v203 = v91;
      v106 = v205;
      (v205)(v188, v200, v190);
      (*(v90 + 56))(v103, 0, 1, v105);
      type metadata accessor for Record.ID(0);
      v107 = swift_allocObject();
      *(v107 + 2) = v101;
      *(v107 + 3) = v100;
      *(v107 + 4) = v102;
      sub_1DEEAB218(v103, &v107[OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership], type metadata accessor for Record.ID.Ownership);
      v108 = *(v104 + *(v199 + 20) + 32);

      if (v108 > 0xD)
      {

        v111 = v206;
        v120 = *(v206 + 8);
        if (!v120)
        {
LABEL_38:
          sub_1DEE29594((v208 + 24), aBlock);
          v142 = v212;
          v143 = v213;
          __swift_project_boxed_opaque_existential_1(aBlock, v212);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
          v144 = swift_allocObject();
          *(v144 + 16) = xmmword_1DEF91010;
          *(v144 + 32) = v107;
          v145 = *(v143 + 2);
          v146 = *(v145 + 136);

          v146(v144, v142, v145);

          __swift_destroy_boxed_opaque_existential_1(aBlock);
          v147 = v210;
          Strong = swift_unknownObjectWeakLoadStrong();
          v40 = v209;
          v149 = v207;
          if (Strong)
          {
            v150 = *(v147 + 24);
            ObjectType = swift_getObjectType();
            v152 = *(v150 + 48);

            v152(v153, ObjectType, v150);
            swift_unknownObjectRelease();
          }

          goto LABEL_46;
        }
      }

      else
      {

        v109 = v185;
        v110 = v204;
        sub_1DEEAD7E0(v101, v100, v185);
        v111 = v206;
        if (v110)
        {

          v112 = v208;

          v113 = sub_1DEF8D4D8();
          v114 = sub_1DEF8DC98();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            aBlock[0] = v116;
            *v115 = 136446466;
            *(v115 + 4) = sub_1DEE12A5C(v112[66], v112[67], aBlock);
            *(v115 + 12) = 2082;
            v117 = *(v107 + 2);
            v118 = *(v107 + 3);

            v119 = sub_1DEE12A5C(v117, v118, aBlock);

            *(v115 + 14) = v119;
            _os_log_impl(&dword_1DEE0F000, v113, v114, "(%{public}s) Could not create internal ID from client defined ID: %{public}s", v115, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v116, -1, -1);
            MEMORY[0x1E12CCD70](v115, -1, -1);
          }

          goto LABEL_50;
        }

        v136 = sub_1DEF8D398();
        v138 = v137;
        (*(v189 + 8))(v109, v190);
        v139 = *(v107 + 4);
        v140 = v188;
        sub_1DEEACA70(&v107[OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership], v188, type metadata accessor for Record.ID.Ownership);
        v141 = swift_allocObject();
        *(v141 + 2) = v136;
        *(v141 + 3) = v138;
        *(v141 + 4) = v139;
        sub_1DEEAB218(v140, &v141[OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership], type metadata accessor for Record.ID.Ownership);

        v107 = v141;
        v120 = *(v111 + 8);
        if (!v120)
        {
          goto LABEL_38;
        }
      }

      v122 = *(v111 + 16);
      v121 = *(v111 + 24);
      if (*(v111 + 40))
      {
        v123 = v208;

        sub_1DEEAB070(v120, v122, v121);
        v124 = sub_1DEF8D4D8();
        v125 = sub_1DEF8DC98();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          aBlock[0] = v127;
          *v126 = 136446466;
          *(v126 + 4) = sub_1DEE12A5C(v123[66], v123[67], aBlock);
          *(v126 + 12) = 2082;

          v128 = Record.ID.description.getter();
          v130 = v129;

          v131 = sub_1DEE12A5C(v128, v130, aBlock);

          *(v126 + 14) = v131;
          v132 = "(%{public}s) Missing encoding version for recordID %{public}s";
LABEL_34:
          _os_log_impl(&dword_1DEE0F000, v124, v125, v132, v126, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v127, -1, -1);
          MEMORY[0x1E12CCD70](v126, -1, -1);
          sub_1DEE1BFA0(v122, v121);

          sub_1DEE273A0(v200, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v207, type metadata accessor for SessionManager.Session);
LABEL_51:

          goto LABEL_52;
        }

        goto LABEL_49;
      }

      if (v108 > 0xD)
      {
        v134 = *(v120 + 24);
        v135 = v190;
        if (!v134)
        {
          v175 = v208;

          sub_1DEEAB070(v120, v122, v121);
          v124 = sub_1DEF8D4D8();
          v125 = sub_1DEF8DC98();

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            aBlock[0] = v127;
            *v126 = 136446466;
            *(v126 + 4) = sub_1DEE12A5C(v175[66], v175[67], aBlock);
            *(v126 + 12) = 2082;

            v176 = Record.ID.description.getter();
            v178 = v177;

            v179 = sub_1DEE12A5C(v176, v178, aBlock);

            *(v126 + 14) = v179;
            v132 = "(%{public}s) Missing client defined ID for recordID %{public}s";
            goto LABEL_34;
          }

LABEL_49:

          sub_1DEE1BFA0(v122, v121);

LABEL_50:
          sub_1DEE273A0(v200, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v207, type metadata accessor for SessionManager.Session);
          goto LABEL_51;
        }

        v202 = *(v111 + 32);
        v204 = v122;
        v206 = v121;
        v133 = v107;
      }

      else
      {
        v202 = *(v111 + 32);
        v204 = v122;
        v206 = v121;
        v133 = v107;
        v134 = *(v120 + 16);
        v135 = v190;
      }

      v155 = *(v134 + 16);
      v154 = *(v134 + 24);

      v156 = v187;
      v106(v187, v120 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v135);
      v203 = *(v120 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
      v157 = v203;
      v158 = v183;
      sub_1DEE17214(v120 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v183, &qword_1ECDE4DC0, &qword_1DEF91640);
      v159 = *(v120 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
      type metadata accessor for RecordMetadata(0);
      v160 = swift_allocObject();
      *(v160 + 16) = v133;
      type metadata accessor for RecordMetadata.ClientDefinedID();
      v161 = swift_allocObject();
      *(v161 + 16) = v155;
      *(v161 + 24) = v154;
      *(v160 + 24) = v161;
      v198(v160 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v156, v135);
      *(v160 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v157;
      sub_1DEE1BA88(v158, v160 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);
      *(v160 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v159;
      v162 = v181;
      sub_1DEE17214(v209, v181, &qword_1ECDE4890, &qword_1DEF90990);
      v163 = v182;
      v164 = (v182 + *(v184 + 20));
      v165 = type metadata accessor for Record.Value(0);
      v166 = *(v165 + 20);
      v167 = sub_1DEF8D1E8();
      (*(*(v167 - 8) + 56))(v164 + v166, 1, 1, v167);
      *(v164 + *(v165 + 24)) = v202;
      v168 = v204;
      v169 = v206;
      *v164 = v204;
      v164[1] = v169;
      v205 = v133;

      sub_1DEEAB070(v120, v168, v169);

      sub_1DEE29D60(v162, v164 + v166, &qword_1ECDE4890, &qword_1DEF90990);
      *v163 = v160;
      sub_1DEE29594((v208 + 24), aBlock);
      v170 = v213;
      __swift_project_boxed_opaque_existential_1(aBlock, v212);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_1DEF91010;
      *(v171 + 32) = v160;
      (*(*(v170 + 2) + 128))();

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v172 = v210;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v173 = *(v172 + 24);
        v174 = swift_getObjectType();
        (*(v173 + 40))(v163, v200, v174, v173);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v149 = v207;
      sub_1DEE273A0(v163, type metadata accessor for Record);
      v40 = v209;
LABEL_46:
      sub_1DEE56F88();

      sub_1DEE273A0(v200, type metadata accessor for PairingRelationship);
      sub_1DEE273A0(v149, type metadata accessor for SessionManager.Session);

      return sub_1DEE8DED0(v40);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE745EC(char a1)
{
  if (a1)
  {
    v2 = sub_1DEF3805C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1DEF3805C((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    *(v6 + 4) = 0xD00000000000001BLL;
    *(v6 + 5) = 0x80000001DEF9C190;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1DEF3805C(0, *(v2 + 2) + 1, 1, v2);
      }

      v11 = *(v2 + 2);
      v10 = *(v2 + 3);
      if (v11 >= v10 >> 1)
      {
        v2 = sub_1DEF3805C((v10 > 1), v11 + 1, 1, v2);
      }

      *(v2 + 2) = v11 + 1;
      v12 = &v2[16 * v11];
      *(v12 + 4) = 0xD000000000000016;
      *(v12 + 5) = 0x80000001DEF9C150;
      goto LABEL_19;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DEF3805C(0, *(v2 + 2) + 1, 1, v2);
  }

  v8 = *(v2 + 2);
  v7 = *(v2 + 3);
  if (v8 >= v7 >> 1)
  {
    v2 = sub_1DEF3805C((v7 > 1), v8 + 1, 1, v2);
  }

  *(v2 + 2) = v8 + 1;
  v9 = &v2[16 * v8];
  *(v9 + 4) = 0xD00000000000001DLL;
  *(v9 + 5) = 0x80000001DEF9C170;
  if ((a1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (*(v2 + 2))
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    sub_1DEE1B548(&unk_1ECDE2C40, &qword_1ECDE3C90, &unk_1DEF91590, MEMORY[0x1E69E6310]);
    v3 = sub_1DEF8D8D8();

    return v3;
  }

  return 1701736302;
}

BOOL sub_1DEE7489C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1DEE748CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DEE748F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1DEE749D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DEE74A00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DEEA29AC(a1);

  *a2 = v3;
  return result;
}

void sub_1DEE74A40(char **a1, uint64_t a2)
{
  v128 = a2;
  v157 = sub_1DEF8D3F8();
  v149 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v154 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1DEF8D378();
  v156 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v136 = &v127 - v7;
  v158 = type metadata accessor for PairingRelationship(0);
  v155 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v132 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v127 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v127 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v127 - v19;
  v20 = sub_1DEF8D788();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = (&v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *a1;
  v25 = a1[1];
  v27 = *(a1 + 16);
  v150 = v2;
  v28 = *(v2 + 232);
  *v24 = v28;
  v29 = *(v21 + 104);
  v145 = *MEMORY[0x1E69E8020];
  v144 = v21 + 104;
  v143 = v29;
  v29(v24, v22);
  v142 = v28;
  LOBYTE(v28) = sub_1DEF8D7B8();
  v30 = *(v21 + 8);
  v146 = v24;
  v148 = v20;
  v147 = v21 + 8;
  v141 = v30;
  v30(v24, v20);
  if ((v28 & 1) == 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v27)
  {
    if (qword_1ECDE2E58 == -1)
    {
LABEL_4:
      v31 = sub_1DEF8D508();
      __swift_project_value_buffer(v31, qword_1ECDF6028);
      v32 = v26;
      v33 = sub_1DEF8D4D8();
      v34 = sub_1DEF8DC98();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138543362;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&dword_1DEE0F000, v33, v34, "Device reconciliation failed: %{public}@", v35, 0xCu);
        sub_1DEE171B4(v36, &unk_1ECDE4880, &qword_1DEF93420);
        MEMORY[0x1E12CCD70](v36, -1, -1);
        goto LABEL_6;
      }

      sub_1DEEA8A18(v26, v25, 1);
      return;
    }

LABEL_55:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v38 = sub_1DEF8D508();
  v39 = __swift_project_value_buffer(v38, qword_1ECDF6028);

  v40 = v25;

  v41 = sub_1DEF8D4D8();
  v42 = sub_1DEF8DCB8();
  sub_1DEEA8A18(v26, v25, 0);
  v43 = os_log_type_enabled(v41, v42);
  v135 = v39;
  v130 = v11;
  v131 = v17;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v160 = v45;
    *v44 = 136446722;
    v46 = v26;
    v47 = v158;
    v48 = MEMORY[0x1E12CB290](v46, v158);
    v50 = v14;
    v51 = sub_1DEE12A5C(v48, v49, &v160);

    *(v44 + 4) = v51;
    *(v44 + 12) = 2082;
    v52 = MEMORY[0x1E12CB290](v25, v47);
    v54 = sub_1DEE12A5C(v52, v53, &v160);

    *(v44 + 14) = v54;
    *(v44 + 22) = 2082;
    v55 = sub_1DEE745EC(v128);
    v57 = sub_1DEE12A5C(v55, v56, &v160);
    v40 = v25;

    *(v44 + 24) = v57;
    v14 = v50;
    v17 = v131;
    _os_log_impl(&dword_1DEE0F000, v41, v42, "Reconciling devices. Known: %{public}s; unknown: %{public}s; options: %{public}s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v45, -1, -1);
    MEMORY[0x1E12CCD70](v44, -1, -1);
  }

  v26 = v153;
  v58 = *(v40 + 2);
  if (v58)
  {
    v25 = v155;
    v59 = v40 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
    swift_beginAccess();
    v151 = *(v25 + 9);
    v152 = v26 + 8;
    v134 = (v156 + 1);
    v140 = (v149 + 16);
    v139 = v149 + 32;
    v60 = MEMORY[0x1E69E7CC0];
    *&v61 = 136446466;
    v133 = v61;
    v129 = v14;
    while (1)
    {
      v155 = v58;
      v156 = v60;
      sub_1DEEACA70(v59, v26, type metadata accessor for PairingRelationship);
      if (*&v152[*(v158 + 32)] < 4uLL || (v72 = v136, sub_1DEF8D2E8(), v73 = v137, sub_1DEF8D348(), v74 = sub_1DEF8D308(), v25 = v134, v75 = *v134, v76 = v73, v77 = v138, (*v134)(v76, v138), v75(v72, v77), (v74 & 1) != 0))
      {
        sub_1DEEACA70(v26, v17, type metadata accessor for PairingRelationship);
        sub_1DEEACA70(v26, v14, type metadata accessor for PairingRelationship);
        v78 = sub_1DEF8D4D8();
        v79 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v160 = v81;
          *v80 = v133;
          v82 = &v17[*(v158 + 20)];
          v83 = *v82;
          v84 = v82[1];

          v25 = type metadata accessor for PairingRelationship;
          sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
          v85 = sub_1DEE12A5C(v83, v84, &v160);

          *(v80 + 4) = v85;
          *(v80 + 12) = 2082;
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v86 = sub_1DEF8E2E8();
          v88 = v87;
          sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
          v89 = sub_1DEE12A5C(v86, v88, &v160);

          *(v80 + 14) = v89;
          _os_log_impl(&dword_1DEE0F000, v78, v79, "Forgetting device: %{public}s (relationship: %{public}s) - Device no longer known", v80, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v81, -1, -1);
          MEMORY[0x1E12CCD70](v80, -1, -1);
        }

        else
        {

          sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
        }

        v90 = v146;
        v91 = v142;
        *v146 = v142;
        v92 = v148;
        v143(v90, v145, v148);
        v93 = v91;
        LOBYTE(v91) = sub_1DEF8D7B8();
        v141(v90, v92);
        v26 = v153;
        v60 = v156;
        if ((v91 & 1) == 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        v94 = v150;
        sub_1DEE67760(v153);
        sub_1DEE29594(v94 + 192, &v160);
        v95 = v161;
        v96 = v162;
        __swift_project_boxed_opaque_existential_1(&v160, v161);
        (*(*(v96 + 16) + 120))(v26, v95);
        __swift_destroy_boxed_opaque_existential_1(&v160);
        (*v140)(v154, v26, v157);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1DEF38168(0, v60[2] + 1, 1, v60);
        }

        v98 = v60[2];
        v97 = v60[3];
        if (v98 >= v97 >> 1)
        {
          v60 = sub_1DEF38168((v97 > 1), v98 + 1, 1, v60);
        }

        v60[2] = v98 + 1;
        (*(v149 + 32))(v60 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v98, v154, v157);
      }

      else
      {
        v99 = v130;
        sub_1DEEACA70(v26, v130, type metadata accessor for PairingRelationship);
        v100 = v132;
        sub_1DEEACA70(v26, v132, type metadata accessor for PairingRelationship);
        v101 = sub_1DEF8D4D8();
        v102 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v101, v102))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v160 = v63;
          *v62 = v133;
          v64 = (v99 + *(v158 + 20));
          v65 = *v64;
          v66 = v64[1];

          v25 = type metadata accessor for PairingRelationship;
          sub_1DEE273A0(v99, type metadata accessor for PairingRelationship);
          v67 = sub_1DEE12A5C(v65, v66, &v160);

          *(v62 + 4) = v67;
          *(v62 + 12) = 2082;
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v68 = sub_1DEF8E2E8();
          v70 = v69;
          sub_1DEE273A0(v100, type metadata accessor for PairingRelationship);
          v71 = sub_1DEE12A5C(v68, v70, &v160);

          *(v62 + 14) = v71;
          _os_log_impl(&dword_1DEE0F000, v101, v102, "Temporarily preserving device: %{public}s (relationship: %{public}s) - Device no longer known but within grace period", v62, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v63, -1, -1);
          MEMORY[0x1E12CCD70](v62, -1, -1);
        }

        else
        {

          sub_1DEE273A0(v100, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v99, type metadata accessor for PairingRelationship);
        }

        v14 = v129;
        v17 = v131;
        v26 = v153;
        v60 = v156;
      }

      sub_1DEE273A0(v26, type metadata accessor for PairingRelationship);
      v59 += v151;
      v58 = v155 - 1;
      if (v155 == 1)
      {
        goto LABEL_32;
      }
    }
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_32:
  if (v60[2])
  {
    if (v128)
    {
      v106 = v150;
      swift_beginAccess();
      sub_1DEE29594(v106 + 192, &v160);
      v108 = v161;
      v107 = v162;
      __swift_project_boxed_opaque_existential_1(&v160, v161);
      v159 = (*(*(*(v107 + 8) + 8) + 32))(v108);
      sub_1DEF8D588();

      __swift_destroy_boxed_opaque_existential_1(&v160);
    }

    else
    {
      v103 = sub_1DEF8D4D8();
      v104 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_1DEE0F000, v103, v104, "Not publishing new pairing relationships after reconciliation as options missing 'publishPairingRelationships'", v105, 2u);
        MEMORY[0x1E12CCD70](v105, -1, -1);
      }
    }

    if ((v128 & 2) != 0)
    {
      v160 = v60;

      sub_1DEF8D588();
    }

    else
    {
      v109 = sub_1DEF8D4D8();
      v110 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_1DEE0F000, v109, v110, "Not publishing forgotten relationships after reconciliation as options missing 'publishForgottenRelationships'", v111, 2u);
        MEMORY[0x1E12CCD70](v111, -1, -1);
      }
    }
  }

  if (sub_1DEE75F2C())
  {
  }

  else
  {
    v112 = v150;
    swift_beginAccess();
    sub_1DEE29594(v112 + 344, &v160);
    v113 = v161;
    v114 = v162;
    __swift_project_boxed_opaque_existential_1(&v160, v161);
    LOBYTE(v113) = (*(v114 + 16))(v113, v114);
    __swift_destroy_boxed_opaque_existential_1(&v160);

    if (v113)
    {
      v33 = sub_1DEF8D4D8();
      v115 = sub_1DEF8DCB8();
      v116 = os_log_type_enabled(v33, v115);
      if ((v128 & 4) == 0)
      {
        if (!v116)
        {
          goto LABEL_7;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DEE0F000, v33, v115, "Not rebroadcasting for auto-pair after reconciliation as options missing 'readvertiseIfNecessary'", v35, 2u);
LABEL_6:
        MEMORY[0x1E12CCD70](v35, -1, -1);
LABEL_7:

        return;
      }

      if (v116)
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_1DEE0F000, v33, v115, "Rebroadcasting for auto-pair because devices changed and we are not currently paired.", v117, 2u);
        MEMORY[0x1E12CCD70](v117, -1, -1);
      }

      v118 = v150;
      swift_beginAccess();
      v119 = *(v118 + 368);
      v120 = *(v118 + 376);
      __swift_mutable_project_boxed_opaque_existential_1(v118 + 344, v119);
      v121 = (*(v120 + 32))(&v160, v119, v120);
      *v122 = !*v122;
      v121(&v160, 0);
      v123 = *(v118 + 368);
      v124 = *(v118 + 376);
      __swift_mutable_project_boxed_opaque_existential_1(v118 + 344, v123);
      v125 = (*(v124 + 32))(&v160, v123, v124);
      *v126 = !*v126;
      v125(&v160, 0);
      swift_endAccess();
    }
  }
}

uint64_t sub_1DEE75C68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a2 + 232);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEEA8A64;
  *(v8 + 24) = v7;
  v11[4] = sub_1DEE46D40;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DEE134F4;
  v11[3] = &block_descriptor_471;
  v9 = _Block_copy(v11);

  sub_1DEEA8A74(v3, v4, v5);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE75DEC(uint64_t a1, char *a2, char *a3, char a4)
{
  swift_beginAccess();
  if (*(a1 + 640) == 1)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v8 = sub_1DEF8D508();
    __swift_project_value_buffer(v8, qword_1ECDF6028);
    v9 = sub_1DEF8D4D8();
    v10 = sub_1DEF8DC98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DEE0F000, v9, v10, "No reconciliation options are set", v11, 2u);
      MEMORY[0x1E12CCD70](v11, -1, -1);
    }
  }

  else
  {
    v12 = *(a1 + 632);
    *(a1 + 632) = 0;
    *(a1 + 640) = 1;
    v13[0] = a2;
    v13[1] = a3;
    v14 = a4 & 1;
    sub_1DEE74A40(v13, v12);
  }
}

uint64_t sub_1DEE75F2C()
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v43);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v41 - v4;
  v5 = sub_1DEF8D788();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 232);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  v12 = sub_1DEF8D7B8();
  result = (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_1DEE29594(v0 + 192, v45);
  v15 = v46;
  v14 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v16 = (*(*(*(v14 + 8) + 8) + 32))(v15);
  v17 = v16;
  v18 = v16 + 64;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v44 = v2;
  v41 = result;
  if (!v21)
  {
LABEL_6:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        v40 = 0;
        goto LABEL_16;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  while (1)
  {
    v24 = v23;
LABEL_9:
    v25 = __clz(__rbit64(v21)) | (v24 << 6);
    v26 = *(v17 + 48);
    v27 = sub_1DEF8D3F8();
    v28 = *(v27 - 8);
    v29 = v42;
    (*(v28 + 16))(v42, v26 + *(v28 + 72) * v25, v27);
    v30 = *(v17 + 56);
    v31 = (type metadata accessor for PairingRelationship(0) - 8);
    v32 = v30 + *(*v31 + 72) * v25;
    v33 = v43;
    sub_1DEEACA70(v32, &v29[*(v43 + 48)], type metadata accessor for PairingRelationship);
    v34 = v29;
    v35 = v44;
    sub_1DEE1BA88(v34, v44, &unk_1ECDE4350, &qword_1DEF93400);
    v36 = v35 + *(v33 + 48);
    v37 = (v36 + v31[10]);
    v38 = *v37;
    v39 = v37[1];
    sub_1DEE4F8C0(*v37, v39);
    sub_1DEE273A0(v36, type metadata accessor for PairingRelationship);
    if (v39)
    {
      break;
    }

    v21 &= v21 - 1;
    result = (*(v28 + 8))(v35, v27);
    v23 = v24;
    v17 = v41;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  if (v39 - 1 >= 3)
  {
    sub_1DEE4F8D4(v38, v39);
  }

  (*(v28 + 8))(v44, v27);
  v40 = 1;
LABEL_16:

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v40;
}

uint64_t sub_1DEE7635C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 184);
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a4;
  v11[6] = a5;
  v12 = *(v10 + 80);

  sub_1DEEA8818(a1, a2);

  v12(sub_1DEEA8C14, v11, ObjectType, v10);
}

uint64_t sub_1DEE76450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 232);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DEEA8C7C;
  *(v14 + 24) = v13;
  v17[4] = sub_1DEE46D40;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DEE134F4;
  v17[3] = &block_descriptor_503;
  v15 = _Block_copy(v17);

  sub_1DEEA8818(a4, a5);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE765E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v8 = *(a1 + 648);
  v9 = *(a1 + 656);
  *(a1 + 648) = a2;
  *(a1 + 656) = a3;
  sub_1DEE2416C(v8, v9);
  sub_1DEEA8818(a2, a3);
  sub_1DEE59098();
  return a4(0);
}

void sub_1DEE767CC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31[-v4];
  v6 = type metadata accessor for PairingRelationship(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 24);
  v37 = *(a1 + 16);
  v36 = *(a1 + 32);
  v13 = *(a1 + 40);
  v34 = *(a1 + 48);
  v35 = v13;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v32 = v15;
    v33 = v14;
    swift_beginAccess();
    sub_1DEE29594(v17 + 192, &v42);
    v18 = v44;
    v19 = v45;
    __swift_project_boxed_opaque_existential_1(&v42, v44);
    MetadataStoring.pairingRelationship(remoteDeviceID:)(v11, v10, v18, *(v19 + 8), v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1DEE171B4(v5, &qword_1ECDE3C18, &unk_1DEF94D20);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v20 = sub_1DEF8D508();
      __swift_project_value_buffer(v20, qword_1ECDF6028);

      v21 = sub_1DEF8D4D8();
      v22 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v42 = v24;
        *v23 = 136446210;
        v25 = *(v17 + 528);
        v26 = *(v17 + 536);

        v27 = sub_1DEE12A5C(v25, v26, &v42);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_1DEE0F000, v21, v22, "(%{public}s) Could not handshake with unpaired destination", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1E12CCD70](v24, -1, -1);
        MEMORY[0x1E12CCD70](v23, -1, -1);
      }
    }

    else
    {
      sub_1DEEAB218(v5, v9, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      *&v42 = v11;
      *(&v42 + 1) = v10;
      v43 = v37;
      v44 = v12;
      LOBYTE(v45) = v36;
      v46 = v35;
      v47 = v34;
      v28 = &v9[*(v6 + 32)];
      v30 = v28[1];
      v40 = *v28;
      v29 = v40;
      v41 = v30;
      v38 = v33;
      v39 = v32;

      sub_1DEE4F8C0(v29, v30);
      sub_1DEE76BD8(&v42, &v40, &v38);

      sub_1DEE4F8D4(v40, v41);

      sub_1DEE273A0(v9, type metadata accessor for PairingRelationship);
    }
  }
}

uint64_t sub_1DEE76BD8(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v34 = *v3;
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[1];
  v36 = *a1;
  v37 = v11;
  v38 = a1[2];
  v39 = *(a1 + 6);
  v12 = *a2;
  v13 = a2[1];
  v32 = *a3;
  v33 = v12;
  v31 = *(a3 + 8);
  v14 = v3[29];
  *v10 = v14;
  v15 = *MEMORY[0x1E69E8020];
  v16 = *(v8 + 104);
  v16(v10, v15, v7);
  v30 = v14;
  LOBYTE(a3) = sub_1DEF8D7B8();
  v17 = *(v8 + 8);
  result = v17(v10, v7);
  if (a3)
  {
    v19 = swift_allocObject();
    v20 = v37;
    *(v19 + 24) = v36;
    *(v19 + 16) = v3;
    *(v19 + 40) = v20;
    *(v19 + 56) = v38;
    v21 = v32;
    *(v19 + 72) = v39;
    *(v19 + 80) = v21;
    *(v19 + 88) = v31;
    v22 = v16;
    v23 = v17;
    v25 = v33;
    v24 = v34;
    *(v19 + 96) = v33;
    *(v19 + 104) = v13;
    *(v19 + 112) = v24;
    *v10 = v30;
    v22(v10, v15, v7);

    sub_1DEEA8BAC(&v36, v35);
    sub_1DEE4F8C0(v25, v13);
    LOBYTE(v25) = sub_1DEF8D7B8();
    result = v23(v10, v7);
    if (v25)
    {
      v26 = v3[63];
      v27 = v3[64];
      __swift_project_boxed_opaque_existential_1(v3 + 60, v26);
      v28 = swift_allocObject();
      v28[2] = v3;
      v28[3] = sub_1DEEA8B90;
      v28[4] = v19;
      v29 = *(v27 + 8);

      v29(sub_1DEEA8C08, v28, v26, v27);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DEE76EBC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v121 = a3;
  v9 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1DEF8D3F8();
  v115 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v101 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v101 - v21;
  v23 = type metadata accessor for PairingRelationship(0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  if (a1)
  {
    v28 = a1;
    v29 = a1;
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_38;
  }

  v119 = v22;
  *&v117 = v19;
  v114 = v16;
  v123 = a2;
  v116 = a4;
  if (v121)
  {
    v118 = &v101 - v25;
    v39 = *(v121 + 16);
    v40 = v119;
    v41 = v115;
    if (v39)
    {
      v42 = v121 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v43 = v26;
      swift_beginAccess();
      v44 = *(v41 + 72);
      v121 = v43 + 48;
      v122 = v44;
      *&v45 = 136446210;
      v117 = v45;
      do
      {
        sub_1DEE29594((a2 + 24), &v126);
        v59 = v129;
        v60 = v130;
        __swift_project_boxed_opaque_existential_1(&v126, v129);
        MetadataStoring.pairingRelationship(relationshipID:)(v42, v59, *(v60 + 8), v40);
        if ((*v121)(v40, 1, v23) == 1)
        {
          sub_1DEE171B4(v40, &qword_1ECDE3C18, &unk_1DEF94D20);
          __swift_destroy_boxed_opaque_existential_1(&v126);
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v61 = sub_1DEF8D508();
          __swift_project_value_buffer(v61, qword_1ECDF6028);

          v62 = sub_1DEF8D4D8();
          v63 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v126 = v65;
            *v64 = v117;
            *(v64 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v126);
            _os_log_impl(&dword_1DEE0F000, v62, v63, "(%{public}s) Could not handshake with unpaired destination", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v65);
            MEMORY[0x1E12CCD70](v65, -1, -1);
            MEMORY[0x1E12CCD70](v64, -1, -1);
          }
        }

        else
        {
          v120 = v39;
          v46 = v118;
          sub_1DEEAB218(v40, v118, type metadata accessor for PairingRelationship);
          __swift_destroy_boxed_opaque_existential_1(&v126);
          v47 = a2[51];
          v48 = v123[52];
          __swift_project_boxed_opaque_existential_1(v123 + 48, v47);
          v49 = v46 + *(v23 + 20);
          v50 = *(v49 + 8);
          v52 = *(v49 + 160);
          v51 = *(v49 + 168);
          v53 = *(v49 + 48);
          v126 = *v49;
          v127 = v50;
          v128 = v52;
          v129 = v51;
          LOBYTE(v130) = v53;
          v131 = *(v49 + 32);
          v124 = v116;
          v125 = a5;
          v54 = v23;
          v55 = a5;
          v56 = *(v48 + 16);

          v57 = v48;
          a2 = v123;
          v56(&v126, &v124, v47, v57);
          a5 = v55;
          v23 = v54;
          v40 = v119;

          v58 = v46;
          v39 = v120;
          sub_1DEE273A0(v58, type metadata accessor for PairingRelationship);
        }

        v42 += v122;
        --v39;
      }

      while (v39);
    }
  }

  else
  {
    v105 = v27;
    v106 = v26;
    v107 = v13;
    v111 = v11;
    v112 = v23;
    v113 = a5;
    swift_beginAccess();
    sub_1DEE29594((a2 + 24), &v126);
    v67 = v129;
    v66 = v130;
    __swift_project_boxed_opaque_existential_1(&v126, v129);
    v68 = (*(*(*(v66 + 8) + 8) + 32))(v67);
    v69 = *(v68 + 64);
    v102 = v68 + 64;
    v108 = v68;
    v70 = 1 << *(v68 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & v69;
    __swift_destroy_boxed_opaque_existential_1(&v126);
    v73 = 0;
    v74 = (v70 + 63) >> 6;
    v104 = v115 + 16;
    v103 = v115 + 32;
    v109 = (v115 + 8);
    v75 = v117;
    v110 = v74;
    if (!v72)
    {
LABEL_23:
      if (v74 <= v73 + 1)
      {
        v78 = v73 + 1;
      }

      else
      {
        v78 = v74;
      }

      v79 = v78 - 1;
      v29 = v123;
      v77 = v114;
      while (1)
      {
        v76 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v76 >= v74)
        {
          v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
          (*(*(v100 - 8) + 56))(v77, 1, 1, v100);
          v72 = 0;
          goto LABEL_31;
        }

        v72 = *(v102 + 8 * v76);
        ++v73;
        if (v72)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_38:
      swift_once();
LABEL_3:
      v30 = sub_1DEF8D508();
      __swift_project_value_buffer(v30, qword_1ECDF6028);
      v31 = v29;

      v32 = sub_1DEF8D4D8();
      v33 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v126 = v36;
        *v34 = 136446466;
        *(v34 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v126);
        *(v34 + 12) = 2114;
        v37 = v29;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v38;
        *v35 = v38;
        _os_log_impl(&dword_1DEE0F000, v32, v33, "(%{public}s) Abandoning handshake request because prerequisites are not met: %{public}@", v34, 0x16u);
        sub_1DEE171B4(v35, &unk_1ECDE4880, &qword_1DEF93420);
        MEMORY[0x1E12CCD70](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1E12CCD70](v36, -1, -1);
        MEMORY[0x1E12CCD70](v34, -1, -1);
      }

      else
      {
      }

      return;
    }

    while (1)
    {
      v76 = v73;
      v29 = v123;
      v77 = v114;
LABEL_30:
      v80 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v81 = v80 | (v76 << 6);
      v82 = v108;
      v83 = v115;
      v84 = v107;
      v85 = v122;
      (*(v115 + 16))(v107, *(v108 + 48) + *(v115 + 72) * v81, v122);
      v86 = v105;
      sub_1DEEACA70(*(v82 + 56) + *(v106 + 72) * v81, v105, type metadata accessor for PairingRelationship);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      v88 = *(v87 + 48);
      (*(v83 + 32))(v77, v84, v85);
      sub_1DEEAB218(v86, v77 + v88, type metadata accessor for PairingRelationship);
      (*(*(v87 - 8) + 56))(v77, 0, 1, v87);
      v79 = v76;
      v75 = v117;
      a4 = v116;
LABEL_31:
      sub_1DEE1BA88(v77, v75, &qword_1ECDE3C98, &unk_1DEF95610);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      if ((*(*(v89 - 8) + 48))(v75, 1, v89) == 1)
      {
        break;
      }

      v90 = v75 + *(v89 + 48);
      v91 = v29[51];
      v120 = v29[52];
      v121 = v91;
      v119 = __swift_project_boxed_opaque_existential_1(v29 + 48, v91);
      v92 = v111;
      sub_1DEEACA70(v90 + *(v112 + 20), v111, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v90, type metadata accessor for PairingRelationship);
      v94 = *v92;
      v93 = *(v92 + 8);
      v118 = v79;
      v95 = a4;
      v97 = *(v92 + 160);
      v96 = *(v92 + 168);
      a2 = *(v92 + 48);
      v98 = *(v92 + 32);
      v99 = *(v92 + 40);

      sub_1DEE273A0(v92, type metadata accessor for DeviceDescriptor);
      v126 = v94;
      v127 = v93;
      v75 = v117;
      v128 = v97;
      v129 = v96;
      a4 = v95;
      LOBYTE(v130) = a2;
      *&v131 = v98;
      *(&v131 + 1) = v99;
      v124 = v95;
      v125 = v113;
      (*(v120 + 16))(&v126, &v124, v121);

      (*v109)(v75, v122);
      v73 = v118;
      v74 = v110;
      if (!v72)
      {
        goto LABEL_23;
      }
    }
  }
}

void sub_1DEE77AD4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v107 - v7;
  v9 = type metadata accessor for PairingRelationship(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v15 = sub_1DEF8D508();
    __swift_project_value_buffer(v15, qword_1ECDF6028);
    v16 = a1;

    v17 = sub_1DEF8D4D8();
    v18 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v128 = v21;
      *v19 = 136446466;
      *(v19 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v128);
      *(v19 + 12) = 2114;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_1DEE0F000, v17, v18, "(%{public}s) Abandoning handshake request because prerequisites are not met: %{public}@", v19, 0x16u);
      sub_1DEE171B4(v20, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12CCD70](v21, -1, -1);
      MEMORY[0x1E12CCD70](v19, -1, -1);

      return;
    }

    v102 = a1;

    goto LABEL_61;
  }

  if (*(a2 + 624))
  {
    v24 = v11;
    v111 = v8;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v25 = sub_1DEF8D508();
    v26 = __swift_project_value_buffer(v25, qword_1ECDF6028);

    v122 = v26;
    v27 = sub_1DEF8D4D8();
    v28 = sub_1DEF8DCB8();

    v29 = os_log_type_enabled(v27, v28);
    v116 = a2;
    v110 = v13;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v128 = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v128);
      *(v30 + 12) = 2082;
      v32 = MEMORY[0x1E12CB290](a3, &type metadata for HandshakeDescriptor);
      v34 = sub_1DEE12A5C(v32, v33, &v128);

      *(v30 + 14) = v34;
      a2 = v116;
      _os_log_impl(&dword_1DEE0F000, v27, v28, "(%{public}s) Discovered devices: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v31, -1, -1);
      MEMORY[0x1E12CCD70](v30, -1, -1);
    }

    v36 = *(a2 + 176);
    v35 = *(a2 + 184);
    ObjectType = swift_getObjectType();
    *&v128 = v36;
    v38 = (*(*(v35 + 8) + 8))(ObjectType);
    v39 = sub_1DEEA3AD8(v38);

    v120 = *(a3 + 16);
    if (v120)
    {
      v112 = v24;
      v119 = a3 + 32;
      v108 = (a2 + 672);
      swift_beginAccess();
      swift_beginAccess();
      v40 = 0;
      v41 = v39 + 56;
      v109 = (v10 + 48);
      *&v42 = 136446210;
      v114 = v42;
      *&v42 = 136446466;
      v107 = v42;
      v117 = v39 + 56;
      v123 = 0x80000001DEF9C1B0;
      while (1)
      {
        v47 = v119 + 56 * v40;
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = *(v47 + 24);
        if (!*(v39 + 16))
        {

          goto LABEL_27;
        }

        v118 = *(v47 + 16);
        v51 = *(v47 + 32);
        v121 = *(v47 + 40);
        sub_1DEF8E7A8();

        swift_bridgeObjectRetain_n();
        sub_1DEF8D9B8();
        v52 = sub_1DEF8E7F8();
        v53 = -1 << *(v39 + 32);
        v54 = v52 & ~v53;
        if (((*(v41 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
LABEL_25:

LABEL_27:

          v58 = sub_1DEF8D4D8();
          v59 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v58, v59))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *&v128 = v44;
            *v43 = v114;

            v45 = sub_1DEE12A5C(v48, v49, &v128);

            *(v43 + 4) = v45;
            _os_log_impl(&dword_1DEE0F000, v58, v59, "Cannot handshake with discovered device: %{public}s, sync service does not know about it yet", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v44);
            v46 = v44;
            v41 = v117;
            MEMORY[0x1E12CCD70](v46, -1, -1);
            MEMORY[0x1E12CCD70](v43, -1, -1);
          }

          else
          {
          }

          goto LABEL_15;
        }

        v55 = ~v53;
        while (1)
        {
          v56 = (*(v39 + 48) + 16 * v54);
          v57 = *v56 == v48 && v56[1] == v49;
          if (v57 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }

          v54 = (v54 + 1) & v55;
          if (((*(v41 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v115 = v51;
        if (v121 == 7)
        {
          v60 = *v108;
          if (*(*v108 + 16))
          {
            sub_1DEF8E7A8();

            v61 = v123;
            sub_1DEF8D9B8();
            v62 = sub_1DEF8E7F8();
            v63 = v61;
            v64 = -1 << *(v60 + 32);
            v65 = v62 & ~v64;
            if ((*(v60 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
            {
              v66 = ~v64;
              while (1)
              {
                v67 = (*(v60 + 48) + 16 * v65);
                if (*v67 == 0xD000000000000011 && v63 == v67[1])
                {
                  break;
                }

                v69 = sub_1DEF8E4E8();
                v63 = v123;
                if (v69)
                {
                  break;
                }

                v65 = (v65 + 1) & v66;
                if (((*(v60 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              v97 = sub_1DEF8D4D8();
              v98 = sub_1DEF8DCB8();

              if (os_log_type_enabled(v97, v98))
              {
                v99 = swift_slowAlloc();
                v100 = swift_slowAlloc();
                *&v128 = v100;
                *v99 = v107;
                *(v99 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v128);
                *(v99 + 12) = 2082;

                v101 = sub_1DEE12A5C(v48, v49, &v128);

                *(v99 + 14) = v101;
                _os_log_impl(&dword_1DEE0F000, v97, v98, "(%{public}s) Skipping handshake with old-chronod as chronod client is disabled: %{public}s", v99, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E12CCD70](v100, -1, -1);
                MEMORY[0x1E12CCD70](v99, -1, -1);
              }

              else
              {
              }

              v41 = v117;
              goto LABEL_15;
            }

LABEL_39:

            v41 = v117;
          }
        }

        v113 = sub_1DEE75F2C();
        sub_1DEE29594(a2 + 192, &v128);
        v70 = v130;
        v71 = v131;
        __swift_project_boxed_opaque_existential_1(&v128, v130);
        v72 = *(v71 + 8);
        v73 = v111;
        MetadataStoring.pairingRelationship(remoteDeviceID:)(v48, v49, v70, v72, v111);
        if ((*v109)(v73, 1, v112) == 1)
        {
          break;
        }

        sub_1DEEAB218(v73, v110, type metadata accessor for PairingRelationship);
        __swift_destroy_boxed_opaque_existential_1(&v128);

        v82 = sub_1DEF8D4D8();
        v83 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *&v128 = v85;
          *v84 = v107;
          *(v84 + 4) = sub_1DEE12A5C(*(v116 + 528), *(v116 + 536), &v128);
          *(v84 + 12) = 2082;

          v86 = sub_1DEE12A5C(v48, v49, &v128);

          *(v84 + 14) = v86;
          _os_log_impl(&dword_1DEE0F000, v82, v83, "(%{public}s) Handshaking with known device: %{public}s", v84, 0x16u);
          swift_arrayDestroy();
          v87 = v85;
          a2 = v116;
          MEMORY[0x1E12CCD70](v87, -1, -1);
          v88 = v84;
          v41 = v117;
          MEMORY[0x1E12CCD70](v88, -1, -1);
        }

        if ((v113 & 1) == 0)
        {
          sub_1DEE273A0(v110, type metadata accessor for PairingRelationship);
          v80 = 0;
LABEL_51:

          v91 = sub_1DEF8D4D8();
          v92 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *&v128 = v94;
            *v93 = v114;
            *(v93 + 4) = sub_1DEE12A5C(*(v116 + 528), *(v116 + 536), &v128);
            _os_log_impl(&dword_1DEE0F000, v91, v92, "(%{public}s) No existing paired relationship exists; attempting to pair", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v94);
            v95 = v94;
            a2 = v116;
            MEMORY[0x1E12CCD70](v95, -1, -1);
            v96 = v93;
            v41 = v117;
            MEMORY[0x1E12CCD70](v96, -1, -1);
          }

          v81 = 1;
          goto LABEL_54;
        }

        v89 = v110;
        v90 = &v110[*(v112 + 32)];
        v80 = *v90;
        v81 = v90[1];
        sub_1DEE4F8C0(*v90, v81);
        sub_1DEE273A0(v89, type metadata accessor for PairingRelationship);
        if (v81 == 1)
        {
          goto LABEL_51;
        }

LABEL_54:
        *&v128 = v48;
        *(&v128 + 1) = v49;
        v129 = v118;
        v130 = v50;
        LOBYTE(v131) = v115;
        v132 = v121;
        v126 = v80;
        v127 = v81;
        v124 = 0;
        v125 = 0;
        sub_1DEE76BD8(&v128, &v126, &v124);
        sub_1DEE4F8D4(v126, v127);

LABEL_15:
        if (++v40 == v120)
        {
          goto LABEL_66;
        }
      }

      sub_1DEE171B4(v73, &qword_1ECDE3C18, &unk_1DEF94D20);
      __swift_destroy_boxed_opaque_existential_1(&v128);

      v74 = sub_1DEF8D4D8();
      v75 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v128 = v77;
        *v76 = v107;
        *(v76 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v128);
        *(v76 + 12) = 2082;

        v78 = sub_1DEE12A5C(v48, v49, &v128);

        *(v76 + 14) = v78;
        a2 = v116;
        _os_log_impl(&dword_1DEE0F000, v74, v75, "(%{public}s) Handshaking with unknown device: %{public}s", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v77, -1, -1);
        v79 = v76;
        v41 = v117;
        MEMORY[0x1E12CCD70](v79, -1, -1);
      }

      v80 = 0;
      v81 = 0;
      if (v113)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

LABEL_66:
  }

  else
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v103 = sub_1DEF8D508();
    __swift_project_value_buffer(v103, qword_1ECDF6028);

    v123 = sub_1DEF8D4D8();
    v104 = sub_1DEF8DCB8();

    if (!os_log_type_enabled(v123, v104))
    {
      v102 = v123;

LABEL_61:

      return;
    }

    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v128 = v106;
    *v105 = 136446210;
    *(v105 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v128);
    _os_log_impl(&dword_1DEE0F000, v123, v104, "%{public}s skipping handshake request, replicator is disabled", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x1E12CCD70](v106, -1, -1);
    MEMORY[0x1E12CCD70](v105, -1, -1);
  }
}

uint64_t sub_1DEE78B0C(uint64_t a1)
{
  v2 = *v1;
  v26 = a1;
  v27 = v2;
  v3 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v1[29];
  *v10 = v11;
  v12 = *(v7 + 104);
  v25 = *MEMORY[0x1E69E8020];
  v24 = v12;
  v12(v10, v8);
  v23 = v11;
  LOBYTE(v11) = sub_1DEF8D7B8();
  v13 = *(v7 + 8);
  result = v13(v10, v6);
  if (v11)
  {
    sub_1DEEACA70(v26, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Response);
    v15 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    sub_1DEEAB218(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ReplicatorMessage.Handshake.Response);
    *(v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v17 = v24;
    *v10 = v23;
    v17(v10, v25, v6);

    LOBYTE(v15) = sub_1DEF8D7B8();
    result = v13(v10, v6);
    if (v15)
    {
      v18 = v1[63];
      v19 = v1[64];
      __swift_project_boxed_opaque_existential_1(v1 + 60, v18);
      v20 = swift_allocObject();
      v20[2] = v1;
      v20[3] = sub_1DEEAACA4;
      v20[4] = v16;
      v21 = *(v19 + 8);

      v21(sub_1DEEACE1C, v20, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DEE78E38(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DEF8DE68())
  {
    v6 = 0;
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v17 = v4;
    while (v19)
    {
      v9 = MEMORY[0x1E12CB6E0](v6, v4);
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v23 = v9;
      a1(&v21, &v23);
      if (v3)
      {

        return v7;
      }

      v11 = v22;
      if (v22)
      {
        v12 = i;
        v13 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DEF3805C(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_1DEF3805C((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        v8 = &v7[16 * v15];
        *(v8 + 4) = v13;
        *(v8 + 5) = v11;
        v4 = v17;
        i = v12;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    if (v6 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v9 = *(v4 + 8 * v6 + 32);

    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DEE79004(unint64_t a1, uint64_t *a2)
{
  v176 = a2;
  v170 = a1;
  v3 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v3);
  v152 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for SyncQueue.SyncItem(0);
  v169 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v175 = (&v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v149 = &v147 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D80, &qword_1DEF91698);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v158 = &v147 - v9;
  v157 = type metadata accessor for PrioritizedRecordValue(0);
  v148 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1DEF8D3F8();
  v155 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v153 = v12;
  v154 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v160 = (&v147 - v14);
  v161 = type metadata accessor for PairingRelationship(0);
  v159 = *(v161 - 1);
  MEMORY[0x1EEE9AC00](v161);
  v156 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v147 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v167 = &v147 - v19;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v172);
  v21 = &v147 - v20;
  v168 = type metadata accessor for SessionManager.Session(0);
  v22 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DEF8D788();
  v25 = *(v24 - 1);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v2 + 232);
  *v28 = v29;
  v31 = v25 + 104;
  v30 = *(v25 + 104);
  LODWORD(v165) = *MEMORY[0x1E69E8020];
  v164 = v30;
  v30(v28, v26);
  v162 = v29;
  LOBYTE(v29) = sub_1DEF8D7B8();
  v163 = *(v25 + 8);
  v32 = (v163)(v28, v24);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    swift_once();
    goto LABEL_9;
  }

  v150 = v3;
  v147 = v11;
  v174 = v2;
  v33 = *(v2 + 544);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v176;
  *(&v147 - 2) = v33;
  *(&v147 - 1) = v34;

  sub_1DEF8DD18();

  v35 = v168;
  if ((*(v22 + 48))(v21, 1, v168) == 1)
  {
    v36 = &qword_1ECDE3D08;
    v37 = &unk_1DEF95E50;
    v38 = v21;
    return sub_1DEE171B4(v38, v36, v37);
  }

  v11 = v166;
  sub_1DEEAB218(v21, v166, type metadata accessor for SessionManager.Session);
  v39 = v162;
  *v28 = v162;
  v164(v28, v165, v24);
  v40 = v39;
  v2 = sub_1DEF8D7B8();
  (v163)(v28, v24);
  if ((v2 & 1) == 0)
  {
    goto LABEL_91;
  }

  v24 = v174;
  swift_beginAccess();
  sub_1DEE29594((v24 + 24), &aBlock);
  v42 = v185;
  v41 = v186;
  __swift_project_boxed_opaque_existential_1(&aBlock, v185);
  v43 = *(v41 + 1);
  v44 = v160;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(*&v11[*(v35 + 20)], *&v11[*(v35 + 20) + 8], v42, v43, v160);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v21 = v161;
  if ((*(v159 + 48))(v44, 1, v161) == 1)
  {
    sub_1DEE273A0(v11, type metadata accessor for SessionManager.Session);
    v36 = &qword_1ECDE3C18;
    v37 = &unk_1DEF94D20;
    v38 = v44;
    return sub_1DEE171B4(v38, v36, v37);
  }

  v46 = v44;
  v47 = v167;
  sub_1DEEAB218(v46, v167, type metadata accessor for PairingRelationship);
  v48 = (v47 + *(v21 + 5));
  v2 = v48[4];
  v31 = v48[5];
  v162 = v48;
  if (qword_1ED786060 != -1)
  {
    goto LABEL_92;
  }

LABEL_9:
  v49 = v176;
  if (v2 < *(&xmmword_1ED786068 + 1) || xmmword_1ED786068 < v31)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v121 = sub_1DEF8D508();
    __swift_project_value_buffer(v121, qword_1ECDF6028);
    v122 = v156;
    sub_1DEEACA70(v167, v156, type metadata accessor for PairingRelationship);

    v123 = sub_1DEF8D4D8();
    v124 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = v11;
      v127 = swift_slowAlloc();
      aBlock = v127;
      *v125 = 136446466;
      *(v125 + 4) = sub_1DEE12A5C(v24[66], v24[67], &aBlock);
      *(v125 + 12) = 2082;
      sub_1DEEACA70(v122 + *(v21 + 5), v152, type metadata accessor for DeviceDescriptor);
      v128 = sub_1DEF8D988();
      v130 = v129;
      sub_1DEE273A0(v122, type metadata accessor for PairingRelationship);
      v131 = sub_1DEE12A5C(v128, v130, &aBlock);

      *(v125 + 14) = v131;
      _os_log_impl(&dword_1DEE0F000, v123, v124, "(%{public}s) Not enqueuing records for incompatible remote device %{public}s", v125, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v127, -1, -1);
      MEMORY[0x1E12CCD70](v125, -1, -1);

      v132 = v126;
    }

    else
    {

      sub_1DEE273A0(v122, type metadata accessor for PairingRelationship);
      v132 = v11;
    }

    goto LABEL_89;
  }

  v50 = v24[68];
  v172 = *(v50 + 32);
  v51 = v155;
  v52 = *(v155 + 16);
  v53 = v154;
  v54 = v171;
  v168 = v155 + 16;
  v165 = v52;
  v52(v154, v11, v171);
  v55 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v56 = v55 + v153;
  v57 = swift_allocObject();
  *(v57 + 16) = v50;
  (*(v51 + 32))(v57 + v55, v53, v54);
  *(v57 + v56) = 1;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1DEEACDAC;
  *(v58 + 24) = v57;
  v186 = sub_1DEE46D40;
  v187 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v183 = 1107296256;
  v184 = sub_1DEE134F4;
  v185 = &block_descriptor_680;
  v59 = _Block_copy(&aBlock);
  v60 = v187;
  swift_retain_n();

  dispatch_sync(v172, v59);
  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
LABEL_94:
    v146 = v61;
    result = sub_1DEF8DE68();
    v61 = v146;
    v62 = result;
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_88;
  }

  if (*(v167 + *(v21 + 8) + 8) != 2)
  {
    v133 = v174;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v134 = sub_1DEF8D508();
    __swift_project_value_buffer(v134, qword_1ECDF6028);
    v135 = v151;
    sub_1DEEACA70(v167, v151, type metadata accessor for PairingRelationship);

    v136 = sub_1DEF8D4D8();
    v137 = sub_1DEF8DCB8();

    if (!os_log_type_enabled(v136, v137))
    {

      sub_1DEE273A0(v135, type metadata accessor for PairingRelationship);
      goto LABEL_88;
    }

    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v181 = v139;
    *v138 = 136446466;
    *(v138 + 4) = sub_1DEE12A5C(v133[66], v133[67], &v181);
    *(v138 + 12) = 2082;
    v140 = (v135 + *(v21 + 8));
    v141 = v140[1];
    if (v141 > 1)
    {
      if (v141 == 2)
      {
        v142 = 0xE600000000000000;
        v143 = 0x646572696170;
        goto LABEL_87;
      }

      if (v141 == 3)
      {
        v142 = 0xE800000000000000;
        v143 = 0x6576697463616E69;
        goto LABEL_87;
      }
    }

    else
    {
      if (!v141)
      {
        v142 = 0xEA00000000006465;
        v143 = 0x6375646F72746E69;
        goto LABEL_87;
      }

      if (v141 == 1)
      {
        v142 = 0xE700000000000000;
        v143 = 0x676E6972696170;
LABEL_87:
        sub_1DEE273A0(v135, type metadata accessor for PairingRelationship);
        v145 = sub_1DEE12A5C(v143, v142, &v181);

        *(v138 + 14) = v145;
        _os_log_impl(&dword_1DEE0F000, v136, v137, "(%{public}s) Not enqueuing records for relationship state %{public}s", v138, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v139, -1, -1);
        MEMORY[0x1E12CCD70](v138, -1, -1);

        goto LABEL_88;
      }
    }

    v144 = *v140;
    aBlock = 0x6E6974617267696DLL;
    v183 = 0xEA00000000002867;
    sub_1DEE4F8C0(v144, v141);
    MEMORY[0x1E12CB180](v144, v141);
    MEMORY[0x1E12CB180](41, 0xE100000000000000);
    sub_1DEE4F8D4(v144, v141);
    v143 = aBlock;
    v142 = v183;
    goto LABEL_87;
  }

  v61 = v170;
  v60 = v174;
  if (v170 >> 62)
  {
    goto LABEL_94;
  }

  v62 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v62)
  {
LABEL_88:
    v132 = v166;
LABEL_89:
    sub_1DEE273A0(v132, type metadata accessor for SessionManager.Session);
    return sub_1DEE273A0(v167, type metadata accessor for PairingRelationship);
  }

LABEL_15:
  if (v62 >= 1)
  {
    v164 = (v61 & 0xC000000000000001);
    v63 = v61;
    swift_beginAccess();
    v64 = v63;
    v65 = 0;
    v161 = (v148 + 48);
    v160 = (v148 + 56);
    v163 = v62;
    while (1)
    {
      if (v164)
      {
        v68 = MEMORY[0x1E12CB6E0](v65, v64);
      }

      else
      {
        v68 = *(v64 + 8 * v65 + 32);
      }

      v69 = MEMORY[0x1E12CC160]();
      v70 = *(v68 + 32);
      v71 = v60[30];
      v172 = v69;
      if ((v71 & 0xC000000000000001) != 0)
      {

        v72 = sub_1DEF8E0B8();

        if (!v72)
        {
          goto LABEL_33;
        }

        v177[0] = v72;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v73 = v179;
      }

      else
      {
        if (!*(v71 + 16))
        {
          goto LABEL_45;
        }

        v74 = sub_1DEEAF20C(v70);
        if ((v75 & 1) == 0)
        {
LABEL_33:

          goto LABEL_45;
        }

        v73 = *(*(v71 + 56) + 8 * v74);
      }

      if (v73)
      {
        v76 = v162[12];
        if ((v76 & 0xC000000000000001) != 0)
        {

          v77 = sub_1DEF8E0B8();

          if (!v77)
          {
            goto LABEL_42;
          }

          v177[0] = v77;
          type metadata accessor for Zone();
          swift_dynamicCast();
          v78 = v179;
          if (!v179)
          {
            goto LABEL_42;
          }
        }

        else if (!*(v76 + 16) || (v79 = sub_1DEEAF20C(*(v68 + 32)), (v80 & 1) == 0) || (v78 = *(*(v76 + 56) + 8 * v79), , !v78))
        {
LABEL_42:

          goto LABEL_45;
        }

        v81 = *(v78 + 24);
        v82 = *(v78 + 32);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v83 = *(v73 + 24);
          ObjectType = swift_getObjectType();
          v179 = v81;
          v180 = v82;
          v85 = *(v83 + 32);
          v86 = v158;
          v87 = v83;
          v60 = v174;
          v85(v68, v167, &v179, ObjectType, v87);
          swift_unknownObjectRelease();

          v88 = (*v161)(v86, 1, v157);
          v49 = v176;
          if (v88 != 1)
          {
            v89 = v147;
            result = sub_1DEEAB218(v86, v147, type metadata accessor for PrioritizedRecordValue);
            v90 = *v89;
            v91 = v89[1];
            v92 = v91 >> 62;
            if ((v91 >> 62) > 1)
            {
              if (v92 == 2)
              {
                v115 = v90 + 16;
                v113 = *(v90 + 16);
                v114 = *(v115 + 8);
                v93 = v114 - v113;
                if (__OFSUB__(v114, v113))
                {
                  goto LABEL_97;
                }
              }

              else
              {
                v93 = 0;
              }
            }

            else if (v92)
            {
              v116 = __OFSUB__(HIDWORD(v90), v90);
              v117 = HIDWORD(v90) - v90;
              if (v116)
              {
                goto LABEL_98;
              }

              v93 = v117;
            }

            else
            {
              v93 = BYTE6(v91);
            }

            v118 = type metadata accessor for Record.Value(0);
            v119 = v149;
            sub_1DEE17214(v89 + *(v118 + 20), v149, &qword_1ECDE4890, &qword_1DEF90990);
            v120 = sub_1DEF8D1E8();
            v94 = (*(*(v120 - 8) + 48))(v119, 1, v120) != 1;
            sub_1DEE171B4(v119, &qword_1ECDE4890, &qword_1DEF90990);
            sub_1DEE273A0(v89, type metadata accessor for PrioritizedRecordValue);
            goto LABEL_46;
          }
        }

        else
        {

          v86 = v158;
          (*v160)(v158, 1, 1, v157);
          v49 = v176;
        }

        sub_1DEE171B4(v86, &qword_1ECDE3D80, &qword_1DEF91698);
      }

LABEL_45:
      v94 = 0;
      v93 = 0;
LABEL_46:
      v95 = v60[74];
      swift_beginAccess();
      v96 = *(v95 + 16);
      v97 = *(v96 + 16);

      if (v97)
      {

        v98 = sub_1DEEAF350(v49);
        v99 = MEMORY[0x1E69E7CC0];
        if (v100)
        {
          v99 = *(*(v96 + 56) + 8 * v98);
        }
      }

      else
      {
        v99 = MEMORY[0x1E69E7CC0];
      }

      v101 = v173;
      v102 = v175;
      v165(v175 + *(v173 + 20), v49, v171);
      *v102 = v68;
      *(v102 + *(v101 + 24)) = v93;
      *(v102 + *(v101 + 28)) = v94;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_1DEF381B4(0, v99[2] + 1, 1, v99);
      }

      v103 = v163;
      v105 = v99[2];
      v104 = v99[3];
      v106 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        v99 = sub_1DEF381B4((v104 > 1), v105 + 1, 1, v99);
      }

      v99[2] = v106;
      v107 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      sub_1DEEAB218(v175, v99 + v107 + *(v169 + 72) * v105, type metadata accessor for SyncQueue.SyncItem);
      v179 = v99 + v107;
      v180 = v105 + 1;
      v108 = sub_1DEF8E2D8();
      if (v108 > v105)
      {
        sub_1DEF059D4(0, v105 + 1, 1, &v179);
        v66 = v172;
      }

      else
      {
        v109 = v108;
        v110 = v106 >> 1;
        if (v105)
        {
          v111 = sub_1DEF8DB08();
          *(v111 + 16) = v110;
        }

        else
        {
          v111 = MEMORY[0x1E69E7CC0];
        }

        v66 = v172;
        v177[0] = v111 + v107;
        v177[1] = v110;
        v112 = v111;
        sub_1DEF05C18(v177, v178, &v179, v109);
        *(v112 + 16) = 0;
      }

      ++v65;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177[0] = *(v95 + 16);
      *(v95 + 16) = 0x8000000000000000;
      v49 = v176;
      sub_1DEF3E8B0(v99, v176, isUniquelyReferenced_nonNull_native);
      *(v95 + 16) = v177[0];
      swift_endAccess();

      objc_autoreleasePoolPop(v66);

      v60 = v174;
      v64 = v170;
      if (v103 == v65)
      {
        goto LABEL_88;
      }
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_1DEE7A698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[29];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v16 = MEMORY[0x1E12CC160](result);
    sub_1DEE89DB8(a1);
    objc_autoreleasePoolPop(v16);
    v17 = (a3 + *(type metadata accessor for ReplicatorMessage.Handshake.Complete(0) + 20));
    v19 = v17[1];
    v22 = *v17;
    v18 = v22;
    v23 = v19;
    v20 = *(type metadata accessor for PairingRelationship(0) + 20);
    sub_1DEE4F8C0(v18, v19);
    sub_1DEE7A820(a2, &v22, a4 + v20);
    return sub_1DEE4F8D4(v22, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE7A820(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a2;
  v14 = a2[1];
  v15 = *(v4 + 232);
  *v12 = v15;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v12, v8);
  if (v15)
  {
    if (*(v4 + 96) == 4 || *(a3 + 48) == 4)
    {
      if (v14)
      {
        sub_1DEE4F8C0(v13, v14);
        sub_1DEE4F8D4(v13, v14);
        sub_1DEE4F8D4(0, 0);
      }

      else
      {
        sub_1DEE4F8D4(v13, 0);
        sub_1DEE4F8D4(0, 0);
        sub_1DEE5DFB0(*a3, *(a3 + 8), v4);
      }
    }

    v18 = *(v4 + 592);
    swift_beginAccess();
    if (!*(*(v18 + 16) + 16) || (, , sub_1DEEAF350(a1), v20 = v19, , result = , (v20 & 1) == 0))
    {
      v21 = *(v4 + 408);
      v22 = *(v4 + 416);
      __swift_project_boxed_opaque_existential_1((v4 + 384), v21);
      v23 = a1 + *(type metadata accessor for SessionManager.Session(0) + 20);
      v24 = *(v23 + 8);
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      v27 = *(v23 + 32);
      v29[0] = *v23;
      v29[1] = v24;
      v29[2] = v26;
      v29[3] = v25;
      v30 = v27;
      v31 = *(v23 + 40);
      v28 = *(v22 + 24);

      v28(v29, v21, v22);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE7AA90(void *a1, uint64_t a2, int64_t isEscapingClosureAtFileLocation, uint64_t a4, int a5, void *a6, unint64_t a7)
{
  v318 = a7;
  v312 = a6;
  v320 = a5;
  v319 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v272 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v301 = &v272 - v14;
  v297 = type metadata accessor for Message(0);
  v296 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v287 = &v272 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = type metadata accessor for ReplicatorMessage(0);
  MEMORY[0x1EEE9AC00](v300);
  v309 = &v272 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v299);
  v18 = (&v272 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v282 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v284 = &v272 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v313 = &v272 - v21;
  v328 = sub_1DEF8D3F8();
  v316 = *(v328 - 8);
  MEMORY[0x1EEE9AC00](v328);
  v302 = v22;
  v321 = &v272 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v303);
  v304 = &v272 - v23;
  v305 = type metadata accessor for SessionManager.Session(0);
  v308 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v281 = &v272 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v290 = &v272 - v26;
  v280 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v315 = &v272 - v29;
  v30 = type metadata accessor for ZoneVersion(0);
  v330 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v325 = &v272 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v331 = &v272 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v327 = &v272 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v334 = &v272 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v329 = &v272 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  MEMORY[0x1EEE9AC00](v40 - 8);
  ObjectType = (&v272 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v42);
  v332 = (&v272 - v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v310 = &v272 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v293 = (&v272 - v47);
  v291 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v291);
  v306 = &v272 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v314 = &v272 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v292 = &v272 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v295 = (&v272 - v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v55);
  v311 = &v272 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v324 = &v272 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v286 = &v272 - v60;
  MEMORY[0x1EEE9AC00](v61);
  *&v294 = &v272 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v323 = &v272 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = (&v272 - v66);
  v317 = type metadata accessor for PairingRelationship(0);
  i = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v289 = &v272 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v285 = &v272 - v70;
  MEMORY[0x1EEE9AC00](v71);
  *&v322 = &v272 - v72;
  if (qword_1ECDE2E58 != -1)
  {
LABEL_75:
    swift_once();
  }

  v73 = sub_1DEF8D508();
  v74 = __swift_project_value_buffer(v73, qword_1ECDF6028);

  sub_1DEEA8BAC(isEscapingClosureAtFileLocation, &aBlock);
  v335 = v74;
  v75 = sub_1DEF8D4D8();
  v76 = sub_1DEF8DCB8();

  sub_1DEEA8CAC(isEscapingClosureAtFileLocation);
  v77 = os_log_type_enabled(v75, v76);
  v336 = a2;
  v307 = v18;
  v288 = v12;
  if (v77)
  {
    v78 = a2;
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v341 = v80;
    *v79 = 136446722;
    *(v79 + 4) = sub_1DEE12A5C(*(v78 + 528), *(v78 + 536), &v341);
    *(v79 + 12) = 2082;
    *(v79 + 14) = sub_1DEE12A5C(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8), &v341);
    *(v79 + 22) = 2082;
    aBlock = v319;
    LOBYTE(v343) = v320;
    v81 = ReplicationSchedule.description.getter();
    v83 = sub_1DEE12A5C(v81, v82, &v341);

    *(v79 + 24) = v83;
    _os_log_impl(&dword_1DEE0F000, v75, v76, "(%{public}s) Sending handshake request to %{public}s; schedule: %{public}s", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v80, -1, -1);
    MEMORY[0x1E12CCD70](v79, -1, -1);
  }

  if (!a1)
  {
    v18 = v336;
    if ((*(v336 + 624) & 1) == 0)
    {

      v96 = sub_1DEF8D4D8();
      v101 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v96, v101))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock = v99;
        *v98 = 136446210;
        *(v98 + 4) = sub_1DEE12A5C(v18[66], v18[67], &aBlock);
        _os_log_impl(&dword_1DEE0F000, v96, v101, "(%{public}s) Abandoning handshake request because replicator is disabled", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (v318 == 3)
    {

      sub_1DEEA8BAC(isEscapingClosureAtFileLocation, &aBlock);
      v96 = sub_1DEF8D4D8();
      v97 = sub_1DEF8DCB8();

      sub_1DEEA8CAC(isEscapingClosureAtFileLocation);
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock = v99;
        *v98 = 136446466;
        *(v98 + 4) = sub_1DEE12A5C(v18[66], v18[67], &aBlock);
        *(v98 + 12) = 2082;
        *(v98 + 14) = sub_1DEE12A5C(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8), &aBlock);
        v100 = "(%{public}s) Abandoning handshake request because relationship is inactive: %{public}s";
LABEL_12:
        _os_log_impl(&dword_1DEE0F000, v96, v97, v100, v98, 0x16u);
        swift_arrayDestroy();
LABEL_15:
        MEMORY[0x1E12CCD70](v99, -1, -1);
        MEMORY[0x1E12CCD70](v98, -1, -1);
      }

LABEL_16:

      sub_1DEE7D6B8(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8));
      return;
    }

    if (*(isEscapingClosureAtFileLocation + 40) == 7)
    {
      swift_beginAccess();
      v102 = v18[84];

      v103 = sub_1DEF01E3C(0xD000000000000011, 0x80000001DEF9C1B0, v102);

      if (v103)
      {

        sub_1DEEA8BAC(isEscapingClosureAtFileLocation, &aBlock);
        v96 = sub_1DEF8D4D8();
        v97 = sub_1DEF8DCB8();

        sub_1DEEA8CAC(isEscapingClosureAtFileLocation);
        if (!os_log_type_enabled(v96, v97))
        {
          goto LABEL_16;
        }

        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock = v99;
        *v98 = 136446466;
        *(v98 + 4) = sub_1DEE12A5C(v18[66], v18[67], &aBlock);
        *(v98 + 12) = 2082;
        *(v98 + 14) = sub_1DEE12A5C(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8), &aBlock);
        v100 = "(%{public}s) Abandoning handshake with old-chronod as chronod client is disabled: %{public}s";
        goto LABEL_12;
      }
    }

    v274 = swift_allocBox();
    v105 = v104;
    swift_beginAccess();
    sub_1DEE29594((v18 + 24), &aBlock);
    v106 = v345;
    v107 = v346;
    __swift_project_boxed_opaque_existential_1(&aBlock, v345);
    v108 = *isEscapingClosureAtFileLocation;
    v109 = *(isEscapingClosureAtFileLocation + 8);
    v110 = *(v107 + 1);

    v276 = v108;
    MetadataStoring.pairingRelationship(remoteDeviceID:)(v108, v109, v106, v110, v105);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_1DEE17214(v105, v67, &qword_1ECDE3C18, &unk_1DEF94D20);
    v111 = i;
    v112 = i[6];
    v279 = i + 6;
    v113 = v317;
    v277 = v112;
    v114 = v112(v67, 1, v317);
    v278 = v105;
    v273 = isEscapingClosureAtFileLocation;
    v275 = v109;
    if (v114 == 1)
    {
      sub_1DEE171B4(v67, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (qword_1ED786060 != -1)
      {
LABEL_77:
        swift_once();
      }

      v115 = xmmword_1ED786068;
      v116 = *(isEscapingClosureAtFileLocation + 32);
      v337 = *(isEscapingClosureAtFileLocation + 16);
      v117 = *(v316 + 56);
      v118 = v293;
      v119 = v328;
      v117(v293, 1, 1, v328);
      v120 = v292;
      *(v292 + 72) = 0u;
      *(v120 + 56) = 0u;
      *(v120 + 88) = 256;
      v322 = xmmword_1DEF90FE0;
      *(v120 + 112) = xmmword_1DEF90FE0;
      v121 = *(v291 + 60);
      v117((v120 + v121), 1, 1, v119);
      v122 = v275;
      *v120 = v276;
      *(v120 + 8) = v122;
      *(v120 + 16) = 0;
      *(v120 + 24) = 0xE000000000000000;
      *(v120 + 32) = v115;
      *(v120 + 48) = v116;
      *(v120 + 56) = 0u;
      *(v120 + 72) = 0u;
      *(v120 + 88) = 256;
      v123 = *(v120 + 112);
      v124 = *(v120 + 120);
      sub_1DEE17214(&v337, &aBlock, &unk_1ECDE3ED0, &qword_1DEF92030);
      sub_1DEE2416C(v123, v124);
      *(v120 + 112) = v322;
      *(v120 + 128) = 0u;
      v125 = v337;
      *(v120 + 144) = 0u;
      *(v120 + 160) = v125;
      sub_1DEEA882C(v118, v120 + v121);
      v126 = MEMORY[0x1E69E7CC8];
      *(v120 + 96) = MEMORY[0x1E69E7CC8];
      sub_1DEE171B4(v118, &unk_1ECDE3E80, &unk_1DEF90970);
      *(v120 + 104) = v126;
      v12 = v295;
      sub_1DEEAB218(v120, v295, type metadata accessor for DeviceDescriptor);
      v127 = v323;
      sub_1DEF8D3E8();
      v128 = v317;
      sub_1DEEACA70(v12, v127 + *(v317 + 20), type metadata accessor for DeviceDescriptor);
      sub_1DEF8D348();
      sub_1DEF8D348();
      v129 = v312;
      v130 = v318;
      sub_1DEE4F8C0(v312, v318);
      sub_1DEF8D348();
      v131 = (v127 + *(v128 + 32));
      *v131 = v129;
      v131[1] = v130;
      (i[7])(v127, 0, 1, v128);
      v132 = v278;
      sub_1DEE29D60(v127, v278, &qword_1ECDE3C18, &unk_1DEF94D20);
      v18 = v336;
      sub_1DEE29594(v336 + 192, &aBlock);
      v133 = v345;
      v134 = v346;
      __swift_project_boxed_opaque_existential_1(&aBlock, v345);
      v135 = v132;
      v136 = v294;
      sub_1DEE17214(v135, v294, &qword_1ECDE3C18, &unk_1DEF94D20);
      v137 = v277;
      v138 = v277(v136, 1, v128);
      v139 = ObjectType;
      if (v138 == 1)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      (*(*(v134 + 2) + 112))(v136, v133);
      sub_1DEE273A0(v12, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v136, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v113 = v317;
    }

    else
    {

      v140 = v322;
      sub_1DEEAB218(v67, v322, type metadata accessor for PairingRelationship);
      sub_1DEE7DB50(v140);
      v141 = *(v113 + 20);
      aBlock = v312;
      v343 = v318;
      v142 = v323;
      sub_1DEE5F828((v140 + v141), &aBlock, 1, 1, v323);
      (v111[7])(v142, 0, 1, v113);
      sub_1DEE29D60(v142, v105, &qword_1ECDE3C18, &unk_1DEF94D20);

      v143 = sub_1DEF8D4D8();
      v12 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v143, v12))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        aBlock = v145;
        *v144 = 136446466;
        *(v144 + 4) = sub_1DEE12A5C(v18[66], v18[67], &aBlock);
        *(v144 + 12) = 2082;
        swift_beginAccess();
        v146 = v286;
        sub_1DEE17214(v105, v286, &qword_1ECDE3C18, &unk_1DEF94D20);
        v147 = v277(v146, 1, v113);

        if (v147 == 1)
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          return;
        }

        v148 = v285;
        sub_1DEEAB218(v146, v285, type metadata accessor for PairingRelationship);
        v149 = PairingRelationship.description.getter();
        v151 = v150;
        sub_1DEE273A0(v148, type metadata accessor for PairingRelationship);
        v152 = sub_1DEE12A5C(v149, v151, &aBlock);

        *(v144 + 14) = v152;
        _os_log_impl(&dword_1DEE0F000, v143, v12, "(%{public}s) Using existing relationship: %{public}s", v144, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v145, -1, -1);
        MEMORY[0x1E12CCD70](v144, -1, -1);

        sub_1DEE273A0(v322, type metadata accessor for PairingRelationship);
        v18 = v336;
        v113 = v317;
      }

      else
      {

        sub_1DEE273A0(v140, type metadata accessor for PairingRelationship);
      }

      v137 = v277;
      v139 = ObjectType;
    }

    v67 = v324;
    sub_1DEE69B50(v314);
    v153 = v278;
    swift_beginAccess();
    sub_1DEE17214(v153, v67, &qword_1ECDE3C18, &unk_1DEF94D20);
    v154 = v137(v67, 1, v113);
    a1 = v327;
    if (v154 == 1)
    {
      __break(1u);
LABEL_81:
      __break(1u);
    }

    else
    {
      v155 = sub_1DEE7DE50(v67);
      sub_1DEE273A0(v67, type metadata accessor for PairingRelationship);
      v156 = v155 + 8;
      v157 = 1 << *(v155 + 32);
      v158 = -1;
      if (v157 < 64)
      {
        v158 = ~(-1 << v157);
      }

      v159 = v158 & v155[8];
      isEscapingClosureAtFileLocation = (v157 + 63) >> 6;
      v295 = (v316 + 48);
      v293 = (v316 + 32);
      v292 = (v316 + 8);
      *&v322 = v155;

      v160 = 0;
      *&v161 = 136446722;
      v294 = v161;
      for (i = v155 + 8; ; v156 = i)
      {
        if (!v159)
        {
          if (isEscapingClosureAtFileLocation <= v160 + 1)
          {
            v164 = v160 + 1;
          }

          else
          {
            v164 = isEscapingClosureAtFileLocation;
          }

          a2 = v164 - 1;
          while (1)
          {
            v163 = v160 + 1;
            if (__OFADD__(v160, 1))
            {
              break;
            }

            if (v163 >= isEscapingClosureAtFileLocation)
            {
              v12 = &qword_1DEF91628;
              v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
              (*(*(v188 - 8) + 56))(v139, 1, 1, v188);
              v159 = 0;
              v160 = a2;
              goto LABEL_47;
            }

            v159 = v156[v163];
            ++v160;
            if (v159)
            {
              v160 = v163;
              goto LABEL_46;
            }
          }

          __break(1u);
          goto LABEL_75;
        }

        v163 = v160;
LABEL_46:
        v165 = __clz(__rbit64(v159));
        v159 &= v159 - 1;
        v166 = v165 | (v163 << 6);
        v167 = *(*(v322 + 48) + 8 * v166);
        v168 = v329;
        sub_1DEEACA70(*(v322 + 56) + *(v330 + 72) * v166, v329, type metadata accessor for ZoneVersion);
        v12 = &qword_1DEF91628;
        v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        v170 = *(v169 + 48);
        *v139 = v167;
        sub_1DEEAB218(v168, v139 + v170, type metadata accessor for ZoneVersion);
        (*(*(v169 - 8) + 56))(v139, 0, 1, v169);

LABEL_47:
        v171 = v332;
        sub_1DEE1BA88(v139, v332, &qword_1ECDE3D10, &qword_1DEF91620);
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        if ((*(*(v172 - 8) + 48))(v171, 1, v172) == 1)
        {
          break;
        }

        v67 = *v171;
        v173 = v171 + *(v172 + 48);
        v174 = v334;
        sub_1DEEAB218(v173, v334, type metadata accessor for ZoneVersion);
        sub_1DEEACA70(v174, a1, type metadata accessor for ZoneVersion);
        v18 = v336;

        v175 = sub_1DEF8D4D8();
        v176 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v175, v176))
        {
          LODWORD(v324) = v176;
          v12 = swift_slowAlloc();
          v323 = swift_slowAlloc();
          v338[0] = v323;
          *v12 = v294;
          *(v12 + 4) = sub_1DEE12A5C(v18[66], v18[67], v338);
          *(v12 + 6) = 2082;
          v177 = v67[5];
          aBlock = v67[4];
          v343 = v177;

          MEMORY[0x1E12CB180](14906, 0xE200000000000000);
          MEMORY[0x1E12CB180](v67[2], v67[3]);

          v178 = sub_1DEE12A5C(aBlock, v343, v338);

          *(v12 + 14) = v178;
          *(v12 + 11) = 2082;
          v179 = v331;
          sub_1DEEACA70(a1, v331, type metadata accessor for ZoneVersion);
          v180 = v179;
          v181 = v325;
          sub_1DEEACA70(v180, v325, type metadata accessor for ZoneVersion);
          v182 = v328;
          if ((*v295)(v181, 1, v328) == 1)
          {
            v183 = 0xE500000000000000;
            v184 = 0x7974706D65;
          }

          else
          {
            v185 = v321;
            (*v293)(v321, v181, v182);
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v184 = sub_1DEF8E2E8();
            v183 = v186;
            (*v292)(v185, v182);
          }

          sub_1DEE273A0(v331, type metadata accessor for ZoneVersion);
          a1 = v327;
          sub_1DEE273A0(v327, type metadata accessor for ZoneVersion);
          v18 = sub_1DEE12A5C(v184, v183, v338);

          v12[3] = v18;
          _os_log_impl(&dword_1DEE0F000, v175, v324, "(%{public}s) Local zone version: %{public}s: %{public}s", v12, 0x20u);
          v187 = v323;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v187, -1, -1);
          MEMORY[0x1E12CCD70](v12, -1, -1);

          v162 = v334;
        }

        else
        {

          sub_1DEE273A0(a1, type metadata accessor for ZoneVersion);
          v162 = v174;
        }

        sub_1DEE273A0(v162, type metadata accessor for ZoneVersion);
        v139 = ObjectType;
      }

      v190 = v336;
      v191 = *(v336 + 544);
      MEMORY[0x1EEE9AC00](v189);
      v192 = v276;
      *(&v272 - 4) = v191;
      *(&v272 - 3) = v192;
      v270 = v275;

      v193 = v304;
      sub_1DEF8DD18();

      if ((*(v308 + 48))(v193, 1, v305) == 1)
      {
        sub_1DEE171B4(v193, &qword_1ECDE3D08, &unk_1DEF95E50);
        if ((v320 & 0xFE) != 0)
        {
          v194 = 0;
        }

        else
        {
          v194 = v319;
        }

        v195 = v190[68];

        v196 = v321;
        v197 = sub_1DEF8D3E8();
        v198 = v315;
        if ((v194 & 0x8000000000000000) == 0)
        {
          MEMORY[0x1EEE9AC00](v197);
          v199 = v273;
          *(&v272 - 4) = v196;
          *(&v272 - 3) = v199;
          v270 = v195;
          v271 = v194;
          sub_1DEF8DD18();
          v334 = 0;

          v200 = v328;
          (*v292)(v196, v328);
          goto LABEL_61;
        }

        __break(1u);
LABEL_79:
        swift_once();
LABEL_72:
        v248 = qword_1ECDF60B0;
        v249 = qword_1ECDF60B8;
        v250 = v190[22];
        v335 = v190[23];
        v251 = sub_1DEF8D1E8();
        (*(*(v251 - 8) + 56))(v288, 1, 1, v251);
        v340 = 0;
        v252 = v278;
        v253 = v317;
        if (v277(v278, 1, v317) != 1)
        {
          v254 = v190;
          v334 = v250;
          ObjectType = swift_getObjectType();
          v255 = v252 + *(v253 + 20);
          v256 = v306;
          sub_1DEEACA70(v255, v306, type metadata accessor for DeviceDescriptor);

          v339 = 0;
          v338[0] = v248;
          v338[1] = v249;
          v257 = v284;
          sub_1DEEACA70(v196, v284, type metadata accessor for ReplicatorMessage.Handshake.Request);
          v258 = v281;
          sub_1DEEACA70(v315, v281, type metadata accessor for SessionManager.Session);
          v259 = (*(v282 + 80) + 24) & ~*(v282 + 80);
          v260 = (v283 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
          v261 = (*(v308 + 80) + v260 + 8) & ~*(v308 + 80);
          v262 = (v280 + v261 + 7) & 0xFFFFFFFFFFFFFFF8;
          v263 = swift_allocObject();
          *(v263 + 16) = v254;
          sub_1DEEAB218(v257, v263 + v259, type metadata accessor for ReplicatorMessage.Handshake.Request);
          *(v263 + v260) = v274;
          sub_1DEEAB218(v258, v263 + v261, type metadata accessor for SessionManager.Session);
          v264 = v263 + v262;
          v265 = v273;
          v266 = v273[1];
          *v264 = *v273;
          *(v264 + 16) = v266;
          *(v264 + 32) = *(v265 + 32);
          *(v264 + 48) = *(v265 + 48);
          v267 = v263 + ((v262 + 63) & 0xFFFFFFFFFFFFFFF8);
          *v267 = v319;
          *(v267 + 8) = v320;

          sub_1DEEA8BAC(v265, &aBlock);

          v268 = v287;
          v269 = v288;
          sub_1DEE7FC18(v287, v288, &v340, v256, &v339, v338, sub_1DEEA9A9C, v263, ObjectType, v335);

          sub_1DEE273A0(v256, type metadata accessor for DeviceDescriptor);
          sub_1DEE171B4(v269, &qword_1ECDE4890, &qword_1DEF90990);
          sub_1DEE273A0(v268, type metadata accessor for Message);
          sub_1DEE273A0(v309, type metadata accessor for ReplicatorMessage);
          sub_1DEE273A0(v307, type metadata accessor for ReplicatorMessage.Handshake);
          sub_1DEE273A0(v313, type metadata accessor for ReplicatorMessage.Handshake.Request);
          sub_1DEE273A0(v315, type metadata accessor for SessionManager.Session);
          sub_1DEE273A0(v314, type metadata accessor for DeviceDescriptor);

          return;
        }

        goto LABEL_85;
      }

      v334 = 0;
      v201 = v290;
      sub_1DEEAB218(v193, v290, type metadata accessor for SessionManager.Session);
      v198 = v315;
      sub_1DEEAB218(v201, v315, type metadata accessor for SessionManager.Session);
      v200 = v328;
      v196 = v321;
LABEL_61:
      v202 = v190[68];
      v203 = *(v202 + 32);
      v205 = v316 + 16;
      v204 = *(v316 + 16);
      v204(v196, v198, v200);
      v206 = v200;
      v207 = (*(v205 + 64) + 24) & ~*(v205 + 64);
      v208 = v207 + v302;
      v209 = swift_allocObject();
      *(v209 + 16) = v202;
      (*(v205 + 16))(v209 + v207, v196, v206);
      *(v209 + v208) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = sub_1DEEA8D40;
      *(v210 + 24) = v209;
      v346 = sub_1DEE46D40;
      v347 = v210;
      aBlock = MEMORY[0x1E69E9820];
      v343 = 1107296256;
      v344 = sub_1DEE134F4;
      v345 = &block_descriptor_513;
      v211 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v203, v211);
      _Block_release(v211);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_77;
      }

      v212 = v278;
      v213 = v317;
      v214 = v277;
      v215 = v277(v278, 1, v317);
      v216 = v309;
      v217 = v313;
      if (v215 == 1)
      {
        goto LABEL_81;
      }

      v218 = v306;
      sub_1DEEACA70(v212 + *(v213 + 20), v306, type metadata accessor for DeviceDescriptor);
      v219 = sub_1DEEA9148(v322, v218);
      sub_1DEE273A0(v218, type metadata accessor for DeviceDescriptor);
      v220 = v328;
      v204(v217, v315, v328);
      v221 = v212;
      v222 = v298;
      sub_1DEEACA70(v314, v217 + *(v298 + 24), type metadata accessor for DeviceDescriptor);
      v223 = (v217 + *(v222 + 20));
      v224 = v312;
      v225 = v318;
      *v223 = v312;
      v223[1] = v225;
      *(v217 + *(v222 + 28)) = v219;
      v226 = v307;
      sub_1DEEACA70(v217, v307, type metadata accessor for ReplicatorMessage.Handshake.Request);
      swift_storeEnumTagMultiPayload();
      sub_1DEEACA70(v226, v216, type metadata accessor for ReplicatorMessage.Handshake);
      v227 = v216;
      swift_storeEnumTagMultiPayload();
      sub_1DEE4F8C0(v224, v225);
      v190 = v336;
      sub_1DEE53BFC();
      v228 = v311;
      sub_1DEE17214(v221, v311, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v214(v228, 1, v317) != 1)
      {
        v229 = v310;
        (*(v316 + 56))(v310, 1, 1, v220);
        v230 = sub_1DEE5D178(v228);
        v231 = v301;
        if (v232)
        {
          v233 = v228;
          v234 = v289;
          sub_1DEEACA70(v233, v289, type metadata accessor for PairingRelationship);

          v235 = sub_1DEF8D4D8();
          v236 = sub_1DEF8DC98();

          if (os_log_type_enabled(v235, v236))
          {
            v237 = swift_slowAlloc();
            v238 = swift_slowAlloc();
            aBlock = v238;
            *v237 = 136446466;
            *(v237 + 4) = sub_1DEE12A5C(v190[66], v190[67], &aBlock);
            *(v237 + 12) = 2082;
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v239 = sub_1DEF8E2E8();
            v240 = v234;
            v241 = v239;
            v243 = v242;
            sub_1DEE273A0(v240, type metadata accessor for PairingRelationship);
            v244 = sub_1DEE12A5C(v241, v243, &aBlock);

            *(v237 + 14) = v244;
            _os_log_impl(&dword_1DEE0F000, v235, v236, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v237, 0x16u);
            swift_arrayDestroy();
            v196 = v313;
            MEMORY[0x1E12CCD70](v238, -1, -1);
            v227 = v309;
            MEMORY[0x1E12CCD70](v237, -1, -1);

            v245 = v297;
            v246 = v296;
            v229 = v310;
          }

          else
          {

            sub_1DEE273A0(v234, type metadata accessor for PairingRelationship);

            v245 = v297;
            v246 = v296;
            v229 = v310;
            v196 = v313;
          }
        }

        else
        {
          v247 = v334;
          sub_1DEE29904(v216, v230, v229, v301);
          v196 = v313;
          if (!v247)
          {
            sub_1DEE171B4(v229, &unk_1ECDE3E80, &unk_1DEF90970);
            sub_1DEE273A0(v228, type metadata accessor for PairingRelationship);
            (*(v296 + 56))(v231, 0, 1, v297);
            sub_1DEEAB218(v231, v287, type metadata accessor for Message);
            if (qword_1ECDE37E8 != -1)
            {
              goto LABEL_79;
            }

            goto LABEL_72;
          }

          v245 = v297;
          v246 = v296;
        }

        sub_1DEE171B4(v229, &unk_1ECDE3E80, &unk_1DEF90970);
        sub_1DEE273A0(v227, type metadata accessor for ReplicatorMessage);
        sub_1DEE273A0(v226, type metadata accessor for ReplicatorMessage.Handshake);
        sub_1DEE273A0(v196, type metadata accessor for ReplicatorMessage.Handshake.Request);
        sub_1DEE273A0(v315, type metadata accessor for SessionManager.Session);
        sub_1DEE273A0(v314, type metadata accessor for DeviceDescriptor);
        sub_1DEE273A0(v311, type metadata accessor for PairingRelationship);
        (*(v246 + 56))(v231, 1, 1, v245);
        sub_1DEE171B4(v231, &unk_1ECDE4E20, &unk_1DEF95B10);

        return;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  v84 = a1;
  v85 = v336;

  v86 = a1;
  v87 = sub_1DEF8D4D8();
  v88 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = isEscapingClosureAtFileLocation;
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    aBlock = v92;
    *v89 = 136446466;
    *(v89 + 4) = sub_1DEE12A5C(*(v85 + 528), *(v85 + 536), &aBlock);
    *(v89 + 12) = 2114;
    v93 = v84;
    v94 = _swift_stdlib_bridgeErrorToNSError();
    *(v89 + 14) = v94;
    *v91 = v94;
    _os_log_impl(&dword_1DEE0F000, v87, v88, "(%{public}s) Abandoning handshake request because prerequisites are not met: %{public}@", v89, 0x16u);
    sub_1DEE171B4(v91, &unk_1ECDE4880, &qword_1DEF93420);
    v95 = v91;
    isEscapingClosureAtFileLocation = v90;
    MEMORY[0x1E12CCD70](v95, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x1E12CCD70](v92, -1, -1);
    MEMORY[0x1E12CCD70](v89, -1, -1);
  }

  sub_1DEE7D6B8(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8));
}

void sub_1DEE7D6B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for PairingRelationship(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + 232);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  v17 = sub_1DEF8D7B8();
  (*(v11 + 8))(v14, v10);
  if (v17)
  {
    swift_beginAccess();
    v18 = *(v3 + 600);
    if (*(v18 + 16))
    {

      v19 = sub_1DEE13224(v39, v40);
      if (v20)
      {
        v37 = v3;
        v21 = *(*(v18 + 56) + 8 * v19);

        v35 = v21;
        v22 = *(v21 + 16);
        if (v22)
        {
          swift_beginAccess();
          v36 = v38 + 8;
          v23 = (v8 + 48);
          v24 = v35 + 40;
          do
          {
            v27 = *(v24 - 8);
            sub_1DEE29594(v37 + 192, &v41);
            v28 = v43;
            v29 = v44;
            __swift_project_boxed_opaque_existential_1(&v41, v43);
            v30 = *(v29 + 8);

            MetadataStoring.pairingRelationship(remoteDeviceID:)(v39, v40, v28, v30, v6);
            if ((*v23)(v6, 1, v7) == 1)
            {
              sub_1DEE171B4(v6, &qword_1ECDE3C18, &unk_1DEF94D20);
              __swift_destroy_boxed_opaque_existential_1(&v41);
              sub_1DEEAA8E8();
              v25 = swift_allocError();
              *v26 = 2;
              v41 = v25;
              v42 = 1;
              v27(&v41);
            }

            else
            {
              sub_1DEEAB218(v6, v38, type metadata accessor for PairingRelationship);
              __swift_destroy_boxed_opaque_existential_1(&v41);
              if (*(v36 + *(v7 + 32)) == 2)
              {
                v41 = 1;
                v42 = 0;
                v27(&v41);
              }

              else
              {
                sub_1DEEAA8E8();
                v31 = swift_allocError();
                *v32 = 2;
                v41 = v31;
                v42 = 1;
                v27(&v41);
              }

              sub_1DEE273A0(v38, type metadata accessor for PairingRelationship);
            }

            v24 += 16;
            --v22;
          }

          while (v22);
        }

        swift_beginAccess();
        v33 = v40;

        sub_1DEF32AA0(0, v39, v33);
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEE7DB50(uint64_t a1)
{
  v21[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - v3;
  v5 = type metadata accessor for SessionManager.Session(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 232);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1DEF8D7B8();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = *(v1 + 544);
    v18 = type metadata accessor for PairingRelationship(0);
    MEMORY[0x1EEE9AC00](v18);
    v21[-4] = v17;
    v21[-3] = v19;
    v21[-2] = v20;

    sub_1DEF8DD18();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_1DEE171B4(v4, &qword_1ECDE3D08, &unk_1DEF95E50);
    }

    else
    {
      sub_1DEEAB218(v4, v8, type metadata accessor for SessionManager.Session);
      sub_1DEE7F920(v8);
      return sub_1DEE273A0(v8, type metadata accessor for SessionManager.Session);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DEE7DE50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v129 = (v118 - v7);
  v8 = type metadata accessor for ZoneVersion(0);
  v131 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v132 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = v118 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v118 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v122 = v118 - v16;
  v17 = sub_1DEF8D788();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v1[29];
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17, v19);
  v23 = v22;
  v24 = sub_1DEF8D7B8();
  (*(v18 + 8))(v21, v17);
  if ((v24 & 1) == 0)
  {
    goto LABEL_72;
  }

  swift_beginAccess();
  v25 = v1[30];
  v119 = a1;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = sub_1DEF8E038();
    v125 = 0;
    v27 = 0;
    v28 = 0;
    v29 = v26 | 0x8000000000000000;
  }

  else
  {
    v30 = -1 << *(v25 + 32);
    v27 = ~v30;
    v31 = *(v25 + 64);
    v125 = v25 + 64;
    v32 = -v30;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v28 = v33 & v31;
    v29 = v25;
  }

  v121 = v14;
  v130 = v5;
  v118[2] = v25;
  swift_bridgeObjectRetain_n();
  v34 = 0;
  v118[1] = v27;
  v35 = (v27 + 64) >> 6;
  v120 = v1;
  v124 = v1 + 84;
  v133 = MEMORY[0x1E69E7CC8];
  v36 = v125;
  v123 = v35;
LABEL_9:
  v37 = v34;
  while ((v29 & 0x8000000000000000) != 0)
  {
    v44 = sub_1DEF8E0D8();
    if (!v44 || (v46 = v45, v137 = v44, type metadata accessor for Zone.ID(), swift_dynamicCast(), v42 = v134[0], v137 = v46, type metadata accessor for Replicator.WeakSource(), swift_dynamicCast(), v43 = v134[0], v34 = v37, v40 = v28, !v42))
    {
LABEL_41:
      sub_1DEE2774C(v29);

      v77 = v120;
      swift_beginAccess();
      sub_1DEE29594((v77 + 24), v134);
      v79 = v135;
      v78 = v136;
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v80 = (*(*(v78 + 8) + 24))(v119, v79);
      sub_1DEEAA768(v80, sub_1DEEA9D80);
      v82 = v81;

      __swift_destroy_boxed_opaque_existential_1(v134);
      v83 = 0;
      v84 = *(v82 + 64);
      v128 = v82;
      v85 = 1 << *(v82 + 32);
      v86 = -1;
      if (v85 < 64)
      {
        v86 = ~(-1 << v85);
      }

      v87 = v86 & v84;
      v88 = (v85 + 63) >> 6;
      while (1)
      {
        v89 = v130;
        if (!v87)
        {
          break;
        }

        v90 = v83;
LABEL_54:
        v93 = __clz(__rbit64(v87));
        v87 &= v87 - 1;
        v94 = v93 | (v90 << 6);
        v95 = *(*(v128 + 48) + 8 * v94);
        v96 = v127;
        sub_1DEEACA70(*(v128 + 56) + *(v131 + 72) * v94, v127, type metadata accessor for ZoneVersion);
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        v98 = *(v97 + 48);
        *v89 = v95;
        sub_1DEEAB218(v96, v89 + v98, type metadata accessor for ZoneVersion);
        (*(*(v97 - 8) + 56))(v89, 0, 1, v97);

        v92 = v90;
LABEL_55:
        v99 = v129;
        sub_1DEE1BA88(v89, v129, &qword_1ECDE3D10, &qword_1DEF91620);
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        if ((*(*(v100 - 8) + 48))(v99, 1, v100) == 1)
        {

          return v133;
        }

        v83 = v92;
        v101 = *v99;
        sub_1DEEAB218(v99 + *(v100 + 48), v132, type metadata accessor for ZoneVersion);
        v102 = v133;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v134[0] = v102;
        v105 = sub_1DEEAF20C(v101);
        v106 = v102[2];
        v107 = (v104 & 1) == 0;
        v108 = v106 + v107;
        if (__OFADD__(v106, v107))
        {
          goto LABEL_68;
        }

        v109 = v104;
        if (v133[3] >= v108)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DEEB8A3C();
          }
        }

        else
        {
          sub_1DEEB3A30(v108, isUniquelyReferenced_nonNull_native);
          v110 = sub_1DEEAF20C(v101);
          if ((v109 & 1) != (v111 & 1))
          {
            goto LABEL_74;
          }

          v105 = v110;
        }

        v133 = v134[0];
        if (v109)
        {
          sub_1DEE1B474(v132, v133[7] + *(v131 + 72) * v105, type metadata accessor for ZoneVersion);
        }

        else
        {
          v112 = v132;
          v113 = v133;
          v133[(v105 >> 6) + 8] |= 1 << v105;
          *(v113[6] + 8 * v105) = v101;
          sub_1DEEAB218(v112, v113[7] + *(v131 + 72) * v105, type metadata accessor for ZoneVersion);
          v114 = v113[2];
          v69 = __OFADD__(v114, 1);
          v115 = v114 + 1;
          if (v69)
          {
            goto LABEL_70;
          }

          v133[2] = v115;
        }
      }

      if (v88 <= v83 + 1)
      {
        v91 = v83 + 1;
      }

      else
      {
        v91 = v88;
      }

      v92 = v91 - 1;
      while (1)
      {
        v90 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v90 >= v88)
        {
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
          (*(*(v116 - 8) + 56))(v89, 1, 1, v116);
          v87 = 0;
          goto LABEL_55;
        }

        v87 = *(v82 + 64 + 8 * v90);
        ++v83;
        if (v87)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_20:
    v128 = v43;
    v126 = v40;
    v47 = v124;
    swift_beginAccess();
    v48 = *v47;
    if (!*(*v47 + 16))
    {
      goto LABEL_30;
    }

    v49 = v29;
    v51 = v42[4];
    v50 = v42[5];
    v52 = v42;
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    v53 = sub_1DEF8E7F8();
    v54 = -1 << *(v48 + 32);
    v55 = v53 & ~v54;
    if (((*(v48 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
    {
LABEL_29:

      v29 = v49;
      v35 = v123;
      v42 = v52;
LABEL_30:
      v59 = sub_1DEF8D3F8();
      v60 = v122;
      (*(*(v59 - 8) + 56))(v122, 1, 1, v59);
      v61 = v121;
      sub_1DEEAB218(v60, v121, type metadata accessor for ZoneVersion);

      v62 = v133;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v134[0] = v62;
      v64 = v42;
      v65 = sub_1DEEAF20C(v42);
      v67 = v62[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_71;
      }

      v71 = v66;
      if (v133[3] >= v70)
      {
        if ((v63 & 1) == 0)
        {
          v76 = v65;
          sub_1DEEB8A3C();
          v65 = v76;
          v35 = v123;
        }
      }

      else
      {
        sub_1DEEB3A30(v70, v63);
        v65 = sub_1DEEAF20C(v64);
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_74;
        }
      }

      v36 = v125;
      v133 = v134[0];
      if (v71)
      {
        sub_1DEE1B474(v61, v133[7] + *(v131 + 72) * v65, type metadata accessor for ZoneVersion);
      }

      else
      {
        v73 = v133;
        v133[(v65 >> 6) + 8] |= 1 << v65;
        *(v73[6] + 8 * v65) = v64;
        sub_1DEEAB218(v61, v73[7] + *(v131 + 72) * v65, type metadata accessor for ZoneVersion);

        v74 = v73[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v69)
        {
          goto LABEL_73;
        }

        v133[2] = v75;
      }

      v28 = v126;
      goto LABEL_9;
    }

    v56 = ~v54;
    while (1)
    {
      v57 = (*(v48 + 48) + 16 * v55);
      v58 = *v57 == v51 && v57[1] == v50;
      if (v58 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }

      v55 = (v55 + 1) & v56;
      if (((*(v48 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v37 = v34;
    v28 = v126;
    v29 = v49;
    v35 = v123;
    v36 = v125;
  }

  v38 = v37;
  v39 = v28;
  v34 = v37;
  if (v28)
  {
LABEL_16:
    v40 = (v39 - 1) & v39;
    v41 = (v34 << 9) | (8 * __clz(__rbit64(v39)));
    v42 = *(*(v29 + 48) + v41);
    v43 = *(*(v29 + 56) + v41);

    if (!v42)
    {
      goto LABEL_41;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v34 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v34 >= v35)
    {
      goto LABEL_41;
    }

    v39 = *(v36 + 8 * v34);
    ++v38;
    if (v39)
    {
      goto LABEL_16;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}