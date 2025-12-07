void sub_1E199D784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  MEMORY[0x1EEE9AC00](v5);
  v7 = aBlock - v6;
  ObjectType = swift_getObjectType();
  v9 = 1;
  (*(a2 + 40))(v26, 1, ObjectType, a2);
  v10 = v29 >> 60;
  if (v29 >> 60 != 2 && v10 != 7)
  {
    if (v10 != 8 || v30 || v29 != 0x8000000000000000 || v26[0] != 1 || (v12 = vorrq_s8(v27, v28), *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v26[1]))
    {
      v9 = 0;
    }
  }

  sub_1E139CEA8(v26);
  v13 = *(v2 + qword_1EE1E9688);
  if (v13 != 2 && ((v9 ^ v13) & 1) != 0)
  {
    *(v2 + qword_1EE1E9688) = v9;
    v14 = *(*v2 + 696);
    swift_beginAccess();
    v15 = sub_1E134FD1C(v2 + v14, v7, &qword_1ECEB24A0, &qword_1E1B48170);
    v16 = &v7[*(v5 + 36)];
    v17 = *v16;
    v18 = v16[1];
    MEMORY[0x1EEE9AC00](v15);
    aBlock[-4] = v7;
    aBlock[-3] = sub_1E199FD30;
    aBlock[-2] = 0;

    v19 = sub_1E1683A94(sub_1E19A1060, &aBlock[-6], v17, v18);
    sub_1E1308058(v7, &qword_1ECEB24A0, &qword_1E1B48170);
    v20 = *(v2 + *(*v2 + 688));
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v19;
    *(v21 + 32) = 65824;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1E19A1044;
    *(v22 + 24) = v21;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_122_1;
    v23 = _Block_copy(aBlock);

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

double sub_1E199DAF8(uint64_t *a1)
{
  if (*(*(*(v1 + qword_1EE216750) + 16) + 16))
  {
    v2 = *a1;
    v3 = a1[6];

    v4 = sub_1E1AF4B9C();

    if ((v4 & 1) != 0 && *(v1 + qword_1EE1E9628) == 1)
    {
      v6 = *(v1 + qword_1EE1E9610);
      if (v6 != 2 && (v6 & 1) != 0)
      {
        if (*(v1 + qword_1EE2169B8))
        {
          type metadata accessor for ProductDiffablePageContentPresenter(0);
          v7 = swift_dynamicCastClass();
          if (v7)
          {
            v8 = v3 >> 60;
            if (v3 >> 60) - 5 < 2 || v8 == 1 && (v2)
            {
              v9 = 0;
              v10 = 0;
            }

            else
            {
              v9 = !v8 && (v2 | 2) == 3;
              v10 = 1;
            }

            if (!*(v7 + qword_1EE1E7258))
            {
              v11 = *(v7 + qword_1EE216528);
              if (v9)
              {
                if (v11)
                {
                  return result;
                }
              }

              else if ((v10 | v11))
              {
                return result;
              }

              v12 = v7;
              v13 = swift_allocObject();
              swift_weakInit();

              sub_1E185E168(v14, v12, v13);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1E199DCD4(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7];
  if (*(v1 + qword_1EE1E9628) == 1)
  {
    v9 = *(v1 + qword_1EE1E9610);
    if (v9 != 2 && (v9 & 1) != 0)
    {
      v16 = *a1;
      v10 = *(a1 + 6);
      v11 = qword_1EE1E9648;
      swift_beginAccess();
      sub_1E134FD1C(v1 + v11, v8, &unk_1ECEBB780, &unk_1E1B029A0);
      v12 = sub_1E1AEFE6C();
      v13 = *(v12 - 8);
      v14 = (*(v13 + 48))(v8, 1, v12);
      sub_1E1308058(v8, &unk_1ECEBB780, &unk_1E1B029A0);
      if (v14 == 1 && ((v10 >> 60) - 5 < 2 || v10 >> 60 == 1 && (v16 & 1) != 0))
      {
        sub_1E1AEFE5C();
        (*(v13 + 56))(v5, 0, 1, v12);
        swift_beginAccess();
        sub_1E13619D8(v5, v1 + v11, &unk_1ECEBB780, &unk_1E1B029A0);
        swift_endAccess();
      }
    }
  }
}

void sub_1E199DEF8()
{
  v1 = v0;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  v197 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v198 = &v168 - v2;
  v189 = sub_1E1AF320C();
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v186 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1E1AF324C();
  v185 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v184 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1E1AF326C();
  v183 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v181 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v182 = &v168 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0, &qword_1E1B2AE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v200 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v193 = &v168 - v11;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v203 = *(v206 - 1);
  MEMORY[0x1EEE9AC00](v206);
  v199 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v168 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v168 - v16;
  v177 = sub_1E1AF01FC();
  v176 = *(v177 - 1);
  MEMORY[0x1EEE9AC00](v177);
  v18 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for ProductPageScrollPosition(0);
  MEMORY[0x1EEE9AC00](v190);
  v196 = (&v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = sub_1E1AEFEAC();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  MEMORY[0x1EEE9AC00](v201);
  v202 = (&v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v192 = &v168 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v191 = &v168 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v168 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v168 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v168 - v36;
  v38 = sub_1E1AEFE6C();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  if (*(v1 + qword_1EE1E9628) == 1)
  {
    v45 = qword_1EE1E9610;
    v46 = *(v1 + qword_1EE1E9610);
    if (v46 != 2 && (v46 & 1) != 0)
    {
      v47 = *(v1 + qword_1EE2169B8);
      if (v47)
      {
        v175 = v43;
        v174 = &v168 - v44;
        type metadata accessor for ProductDiffablePageContentPresenter(0);
        v48 = swift_dynamicCastClass();
        if (v48)
        {
          v170 = v18;
          v172 = v47;
          v171 = *(v48 + qword_1EE1E7258);
          v49 = qword_1EE1E9648;
          v50 = v175;
          swift_beginAccess();
          sub_1E134FD1C(v1 + v49, v37, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*(v39 + 48))(v37, 1, v50) == 1)
          {
            sub_1E1308058(v37, &unk_1ECEBB780, &unk_1E1B029A0);
            return;
          }

          v169 = v49;
          v51 = v175;
          (*(v39 + 32))(v174, v37, v175);

          sub_1E1AEFE5C();
          v173 = v1;
          sub_1E1AEFD9C();
          v52 = v173;
          v54 = v53;
          v55 = v41;
          v56 = *(v39 + 8);
          v56(v55, v51);
          if (v54 < *(v52 + qword_1EE1E9630) && v171)
          {
            v168 = v56;
            v57 = v52;
            *(v52 + v45) = 0;
            (*(v39 + 56))(v34, 1, 1, v175);
            v58 = v169;
            swift_beginAccess();
            sub_1E13619D8(v34, v52 + v58, &unk_1ECEBB780, &unk_1E1B029A0);
            swift_endAccess();
            if (*(v52 + qword_1EE1E9620))
            {

              v59 = OfferDisplayProperties.isArcadeOffer.getter();
              v57 = v173;
              LODWORD(v169) = v59;
            }

            else
            {
              LODWORD(v169) = 0;
            }

            v60 = v170;
            v61 = *(*v57 + 696);
            swift_beginAccess();
            v62 = aSimilaritems[0];
            v63 = aSimilaritems[1];
            v171 = v61;
            sub_1E134FD1C(v57 + v61, v31, &qword_1ECEB24A0, &qword_1E1B48170);
            *&v214 = v62;
            *(&v214 + 1) = v63;
            swift_bridgeObjectRetain_n();
            sub_1E1AF6F6C();
            sub_1E134FD1C(&v217, &v211, &unk_1ECEB5670, qword_1E1B03EC0);
            v170 = (v39 + 8);
            if (*(&v212 + 1))
            {
              sub_1E1308058(&v217, &unk_1ECEB5670, qword_1E1B03EC0);
              v214 = v211;
              v215 = v212;
              v216 = v213;
            }

            else
            {
              sub_1E1308058(&v211, &unk_1ECEB5670, qword_1E1B03EC0);
              v64 = v178;
              sub_1E1AEFE9C();
              v65 = sub_1E1AEFE7C();
              v57 = v173;
              v66 = v65;
              v68 = v67;
              (v179[1])(v64, v180);
              *&v211 = v66;
              *(&v211 + 1) = v68;
              sub_1E1AF6F6C();
              sub_1E1308058(&v217, &unk_1ECEB5670, qword_1E1B03EC0);
            }

            aBlock = v214;
            v208 = v215;
            v209 = v216;
            v69 = *&v31[*(v201 + 36) + 8];
            if (*(v69 + 16))
            {
              v70 = sub_1E15952E8(&aBlock);
              v71 = v196;
              if (v72)
              {
                v73 = *(*(v69 + 56) + 8 * v70);

                sub_1E138867C(&aBlock);
                sub_1E1308058(v31, &qword_1ECEB24A0, &qword_1E1B48170);
                v74 = MEMORY[0x1E69E7CC0];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v57 = v173;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v74 = sub_1E172CD18(0, *(v74 + 2) + 1, 1, v74);
                }

                v77 = *(v74 + 2);
                v76 = *(v74 + 3);
                if (v77 >= v76 >> 1)
                {
                  v74 = sub_1E172CD18((v76 > 1), v77 + 1, 1, v74);
                }

                *(v74 + 2) = v77 + 1;
                *&v74[8 * v77 + 32] = v73;
              }

              else
              {

                sub_1E138867C(&aBlock);
                sub_1E1308058(v31, &qword_1ECEB24A0, &qword_1E1B48170);
                v74 = MEMORY[0x1E69E7CC0];
                v57 = v173;
              }
            }

            else
            {

              sub_1E138867C(&aBlock);
              sub_1E1308058(v31, &qword_1ECEB24A0, &qword_1E1B48170);
              v74 = MEMORY[0x1E69E7CC0];
              v71 = v196;
            }

            if (v169)
            {
              v78 = v171;
              swift_beginAccess();
              sub_1E134FD1C(v57 + v78, v28, &qword_1ECEB24A0, &qword_1E1B48170);
              *&aBlock = 0xD000000000000011;
              *(&aBlock + 1) = 0x80000001E1B580D0;
              sub_1E1AF6F6C();
              DiffablePageContentIdentifier.init(_:)(&v217, &aBlock);
              v79 = *&v28[*(v201 + 36) + 8];
              if (*(v79 + 16))
              {
                v80 = sub_1E15952E8(&aBlock);
                if (v81)
                {
                  v82 = *(*(v79 + 56) + 8 * v80);
                }

                else
                {
                  v82 = 0;
                }
              }

              else
              {
                v82 = 0;
              }

              sub_1E138867C(&aBlock);
              sub_1E1308058(v28, &qword_1ECEB24A0, &qword_1E1B48170);
              MEMORY[0x1E68F8EA0](0, v82);
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC68, &unk_1E1B48408);
              v84 = *(v83 + 48);
              v85 = *(v83 + 64);
              (*(v176 + 32))(v71, v60, v177);
              *(v71 + v84) = 0;
              *(v71 + v85) = v74;
            }

            else
            {
              *v71 = v74;
            }

            swift_storeEnumTagMultiPayload();
            sub_1E1AF5BCC();
            v86 = v173;
            v87 = v171;
            swift_beginAccess();
            v190 = (v203 + 56);
            v177 = (v203 + 48);
            v89 = aSimilaritems[0];
            v88 = aSimilaritems[1];
            v90 = v191;
            sub_1E134FD1C(v86 + v87, v191, &qword_1ECEB24A0, &qword_1E1B48170);
            *&aBlock = v89;
            *(&aBlock + 1) = v88;
            swift_bridgeObjectRetain_n();
            sub_1E1AF6F6C();
            sub_1E134FD1C(&v217, &aBlock, &unk_1ECEB5670, qword_1E1B03EC0);
            if (*(&v208 + 1))
            {
              sub_1E1308058(&v217, &unk_1ECEB5670, qword_1E1B03EC0);
              v214 = aBlock;
              v215 = v208;
              v216 = v209;
            }

            else
            {
              sub_1E1308058(&aBlock, &unk_1ECEB5670, qword_1E1B03EC0);
              v91 = v178;
              sub_1E1AEFE9C();
              v92 = sub_1E1AEFE7C();
              v86 = v173;
              v93 = v92;
              v95 = v94;
              (v179[1])(v91, v180);
              *&aBlock = v93;
              *(&aBlock + 1) = v95;
              sub_1E1AF6F6C();
              sub_1E1308058(&v217, &unk_1ECEB5670, qword_1E1B03EC0);
            }

            v96 = v193;
            aBlock = v214;
            v208 = v215;
            v209 = v216;
            v97 = *&v90[*(v201 + 40)];
            if (*(v97 + 16) && (v98 = sub_1E15952E8(&aBlock), v86 = v173, (v99 & 1) != 0))
            {
              v217 = *(*(v97 + 56) + 8 * v98);
              type metadata accessor for Shelf(0);

              sub_1E1AF3DDC();

              sub_1E138867C(&aBlock);
              v100 = 0;
            }

            else
            {

              sub_1E138867C(&aBlock);
              v100 = 1;
            }

            v101 = v206;
            v193 = *v190;
            (v193)(v96, v100, 1, v206);
            sub_1E1308058(v90, &qword_1ECEB24A0, &qword_1E1B48170);
            v191 = *v177;
            if ((v191)(v96, 1, v101) == 1)
            {
              sub_1E1308058(v96, &qword_1ECEB75A0, &qword_1E1B2AE10);
              v102 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v103 = *(v203 + 32);
              (v103)(v194, v96, v101);
              v102 = MEMORY[0x1E69E7CC0];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
LABEL_100:
                v102 = sub_1E172F51C(0, *(v102 + 2) + 1, 1, v102);
              }

              v105 = *(v102 + 2);
              v104 = *(v102 + 3);
              if (v105 >= v104 >> 1)
              {
                v102 = sub_1E172F51C((v104 > 1), v105 + 1, 1, v102);
              }

              *(v102 + 2) = v105 + 1;
              (v103)(&v102[((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v105], v194, v206);
            }

            v106 = v171;
            swift_beginAccess();
            v107 = v86 + v106;
            v108 = v192;
            sub_1E134FD1C(v107, v192, &qword_1ECEB24A0, &qword_1E1B48170);
            sub_1E137F600(v108, v202, &qword_1ECEB24A0, &qword_1E1B48170);
            v109 = *(v102 + 2);
            v194 = v102;
            if (v109)
            {
              v110 = 0;
              v103 = 0;
              v192 = v203 + 16;
              v180 = v109;
              v176 = v109 - 1;
              v111 = MEMORY[0x1E69E7CC0];
              while (2)
              {
                v178 = v103;
                v179 = v111;
                v112 = v110;
                while (1)
                {
                  if (v112 >= *(v102 + 2))
                  {
                    __break(1u);
LABEL_95:
                    __break(1u);
LABEL_96:
                    __break(1u);
LABEL_97:
                    __break(1u);
LABEL_98:
                    __break(1u);
LABEL_99:
                    __break(1u);
                    goto LABEL_100;
                  }

                  v113 = v203;
                  v114 = &v102[((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v203 + 72) * v112];
                  v115 = *(v203 + 16);
                  v116 = v205;
                  v117 = v206;
                  v115(v205, v114, v206);
                  v118 = v199;
                  v119 = v115(v199, v116, v117);
                  MEMORY[0x1EEE9AC00](v119);
                  v120 = type metadata accessor for Shelf(0);
                  *(&v168 - 2) = v120;
                  v103 = sub_1E19A0FD8(&qword_1EE1E5478, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
                  *(&v168 - 1) = v103;
                  swift_getKeyPath(byte_1E1B48178, &v168 - 2);
                  sub_1E1AF3DAC();

                  v121 = *(v113 + 8);
                  v121(v118, v117);
                  v122 = *(v202 + *(v201 + 40));
                  if (*(v122 + 16))
                  {
                    v123 = sub_1E15952E8(&aBlock);
                    v86 = v200;
                    if (v124)
                    {
                      *&v214 = *(*(v122 + 56) + 8 * v123);

                      sub_1E1AF3DDC();
                      v125 = 0;
                    }

                    else
                    {
                      v125 = 1;
                    }
                  }

                  else
                  {
                    v125 = 1;
                    v86 = v200;
                  }

                  v126 = v206;
                  (v193)(v86, v125, 1, v206);
                  sub_1E138867C(&aBlock);
                  v127 = (v191)(v86, 1, v126);
                  if (v127 != 1)
                  {
                    break;
                  }

                  ++v112;
                  sub_1E1308058(v86, &qword_1ECEB75A0, &qword_1E1B2AE10);
                  v121(v205, v126);
                  v102 = v194;
                  if (v180 == v112)
                  {
                    v111 = v179;
                    goto LABEL_66;
                  }
                }

                v128 = MEMORY[0x1EEE9AC00](v127);
                *(&v168 - 2) = v120;
                *(&v168 - 1) = v103;
                swift_getKeyPath(byte_1E1B483D0, v128);
                sub_1E1AF3DAC();

                v129 = aBlock;
                v130 = (v121)(v86, v126);
                v86 = &v168;
                MEMORY[0x1EEE9AC00](v130);
                *(&v168 - 2) = v202;
                v103 = v178;
                v131 = sub_1E1683670(sub_1E19A0CDC, (&v168 - 4), v129);

                v121(v205, v126);
                v111 = v179;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v111 = sub_1E172F4F8(0, v111[2] + 1, 1, v111);
                }

                v133 = v111[2];
                v132 = v111[3];
                if (v133 >= v132 >> 1)
                {
                  v111 = sub_1E172F4F8((v132 > 1), v133 + 1, 1, v111);
                }

                v110 = v112 + 1;
                v111[2] = v133 + 1;
                v111[v133 + 4] = v131;
                v102 = v194;
                if (v176 != v112)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v111 = MEMORY[0x1E69E7CC0];
            }

LABEL_66:
            sub_1E1308058(v202, &qword_1ECEB24A0, &qword_1E1B48170);

            v134 = v111[2];
            v135 = MEMORY[0x1E69E7CC0];
            if (v134)
            {
              v86 = 0;
              v103 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                if (v86 >= v111[2])
                {
                  goto LABEL_95;
                }

                v102 = v111[v86 + 4];
                v136 = *(v102 + 2);
                v137 = *(v103 + 16);
                v138 = v137 + v136;
                if (__OFADD__(v137, v136))
                {
                  goto LABEL_96;
                }

                v139 = swift_isUniquelyReferenced_nonNull_native();
                if (v139 && v138 <= *(v103 + 24) >> 1)
                {
                  if (!*(v102 + 2))
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                  if (v137 <= v138)
                  {
                    v140 = v137 + v136;
                  }

                  else
                  {
                    v140 = v137;
                  }

                  v103 = sub_1E172E29C(v139, v140, 1, v103);
                  if (!*(v102 + 2))
                  {
LABEL_68:

                    if (v136)
                    {
                      goto LABEL_97;
                    }

                    goto LABEL_69;
                  }
                }

                if ((*(v103 + 24) >> 1) - *(v103 + 16) < v136)
                {
                  goto LABEL_98;
                }

                swift_arrayInitWithCopy();

                if (v136)
                {
                  v141 = *(v103 + 16);
                  v142 = __OFADD__(v141, v136);
                  v143 = v141 + v136;
                  if (v142)
                  {
                    goto LABEL_99;
                  }

                  *(v103 + 16) = v143;
                }

LABEL_69:
                if (v134 == ++v86)
                {
                  goto LABEL_85;
                }
              }
            }

            v103 = MEMORY[0x1E69E7CC0];
LABEL_85:

            v144 = *(v103 + 16);
            if (v144)
            {
              *&v214 = v135;
              sub_1E135C74C(0, v144, 0);
              v145 = v214;
              v206 = *(v197 + 16);
              v146 = v103 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
              v205 = *(v197 + 72);
              v147 = (v197 + 8);
              do
              {
                v148 = v198;
                v149 = v204;
                (v206)(v198, v146, v204);
                sub_1E1AF3DBC();
                (*v147)(v148, v149);
                *&v214 = v145;
                v151 = *(v145 + 16);
                v150 = *(v145 + 24);
                if (v151 >= v150 >> 1)
                {
                  sub_1E135C74C((v150 > 1), v151 + 1, 1);
                }

                v152 = *(&v208 + 1);
                v153 = v209;
                v154 = __swift_mutable_project_boxed_opaque_existential_1(&aBlock, *(&v208 + 1));
                v155 = MEMORY[0x1EEE9AC00](v154);
                v157 = &v168 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v158 + 16))(v157, v155);
                sub_1E19A0830(v151, v157, &v214, v152, v153);
                __swift_destroy_boxed_opaque_existential_1(&aBlock);
                v145 = v214;
                v146 += v205;
                --v144;
              }

              while (v144);
            }

            else
            {

              v145 = MEMORY[0x1E69E7CC0];
            }

            sub_1E1361A80();
            v159 = sub_1E1AF68EC();
            v160 = v181;
            sub_1E1AF325C();
            v161 = v182;
            sub_1E1AF32DC();
            v206 = *(v183 + 8);
            (v206)(v160, v195);
            v162 = swift_allocObject();
            swift_weakInit();
            v163 = swift_allocObject();
            *(v163 + 16) = v162;
            *(v163 + 24) = v145;
            v209 = sub_1E19A0CF8;
            v210 = v163;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v208 = sub_1E1302D64;
            *(&v208 + 1) = &block_descriptor_108;
            v164 = _Block_copy(&aBlock);

            v165 = v184;
            sub_1E1AF322C();
            *&aBlock = MEMORY[0x1E69E7CC0];
            sub_1E19A0FD8(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
            sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
            v166 = v186;
            v167 = v189;
            sub_1E1AF6EEC();
            MEMORY[0x1E68FF5E0](v161, v165, v166, v164);
            _Block_release(v164);

            (*(v188 + 8))(v166, v167);
            (*(v185 + 8))(v165, v187);
            (v206)(v161, v195);
            sub_1E19A0D00(v196);
            v168(v174, v175);
          }

          else
          {
            v56(v174, v175);
          }
        }
      }
    }
  }
}

uint64_t sub_1E199FC74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  sub_1E1AF3DBC();

  if (Shelf.ContentType.rawValue.getter() == 0xD000000000000010 && 0x80000001E1B57D10 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E1AF74AC();
  }

  return v1 & 1;
}

uint64_t sub_1E199FD30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  sub_1E1AF3DBC();

  if (Shelf.ContentType.rawValue.getter() == 0x6F6D6F7250707061 && v0 == 0xEC0000006E6F6974)
  {

    v1 = 1;
  }

  else
  {
    v1 = sub_1E1AF74AC();
  }

  return v1 & 1;
}

uint64_t sub_1E199FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E199FE14, 0, 0);
}

uint64_t sub_1E199FE14()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 64) + qword_1EE216630 + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = *v1;
  *(v0 + 32) = *v1;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v2 + 80);
  sub_1E16196E4(v0 + 16, v0 + 48);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1E199FF90;

  return v10(v0 + 32, v4, v5, v6, ObjectType, v2);
}

uint64_t sub_1E199FF90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1E19A00A0(void *a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    sub_1E199DEF8();
    goto LABEL_8;
  }

  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
  if ((swift_dynamicCast() & 1) != 0 && (v6 & 1) == 0)
  {

    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EE1E9610) = 0;
LABEL_8:
  }
}

double sub_1E19A0184(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_1EE2169B8);

    if (v3)
    {
      type metadata accessor for ProductDiffablePageContentPresenter(0);
      if (swift_dynamicCastClass())
      {
        sub_1E185BFC8(v4);
      }
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E1AF5BCC();
  }

  return result;
}

Swift::Void __swiftcall ProductDiffablePagePresenter.impressionsTrackerDidRecordFastImpression()()
{
  v1 = *(v0 + qword_1EE1E9670);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_1E137A684;
      v9[5] = v4;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1E1367148;
      v9[3] = &block_descriptor_36_1;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x1E695DA28]];

      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_1E19A0460()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1E9650));
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1D6470));

  sub_1E19A090C(*(v0 + qword_1EE1E9660), *(v0 + qword_1EE1E9660 + 8), *(v0 + qword_1EE1E9660 + 16), *(v0 + qword_1EE1E9660 + 24), *(v0 + qword_1EE1E9660 + 32), *(v0 + qword_1EE1E9660 + 40), *(v0 + qword_1EE1E9660 + 48));

  sub_1E1308058(v0 + qword_1EE1E9648, &unk_1ECEBB780, &unk_1E1B029A0);

  v1 = *(v0 + qword_1EE1E9668);
  v2 = *(v0 + qword_1EE1E9668 + 8);
  v3 = *(v0 + qword_1EE1E9668 + 16);
  v4 = *(v0 + qword_1EE1E9668 + 24);
  v5 = *(v0 + qword_1EE1E9668 + 32);
  v6 = *(v0 + qword_1EE1E9668 + 40);

  sub_1E13DED78(v1, v2, v3, v4, v5, v6);
}

uint64_t ProductDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DBC44();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1E9650));
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1D6470));

  sub_1E19A090C(*(v0 + qword_1EE1E9660), *(v0 + qword_1EE1E9660 + 8), *(v0 + qword_1EE1E9660 + 16), *(v0 + qword_1EE1E9660 + 24), *(v0 + qword_1EE1E9660 + 32), *(v0 + qword_1EE1E9660 + 40), *(v0 + qword_1EE1E9660 + 48));

  sub_1E1308058(v0 + qword_1EE1E9648, &unk_1ECEBB780, &unk_1E1B029A0);

  sub_1E13DED78(*(v0 + qword_1EE1E9668), *(v0 + qword_1EE1E9668 + 8), *(v0 + qword_1EE1E9668 + 16), *(v0 + qword_1EE1E9668 + 24), *(v0 + qword_1EE1E9668 + 32), *(v0 + qword_1EE1E9668 + 40));
  return v0;
}

uint64_t ProductDiffablePagePresenter.__deallocating_deinit()
{
  ProductDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E19A0830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E1361B28(&v12, v10 + 40 * a1 + 32);
}

double sub_1E19A090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E19A0960()
{
  result = qword_1ECEBBC60;
  if (!qword_1ECEBBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBC60);
  }

  return result;
}

void sub_1E19A09D4(uint64_t a1)
{
  sub_1E19A0A48();
  if (v1 <= 0x3F)
  {
    sub_1E19A0A90(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E19A0A48()
{
  if (!qword_1EE1D2620)
  {
    sub_1E19320E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2620);
    }
  }
}

void sub_1E19A0A90(uint64_t a1)
{
  if (!qword_1EE1E22F0)
  {
    sub_1E1AF01FC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3080, &unk_1E1B39170);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE1E22F0);
    }
  }
}

void sub_1E19A0B38(uint64_t a1)
{
  sub_1E13A8B64(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1E19A0D00(uint64_t a1)
{
  v2 = type metadata accessor for ProductPageScrollPosition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E19A0D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5D8;

  return sub_1E199FDF4(a1, v4, v5, v6, (v1 + 5));
}

double sub_1E19A0E3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E19A0E98(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 55) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1856EFC(a1, v1 + v4, (v1 + v6), v9, v10, v11);
}

uint64_t objectdestroy_144Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E19A0FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Resize.init(_:size:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v27 = a1;
  v28 = a2;
  v7 = sub_1E1AF1B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  sub_1E1300B24(a1, v29);
  v20 = MEMORY[0x1E69E7DE0];
  v21 = MEMORY[0x1E69AB858];
  *(v19 + 3) = MEMORY[0x1E69E7DE0];
  *(v19 + 4) = v21;
  *v19 = a3;
  v22 = *MEMORY[0x1E69ABB00];
  v23 = *(v8 + 104);
  v23(v19, v22, v7);
  *(v16 + 3) = v20;
  *(v16 + 4) = v21;
  *v16 = a4;
  v23(v16, v22, v7);
  v24 = *MEMORY[0x1E69ABB08];
  v23(v13, v24, v7);
  v23(v10, v24, v7);
  sub_1E1AF1BBC();
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

void sub_1E19A12B0(uint64_t a1, double a2)
{
  v32 = sub_1E1AEF59C();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v30 = v6;
    v25 = v2;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1E135C830(0, v7, 0);
    v8 = v35;
    v9 = a1 + 64;
    v10 = sub_1E1AF6EFC();
    v11 = 0;
    v34 = *(a1 + 36);
    v28 = a1 + 64;
    v29 = v4 + 32;
    v26 = a1 + 72;
    v27 = v7;
    v31 = v4;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v34 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v33 = v11;
      v14 = a1;

      v15 = v30;
      sub_1E1AEF56C();

      v35 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1E135C830((v16 > 1), v17 + 1, 1);
        v8 = v35;
      }

      *(v8 + 16) = v17 + 1;
      (*(v31 + 32))(v8 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
      v12 = 1 << *(v14 + 32);
      if (v10 >= v12)
      {
        goto LABEL_25;
      }

      v9 = v28;
      v18 = *(v28 + 8 * v13);
      if ((v18 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      a1 = v14;
      if (v34 != *(v14 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v13 << 6;
        v21 = v13 + 1;
        v22 = (v26 + 8 * v13);
        while (v21 < (v12 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1E142EA30(v10, v34, 0);
            v12 = __clz(__rbit64(v23)) + v20;
            goto LABEL_20;
          }
        }

        sub_1E142EA30(v10, v34, 0);
LABEL_20:
        a1 = v14;
      }

      v11 = v33 + 1;
      v10 = v12;
      if (v33 + 1 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t HttpTemplateAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v140 = a2;
  v134 = v3;
  v121 = *v3;
  v5 = sub_1E1AF39DC();
  v135 = *(v5 - 8);
  v136 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v131 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v133 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v109 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v109 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v109 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v109 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v123 = &v109 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v119 = &v109 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v118 = &v109 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v109 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v109 - v37;
  v39 = sub_1E1AEFCCC();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v43 = v39;
  v130 = v17;
  v46 = *(v17 + 8);
  v44 = v17 + 8;
  v45 = v46;
  v47 = v38;
  v48 = v40;
  v138 = v16;
  (v46)(v47, v16);
  if ((*(v40 + 48))(v15, 1, v43) == 1)
  {
    sub_1E1308058(v15, &unk_1ECEB4B60, &unk_1E1B02620);
    v49 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v50 = 7107189;
    v51 = v121;
    v50[1] = 0xE300000000000000;
    v50[2] = v51;
    (*(*(v49 - 8) + 104))(v50, *MEMORY[0x1E69AB690], v49);
    swift_willThrow();
    (*(v135 + 8))(v140, v136);
    (v45)(v137, v138);
    type metadata accessor for HttpTemplateAction(0);
    swift_deallocPartialClassInstance();
    return v16;
  }

  (*(v40 + 32))(v42, v15, v43);
  v52 = *(v40 + 16);
  v53 = v134;
  v117 = v43;
  v52(&v134[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_url], v42, v43);
  sub_1E1AF381C();
  sub_1E18EEFB0();
  sub_1E1AF369C();
  v114 = v35;
  v54 = v138;
  (v45)(v35, v138);
  v53[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_method] = v139;
  v55 = v118;
  sub_1E1AF381C();
  v56 = v122;
  sub_1E1AF368C();
  v118 = v45;
  (v45)(v55, v54);
  v57 = sub_1E1AF40DC();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  v112 = v58 + 48;
  v111 = v59;
  v60 = v59(v56, 1, v57);
  v61 = v134;
  v116 = v48;
  v115 = v42;
  v120 = v44;
  v113 = v57;
  v110 = v58;
  if (v60 == 1)
  {
    sub_1E1308058(v56, &qword_1ECEB2B28, qword_1E1B03BE0);
    v62 = v135;
  }

  else
  {
    v63 = sub_1E1AF40BC();
    (*(v58 + 8))(v56, v57);
    v62 = v135;
    if (v63)
    {
      goto LABEL_7;
    }
  }

  v63 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);

LABEL_7:
  *&v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_headers] = v63;
  v64 = v114;
  sub_1E1AF381C();
  v65 = *(v62 + 16);
  v66 = v133;
  v67 = v140;
  v68 = v136;
  v65(v133, v140, v136);
  sub_1E19A61FC();
  sub_1E1AF464C();
  *&v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_jsonBody] = v139;
  sub_1E1AF381C();
  v121 = v65;
  v122 = (v62 + 16);
  v65(v66, v67, v68);
  sub_1E19A6250();
  sub_1E1AF464C();
  *&v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_formBody] = v139;
  v69 = v119;
  sub_1E1AF381C();
  v70 = v124;
  sub_1E1AF368C();
  v71 = v69;
  v72 = v118;
  v73 = v120;
  (v118)(v71, v138);
  v74 = v113;
  if (v111(v70, 1, v113) == 1)
  {
    sub_1E1308058(v70, &qword_1ECEB2B28, qword_1E1B03BE0);
LABEL_10:
    v75 = sub_1E159D268(MEMORY[0x1E69E7CC0]);

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  v75 = sub_1E1AF40BC();
  (*(v110 + 8))(v70, v74);
  if (!v75)
  {
    goto LABEL_10;
  }

LABEL_11:
  *&v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_dictionaryBody] = v75;
  v76 = v137;
  sub_1E1AF381C();
  v121(v133, v140, v136);
  sub_1E19A62A4();
  *&v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_parameters] = sub_1E1AF630C();
  v77 = v123;
  sub_1E1AF381C();
  v78 = sub_1E1AF370C();
  v79 = v138;
  v72(v77, v138);
  v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_isStoreRequest] = v78 & 1;
  v80 = v125;
  sub_1E1AF381C();
  v81 = sub_1E1AF370C();
  v72(v80, v79);
  v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_needsAuthentication] = v81 & 1;
  v82 = v126;
  sub_1E1AF381C();
  v83 = sub_1E1AF370C();
  v72(v82, v79);
  v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_needsMediaToken] = v83 & 1;
  v84 = v127;
  sub_1E1AF381C();
  v85 = sub_1E1AF36EC();
  v87 = v86;
  v72(v84, v79);
  if (v87)
  {
    v88 = 0;
  }

  else
  {
    v88 = v85;
  }

  *&v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_retryCount] = v88;
  v89 = v128;
  sub_1E1AF381C();
  v90 = sub_1E1AF370C();
  v72(v89, v79);
  v61[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_disableCache] = v90 & 1;
  type metadata accessor for Action(0);
  sub_1E1AF381C();
  v91 = v72;
  v92 = v61;
  v16 = v73;
  v93 = v140;
  v94 = static Action.tryToMakeInstance(byDeserializing:using:)(v64, v140);
  v91(v64, v79);
  *&v92[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_successAction] = v94;
  sub_1E1AF381C();
  v95 = static Action.tryToMakeInstance(byDeserializing:using:)(v64, v93);
  v91(v64, v79);
  *&v92[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_failureAction] = v95;
  sub_1E1AF381C();
  v96 = sub_1E1AF37CC();
  v98 = v97;
  v99 = v64;
  v100 = v76;
  v101 = v136;
  v91(v99, v79);
  v102 = &v92[OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_message];
  *v102 = v96;
  v102[1] = v98;
  v103 = v140;
  v104 = v129;
  (*(v130 + 16))(v129, v100, v79);
  v105 = v131;
  v121(v131, v103, v101);
  v106 = v132;
  v107 = Action.init(deserializing:using:)(v104, v105);
  if (!v106)
  {
    v16 = v107;
  }

  (*(v135 + 8))(v103, v101);
  v91(v100, v138);
  (*(v116 + 8))(v115, v117);
  return v16;
}

uint64_t type metadata accessor for HttpTemplateAction(uint64_t a1)
{
  result = qword_1EE1EFC88;
  if (!qword_1EE1EFC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HttpTemplateAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_url;
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

void *sub_1E19A2718(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v56 = a4;
  v58 = a3;
  v55 = a2;
  v8 = sub_1E1AF3E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E1AEFCCC();
  v69 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v61 = *a1;
  v65 = v61;
  v66 = v17;
  v60 = v17;
  v57 = v18;
  v67 = v18;
  v68 = v19;
  v59 = v6;
  sub_1E19A4AA8(v6 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_url, &v53 - v15);
  if (!v5)
  {
    v54 = 0;
    v20 = v62;
    (*(v69 + 16))(v13, v16, v62);
    (v9[2])(v11, v56, v8);
    type metadata accessor for HttpAction(0);
    swift_allocObject();
    v9 = HttpAction.init(url:presentationStyle:actionMetrics:)(v13, 0, v11);
    v21 = v59;
    v22 = *(v59 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_method);
    v23 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_method;
    swift_beginAccess();
    *(v9 + v23) = v22;
    v65 = v61;
    v66 = v60;
    v24 = v57;
    v67 = v57;
    v68 = v19;
    v25 = sub_1E19A5354(*(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_headers));
    v26 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_headers;
    swift_beginAccess();
    *(v9 + v26) = v25;

    v27 = v58;
    if (v58)
    {
      (*(v69 + 8))(v16, v20);
      v28 = (v9 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
      swift_beginAccess();
      *v28 = v55;
      v28[1] = v27;
    }

    else
    {
      v43 = v69;
      if (*(v24 + 16))
      {
        v65 = v61;
        v66 = v60;
        v67 = v24;
        v68 = v19;
        v44 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_jsonBody + 8);
        v63 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_jsonBody);
        v64 = v44;

        v45 = v54;
        sub_1E19A5594(&v63);
      }

      else
      {
        v65 = v61;
        v66 = v60;
        v67 = v24;
        v68 = v19;
        v48 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_formBody + 8);
        v63 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_formBody);
        v64 = v48;

        v45 = v54;
        v46 = sub_1E19A58D4(&v63);
      }

      v49 = (v43 + 8);
      v54 = v45;
      if (v45)
      {

        (*v49)(v16, v62);
        return v9;
      }

      v50 = v46;
      v51 = v47;

      (*v49)(v16, v62);
      v52 = (v9 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
      swift_beginAccess();
      *v52 = v50;
      v52[1] = v51;
    }

    v29 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_isStoreRequest);
    v30 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
    swift_beginAccess();
    *(v9 + v30) = v29;
    v31 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_needsAuthentication);
    v32 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication;
    swift_beginAccess();
    *(v9 + v32) = v31;
    v33 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_needsMediaToken);
    v34 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken;
    swift_beginAccess();
    *(v9 + v34) = v33;
    v35 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_retryCount);
    v36 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount;
    swift_beginAccess();
    *(v9 + v36) = v35;
    LOBYTE(v35) = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_disableCache);
    v37 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache;
    swift_beginAccess();
    *(v9 + v37) = v35;
    v38 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_successAction);
    v39 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_successAction;
    swift_beginAccess();
    *(v9 + v39) = v38;

    v40 = *(v21 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_failureAction);
    v41 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_failureAction;
    swift_beginAccess();
    *(v9 + v41) = v40;
  }

  return v9;
}

AppStoreKit::HttpTemplateSubstitutions __swiftcall HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)(Swift::OpaquePointer urlQuery, Swift::OpaquePointer headers, Swift::OpaquePointer jsonBody, Swift::OpaquePointer formBody)
{
  v9 = v4;
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  sub_1E13017E4(v10);
  sub_1E1303A74(v10);
  sub_1E13017E4(v10);

  v9->_rawValue = urlQuery._rawValue;
  v9[1]._rawValue = headers._rawValue;
  v9[2]._rawValue = jsonBody._rawValue;
  v9[3]._rawValue = formBody._rawValue;
  result.formBody._rawValue = v14;
  result.jsonBody._rawValue = v13;
  result.headers._rawValue = v12;
  result.urlQuery._rawValue = v11;
  return result;
}

Swift::Void __swiftcall HttpTemplateSubstitutions.setParameter(value:for:)(Swift::String value, AppStoreKit::HttpTemplateParameter *a2)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v6 = a2->key._countAndFlagsBits;
  v5 = a2->key._object;
  if (a2->target > AppStoreKit_HttpTemplateParameter_Target_header)
  {
    if (a2->target == AppStoreKit_HttpTemplateParameter_Target_jsonBody)
    {
      v11 = MEMORY[0x1E69E6158];
      v10 = value;

      sub_1E138692C(&v10, v6, v5);
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10._countAndFlagsBits = v2[3];
      sub_1E1598D2C(countAndFlagsBits, object, v6, v5, isUniquelyReferenced_nonNull_native);

      v2[3] = v10._countAndFlagsBits;
    }
  }

  else if (a2->target)
  {

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v10._countAndFlagsBits = v2[1];
    sub_1E1598D2C(countAndFlagsBits, object, v6, v5, v8);

    v2[1] = v10._countAndFlagsBits;
  }

  else
  {

    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10._countAndFlagsBits = *v2;
    sub_1E1598D2C(countAndFlagsBits, object, v6, v5, v7);

    *v2 = v10._countAndFlagsBits;
  }
}

void sub_1E19A2F44(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
    v7 = v2;
    v15 = a1;
LABEL_17:
    v17 = &v3[2 * v4];
    v19 = *v17;
    v18 = v17[1];
    __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);

    v20 = sub_1E1AF748C();
    *&v26[0] = v19;
    *(&v26[0] + 1) = v18;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v21 = *(a2 + 16);

  v7 = v2;
  v8 = 0;
  v9 = (a2 + 40);
  while (v5 != v8)
  {
    if (v8 >= *v3)
    {
      goto LABEL_20;
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    *&v24 = v13;
    *(&v24 + 1) = *v9;
    swift_bridgeObjectRetain_n();
    v14 = [v7 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_1E1AF6EBC();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_1E19A634C();
      if (swift_dynamicCast())
      {

        v7 = v23;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1E1308058(v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v26[0] = v13;
    *(&v26[0] + 1) = v12;
    v11 = v10;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v7 = v11;
LABEL_6:
    ++v8;
    v9 += 2;
    if (v5 == v8)
    {

      v4 = v21;
      v15 = a1;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t HttpTemplateError.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

NSMutableDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HttpTemplateJsonBody.makeMutableDictionary()()
{
  v17[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1E1AF5E5C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF5E4C();
  v4 = sub_1E1AF5E0C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    sub_1E19A62F8();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = objc_opt_self();
    v10 = sub_1E1AEFD2C();
    v16[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:1 error:v16];

    v12 = v16[0];
    if (v11)
    {
      sub_1E1AF6EBC();
      swift_unknownObjectRelease();
      sub_1E137A5C4(v17, v16);
      sub_1E19A634C();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E1337F64(v4, v6);
        return v15;
      }

      else
      {
        sub_1E19A62F8();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        sub_1E1337F64(v4, v6);
        return __swift_destroy_boxed_opaque_existential_1(v17);
      }
    }

    else
    {
      v13 = v12;
      sub_1E1AEFB2C();

      swift_willThrow();
      return sub_1E1337F64(v4, v6);
    }
  }
}

unint64_t HttpTemplateJsonBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E1AF6FEC();

  MEMORY[0x1E68FECA0](v1, v2);
  return 0xD000000000000014;
}

unint64_t sub_1E19A3578()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E1AF6FEC();

  MEMORY[0x1E68FECA0](v1, v2);
  return 0xD000000000000014;
}

uint64_t sub_1E19A3614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1E1AF37CC();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_1E1AF39DC();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_1E1AF380C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a4 = v10;
    a4[1] = v11;
  }

  else
  {
    v15 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v16 = MEMORY[0x1E69E7CC0];
    *v17 = a3;
    v17[1] = v16;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69AB698], v15);
    swift_willThrow();
    v18 = sub_1E1AF39DC();
    (*(*(v18 - 8) + 8))(a2, v18);
    v19 = sub_1E1AF380C();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  return result;
}

void *HttpTemplateFormBody.makeDictionary()()
{
  sub_1E13B8AA4();
  v0 = sub_1E1AF6DCC();
  v1 = v0;
  v33 = *(v0 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0 + 40;
    v4 = MEMORY[0x1E69E7CC8];
    v32 = v0;
    while (v2 < *(v1 + 16))
    {

      v6 = sub_1E1AF6DCC();
      if (v6[2] < 2uLL)
      {

        sub_1E19A62F8();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();

        return v4;
      }

      v7 = v6[4];
      v8 = v6[5];

      v9 = sub_1E1AF6E4C();
      v11 = v10;

      if (v11)
      {
        v34 = v9;
        v35 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_1E13018F8(v7, v8);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_28;
        }

        v18 = v13;
        if (v4[3] >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E1415E90();
          }
        }

        else
        {
          sub_1E1688F9C(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_1E13018F8(v7, v8);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_30;
          }

          v14 = v19;
        }

        v1 = v32;
        v24 = v4;
        if (v18)
        {
          v5 = (v4[7] + 16 * v14);
          *v5 = v34;
          v5[1] = v35;
        }

        else
        {
          v4[(v14 >> 6) + 8] |= 1 << v14;
          v25 = (v4[6] + 16 * v14);
          *v25 = v7;
          v25[1] = v8;
          v26 = (v4[7] + 16 * v14);
          *v26 = v34;
          v26[1] = v35;
          v27 = v4[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_29;
          }

          v4[2] = v29;
        }
      }

      else
      {
        v21 = sub_1E13018F8(v7, v8);
        v23 = v22;

        if (v23)
        {
          v24 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1E1415E90();
            v24 = v4;
          }

          sub_1E14132F4(v21, v24);

          v1 = v32;
        }

        else
        {

          v24 = v4;
          v1 = v32;
        }
      }

      ++v2;
      v3 += 16;
      v4 = v24;
      if (v33 == v2)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_1E1AF757C();
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC8];
LABEL_24:

    return v24;
  }

  return result;
}

unint64_t HttpTemplateFormBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E1AF6FEC();

  MEMORY[0x1E68FECA0](v1, v2);
  return 0xD000000000000014;
}

unint64_t sub_1E19A3C58()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E1AF6FEC();

  MEMORY[0x1E68FECA0](v1, v2);
  return 0xD000000000000014;
}

AppStoreKit::HttpTemplateParameter::Target_optional __swiftcall HttpTemplateParameter.Target.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HttpTemplateParameter.Target.rawValue.getter()
{
  v1 = 0x79726575516C7275;
  v2 = 0x79646F426E6F736ALL;
  if (*v0 != 2)
  {
    v2 = 0x79646F426D726F66;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E19A3DB4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E19A3E74(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E19A3F20(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E19A3FE8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79726575516C7275;
  v4 = 0x79646F426E6F736ALL;
  if (*v1 != 2)
  {
    v4 = 0x79646F426D726F66;
  }

  if (*v1)
  {
    v3 = 0x726564616568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

AppStoreKit::HttpTemplateParameter::InputType_optional __swiftcall HttpTemplateParameter.InputType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HttpTemplateParameter.InputType.rawValue.getter()
{
  v1 = 1954047348;
  v2 = 0x6D754E656E6F6870;
  if (*v0 != 2)
  {
    v2 = 0x506C616D69636564;
  }

  if (*v0)
  {
    v1 = 0x6C69616D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E19A4148()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E19A420C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E19A42BC(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E19A4388(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1954047348;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x506C616D69636564;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6C69616D65;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void __swiftcall HttpTemplateParameter.init(key:target:inputType:title:isRequired:maximumLength:)(AppStoreKit::HttpTemplateParameter *__return_ptr retstr, Swift::String key, AppStoreKit::HttpTemplateParameter::Target target, AppStoreKit::HttpTemplateParameter::InputType inputType, Swift::String_optional title, Swift::Bool isRequired, Swift::Int_optional maximumLength)
{
  v7 = *target;
  v8 = *inputType;
  retstr->key = key;
  retstr->target = v7;
  retstr->inputType = v8;
  retstr->title = title;
  retstr->isRequired = isRequired;
  *(&retstr->maximumLength.value + 7) = maximumLength.value;
  LOBYTE(retstr[1].key._countAndFlagsBits) = maximumLength.is_nil;
}

uint64_t HttpTemplateParameter.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v40 = a2;
  v4 = 7955819;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = 0xE300000000000000;
  sub_1E1AF381C();
  v37 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v13, v5);
  if (v16)
  {
    v39 = v16;
    v4 = 0x746567726174;
    sub_1E1AF381C();
    sub_1E19A6398();
    sub_1E1AF36DC();
    v17(v10, v5);
    v18 = v42;
    if (v42 == 4)
    {

      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE900000000000065;
      sub_1E1AF381C();
      sub_1E19A63EC();
      sub_1E1AF36DC();
      v17(v10, v5);
      v19 = v41;
      if (v41 != 4)
      {
        sub_1E1AF381C();
        v24 = sub_1E1AF37CC();
        v34 = v25;
        v35 = v24;
        v17(v10, v5);
        v26 = v36;
        sub_1E1AF381C();
        v27 = sub_1E1AF370C();
        v17(v26, v5);
        LODWORD(v36) = v27 & 1;
        sub_1E1AF381C();
        v28 = sub_1E1AF36EC();
        LOBYTE(v26) = v29;
        v30 = sub_1E1AF39DC();
        (*(*(v30 - 8) + 8))(v40, v30);
        v17(a1, v5);
        result = (v17)(v10, v5);
        v31 = v38;
        v32 = v39;
        *v38 = v37;
        v31[1] = v32;
        *(v31 + 16) = v18;
        *(v31 + 17) = v19;
        v33 = v34;
        v31[3] = v35;
        v31[4] = v33;
        *(v31 + 40) = v36;
        v31[6] = v28;
        *(v31 + 56) = v26 & 1;
        return result;
      }

      v4 = 0x7059547475706E69;
    }
  }

  v20 = sub_1E1AF5A7C();
  sub_1E1380704();
  swift_allocError();
  *v21 = v4;
  v21[1] = v14;
  v21[2] = &type metadata for HttpTemplateParameter;
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E69AB690], v20);
  swift_willThrow();
  v22 = sub_1E1AF39DC();
  (*(*(v22 - 8) + 8))(v40, v22);
  return (v17)(a1, v5);
}

uint64_t HttpTemplateParameter.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HttpTemplateParameter.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E19A4AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v90 - v7;
  v9 = sub_1E1AEF59C();
  v107 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0, &qword_1E1B489E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v90 - v12;
  v14 = sub_1E1AEF65C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *v2;
  if (!*(v98 + 16))
  {
    v19 = sub_1E1AEFCCC();
    return (*(*(v19 - 8) + 16))(a2, a1, v19);
  }

  sub_1E1AEF5EC();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB39F0, &qword_1E1B489E0);
    sub_1E19A62F8();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  (*(v15 + 32))(v96, v13, v14);
  v20 = sub_1E1AEF5CC();
  v94 = v8;
  v95 = v3;
  v91 = a2;
  v92 = v15;
  v93 = v14;
  if (!v20)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_31:
    v56 = (v98 + 64);
    v57 = 1 << *(v98 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v98 + 64);
    v60 = (v57 + 63) >> 6;

    v61 = 0;
    v105 = v60;
    v106 = v56;
    while (v59)
    {
      v64 = v61;
LABEL_41:
      v65 = (v64 << 10) | (16 * __clz(__rbit64(v59)));
      v66 = (*(v98 + 48) + v65);
      v68 = *v66;
      v67 = v66[1];
      v69 = (*(v98 + 56) + v65);
      v70 = v69[1];
      v107 = *v69;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v23;
      v72 = sub_1E13018F8(v68, v67);
      v74 = v23[2];
      v75 = (v73 & 1) == 0;
      v54 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v54)
      {
        goto LABEL_56;
      }

      v77 = v73;
      if (v23[3] >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = v72;
          sub_1E1415E90();
          v72 = v83;
        }
      }

      else
      {
        sub_1E1688F9C(v76, isUniquelyReferenced_nonNull_native);
        v72 = sub_1E13018F8(v68, v67);
        if ((v77 & 1) != (v78 & 1))
        {
          goto LABEL_59;
        }
      }

      v59 &= v59 - 1;
      if (v77)
      {
        v62 = v72;

        v23 = v108;
        v63 = (v108[7] + 16 * v62);
        *v63 = v107;
        v63[1] = v70;
      }

      else
      {
        v23 = v108;
        v108[(v72 >> 6) + 8] |= 1 << v72;
        v79 = (v23[6] + 16 * v72);
        *v79 = v68;
        v79[1] = v67;
        v80 = (v23[7] + 16 * v72);
        *v80 = v107;
        v80[1] = v70;
        v81 = v23[2];
        v54 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v54)
        {
          goto LABEL_58;
        }

        v23[2] = v82;
      }

      v61 = v64;
      v60 = v105;
      v56 = v106;
    }

    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v64 >= v60)
      {
        break;
      }

      v59 = *&v56[8 * v64];
      ++v61;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    sub_1E19A12B0(v23, v84);

    v85 = v96;
    sub_1E1AEF5DC();
    v86 = v94;
    sub_1E1AEF5FC();
    v87 = sub_1E1AEFCCC();
    v88 = *(v87 - 8);
    if ((*(v88 + 48))(v86, 1, v87) == 1)
    {
      sub_1E1308058(v86, &unk_1ECEB4B60, &unk_1E1B02620);
      sub_1E19A62F8();
      swift_allocError();
      *v89 = 0;
      swift_willThrow();
      return (*(v92 + 8))(v85, v93);
    }

    else
    {
      (*(v92 + 8))(v85, v93);
      return (*(v88 + 32))(v91, v86, v87);
    }
  }

  v21 = v20;
  v103 = *(v20 + 16);
  if (!v103)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_30:

    goto LABEL_31;
  }

  v22 = 0;
  v101 = v20 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v99 = v107 + 8;
  v100 = v107 + 16;
  v23 = MEMORY[0x1E69E7CC8];
  v97 = v9;
  v102 = v20;
  while (v22 < *(v21 + 16))
  {
    v25 = v23;
    v26 = v106;
    v27 = v107;
    (*(v107 + 16))(v106, v101 + *(v107 + 72) * v22, v9);
    v28 = sub_1E1AEF57C();
    v30 = v29;
    v31 = sub_1E1AEF58C();
    v33 = v32;
    (*(v27 + 8))(v26, v9);
    if (!v33)
    {
      v47 = sub_1E13018F8(v28, v30);
      v49 = v48;

      if (v49)
      {
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v108 = v25;
        v23 = v25;
        if (!v50)
        {
          sub_1E1415E90();
          v23 = v108;
        }

        sub_1E14132F4(v47, v23);
        v21 = v102;
      }

      else
      {
        v23 = v25;
        v21 = v102;
      }

      goto LABEL_10;
    }

    v104 = v33;
    v105 = v31;
    v21 = v102;
    v34 = v25;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v25;
    v36 = v28;
    v38 = sub_1E13018F8(v28, v30);
    v39 = v34[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_55;
    }

    v42 = v37;
    if (v34[3] >= v41)
    {
      if ((v35 & 1) == 0)
      {
        sub_1E1415E90();
      }

      v43 = v30;
      v46 = v104;
      if ((v42 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1E1688F9C(v41, v35);
      v43 = v30;
      v44 = sub_1E13018F8(v36, v30);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_59;
      }

      v38 = v44;
      v46 = v104;
      if ((v42 & 1) == 0)
      {
LABEL_25:
        v23 = v108;
        v108[(v38 >> 6) + 8] |= 1 << v38;
        v51 = (v23[6] + 16 * v38);
        *v51 = v36;
        v51[1] = v43;
        v52 = (v23[7] + 16 * v38);
        *v52 = v105;
        v52[1] = v46;
        v53 = v23[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_57;
        }

        v23[2] = v55;
        goto LABEL_9;
      }
    }

    v23 = v108;
    v24 = (v108[7] + 16 * v38);
    *v24 = v105;
    v24[1] = v46;

LABEL_9:
    v9 = v97;
LABEL_10:
    if (v103 == ++v22)
    {
      goto LABEL_30;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

void *sub_1E19A5354(void *a1)
{
  v3 = *(v1 + 8);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v35 = v3;

  v9 = 0;
  v34 = v4;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = (v12 << 10) | (16 * __clz(__rbit64(v7)));
    v14 = (*(v35 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v35 + 56) + v13);
    v18 = v17[1];
    v36 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1E13018F8(v16, v15);
    v22 = a1[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (a1[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v20;
        sub_1E1415E90();
        v20 = v32;
      }
    }

    else
    {
      sub_1E1688F9C(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1E13018F8(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v20;

      v11 = (a1[7] + 16 * v10);
      *v11 = v36;
      v11[1] = v18;
    }

    else
    {
      a1[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (a1[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      v29 = (a1[7] + 16 * v20);
      *v29 = v36;
      v29[1] = v18;
      v30 = a1[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      a1[2] = v31;
    }

    v9 = v12;
    v4 = v34;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

void sub_1E19A5594(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = sub_1E1AF5E5C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  if (v6)
  {
    v7 = *(v1 + 16);
    *&v42 = *a1;
    *(&v42 + 1) = v6;
    v8.super.super.isa = HttpTemplateJsonBody.makeMutableDictionary()().super.super.isa;
    if (!v9)
    {
      v34[1] = v5;
      v34[2] = 0;
      isa = v8.super.super.isa;
      v10 = 1 << *(v7 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v7 + 64);
      v13 = (v10 + 63) >> 6;

      v14 = 0;
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_8:
      v15 = v14;
LABEL_16:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = v18 | (v15 << 6);
      v20 = (*(v7 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_1E137A5C4(*(v7 + 56) + 32 * v19, v38);
      *&v39 = v22;
      *(&v39 + 1) = v21;
      sub_1E1301CF0(v38, &v40);

      v17 = v15;
      while (1)
      {
        v42 = v39;
        v43[0] = v40;
        v43[1] = v41;
        v23 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          break;
        }

        v24 = v42;
        sub_1E1301CF0(v43, &v39);
        *&v38[0] = v24;
        *(&v38[0] + 1) = v23;
        v36 = 46;
        v37 = 0xE100000000000000;
        sub_1E13B8AA4();
        v25 = sub_1E1AF6DCC();

        sub_1E19A2F44(&v39, v25);

        __swift_destroy_boxed_opaque_existential_1(&v39);
        v14 = v17;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_9:
        if (v13 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
          }

          if (v15 >= v13)
          {
            break;
          }

          v12 = *(v7 + 64 + 8 * v15);
          ++v14;
          if (v12)
          {
            goto LABEL_16;
          }
        }

        v12 = 0;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
      }

      v26 = objc_opt_self();
      *&v42 = 0;
      v27 = isa;
      v28 = [v26 dataWithJSONObject:isa options:0 error:&v42];
      v29 = v42;
      if (v28)
      {
        v30 = sub_1E1AEFD3C();
        v32 = v31;

        sub_1E1AF5E4C();
        sub_1E1AF5E1C();

        sub_1E14283DC(v30, v32);
      }

      else
      {
        v33 = v29;
        sub_1E1AEFB2C();

        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1E19A58D4(uint64_t *a1)
{
  v3 = a1[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 24);
  v56 = *a1;
  v57 = v3;
  result = HttpTemplateFormBody.makeDictionary()();
  if (!v2)
  {
    v6 = result;
    v7 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v53 = v4 + 64;
    v54 = v4;
    while (v10)
    {
      v15 = v12;
LABEL_15:
      v16 = (v15 << 10) | (16 * __clz(__rbit64(v10)));
      v17 = (*(v4 + 48) + v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = (*(v4 + 56) + v16);
      v21 = v20[1];
      v59 = *v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v6;
      v23 = sub_1E13018F8(v19, v18);
      v25 = *(v6 + 16);
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_37;
      }

      v29 = v24;
      if (*(v6 + 24) >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = v23;
          sub_1E1415E90();
          v23 = v35;
        }
      }

      else
      {
        sub_1E1688F9C(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_1E13018F8(v19, v18);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_39;
        }
      }

      v10 &= v10 - 1;
      if (v29)
      {
        v13 = v23;

        v6 = v56;
        v14 = (*(v56 + 56) + 16 * v13);
        *v14 = v59;
        v14[1] = v21;
      }

      else
      {
        v6 = v56;
        *(v56 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v31 = (*(v6 + 48) + 16 * v23);
        *v31 = v19;
        v31[1] = v18;
        v32 = (*(v6 + 56) + 16 * v23);
        *v32 = v59;
        v32[1] = v21;
        v33 = *(v6 + 16);
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_38;
        }

        *(v6 + 16) = v34;
      }

      v12 = v15;
      v7 = v53;
      v4 = v54;
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v15);
      ++v12;
      if (v10)
      {
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v6 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v6 + 64);
    v39 = (v36 + 63) >> 6;

    v40 = 0;
    v59 = 0;
    for (i = 0xE000000000000000; v38; i = v52)
    {
      v42 = v40;
LABEL_32:
      v43 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v44 = (v42 << 10) | (16 * v43);
      v45 = (*(v6 + 48) + v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = (*(v6 + 56) + v44);
      v49 = *v48;
      v50 = v48[1];
      v58 = MEMORY[0x1E69E6158];
      v56 = v46;
      v57 = v47;
      v55[3] = MEMORY[0x1E69E6158];
      v55[0] = v49;
      v55[1] = v50;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v59 = sub_1E19A5C70(v59, i, &v56, v55);
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_1(v55);
      __swift_destroy_boxed_opaque_existential_1(&v56);
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= v39)
      {

        return v59;
      }

      v38 = *(v6 + 64 + 8 * v42);
      ++v40;
      if (v38)
      {
        v40 = v42;
        goto LABEL_32;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1E1AF757C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E19A5C70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEF4AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E137A5C4(a3, v27);
  sub_1E137A5C4(a4, &v28);
  sub_1E19A6790(v27, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E1308058(v27, &qword_1ECEBBC98, &qword_1E1B489D8);
    v21 = v26;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v21);

    return a1;
  }

  v13 = v23;
  v12 = v24;
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1E19A6790(v27, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E1308058(v27, &qword_1ECEBBC98, &qword_1E1B489D8);

    v21 = v25;
    goto LABEL_14;
  }

  v15 = v23;
  v14 = v24;
  __swift_destroy_boxed_opaque_existential_1(v25);
  v25[0] = a1;
  v25[1] = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    MEMORY[0x1E68FECA0](38, 0xE100000000000000);
  }

  v23 = v15;
  v24 = v14;
  sub_1E1AEF43C();
  sub_1E13B8AA4();
  v17 = sub_1E1AF6E3C();
  v19 = v18;
  (*(v9 + 8))(v11, v8);

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v17 = 0;
    v20 = 0xE000000000000000;
  }

  v23 = v13;
  v24 = v12;
  MEMORY[0x1E68FECA0](61, 0xE100000000000000);
  MEMORY[0x1E68FECA0](v17, v20);

  MEMORY[0x1E68FECA0](v23, v24);

  sub_1E1308058(v27, &qword_1ECEBBC98, &qword_1E1B489D8);
  return v25[0];
}

uint64_t HttpTemplateAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_url;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_1E19A5FE0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t HttpTemplateAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_message);

  return v1;
}

double sub_1E19A60B0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

uint64_t HttpTemplateAction.__deallocating_deinit()
{
  HttpTemplateAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E19A61FC()
{
  result = qword_1EE1ED928;
  if (!qword_1EE1ED928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED928);
  }

  return result;
}

unint64_t sub_1E19A6250()
{
  result = qword_1EE1ED930;
  if (!qword_1EE1ED930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED930);
  }

  return result;
}

unint64_t sub_1E19A62A4()
{
  result = qword_1EE1ED288;
  if (!qword_1EE1ED288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED288);
  }

  return result;
}

unint64_t sub_1E19A62F8()
{
  result = qword_1ECEBBC78;
  if (!qword_1ECEBBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBC78);
  }

  return result;
}

unint64_t sub_1E19A634C()
{
  result = qword_1ECEB63F8;
  if (!qword_1ECEB63F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB63F8);
  }

  return result;
}

unint64_t sub_1E19A6398()
{
  result = qword_1EE1ED298;
  if (!qword_1EE1ED298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED298);
  }

  return result;
}

unint64_t sub_1E19A63EC()
{
  result = qword_1EE1ED290;
  if (!qword_1EE1ED290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED290);
  }

  return result;
}

unint64_t sub_1E19A6444()
{
  result = qword_1ECEBBC80;
  if (!qword_1ECEBBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBC80);
  }

  return result;
}

unint64_t sub_1E19A649C()
{
  result = qword_1ECEBBC88;
  if (!qword_1ECEBBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBC88);
  }

  return result;
}

unint64_t sub_1E19A64F4()
{
  result = qword_1ECEBBC90;
  if (!qword_1ECEBBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBC90);
  }

  return result;
}

uint64_t sub_1E19A6578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1E19A65C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E19A6658(uint64_t a1)
{
  result = sub_1E1AEFCCC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1E19A6790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC98, &qword_1E1B489D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Achievement.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v94 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBCA0, &qword_1E1B489E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = v74 - v5;
  v95 = sub_1E1AF39DC();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v87 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBCA8, &unk_1E1B489F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = v74 - v8;
  v9 = sub_1E1AF05CC();
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v81 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = v74 - v12;
  v13 = sub_1E1AF3D0C();
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v80 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v74 - v19;
  v20 = sub_1E1AF380C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v74 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v74 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v74 - v31;
  v98 = a1;
  sub_1E1AF381C();
  v79 = sub_1E1AF37CC();
  v34 = v33;
  v37 = *(v21 + 8);
  v36 = v21 + 8;
  v35 = v37;
  v37(v32, v20);
  if (!v34)
  {
    v51 = sub_1E1AF5A7C();
    sub_1E19A8430(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v53 = v52;
    v54 = sub_1E1AF05FC();
    *v53 = 25705;
    v55 = 0xE200000000000000;
LABEL_8:
    v53[1] = v55;
    v53[2] = v54;
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69AB690], v51);
    swift_willThrow();
    (*(v93 + 8))(v94, v95);
    return v35(v98, v20);
  }

  v92 = v34;
  sub_1E1AF381C();
  v77 = sub_1E1AF37CC();
  v39 = v38;
  v35(v29, v20);
  if (!v39)
  {

    v51 = sub_1E1AF5A7C();
    sub_1E19A8430(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v53 = v56;
    v54 = sub_1E1AF05FC();
    *v53 = 0x656C746974;
    v55 = 0xE500000000000000;
    goto LABEL_8;
  }

  v78 = v39;
  v40 = v35;
  sub_1E1AF381C();
  v76 = sub_1E1AF37CC();
  v42 = v41;
  v35(v26, v20);
  if (v42)
  {
    v74[1] = v42;
    sub_1E1AF381C();
    v44 = v85;
    v43 = v86;
    (*(v85 + 13))(v15, *MEMORY[0x1E69AAFD0], v86);
    sub_1E1AF36BC();
    v46 = v45;
    (*(v44 + 1))(v15, v43);
    v75 = v20;
    v85 = v40;
    v86 = v36;
    v40(v23, v20);
    if (v46)
    {
      v47 = 1;
      v48 = v95;
      v49 = v93;
      v50 = v91;
    }

    else
    {
      v50 = v91;
      sub_1E1AEFE0C();
      v47 = 0;
      v48 = v95;
      v49 = v93;
    }

    v62 = v90;
    v63 = v88;
    v64 = sub_1E1AEFE6C();
    (*(*(v64 - 8) + 56))(v50, v47, 1, v64);
    sub_1E1AF381C();
    v65 = v94;
    (*(v49 + 16))(v87, v94, v48);
    sub_1E19A8430(&qword_1ECEBBCB0, MEMORY[0x1E69A02C8], &protocol conformance descriptor for Achievement.Status);
    sub_1E1AF464C();
    v66 = v89;
    if ((*(v89 + 48))(v63, 1, v62) == 1)
    {

      sub_1E1308058(v63, &qword_1ECEBBCA8, &unk_1E1B489F0);
      v67 = sub_1E1AF5A7C();
      sub_1E19A8430(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
      swift_allocError();
      v68 = v50;
      v70 = v69;
      v71 = sub_1E1AF05FC();
      *v70 = 0x737574617473;
      v70[1] = 0xE600000000000000;
      v70[2] = v71;
      (*(*(v67 - 8) + 104))(v70, *MEMORY[0x1E69AB690], v67);
      swift_willThrow();
      (*(v49 + 8))(v65, v48);
      v85(v98, v75);
      return sub_1E1308058(v68, &unk_1ECEBB780, &unk_1E1B029A0);
    }

    else
    {
      v72 = v82;
      (*(v66 + 32))(v82, v63, v62);
      v96 = v79;
      v97 = v92;
      sub_1E1AF6F6C();
      (*(v66 + 16))(v81, v72, v62);
      sub_1E1380BEC(v50, v80);
      v73 = sub_1E1AF060C();
      (*(*(v73 - 8) + 56))(v83, 1, 1, v73);
      sub_1E1AF059C();
      (*(v49 + 8))(v65, v95);
      v85(v98, v75);
      (*(v66 + 8))(v72, v62);
      return sub_1E1308058(v50, &unk_1ECEBB780, &unk_1E1B029A0);
    }
  }

  else
  {

    v58 = sub_1E1AF5A7C();
    sub_1E19A8430(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v60 = v59;
    v61 = sub_1E1AF05FC();
    *v60 = 0x656C746974627573;
    v60[1] = 0xE800000000000000;
    v60[2] = v61;
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69AB690], v58);
    swift_willThrow();
    (*(v93 + 8))(v94, v95);
    return v35(v98, v20);
  }
}

JSValue __swiftcall Achievement.makeValue(in:)(JSContext in)
{
  v2 = sub_1E1AF05CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_11;
  }

  isa = result.super.isa;
  sub_1E1AF05AC();
  sub_1E134E724(&v27, v26);
  v11 = sub_1E1AF755C();
  sub_1E134B88C(&v27);
  v12 = [v8 valueWithObject:v11 inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v3;
  sub_1E1AF6C5C();
  v27 = sub_1E1AF05BC();
  v28 = v13;
  v14 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v2;
  sub_1E1AF6C5C();
  v27 = sub_1E1AF05EC();
  v28 = v16;
  v17 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1E1AF6C5C();
  sub_1E1AF058C();
  v18 = sub_1E1AEFE6C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_1E1308058(v7, &unk_1ECEBB780, &unk_1E1B029A0);
LABEL_9:
    v23 = v25;
    sub_1E1AF05DC();
    Achievement.Status.makeValue(in:)(in);
    (*(v24 + 8))(v23, v15);
    sub_1E1AF6C5C();
    return isa;
  }

  sub_1E1AEFE1C();
  v21 = v20;
  (*(v19 + 8))(v7, v18);
  v27 = v21;
  v22 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v22)
  {
    sub_1E1AF6C5C();
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

JSValue __swiftcall Achievement.Status.makeValue(in:)(JSContext in)
{
  v3 = sub_1E1AF05CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_opt_self();
  result.super.isa = [v7 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_19;
  }

  isa = result.super.isa;
  (*(v4 + 16))(v6, v1, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == *MEMORY[0x1E69A02A8])
  {
    (*(v4 + 96))(v6, v3);
    v11 = *v6;
    v20 = 0x6572676F72706E69;
    v21 = 0xEA00000000007373;
    v12 = [v7 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v12)
    {
      sub_1E1AF6C5C();
      result.super.isa = [v7 valueWithDouble:in.super.isa inContext:v11];
      if (result.super.isa)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 == *MEMORY[0x1E69A02C0])
  {
    (*(v4 + 96))(v6, v3);
    v14 = *v6;
    v13 = *(v6 + 1);
    v20 = 0x6574656C706D6F63;
    v21 = 0xE900000000000064;
    v15 = [v7 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v15)
    {
      sub_1E1AF6C5C();
      v20 = *&v14;
      v21 = v13;

      v16 = [v7 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
      result.super.isa = swift_unknownObjectRelease();
      if (v16)
      {

        sub_1E1AF6C5C();

        sub_1E19BCC24(v17, v18);
        sub_1E144878C(in.super.isa);

        sub_1E1AF6C5C();

        return isa;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69A02B8])
  {
    v20 = 0x64656B636F6CLL;
    v21 = 0xE600000000000000;
    in.super.isa = [v7 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    v10 = swift_unknownObjectRelease();
    if (in.super.isa)
    {
LABEL_15:
      sub_1E1AF6C5C();
      return isa;
    }

    __break(1u);
  }

  if (v10 != *MEMORY[0x1E69A02B0])
  {
    (*(v4 + 8))(v6, v3);
    return isa;
  }

  v20 = 0x6E6564646968;
  v21 = 0xE600000000000000;
  v19 = [v7 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t Achievement.Status.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a2;
  v55 = a3;
  v57 = sub_1E1AF39DC();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = 0xE400000000000000;
  v18 = a1;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v58 = *(v6 + 8);
  v58(v16, v5);
  if (!v21)
  {
    v27 = 1701869940;
LABEL_10:
    v54 = v27;
LABEL_11:
    v28 = MEMORY[0x1E69AB690];
    goto LABEL_12;
  }

  v22 = v19 == 0x64656B636F6CLL && v21 == 0xE600000000000000;
  if (v22 || (sub_1E1AF74AC() & 1) != 0)
  {

    (*(v59 + 8))(v56, v57);
    v58(v18, v5);
    v23 = MEMORY[0x1E69A02B8];
LABEL_8:
    v24 = *v23;
    v25 = sub_1E1AF05CC();
    return (*(*(v25 - 8) + 104))(v55, v24, v25);
  }

  v34 = v19 == 0x6E6564646968 && v21 == 0xE600000000000000;
  if (v34 || (sub_1E1AF74AC() & 1) != 0)
  {

    (*(v59 + 8))(v56, v57);
    v58(v18, v5);
    v23 = MEMORY[0x1E69A02B0];
    goto LABEL_8;
  }

  v35 = v19 == 0x6572676F72706E69 && v21 == 0xEA00000000007373;
  v36 = v59;
  if (!v35 && (sub_1E1AF74AC() & 1) == 0)
  {
    if ((v19 != 0x6574656C706D6F63 || v21 != 0xE900000000000064) && (sub_1E1AF74AC() & 1) == 0)
    {
      v28 = MEMORY[0x1E69AB680];
      v54 = v19;
      v17 = v21;
      goto LABEL_12;
    }

    sub_1E1AF381C();
    v45 = sub_1E1AF37CC();
    v47 = v46;
    v58(v10, v5);
    if (v47)
    {
      v52 = v45;
      type metadata accessor for Artwork(0);
      sub_1E1AF381C();
      v48 = v59;
      v49 = v56;
      (*(v59 + 16))(v54, v56, v57);
      sub_1E19A8430(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      sub_1E1AF464C();
      if (v60)
      {

        v50 = Artwork.toGameCenterArtwork()();

        (*(v48 + 8))(v49, v57);
        v58(v18, v5);
        v41 = v55;
        *v55 = v52;
        v41[1] = v47;
        v41[2] = v50;
        v42 = MEMORY[0x1E69A02C0];
        goto LABEL_26;
      }

      v54 = 0x6B726F77747261;

      v28 = MEMORY[0x1E69AB690];
      v17 = 0xE700000000000000;
LABEL_12:
      v29 = v57;
      v30 = sub_1E1AF5A7C();
      sub_1E19A8430(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
      swift_allocError();
      v32 = v31;
      v33 = sub_1E1AF05CC();
      *v32 = v54;
      v32[1] = v17;
      v32[2] = v33;
      (*(*(v30 - 8) + 104))(v32, *v28, v30);
      swift_willThrow();
      (*(v59 + 8))(v56, v29);
      return (v58)(v18, v5);
    }

    v27 = 1702125924;
    goto LABEL_10;
  }

  v17 = 0xE700000000000000;
  v54 = 0x746E6563726570;
  sub_1E1AF381C();
  v37 = sub_1E1AF379C();
  v39 = v38;
  v40 = v58;
  v58(v13, v5);
  if (v39)
  {
    goto LABEL_11;
  }

  (*(v36 + 8))(v56, v57);
  v40(v18, v5);
  v41 = v55;
  *v55 = v37;
  v42 = MEMORY[0x1E69A02A8];
LABEL_26:
  v43 = *v42;
  v44 = sub_1E1AF05CC();
  return (*(*(v44 - 8) + 104))(v41, v43, v44);
}

uint64_t sub_1E19A8430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PrivacyHeader.__allocating_init(id:bodyText:supplementaryItems:isDetailHeader:bodyActions:seeDetailsAction:learnMoreAction:privacyTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a4;
  v22 = a3;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  sub_1E138853C(a1, &v26);
  if (*(&v27 + 1))
  {
    v15 = v27;
    *(v14 + 40) = v26;
    *(v14 + 56) = v15;
    *(v14 + 72) = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v18 = v17;
    (*(v11 + 8))(v13, v10);
    v24 = v16;
    v25 = v18;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v19 = v22;
  *(v14 + 16) = a2;
  *(v14 + 24) = v19;
  *(v14 + 32) = v23 & 1;
  return v14;
}

uint64_t PrivacyHeader.init(id:bodyText:supplementaryItems:isDetailHeader:bodyActions:seeDetailsAction:learnMoreAction:privacyTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v24 = a4;
  v23 = a3;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1E138853C(a1, &v27);
  if (*(&v28 + 1))
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v18 = v17;
    (*(v13 + 8))(v15, v12);
    v25 = v16;
    v26 = v18;
    sub_1E1AF6F6C();
    sub_1E1308058(&v27, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v19 = v31;
  *(v9 + 40) = v30;
  *(v9 + 56) = v19;
  *(v9 + 72) = v32;
  v20 = v23;
  *(v9 + 16) = a2;
  *(v9 + 24) = v20;
  *(v9 + 32) = v24 & 1;
  return v9;
}

char *PrivacyHeader.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  v95 = sub_1E1AEFEAC();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v104 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v84 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v84 - v9;
  v99 = sub_1E1AF5A6C();
  v110 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v92 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v84 - v16;
  v17 = sub_1E1AF39DC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1E1AF380C();
  v21 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v105 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v84 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v84 - v34;
  type metadata accessor for LinkableText();
  v114 = a1;
  sub_1E1AF381C();
  v108 = v18;
  v36 = *(v18 + 16);
  v97 = v18 + 16;
  v96 = v36;
  v36(v20, v121, v17);
  sub_1E19A96C0(&qword_1EE1F5FA0, 255, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v100 = v20;
  sub_1E1AF464C();
  if (v120)
  {
    v89 = v120;
    v107 = v17;
    sub_1E1AF381C();
    v88 = sub_1E1AF370C();
    v39 = *(v21 + 8);
    v37 = (v21 + 8);
    v38 = v39;
    v40 = v113;
    v39(v32, v113);
    v41 = type metadata accessor for Action(0);
    sub_1E1AF381C();
    v42 = v121;
    v87 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v121);
    v39(v35, v40);
    sub_1E1AF381C();
    v85 = v41;
    v86 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v42);
    v39(v35, v40);
    sub_1E1AF381C();
    v43 = v112;
    sub_1E1AF374C();
    v39(v29, v40);
    v44 = v110;
    v45 = v99;
    v106 = *(v110 + 48);
    if (v106(v43, 1, v99) == 1)
    {
      v46 = v40;
      sub_1E1308058(v43, &qword_1ECEB1F90, &qword_1E1B00D30);
    }

    else
    {
      v50 = *(v44 + 32);
      v84 = v38;
      v51 = v90;
      v50(v90, v43, v45);
      (*(v44 + 16))(v102, v51, v45);
      v96(v100, v42, v107);
      type metadata accessor for PrivacyType(0);
      sub_1E19A96C0(&qword_1EE1F6E68, 255, type metadata accessor for PrivacyType, &protocol conformance descriptor for PrivacyType);
      v46 = v113;
      sub_1E1AF631C();

      v52 = v51;
      v38 = v84;
      (*(v44 + 8))(v52, v45);
    }

    v53 = v98;
    sub_1E1AF381C();
    v54 = v103;
    sub_1E1AF374C();
    v112 = v37;
    v38(v53, v46);
    if (v106(v54, 1, v45) == 1)
    {
      sub_1E1308058(v54, &qword_1ECEB1F90, &qword_1E1B00D30);
      v103 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v55 = v110;
      v56 = v54;
      v57 = v91;
      (*(v110 + 32))(v91, v56, v45);
      (*(v55 + 16))(v102, v57, v45);
      v96(v100, v121, v107);
      type metadata accessor for PrivacyHeaderSupplementaryItem();
      sub_1E19A96C0(qword_1EE1E8120, 255, type metadata accessor for PrivacyHeaderSupplementaryItem, &protocol conformance descriptor for PrivacyHeaderSupplementaryItem);
      v46 = v113;
      v103 = sub_1E1AF631C();
      (*(v55 + 8))(v57, v45);
    }

    v58 = v101;
    v59 = v114;
    sub_1E1AF381C();
    v60 = v104;
    sub_1E1AF374C();
    v61 = v60;
    v38(v58, v46);
    if (v106(v60, 1, v45) == 1)
    {
      sub_1E1308058(v60, &qword_1ECEB1F90, &qword_1E1B00D30);
    }

    else
    {
      v62 = v110;
      v63 = v92;
      v64 = (*(v110 + 32))(v92, v61, v45);
      MEMORY[0x1EEE9AC00](v64);
      v65 = v121;
      *(&v84 - 2) = v85;
      *(&v84 - 1) = v65;
      v66 = v111;
      sub_1E1AF59FC();
      v111 = v66;

      (*(v62 + 8))(v63, v45);
    }

    v67 = v108;
    v68 = v105;
    sub_1E1AF381C();
    v69 = sub_1E1AF37CC();
    if (v70)
    {
      *&v117 = v69;
      *(&v117 + 1) = v70;
    }

    else
    {
      v71 = v93;
      sub_1E1AEFE9C();
      v72 = sub_1E1AEFE7C();
      v74 = v73;
      (*(v94 + 8))(v71, v95);
      *&v117 = v72;
      *(&v117 + 1) = v74;
      v46 = v113;
    }

    sub_1E1AF6F6C();
    v38(v68, v46);
    v29 = swift_allocObject();
    sub_1E138853C(&v120, &v117);
    if (*(&v118 + 1))
    {
      v75 = v118;
      *(v29 + 40) = v117;
      *(v29 + 56) = v75;
      *(v29 + 9) = v119;
      v76 = v107;
    }

    else
    {
      v77 = v93;
      sub_1E1AEFE9C();
      v78 = sub_1E1AEFE7C();
      v80 = v79;
      v81 = v77;
      v46 = v113;
      (*(v94 + 8))(v81, v95);
      v115 = v78;
      v116 = v80;
      v76 = v107;
      sub_1E1AF6F6C();
      sub_1E1308058(&v117, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v38(v59, v46);
    sub_1E1308058(&v120, &unk_1ECEB5670, qword_1E1B03EC0);
    v82 = v103;
    *(v29 + 2) = v89;
    *(v29 + 3) = v82;
    v29[32] = v88 & 1;
    (*(v67 + 8))(v121, v76);
  }

  else
  {
    v47 = sub_1E1AF5A7C();
    sub_1E19A96C0(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v48 = 0x7478655479646F62;
    v49 = v109;
    v48[1] = 0xE800000000000000;
    v48[2] = v49;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x1E69AB690], v47);
    swift_willThrow();
    (*(v21 + 8))(v114, v113);
    (*(v108 + 8))(v121, v17);
  }

  return v29;
}

uint64_t PrivacyHeader.deinit()
{

  sub_1E134B88C(v0 + 40);
  return v0;
}

uint64_t PrivacyHeader.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1E19A96C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_1E19A972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = PrivacyHeader.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id UpsellBreakout.DisplayProperties.backgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *UpsellBreakout.DisplayProperties.badgeColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.titleColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.descriptionColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.callToActionColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

double UpsellBreakout.DisplayProperties.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 514;
  return result;
}

uint64_t UpsellBreakout.DisplayProperties.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1E1AF381C();
  v28 = JSONObject.appStoreColor.getter();
  v15 = *(v6 + 8);
  v15(v14, v5);
  sub_1E1AF381C();
  v16 = sub_1E1AF370C();
  v15(v11, v5);
  v30 = v16 & 1;
  sub_1E1AF381C();
  v17 = sub_1E1AF370C();
  v15(v8, v5);
  v27 = v17 & 1;
  sub_1E1AF381C();
  v26 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_1E1AF381C();
  v25 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_1E1AF381C();
  v24 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_1E1AF381C();
  v18 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_1E1AF381C();
  sub_1E1726840();
  sub_1E1AF369C();
  v15(v14, v5);
  LOBYTE(v11) = v32;
  sub_1E1AF381C();
  sub_1E13F7FB4();
  sub_1E1AF369C();
  v19 = sub_1E1AF39DC();
  (*(*(v19 - 8) + 8))(v29, v19);
  v15(a1, v5);
  result = (v15)(v14, v5);
  v21 = v31;
  *a3 = v28;
  *(a3 + 8) = v30;
  *(a3 + 9) = v27;
  v22 = v25;
  *(a3 + 16) = v26;
  *(a3 + 24) = v22;
  *(a3 + 32) = v24;
  *(a3 + 40) = v18;
  *(a3 + 48) = v11;
  *(a3 + 49) = v21;
  return result;
}

uint64_t UpsellBreakout.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  UpsellBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

void *UpsellBreakout.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v78 = *v3;
  v96 = sub_1E1AF39DC();
  v87 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = &v77 - v10;
  v11 = sub_1E1AEFEAC();
  v88 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  *(v3 + 128) = 0;
  v79 = v3 + 128;
  v90 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v89 = v14;
  v82 = v15;
  v83 = v8;
  if (v22)
  {
    v91 = v21;
    v92 = v22;
    sub_1E1AF6F6C();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v14;
    v29 = v28;
    v88[1](v13, v11);
    v91 = v26;
    v92 = v29;
    sub_1E1AF6F6C();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v27;
  }

  v88 = v23;
  (v23)(v24, v25);
  v30 = *&v93[16];
  *(v3 + 136) = *v93;
  *(v3 + 152) = v30;
  *(v3 + 168) = *&v93[32];
  v80 = sub_1E1AF46DC();
  sub_1E1AF381C();
  v31 = v86;
  v32 = v3;
  v34 = v87 + 16;
  v33 = *(v87 + 16);
  v35 = v83;
  v36 = v96;
  v33(v83, v86, v96);
  v37 = v17;
  v38 = v81;
  sub_1E1AF464C();
  v85 = v32;
  v80 = OBJC_IVAR____TtC11AppStoreKit14UpsellBreakout_impressionMetrics;
  v39 = v38;
  v40 = v37;
  sub_1E134B7C8(v39, v32 + OBJC_IVAR____TtC11AppStoreKit14UpsellBreakout_impressionMetrics);
  v41 = v84;
  v33(v84, v31, v36);
  type metadata accessor for BreakoutDetails();
  sub_1E1AF381C();
  v81 = v33;
  v33(v35, v41, v36);
  sub_1E19AAB34(&qword_1EE1DFB00, type metadata accessor for BreakoutDetails, &protocol conformance descriptor for BreakoutDetails);
  v42 = v35;
  sub_1E1AF464C();
  v43 = *v93;
  if (*v93)
  {
    v44 = v85;
    v85[2] = *v93;
    v45 = type metadata accessor for Action(0);
    v80 = v43;

    sub_1E1AF381C();
    v78 = v45;
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v37, v41);
    v47 = v82 + 8;
    (v88)(v37, v89);
    v44[3] = v46;
    type metadata accessor for OfferDisplayProperties();
    sub_1E1AF381C();
    v48 = v81;
    v77 = v34;
    (v81)(v42, v41, v96);
    v49 = v48;
    sub_1E19AAB34(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_1E1AF464C();
    v44[4] = *v93;
    sub_1E1AF381C();
    v50 = sub_1E1AF37CC();
    v52 = v51;
    v82 = v47;
    (v88)(v40, v89);
    v44[5] = v50;
    v44[6] = v52;
    type metadata accessor for Artwork(0);
    sub_1E1AF381C();
    v53 = v96;
    v49(v42, v41, v96);
    sub_1E19AAB34(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_1E1AF464C();
    v44[7] = *v93;
    type metadata accessor for Video(0);
    v54 = v90;
    sub_1E1AF381C();
    v49(v42, v41, v53);
    sub_1E19AAB34(&qword_1EE1E52D0, type metadata accessor for Video, &protocol conformance descriptor for Video);
    sub_1E1AF464C();
    v55 = v85;
    v85[8] = *v93;
    sub_1E1AF381C();
    v49(v42, v41, v96);
    sub_1E19AA8A0();
    sub_1E1AF464C();
    v56 = *v93;
    v57 = v55;
    if (*v93 == 1)
    {
      v56 = 0;
      v58 = 0;
      v59 = xmmword_1E1B48C00;
      v60 = 0uLL;
      v61 = 514;
    }

    else
    {
      v61 = v95;
      v58 = v94;
      v60 = *&v93[24];
      v59 = *&v93[8];
    }

    v67 = v86;
    v68 = v87;
    v55[9] = v56;
    *(v55 + 5) = v59;
    *(v55 + 6) = v60;
    v55[14] = v58;
    *(v55 + 60) = v61;
    sub_1E1AF381C();
    v87 = static Action.tryToMakeInstance(byDeserializing:using:)(v40, v41);

    v69 = v41;
    v70 = *(v68 + 8);
    v71 = v67;
    v72 = v96;
    v70(v71, v96);
    v73 = v54;
    v74 = v88;
    v75 = v89;
    (v88)(v73, v89);
    (v74)(v40, v75);
    v70(v69, v72);
    swift_beginAccess();
    v57[16] = v87;
  }

  else
  {
    v62 = sub_1E1AF5A7C();
    sub_1E19AAB34(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v63 = 0x736C6961746564;
    v64 = v78;
    v63[1] = 0xE700000000000000;
    v63[2] = v64;
    (*(*(v62 - 8) + 104))(v63, *MEMORY[0x1E69AB690], v62);
    swift_willThrow();
    v65 = *(v87 + 8);
    v66 = v96;
    v65(v86, v96);
    (v88)(v90, v89);
    v65(v41, v66);
    v57 = v85;

    sub_1E134B88C((v57 + 17));
    sub_1E13814C0(v57 + v80);
    type metadata accessor for UpsellBreakout(0);
    swift_deallocPartialClassInstance();
  }

  return v57;
}

uint64_t type metadata accessor for UpsellBreakout(uint64_t a1)
{
  result = qword_1EE1F3728;
  if (!qword_1EE1F3728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E19AA8A0()
{
  result = qword_1EE1DFB30[0];
  if (!qword_1EE1DFB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DFB30);
  }

  return result;
}

uint64_t UpsellBreakout.buttonCallToAction.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UpsellBreakout.displayProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v7[0] = *(v1 + 72);
  v7[1] = v2;
  v8 = *(v1 + 104);
  v3 = v8;
  v9 = *(v1 + 120);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1E19AA99C(v7, v6);
}

uint64_t UpsellBreakout.deinit()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  sub_1E134B88C(v0 + 136);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit14UpsellBreakout_impressionMetrics);
  return v0;
}

uint64_t UpsellBreakout.__deallocating_deinit()
{
  UpsellBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E19AAB34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E19AAB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for UpsellBreakout(0);
  v7 = swift_allocObject();
  result = UpsellBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E19AAC18(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E19AADD4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E19AAE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void (*ArcadePage.init(deserializing:using:)(uint64_t a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v3 = v2;
  v71 = a2;
  v63 = sub_1E1AF39DC();
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v75 = a1;
  sub_1E1AF381C();
  v22 = sub_1E1AF37CC();
  v24 = v23;
  v58 = v13;
  v25 = *(v13 + 8);
  v69 = v13 + 8;
  v70 = v12;
  v68 = v25;
  v25(v21, v12);
  v26 = (v3 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);
  *v26 = v22;
  v26[1] = v24;
  v60 = v26;
  type metadata accessor for ArcadeFooter(0);
  sub_1E1AF381C();
  v66 = v5;
  v27 = *(v5 + 16);
  v28 = v71;
  v29 = v63;
  v27(v11, v71, v63);
  sub_1E19AB79C(&qword_1EE1F6208, type metadata accessor for ArcadeFooter, &protocol conformance descriptor for ArcadeFooter);
  v55 = v11;
  sub_1E1AF464C();
  v30 = v3;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_footer) = *&v72[0];
  v31 = v62;
  sub_1E1AF381C();
  v32 = v64;
  v33 = v28;
  v34 = v29;
  v61 = v5 + 16;
  v67 = v27;
  v27(v64, v33, v29);
  v35 = v65;
  sub_1E1620444(v31, v32, v72);
  if (v35)
  {
    (*(v66 + 8))(v71, v29);
    v68(v75, v70);

    type metadata accessor for ArcadePage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v73;
    v37 = v74;
    v38 = v30 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect;
    v39 = v72[1];
    *v38 = v72[0];
    *(v38 + 16) = v39;
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;
    v64 = type metadata accessor for Action(0);
    v65 = 0;
    sub_1E1AF381C();
    v40 = v71;
    v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v71);
    v68(v21, v70);
    *(v30 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferAction) = v41;
    type metadata accessor for OfferDisplayProperties();
    sub_1E1AF381C();
    v42 = v55;
    v43 = v40;
    v67(v55, v40, v34);
    sub_1E19AB79C(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_1E1AF464C();
    *(v30 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = *&v72[0];
    type metadata accessor for ArcadeLockup(0);
    v44 = v75;
    sub_1E1AF381C();
    v67(v42, v43, v34);
    sub_1E19AB79C(qword_1EE1E0540, type metadata accessor for ArcadeLockup, &protocol conformance descriptor for ArcadeLockup);
    v45 = v34;
    sub_1E1AF464C();
    *(v30 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionLockup) = *&v72[0];
    sub_1E1AF381C();
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v43);
    v47 = v70;
    v48 = v68;
    v68(v21, v70);
    *(v30 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction) = v46;
    v49 = v56;
    sub_1E1AF381C();
    LOBYTE(v46) = sub_1E1AF370C();
    v48(v49, v47);
    *(v30 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell) = v46 & 1;
    v50 = v57;
    (*(v58 + 16))(v57, v44, v47);
    v34 = v59;
    v67(v59, v43, v45);
    v51 = v65;
    v52 = GenericPage.init(deserializing:using:)(v50, v34);
    if (!v51)
    {
      v34 = v52;
    }

    (*(v66 + 8))(v43, v45);
    v68(v44, v70);
  }

  return v34;
}

uint64_t type metadata accessor for ArcadePage(uint64_t a1)
{
  result = qword_1EE1E0E78;
  if (!qword_1EE1E0E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E19AB79C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ArcadePage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:footer:titleEffect:autoUpsellAction:shouldForceAutoUpsell:subscriptionLockup:subscriptionOfferAction:subscriptionOfferDisplayProperties:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v97 = a8;
  LODWORD(v84) = a7;
  v103 = a6;
  v83 = a5;
  v96 = a4;
  v80 = a2;
  v81 = a1;
  v98 = a20;
  v95 = a15;
  v91 = a12;
  v100 = a11;
  v89 = a10;
  v90 = a9;
  LODWORD(v88) = a16;
  v94 = a13;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v78 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v77 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v77 - v29;
  v101 = sub_1E1AF3C3C();
  v30 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v77 - v33;
  v102 = &v77 - v33;
  v35 = swift_allocObject();
  v36 = *(a14 + 32);
  v37 = (v35 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);
  *v37 = a2;
  v37[1] = a3;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_footer) = a13;
  LOBYTE(v37) = *(a14 + 40);
  v38 = v35 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect;
  v39 = *(a14 + 16);
  *v38 = *a14;
  *(v38 + 16) = v39;
  *(v38 + 32) = v36;
  *(v38 + 40) = v37;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferAction) = a18;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = a19;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionLockup) = a17;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction) = v95;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell) = v88;
  sub_1E134FD1C(v103, v105, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v85 = v30;
  v79 = *(v30 + 16);
  v40 = v34;
  v41 = v101;
  v79(v40, v100, v101);
  v42 = v92;
  sub_1E134FD1C(v98, v92, &qword_1ECEB3B28, &unk_1E1B11460);
  v43 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

  v44 = a3;

  v86 = a18;

  v87 = a19;

  v88 = a17;
  v45 = v93;

  v46 = sub_1E175EC2C(v81);
  v48 = v47;

  *(v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v46;
  v49 = v42;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v48;
  v50 = (v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  *v50 = v80;
  v50[1] = v44;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v96;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v83;
  sub_1E134FD1C(v105, v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v84;
  swift_beginAccess();
  *(v35 + v43) = v97;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v51 = v99;
  v52 = v79;
  v79(v99, v102, v41);
  sub_1E134FD1C(v49, v45, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v35 + 16) = 0;
  v52(v35 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v51, v41);
  *(v35 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v91;
  v53 = v45;
  v54 = v45;
  v55 = v82;
  sub_1E134FD1C(v54, v82, &qword_1ECEB3B28, &unk_1E1B11460);
  v56 = sub_1E1AF39DC();
  v84 = *(v56 - 8);
  v57 = *(v84 + 48);
  v58 = v55;
  if (v57(v55, 1, v56) == 1)
  {

    sub_1E1308058(v98, &qword_1ECEB3B28, &unk_1E1B11460);
    v59 = *(v85 + 8);
    v60 = v101;
    v59(v100, v101);
    sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v53, &qword_1ECEB3B28, &unk_1E1B11460);
    v59(v99, v60);
    sub_1E1308058(v49, &qword_1ECEB3B28, &unk_1E1B11460);
    v59(v102, v60);
    sub_1E1308058(v105, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v61 = v55;
    v62 = &qword_1ECEB3B28;
    v63 = &unk_1E1B11460;
  }

  else
  {
    v64 = qword_1EE1E3BC8;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v65, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v66 = v104;
    v67 = v93;
    if (v104)
    {
    }

    v68 = *(v84 + 8);
    v68(v58, v56);
    if (v66)
    {
      v69 = v78;
      sub_1E134FD1C(v67, v78, &qword_1ECEB3B28, &unk_1E1B11460);
      if (v57(v69, 1, v56) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v98, &qword_1ECEB3B28, &unk_1E1B11460);
        v75 = *(v85 + 8);
        v76 = v101;
        v75(v100, v101);
        sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v93, &qword_1ECEB3B28, &unk_1E1B11460);
        v75(v99, v76);
        sub_1E1308058(v92, &qword_1ECEB3B28, &unk_1E1B11460);
        v75(v102, v76);
        sub_1E1308058(v105, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v68(v78, v56);
        return v35;
      }

      sub_1E1308058(v98, &qword_1ECEB3B28, &unk_1E1B11460);
      v70 = *(v85 + 8);
      v71 = v101;
      v70(v100, v101);
      sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v93, &qword_1ECEB3B28, &unk_1E1B11460);
      v70(v99, v71);
      sub_1E1308058(v92, &qword_1ECEB3B28, &unk_1E1B11460);
      v70(v102, v71);
      sub_1E1308058(v105, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v61 = v69;
      v62 = &qword_1ECEB3B28;
      v63 = &unk_1E1B11460;
    }

    else
    {

      sub_1E1308058(v98, &qword_1ECEB3B28, &unk_1E1B11460);
      v72 = *(v85 + 8);
      v73 = v101;
      v72(v100, v101);
      sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v67, &qword_1ECEB3B28, &unk_1E1B11460);
      v72(v99, v73);
      sub_1E1308058(v92, &qword_1ECEB3B28, &unk_1E1B11460);
      v72(v102, v73);
      v61 = v105;
      v62 = &qword_1ECEB2DF0;
      v63 = &unk_1E1B02CE0;
    }
  }

  sub_1E1308058(v61, v62, v63);
  return v35;
}

uint64_t ArcadePage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:footer:titleEffect:autoUpsellAction:shouldForceAutoUpsell:subscriptionLockup:subscriptionOfferAction:subscriptionOfferDisplayProperties:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v90 = a8;
  LODWORD(v84) = a7;
  v101 = a6;
  v82 = a5;
  v95 = a4;
  v80 = a2;
  v81 = a1;
  v96 = a20;
  v102 = a19;
  v93 = a17;
  v94 = a15;
  v89 = a12;
  v98 = a11;
  v87 = a10;
  v88 = a9;
  LODWORD(v86) = a16;
  v91 = a13;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v79 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v83 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v99 = &v78 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v100 = &v78 - v31;
  v32 = sub_1E1AF3C3C();
  v92 = v32;
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v97 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v78 - v36;
  v38 = *(a14 + 32);
  v39 = (v21 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);
  *v39 = a2;
  v39[1] = a3;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_footer) = a13;
  LOBYTE(v39) = *(a14 + 40);
  v40 = v21 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect;
  v41 = *(a14 + 16);
  *v40 = *a14;
  *(v40 + 16) = v41;
  *(v40 + 32) = v38;
  *(v40 + 40) = v39;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferAction) = a18;
  v42 = v101;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = v102;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionLockup) = a17;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction) = v94;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell) = v86;
  sub_1E134FD1C(v42, v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v85 = v33;
  v43 = *(v33 + 16);
  v43(v37, v98, v32);
  v44 = v100;
  sub_1E134FD1C(v96, v100, &qword_1ECEB3B28, &unk_1E1B11460);
  v45 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

  v86 = a18;

  v46 = sub_1E175EC2C(v81);
  v48 = v47;

  *(v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v46;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v48;
  v49 = (v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  *v49 = v80;
  v49[1] = a3;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v95;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v82;
  v50 = v92;
  sub_1E134FD1C(v104, v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v84;
  swift_beginAccess();
  *(v21 + v45) = v90;

  *(v21 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v51 = v97;
  v43(v97, v37, v50);
  v52 = v99;
  sub_1E134FD1C(v44, v99, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v21 + 16) = 0;
  v53 = v50;
  v54 = v83;
  v43((v21 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v51, v53);
  *(v21 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v89;
  sub_1E134FD1C(v52, v54, &qword_1ECEB3B28, &unk_1E1B11460);
  v55 = sub_1E1AF39DC();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v54, 1, v55) == 1)
  {

    sub_1E1308058(v96, &qword_1ECEB3B28, &unk_1E1B11460);
    v58 = *(v85 + 8);
    v59 = v92;
    v58(v98, v92);
    sub_1E1308058(v101, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v99, &qword_1ECEB3B28, &unk_1E1B11460);
    v58(v97, v59);
    sub_1E1308058(v100, &qword_1ECEB3B28, &unk_1E1B11460);
    v58(v37, v59);
    sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v60 = v54;
    v61 = &qword_1ECEB3B28;
    v62 = &unk_1E1B11460;
  }

  else
  {
    v84 = v37;
    v63 = v85;
    v64 = qword_1EE1E3BC8;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v65, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v66 = v103;
    if (v103)
    {
    }

    v67 = *(v56 + 8);
    v67(v54, v55);
    v68 = v99;
    if (v66)
    {
      v69 = v79;
      sub_1E134FD1C(v99, v79, &qword_1ECEB3B28, &unk_1E1B11460);
      if (v57(v69, 1, v55) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v96, &qword_1ECEB3B28, &unk_1E1B11460);
        v75 = *(v63 + 8);
        v76 = v68;
        v77 = v92;
        v75(v98, v92);
        sub_1E1308058(v101, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v76, &qword_1ECEB3B28, &unk_1E1B11460);
        v75(v97, v77);
        sub_1E1308058(v100, &qword_1ECEB3B28, &unk_1E1B11460);
        v75(v84, v77);
        sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v67(v79, v55);
        return v21;
      }

      sub_1E1308058(v96, &qword_1ECEB3B28, &unk_1E1B11460);
      v70 = *(v63 + 8);
      v71 = v92;
      v70(v98, v92);
      sub_1E1308058(v101, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v68, &qword_1ECEB3B28, &unk_1E1B11460);
      v70(v97, v71);
      sub_1E1308058(v100, &qword_1ECEB3B28, &unk_1E1B11460);
      v70(v84, v71);
      sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v60 = v69;
      v61 = &qword_1ECEB3B28;
      v62 = &unk_1E1B11460;
    }

    else
    {

      sub_1E1308058(v96, &qword_1ECEB3B28, &unk_1E1B11460);
      v72 = *(v63 + 8);
      v73 = v92;
      v72(v98, v92);
      sub_1E1308058(v101, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v68, &qword_1ECEB3B28, &unk_1E1B11460);
      v72(v97, v73);
      sub_1E1308058(v100, &qword_1ECEB3B28, &unk_1E1B11460);
      v72(v84, v73);
      v60 = v104;
      v61 = &qword_1ECEB2DF0;
      v62 = &unk_1E1B02CE0;
    }
  }

  sub_1E1308058(v60, v61, v62);
  return v21;
}

uint64_t ArcadePage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v99 = a8;
  LODWORD(v84) = a7;
  v83 = a5;
  v97 = a4;
  v81 = a3;
  v80 = a2;
  v82 = a1;
  v93 = a12;
  v86 = a10;
  v87 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v79 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v78 - v24;
  v26 = sub_1E1AF3C3C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v78 - v30;
  v100 = &v78 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v78 - v33;
  v90 = a6;
  sub_1E134FD1C(a6, v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v85 = v27;
  v35 = *(v27 + 16);
  v89 = a11;
  v35(v34, a11, v26);
  v88 = a13;
  sub_1E134FD1C(a13, v25, &qword_1ECEB3B28, &unk_1E1B11460);
  type metadata accessor for ArcadePage(0);
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);
  *v37 = a2;
  v38 = v81;
  v37[1] = v81;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_footer) = 0;
  v39 = v36 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect;
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 40) = 3;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferAction) = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionLockup) = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction) = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell) = 0;
  sub_1E134FD1C(v103, v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v91 = v34;
  v35(v31, v34, v26);
  v92 = v25;
  v40 = v95;
  sub_1E134FD1C(v25, v95, &qword_1ECEB3B28, &unk_1E1B11460);
  v41 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

  v42 = sub_1E175EC2C(v82);
  v44 = v43;
  v45 = v26;

  *(v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v42;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v44;
  v46 = (v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  *v46 = v80;
  v46[1] = v38;
  v47 = v40;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v97;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v83;
  sub_1E134FD1C(v102, v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v84;
  swift_beginAccess();
  v48 = v100;
  *(v36 + v41) = v99;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v49 = v94;
  v35(v94, v48, v26);
  v50 = v96;
  sub_1E134FD1C(v40, v96, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v36 + 16) = 0;
  v35((v36 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v49, v26);
  *(v36 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v93;
  v51 = v50;
  v52 = v50;
  v53 = v98;
  sub_1E134FD1C(v52, v98, &qword_1ECEB3B28, &unk_1E1B11460);
  v54 = sub_1E1AF39DC();
  v84 = *(v54 - 8);
  v55 = *(v84 + 48);
  v56 = v53;
  v57 = v54;
  v58 = v56;
  if (v55() == 1)
  {

    sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
    v59 = *(v85 + 8);
    v59(v89, v45);
    sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v51, &qword_1ECEB3B28, &unk_1E1B11460);
    v59(v49, v45);
    sub_1E1308058(v47, &qword_1ECEB3B28, &unk_1E1B11460);
    v59(v100, v45);
    sub_1E1308058(v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v92, &qword_1ECEB3B28, &unk_1E1B11460);
    v59(v91, v45);
    sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v60 = v58;
    v61 = &qword_1ECEB3B28;
    v62 = &unk_1E1B11460;
  }

  else
  {
    v63 = v85;
    v64 = qword_1EE1E3BC8;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v65, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v66 = v101;
    v67 = v45;
    v68 = v84;
    if (v101)
    {
    }

    v71 = *(v68 + 8);
    v69 = v68 + 8;
    v70 = v71;
    v71(v98, v57);
    v72 = v96;
    if (v66)
    {
      v73 = v79;
      sub_1E134FD1C(v96, v79, &qword_1ECEB3B28, &unk_1E1B11460);
      if ((v55)(v73, 1, v57) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
        v77 = *(v63 + 8);
        v77(v89, v67);
        v84 = v69;
        sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v96, &qword_1ECEB3B28, &unk_1E1B11460);
        v77(v94, v67);
        sub_1E1308058(v95, &qword_1ECEB3B28, &unk_1E1B11460);
        v77(v100, v67);
        sub_1E1308058(v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v92, &qword_1ECEB3B28, &unk_1E1B11460);
        v77(v91, v67);
        sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v70(v79, v57);
        return v36;
      }

      sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
      v74 = *(v63 + 8);
      v74(v89, v67);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v96, &qword_1ECEB3B28, &unk_1E1B11460);
      v74(v94, v67);
      sub_1E1308058(v95, &qword_1ECEB3B28, &unk_1E1B11460);
      v74(v100, v67);
      sub_1E1308058(v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v92, &qword_1ECEB3B28, &unk_1E1B11460);
      v74(v91, v67);
      sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v60 = v73;
      v61 = &qword_1ECEB3B28;
      v62 = &unk_1E1B11460;
    }

    else
    {

      sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
      v75 = *(v63 + 8);
      v75(v89, v67);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v72, &qword_1ECEB3B28, &unk_1E1B11460);
      v75(v94, v67);
      sub_1E1308058(v95, &qword_1ECEB3B28, &unk_1E1B11460);
      v75(v100, v67);
      sub_1E1308058(v102, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v92, &qword_1ECEB3B28, &unk_1E1B11460);
      v75(v91, v67);
      v60 = v103;
      v61 = &qword_1ECEB2DF0;
      v62 = &unk_1E1B02CE0;
    }
  }

  sub_1E1308058(v60, v61, v62);
  return v36;
}

uint64_t ArcadePage.tabTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);

  return v1;
}

id ArcadePage.titleEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 16);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 24);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  return sub_1E13E653C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1E19ADB1C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v88 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v88 - v15;
  v17 = sub_1E1AF3C3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - v24;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v112 = v22;
    v113 = v16;
    v111 = a1;

    ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v29 = v28;
    ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v122 = v29;
    sub_1E1728208(v30);
    v101 = v122;
    v31 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
    if (v31)
    {
      v110 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
      v109 = v31;
    }

    else
    {
      v32 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
      v110 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
      v109 = v32;
    }

    v100 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
    sub_1E134FD1C(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &v122, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v33 = v111;
    if (*(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) == 1)
    {
      v99 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete);
    }

    else
    {
      v99 = 0;
    }

    v34 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    swift_beginAccess();
    v35 = *(v2 + v34);
    if (!v35)
    {
      swift_beginAccess();
    }

    v103 = v35;
    v36 = *(v2 + 16);
    v89 = v7;
    if (v36)
    {
      v37 = *(v33 + 16);

      v102 = sub_1E16F6684(v37);
    }

    else
    {
      v102 = *(v33 + 16);
    }

    v38 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v39 = *(v18 + 16);
    v106 = v18 + 16;
    v107 = v39;
    v39(v25, (v2 + v38), v17);
    v97 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    v40 = v18;
    v93 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_footer);
    v41 = v93;
    v42 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect);
    v43 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 8);
    v44 = v17;
    v45 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 16);
    v94 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 24);
    v96 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction);
    v98 = v40;
    v95 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell);
    v105 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionLockup);
    v46 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferAction);
    v118 = v44;
    v91 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 32);
    v47 = v91;
    v92 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferDisplayProperties);
    v48 = v92;
    v108 = v25;
    v49 = *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 40);
    v90 = v49;
    v104 = sub_1E1AF39DC();
    v117 = *(v104 - 8);
    v50 = v113;
    (*(v117 + 56))(v113, 1, 1, v104);
    type metadata accessor for ArcadePage(0);
    v2 = swift_allocObject();
    v51 = (v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);
    v52 = v109;
    *v51 = v110;
    v51[1] = v52;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_footer) = v41;
    v53 = v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect;
    *v53 = v42;
    *(v53 + 8) = v43;
    v54 = v94;
    *(v53 + 16) = v45;
    *(v53 + 24) = v54;
    *(v53 + 32) = v47;
    *(v53 + 40) = v49;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferAction) = v46;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = v48;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionLockup) = v105;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction) = v96;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell) = v95;
    sub_1E134FD1C(&v122, v121, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v55 = v112;
    v107(v112, v108, v118);
    v56 = v119;
    sub_1E134FD1C(v50, v119, &qword_1ECEB3B28, &unk_1E1B11460);
    v57 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
    v58 = v45;
    v59 = v56;
    v60 = v118;
    sub_1E13E653C(v42, v43, v58, v54, v91, v90);

    v61 = v109;

    v62 = sub_1E175EC2C(v101);
    v64 = v63;

    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v62;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v64;
    v65 = (v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    *v65 = v110;
    v65[1] = v61;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v100;
    sub_1E134FD1C(v121, v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v99;
    swift_beginAccess();
    *(v2 + v57) = v103;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
    v66 = v115;
    v67 = v107;
    v107(v115, v55, v60);
    v68 = v59;
    v69 = v116;
    sub_1E134FD1C(v68, v116, &qword_1ECEB3B28, &unk_1E1B11460);
    *(v2 + 16) = 0;
    v67(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v66, v60);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v97;
    v70 = v114;
    sub_1E134FD1C(v69, v114, &qword_1ECEB3B28, &unk_1E1B11460);
    v71 = *(v117 + 48);
    if (v71(v70, 1, v104) == 1)
    {

      sub_1E1308058(v69, &qword_1ECEB3B28, &unk_1E1B11460);
      v72 = v70;
      v73 = *(v98 + 8);
      v73(v66, v60);
      sub_1E1308058(v119, &qword_1ECEB3B28, &unk_1E1B11460);
      v73(v112, v60);
      sub_1E1308058(v121, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v113, &qword_1ECEB3B28, &unk_1E1B11460);
      v73(v108, v60);
    }

    else
    {
      v74 = v98;
      v75 = qword_1EE1E3BC8;

      if (v75 != -1)
      {
        swift_once();
      }

      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
      __swift_project_value_buffer(v76, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
      sub_1E1AF39EC();
      v77 = v120;
      v72 = v89;
      if (v120)
      {
      }

      v78 = *(v117 + 8);
      v79 = v104;
      v117 += 8;
      v78(v114, v104);
      v80 = v116;
      if (!v77)
      {

        sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
        v84 = *(v74 + 8);
        v85 = v118;
        v84(v115, v118);
        sub_1E1308058(v119, &qword_1ECEB3B28, &unk_1E1B11460);
        v84(v112, v85);
        sub_1E1308058(v121, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v113, &qword_1ECEB3B28, &unk_1E1B11460);
        v84(v108, v85);
        sub_1E1308058(&v122, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        return v2;
      }

      sub_1E134FD1C(v116, v72, &qword_1ECEB3B28, &unk_1E1B11460);
      v81 = v71(v72, 1, v79);
      v82 = v118;
      if (v81 != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
        v86 = *(v74 + 8);
        v86(v115, v82);
        sub_1E1308058(v119, &qword_1ECEB3B28, &unk_1E1B11460);
        v86(v112, v82);
        sub_1E1308058(v121, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v113, &qword_1ECEB3B28, &unk_1E1B11460);
        v86(v108, v82);
        sub_1E1308058(&v122, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v78(v72, v104);
        return v2;
      }

      sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
      v83 = *(v74 + 8);
      v83(v115, v82);
      sub_1E1308058(v119, &qword_1ECEB3B28, &unk_1E1B11460);
      v83(v112, v82);
      sub_1E1308058(v121, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v113, &qword_1ECEB3B28, &unk_1E1B11460);
      v83(v108, v82);
    }

    sub_1E1308058(&v122, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v72, &qword_1ECEB3B28, &unk_1E1B11460);
  }

  else
  {
  }

  return v2;
}

double sub_1E19AE984()
{

  sub_1E13E6F8C(*(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 40));

  return result;
}

uint64_t ArcadePage.deinit()
{
  v0 = GenericPage.deinit();

  sub_1E13E6F8C(*(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 40));

  return v0;
}

uint64_t ArcadePage.__deallocating_deinit()
{
  ArcadePage.deinit();

  return swift_deallocClassInstance();
}

id sub_1E19AEC04()
{
  result = [objc_allocWithZone(type metadata accessor for HostProcessIdentifier()) init];
  qword_1EE1ED2B0 = result;
  return result;
}

id HostProcessIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E19AECB0()
{
  result = sub_1E1AF5DBC();
  qword_1EE1ED2E8 = result;
  return result;
}

id sub_1E19AED30(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

void sub_1E19AED94(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (qword_1EE1ED2B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  __swift_project_value_buffer(v6, qword_1EE1ED2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v11 = MEMORY[0x1E69E6158];
  v9 = a1;
  v10 = a2;

  sub_1E1AF386C();
  sub_1E13E44F8(&v9);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v7 = (v2 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;

  v8 = [objc_opt_self() defaultCenter];
  if (qword_1EE1ED2E0 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_1EE1ED2E8 object:0 userInfo:0];
}

uint64_t sub_1E19AF0C0()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1E19AF194(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_1E19AF1F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1E19AF2C0()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v2 = v1[1];
  if (v2)
  {
    if (*v1 == 0xD000000000000016 && v2 == 0x80000001E1B6FA60)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1E1AF74AC();
    }
  }

  else
  {
    if (qword_1EE1ED2B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1E1AF591C();
    __swift_project_value_buffer(v5, qword_1EE1ED2C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1E19AF478()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE1ED2C0);
  __swift_project_value_buffer(v4, qword_1EE1ED2C0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

id HostProcessIdentifier.init()()
{
  v1 = &v0[OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId];
  v2 = type metadata accessor for HostProcessIdentifier();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id HostProcessIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostProcessIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

JSValue __swiftcall TopChartsPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_1E1AF748C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E1AF6C5C();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E19AF92C()
{
  result = qword_1ECEBBCC0[0];
  if (!qword_1ECEBBCC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEBBCC0);
  }

  return result;
}

unint64_t sub_1E19AF988()
{
  result = qword_1ECEB8528;
  if (!qword_1ECEB8528)
  {
    type metadata accessor for TopChartSegment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8528);
  }

  return result;
}

UIFont __swiftcall FontSource.font(withDesign:compatibleWith:)(UIFontDescriptorSystemDesign withDesign, UITraitCollection compatibleWith)
{
  v3 = v2;
  v6 = sub_1E1AF12AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF105C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, v3, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E69AB868])
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = objc_opt_self();
    v18 = [v17 preferredFontForTextStyle:v16 compatibleWithTraitCollection:compatibleWith.super.isa];
    v19 = [v18 fontDescriptor];
    v20 = [v19 fontDescriptorWithDesign_];

    if (v20)
    {
      v21 = [v17 fontWithDescriptor:v20 size:0.0];

      return v21;
    }
  }

  else
  {
    if (v15 != *MEMORY[0x1E69AB860])
    {
      v26 = [objc_opt_self() preferredFontForTextStyle_];
      (*(v11 + 8))(v14, v10);
      return v26;
    }

    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v23 = sub_1E1AF129C();
    v24 = [v23 fontDescriptorWithDesign_];

    if (v24)
    {
      v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];

      (*(v7 + 8))(v9, v6);
      return v25;
    }

    sub_1E13E472C();
    v18 = MEMORY[0x1E68FF8C0](v9, compatibleWith.super.isa);
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

id sub_1E19AFDC8(uint64_t a1)
{
  v2 = sub_1E1AF3E2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive);
  result = [objc_opt_self() defaultWorkspace];
  v8 = result;
  if (v6 == 1)
  {
    if (result)
    {
      v9 = &selRef_openSensitiveURL_withOptions_;
LABEL_6:
      v10 = sub_1E1AEFBEC();
      [v8 *v9];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
      (*(v3 + 104))(v5, *MEMORY[0x1E69AB010], v2);
      return sub_1E1AF582C();
    }

    __break(1u);
  }

  else if (result)
  {
    v9 = &selRef_openURL_withOptions_;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E19AFF50()
{
  result = qword_1ECEBA368;
  if (!qword_1ECEBA368)
  {
    type metadata accessor for ExternalUrlAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA368);
  }

  return result;
}

uint64_t AppEvent.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_title);

  return v1;
}

uint64_t AppEvent.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_subtitle);

  return v1;
}

uint64_t AppEvent.detail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_detail);

  return v1;
}

uint64_t AppEvent.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_kind);

  return v1;
}

uint64_t AppEvent.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit8AppEvent_startDate;
  v4 = sub_1E1AEFE6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEvent.requirements.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_requirements);

  return v1;
}

uint64_t AppEvent.children.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530, &qword_1E1B2D580);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_lockup);
  *(v1 + 56) = type metadata accessor for Lockup(0);
  *(v1 + 64) = sub_1E19B23D4(qword_1EE1E4F68, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v1 + 32) = v2;

  return v1;
}

uint64_t AppEvent.__allocating_init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char *a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v55 = a8;
  v54 = a7;
  v53 = a6;
  v52 = a5;
  v51 = a4;
  v63 = a23;
  v64 = a22;
  v62 = a21;
  v60 = a17;
  v61 = a20;
  v56 = a14;
  v57 = a15;
  v58 = a18;
  v59 = a16;
  v50 = sub_1E1AEFEAC();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v28 = *a19;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_moduleArtwork) = a2;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_moduleVideo) = a3;
  v29 = (v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_title);
  v30 = v52;
  *v29 = v51;
  v29[1] = v30;
  v31 = (v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_subtitle);
  v32 = v54;
  *v31 = v53;
  v31[1] = v32;
  v33 = (v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_detail);
  *v33 = v55;
  v33[1] = a9;
  v34 = (v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_kind);
  *v34 = a10;
  v34[1] = a11;
  v35 = OBJC_IVAR____TtC11AppStoreKit8AppEvent_startDate;
  v36 = sub_1E1AEFE6C();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v27 + v35, a12, v36);
  sub_1E134FD1C(a13, v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_endDate, &unk_1ECEBB780, &unk_1E1B029A0);
  v38 = (v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_requirements);
  v39 = v57;
  *v38 = v56;
  v38[1] = v39;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_lockup) = v59;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_hideLockupWhenNotInstalled) = v60;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_formattedDates) = v58;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_mediaOverlayStyle) = v28;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_includeBorderInDarkMode) = v61;
  v40 = v63;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_notificationConfig) = v62;
  sub_1E134FD1C(a1, v70, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134FD1C(v40, v27 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v70, &v67, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v68 + 1))
  {
    v41 = v68;
    *(v27 + 24) = v67;
    *(v27 + 40) = v41;
    *(v27 + 56) = v69;
  }

  else
  {
    v42 = v48;
    sub_1E1AEFE9C();
    v43 = sub_1E1AEFE7C();
    v45 = v44;
    (*(v49 + 8))(v42, v50);
    v65 = v43;
    v66 = v45;
    sub_1E1AF6F6C();
    sub_1E1308058(&v67, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v40, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(a13, &unk_1ECEBB780, &unk_1E1B029A0);
  (*(v37 + 8))(a12, v36);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v70, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v27 + 16) = 0;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_clickAction) = v64;
  return v27;
}

uint64_t AppEvent.init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char *a19, unsigned __int8 a20, char *a21, uint64_t a22, uint64_t a23)
{
  v24 = v23;
  v71 = a8;
  v63 = a7;
  v62 = a6;
  v61 = a5;
  v60 = a4;
  v69 = a23;
  v72 = a21;
  v73 = a22;
  LODWORD(v70) = a20;
  v68 = a17;
  v67 = a16;
  v65 = a15;
  v64 = a14;
  v59 = a11;
  v66 = a18;
  v58 = sub_1E1AEFEAC();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v55 - v30;
  v32 = *a19;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_moduleArtwork) = a2;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_moduleVideo) = a3;
  v33 = a1;
  v34 = (v23 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_title);
  v35 = v61;
  *v34 = v60;
  v34[1] = v35;
  v36 = (v23 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_subtitle);
  v37 = v63;
  *v36 = v62;
  v36[1] = v37;
  v38 = (v23 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_detail);
  *v38 = v71;
  v38[1] = a9;
  v39 = (v23 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_kind);
  v40 = v59;
  *v39 = a10;
  v39[1] = v40;
  v41 = OBJC_IVAR____TtC11AppStoreKit8AppEvent_startDate;
  v42 = sub_1E1AEFE6C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 16);
  v71 = a12;
  v44(v24 + v41, a12, v42);
  sub_1E134FD1C(a13, v24 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_endDate, &unk_1ECEBB780, &unk_1E1B029A0);
  v45 = (v24 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_requirements);
  v46 = v65;
  *v45 = v64;
  v45[1] = v46;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_lockup) = v67;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_hideLockupWhenNotInstalled) = v68;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_formattedDates) = v66;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_mediaOverlayStyle) = v32;
  v47 = v69;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_includeBorderInDarkMode) = v70;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_notificationConfig) = v72;
  v70 = v33;
  sub_1E134FD1C(v33, v82, &unk_1ECEB5670, qword_1E1B03EC0);
  v72 = v31;
  sub_1E134FD1C(v47, v31, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v82, &v76, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v77 + 1))
  {
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  else
  {
    v48 = v56;
    sub_1E1AEFE9C();
    v49 = sub_1E1AEFE7C();
    v51 = v50;
    (*(v57 + 8))(v48, v58);
    v74 = v49;
    v75 = v51;
    sub_1E1AF6F6C();
    sub_1E1308058(&v76, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v47, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(a13, &unk_1ECEBB780, &unk_1E1B029A0);
  (*(v43 + 8))(v71, v42);
  sub_1E1308058(v70, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v82, &unk_1ECEB5670, qword_1E1B03EC0);
  v52 = v80;
  *(v24 + 24) = v79;
  *(v24 + 40) = v52;
  *(v24 + 56) = v81;
  *(v24 + 16) = 0;
  v53 = v72;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_clickAction) = v73;
  sub_1E134B7C8(v53, v24 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics);
  return v24;
}

uint64_t AppEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v137 = a2;
  v135 = v3;
  v134 = *v3;
  v138 = sub_1E1AF39DC();
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v125 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v101[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v127 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v101[-v11];
  v13 = sub_1E1AEFE6C();
  v132 = *(v13 - 8);
  v133 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v101[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v101[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v101[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v101[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v101[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v101[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v101[-v31];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v101[-v34];
  v139 = a1;
  sub_1E1AF381C();
  v122 = sub_1E1AF37CC();
  v37 = v36;
  v124 = v16;
  v40 = *(v16 + 8);
  v38 = v16 + 8;
  v39 = v40;
  v40(v35, v15);
  if (!v37)
  {
    v53 = sub_1E1AF5A7C();
    sub_1E19B23D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v55 = v54;
    *v54 = 0x656C746974;
    v54[1] = 0xE500000000000000;
LABEL_8:
    v54[2] = v134;
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69AB690], v53);
    swift_willThrow();
    (*(v136 + 8))(v137, v138);
    v39(v139, v15);
LABEL_11:
    swift_deallocPartialClassInstance();
    return v38;
  }

  v131 = v37;
  sub_1E1AF381C();
  v118 = sub_1E1AF37CC();
  v42 = v41;
  v39(v32, v15);
  if (!v42)
  {

    v53 = sub_1E1AF5A7C();
    sub_1E19B23D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v55 = v54;
    *v54 = 1684957547;
    v54[1] = 0xE400000000000000;
    goto LABEL_8;
  }

  v119 = v42;
  v43 = v39;
  sub_1E1AF381C();
  v116 = sub_1E1AF37CC();
  v45 = v44;
  v39(v29, v15);
  v46 = v38;
  v47 = v136;
  if (!v45)
  {

    v50 = sub_1E1AF5A7C();
    sub_1E19B23D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v52 = v51;
    *v51 = 0x6C6961746564;
    v51[1] = 0xE600000000000000;
    goto LABEL_10;
  }

  v117 = v45;
  v38 = 0xE900000000000065;
  sub_1E1AF381C();
  sub_1E1AF371C();
  v43(v26, v15);
  v49 = v132;
  v48 = v133;
  if ((*(v132 + 48))(v12, 1, v133) == 1)
  {

    sub_1E1308058(v12, &unk_1ECEBB780, &unk_1E1B029A0);
    v50 = sub_1E1AF5A7C();
    sub_1E19B23D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v52 = v51;
    *v51 = 0x7461447472617473;
    v51[1] = 0xE900000000000065;
LABEL_10:
    v51[2] = v134;
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69AB690], v50);
    swift_willThrow();
    (*(v47 + 8))(v137, v138);
    v43(v139, v15);
    goto LABEL_11;
  }

  v112 = v43;
  v113 = v46;
  v111 = v15;
  v57 = v49;
  v38 = v130;
  (*(v49 + 32))(v130, v12, v48);
  type metadata accessor for Lockup(0);
  v58 = v128;
  sub_1E1AF381C();
  v59 = v47 + 16;
  v60 = *(v47 + 16);
  v61 = v129;
  v62 = v47;
  v63 = v137;
  v64 = v138;
  v115 = v59;
  v114 = v60;
  v60(v129, v137, v138);
  sub_1E19B23D4(&qword_1EE1E4F60, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  sub_1E1AF464C();
  if (!v140)
  {

    v69 = sub_1E1AF5A7C();
    sub_1E19B23D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v70 = 0x70756B636F6CLL;
    v71 = v134;
    v70[1] = 0xE600000000000000;
    v70[2] = v71;
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x1E69AB690], v69);
    swift_willThrow();
    (*(v62 + 8))(v63, v64);
    v112(v139, v111);
    (*(v57 + 8))(v38, v133);
    goto LABEL_11;
  }

  v109 = v140;
  type metadata accessor for Artwork(0);
  v38 = v139;
  sub_1E1AF381C();
  v65 = v114;
  v114(v61, v63, v64);
  sub_1E19B23D4(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_1E1AF464C();
  v110 = v140;
  type metadata accessor for Video(0);
  sub_1E1AF381C();
  v65(v61, v63, v64);
  sub_1E19B23D4(&qword_1EE1E52D0, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_1E1AF464C();
  if (!(v110 | v140))
  {

    v66 = sub_1E1AF5A7C();
    sub_1E19B23D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v67 = MEMORY[0x1E69E7CC0];
    *v68 = v134;
    v68[1] = v67;
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69AB698], v66);
    swift_willThrow();

    (*(v136 + 8))(v63, v64);
    v112(v139, v111);
    (*(v132 + 8))(v130, v133);
    goto LABEL_11;
  }

  v72 = v63;
  v73 = v139;
  v105 = v140;
  sub_1E1AF381C();
  v134 = sub_1E1AF37CC();
  v108 = v74;
  v75 = v111;
  v76 = v58;
  v77 = v112;
  v112(v58, v111);
  sub_1E1AF381C();
  sub_1E1AF371C();
  v77(v58, v75);
  sub_1E1AF381C();
  v107 = sub_1E1AF37CC();
  v106 = v78;
  v77(v58, v75);
  v79 = v120;
  sub_1E1AF381C();
  v104 = sub_1E1AF370C();
  v77(v79, v75);
  sub_1E1AF381C();
  v114(v61, v72, v138);
  type metadata accessor for AppEventFormattedDate(0);
  sub_1E19B23D4(&unk_1EE1E1570, type metadata accessor for AppEventFormattedDate, &protocol conformance descriptor for AppEventFormattedDate);
  v120 = sub_1E1AF630C();
  sub_1E1AF381C();
  sub_1E14056C8();
  sub_1E1AF369C();
  v77(v76, v75);
  v103 = v140;
  v80 = v121;
  sub_1E1AF381C();
  v102 = sub_1E1AF370C();
  v77(v80, v75);
  type metadata accessor for AppEventNotificationConfig(0);
  sub_1E1AF381C();
  v114(v61, v137, v138);
  sub_1E19B23D4(&unk_1EE1E1360, type metadata accessor for AppEventNotificationConfig, &protocol conformance descriptor for AppEventNotificationConfig);
  v82 = v137;
  v81 = v138;
  sub_1E1AF464C();
  v83 = v135;
  *(v135 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_moduleArtwork) = v110;
  v84 = v73;
  v85 = v140;
  *(v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_moduleVideo) = v105;
  v86 = (v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_title);
  v87 = v131;
  *v86 = v122;
  v86[1] = v87;
  v88 = (v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_subtitle);
  v89 = v108;
  *v88 = v134;
  v88[1] = v89;
  v90 = (v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_detail);
  v91 = v117;
  *v90 = v116;
  v90[1] = v91;
  v92 = (v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_kind);
  v93 = v119;
  *v92 = v118;
  v92[1] = v93;
  v94 = v132;
  v95 = v130;
  (*(v132 + 16))(v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_startDate, v130, v133);
  sub_1E134FD1C(v127, v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_endDate, &unk_1ECEBB780, &unk_1E1B029A0);
  v96 = (v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_requirements);
  v97 = v106;
  *v96 = v107;
  v96[1] = v97;
  *(v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_lockup) = v109;
  *(v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_hideLockupWhenNotInstalled) = v104 & 1;
  *(v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_formattedDates) = v120;
  *(v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_mediaOverlayStyle) = v103;
  *(v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_includeBorderInDarkMode) = v102 & 1;
  *(v83 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_notificationConfig) = v85;
  v98 = v123;
  (*(v124 + 16))(v123, v84, v75);
  v38 = v125;
  v114(v125, v82, v81);
  v99 = v126;
  v100 = AppPromotion.init(deserializing:using:)(v98, v38);
  if (!v99)
  {
    v38 = v100;
  }

  (*(v136 + 8))(v82, v81);
  v112(v139, v75);
  sub_1E1308058(v127, &unk_1ECEBB780, &unk_1E1B029A0);
  (*(v94 + 8))(v95, v133);
  return v38;
}

double sub_1E19B1FC4()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8AppEvent_startDate;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_endDate, &unk_1ECEBB780, &unk_1E1B029A0);

  return result;
}

uint64_t AppEvent.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  v1 = OBJC_IVAR____TtC11AppStoreKit8AppEvent_startDate;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_endDate, &unk_1ECEBB780, &unk_1E1B029A0);

  return v0;
}

uint64_t AppEvent.__deallocating_deinit()
{
  AppEvent.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E19B22CC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530, &qword_1E1B2D580);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_lockup);
  *(v2 + 56) = type metadata accessor for Lockup(0);
  *(v2 + 64) = sub_1E19B23D4(qword_1EE1E4F68, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_1E19B237C(uint64_t a1)
{
  result = sub_1E19B23D4(qword_1EE1E10E0, type metadata accessor for AppEvent, &protocol conformance descriptor for AppPromotion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E19B23D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AppEvent(uint64_t a1)
{
  result = qword_1EE1E10C8;
  if (!qword_1EE1E10C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E19B2470(uint64_t a1)
{
  sub_1E1AEFE6C();
  if (v1 <= 0x3F)
  {
    sub_1E13A8B64(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of AppEvent.__allocating_init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)()
{
  v2 = *(v0 + 256);

  return v2();
}

uint64_t Artwork.Style.imageType(isPlaceholder:)(char a1)
{
  result = *v1;
  if (*v1 > 4u)
  {
    if ((result - 6) >= 2)
    {
      if (result == 5)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    return 0;
  }

  if (*v1 <= 1u)
  {
    if (*v1)
    {
      return result;
    }

    return 0;
  }

  if (result == 2)
  {
    if (a1)
    {
      return 1;
    }
  }

  else if (result == 3 || (a1 & 1) != 0)
  {
    return 3;
  }

  return 7;
}

uint64_t TabsInfoProvider.init(tabsBagKey:defaultTabIdentifiers:fallbackTabs:overrideTabs:tabsToFlowActionsConverter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a6;
  a8[4] = a7;
  a8[5] = a4;
  a8[6] = a5;
  return result;
}

uint64_t TabsInfoProvider.makeTabs(asPartOf:)(void *a1, uint64_t a2)
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 5);
  type metadata accessor for ASKBagContract(0);
  v11 = *v2;
  sub_1E1AF416C();
  v7 = ASKBagContract.tabs(withFallback:bagKey:)(v4, v11);
  v8 = v6(a2, v7);

  v9 = v5(a2, v8);
  sub_1E19B3078(v8, *&v11);
  sub_1E1AF6F6C();

  return v9;
}

uint64_t TabsInfoProvider.setupFlowAuthority(asPartOf:selectedTabId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v8 = *(v3 + 4);
  v7 = *(v3 + 5);
  v9 = *(v3 + 6);
  type metadata accessor for ASKBagContract(0);
  v16 = *v3;
  sub_1E1AF416C();
  v10 = ASKBagContract.tabs(withFallback:bagKey:)(v6, v16);
  v11 = v7(a2, v10);

  v5(a2, v11);
  v17[2] = v6;
  v17[3] = v5;
  v17[4] = v8;
  v17[5] = v7;
  v17[6] = v9;
  sub_1E19B3078(v11, *&v16);
  v17[0] = v12;
  v17[1] = v13;
  sub_1E1AF6F6C();

  sub_1E134E724(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBD48, &qword_1E1B491D0);
  sub_1E1AF2C7C();
  sub_1E134FD1C(a3, v17, &qword_1ECEBBD48, &qword_1E1B491D0);
  type metadata accessor for FlowAction(0);
  sub_1E19B3714(&qword_1ECEBBD50, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  sub_1E19B3714(&qword_1ECEBBD58, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  sub_1E1AF0C8C();
  sub_1E134B88C(v18);
  return v11;
}

uint64_t sub_1E19B29C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_1E1AEFE6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - v9;
  v10 = sub_1E1AF013C();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBD60, qword_1E1B49250);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5AF0, &qword_1E1B192E8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v53 = a1;
  v24 = sub_1E1720A68();
  if (!v25)
  {
    return 0;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_16;
  }

  v46 = v4;
  v47 = v6;
  v48 = v5;
  v49 = v25;
  v45 = v24;
  sub_1E1AF012C();
  v27 = *(v54 + 56);
  v27(v23, 0, 1, v10);
  v28 = sub_1E1AF5DBC();
  v29 = [v53 stringForKey_];

  if (v29)
  {
    sub_1E1AF5DFC();

    sub_1E1AF00FC();
  }

  else
  {
    v27(v20, 1, 1, v10);
  }

  v31 = *(v12 + 48);
  sub_1E134FD1C(v23, v14, &qword_1ECEB5AF0, &qword_1E1B192E8);
  sub_1E134FD1C(v20, &v14[v31], &qword_1ECEB5AF0, &qword_1E1B192E8);
  v32 = *(v54 + 48);
  if (v32(v14, 1, v10) == 1)
  {
    sub_1E1308058(v20, &qword_1ECEB5AF0, &qword_1E1B192E8);
    sub_1E1308058(v23, &qword_1ECEB5AF0, &qword_1E1B192E8);
    if (v32(&v14[v31], 1, v10) == 1)
    {
      sub_1E1308058(v14, &qword_1ECEB5AF0, &qword_1E1B192E8);
      goto LABEL_19;
    }

LABEL_15:
    sub_1E1308058(v14, &qword_1ECEBBD60, qword_1E1B49250);
    goto LABEL_16;
  }

  sub_1E134FD1C(v14, v17, &qword_1ECEB5AF0, &qword_1E1B192E8);
  if (v32(&v14[v31], 1, v10) == 1)
  {
    sub_1E1308058(v20, &qword_1ECEB5AF0, &qword_1E1B192E8);
    sub_1E1308058(v23, &qword_1ECEB5AF0, &qword_1E1B192E8);
    (*(v54 + 8))(v17, v10);
    goto LABEL_15;
  }

  v33 = v54;
  v34 = &v14[v31];
  v35 = v52;
  (*(v54 + 32))(v52, v34, v10);
  sub_1E19B3714(&qword_1ECEBBD68, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
  v36 = sub_1E1AF5DAC();
  v37 = *(v33 + 8);
  v37(v35, v10);
  sub_1E1308058(v20, &qword_1ECEB5AF0, &qword_1E1B192E8);
  sub_1E1308058(v23, &qword_1ECEB5AF0, &qword_1E1B192E8);
  v37(v17, v10);
  sub_1E1308058(v14, &qword_1ECEB5AF0, &qword_1E1B192E8);
  if ((v36 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v38 = v46;
  sub_1E1720B64(v46);
  v40 = v47;
  v39 = v48;
  if ((*(v47 + 48))(v38, 1, v48) == 1)
  {

    sub_1E1308058(v38, &unk_1ECEBB780, &unk_1E1B029A0);
    return 0;
  }

  v41 = v50;
  (*(v40 + 32))(v50, v38, v39);
  v42 = v51;
  sub_1E1AEFE5C();
  v43 = Date.hasPassed(hourOfDay:since:)(3, v41);
  v44 = *(v40 + 8);
  v44(v42, v39);
  v44(v41, v39);
  if (v43)
  {
LABEL_16:

    return 0;
  }

  return v45;
}

void sub_1E19B3078(uint64_t a1, double a2)
{
  v4 = type metadata accessor for StoreTab(0);
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 24);
  v10 = *(v2 + 40);
  v11 = *(v2 + 8);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v44 = *(v2 + 40);
    v45 = v9;
    v46 = v8;
    v47 = a1;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v12, 0);
    v13 = v49;
    v14 = (v11 + 40);
    while (1)
    {
      v15 = *v14;
      if (*v14 <= 4)
      {
        if (v15 <= 1)
        {
          if (v15)
          {
            if (v15 != 1)
            {
LABEL_28:
              v16 = *(v14 - 1);
              v17 = *v14;
              goto LABEL_29;
            }

            v17 = 0xE500000000000000;
            v16 = 0x73656D6167;
          }

          else
          {
            v17 = 0xE500000000000000;
            v16 = 0x7961646F74;
          }
        }

        else
        {
          switch(v15)
          {
            case 2:
              v17 = 0xE400000000000000;
              v16 = 1936748641;
              break;
            case 3:
              v17 = 0xE700000000000000;
              v16 = 0x73657461647075;
              break;
            case 4:
              v17 = 0xE600000000000000;
              v16 = 0x686372616573;
              break;
            default:
              goto LABEL_28;
          }
        }
      }

      else if (v15 > 7)
      {
        switch(v15)
        {
          case 8:
            v17 = 0xE600000000000000;
            v16 = 0x737472616863;
            break;
          case 9:
            v16 = 0x6573616863727570;
            v17 = 0xE900000000000064;
            break;
          case 10:
            v17 = 0xE900000000000073;
            v16 = 0x64616F6C6E776F64;
            break;
          default:
            goto LABEL_28;
        }
      }

      else
      {
        switch(v15)
        {
          case 5:
            v17 = 0xE600000000000000;
            v16 = 0x656461637261;
            break;
          case 6:
            v17 = 0xE800000000000000;
            v16 = 0x6465727574616566;
            break;
          case 7:
            v16 = 0x69726F6765746163;
            v17 = 0xEA00000000007365;
            break;
          default:
            goto LABEL_28;
        }
      }

LABEL_29:
      sub_1E13BC260(*(v14 - 1), v15);
      v49 = v13;
      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1E135C088((v18 > 1), v19 + 1, 1);
        v13 = v49;
      }

      v14 += 2;
      *(v13 + 2) = v19 + 1;
      v20 = &v13[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      if (!--v12)
      {
        a1 = v47;
        v9 = v45;
        v8 = v46;
        v10 = v44;
        break;
      }
    }
  }

  v49 = v7;
  v50 = v8;
  v51 = v9;
  v52 = v10;
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = sub_1E19B29C0(v21);
  v24 = v23;

  if (v24)
  {
    v26 = *(v13 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v26 >= *(v13 + 3) >> 1)
    {
      v13 = sub_1E130C06C(isUniquelyReferenced_nonNull_native, v26 + 1, 1, v13);
      v53 = v13;
    }

    sub_1E14F3D98(0, 0, 1, v22, v24);
  }

  v28 = *(a1 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v28, 0);
    v29 = v49;
    v31 = a1 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v32 = *(v48 + 72);
    do
    {
      sub_1E14B16F8(v31, v6, v30);
      v33 = v6[1];
      if (v33 <= 4)
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v35 = 0xE400000000000000;
            v34 = 1936748641;
          }

          else if (v33 == 3)
          {
            v35 = 0xE700000000000000;
            v34 = 0x73657461647075;
          }

          else
          {
            v35 = 0xE600000000000000;
            v34 = 0x686372616573;
          }

          goto LABEL_64;
        }

        if (v33)
        {
          if (v33 != 1)
          {
LABEL_63:
            v34 = *v6;
            v35 = v6[1];
            goto LABEL_64;
          }

          v35 = 0xE500000000000000;
          v34 = 0x73656D6167;
        }

        else
        {
          v35 = 0xE500000000000000;
          v34 = 0x7961646F74;
        }
      }

      else
      {
        if (v33 <= 7)
        {
          if (v33 == 5)
          {
            v35 = 0xE600000000000000;
            v34 = 0x656461637261;
          }

          else if (v33 == 6)
          {
            v35 = 0xE800000000000000;
            v34 = 0x6465727574616566;
          }

          else
          {
            v34 = 0x69726F6765746163;
            v35 = 0xEA00000000007365;
          }

          goto LABEL_64;
        }

        switch(v33)
        {
          case 8:
            v35 = 0xE600000000000000;
            v34 = 0x737472616863;
            break;
          case 9:
            v34 = 0x6573616863727570;
            v35 = 0xE900000000000064;
            break;
          case 10:
            v35 = 0xE900000000000073;
            v34 = 0x64616F6C6E776F64;
            break;
          default:
            goto LABEL_63;
        }
      }

LABEL_64:
      v36 = sub_1E13BC260(*v6, v33);
      v25 = sub_1E14B17D4(v6, v36);
      v49 = v29;
      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      if (v38 >= v37 >> 1)
      {
        v25 = sub_1E135C088((v37 > 1), v38 + 1, 1);
        v29 = v49;
      }

      *(v29 + 16) = v38 + 1;
      v39 = v29 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v35;
      v31 += v32;
      --v28;
    }

    while (v28);
  }

  v40 = *(v13 + 2);
  if (v40)
  {
    v41 = 0;
    v42 = (v13 + 40);
    while (v41 < *(v13 + 2))
    {
      v43 = *v42;
      v49 = *(v42 - 1);
      *&v50 = v43;
      MEMORY[0x1EEE9AC00](v25);
      *(&v44 - 2) = &v49;

      if (sub_1E14F2168(sub_1E14A937C, (&v44 - 2), v29))
      {

        goto LABEL_75;
      }

      ++v41;
      v42 += 2;
      if (v40 == v41)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_72:

    if (*(v29 + 16))
    {
    }

LABEL_75:
  }
}

uint64_t sub_1E19B3714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EditorialLink.__allocating_init(id:descriptionText:summaryText:clickAction:linkPresentationEnabled:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v32 = a2;
  v33 = a3;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_1E134FD1C(a1, &v36, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 64) = v36;
    *(v18 + 80) = v19;
    *(v18 + 96) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v30 = a8;
    v31 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v34 = v23;
    v35 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a8 = v30;
    a4 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(a8, v18 + OBJC_IVAR____TtC11AppStoreKit13EditorialLink_impressionMetrics);
  v27 = v33;
  *(v18 + 16) = v32;
  *(v18 + 24) = v27;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 56) = a6;
  *(v18 + 48) = a7 & 1;
  return v18;
}

uint64_t EditorialLink.init(id:descriptionText:summaryText:clickAction:linkPresentationEnabled:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = v8;
  v33 = a2;
  v34 = a3;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v37, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v31 = a8;
    v32 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v35 = v23;
    v36 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a8 = v31;
    a4 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v27 = v41;
  *(v9 + 64) = v40;
  *(v9 + 80) = v27;
  *(v9 + 96) = v42;
  sub_1E134B7C8(a8, v9 + OBJC_IVAR____TtC11AppStoreKit13EditorialLink_impressionMetrics);
  v28 = v34;
  *(v9 + 16) = v33;
  *(v9 + 24) = v28;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 56) = a6;
  *(v9 + 48) = a7 & 1;
  return v9;
}

uint64_t EditorialLink.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EditorialLink.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t EditorialLink.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v64 = sub_1E1AF39DC();
  v55 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v57 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = v50 - v9;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E1AF380C();
  v14 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v50 - v20;
  sub_1E1AF381C();
  v22 = sub_1E1AF37CC();
  if (v23)
  {
    v59 = v22;
    v60 = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v25 = v10;
    v27 = v26;
    (*(v11 + 8))(v13, v25);
    v59 = v24;
    v60 = v27;
  }

  sub_1E1AF6F6C();
  v28 = *(v14 + 8);
  v50[1] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51 = v28;
  v28(v21, v56);
  v29 = v62;
  *(v3 + 64) = v61;
  *(v3 + 80) = v29;
  *(v3 + 96) = v63;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v50[0] = a1;
  v30 = *(v55 + 16);
  v31 = v58;
  v32 = v64;
  v30(v53, v58, v64);
  v33 = v52;
  sub_1E1AF464C();
  sub_1E134B7C8(v33, v3 + OBJC_IVAR____TtC11AppStoreKit13EditorialLink_impressionMetrics);
  v34 = v57;
  v30(v57, v31, v32);
  v35 = v50[0];
  sub_1E1AF381C();
  v36 = sub_1E1AF37CC();
  v38 = v37;
  v39 = v56;
  v40 = v51;
  v51(v18, v56);
  *(v3 + 16) = v36;
  *(v3 + 24) = v38;
  sub_1E1AF381C();
  v41 = sub_1E1AF37CC();
  v43 = v42;
  v40(v18, v39);
  *(v3 + 32) = v41;
  *(v3 + 40) = v43;
  type metadata accessor for Action(0);
  sub_1E1AF381C();
  v44 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v34);
  v40(v18, v39);
  *(v3 + 56) = v44;
  v45 = v54;
  v46 = v35;
  sub_1E1AF381C();
  LODWORD(v53) = sub_1E1AF370C();
  v47 = *(v55 + 8);
  v48 = v64;
  v47(v58, v64);
  v40(v46, v39);
  v40(v45, v39);
  v47(v57, v48);
  *(v3 + 48) = v53 & 1;
  return v3;
}

uint64_t EditorialLink.descriptionText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditorialLink.summaryText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1E19B4190@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 56) && (type metadata accessor for ExternalUrlAction(0), (v3 = swift_dynamicCastClass()) != 0))
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url;
    v6 = sub_1E1AEFCCC();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a1, v4 + v5, v6);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_1E1AEFCCC();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

void *EditorialLink.deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13EditorialLink_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t EditorialLink.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13EditorialLink_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

unint64_t sub_1E19B4400()
{
  result = qword_1EE1F52F0;
  if (!qword_1EE1F52F0)
  {
    type metadata accessor for EditorialLink(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F52F0);
  }

  return result;
}

uint64_t type metadata accessor for EditorialLink(uint64_t a1)
{
  result = qword_1EE1F52E0;
  if (!qword_1EE1F52E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E19B44B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for EditorialLink(0);
  v7 = swift_allocObject();
  result = EditorialLink.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E19B4564(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_1ECEF4D58);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.columnCount.getter()
{
  v1 = v0 + qword_1ECEF4D60;
  swift_beginAccess();
  return *v1;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E19B50EC(a1, a2);

  return v4;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.init(objectGraph:pageUrl:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E19B50EC(a1, a2);

  return v2;
}

double sub_1E19B4838(void *a1, char a2)
{
  sub_1E1A814C8(a1, a2);
  v4 = *(a1 + qword_1EE215658);
  v5 = *(a1 + qword_1EE215658 + 8);
  v6 = v2 + qword_1ECEF4D60;
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  v7 = *(a1 + qword_1EE215648);
  v8 = qword_1ECEF4D68;
  swift_beginAccess();
  *(v2 + v8) = v7;

  return result;
}

uint64_t sub_1E19B48F8(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v50 = v1[2];
  sub_1E134FD1C(v1 + qword_1EE2169A8, &v44 - v11, &unk_1ECEB4B60, &unk_1E1B02620);
  swift_beginAccess();
  v13 = v1[3];
  swift_beginAccess();
  v14 = v1[4];
  type metadata accessor for SearchChartsAndCategoriesDiffablePageContentPresenter(0);
  v15 = swift_allocObject();
  v45 = v12;
  sub_1E134FD1C(v12, v9, &unk_1ECEB4B60, &unk_1E1B02620);
  v16 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v17 = swift_allocObject();
  v46 = v17;
  sub_1E13E23F8(v9, v17 + v16);
  *(v17 + ((v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v44 = v6;
  sub_1E134FD1C(v12, v6, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E134FD1C(v6, v51, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v15 + qword_1EE1E9D48) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v15 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v19 = qword_1EE2166A0;
  v47 = v14;

  swift_retain_n();
  v48 = v13;

  *(v15 + v19) = sub_1E159D6F0(v18);
  v20 = (v15 + qword_1EE1E9E00);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_1EE1E9EA0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_1EE1E9E08);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_1EE1E9DF0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_1EE1E9E98);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v15 + qword_1EE216698);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  *(v15 + qword_1EE2166D0) = 0;
  *(v15 + qword_1EE1E9D50) = 0;
  *(v15 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v15 + qword_1EE2166C8) = 0;
  v26 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30F8, &qword_1E1B06090);
  swift_allocObject();
  *(v15 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590, &unk_1E1B029B0);
  swift_allocObject();
  *(v15 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3110, &unk_1E1B494B0);
  swift_allocObject();
  *(v15 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE2166B0;
  swift_allocObject();
  *(v15 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v15 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  v32 = sub_1E1AF5BEC();
  sub_1E1308058(v44, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v45, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v15 + v31) = v32;
  v33 = qword_1EE1E9DD8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v35 = *(*(v34 - 8) + 56);
  v35(v15 + v33, 1, 1, v34);
  v36 = v34;
  v37 = v49;
  v35(v15 + qword_1EE1E9DE0, 1, 1, v36);
  v38 = v51;
  *(v15 + 16) = v50;
  sub_1E13E23F8(v38, v15 + qword_1EE216678);
  v39 = v46;
  *v20 = sub_1E1722ED4;
  v20[1] = v39;
  *v22 = 0;
  v22[1] = 0;
  if (v37)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v37;
    v41 = sub_1E1445E6C;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  *v21 = v41;
  v21[1] = v40;
  *v23 = 0;
  v23[1] = 0;
  *v24 = 0;
  v24[1] = 0;
  v42 = v47;
  *(v15 + qword_1EE1E9E90) = v48;
  *(v15 + qword_1EE216690) = v42;

  return v15;
}

Swift::Void __swiftcall SearchChartsAndCategoriesDiffablePagePresenter.updateTab(for:)(Swift::String a1)
{
  if (*(v1 + qword_1EE2169B8))
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBD70, qword_1E1B49400);
    if (swift_dynamicCastClass())
    {

      sub_1E19952E0(countAndFlagsBits, object);
    }
  }
}

double sub_1E19B4FC0()
{

  return result;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DBEFC();

  return v0;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.__deallocating_deinit()
{
  sub_1E13DBEFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1E19B50EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v43 = a1;
  v5 = sub_1E1AF68DC();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v41 = &v39 - v11;
  v13 = (v2 + qword_1ECEF4D58);
  *v13 = 0;
  v13[1] = 0;
  v14 = v2 + qword_1ECEF4D60;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v2 + qword_1ECEF4D68) = 0;
  sub_1E134FD1C(a2, v12, &unk_1ECEB4B60, &unk_1E1B02620);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  *(v2 + qword_1EE2169B8) = 0;
  *(v2 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v2 + qword_1EE1ED400) = 0;
  v15 = *(*v2 + 640);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30F0, &qword_1E1B494C0);
  v17 = *(*(v16 - 8) + 56);
  v17(v2 + v15, 1, 1, v16);
  v18 = *(*v2 + 648);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500, &qword_1E1B210A0);
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  v20 = *(*v2 + 656);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30E0, &unk_1E1B06070);
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  v17(v3 + *(*v3 + 664), 1, 1, v16);
  v22 = *(*v2 + 672);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508, &unk_1E1B028C0);
  (*(*(v23 - 8) + 56))(v2 + v22, 1, 1, v23);
  v24 = *(*v2 + 680);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510, &unk_1E1B05F20);
  (*(*(v25 - 8) + 56))(v2 + v24, 1, 1, v25);
  v26 = *(*v2 + 688);
  sub_1E1361A80();
  sub_1E1AF322C();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1E1408288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1429210();
  sub_1E1AF6EEC();
  (*(v39 + 104))(v7, *MEMORY[0x1E69E8090], v40);
  *(v2 + v26) = sub_1E1AF692C();
  sub_1E13C6184(v3 + *(*v3 + 696));
  v27 = (v3 + *(*v3 + 704));
  *v27 = 0u;
  v27[1] = 0u;
  *(v27 + 25) = 0u;
  v28 = *(*v2 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8, &unk_1E1B05F30);
  swift_allocObject();
  *(v2 + v28) = sub_1E1AF5BEC();
  v29 = *(*v2 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0, &qword_1E1B02C70);
  swift_allocObject();
  *(v2 + v29) = sub_1E1AF5BEC();
  v30 = *(*v2 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v2 + v30) = sub_1E1AF5BEC();
  *(v2 + *(*v2 + 736)) = 0;
  v31 = (v3 + *(*v3 + 752));
  *v31 = 0;
  v31[1] = 0;
  v32 = v41;
  sub_1E134FD1C(v41, v2 + qword_1EE2169A8, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E134FD1C(v45, v3 + *(*v3 + 744), &qword_1ECEB24F8, qword_1E1B1C080);
  v33 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter(0));

  *(v2 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v34);

  v36 = sub_1E13C5A3C(v35, 0, 0, 0);
  v37 = *(*v36 + 1112);

  *(v36 + qword_1EE2169B8) = v37(0);

  sub_1E13D1E24(0);

  sub_1E1308058(v42, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v45, &qword_1ECEB24F8, qword_1E1B1C080);
  sub_1E1308058(v32, &unk_1ECEB4B60, &unk_1E1B02620);
  return v36;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter(uint64_t a1)
{
  result = qword_1ECEBBD78;
  if (!qword_1ECEBBD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E19B5970(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1E1894228(&v10, *(*(a1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1E19B5A4C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1E18943C0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1E19B5B50()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE1DA6A8);
  __swift_project_value_buffer(v4, qword_1EE1DA6A8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

void WelcomeOnboardingStep.init(bag:whatsNewItems:userDefaults:privacyIdentifiers:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  sub_1E1AF6F6C();
  *a5 = a1;
  if (a2)
  {

    a5[1] = a2;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    a5[2] = sub_1E19B9804();
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = a3;
    a4 = sub_1E19B98FC();
    goto LABEL_8;
  }

  a5[1] = sub_1E19B93AC();
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  a5[2] = a3;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = a3;
LABEL_8:

  a5[3] = a4;
}

void WelcomeOnboardingStep.enabledWhatsNewItems.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(v1 + 16);
      v6 = v1 + 32 + 72 * v3;
      for (i = v3; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
          return;
        }

        v8 = *(v6 + 16);
        v9 = *(v6 + 32);
        v10 = *(v6 + 48);
        v24 = *(v6 + 64);
        v11 = *v6;
        v22 = v9;
        v23 = v10;
        v20 = v11;
        v21 = v8;
        v3 = i + 1;
        if ((v24 & 0x100) != 0)
        {
          break;
        }

        v6 += 72;
        if (v2 == v3)
        {
          return;
        }
      }

      sub_1E19B9BF4(&v20, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E135CC94(0, *(v4 + 16) + 1, 1);
        v4 = v25;
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E135CC94((v13 > 1), v14 + 1, 1);
        v4 = v25;
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 72 * v14;
      *(v15 + 32) = v20;
      v16 = v21;
      v17 = v22;
      v18 = v23;
      *(v15 + 96) = v24;
      *(v15 + 64) = v17;
      *(v15 + 80) = v18;
      *(v15 + 48) = v16;
    }

    while (v2 - 1 != i);
  }
}

uint64_t WelcomeOnboardingStep.hasUnacknowledgedWhatsNewItems.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - v2;
  if (qword_1EE1D2220 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  if (v22 == 1)
  {
    v4 = NSUserDefaults.acknowledgedItems.getter();
    WelcomeOnboardingStep.enabledWhatsNewItems.getter();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v21 = MEMORY[0x1E69E7CC0];
      sub_1E135C088(0, v7, 0);
      v8 = v21;
      v9 = (v6 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v21 = v8;
        v12 = *(v8 + 16);
        v13 = *(v8 + 24);

        if (v12 >= v13 >> 1)
        {
          sub_1E135C088((v13 > 1), v12 + 1, 1);
          v8 = v21;
        }

        *(v8 + 16) = v12 + 1;
        v14 = v8 + 16 * v12;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        v9 += 9;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v17 = sub_1E13C4BB8(v8);

    sub_1E19B6398(v4, v17);
    v19 = v18;

    v16 = v19 ^ 1;
  }

  else
  {
    if (qword_1EE1DA6A0 != -1)
    {
      swift_once();
    }

    v15 = sub_1E1AF591C();
    __swift_project_value_buffer(v15, qword_1EE1DA6A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t NSUserDefaults.acknowledgedItems.getter()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
    if (swift_dynamicCast())
    {
      v3 = sub_1E13C4BB8(v5);

      return v3;
    }
  }

  else
  {
    sub_1E13E44F8(v8);
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1E19B6398(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return;
          }

          if (v20 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v20);
          ++v10;
        }

        while (!v7);
        v10 = v20;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v14 = sub_1E1AF767C();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = (*(a1 + 48) + 16 * v16);
        v19 = *v18 == v13 && v18[1] == v12;
        if (v19 || (sub_1E1AF74AC() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }
}

uint64_t WelcomeOnboardingStep.shouldShow.getter()
{
  _s11AppStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(*v0);
  if (v1)
  {
    if (qword_1EE1DA6A0 == -1)
    {
LABEL_3:
      v2 = sub_1E1AF591C();
      __swift_project_value_buffer(v2, qword_1EE1DA6A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_3;
  }

  v4 = v0[2];
  v5 = sub_1E1AF5DBC();
  v6 = [v4 integerForKey_];

  if (!v6)
  {
    if (qword_1EE1DA6A0 == -1)
    {
LABEL_13:
      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1EE1DA6A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();
      goto LABEL_14;
    }

LABEL_27:
    swift_once();
    goto LABEL_13;
  }

  v8 = ASKBuildTypeGetCurrent(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980, &qword_1E1B0F300);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E1B03760;
  *(v9 + 32) = @"debug";
  *(v9 + 40) = @"convergence";
  *(v9 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v10 = @"debug";
  v11 = @"convergence";
  v12 = @"internal";
  v13 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v8, v13);

  if (IsAnyOf)
  {
    v15 = sub_1E1AF5DBC();
    v16 = [v4 integerForKey_];

    if (v16 >= 10)
    {
      if (qword_1EE1DA6A0 == -1)
      {
        goto LABEL_3;
      }

      goto LABEL_26;
    }
  }

  if (WelcomeOnboardingStep.hasUnacknowledgedWhatsNewItems.getter())
  {
    if (qword_1EE1DA6A0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

  v18 = v0[3];
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_20:
    if (qword_1EE1DA6A0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v20 = 0;
  v21 = (v18 + 40);
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    v23 = *(v21 - 1);
    v22 = *v21;
    v24 = objc_opt_self();

    v25 = sub_1E1AF5DBC();
    LODWORD(v24) = [v24 acknowledgementNeededForPrivacyIdentifier_];

    if (v24)
    {
      break;
    }

    ++v20;
    v21 += 2;
    if (v19 == v20)
    {
      goto LABEL_20;
    }
  }

  if (qword_1EE1DA6A0 != -1)
  {
    swift_once();
  }

  v26 = sub_1E1AF591C();
  __swift_project_value_buffer(v26, qword_1EE1DA6A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v27[3] = MEMORY[0x1E69E6158];
  v27[0] = v23;
  v27[1] = v22;
  sub_1E1AF38DC();
  sub_1E13E44F8(v27);
  sub_1E1AF548C();
LABEL_14:

  return 1;
}

id NSUserDefaults.acknowledgedVersion.getter()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 integerForKey_];

  return v2;
}

Swift::Void __swiftcall WelcomeOnboardingStep.markAsShown()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - v4;
  v6 = sub_1E1AF32BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E1361A80();
  *v9 = sub_1E1AF68EC();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = sub_1E1AF32EC();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_1EE1D2220 == -1)
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
  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v3 + 8))(v5, v2);
  if (aBlock[0])
  {
    v49 = *(v1 + 16);
    v50 = NSUserDefaults.acknowledgedItems.getter();
    WelcomeOnboardingStep.enabledWhatsNewItems.getter();
    v12 = v11;
    v13 = *(v11 + 16);
    if (v13)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E135C088(0, v13, 0);
      v14 = aBlock[0];
      v15 = (v12 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        aBlock[0] = v14;
        v19 = *(v14 + 16);
        v18 = *(v14 + 24);

        if (v19 >= v18 >> 1)
        {
          sub_1E135C088((v18 > 1), v19 + 1, 1);
          v14 = aBlock[0];
        }

        *(v14 + 16) = v19 + 1;
        v20 = v14 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v16;
        v15 += 9;
        --v13;
      }

      while (v13);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    sub_1E19B933C(v14);

    v22 = *(v1 + 8);
    v23 = *(v22 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E135C088(0, v23, 0);
      v24 = aBlock[0];
      v25 = (v22 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        aBlock[0] = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);

        if (v29 >= v28 >> 1)
        {
          sub_1E135C088((v28 > 1), v29 + 1, 1);
          v24 = aBlock[0];
        }

        *(v24 + 16) = v29 + 1;
        v30 = v24 + 16 * v29;
        *(v30 + 32) = v27;
        *(v30 + 40) = v26;
        v25 += 9;
        --v23;
      }

      while (v23);
    }

    v31 = sub_1E19B8798(v24, v50);

    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = sub_1E1545A54(*(v31 + 16), 0);
      v34 = sub_1E1546A64(aBlock, v33 + 4, v32, v31);
      v35 = aBlock[0];

      sub_1E1337ECC(v35);
      if (v34 != v32)
      {
        __break(1u);
      }
    }

    v36 = sub_1E1AF620C();

    v37 = sub_1E1AF5DBC();
    [v49 setObject:v36 forKey:v37];

    if (qword_1EE1DA6A0 != -1)
    {
      swift_once();
    }

    v38 = sub_1E1AF591C();
    __swift_project_value_buffer(v38, qword_1EE1DA6A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v39 = *(v31 + 16);
    if (v39)
    {
      v40 = sub_1E1545A54(*(v31 + 16), 0);
      v41 = sub_1E1546A64(aBlock, v40 + 4, v39, v31);
      sub_1E1337ECC(aBlock[0]);
      if (v41 == v39)
      {
LABEL_26:
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
        aBlock[0] = v40;
        sub_1E1AF38BC();
        sub_1E13E44F8(aBlock);
        sub_1E1AF548C();

        v21 = v49;
        goto LABEL_27;
      }

      __break(1u);
    }

    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v21 = *(v1 + 16);
LABEL_27:
  v42 = sub_1E1AF5DBC();
  [v21 setInteger:9 forKey:v42];

  sub_1E13C4BB8(v43);

  v44 = objc_allocWithZone(MEMORY[0x1E698C790]);
  v45 = sub_1E1AF658C();

  v46 = [v44 initWithPrivacyIdentifiers_];

  v47 = [v46 acknowledgePrivacy];
  v53 = sub_1E19B775C;
  v54 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E16D4010;
  v52 = &block_descriptor_94;
  v48 = _Block_copy(aBlock);
  [v47 addFinishBlock_];
  _Block_release(v48);
}

void NSUserDefaults.acknowledgedItems.setter(void *a1)
{
  v3 = a1[2];
  if (v3)
  {
    v4 = sub_1E1545A54(a1[2], 0);
    v5 = sub_1E1546A64(&v8, v4 + 4, v3, a1);
    sub_1E1337ECC(v8);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v6 = sub_1E1AF620C();

  v7 = sub_1E1AF5DBC();
  [v1 setObject:v6 forKey:v7];
}

void NSUserDefaults.acknowledgedVersion.setter(uint64_t a1)
{
  v3 = sub_1E1AF5DBC();
  [v1 setInteger:a1 forKey:v3];
}

double sub_1E19B775C(char a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1EE1DA6A0 != -1)
    {
      swift_once();
    }

    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1EE1DA6A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v5 = sub_1E1AEFB1C();
    v6 = AMSLogableError();

    v7 = sub_1E1AF5DFC();
    v9 = v8;

    v11[3] = MEMORY[0x1E69E6158];
    v11[0] = v7;
    v11[1] = v9;
    sub_1E1AF38BC();
    sub_1E13E44F8(v11);
    sub_1E1AF54AC();
  }

  else if (a1)
  {
    sub_1E1AF5C3C();
    sub_1E1AF5C2C();
    sub_1E1AF5C1C();
  }

  return result;
}

void static WelcomeOnboardingStep.reset(userDefaults:)(void *a1)
{
  v2 = sub_1E1AF5DBC();
  [a1 setInteger:0 forKey:v2];

  v3 = sub_1E1AF620C();
  v4 = sub_1E1AF5DBC();
  [a1 setObject:v3 forKey:v4];
}

uint64_t WelcomeOnboardingStep.hashValue.getter()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E19B7A9C(uint64_t a1)
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

void (*NSUserDefaults.acknowledgedVersion.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = sub_1E1AF5DBC();
  v4 = [v1 integerForKey_];

  *a1 = v4;
  return sub_1E19B7BA8;
}

void sub_1E19B7BA8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_1E1AF5DBC();
  [v1 setInteger:v2 forKey:v3];
}

void sub_1E19B7C1C(uint64_t a1, void **a2)
{
  v2 = *a2;

  sub_1E1713C98(v3);
  v4 = sub_1E1AF620C();

  v5 = sub_1E1AF5DBC();
  [v2 setObject:v4 forKey:v5];
}

void (*NSUserDefaults.acknowledgedItems.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.acknowledgedItems.getter();
  return sub_1E19B7D0C;
}

void sub_1E19B7D0C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = sub_1E1545A54(*(*a1 + 16), 0);
    v6 = sub_1E1546A64(&v14, v5 + 4, v4, v3);
    v7 = v14;

    sub_1E1337ECC(v7);
    if (v6 == v4)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (v4)
  {
    v8 = sub_1E1545A54(v4, 0);
    v9 = sub_1E1546A64(&v14, v8 + 4, v4, v3);
    sub_1E1337ECC(v14);
    if (v9 != v4)
    {
      __break(1u);
LABEL_8:
      v10 = a1[1];
      v13 = sub_1E1AF620C();

      v11 = sub_1E1AF5DBC();
      [v10 setObject:v13 forKey:v11];

      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = a1[1];
  v13 = sub_1E1AF620C();

  v11 = sub_1E1AF5DBC();
  [v12 setObject:v13 forKey:v11];
LABEL_11:
}

uint64_t sub_1E19B7EF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8C8, qword_1E1B495D0);
  result = sub_1E1AF6F9C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1E1AF762C();
    sub_1E1AF5F0C();

    result = sub_1E1AF767C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E19B812C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4770, &qword_1E1B0E328);
  result = sub_1E1AF6F9C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1E1AF762C();

    sub_1E1AF5F0C();
    result = sub_1E1AF767C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E19B8350(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B0, &unk_1E1B0E368);
  result = sub_1E1AF6F9C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1E1AF762C();

    sub_1E1AF5F0C();
    result = sub_1E1AF767C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}