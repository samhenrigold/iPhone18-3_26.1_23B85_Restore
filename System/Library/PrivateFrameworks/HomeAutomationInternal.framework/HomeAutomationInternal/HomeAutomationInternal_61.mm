uint64_t sub_252DDD0B4(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_252DD8BC8(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252DDD174(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_252DDD1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v83 = a2;
  v78 = sub_252E36AB4();
  v5 = *(v78 - 8);
  v6 = MEMORY[0x28223BE20](v78);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v63 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  if (qword_27F53F618 != -1)
  {
    swift_once();
  }

  v15 = qword_27F544FA0;
  sub_252E36A94();
  sub_252E375D4();
  v77 = v15;
  sub_252E36A84();
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  v17 = __swift_project_value_buffer(v16, qword_27F544E08);
  *&v87[0] = 0;
  *(&v87[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v87[0] = 0xD000000000000022;
  *(&v87[0] + 1) = 0x8000000252E9D4B0;
  *&v86[0] = *(a1 + 16);
  v18 = *&v86[0];
  v19 = sub_252E37D94();
  MEMORY[0x2530AD570](v19);

  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v81 = a1;
  v20 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v20);

  v75 = v17;
  v76 = "izing candidates: ";
  sub_252CC3D90(*&v87[0], *(&v87[0] + 1), 0xD000000000000094, 0x8000000252E9D4E0);

  (*(v5 + 16))(v12, v14, v78);
  if (v18 != 1)
  {
    v21 = a3;
    if (v18)
    {
      v26 = *(v83 + 16);
      if (v26)
      {
        v65 = v12;
        v66 = v14;
        v67 = a3;
        v27 = (v83 + 32);
        v73 = "IntentPrevalidation.Step";

        v70 = "Remaining candidates: ";
        v71 = 0x8000000252E8D210;
        v69 = " is one. Returning candidate ";
        v64 = v5;
        v74 = (v5 + 8);
        v80 = v26 - 1;
        v72 = 0xD000000000000011;
        v28 = v76;
        v29 = v82;
        while (1)
        {
          v30 = v77;
          v79 = v27;
          v83 = *v27;
          sub_252E36A94();
          sub_252E375D4();
          sub_252E36A84();
          *&v87[0] = 0;
          *(&v87[0] + 1) = 0xE000000000000000;
          sub_252E379F4();

          strcpy(v87, "Running step: ");
          HIBYTE(v87[0]) = -18;
          v86[0] = v83;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461D8, &qword_252E61348);
          v31 = sub_252E36F94();
          MEMORY[0x2530AD570](v31);

          MEMORY[0x2530AD570](v72, v73 | 0x8000000000000000);
          v32 = v81;
          v33 = MEMORY[0x2530AD730](v81, &type metadata for HomeAutomationIntent);
          MEMORY[0x2530AD570](v33);

          sub_252CC3D90(*&v87[0], *(&v87[0] + 1), 0xD000000000000094, v28 | 0x8000000000000000);

          v34 = (*(*(&v83 + 1) + 8))(v32, v83);
          v87[0] = v83;
          v35 = sub_252E36F94();
          LOBYTE(v86[0]) = 1;
          v85[0] = 1;
          LOBYTE(v84) = 1;
          v88 = 1;
          *&v93 = 0;
          BYTE8(v93) = 1;
          *(&v93 + 9) = *v92;
          HIDWORD(v93) = *&v92[3];
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          LOBYTE(v99) = 1;
          DWORD1(v99) = *&v91[3];
          *(&v99 + 1) = *v91;
          *(&v99 + 1) = 0;
          v100 = 0uLL;
          LOWORD(v101) = 513;
          WORD3(v101) = v90;
          *(&v101 + 2) = v89;
          *(&v101 + 1) = v35;
          v102 = v36;
          v103 = 1;
          GEOLocationCoordinate2DMake();
          v87[8] = v101;
          v87[9] = v102;
          LOBYTE(v87[10]) = v103;
          v87[4] = v97;
          v87[5] = v98;
          v87[6] = v99;
          v87[7] = v100;
          v87[0] = v93;
          v87[1] = v94;
          v87[2] = v95;
          v87[3] = v96;
          *&v83 = v30;
          _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v30, v29, "IntentSelection.IntentPrioritization.Step", 41, 2, v87);
          v104[8] = v87[8];
          v104[9] = v87[9];
          v105 = v87[10];
          v104[4] = v87[4];
          v104[5] = v87[5];
          v104[6] = v87[6];
          v104[7] = v87[7];
          v104[0] = v87[0];
          v104[1] = v87[1];
          v104[2] = v87[2];
          v104[3] = v87[3];
          sub_2529765AC(v104);
          if (*(v34 + 16))
          {

            v37 = *(v34 + 16);
            if (v37 == 1)
            {
              memcpy(v85, (v34 + 32), sizeof(v85));
              sub_2529353AC(v85, v87);

              *&v87[0] = 0;
              *(&v87[0] + 1) = 0xE000000000000000;
              sub_252E379F4();
              v84 = v87[0];
              MEMORY[0x2530AD570](0xD000000000000020, v70 | 0x8000000000000000);
              v54 = sub_252E37FB4();
              MEMORY[0x2530AD570](v54);

              MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8D260);
              memcpy(v87, v85, 0x1F8uLL);
              sub_2529353AC(v85, v86);
              v55 = HomeAutomationIntent.description.getter();
              v57 = v56;
              memcpy(v86, v87, 0x1F8uLL);
              sub_252935408(v86);
              MEMORY[0x2530AD570](v55, v57);

              sub_252CC3D90(v84, *(&v84 + 1), 0xD000000000000094, v76 | 0x8000000000000000);

              memcpy(v87, v85, 0x1F8uLL);
              GEOLocationCoordinate2DMake();
              sub_2529353AC(v85, &v84);
              v58 = sub_252E375C4();
              v59 = v65;
              sub_252E36A74(v58, &dword_252917000, v83, "IntentSelection.IntentPrioritization", 36, 2, v65, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
              sub_252935408(v85);
              v60 = *v74;
              v61 = v78;
              (*v74)(v82, v78);
              v60(v59, v61);
              v60(v66, v61);
              v25 = v67;
              return memcpy(v25, v87, 0x1F8uLL);
            }

            *&v87[0] = 0;
            *(&v87[0] + 1) = 0xE000000000000000;
            sub_252E379F4();

            *&v87[0] = 0xD000000000000016;
            *(&v87[0] + 1) = v71;
            *&v86[0] = v37;
            v38 = sub_252E37D94();
            MEMORY[0x2530AD570](v38);

            MEMORY[0x2530AD570](0x7320726574666120, 0xED0000203A706574);
            v39 = sub_252E37FB4();
            MEMORY[0x2530AD570](v39);

            MEMORY[0x2530AD570](2108704, 0xE300000000000000);
            v40 = MEMORY[0x2530AD730](v34, &type metadata for HomeAutomationIntent);
            MEMORY[0x2530AD570](v40);

            v28 = v76;
            sub_252CC3D90(*&v87[0], *(&v87[0] + 1), 0xD000000000000094, v76 | 0x8000000000000000);
            v81 = v34;
          }

          else
          {

            *&v87[0] = 0;
            *(&v87[0] + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000020, v70 | 0x8000000000000000);
            v41 = sub_252E37FB4();
            MEMORY[0x2530AD570](v41);

            MEMORY[0x2530AD570](0xD00000000000001ALL, v69 | 0x8000000000000000);
            v42 = sub_252E37FB4();
            MEMORY[0x2530AD570](v42);

            v43 = v76;
            sub_252CC3D90(*&v87[0], *(&v87[0] + 1), 0xD000000000000094, v76 | 0x8000000000000000);
            v28 = v43;
          }

          (*v74)(v82, v78);
          if (!v80)
          {
            v14 = v66;
            v21 = v67;
            v5 = v64;
            v12 = v65;
            v44 = v68;
            v45 = v81;
            goto LABEL_19;
          }

          --v80;
          v27 = v79 + 1;
        }
      }

      v45 = v81;

      v44 = v68;
LABEL_19:
      v46 = *(v45 + 16);
      if (v46 >= 2)
      {
        *&v87[0] = v45;

        sub_252DDE2C0(v87);

        v45 = *&v87[0];
        *&v87[0] = 0;
        *(&v87[0] + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E9D580);
        *&v86[0] = *(v45 + 16);
        v47 = sub_252E37D94();
        MEMORY[0x2530AD570](v47);

        MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E9D5C0);
        v48 = MEMORY[0x2530AD730](v45, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v48);

        sub_252CC4050(*&v87[0], *(&v87[0] + 1), 0xD000000000000094, v76 | 0x8000000000000000, 0xD00000000000001DLL, 0x8000000252E9D610, 100);

        sub_2529515FC(10, 20, 0xD00000000000001CLL, 0x8000000252E9D630);
        v49 = sub_252E375E4();
        sub_252E36AA4();
        sub_252E36A74(v49, &dword_252917000, v77, "MultipleBestCandidates", 22, 2, v44, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
        (*(v5 + 8))(v44, v78);
        v46 = *(v45 + 16);
      }

      if (v46)
      {
        memcpy(v85, (v45 + 32), sizeof(v85));
        memmove(v86, (v45 + 32), 0x1F8uLL);
        GEOLocationCoordinate2DMake();
        sub_2529353AC(v85, v87);

        memcpy(v87, v86, 0x1F8uLL);
LABEL_25:
        v50 = sub_252E375C4();
        LOBYTE(v62) = 2;
        sub_252E36A74(v50, &dword_252917000, v77, "IntentSelection.IntentPrioritization", 36, 2, v12, " enableTelemetry=YES ", 21, v62, MEMORY[0x277D84F90]);
        v51 = *(v5 + 8);
        v52 = v78;
        v51(v12, v78);
        v51(v14, v52);
        v25 = v21;
        return memcpy(v25, v87, 0x1F8uLL);
      }
    }

    else
    {
      sub_252CC4050(0xD00000000000001CLL, 0x8000000252E6C730, 0xD000000000000094, v76 | 0x8000000000000000, 0xD00000000000001DLL, 0x8000000252E9D610, 55);
    }

    sub_25293DEE0(v87);
    goto LABEL_25;
  }

  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E8D2A0, 0xD000000000000094, v76 | 0x8000000000000000);
  memcpy(v86, (v81 + 32), 0x1F8uLL);
  memcpy(v87, (v81 + 32), 0x1F8uLL);
  GEOLocationCoordinate2DMake();
  sub_2529353AC(v86, v85);
  v22 = sub_252E375C4();
  sub_252E36A74(v22, &dword_252917000, v77, "IntentSelection.IntentPrioritization", 36, 2, v12, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v23 = *(v5 + 8);
  v24 = v78;
  v23(v12, v78);
  v23(v14, v24);
  v25 = a3;
  return memcpy(v25, v87, 0x1F8uLL);
}

double sub_252DDE0C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541828, &qword_252E40AC0);
  v0 = swift_allocObject();
  *&result = 22;
  *(v0 + 16) = xmmword_252E5B3B0;
  *(v0 + 32) = &type metadata for PrioritizeTypeEveryOverPerfectNameMatch;
  *(v0 + 40) = &off_2864C1050;
  *(v0 + 48) = &type metadata for PrioritizeServiceTypeOverPartialName;
  *(v0 + 56) = &off_2864B55F8;
  *(v0 + 64) = &type metadata for PrioritizeMatchAllWords;
  *(v0 + 72) = &off_2864B2108;
  *(v0 + 80) = &type metadata for PrioritizeGenericTypeForServiceTypeEvery;
  *(v0 + 88) = &off_2864BEE90;
  *(v0 + 96) = &type metadata for PrioritizeGenericTypeOverPerfectName;
  *(v0 + 104) = &off_2864BA5D0;
  *(v0 + 112) = &type metadata for PrioritizePerfectNameOverNonGenericType;
  *(v0 + 120) = &off_2864B5AD0;
  *(v0 + 128) = &type metadata for PrioritizeRvcRoomDirectedCleaning;
  *(v0 + 136) = &off_2864B4F58;
  *(v0 + 144) = &type metadata for PrioritizeAccessoryName;
  *(v0 + 152) = &off_2864B3308;
  *(v0 + 160) = &type metadata for PrioritizePrimaryServiceMatch;
  *(v0 + 168) = &off_2864BB9B8;
  *(v0 + 176) = &type metadata for PrioritizeResolvedReference;
  *(v0 + 184) = &off_2864B6158;
  *(v0 + 192) = &type metadata for PrioritizeDoorCandidates;
  *(v0 + 200) = &off_2864B1968;
  *(v0 + 208) = &type metadata for PrioritizeUserVocabularyScenes;
  *(v0 + 216) = &off_2864B6B58;
  *(v0 + 224) = &type metadata for PrioritizePrimaryNLIntent;
  *(v0 + 232) = &off_2864BB418;
  *(v0 + 240) = &type metadata for PrioritizePerfectMatchesOverFuzzyMatches;
  *(v0 + 248) = &off_2864B9048;
  *(v0 + 256) = &type metadata for PrioritizeSceneIfCandidateHasNoVerb;
  *(v0 + 264) = &off_2864BB7B8;
  *(v0 + 272) = &type metadata for PrioritizeAliasFuzzyMatching;
  *(v0 + 280) = &off_2864B5A98;
  *(v0 + 288) = &type metadata for PrioritizeFuzzyMatchingCandidates;
  *(v0 + 296) = &off_2864B0B90;
  *(v0 + 304) = &type metadata for PrioritizeCandidatesWithMoreNames;
  *(v0 + 312) = &off_2864BB980;
  *(v0 + 320) = &type metadata for PrioritizeRoomNameMatchOverGenericType;
  *(v0 + 328) = &off_2864B09B0;
  *(v0 + 336) = &type metadata for PrioritizeHomeName;
  *(v0 + 344) = &off_2864B83A0;
  *(v0 + 352) = &type metadata for PrioritizeReferencedEntities;
  *(v0 + 360) = &off_2864B6190;
  *(v0 + 368) = &type metadata for PrioritizeGenericType;
  *(v0 + 376) = &off_2864BB8E8;
  qword_27F575DA0 = v0;
  return result;
}

void *sub_252DDE2C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_252934724(v2);
  }

  v3 = *(v2 + 2);
  v15[0] = (v2 + 32);
  v15[1] = v3;
  result = sub_252E37D74();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (*(v12 + 44) >= *(v12 + 107))
          {
            break;
          }

          memcpy(__dst, v12 + 536, sizeof(__dst));
          memcpy(v12 + 536, v12 + 32, 0x1F8uLL);
          result = memcpy(v12 + 32, __dst, 0x1F8uLL);
          v12 -= 504;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 504;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_252E372B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    __dst[0] = v7 + 32;
    __dst[1] = v6;
    sub_252DDE444(__dst, v16, v15, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_252DDE444(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_252934564(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_252DDEA34((*v88 + 504 * *v78), (*v88 + 504 * *v80), (*v88 + 504 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 504 * v6 + 320);
      v10 = 504 * v8;
      v11 = *v88 + 504 * v8;
      v12 = *(v11 + 320);
      v13 = v8 + 2;
      v14 = (v11 + 1328);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v12 < v9) ^ (v15 >= *v14);
        ++v13;
        v14 += 63;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 504 * v6 - 504;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x1F8uLL);
            result = memcpy((v21 + v18), __dst, 0x1F8uLL);
          }

          ++v20;
          v18 -= 504;
          v10 += 504;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_252934578((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_252DDEA34((*v88 + 504 * *v71), (*v88 + 504 * *v73), (*v88 + 504 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v8 + a4;
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 504 * v6 - 504;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (v26[40] >= v26[103])
    {
LABEL_30:
      ++v6;
      v23 += 504;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26 + 63, sizeof(__dst));
    memcpy(v26 + 63, v26, 0x1F8uLL);
    result = memcpy(v26, __dst, 0x1F8uLL);
    v26 -= 63;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_252DDEA34(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 504;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 504;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[504 * v9] <= a4)
    {
      memmove(a4, __dst, 504 * v9);
    }

    v12 = &v4[504 * v9];
    if (v8 < 504)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 40) < *(v6 + 40))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 504;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 504;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 504;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x1F8uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[504 * v11] <= a4)
  {
    memmove(a4, __src, 504 * v11);
  }

  v12 = &v4[504 * v11];
  if (v10 >= 504 && v6 > v7)
  {
LABEL_20:
    v5 -= 504;
    do
    {
      v15 = v5 + 504;
      if (*(v6 - 23) < *(v12 - 23))
      {
        v17 = v6 - 504;
        if (v15 != v6)
        {
          memmove(v5, v6 - 504, 0x1F8uLL);
        }

        if (v12 <= v4 || (v6 -= 504, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 504);
      if (v15 != v12)
      {
        memmove(v5, v12 - 504, 0x1F8uLL);
      }

      v5 -= 504;
      v12 -= 504;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 504;
  if (v6 != v4 || v6 >= &v4[504 * v18])
  {
    memmove(v6, v4, 504 * v18);
  }

  return 1;
}

uint64_t sub_252DDECB8()
{
  result = sub_252A008A8(&unk_2864AC538);
  qword_27F575DA8 = result;
  return result;
}

uint64_t sub_252DDED0C()
{
  type metadata accessor for PowerOffDeltaDecreaseHandleDelegate();

  return swift_allocObject();
}

void sub_252DDED3C(void *a1, uint64_t a2)
{
  v5 = sub_252B4CD30(a1, 0, 1);
  v6 = v5;
  if ((v7 & 1) != 0 || (v43 = v5, v8 = [a1 userTask], v6 = v43, !v8))
  {
    sub_252927D3C(v6);
    v24 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v25 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v24[v25] = 5;
    [v24 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v26 = sub_252E37254();
    [v24 setEntityResponses_];

    (a2)(v24);
    return;
  }

  v9 = v8;
  v46 = [v8 attribute];

  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  v41 = v43;
  v10 = sub_252D6D96C(v41);
  sub_252927D3C(v43);
  v51 = MEMORY[0x277D84FA0];
  v42 = v10;
  v11 = *(v10 + 24);
  if (v11 >> 62)
  {
    goto LABEL_55;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_40;
  }

  do
  {
    v40 = a2;
    v49 = v11 & 0xC000000000000001;
    v44 = v11 + 32;
    v45 = v11 & 0xFFFFFFFFFFFFFF8;
    v47 = v11;

    v13 = 0;
    v48 = v12;
    while (1)
    {
      if (v49)
      {
        v11 = MEMORY[0x2530ADF00](v13, v47);
        v14 = v11;
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          break;
        }

        goto LABEL_12;
      }

      if (v13 >= *(v45 + 16))
      {
        goto LABEL_54;
      }

      v14 = *(v44 + 8 * v13);

      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

LABEL_12:
      swift_beginAccess();
      v16 = *(v14 + 24);
      if (v16 >> 62)
      {
        v17 = sub_252E378C4();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v17)
      {
LABEL_31:

        v21 = v48;
        goto LABEL_32;
      }

      v2 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v2, v16);
          v18 = v11;
          v19 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v2 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v18 = *(v16 + 8 * v2 + 32);

          v19 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }
        }

        if (*(v18 + 24) != 1 || (a2 = *(v18 + 16)) == 0 || (swift_beginAccess(), (v20 = *(a2 + 32)) == 0) || *(v20 + 16) != 1)
        {

          goto LABEL_26;
        }

        a2 = *(v20 + 24);

        if ((a2 & 1) == 0)
        {
          break;
        }

LABEL_26:
        ++v2;
        if (v19 == v17)
        {
          goto LABEL_31;
        }
      }

      v22 = *(v14 + 16);
      v21 = v48;
      if (v22 && (v23 = *(v22 + 48)) != 0)
      {
        v2 = *(v22 + 40);

        sub_252DA6CD0(&v50, v2, v23);
      }

      else
      {
      }

LABEL_32:
      if (v13 == v21)
      {

        a2 = v40;
        goto LABEL_40;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v32 = v11;
    v12 = sub_252E378C4();
    v11 = v32;
  }

  while (v12);
LABEL_40:

  v28 = sub_252D843F0(v27);

  if (v28 >> 62)
  {
    v29 = sub_252E378C4();
    if (!v29)
    {
      goto LABEL_58;
    }

LABEL_42:
    if (v29 < 1)
    {
      __break(1u);
      goto LABEL_65;
    }

    v30 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = *(MEMORY[0x2530ADF00](v30, v28) + 16);
        if (v31)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v31 = *( + 16);
        if (v31)
        {
LABEL_49:
          if (*(v31 + 24) == 27)
          {

            *(v31 + 24) = v46;
          }
        }
      }

      ++v30;

      if (v29 == v30)
      {
        goto LABEL_58;
      }
    }
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    goto LABEL_42;
  }

LABEL_58:

  v2 = *(v51 + 16);
  v33 = [v41 entityResponses];
  if (!v33)
  {
    goto LABEL_62;
  }

  v34 = v33;
  type metadata accessor for HomeEntityResponse();
  v35 = sub_252E37264();

  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_61;
  }

LABEL_65:
  v36 = sub_252E378C4();
LABEL_61:

  if (v2 != v36)
  {
LABEL_62:

    v38 = sub_252D847A0(v37, &v51);

    *(v42 + 24) = v38;
  }

  v39 = sub_252D6BB10();
  (a2)();
  sub_252927D3C(v43);
}

uint64_t sub_252DDF2E4(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 2)
    {
      v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
      sub_252929E74((v6 + 288), v21);

      v7 = v22;
      v8 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v9 = (*(v8 + 80))(v7, v8);
      if (v9)
      {
        v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
        sub_252929E74((v10 + 16), v20);

        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        v11 = sub_252E338F4();
        __swift_destroy_boxed_opaque_existential_1(v20);
        __swift_destroy_boxed_opaque_existential_1(v21);
        if (v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v21);
      }
    }
  }

  v12 = [a1 userTask];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 taskType];

    if (v14 != 3)
    {
LABEL_13:
      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    if (qword_27F53F888 != -1)
    {
      swift_once();
    }

    v15 = qword_27F575DA8;
    v16 = [a1 userTask];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 attribute];
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(v12) = sub_252DA0680(v18, v17 == 0, v15);
  }

  return v12 & 1;
}

uint64_t sub_252DDF4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546200, &unk_252E614E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E3C3C0;
  *(v0 + 32) = type metadata accessor for FoundNoMatchingEntitiesResponseHandler();
  *(v0 + 40) = &off_2864B6EC0;
  result = type metadata accessor for GenericFallbackResponseHandler();
  *(v0 + 48) = result;
  *(v0 + 56) = &off_2864BB810;
  qword_27F575DB0 = v0;
  return result;
}

uint64_t sub_252DDF54C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546200, &unk_252E614E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E3F1F0;
  *(v0 + 32) = type metadata accessor for DiscoverTriggerResponseHandler();
  *(v0 + 40) = &off_2864C1280;
  *(v0 + 48) = type metadata accessor for DiscoverInventoryResponseHandler();
  *(v0 + 56) = &off_2864BAFF8;
  *(v0 + 64) = type metadata accessor for DiscoverLocationResponseHandler();
  *(v0 + 72) = &off_2864BAF00;
  *(v0 + 80) = type metadata accessor for DiscoverCapabilityResponseHandler();
  *(v0 + 88) = &off_2864B17A0;
  *(v0 + 96) = type metadata accessor for DiscoverCountResponseHandler();
  *(v0 + 104) = &off_2864BBA10;
  result = type metadata accessor for SuccessFallbackResponseHandler();
  *(v0 + 112) = result;
  *(v0 + 120) = &off_2864BC760;
  qword_27F575DB8 = v0;
  return result;
}

uint64_t sub_252DDF618(uint64_t a1, uint64_t a2)
{
  v3[268] = v2;
  v3[267] = a2;
  v3[266] = a1;
  v4 = sub_252E36AB4();
  v3[269] = v4;
  v3[270] = *(v4 - 8);
  v3[271] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DDF6E0, 0, 0);
}

uint64_t sub_252DDF6E0()
{
  v33 = v0;
  if (qword_27F53F898 != -1)
  {
LABEL_20:
    swift_once();
  }

  v1 = qword_27F575DB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461E8, &qword_252E614C0);
  v2 = sub_252E33F24();
  v3 = sub_252E33F04();
  v4 = 0;
  v5 = *(v1 + 16);
  while (v5 != v4)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = *(v1 + 32 + 16 * v4++);
    v7 = *(&v6 + 1);
    v31 = v6;
    v8 = v6;
    if ((*(*(&v6 + 1) + 16))(v2, v3, v6, *(&v6 + 1)))
    {
      v9 = v0[268];
      memcpy(v0 + 65, (v9 + 16), 0x1F8uLL);
      memcpy(v0 + 2, (v9 + 16), 0x1F8uLL);
      GEOLocationCoordinate2DMake();
      memcpy(__dst, v0 + 2, 0x1F8uLL);
      v10 = *(v7 + 8);
      v11 = *(v10 + 24);
      *(v0 + 257) = v31;
      __swift_allocate_boxed_opaque_existential_0(v0 + 254);
      sub_2529353AC((v0 + 65), (v0 + 128));
      v11(__dst, v8, v10);
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v12 = sub_252E36AD4();
      __swift_project_value_buffer(v12, qword_27F544D18);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();

      __swift_project_boxed_opaque_existential_1(v0 + 254, v0[257]);
      DynamicType = swift_getDynamicType();
      v14 = v0[258];
      v0[264] = DynamicType;
      v0[265] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461F0, &qword_252E614C8);
      __dst[0] = sub_252E36F94();
      __dst[1] = v15;
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E73DB0);
      sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000093, 0x8000000252E9D740);

      goto LABEL_12;
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D18);
  sub_252CC3D90(0xD000000000000057, 0x8000000252E9D7E0, 0xD000000000000093, 0x8000000252E9D740);
  sub_25293DEE0((v0 + 191));
  v17 = type metadata accessor for GenericFallbackResponseHandler();
  swift_allocObject();
  memcpy(__dst, v0 + 191, 0x1F8uLL);
  v18 = sub_252BE97AC(__dst);
  v0[257] = v17;
  v0[258] = &off_2864BB810;
  v0[254] = v18;

LABEL_12:
  sub_252929E74((v0 + 254), (v0 + 259));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461F8, &unk_252E614D0);
  v19 = sub_252E36F94();
  v21 = v20;
  v0[272] = v19;
  v0[273] = v20;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v19, v21);
  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000093, 0x8000000252E9D740);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v23 = qword_27F544F70;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v24 = v0[257];
  v25 = v0[258];
  __swift_project_boxed_opaque_existential_1(v0 + 254, v24);
  v26 = sub_252E33F24();
  v0[274] = v26;
  v27 = sub_252E33F04();
  v0[275] = v27;
  v28 = swift_task_alloc();
  v0[276] = v28;
  *v28 = v0;
  v28[1] = sub_252DDFC94;
  v29 = v0[266];

  return sub_252C6A028(v29, v26, v27, v24, v25);
}

uint64_t sub_252DDFC94()
{
  v2 = *v1;
  *(*v1 + 2216) = v0;

  if (v0)
  {
    v3 = sub_252DDFE78;
  }

  else
  {
    v4 = *(v2 + 2192);

    v3 = sub_252DDFDB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DDFDB8()
{
  v1 = v0[271];
  v2 = v0[270];
  v3 = v0[269];
  sub_252DE08A8(v1, v0[272], v0[273], v0[268], "HandleSuccessDialog");

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 254);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252DDFE78()
{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2176);
  v4 = *(v0 + 2168);
  v5 = *(v0 + 2160);
  v6 = *(v0 + 2152);
  v7 = *(v0 + 2144);

  sub_252DE08A8(v4, v3, v2, v7, "HandleSuccessDialog");

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2032));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252DDFF60(uint64_t a1, uint64_t a2)
{
  v3[268] = v2;
  v3[267] = a2;
  v3[266] = a1;
  v4 = sub_252E36AB4();
  v3[269] = v4;
  v3[270] = *(v4 - 8);
  v3[271] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DE0028, 0, 0);
}

uint64_t sub_252DE0028()
{
  v33 = v0;
  if (qword_27F53F890 != -1)
  {
LABEL_20:
    swift_once();
  }

  v1 = qword_27F575DB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461E8, &qword_252E614C0);
  v2 = sub_252E33F24();
  v3 = sub_252E33F04();
  v4 = 0;
  v5 = *(v1 + 16);
  while (v5 != v4)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = *(v1 + 32 + 16 * v4++);
    v7 = *(&v6 + 1);
    v31 = v6;
    v8 = v6;
    if ((*(*(&v6 + 1) + 16))(v2, v3, v6, *(&v6 + 1)))
    {
      v9 = v0[268];
      memcpy(v0 + 65, (v9 + 16), 0x1F8uLL);
      memcpy(v0 + 2, (v9 + 16), 0x1F8uLL);
      GEOLocationCoordinate2DMake();
      memcpy(__dst, v0 + 2, 0x1F8uLL);
      v10 = *(v7 + 8);
      v11 = *(v10 + 24);
      *(v0 + 257) = v31;
      __swift_allocate_boxed_opaque_existential_0(v0 + 254);
      sub_2529353AC((v0 + 65), (v0 + 128));
      v11(__dst, v8, v10);
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v12 = sub_252E36AD4();
      __swift_project_value_buffer(v12, qword_27F544D18);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();

      __swift_project_boxed_opaque_existential_1(v0 + 254, v0[257]);
      DynamicType = swift_getDynamicType();
      v14 = v0[258];
      v0[264] = DynamicType;
      v0[265] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461F0, &qword_252E614C8);
      __dst[0] = sub_252E36F94();
      __dst[1] = v15;
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E73DB0);
      sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000093, 0x8000000252E9D740);

      goto LABEL_12;
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D18);
  sub_252CC3D90(0xD000000000000057, 0x8000000252E9D7E0, 0xD000000000000093, 0x8000000252E9D740);
  sub_25293DEE0((v0 + 191));
  v17 = type metadata accessor for GenericFallbackResponseHandler();
  swift_allocObject();
  memcpy(__dst, v0 + 191, 0x1F8uLL);
  v18 = sub_252BE97AC(__dst);
  v0[257] = v17;
  v0[258] = &off_2864BB810;
  v0[254] = v18;

LABEL_12:
  sub_252929E74((v0 + 254), (v0 + 259));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461F8, &unk_252E614D0);
  v19 = sub_252E36F94();
  v21 = v20;
  v0[272] = v19;
  v0[273] = v20;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v19, v21);
  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000093, 0x8000000252E9D740);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v23 = qword_27F544F70;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v24 = v0[257];
  v25 = v0[258];
  __swift_project_boxed_opaque_existential_1(v0 + 254, v24);
  v26 = sub_252E33F24();
  v0[274] = v26;
  v27 = sub_252E33F04();
  v0[275] = v27;
  v28 = swift_task_alloc();
  v0[276] = v28;
  *v28 = v0;
  v28[1] = sub_252DE05DC;
  v29 = v0[266];

  return sub_252C6A028(v29, v26, v27, v24, v25);
}

uint64_t sub_252DE05DC()
{
  v2 = *v1;
  *(*v1 + 2216) = v0;

  if (v0)
  {
    v3 = sub_252DE07C0;
  }

  else
  {
    v4 = *(v2 + 2192);

    v3 = sub_252DE0700;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DE0700()
{
  v1 = v0[271];
  v2 = v0[270];
  v3 = v0[269];
  sub_252DE08A8(v1, v0[272], v0[273], v0[268], "HandleFailureDialog");

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 254);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252DE07C0()
{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2176);
  v4 = *(v0 + 2168);
  v5 = *(v0 + 2160);
  v6 = *(v0 + 2152);
  v7 = *(v0 + 2144);

  sub_252DE08A8(v4, v3, v2, v7, "HandleFailureDialog");

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2032));

  v8 = *(v0 + 8);

  return v8();
}

void sub_252DE08A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27F53F5E8 != -1)
  {
    v20 = a2;
    v21 = a4;
    swift_once();
    a4 = v21;
    a2 = v20;
  }

  v8 = qword_27F544F70;
  v9 = *(a4 + 520);
  v10 = *(a4 + 528);
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v33 = 1;
  *&v37 = 0;
  BYTE8(v37) = 1;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  *&v41 = 0;
  *(&v41 + 1) = a2;
  v42 = a3;
  v43 = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = v9;
  v45 = v10;
  v46 = 0;
  LOWORD(v47) = 513;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 1;
  GEOLocationCoordinate2DMake();
  v30 = v47;
  v31 = 0u;
  v32 = 1;
  v26 = v41;
  v27 = a3;
  v28 = v44;
  v29 = v10;
  v22 = v37;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v8, a1, a5, 19, 2, &v22);
  v52[8] = v30;
  v52[9] = v31;
  v53 = v32;
  v52[4] = v26;
  v52[5] = v27;
  v52[6] = v28;
  v52[7] = v29;
  v52[0] = v22;
  v52[1] = v23;
  v52[2] = v24;
  v52[3] = v25;
  sub_25293847C(v52, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v11 = sub_252E36804();
  v13 = v12;

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v15 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v11;
    *(inited + 56) = v13;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v15, &unk_27F541F10, &unk_252E42870);
  }

  v16 = [objc_opt_self() sharedAnalytics];
  if (v16)
  {
    v17 = v16;

    sub_252CC1408(v18);

    v19 = sub_252E36E24();

    [v17 logEventWithType:6504 context:v19];
  }

  else
  {
  }
}

uint64_t sub_252DE0BA8()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_252935408(__dst);

  return swift_deallocClassInstance();
}

uint64_t sub_252DE0C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_252DE0CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_252DE0DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_252DE0E6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252DDF618(a1, a2);
}

uint64_t sub_252DE0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_252DE0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_252DE10A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252DDFF60(a1, a2);
}

uint64_t sub_252DE114C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return sub_252DE1258(a1, a2);
}

unint64_t sub_252DE1204()
{
  result = qword_27F5461E0;
  if (!qword_27F5461E0)
  {
    v3 = type metadata accessor for DiscoverHomeHandleIntentStrategy();
    result = swift_getWitnessTable(aY_7, v3, v0, v1);
    atomic_store(result, &qword_27F5461E0);
  }

  return result;
}

uint64_t sub_252DE1258(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DE1318, 0, 0);
}

uint64_t sub_252DE1318()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C70);
  sub_252CC3D90(0xD000000000000050, 0x8000000252E9D6E0, 0xD000000000000093, 0x8000000252E9D740);
  v6 = objc_allocWithZone(type metadata accessor for DiscoverHomeIntentHandler());

  [v6 init];
  type metadata accessor for DiscoverHomeIntent();
  v7 = v4;
  sub_252E336E4();
  sub_252E33784();
  v8 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_252DE14CC()
{
  type metadata accessor for DefaultHandleDelegate();

  return swift_allocObject();
}

void sub_252DE14FC(void *a1, void (*a2)(void))
{
  v4 = sub_252B4CD30(a1, 0, 1);
  v5 = v4;
  if (v6)
  {
    v7 = v4;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544C70);
    MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E9D880, 0xD000000000000021, 0x8000000252E68B10, 30);

    v9 = parse(error:with:)(v5, a1);
    a2();
    sub_252927D3C(v5);

    sub_252927D3C(v5);
  }

  else
  {
    a2();

    sub_252927D3C(v5);
  }
}

id sub_252DE16D0(void *a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v8)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_8:
      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544E38);
      sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000007CLL, 0x8000000252E9D900, 0xD000000000000017, 0x8000000252E715D0, 48);
      return 0;
    }

LABEL_58:
    swift_once();
    goto LABEL_8;
  }

  v9 = v8;
  v67 = a1;
  sub_252E32E74();
  v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v11 = sub_252E32E44();
  v12 = [v10 initWithNSUUID_];

  (*(v5 + 8))(v7, v4);
  [v9 setCommandId_];

  [v9 setCommandType_];
  v13 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  v14 = *&v2[v13];
  if (v14 <= 4)
  {
    v15 = v67;
    if (!v14)
    {
      v16 = 0;
      goto LABEL_12;
    }

    if (v14 != 3)
    {
      if (v14 != 4)
      {
        goto LABEL_13;
      }

      v16 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v16 = 2;
LABEL_12:
    [v9 setCommandOutcome_];
    goto LABEL_13;
  }

  v15 = v67;
  if ((v14 - 5) < 2 || v14 == 100)
  {
    goto LABEL_11;
  }

LABEL_13:
  v18 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v18)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000007CLL, 0x8000000252E9D900, 0xD000000000000017, 0x8000000252E715D0, 59);

    return 0;
  }

  v19 = v18;
  if ([v9 commandOutcome] != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    inited = swift_initStackObject();
    v21 = inited;
    *(inited + 16) = xmmword_252E3C290;
    v22 = *&v2[v13];
    if (v22 <= 4)
    {
      if (v22)
      {
        if (v22 == 3)
        {
          v23 = 0xEA00000000007373;
          v24 = 0x6572676F72506E69;
          goto LABEL_34;
        }

        if (v22 == 4)
        {
          v23 = 0xE700000000000000;
          v24 = 0x73736563637573;
LABEL_34:
          *(inited + 32) = v24;
          *(inited + 40) = v23;
          sub_252AD4414(inited);
          swift_setDeallocating();
          sub_252A01B34(v21 + 32);
          v28 = sub_252E37254();

          [v19 setHomeAutomationRequestErrorReasons_];

          goto LABEL_35;
        }
      }

      goto LABEL_29;
    }

    switch(v22)
    {
      case 100:
        v27 = "failureNoMatchingEntities";
        break;
      case 6:
        v27 = "failureRequiringAppLaunch";
        break;
      case 5:
        v23 = 0xE700000000000000;
        v24 = 0x6572756C696166;
        goto LABEL_34;
      default:
LABEL_29:
        v23 = 0xE700000000000000;
        v24 = 0x6E776F6E6B6E75;
        goto LABEL_34;
    }

    v23 = (v27 - 32) | 0x8000000000000000;
    v24 = 0xD000000000000019;
    goto LABEL_34;
  }

LABEL_35:
  v29 = [v2 matchedEntities];
  if (v29)
  {
    v30 = v29;
    type metadata accessor for HomeEntity();
    v31 = sub_252E37264();

    if (v31 >> 62)
    {
      v32 = sub_252E378C4();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v32 = 0;
  }

  sub_252C77A20(v32);
  v33 = [v15 filters];
  v34 = MEMORY[0x277D84F90];
  v66 = v9;
  if (v33)
  {
    v35 = v33;
    type metadata accessor for HomeFilter();
    v36 = sub_252E37264();

    v68 = v36;
    if (v36 >> 62)
    {
      v37 = sub_252E378C4();
      v65 = v19;
      if (v37)
      {
LABEL_43:
        v38 = 0;
        v39 = v68 & 0xC000000000000001;
        v40 = v68 & 0xFFFFFFFFFFFFFF8;
        v41 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v39)
          {
            v42 = MEMORY[0x2530ADF00](v38, v68);
          }

          else
          {
            if (v38 >= *(v40 + 16))
            {
              goto LABEL_57;
            }

            v42 = *(v68 + 8 * v38 + 32);
          }

          v43 = v42;
          v44 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          v45 = HomeDeviceType.description.getter([v42 deviceType]);
          v47 = v46;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_2529F7A80(0, *(v41 + 2) + 1, 1, v41);
          }

          v49 = *(v41 + 2);
          v48 = *(v41 + 3);
          if (v49 >= v48 >> 1)
          {
            v41 = sub_2529F7A80((v48 > 1), v49 + 1, 1, v41);
          }

          *(v41 + 2) = v49 + 1;
          v50 = &v41[16 * v49];
          *(v50 + 4) = v45;
          *(v50 + 5) = v47;
          ++v38;
          if (v44 == v37)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      v37 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v65 = v19;
      if (v37)
      {
        goto LABEL_43;
      }
    }

    v41 = MEMORY[0x277D84F90];
LABEL_62:

    v19 = v65;
    v15 = v67;
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  sub_252C76E8C(v41);

  v51 = [v15 filters];
  if (v51)
  {
    v52 = v51;
    type metadata accessor for HomeFilter();
    v53 = sub_252E37264();

    v69 = v34;
    if (v53 >> 62)
    {
      goto LABEL_78;
    }

    for (i = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v55 = v19;
      v56 = 0;
      while (1)
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v57 = MEMORY[0x2530ADF00](v56, v53);
        }

        else
        {
          if (v56 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v57 = *(v53 + 8 * v56 + 32);
        }

        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        v19 = &v69;
        MEMORY[0x2530AD700](v57);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v56;
        if (v58 == i)
        {
          v59 = v69;
          v19 = v55;
          goto LABEL_80;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      ;
    }

    v59 = MEMORY[0x277D84F90];
LABEL_80:

    v60 = sub_252B1F8D4(v59);

    v51 = dword_252E6151C[v60];
  }

  sub_252C7704C(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_252E3C130;
  *(v61 + 32) = v19;
  sub_252A01B88();
  v62 = v19;
  v63 = sub_252E37254();

  v64 = v66;
  [v66 setHomeAutomationRequests_];

  return v64;
}

id sub_252DE1F7C(unint64_t a1)
{
  swift_getObjectType();
  v13 = v1;
  v3 = [v13 userTask];
  v4 = [v13 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  type metadata accessor for ControlHomeIntent.Builder();
  v7 = [v13 time];
  v8 = sub_252D47574(v3, v6, v7);

  sub_252B4EEFC(a1);
  v9 = (*(*v8 + 208))();

  v11 = (*(*v9 + 224))(v10);

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v13;
  }

  return result;
}

void *INControlHomeIntent.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277CD3D00]) initWithTaskType:4 attribute:0 value:0];
  v2 = MEMORY[0x277D84F90];
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = 0;
  return v0;
}

void *INControlHomeIntent.Builder.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD3D00]) initWithTaskType:4 attribute:0 value:0];
  v2 = MEMORY[0x277D84F90];
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = 0;
  return v0;
}

void *INControlHomeIntent.Builder.__allocating_init(intent:)(void *a1)
{
  v2 = [a1 userTask];
  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    sub_252CB0B64();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [a1 time];
  v7 = sub_252DE26D0(v2, v5, v6);

  return v7;
}

uint64_t sub_252DE22AC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 taskType];
    v4 = [v2 attribute];
    v5 = [v2 value];
    v6 = [objc_allocWithZone(MEMORY[0x277CD3D00]) initWithTaskType:v3 attribute:v4 value:v5];

    v7 = *(v1 + 16);
    *(v1 + 16) = v6;
  }
}

uint64_t sub_252DE2374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD3D00]) initWithTaskType:a1 attribute:a2 value:a3];
  v5 = *(v3 + 16);
  *(v3 + 16) = v4;
}

uint64_t sub_252DE23E8(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      swift_beginAccess();
      sub_25297C50C(v2);
      swift_endAccess();
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v1++);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x2530AD700]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v8;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_252DE2500()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = objc_allocWithZone(MEMORY[0x277CD3B10]);
  sub_252CB0B64();
  v4 = v1;

  v5 = v2;
  v6 = sub_252E37254();

  v7 = [v3 initWithUserTask:v4 filters:v6 time:v5];

  return v7;
}

void *sub_252DE25CC()
{
  type metadata accessor for INControlHomeIntent.Builder();
  v1 = v0[2];
  swift_beginAccess();
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2;
  v5 = v1;

  v6 = sub_252DE26D0(v1, v3, v2);

  return v6;
}

uint64_t INControlHomeIntent.Builder.deinit()
{

  return v0;
}

uint64_t INControlHomeIntent.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_252DE26D0(void *a1, unint64_t a2, void *a3)
{
  v7 = (*(v3 + 176))();
  v8 = v7[2];
  v7[2] = a1;

  v9 = a1;

  v10 = sub_25297CECC(a2);

  swift_beginAccess();
  v7[3] = v10;

  v11 = v7[4];
  v7[4] = a3;
  v12 = a3;

  return v7;
}

uint64_t sub_252DE28F4(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252DE2C3C(a1);
}

BOOL sub_252DE299C(uint64_t a1)
{
  v1 = 0;
  if (*(a1 + 8) == 3 && *(a1 + 9) == 3 && !*(a1 + 16))
  {
    if (*(a1 + 10))
    {
      if (*(a1 + 24) == 2 && *(a1 + 25) == 3 && *(a1 + 26) == 4)
      {
        v1 = 0;
        if (!*(*(a1 + 32) + 16) && *(a1 + 40) == 4)
        {
          v1 = 0;
          if (!*(*(a1 + 56) + 16) && *(a1 + 64) == 4)
          {
            if (*(*(a1 + 80) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 88) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 104) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 128) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 136) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 144) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 152) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 160) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 168) + 16))
            {
              return 0;
            }

            if (*(*(a1 + 176) + 16))
            {
              return 0;
            }

            v1 = *(*(a1 + 184) + 16);
            if (v1)
            {
              return 0;
            }

            if (!*(*(a1 + 200) + 16) && *(a1 + 209) == 2)
            {
              if (*(*(a1 + 216) + 16) || ((*(*(a1 + 224) + 16) == 0) & *(a1 + 232)) != 1)
              {
                return 0;
              }

              return *(*(a1 + 256) + 16) == 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

BOOL sub_252DE2B0C(__int128 *a1)
{
  v1 = *(a1 + 208);
  if (v1 != 9 && (v14 = a1[12], (sub_252A0D524(v1, 0) & 1) != 0) && *(v14 + 16) && (v3 = sub_2529A78B0(1, v14)) && (v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3), sub_252929E74((v4 + 16), &v15), , __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1)), v5 = sub_252E338D4(), __swift_destroy_boxed_opaque_existential_1(&v15), (v5 & 1) != 0))
  {
    v6 = a1[9];
    v23 = a1[8];
    v24 = v6;
    v7 = a1[11];
    v25 = a1[10];
    v26 = v7;
    v8 = a1[5];
    v19 = a1[4];
    v20 = v8;
    v9 = a1[7];
    v21 = a1[6];
    v22 = v9;
    v10 = a1[1];
    v15 = *a1;
    v16 = v10;
    v11 = a1[3];
    v17 = a1[2];
    v18 = v11;
    v27 = v14;
    v28 = v1;
    memcpy(v29, a1 + 209, sizeof(v29));
    return sub_252DE299C(&v15);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252DE2C3C(void *__src)
{
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252DE2CAC, 0, 0);
}

uint64_t sub_252DE2CAC()
{
  v33 = v0;
  v1 = type metadata accessor for HomeStore(0);
  v2 = static HomeStore.shared.getter(v1);
  v3 = sub_2529F219C();
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    if (!v3)
    {
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252E3C290;
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(__dst, (v0 + 16), sizeof(__dst));

    v7 = sub_252E1EBE8(__dst);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_252E3C290;
    v9 = &v3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v10 = *&v3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    *(v8 + 32) = *&v3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    *(v8 + 40) = v10;
    v7[23] = v8;
    sub_252DE30E4(v3, 0);

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_252E3C290;
    v13 = *v9;
    v12 = *(v9 + 1);

    sub_252956C8C(v3, 0);
    *(v11 + 32) = v13;
    *(v11 + 40) = v12;
    v7[41] = v11;

    v7[20] = &unk_2864A7638;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
    v14 = swift_allocObject();
    v15 = [*&v3[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for Room(0);
      swift_allocObject();
      v17 = sub_2529A1E08(v16);
      v19 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      *(v14 + 32) = v19;
      *(v14 + 40) = v18;
      if (v18)
      {

        v20 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2529F7A80(0, *(v20 + 2) + 1, 1, v20);
        }

        v21 = *(v20 + 2);
        v22 = *(v20 + 3);
        v23 = v21 + 1;
        if (v21 >= v22 >> 1)
        {
          v31 = v21 + 1;
          v28 = v20;
          v29 = *(v20 + 2);
          v30 = sub_2529F7A80((v22 > 1), v21 + 1, 1, v28);
          v21 = v29;
          v23 = v31;
          v20 = v30;
        }

        *(v20 + 2) = v23;
        v24 = &v20[16 * v21];
        *(v24 + 4) = v19;
        *(v24 + 5) = v18;
        goto LABEL_16;
      }
    }

    else
    {
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_16:
    swift_setDeallocating();
    sub_252DE30F0(v14 + 32);
    swift_deallocClassInstance();
    v7[15] = v20;

    sub_252E1F258(&unk_2864A7660);

    sub_252E1E4F8(v6 + 32);

    sub_252956C8C(v3, 0);
    sub_252956C8C(v3, 0);
    goto LABEL_17;
  }

  sub_252956C8C(v3, 1);
LABEL_11:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E9D9E0, 0xD00000000000008DLL, 0x8000000252E9DA00);
  v6 = MEMORY[0x277D84F90];
LABEL_17:
  v26 = *(v0 + 8);

  return v26(v6);
}

id sub_252DE30E4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_252DE30F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HomeAttributeTargetMap.indentedDescription.getter()
{
  v1 = v0;
  sub_252E379F4();
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E36F34();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v4, v6);

  MEMORY[0x2530AD570](0x444970616D207B20, 0xEA0000000000203ALL);
  [v1 mapID];
  sub_252E37374();
  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  v7 = sub_252AD24A4(1, 8224, 0xE200000000000000);

  return v7;
}

uint64_t HomeAttributeTargetMap.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](8315, 0xE200000000000000);
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E36F34();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v4, v6);

  MEMORY[0x2530AD570](0x3A444970616D202CLL, 0xE900000000000020);
  [v1 mapID];
  sub_252E37374();
  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return 0;
}

BOOL HomeAttributeTargetMap.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v19);
  if (v20)
  {
    type metadata accessor for HomeAttributeTargetMap();
    if (swift_dynamicCast())
    {
      v2 = [v18 name];
      if (v2)
      {
        v3 = v2;
        v4 = sub_252E36F34();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v1 name];
      if (v7)
      {
        v8 = v7;
        v9 = sub_252E36F34();
        v11 = v10;

        if (!v6)
        {
          if (!v11)
          {
            goto LABEL_18;
          }

LABEL_19:

          return 0;
        }

        if (v11)
        {
          if (v4 == v9 && v6 == v11)
          {

LABEL_18:
            [v18 mapID];
            v14 = v13;
            [v1 mapID];
            v16 = v15;

            return v14 == v16;
          }

          v12 = sub_252E37DB4();

          if (v12)
          {
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }

      else if (!v6)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_252982F10(v19);
  }

  return 0;
}

void *sub_252DE3C64@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    sub_252DE5680(__src);
    return memcpy(a1, __src, 0x200uLL);
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = memcpy(__dst, (*v1 + 504 * v3 + 32), sizeof(__dst));
  v1[1] = v3 + 1;
  v6 = v1[2];
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  memcpy(__src + 8, __dst, 0x1F8uLL);
  *&__src[0] = v6;
  GEOLocationCoordinate2DMake();
  memcpy(a1, __src, 0x200uLL);
  return sub_2529353AC(__dst, &v7);
}

double sub_252DE3D38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546220, &unk_252E61660);
  v0 = swift_allocObject();
  *&result = 7;
  *(v0 + 16) = xmmword_252E419D0;
  *(v0 + 32) = &type metadata for UnsupportedMultiCardinalRequests;
  *(v0 + 40) = &off_2864B9170;
  *(v0 + 48) = &type metadata for MatchesAllWords;
  *(v0 + 56) = &off_2864C0E70;
  *(v0 + 64) = &type metadata for MatchesEntities;
  *(v0 + 72) = &off_2864B30A8;
  *(v0 + 80) = &type metadata for SceneSetUp;
  *(v0 + 88) = &off_2864BB8B0;
  *(v0 + 96) = &type metadata for TurnOffScene;
  *(v0 + 104) = &off_2864BE9E8;
  *(v0 + 112) = &type metadata for DeviceNameRoomNameConflict;
  *(v0 + 120) = &off_2864BFA48;
  *(v0 + 128) = &type metadata for IntentIntersection;
  *(v0 + 136) = &off_2864B4E60;
  qword_27F575DC0 = v0;
  return result;
}

char *sub_252DE3E0C(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  v8 = sub_252E36AD4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v55 = &v44 - v14;
  v71[65] = 0;
  v71[66] = 0;
  v71[64] = a3;
  swift_bridgeObjectRetain_n();
  sub_252DE3C64(v69);
  memcpy(v70, v69, sizeof(v70));
  memcpy(v71, v70, 0x200uLL);
  if (sub_252AFB7A0(v71) == 1)
  {
    v47 = MEMORY[0x277D84F90];
LABEL_3:

    return a3;
  }

  v16 = (v9 + 16);
  v17 = 0x616320797A7A7566;
  v62 = "ing candidates: ";
  if (a4)
  {
    v17 = 0x74616469646E6163;
  }

  v51 = v17;
  v18 = 0xEF6574616469646ELL;
  if (a4)
  {
    v18 = 0xE900000000000065;
  }

  v50 = v18;
  if (a4)
  {
    v19 = 0x74616469646E6143;
  }

  else
  {
    v19 = 0x616320797A7A7546;
  }

  v48 = "validateCandidates(for:using:)";
  v49 = a2 + 8;
  v52 = a2 + 16;
  v53 = v19;
  v45 = " is invalid for step: ";
  v47 = MEMORY[0x277D84F90];
  v60 = (v9 + 16);
  v61 = (v9 + 8);
  v63 = v8;
  while (1)
  {
    v59 = a3;
    v56 = v71[0];
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_27F544DA8);
    v21 = *v16;
    v22 = v55;
    (*v16)(v55, v20, v8);
    v69[0] = 0;
    v69[1] = 0xE000000000000000;
    sub_252E379F4();

    v64[0] = 0x676E696E6E755222;
    v64[1] = 0xEF203A7065747320;
    v69[0] = a1;
    v69[1] = a2;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546208, &qword_252E61648);
    v23 = sub_252E36F94();
    v24 = a2;
    MEMORY[0x2530AD570](v23);

    MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
    v25 = v50;
    MEMORY[0x2530AD570](v51, v50);

    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    memcpy(v69, &v71[1], 0x1F8uLL);
    v26 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v26);

    sub_252CC3D90(v64[0], v64[1], 0xD00000000000008CLL, v62 | 0x8000000000000000);
    v27 = v63;

    v58 = *v61;
    v58(v22, v27);
    memcpy(v69, &v71[1], 0x1F8uLL);
    v28 = v24;
    if ((*(v24 + 8))(v69, a1, v24))
    {
      v36 = v46;
      v21(v46, v20, v27);
      v69[0] = 0;
      v69[1] = 0xE000000000000000;
      sub_252E379F4();
      v67 = v69[0];
      v68 = v69[1];
      MEMORY[0x2530AD570](v53, v25);

      MEMORY[0x2530AD570](0xD000000000000014, v45 | 0x8000000000000000);
      v69[0] = a1;
      v69[1] = v24;
      v37 = sub_252E36F94();
      MEMORY[0x2530AD570](v37);

      MEMORY[0x2530AD570](2618, 0xE200000000000000);
      memcpy(v65, &v71[1], sizeof(v65));
      memcpy(v69, v70, sizeof(v69));
      sub_252DE5610(v69, v64);
      v38 = HomeAutomationIntent.description.getter();
      v40 = v39;
      memcpy(v66, v65, sizeof(v66));
      sub_252935408(v66);
      MEMORY[0x2530AD570](v38, v40);
      v8 = v63;

      sub_252CC3D90(v67, v68, 0xD00000000000008CLL, v62 | 0x8000000000000000);

      v58(v36, v8);
      memcpy(v65, &v71[1], sizeof(v65));
      (*(v24 + 16))(v64, v65, 1, a1, v24);
      v41 = v47;
      a2 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_2529F7FB0(0, *(v41 + 2) + 1, 1, v41);
      }

      a3 = v59;
      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_2529F7FB0((v42 > 1), v43 + 1, 1, v41);
      }

      sub_25293847C(v70, &qword_27F546218, &qword_252E61658);
      *(v41 + 2) = v43 + 1;
      v47 = v41;
      memcpy(&v41[504 * v43 + 32], v64, 0x1F8uLL);
      goto LABEL_20;
    }

    v29 = v54;
    v21(v54, v20, v27);
    v69[0] = 0;
    v69[1] = 0xE000000000000000;
    sub_252E379F4();
    v67 = v69[0];
    v68 = v69[1];
    MEMORY[0x2530AD570](v53, v25);

    MEMORY[0x2530AD570](0xD000000000000016, v48 | 0x8000000000000000);
    v69[0] = a1;
    v69[1] = v24;
    v30 = sub_252E36F94();
    MEMORY[0x2530AD570](v30);

    MEMORY[0x2530AD570](2618, 0xE200000000000000);
    memcpy(v65, &v71[1], sizeof(v65));
    memcpy(v69, v70, sizeof(v69));
    sub_252DE5610(v69, v64);
    v31 = HomeAutomationIntent.description.getter();
    v33 = v32;
    memcpy(v66, v65, sizeof(v66));
    sub_252935408(v66);
    MEMORY[0x2530AD570](v31, v33);
    v8 = v63;

    sub_252CC3D90(v67, v68, 0xD00000000000008CLL, v62 | 0x8000000000000000);

    v58(v29, v8);
    memcpy(v65, &v71[1], sizeof(v65));
    (*(v24 + 16))(v64, v65, 0, a1, v24);
    a3 = v59;
    a2 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = sub_252D57AC0(a3);
    }

    result = sub_25293847C(v70, &qword_27F546218, &qword_252E61658);
    if ((v56 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v56 >= *(a3 + 2))
    {
      goto LABEL_28;
    }

    v34 = &a3[504 * v56];
    memcpy(v65, v34 + 32, sizeof(v65));
    memcpy(v34 + 32, v64, 0x1F8uLL);
    sub_252935408(v65);
LABEL_20:
    sub_252DE3C64(v69);
    memcpy(v70, v69, sizeof(v70));
    memcpy(v71, v70, 0x200uLL);
    v35 = sub_252AFB7A0(v71);
    v16 = v60;
    if (v35 == 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_252DE4708(uint64_t a1, uint64_t a2)
{
  *&v78 = a2;
  v72 = sub_252E36AB4();
  v3 = *(v72 - 8);
  v4 = MEMORY[0x28223BE20](v72);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v60 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  if (qword_27F53F618 != -1)
  {
    goto LABEL_73;
  }

LABEL_2:
  v70 = v6;
  v65 = v9;
  v12 = qword_27F544FA0;
  sub_252E36A94();
  sub_252E375D4();
  v71 = v12;
  sub_252E36A84();
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v77 = sub_252E36AD4();
  __swift_project_value_buffer(v77, qword_27F544E08);
  *&v105[0] = 0;
  *(&v105[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v105[0] = 0xD000000000000020;
  *(&v105[0] + 1) = 0x8000000252E9DA90;
  *&v94 = *(a1 + 16);
  v13 = v94;
  v14 = sub_252E37D94();
  MEMORY[0x2530AD570](v14);

  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v15 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v15);

  sub_252CC3D90(*&v105[0], *(&v105[0] + 1), 0xD00000000000008CLL, 0x8000000252E9DAC0);

  v16 = v65;
  (*(v3 + 2))(v65, v11, v72);
  if (v13 == 1)
  {
    sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E8D2A0, 0xD00000000000008CLL, 0x8000000252E9DAC0);
    v20 = sub_252E375C4();
    sub_252E36A74(v20, &dword_252917000, v71, "IntentSelection.IntentValidation", 32, 2, v16, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v21 = *(v3 + 1);
    v22 = v72;
    v21(v16, v72);
    v21(v11, v22);

    return a1;
  }

  if (!v13)
  {
    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E6C730, 0xD00000000000008CLL, 0x8000000252E9DAC0, 0xD00000000000001ELL, 0x8000000252E9DC20, 41);
    v17 = sub_252E375C4();
    a1 = MEMORY[0x277D84F90];
    sub_252E36A74(v17, &dword_252917000, v71, "IntentSelection.IntentValidation", 32, 2, v16, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v18 = *(v3 + 1);
    v19 = v72;
    v18(v16, v72);
    v18(v11, v19);
    return a1;
  }

  v73 = "ing candidates: ";
  v61 = v11;
  v62 = v3;
  v11 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v9 = (a1 + 32 + 504 * v11);
    v6 = v11;
    while (1)
    {
      if (v6 >= v13)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        swift_once();
        goto LABEL_2;
      }

      memcpy(v105, v9, 0x1F8uLL);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_70;
      }

      if (!*(*&v105[25] + 16) && !*(*(&v105[25] + 1) + 16) && !*(*&v105[26] + 16) && !*(*(&v105[26] + 1) + 16) && !*(*&v105[27] + 16) && !*(*(&v105[27] + 1) + 16) && !*(*&v105[28] + 16) && !*(*(&v105[28] + 1) + 16) && !*(*&v105[29] + 16) && !*(*(&v105[29] + 1) + 16) && !*(*&v105[30] + 16))
      {
        break;
      }

      ++v6;
      v9 += 504;
      if (v11 == v13)
      {
        goto LABEL_29;
      }
    }

    sub_2529353AC(v105, &v94);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v3 + 2) + 1, 1);
      v3 = v79;
    }

    v25 = *(v3 + 2);
    v24 = *(v3 + 3);
    if (v25 >= v24 >> 1)
    {
      sub_2529AA480((v24 > 1), v25 + 1, 1);
      v3 = v79;
    }

    *(v3 + 2) = v25 + 1;
    memcpy(&v3[504 * v25 + 32], v105, 0x1F8uLL);
  }

  while (v11 != v13);
LABEL_29:
  v26 = 0;
  a1 += 32;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v6 = (a1 + 504 * v26);
    v11 = v26;
    while (1)
    {
      if (v11 >= v13)
      {
        goto LABEL_71;
      }

      memcpy(v105, v6, 0x1F8uLL);
      v26 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_72;
      }

      if (*(*&v105[25] + 16) || *(*(&v105[25] + 1) + 16) || *(*&v105[26] + 16) || *(*(&v105[26] + 1) + 16) || *(*&v105[27] + 16) || *(*(&v105[27] + 1) + 16) || *(*&v105[28] + 16) || *(*(&v105[28] + 1) + 16) || *(*&v105[29] + 16) || *(*(&v105[29] + 1) + 16) || *(*&v105[30] + 16))
      {
        break;
      }

      ++v11;
      v6 += 504;
      if (v26 == v13)
      {
        goto LABEL_51;
      }
    }

    sub_2529353AC(v105, &v94);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v9;
    if ((v27 & 1) == 0)
    {
      sub_2529AA480(0, *(v9 + 2) + 1, 1);
      v9 = v79;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    if (v29 >= v28 >> 1)
    {
      sub_2529AA480((v28 > 1), v29 + 1, 1);
      v9 = v79;
    }

    *(v9 + 2) = v29 + 1;
    memcpy(&v9[504 * v29 + 32], v105, 0x1F8uLL);
  }

  while (v26 != v13);
LABEL_51:
  v30 = *(v78 + 16);
  if (v30)
  {
    v31 = (v78 + 32);
    v66 = 0x8000000252E9DB90;
    v67 = "ation/IntentValidation.swift";
    v63 = "candidates after step ";
    v64 = "t andidates after step ";
    v68 = 0x8000000252E9DB70;
    v69 = (v62 + 8);
    while (1)
    {
      v78 = *v31;
      v37 = v71;
      sub_252E36A94();
      sub_252E375D4();
      v74 = v37;
      sub_252E36A84();
      v39 = *(&v78 + 1);
      v38 = v78;
      v40 = sub_252DE3E0C(v78, *(&v78 + 1), v3, 1);
      v33 = v41;

      v42 = sub_252DE3E0C(v38, v39, v9, 0);
      v44 = v43;

      v45 = *(v33 + 2);
      v75 = v31;
      v76 = v30;
      if (v45)
      {
        break;
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v77, qword_27F544DA8);
      *&v105[0] = 0;
      *(&v105[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v105[0] = 0xD000000000000027;
      *(&v105[0] + 1) = v66;
      v49 = sub_252E37FB4();
      MEMORY[0x2530AD570](v49);

      MEMORY[0x2530AD570](0x74706D6520736920, 0xE900000000000079);
      v50 = v73;
      sub_252CC3D90(*&v105[0], *(&v105[0] + 1), 0xD00000000000008CLL, v73 | 0x8000000000000000);

      if (*(v44 + 16))
      {
        v33 = v40;
LABEL_63:
        v34 = v70;

        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v77, qword_27F544DA8);
        *&v105[0] = 0;
        *(&v105[0] + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v105[0] = 0xD00000000000001CLL;
        *(&v105[0] + 1) = v68;
        *&v94 = *(v44 + 16);

        v51 = sub_252E37D94();
        MEMORY[0x2530AD570](v51);

        MEMORY[0x2530AD570](0x7320726574666120, 0xED0000203A706574);
        v52 = sub_252E37FB4();
        MEMORY[0x2530AD570](v52);

        MEMORY[0x2530AD570](2108682, 0xE300000000000000);
        v53 = MEMORY[0x2530AD730](v44, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v53);

        sub_252CC3D90(*&v105[0], *(&v105[0] + 1), 0xD00000000000008CLL, v73 | 0x8000000000000000);
        v42 = v44;
        goto LABEL_54;
      }

      *&v105[0] = 0;
      *(&v105[0] + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000026, v64 | 0x8000000000000000);
      v32 = sub_252E37FB4();
      MEMORY[0x2530AD570](v32);

      MEMORY[0x2530AD570](0xD00000000000002DLL, v63 | 0x8000000000000000);
      sub_252CC3D90(*&v105[0], *(&v105[0] + 1), 0xD00000000000008CLL, v50 | 0x8000000000000000);
      v33 = v40;
      v34 = v70;
LABEL_54:

      v105[0] = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546208, &qword_252E61648);
      v35 = sub_252E36F94();
      v93 = 1;
      v92 = 1;
      v91 = 1;
      v90 = 1;
      *&v94 = 0;
      BYTE8(v94) = 1;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      LOBYTE(v100) = 1;
      v101 = 0uLL;
      *(&v100 + 1) = 0;
      LOWORD(v102) = 513;
      *(&v102 + 1) = v35;
      v103 = v36;
      v104 = 1;
      GEOLocationCoordinate2DMake();
      v87 = v102;
      v88 = v103;
      v89 = v104;
      v83 = v98;
      v84 = v99;
      v85 = v100;
      v86 = v101;
      v79 = v94;
      v80 = v95;
      v81 = v96;
      v82 = v97;
      _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v74, v34, "IntentSelection.IntentValidation.Step", 37, 2, &v79);

      v105[8] = v87;
      v105[9] = v88;
      LOBYTE(v105[10]) = v89;
      v105[4] = v83;
      v105[5] = v84;
      v105[6] = v85;
      v105[7] = v86;
      v105[0] = v79;
      v105[1] = v80;
      v105[2] = v81;
      v105[3] = v82;
      sub_25293847C(v105, &qword_27F5407B0, &unk_252E42860);
      (*v69)(v34, v72);
      v31 = v75 + 1;
      v3 = v33;
      v9 = v42;
      v30 = v76 - 1;
      if (v76 == 1)
      {
        goto LABEL_67;
      }
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v77, qword_27F544DA8);
    *&v105[0] = 0;
    *(&v105[0] + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001ELL, v67 | 0x8000000000000000);
    *&v94 = *(v33 + 2);
    v46 = sub_252E37D94();
    MEMORY[0x2530AD570](v46);

    MEMORY[0x2530AD570](0x7320726574666120, 0xED0000203A706574);
    v47 = sub_252E37FB4();
    MEMORY[0x2530AD570](v47);

    MEMORY[0x2530AD570](2108682, 0xE300000000000000);
    v48 = MEMORY[0x2530AD730](v33, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v48);

    sub_252CC3D90(*&v105[0], *(&v105[0] + 1), 0xD00000000000008CLL, v73 | 0x8000000000000000);

    goto LABEL_63;
  }

  v33 = v3;
  v42 = v9;
LABEL_67:
  *&v105[0] = v33;
  sub_25297AA34(v42);
  a1 = *&v105[0];
  v54 = sub_252E375C4();
  v55 = v65;
  sub_252E36A74(v54, &dword_252917000, v71, "IntentSelection.IntentValidation", 32, 2, v65, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v56 = *(v62 + 1);
  v57 = v55;
  v58 = v72;
  v56(v57, v72);
  v56(v61, v58);
  return a1;
}

uint64_t sub_252DE5610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546210, &qword_252E61650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_252DE5680(_OWORD *a1)
{
  result = 0.0;
  a1[30] = 0u;
  a1[31] = 0u;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id sub_252DE56C8(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = v2;
    v11 = [v9 error];
    if (v11 && (v36 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480), type metadata accessor for HMError(0), (swift_dynamicCast() & 1) != 0))
    {

      v12 = v34;
      v13 = sub_252DE5E64(a1, v34);

      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27F544CB8);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E9DEB0);
      v14 = sub_252B9ACF0(v13);
      MEMORY[0x2530AD570](v14);

      sub_252CC4050(v36, v37, 0xD000000000000073, 0x8000000252E9DCB0, 0xD000000000000015, 0x8000000252E9DE10, 604);
    }

    else
    {
      v15 = [v9 error];
      if (v15)
      {

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v16 = __swift_project_value_buffer(v4, qword_27F544CB8);
        (*(v5 + 16))(v7, v16, v4);
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E9DE50);
        v17 = [v9 error];

        if (v17)
        {
          swift_getErrorValue();
          v18 = sub_252E37E54();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        v34 = v18;
        v35 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v26 = sub_252E36F94();
        MEMORY[0x2530AD570](v26);

        MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9DE80);
        sub_252CC4050(v36, v37, 0xD000000000000073, 0x8000000252E9DCB0, 0xD000000000000015, 0x8000000252E9DE10, 607);

        (*(v5 + 8))(v7, v4);
        v13 = 7;
      }

      else
      {

        v13 = 1;
      }
    }

    v27 = [v9 request];
    v25 = sub_252DE80B4(v13);

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544CB8);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_252E379F4();

    v36 = 0xD000000000000014;
    v37 = 0x8000000252E9DE30;
    v34 = v10;
    sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
    v28 = v10;
    v29 = sub_252E36FB4();
    MEMORY[0x2530AD570](v29);

    MEMORY[0x2530AD570](544175136, 0xE400000000000000);
    v34 = v25;
    v30 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EE0, &qword_252E4D870);
    v31 = sub_252E36FB4();
    MEMORY[0x2530AD570](v31);

    sub_252CC3D90(v36, v37, 0xD000000000000073, 0x8000000252E9DCB0);
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544CB8);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x65736E6F70736552, 0xED00002065736142);
    v21 = [v2 description];
    v22 = sub_252E36F34();
    v24 = v23;

    MEMORY[0x2530AD570](v22, v24);

    MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E9DDE0);
    sub_252CC4050(v36, v37, 0xD000000000000073, 0x8000000252E9DCB0, 0xD000000000000015, 0x8000000252E9DE10, 621);

    return 0;
  }

  return v25;
}

uint64_t sub_252DE5D70(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HMError(0);
  if (!swift_dynamicCast())
  {
    return 2;
  }

  v3 = v7;
  v4 = sub_252DE89C0(v7);

  return v4;
}

uint64_t sub_252DE5E64(void *a1, uint64_t a2)
{
  type metadata accessor for HMError(0);
  sub_252DE9E74();
  sub_252E32C04();
  if (v10 > 44)
  {
    if (v10 <= 64)
    {
      if (v10 == 45)
      {
        return 10;
      }

      if (v10 == 63 || v10 == 64)
      {
        return 7;
      }

      goto LABEL_30;
    }

    if (v10 != 65)
    {
      if (v10 == 82)
      {
        return 21;
      }

      if (v10 == 88)
      {
        return 16;
      }

      goto LABEL_30;
    }

    return 17;
  }

  if (v10 > 14)
  {
    if (v10 != 15)
    {
      if (v10 == 25)
      {
        return 18;
      }

      if (v10 == 44)
      {
        return 11;
      }

      goto LABEL_30;
    }

    return 17;
  }

  switch(v10)
  {
    case 4:
      if (a1)
      {
        v4 = a1;
        v5 = [v4 residentDevices];
        sub_25293F638(0, &qword_27F542020, 0x277CD1D68);
        v6 = sub_252E37264();

        if (v6 >> 62)
        {
          v7 = sub_252E378C4();
        }

        else
        {
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v7)
        {
        }

        else
        {
          v8 = [v4 homeLocationStatus];

          if (v8 != 1)
          {
            return 12;
          }
        }
      }

      return 6;
    case 5:
      return 3;
    case 10:
      return 22;
  }

LABEL_30:
  sub_252E32C04();
  if (v9 == 2405)
  {
    return 23;
  }

  if (v9 != 2404)
  {
    if (v9 == 2003)
    {
      return 22;
    }

    return 7;
  }

  return 20;
}

double sub_252DE6090@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if ([a1 taskType] == 4)
  {
    goto LABEL_11;
  }

  if (qword_27F53F8D8 != -1)
  {
    swift_once();
  }

  v4 = off_27F546250;
  v5 = [a1 attribute];
  v6 = [a1 value];
  if (!v4[2])
  {

LABEL_11:
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v10 = v6;
  v7 = sub_252A45854(v5, v6);
  if ((v8 & 1) == 0)
  {

    goto LABEL_11;
  }

  sub_252974E7C(v4[7] + 32 * v7, a2);

  return result;
}

uint64_t sub_252DE61A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E61670;
  *(v0 + 32) = sub_252E36F34();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_252E36F34();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_252E36F34();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_252E36F34();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_252E36F34();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_252E36F34();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_252E36F34();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_252E36F34();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_252E36F34();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_252E36F34();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_252E36F34();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_252E36F34();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_252E36F34();
  *(v0 + 232) = v13;
  *(v0 + 240) = sub_252E36F34();
  *(v0 + 248) = v14;
  *(v0 + 256) = sub_252E36F34();
  *(v0 + 264) = v15;
  *(v0 + 272) = sub_252E36F34();
  *(v0 + 280) = v16;
  *(v0 + 288) = sub_252E36F34();
  *(v0 + 296) = v17;
  *(v0 + 304) = sub_252E36F34();
  *(v0 + 312) = v18;
  *(v0 + 320) = sub_252E36F34();
  *(v0 + 328) = v19;
  *(v0 + 336) = sub_252E36F34();
  *(v0 + 344) = v20;
  *(v0 + 352) = sub_252E36F34();
  *(v0 + 360) = v21;
  *(v0 + 368) = sub_252E36F34();
  *(v0 + 376) = v22;
  *(v0 + 384) = sub_252E36F34();
  *(v0 + 392) = v23;
  *(v0 + 400) = sub_252E36F34();
  *(v0 + 408) = v24;
  *(v0 + 416) = sub_252E36F34();
  *(v0 + 424) = v25;
  *(v0 + 432) = sub_252E36F34();
  *(v0 + 440) = v26;
  *(v0 + 448) = sub_252E36F34();
  *(v0 + 456) = v27;
  *(v0 + 464) = sub_252E36F34();
  *(v0 + 472) = v28;
  *(v0 + 480) = sub_252E36F34();
  *(v0 + 488) = v29;
  *(v0 + 496) = sub_252E36F34();
  *(v0 + 504) = v30;
  *(v0 + 512) = sub_252E36F34();
  *(v0 + 520) = v31;
  *(v0 + 528) = sub_252E36F34();
  *(v0 + 536) = v32;
  *(v0 + 544) = sub_252E36F34();
  *(v0 + 552) = v33;
  *(v0 + 560) = sub_252E36F34();
  *(v0 + 568) = v34;
  *(v0 + 576) = sub_252E36F34();
  *(v0 + 584) = v35;
  *(v0 + 592) = sub_252E36F34();
  *(v0 + 600) = v36;
  *(v0 + 608) = sub_252E36F34();
  *(v0 + 616) = v37;
  *(v0 + 624) = sub_252E36F34();
  *(v0 + 632) = v38;
  *(v0 + 640) = sub_252E36F34();
  *(v0 + 648) = v39;
  *(v0 + 656) = sub_252E36F34();
  *(v0 + 664) = v40;
  *(v0 + 672) = sub_252E36F34();
  *(v0 + 680) = v41;
  *(v0 + 688) = sub_252E36F34();
  *(v0 + 696) = v42;
  *(v0 + 704) = sub_252E36F34();
  *(v0 + 712) = v43;
  result = sub_252E36F34();
  *(v0 + 720) = result;
  *(v0 + 728) = v45;
  qword_27F575DC8 = v0;
  return result;
}

uint64_t sub_252DE65A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546280, &qword_252E616E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v1;
  *(inited + 48) = 4;
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v2;
  *(inited + 72) = 3;
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v3;
  *(inited + 96) = 5;
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v4;
  *(inited + 120) = 2;
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v5;
  *(inited + 144) = 1;
  v6 = sub_252CC5CBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546288, &unk_252E616E8);
  result = swift_arrayDestroy();
  off_27F546228 = v6;
  return result;
}

uint64_t sub_252DE66CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462A0, &qword_252E61708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E61680;
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v2;
  *(inited + 72) = 2;
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v3;
  *(inited + 96) = 3;
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v4;
  *(inited + 120) = 4;
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v5;
  *(inited + 144) = 6;
  *(inited + 152) = sub_252E36F34();
  *(inited + 160) = v6;
  *(inited + 168) = 27;
  *(inited + 176) = sub_252E36F34();
  *(inited + 184) = v7;
  *(inited + 192) = 19;
  *(inited + 200) = sub_252E36F34();
  *(inited + 208) = v8;
  *(inited + 216) = 28;
  *(inited + 224) = sub_252E36F34();
  *(inited + 232) = v9;
  *(inited + 240) = 23;
  *(inited + 248) = sub_252E36F34();
  *(inited + 256) = v10;
  *(inited + 264) = 29;
  *(inited + 272) = sub_252E36F34();
  *(inited + 280) = v11;
  *(inited + 288) = 30;
  *(inited + 296) = sub_252E36F34();
  *(inited + 304) = v12;
  *(inited + 312) = 31;
  *(inited + 320) = sub_252E36F34();
  *(inited + 328) = v13;
  *(inited + 336) = 32;
  *(inited + 344) = sub_252E36F34();
  *(inited + 352) = v14;
  *(inited + 360) = 33;
  *(inited + 368) = sub_252E36F34();
  *(inited + 376) = v15;
  *(inited + 384) = 34;
  *(inited + 392) = sub_252E36F34();
  *(inited + 400) = v16;
  *(inited + 408) = 36;
  *(inited + 416) = sub_252E36F34();
  *(inited + 424) = v17;
  *(inited + 432) = 7;
  *(inited + 440) = sub_252E36F34();
  *(inited + 448) = v18;
  *(inited + 456) = 24;
  *(inited + 464) = sub_252E36F34();
  *(inited + 472) = v19;
  *(inited + 480) = 5;
  *(inited + 488) = sub_252E36F34();
  *(inited + 496) = v20;
  *(inited + 504) = 5;
  *(inited + 512) = sub_252E36F34();
  *(inited + 520) = v21;
  *(inited + 528) = 21;
  *(inited + 536) = sub_252E36F34();
  *(inited + 544) = v22;
  *(inited + 552) = 14;
  *(inited + 560) = sub_252E36F34();
  *(inited + 568) = v23;
  *(inited + 576) = 8;
  *(inited + 584) = sub_252E36F34();
  *(inited + 592) = v24;
  *(inited + 600) = 20;
  *(inited + 608) = sub_252E36F34();
  *(inited + 616) = v25;
  *(inited + 624) = 11;
  *(inited + 632) = sub_252E36F34();
  *(inited + 640) = v26;
  *(inited + 648) = 10;
  *(inited + 656) = sub_252E36F34();
  *(inited + 664) = v27;
  *(inited + 672) = 12;
  *(inited + 680) = sub_252E36F34();
  *(inited + 688) = v28;
  *(inited + 696) = 18;
  *(inited + 704) = sub_252E36F34();
  *(inited + 712) = v29;
  *(inited + 720) = 17;
  *(inited + 728) = sub_252E36F34();
  *(inited + 736) = v30;
  *(inited + 744) = 16;
  *(inited + 752) = sub_252E36F34();
  *(inited + 760) = v31;
  *(inited + 768) = 15;
  *(inited + 776) = sub_252E36F34();
  *(inited + 784) = v32;
  *(inited + 792) = 9;
  *(inited + 800) = sub_252E36F34();
  *(inited + 808) = v33;
  *(inited + 816) = 38;
  *(inited + 824) = sub_252E36F34();
  *(inited + 832) = v34;
  *(inited + 840) = 39;
  *(inited + 848) = sub_252E36F34();
  *(inited + 856) = v35;
  *(inited + 864) = 40;
  *(inited + 872) = sub_252E36F34();
  *(inited + 880) = v36;
  *(inited + 888) = 26;
  *(inited + 896) = sub_252E36F34();
  *(inited + 904) = v37;
  *(inited + 912) = 32;
  *(inited + 920) = sub_252E36F34();
  *(inited + 928) = v38;
  *(inited + 936) = 34;
  *(inited + 944) = sub_252E36F34();
  *(inited + 952) = v39;
  *(inited + 960) = 34;
  *(inited + 968) = sub_252E36F34();
  *(inited + 976) = v40;
  *(inited + 984) = 34;
  *(inited + 992) = sub_252E36F34();
  *(inited + 1000) = v41;
  *(inited + 1008) = 32;
  v42 = sub_252CC4760(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462A8, &unk_252E61710);
  result = swift_arrayDestroy();
  off_27F546230 = v42;
  return result;
}

uint64_t sub_252DE6C28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462A0, &qword_252E61708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E61690;
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v1;
  *(inited + 48) = 37;
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v2;
  *(inited + 72) = 19;
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v3;
  *(inited + 96) = 27;
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v4;
  *(inited + 120) = 7;
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v5;
  *(inited + 144) = 5;
  *(inited + 152) = sub_252E36F34();
  *(inited + 160) = v6;
  *(inited + 168) = 4;
  *(inited + 176) = sub_252E36F34();
  *(inited + 184) = v7;
  *(inited + 192) = 24;
  *(inited + 200) = sub_252E36F34();
  *(inited + 208) = v8;
  *(inited + 216) = 1;
  *(inited + 224) = sub_252E36F34();
  *(inited + 232) = v9;
  *(inited + 240) = 6;
  *(inited + 248) = sub_252E36F34();
  *(inited + 256) = v10;
  *(inited + 264) = 2;
  *(inited + 272) = sub_252E36F34();
  *(inited + 280) = v11;
  *(inited + 288) = 43;
  *(inited + 296) = sub_252E36F34();
  *(inited + 304) = v12;
  *(inited + 312) = 2;
  *(inited + 320) = sub_252E36F34();
  *(inited + 328) = v13;
  *(inited + 336) = 3;
  *(inited + 344) = sub_252E36F34();
  *(inited + 352) = v14;
  *(inited + 360) = 38;
  *(inited + 368) = sub_252E36F34();
  *(inited + 376) = v15;
  *(inited + 384) = 28;
  *(inited + 392) = sub_252E36F34();
  *(inited + 400) = v16;
  *(inited + 408) = 23;
  *(inited + 416) = sub_252E36F34();
  *(inited + 424) = v17;
  *(inited + 432) = 30;
  *(inited + 440) = sub_252E36F34();
  *(inited + 448) = v18;
  *(inited + 456) = 29;
  *(inited + 464) = sub_252E36F34();
  *(inited + 472) = v19;
  *(inited + 480) = 29;
  *(inited + 488) = sub_252E36F34();
  *(inited + 496) = v20;
  *(inited + 504) = 30;
  *(inited + 512) = sub_252E36F34();
  *(inited + 520) = v21;
  *(inited + 528) = 39;
  *(inited + 536) = sub_252E36F34();
  *(inited + 544) = v22;
  *(inited + 552) = 41;
  *(inited + 560) = sub_252E36F34();
  *(inited + 568) = v23;
  *(inited + 576) = 26;
  *(inited + 584) = sub_252E36F34();
  *(inited + 592) = v24;
  *(inited + 600) = 26;
  *(inited + 608) = sub_252E36F34();
  *(inited + 616) = v25;
  *(inited + 624) = 44;
  *(inited + 632) = sub_252E36F34();
  *(inited + 640) = v26;
  *(inited + 648) = 32;
  *(inited + 656) = sub_252E36F34();
  *(inited + 664) = v27;
  *(inited + 672) = 35;
  *(inited + 680) = sub_252E36F34();
  *(inited + 688) = v28;
  *(inited + 696) = 45;
  *(inited + 704) = sub_252E36F34();
  *(inited + 712) = v29;
  *(inited + 720) = 36;
  *(inited + 728) = sub_252E36F34();
  *(inited + 736) = v30;
  *(inited + 744) = 36;
  *(inited + 752) = sub_252E36F34();
  *(inited + 760) = v31;
  *(inited + 768) = 36;
  v32 = sub_252CC4760(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462A8, &unk_252E61710);
  result = swift_arrayDestroy();
  off_27F546238 = v32;
  return result;
}

uint64_t sub_252DE7044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546290, &qword_252E616F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C3C0;
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v1;
  *(inited + 48) = 27;
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v2;
  *(inited + 72) = 46;
  v3 = sub_252CC4774(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546298, &qword_252E61700);
  result = swift_arrayDestroy();
  off_27F546240 = v3;
  return result;
}

uint64_t sub_252DE7118()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546290, &qword_252E616F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E616A0;
  *(v0 + 32) = sub_252E36F34();
  *(v0 + 40) = v1;
  *(v0 + 48) = 27;
  *(v0 + 56) = sub_252E36F34();
  *(v0 + 64) = v2;
  *(v0 + 72) = 25;
  *(v0 + 80) = sub_252E36F34();
  *(v0 + 88) = v3;
  *(v0 + 96) = 26;
  *(v0 + 104) = sub_252E36F34();
  *(v0 + 112) = v4;
  *(v0 + 120) = 51;
  *(v0 + 128) = sub_252E36F34();
  *(v0 + 136) = v5;
  *(v0 + 144) = 2;
  *(v0 + 152) = sub_252E36F34();
  *(v0 + 160) = v6;
  *(v0 + 168) = 3;
  *(v0 + 176) = sub_252E36F34();
  *(v0 + 184) = v7;
  *(v0 + 192) = 4;
  *(v0 + 200) = sub_252E36F34();
  *(v0 + 208) = v8;
  *(v0 + 216) = 59;
  *(v0 + 224) = sub_252E36F34();
  *(v0 + 232) = v9;
  *(v0 + 240) = 6;
  *(v0 + 248) = sub_252E36F34();
  *(v0 + 256) = v10;
  *(v0 + 264) = 14;
  *(v0 + 272) = sub_252E36F34();
  *(v0 + 280) = v11;
  *(v0 + 288) = 15;
  *(v0 + 296) = sub_252E36F34();
  *(v0 + 304) = v12;
  *(v0 + 312) = 19;
  *(v0 + 320) = sub_252E36F34();
  *(v0 + 328) = v13;
  *(v0 + 336) = 17;
  *(v0 + 344) = sub_252E36F34();
  *(v0 + 352) = v14;
  *(v0 + 360) = 8;
  *(v0 + 368) = sub_252E36F34();
  *(v0 + 376) = v15;
  *(v0 + 384) = 16;
  *(v0 + 392) = sub_252E36F34();
  *(v0 + 400) = v16;
  *(v0 + 408) = 13;
  *(v0 + 416) = sub_252E36F34();
  *(v0 + 424) = v17;
  *(v0 + 432) = 9;
  *(v0 + 440) = sub_252E36F34();
  *(v0 + 448) = v18;
  *(v0 + 456) = 18;
  *(v0 + 464) = sub_252E36F34();
  *(v0 + 472) = v19;
  *(v0 + 480) = 11;
  *(v0 + 488) = sub_252E36F34();
  *(v0 + 496) = v20;
  *(v0 + 504) = 12;
  *(v0 + 512) = sub_252E36F34();
  *(v0 + 520) = v21;
  *(v0 + 528) = 21;
  *(v0 + 536) = sub_252E36F34();
  *(v0 + 544) = v22;
  *(v0 + 552) = 22;
  *(v0 + 560) = sub_252E36F34();
  *(v0 + 568) = v23;
  *(v0 + 576) = 7;
  *(v0 + 584) = sub_252E36F34();
  *(v0 + 592) = v24;
  *(v0 + 600) = 20;
  *(v0 + 608) = sub_252E36F34();
  *(v0 + 616) = v25;
  *(v0 + 624) = 23;
  *(v0 + 632) = sub_252E36F34();
  *(v0 + 640) = v26;
  *(v0 + 648) = 24;
  *(v0 + 656) = sub_252E36F34();
  *(v0 + 664) = v27;
  *(v0 + 672) = 28;
  *(v0 + 680) = sub_252E36F34();
  *(v0 + 688) = v28;
  *(v0 + 696) = 47;
  *(v0 + 704) = sub_252E36F34();
  *(v0 + 712) = v29;
  *(v0 + 720) = 29;
  *(v0 + 728) = sub_252E36F34();
  *(v0 + 736) = v30;
  *(v0 + 744) = 30;
  *(v0 + 752) = sub_252E36F34();
  *(v0 + 760) = v31;
  *(v0 + 768) = 53;
  *(v0 + 776) = sub_252E36F34();
  *(v0 + 784) = v32;
  *(v0 + 792) = 54;
  *(v0 + 800) = sub_252E36F34();
  *(v0 + 808) = v33;
  *(v0 + 816) = 58;
  *(v0 + 824) = sub_252E36F34();
  *(v0 + 832) = v34;
  *(v0 + 840) = 56;
  *(v0 + 848) = sub_252E36F34();
  *(v0 + 856) = v35;
  *(v0 + 864) = 55;
  *(v0 + 872) = sub_252E36F34();
  *(v0 + 880) = v36;
  *(v0 + 888) = 57;
  *(v0 + 896) = sub_252E36F34();
  *(v0 + 904) = v37;
  *(v0 + 912) = 31;
  *(v0 + 920) = sub_252E36F34();
  *(v0 + 928) = v38;
  *(v0 + 936) = 32;
  *(v0 + 944) = sub_252E36F34();
  *(v0 + 952) = v39;
  *(v0 + 960) = 33;
  *(v0 + 968) = sub_252E36F34();
  *(v0 + 976) = v40;
  *(v0 + 984) = 34;
  *(v0 + 992) = sub_252E36F34();
  *(v0 + 1000) = v41;
  *(v0 + 1008) = 35;
  *(v0 + 1016) = sub_252E36F34();
  *(v0 + 1024) = v42;
  *(v0 + 1032) = 36;
  *(v0 + 1040) = sub_252E36F34();
  *(v0 + 1048) = v43;
  *(v0 + 1056) = 37;
  *(v0 + 1064) = sub_252E36F34();
  *(v0 + 1072) = v44;
  *(v0 + 1080) = 38;
  *(v0 + 1088) = sub_252E36F34();
  *(v0 + 1096) = v45;
  *(v0 + 1104) = 39;
  *(v0 + 1112) = sub_252E36F34();
  *(v0 + 1120) = v46;
  *(v0 + 1128) = 40;
  *(v0 + 1136) = sub_252E36F34();
  *(v0 + 1144) = v47;
  *(v0 + 1152) = 41;
  *(v0 + 1160) = sub_252E36F34();
  *(v0 + 1168) = v48;
  *(v0 + 1176) = 42;
  *(v0 + 1184) = sub_252E36F34();
  *(v0 + 1192) = v49;
  *(v0 + 1200) = 43;
  *(v0 + 1208) = sub_252E36F34();
  *(v0 + 1216) = v50;
  *(v0 + 1224) = 44;
  *(v0 + 1232) = sub_252E36F34();
  *(v0 + 1240) = v51;
  *(v0 + 1248) = 45;
  *(v0 + 1256) = sub_252E36F34();
  *(v0 + 1264) = v52;
  *(v0 + 1272) = 48;
  *(v0 + 1280) = sub_252E36F34();
  *(v0 + 1288) = v53;
  *(v0 + 1296) = 49;
  *(v0 + 1304) = sub_252E36F34();
  *(v0 + 1312) = v54;
  *(v0 + 1320) = 50;
  *(v0 + 1328) = sub_252E36F34();
  *(v0 + 1336) = v55;
  *(v0 + 1344) = 52;
  *(v0 + 1352) = sub_252E36F34();
  *(v0 + 1360) = v56;
  *(v0 + 1368) = 46;
  *(v0 + 1376) = sub_252E36F34();
  *(v0 + 1384) = v57;
  *(v0 + 1392) = 65;
  *(v0 + 1400) = sub_252E36F34();
  *(v0 + 1408) = v58;
  *(v0 + 1416) = 10;
  v59 = sub_252CC4774(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546298, &qword_252E61700);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F546248 = v59;
  return result;
}

uint64_t sub_252DE78B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  sub_252E37EE4();
  if (v2)
  {
    v3 = v2;
    sub_252E376A4();
  }

  return sub_252E37F14();
}

void sub_252DE7930(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x2530AE390](*v1);
  if (v2)
  {
    sub_252E37EE4();
    v3 = v2;
    sub_252E376A4();
  }

  else
  {
    sub_252E37EE4();
  }
}

uint64_t sub_252DE79B4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v2);
  sub_252E37EE4();
  if (v3)
  {
    v4 = v3;
    sub_252E376A4();
  }

  return sub_252E37F14();
}

uint64_t sub_252DE7A30(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {
      type metadata accessor for HomeAttributeValue();
      v4 = v3;
      v5 = v2;
      v6 = sub_252E37694();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_252DE7AC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546278, &unk_252E616D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419D0;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 32) = 10;
  *(inited + 40) = v5;
  v6 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v7 = objc_allocWithZone(v1);
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setBoolValue_];
  [v10 setType_];

  *(inited + 80) = 10;
  *(inited + 88) = v10;
  *(inited + 120) = v6;
  *(inited + 96) = 0;
  v11 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(inited + 128) = 47;
  *(inited + 136) = v11;
  v12 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 1;
  v13 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4C41554E414DLL, 0xE600000000000000, 0);
  *(inited + 176) = 47;
  *(inited + 184) = v13;
  *(inited + 216) = v12;
  *(inited + 192) = 0;
  v14 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(inited + 224) = 20;
  *(inited + 232) = v14;
  *(inited + 264) = v12;
  *(inited + 240) = 0;
  v15 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x59464944494D5548, 0xE800000000000000, 0);
  *(inited + 272) = 20;
  *(inited + 280) = v15;
  *(inited + 312) = v12;
  *(inited + 288) = 1;
  v16 = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4944494D55484544, 0xEA00000000005946, 0);
  *(inited + 320) = 20;
  *(inited + 328) = v16;
  *(inited + 360) = v12;
  *(inited + 336) = 2;
  v17 = sub_252CC47EC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545240, &qword_252E5A5C0);
  result = swift_arrayDestroy();
  off_27F546250 = v17;
  return result;
}

uint64_t sub_252DE7D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546290, &qword_252E616F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E616B0;
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v1;
  *(inited + 48) = 6;
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v2;
  *(inited + 72) = 14;
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v3;
  *(inited + 96) = 15;
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v4;
  *(inited + 120) = 7;
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v5;
  *(inited + 144) = 20;
  *(inited + 152) = sub_252E36F34();
  *(inited + 160) = v6;
  *(inited + 168) = 18;
  *(inited + 176) = sub_252E36F34();
  *(inited + 184) = v7;
  *(inited + 192) = 47;
  *(inited + 200) = sub_252E36F34();
  *(inited + 208) = v8;
  *(inited + 216) = 9;
  *(inited + 224) = sub_252E36F34();
  *(inited + 232) = v9;
  *(inited + 240) = 8;
  *(inited + 248) = sub_252E36F34();
  *(inited + 256) = v10;
  *(inited + 264) = 13;
  *(inited + 272) = sub_252E36F34();
  *(inited + 280) = v11;
  *(inited + 288) = 10;
  *(inited + 296) = sub_252E36F34();
  *(inited + 304) = v12;
  *(inited + 312) = 27;
  *(inited + 320) = sub_252E36F34();
  *(inited + 328) = v13;
  *(inited + 336) = 2;
  *(inited + 344) = sub_252E36F34();
  *(inited + 352) = v14;
  *(inited + 360) = 3;
  *(inited + 368) = sub_252E36F34();
  *(inited + 376) = v15;
  *(inited + 384) = 4;
  v16 = sub_252CC4774(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546298, &qword_252E61700);
  result = swift_arrayDestroy();
  off_27F546258 = v16;
  return result;
}

uint64_t sub_252DE7F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546268, &qword_252E616C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v1;
  *(inited + 48) = 4;
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v2;
  *(inited + 72) = 3;
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v3;
  *(inited + 96) = 2;
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v4;
  *(inited + 120) = 5;
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v5;
  *(inited + 144) = 1;
  v6 = sub_252CC57D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546270, &qword_252E616C8);
  result = swift_arrayDestroy();
  off_27F546260 = v6;
  return result;
}

uint64_t sub_252DE80B4(uint64_t a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v65 = a1;
    if (swift_dynamicCastObjCClass())
    {
      v6 = v1;
      v7 = [v5 characteristic];
      v8 = [v7 characteristicType];

      v9 = sub_252E36F34();
      v11 = v10;

      v12 = sub_252DE9AAC(v9, v11);
      v13 = 4;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v20 = v1;
        v21 = [v5 characteristic];
        v22 = [v21 characteristicType];

        v23 = sub_252E36F34();
        v25 = v24;

        if (qword_27F53F8E0 != -1)
        {
          swift_once();
        }

        v26 = off_27F546258;
        if (*(off_27F546258 + 2) && (v27 = sub_252A44A10(v23, v25), (v28 & 1) != 0))
        {
          v12 = *(v26[7] + 8 * v27);
          v13 = 1;
        }

        else
        {
          v12 = 0;
          v13 = 1;
        }
      }

      else
      {
        v29 = qword_2814B0A70;
        v30 = v1;
        if (v29 != -1)
        {
          swift_once();
        }

        v31 = sub_252E36AD4();
        __swift_project_value_buffer(v31, qword_2814B0A78);
        sub_252E379F4();

        *&v67[0] = 0xD00000000000002BLL;
        *(&v67[0] + 1) = 0x8000000252E9DF40;
        v32 = [v5 description];
        v33 = sub_252E36F34();
        v35 = v34;

        MEMORY[0x2530AD570](v33, v35);

        sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E9DF40, 0xD000000000000073, 0x8000000252E9DCB0);

        v36 = [v5 characteristic];
        v37 = [v36 characteristicType];

        v38 = sub_252E36F34();
        v40 = v39;

        if (qword_27F53F8E0 != -1)
        {
          swift_once();
        }

        v41 = off_27F546258;
        if (*(off_27F546258 + 2) && (v42 = sub_252A44A10(v38, v40), (v43 & 1) != 0))
        {
          v13 = 0;
          v12 = *(v41[7] + 8 * v42);
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }
      }
    }

    v44 = [v5 characteristic];
    memset(v67, 0, sizeof(v67));
    v45 = sub_252C69EA4(v44, v67);
    v47 = v46;

    sub_252982F10(v67);
    v48 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v49 = v45;
    v50 = sub_252E36F04();
    v51 = [v48 initWithIdentifier:0 displayString:v50];

    v52 = v51;
    [v52 setTaskType_];
    [v52 setAttribute_];
    [v52 setValue_];

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v53 = sub_252E36AD4();
    __swift_project_value_buffer(v53, qword_27F544CB8);
    *&v67[0] = 0;
    *(&v67[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v67[0] = 0xD000000000000014;
    *(&v67[0] + 1) = 0x8000000252E9DE30;
    sub_25293F638(0, &qword_27F545660, 0x277CD1990);
    v54 = v2;
    v55 = sub_252E36FB4();
    MEMORY[0x2530AD570](v55);

    MEMORY[0x2530AD570](544175136, 0xE400000000000000);
    v56 = v52;
    v57 = sub_252E36FB4();
    MEMORY[0x2530AD570](v57);

    sub_252CC3D90(*&v67[0], *(&v67[0] + 1), 0xD000000000000073, 0x8000000252E9DCB0);

    type metadata accessor for HomeUserTaskResponse.Builder();
    swift_allocObject();
    v58 = HomeUserTaskResponse.Builder.init()();
    v59 = sub_252DE8858(v66, v47);
    v60 = (*(*v58 + 152))(v59);

    v61 = *(*v60 + 160);
    v62 = v56;
    v63 = v61(v56);

    v19 = (*(*v63 + 176))();
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544CB8);
    sub_252E379F4();

    strcpy(v67, "RequestBase ");
    BYTE13(v67[0]) = 0;
    HIWORD(v67[0]) = -5120;
    v15 = [v1 description];
    v16 = sub_252E36F34();
    v18 = v17;

    MEMORY[0x2530AD570](v16, v18);

    MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E9DEF0);
    sub_252CC4050(*&v67[0], *(&v67[0] + 1), 0xD000000000000073, 0x8000000252E9DCB0, 0xD000000000000019, 0x8000000252E9DF20, 589);

    return 0;
  }

  return v19;
}

uint64_t sub_252DE8858(uint64_t a1, uint64_t a2)
{
  if (qword_27F53F728 != -1)
  {
    swift_once();
  }

  if ((sub_252DB4F4C() & 1) == 0)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002BLL, 0x8000000252E9DF70);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000073, 0x8000000252E9DCB0);

    return a1;
  }

  return a2;
}

BOOL sub_252DE89C0(uint64_t a1)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_2814B0A78);
  sub_252E379F4();
  MEMORY[0x2530AD570](0x726F727245204D48, 0xEF203A65646F6320);
  type metadata accessor for HMError(0);
  sub_252DE9E74();
  sub_252E32C04();
  type metadata accessor for Code(0);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000073, 0x8000000252E9DCB0);

  sub_252E32C04();
  return qword_2864A9D70 == a1;
}

uint64_t sub_252DE8B3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F8C0 != -1)
    {
      v7 = a1;
      v8 = a2;
      swift_once();
      a1 = v7;
      a2 = v8;
    }

    v2 = off_27F546238;
    if (*(off_27F546238 + 2))
    {
      v3 = sub_252A44A10(a1, a2);
      if (v4)
      {
        return *(v2[7] + 8 * v3);
      }
    }
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544CB8);
    sub_252CC3D90(0xD000000000000032, 0x8000000252E9DD70, 0xD000000000000073, 0x8000000252E9DCB0);
  }

  return 0;
}

uint64_t sub_252DE8C4C(void *a1, uint64_t a2)
{
  v91 = a1;
  v2 = [*(a2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v5 = 0;
    v92 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_2529F7A80(0, *(v92 + 2) + 1, 1, v92);
      }

      v14 = *(v92 + 2);
      v13 = *(v92 + 3);
      if (v14 >= v13 >> 1)
      {
        v92 = sub_2529F7A80((v13 > 1), v14 + 1, 1, v92);
      }

      v15 = v92;
      *(v92 + 2) = v14 + 1;
      v16 = &v15[16 * v14];
      *(v16 + 4) = v10;
      *(v16 + 5) = v12;
      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v92 = MEMORY[0x277D84F90];
LABEL_19:

  if (qword_27F53F8C8 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v17 = off_27F546240;

    v18 = &off_279711000;
    v19 = sub_2529A79C8([v91 attribute], v17);

    if (v19)
    {
      break;
    }

    v25 = 0;
LABEL_37:
    if ([v91 taskType] == 4)
    {
      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v35 = off_27F546248 + 64;
      v36 = 1 << *(off_27F546248 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(off_27F546248 + 8);
      v39 = (v36 + 63) >> 6;
      v89 = "nits is nil, returning .unknown";
      v90 = off_27F546248;

      v40 = 0;
      while (v38)
      {
LABEL_49:
        v42 = __clz(__rbit64(v38)) | (v40 << 6);
        v43 = (v90[6] + 16 * v42);
        v29 = *v43;
        v44 = v43[1];
        v45 = *(v90[7] + 8 * v42);

        if (v45 == [v91 attribute])
        {
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v46 = sub_252E36AD4();
          __swift_project_value_buffer(v46, qword_27F544CB8);
          v93 = 0;
          v94 = 0xE000000000000000;
          sub_252E379F4();

          v93 = 0x20646E756F46;
          v94 = 0xE600000000000000;
          MEMORY[0x2530AD570](v29, v44);
          MEMORY[0x2530AD570](0x74746120726F6620, 0xEF20657475626972);
          v47 = HomeAttributeType.description.getter([v91 attribute]);
          MEMORY[0x2530AD570](v47);

          sub_252CC3D90(v93, v94, 0xD000000000000073, v89 | 0x8000000000000000);

          v93 = v29;
          v94 = v44;
          MEMORY[0x28223BE20](v48);
          v87 = &v93;
          if (sub_2529ED970(sub_25296A724, v86, v92))
          {
            goto LABEL_95;
          }
        }

        v38 &= v38 - 1;
      }

      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v41 >= v39)
        {
          goto LABEL_91;
        }

        v38 = *&v35[8 * v41];
        ++v40;
        if (v38)
        {
          v40 = v41;
          goto LABEL_49;
        }
      }

LABEL_97:
      __break(1u);
    }

    else
    {
      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v49 = off_27F546258;
      v50 = off_27F546258 + 64;
      v51 = 1 << *(off_27F546258 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(off_27F546258 + 8);
      v54 = (v51 + 63) >> 6;
      v89 = "nits is nil, returning .unknown";

      v55 = 0;
      while (v53)
      {
LABEL_66:
        v57 = __clz(__rbit64(v53)) | (v55 << 6);
        v58 = (v49[6] + 16 * v57);
        v29 = *v58;
        v59 = v58[1];
        v60 = *(v49[7] + 8 * v57);

        if (v60 == [v91 attribute])
        {
          v90 = v25;
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v61 = sub_252E36AD4();
          __swift_project_value_buffer(v61, qword_27F544CB8);
          v93 = 0;
          v94 = 0xE000000000000000;
          sub_252E379F4();

          v93 = 0x20646E756F46;
          v94 = 0xE600000000000000;
          MEMORY[0x2530AD570](v29, v59);
          MEMORY[0x2530AD570](0x74746120726F6620, 0xEF20657475626972);
          v62 = HomeAttributeType.description.getter([v91 attribute]);
          MEMORY[0x2530AD570](v62);

          sub_252CC3D90(v93, v94, 0xD000000000000073, v89 | 0x8000000000000000);

          v93 = v29;
          v94 = v59;
          MEMORY[0x28223BE20](v63);
          v87 = &v93;
          v25 = v90;
          if (sub_2529ED970(sub_25296A69C, v86, v92))
          {
            goto LABEL_95;
          }

          v18 = &off_279711000;
        }

        v53 &= v53 - 1;
      }

      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v56 >= v54)
        {

          if (qword_27F53F8D0 != -1)
          {
            swift_once();
          }

          v64 = off_27F546248 + 64;
          v65 = 1 << *(off_27F546248 + 32);
          v66 = -1;
          if (v65 < 64)
          {
            v66 = ~(-1 << v65);
          }

          v67 = v66 & *(off_27F546248 + 8);
          v68 = (v65 + 63) >> 6;
          v90 = off_27F546248;

          v69 = 0;
          while (v67)
          {
LABEL_83:
            v71 = __clz(__rbit64(v67)) | (v69 << 6);
            v72 = (v90[6] + 16 * v71);
            v29 = *v72;
            v73 = v72[1];
            v74 = *(v90[7] + 8 * v71);

            if (v74 == [v91 v18[203]])
            {
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v75 = sub_252E36AD4();
              __swift_project_value_buffer(v75, qword_27F544CB8);
              v93 = 0;
              v94 = 0xE000000000000000;
              sub_252E379F4();

              v93 = 0x20646E756F46;
              v94 = 0xE600000000000000;
              MEMORY[0x2530AD570](v29, v73);
              MEMORY[0x2530AD570](0x7562697274746120, 0xEB00000000206574);
              v76 = HomeAttributeType.description.getter([v91 v18[203]]);
              MEMORY[0x2530AD570](v76);

              sub_252CC3D90(v93, v94, 0xD000000000000073, v89 | 0x8000000000000000);

              v93 = v29;
              v94 = v73;
              MEMORY[0x28223BE20](v77);
              v87 = &v93;
              v78 = sub_2529ED970(sub_25296A724, v86, v92);
              if (v78)
              {
                if (qword_27F53F8A8 != -1)
                {
                  v78 = swift_once();
                }

                v93 = v29;
                v94 = v73;
                MEMORY[0x28223BE20](v78);
                v87 = &v93;
                v18 = &off_279711000;
                if ((sub_2529ED970(sub_25296A724, v86, v79) & 1) == 0)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                v18 = &off_279711000;
              }
            }

            v67 &= v67 - 1;
          }

          while (1)
          {
            v70 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              goto LABEL_99;
            }

            if (v70 >= v68)
            {
LABEL_91:

              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v80 = sub_252E36AD4();
              __swift_project_value_buffer(v80, qword_27F544CB8);
              v93 = 0;
              v94 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD00000000000002BLL, 0x8000000252E9DFA0);
              v81 = [v91 description];
              v82 = sub_252E36F34();
              v84 = v83;

              MEMORY[0x2530AD570](v82, v84);

              MEMORY[0x2530AD570](0x6E7275746572202CLL, 0xEF6C696E20676E69);
              sub_252CC3D90(v93, v94, 0xD000000000000073, 0x8000000252E9DCB0);

              return 0;
            }

            v67 = *&v64[8 * v70];
            ++v69;
            if (v67)
            {
              v69 = v70;
              goto LABEL_83;
            }
          }
        }

        v53 = *&v50[8 * v56];
        ++v55;
        if (v53)
        {
          v55 = v56;
          goto LABEL_66;
        }
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  v20 = 1 << v17[32];
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 8);
  v23 = (v20 + 63) >> 6;
  v88 = "nits is nil, returning .unknown";
  v89 = "c type found for user task ";

  v24 = 0;
  v25 = 0;
  while (1)
  {
    if (!v22)
    {
      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26 >= v23)
        {

          goto LABEL_37;
        }

        v22 = *&v17[8 * v26 + 64];
        ++v24;
        if (v22)
        {
          v24 = v26;
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_97;
    }

LABEL_30:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = (*(v17 + 6) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(*(v17 + 7) + 8 * v27);

    if (v31 == [v91 attribute])
    {
      break;
    }

LABEL_24:
    v22 &= v22 - 1;
  }

  v90 = v25;
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544CB8);
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000025, v89 | 0x8000000000000000);
  MEMORY[0x2530AD570](v29, v30);
  MEMORY[0x2530AD570](0x74746120726F6620, 0xEF20657475626972);
  v33 = HomeAttributeType.description.getter([v91 attribute]);
  MEMORY[0x2530AD570](v33);

  sub_252CC3D90(v93, v94, 0xD000000000000073, v88 | 0x8000000000000000);

  v93 = v29;
  v94 = v30;
  MEMORY[0x28223BE20](v34);
  v87 = &v93;
  v25 = v90;
  if ((sub_2529ED970(sub_25296A724, v86, v92) & 1) == 0)
  {
    v18 = &off_279711000;
    goto LABEL_24;
  }

LABEL_95:

  return v29;
}

uint64_t sub_252DE99A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F8E8 != -1)
    {
      v7 = a1;
      v8 = a2;
      swift_once();
      a1 = v7;
      a2 = v8;
    }

    v2 = off_27F546260;
    if (*(off_27F546260 + 2))
    {
      v3 = sub_252A44A10(a1, a2);
      if (v4)
      {
        return *(v2[7] + 8 * v3);
      }
    }
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544CB8);
    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E9DC80, 0xD000000000000073, 0x8000000252E9DCB0);
  }

  return 0;
}

uint64_t sub_252DE9AAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F8D0 != -1)
    {
      swift_once();
    }

    v4 = off_27F546248;
    if (*(off_27F546248 + 2))
    {
      v5 = sub_252A44A10(a1, a2);
      if (v6)
      {
        return *(v4[7] + 8 * v5);
      }
    }

    if (qword_27F53F8E0 != -1)
    {
      swift_once();
    }

    v4 = off_27F546258;
    if (*(off_27F546258 + 2))
    {
      v5 = sub_252A44A10(a1, a2);
      if (v7)
      {
        return *(v4[7] + 8 * v5);
      }
    }

    if (qword_27F53F8C8 != -1)
    {
      swift_once();
    }

    v4 = off_27F546240;
    if (*(off_27F546240 + 2))
    {
      v5 = sub_252A44A10(a1, a2);
      if (v8)
      {
        return *(v4[7] + 8 * v5);
      }
    }
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544CB8);
    sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E9DDB0, 0xD000000000000073, 0x8000000252E9DCB0);
  }

  return 0;
}

uint64_t sub_252DE9C5C(uint64_t a1)
{
  if (qword_27F53F8D0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v2 = 0;
  v3 = 1 << *(off_27F546248 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(off_27F546248 + 8);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_11:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = v8 | (v7 << 6);
    if (*(*(off_27F546248 + 7) + 8 * v9) == a1)
    {
      v10 = *(*(off_27F546248 + 6) + 16 * v9);

      return v10;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(off_27F546248 + v7 + 8);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_11;
    }
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544CB8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E9DD30);
  v13 = HomeAttributeType.description.getter(a1);
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0x6E7275746572202CLL, 0xEF6C696E20676E69);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000073, 0x8000000252E9DCB0);

  return 0;
}

unint64_t sub_252DE9E74()
{
  result = qword_27F541F00;
  if (!qword_27F541F00)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable(byte_252E3BBEC, v3, v0, v1);
    atomic_store(result, &qword_27F541F00);
  }

  return result;
}

uint64_t sub_252DE9EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_252DE9F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_252DE9F9C()
{
  result = qword_27F5462B0;
  if (!qword_27F5462B0)
  {
    result = swift_getWitnessTable(aI_11, &type metadata for HomeKitMapper.Task, v0, v1);
    atomic_store(result, &qword_27F5462B0);
  }

  return result;
}

uint64_t sub_252DE9FF0(void *a1, unint64_t a2)
{
  v4 = sub_252E36324();
  v140 = *(v4 - 8);
  v141 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v131 = v114 - v9;
  MEMORY[0x28223BE20](v8);
  v139 = v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v114 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v114 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (v114 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = v114 - v24;
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x277D84F90];
  v26 = [a1 automatableTask];
  if (v26)
  {
    v27 = v26;
    v123 = a2;
    type metadata accessor for ControlAutomateHomeIntent();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v115 = v27;
      v130 = v20;
      v127 = v17;
      v128 = v14;
      v122 = v7;
      v116 = a1;
      v29 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      type metadata accessor for MutableHomeUserTask();
      swift_initStackObject();
      v30 = sub_252D6CA80(v29);
      swift_beginAccess();
      v31 = v30[4];
      if (v31 && v30[3] == 10)
      {
        v32 = *(v31 + 24);
        v33 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

        v34 = sub_252E36F04();
        v35 = [v33 initWithIdentifier:0 displayString:v34];

        v36 = v35;
        [v36 setBoolValue_];
        [v36 setType_];

        type metadata accessor for MutableAttributeValue();
        swift_allocObject();
        v37 = sub_252D6CC80(v36);

        v30[4] = v37;
      }

      v38 = sub_252D6CB58();
      type metadata accessor for HomeAutomationEntityState.Builder(0);
      v39 = swift_allocObject();
      v40 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute;
      v41 = v141;
      v43 = v140 + 56;
      v42 = *(v140 + 56);
      v42(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, 1, 1, v141);
      *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_stateValue) = 0;
      v44 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType;
      v136 = v42;
      v137 = v43;
      v42(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, 1, 1, v41);
      v117 = v38;
      [v38 attribute];
      if (qword_27F53F2A8 != -1)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v45 = off_27F541CD8;
        v46 = MEMORY[0x277D84F90];
        if (*(off_27F541CD8 + 2) && (v47 = sub_252A488EC(), (v48 & 1) != 0))
        {
          LOBYTE(v143) = *(v45[7] + v47);
          AttributeSemantic.rawValue.getter();
          sub_252E362F4();
          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v136(v25, v49, 1, v141);
        swift_beginAccess();
        sub_252956BAC(v25, v39 + v40);
        swift_endAccess();
        sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
        v50 = [v117 value];
        if (v50)
        {
          v51 = v50;
          v52 = sub_252D0842C();
        }

        else
        {
          v52 = 0;
        }

        [v117 taskType];
        if (qword_27F53F298 != -1)
        {
          swift_once();
        }

        if (*(off_27F541CC8 + 2) && (sub_252A488EC(), (v54 & 1) != 0))
        {

          sub_252E37024();

          v55 = 0;
        }

        else
        {
          v55 = 1;
        }

        v114[1] = v30;
        v136(v23, v55, 1, v141);
        swift_beginAccess();
        sub_252956BAC(v23, v39 + v44);
        swift_endAccess();
        sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
        type metadata accessor for HomeAutomationEntityState(0);
        v23 = swift_allocObject();
        v23[2] = 0;
        sub_252938414(v39 + v40, v23 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, &qword_27F540298, &unk_252E3C270);
        *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue) = v52;
        v129 = v23;
        sub_252938414(v39 + v44, v23 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, &qword_27F540298, &unk_252E3C270);
        swift_setDeallocating();
        sub_25293847C(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, &qword_27F540298, &unk_252E3C270);

        sub_25293847C(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, &qword_27F540298, &unk_252E3C270);
        swift_deallocClassInstance();
        v142 = v46;
        v56 = v123;
        if (v123 >> 62)
        {
          v23 = v123;
          v57 = sub_252E378C4();
          v56 = v23;
        }

        else
        {
          v57 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v40 = v130;
        if (!v57)
        {
LABEL_83:

          *(inited + 16) = v46;
          v111 = *(v119 + 136);

          v53 = v111(v112);

          return v53;
        }

        v25 = 0;
        v126 = v56 & 0xC000000000000001;
        v121 = v56 & 0xFFFFFFFFFFFFFF8;
        v120 = v56 + 32;
        v58 = (v140 + 32);
        v125 = xmmword_252E3C130;
        v124 = v57;
        while (v126)
        {
          v59 = MEMORY[0x2530ADF00](v25, v123);
          v60 = __OFADD__(v25++, 1);
          if (v60)
          {
            goto LABEL_85;
          }

LABEL_33:
          v61 = sub_252CD941C();
          v62 = sub_2529F7B8C(0, 1, 1, v46);
          v64 = *(v62 + 2);
          v63 = *(v62 + 3);
          if (v64 >= v63 >> 1)
          {
            v62 = sub_2529F7B8C((v63 > 1), v64 + 1, 1, v62);
          }

          *(v62 + 2) = v64 + 1;
          *&v62[8 * v64 + 32] = v61;
          v65 = sub_252CD94E0();
          v138 = v59;
          v132 = v25;
          if (v66)
          {
            v44 = v40;
            v135 = v62;
          }

          else
          {
            v68 = *(v62 + 2);
            v67 = *(v62 + 3);
            if (v68 >= v67 >> 1)
            {
              v110 = v65;
              v62 = sub_2529F7B8C((v67 > 1), v68 + 1, 1, v62);
              v65 = v110;
            }

            v44 = v40;
            *(v62 + 2) = v68 + 1;
            v135 = v62;
            *&v62[8 * v68 + 32] = v65;
          }

          type metadata accessor for HomeAutomationEntityResponse.Builder(0);
          v69 = swift_allocObject();
          v70 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
          LODWORD(v134) = 1;
          v71 = v141;
          v72 = v136;
          v136(v69 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v141);
          v72(v69 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v71);
          *(v69 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
          v73 = MEMORY[0x277D84F90];
          *(v69 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
          *(v69 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
          v72(v69 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v71);
          *(v69 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v73;
          *(v69 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v73;
          v74 = v138;

          sub_252E37024();

          v72(v44, 0, 1, v71);
          swift_beginAccess();
          sub_252956BAC(v44, v69 + v70);
          swift_endAccess();
          sub_25293847C(v44, &qword_27F540298, &unk_252E3C270);
          v75 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
          v76 = [*(v74 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
          v133 = v75;
          if (v76)
          {
            v77 = v76;
            type metadata accessor for Accessory(0);
            swift_allocObject();
            v78 = [*(sub_252D4CE7C(v77) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
            v79 = v131;
            v80 = v128;
            if (v78)
            {
              v81 = v78;
              type metadata accessor for Room(0);
              swift_allocObject();
              sub_2529A1E08(v81);

              v82 = v127;
              sub_252E37024();
              v75 = v133;

              LODWORD(v134) = 0;
              goto LABEL_46;
            }

            LODWORD(v134) = 1;
          }

          else
          {
            v79 = v131;
            v80 = v128;
          }

          v82 = v127;
LABEL_46:
          v83 = 1;
          v136(v82, v134, 1, v141);
          sub_252AD6B04(v82);

          sub_25293847C(v82, &qword_27F540298, &unk_252E3C270);
          v84 = [*(v138 + v75) accessory];
          if (v84)
          {
            v85 = v84;
            type metadata accessor for Accessory(0);
            swift_allocObject();
            v86 = [*(sub_252D4CE7C(v85) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
            if (v86)
            {
              v87 = v86;
              type metadata accessor for Home(0);
              swift_allocObject();
              sub_2529E65BC(v87);

              sub_252E37024();

              v83 = 0;
            }

            else
            {

              v83 = 1;
            }
          }

          v136(v80, v83, 1, v141);
          v88 = sub_252AD6E30(v80);

          v25 = &unk_252E3C270;
          sub_25293847C(v80, &qword_27F540298, &unk_252E3C270);
          v89 = sub_252CD941C();
          v90 = sub_252E25FC4(v89);
          static SemanticMapper.getSemanticKey(for:)(v90, v91 & 1, v44);
          v92 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
          swift_beginAccess();
          v134 = v88;
          sub_252956BAC(v44, v88 + v92);
          swift_endAccess();
          sub_25293847C(v44, &qword_27F540298, &unk_252E3C270);
          v93 = v135;
          v94 = *(v135 + 2);
          if (v94)
          {
            if (qword_27F53F2A0 != -1)
            {
              swift_once();
            }

            v44 = (v93 + 32);
            v95 = off_27F541CD0;
            v96 = MEMORY[0x277D84F90];
            do
            {
              if (v95[2])
              {
                v97 = sub_252A488EC();
                if (v98)
                {
                  LOBYTE(v143) = *(v95[7] + v97);
                  AccessoryTypeSemantic.rawValue.getter();
                  sub_252E362F4();
                  v99 = *v58;
                  (*v58)(v139, v79, v141);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v96 = sub_2529F7F74(0, *(v96 + 2) + 1, 1, v96);
                  }

                  v25 = *(v96 + 2);
                  v100 = *(v96 + 3);
                  if (v25 >= v100 >> 1)
                  {
                    v96 = sub_2529F7F74((v100 > 1), v25 + 1, 1, v96);
                  }

                  *(v96 + 2) = v25 + 1;
                  v99(&v96[((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v25], v139, v141);
                }
              }

              v44 += 8;
              --v94;
            }

            while (v94);
          }

          else
          {
            v96 = MEMORY[0x277D84F90];
          }

          v39 = v134;
          *(v134 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v96;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v101 = swift_allocObject();
          *(v101 + 16) = v125;
          *(v101 + 32) = v129;
          *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v101;

          v30 = v138;
          v102 = [*(v138 + v133) accessory];
          if (v102)
          {
            v23 = v102;
            type metadata accessor for Accessory(0);
            swift_allocObject();
            sub_252D4CE7C(v23);
            v103 = sub_252D523AC();

            v44 = v122;
            v46 = MEMORY[0x277D84F90];
            if (v103 >> 62)
            {
              v40 = sub_252E378C4();
              if (!v40)
              {
LABEL_77:

                v105 = v46;
                v30 = v138;
                goto LABEL_78;
              }
            }

            else
            {
              v40 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v40)
              {
                goto LABEL_77;
              }
            }

            v143 = v46;
            sub_2529AA4E0(0, v40 & ~(v40 >> 63), 0);
            if (v40 < 0)
            {
              goto LABEL_86;
            }

            v104 = 0;
            v105 = v143;
            do
            {
              if ((v103 & 0xC000000000000001) != 0)
              {
                MEMORY[0x2530ADF00](v104, v103);
              }

              else
              {
              }

              sub_252E37024();

              v143 = v105;
              v107 = *(v105 + 16);
              v106 = *(v105 + 24);
              if (v107 >= v106 >> 1)
              {
                sub_2529AA4E0((v106 > 1), v107 + 1, 1);
                v105 = v143;
              }

              ++v104;
              *(v105 + 16) = v107 + 1;
              (*(v140 + 32))(v105 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v107, v44, v141);
            }

            while (v40 != v104);

            v46 = MEMORY[0x277D84F90];
            v30 = v138;
            v39 = v134;
          }

          else
          {

            v46 = MEMORY[0x277D84F90];
            v105 = MEMORY[0x277D84F90];
          }

LABEL_78:
          sub_252AD6B10(v105);

          type metadata accessor for HomeAutomationEntityResponse(0);
          swift_allocObject();
          v23 = sub_2529605C0(v39);
          MEMORY[0x2530AD700]();
          v108 = v124;
          if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
            v39 = v134;
          }

          sub_252E372D4();

          v109 = v132 == v108;
          v25 = v132;
          v40 = v130;
          if (v109)
          {
            v46 = v142;
            goto LABEL_83;
          }
        }

        if (v25 >= *(v121 + 16))
        {
          goto LABEL_87;
        }

        v59 = *(v120 + 8 * v25);

        v60 = __OFADD__(v25++, 1);
        if (!v60)
        {
          goto LABEL_33;
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        swift_once();
      }
    }
  }

  else
  {
  }

  v53 = (*(v119 + 136))(inited);

  return v53;
}

id sub_252DEB354(void *a1)
{
  v119 = a1;
  v121 = sub_252E32BA4();
  v118 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v3 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E32FF4();
  v122 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v107 - v8;
  v10 = sub_252E32E04();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v107 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  MEMORY[0x28223BE20](v17 - 8);
  v120 = &v107 - v18;
  v19 = [v1 type];
  if (v19 == 1)
  {
    v115 = v11;
    v116 = v4;
    v113 = v3;
    v114 = v16;
    v120 = v10;
    v117 = v1;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544C40);
    sub_252CC3D90(0xD000000000000010, 0x8000000252E9E3A0, 0xD000000000000086, 0x8000000252E9E150);
    v37 = [v117 value];
    if (v37)
    {
      v38 = v37;
      v39 = v6;
      v40 = v9;
      type metadata accessor for TimeTriggerValue(0);
      if (swift_dynamicCastClass())
      {
        sub_252E32FC4();
        sub_252E32DF4();
        sub_252B93B3C(v6, v14, v9);
        v41 = v115;
        v42 = v115 + 8;
        v43 = v120;
        v112 = *(v115 + 8);
        v112(v14, v120);
        v44 = v39;
        v46 = v122 + 8;
        v45 = *(v122 + 8);
        v111 = v44;
        v45();
        if ((*(v41 + 48))(v40, 1, v43) != 1)
        {
          v108 = v45;
          v122 = v46;
          v67 = (*(v41 + 32))(v114, v40, v43);
          v68 = sub_252B680FC(v67);
          swift_beginAccess();
          v69 = *(v68 + 16);
          v70 = *(v69 + 16);
          v109 = v42;
          v110 = v38;
          if (v70)
          {
            memcpy(v124, (v69 + 504 * v70 - 472), sizeof(v124));
            sub_2529353AC(v124, v123);

            v71 = v124[30];
            v72 = v124[31];

            sub_252935408(v124);
          }

          else
          {

            v71 = 0;
            v72 = 0;
          }

          sub_252DF24DC(v71, v72);

          v115 = sub_252E36F04();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_252E3C130;
          v74 = v111;
          sub_252E32FC4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
          v75 = sub_252E32FE4();
          v76 = *(v75 - 8);
          v77 = *(v76 + 72);
          v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_252E3C280;
          v80 = v79 + v78;
          v81 = *(v76 + 104);
          v81(v80, *MEMORY[0x277CC9968], v75);
          v81(v80 + v77, *MEMORY[0x277CC9980], v75);
          v81(v80 + 2 * v77, *MEMORY[0x277CC99A0], v75);
          sub_2529FE09C(v79);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v82 = v113;
          v83 = v114;
          sub_252E32F44();

          (v108)(v74, v116);
          v84 = objc_allocWithZone(MEMORY[0x277CD18A8]);
          v85 = sub_252E32B04();
          v86 = [v84 initWithFireDateComponents_];

          (*(v118 + 8))(v82, v121);
          *(v73 + 32) = v86;
          sub_252DF2648();
          v87 = sub_252E37254();

          v88 = [v117 recurrence];
          v89 = v115;
          v90 = [v119 newEventTriggerBuilderWithName:v115 events:v87 endEvents:0 recurrences:v88 predicate:0];

          v112(v83, v120);
          return v90;
        }

        sub_25293847C(v40, &qword_27F540F38, &unk_252E41490);
      }

      else
      {
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v36, qword_27F544CB8);
    v63 = 0xD00000000000003DLL;
    v64 = 0x8000000252E9E260;
    v65 = 433;
    goto LABEL_46;
  }

  if (v19 != 2)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v47 = sub_252E36AD4();
    __swift_project_value_buffer(v47, qword_27F544CB8);
    v124[0] = 0;
    v124[1] = 0xE000000000000000;
    sub_252E379F4();

    v124[0] = 0xD000000000000027;
    v124[1] = 0x8000000252E9E1E0;
    v48 = [v1 type];
    if (v48 == 1)
    {
      v49 = 0xE900000000000064;
      v50 = 0x65736142656D6974;
    }

    else if (v48 == 2)
    {
      v49 = 0xEA00000000006465;
      v50 = 0x736142746E657665;
    }

    else
    {
      v49 = 0xE700000000000000;
      v50 = 0x6E776F6E6B6E75;
    }

    MEMORY[0x2530AD570](v50, v49);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v124[0], v124[1], 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000017, 0x8000000252E9E380, 464);

    return 0;
  }

  v20 = [v1 value];
  if (!v20)
  {
LABEL_39:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v62 = sub_252E36AD4();
    __swift_project_value_buffer(v62, qword_27F544CB8);
    v63 = 0xD00000000000004DLL;
    v64 = 0x8000000252E9E2E0;
    v65 = 363;
LABEL_46:
    sub_252CC4050(v63, v64, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000017, 0x8000000252E9E380, v65);
    return 0;
  }

  v21 = v20;
  type metadata accessor for EventTriggerValue(0);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_39;
  }

  v23 = v22;
  v117 = v1;
  if (qword_27F53F8F8 != -1)
  {
    swift_once();
  }

  v24 = qword_27F575DD8;
  v25 = v120;
  v26 = v121;
  if (*(qword_27F575DD8 + 16))
  {
    sub_252A488EC();
    if (v27)
    {
      if (*(v24 + 16))
      {
        v28 = sub_252A488EC();
        if (v29)
        {
          v30 = *(*(v24 + 56) + 8 * v28);
          v31 = sub_252B680FC(v28);
          swift_beginAccess();
          v32 = *(v31 + 16);
          v33 = *(v32 + 16);
          if (v33)
          {
            memcpy(v124, (v32 + 504 * v33 - 472), sizeof(v124));
            sub_2529353AC(v124, v123);

            v34 = v124[30];
            v35 = v124[31];

            sub_252935408(v124);
          }

          else
          {

            v34 = 0;
            v35 = 0;
          }

          sub_252DF24DC(v34, v35);

          v91 = sub_252E36F04();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_252E3C130;
          *(v92 + 32) = [objc_allocWithZone(MEMORY[0x277CD1D20]) initWithPresenceEventType:v30 presenceUserType:1];
          sub_252DF2648();
          v93 = sub_252E37254();

          v94 = [v117 recurrence];
          v95 = [v119 newEventTriggerBuilderWithName:v91 events:v93 endEvents:0 recurrences:v94 predicate:0];

          return v95;
        }
      }
    }
  }

  if (qword_27F53F8F0 != -1)
  {
    swift_once();
  }

  v51 = qword_27F575DD0;
  if (!*(qword_27F575DD0 + 16) || (sub_252A488EC(), (v52 & 1) == 0) || !*(v51 + 16) || (v53 = sub_252A488EC(), (v54 & 1) == 0))
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v61 = sub_252E36AD4();
    __swift_project_value_buffer(v61, qword_27F544CB8);
    sub_252CC4050(0xD000000000000041, 0x8000000252E9E330, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000017, 0x8000000252E9E380, 426);

    return 0;
  }

  v55 = *(*(v51 + 56) + 8 * v53);
  v56 = sub_252B680FC(v55);
  swift_beginAccess();
  v57 = *(v56 + 16);
  v58 = *(v57 + 16);
  if (v58)
  {
    memcpy(v124, (v57 + 504 * v58 - 472), sizeof(v124));
    sub_2529353AC(v124, v123);

    v59 = v124[30];
    v60 = v124[31];

    sub_252935408(v124);
  }

  else
  {

    v59 = 0;
    v60 = 0;
  }

  sub_252DF24DC(v59, v60);

  v122 = sub_252E36F04();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_252E3C130;
  v97 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
  swift_beginAccess();
  sub_252938414(v23 + v97, v25, &qword_27F540F00, &unk_252E3FEC0);
  v98 = v118;
  v99 = (*(v118 + 48))(v25, 1, v26);
  v100 = v55;
  v101 = 0;
  if (v99 != 1)
  {
    v101 = sub_252E32B04();
    (*(v98 + 8))(v25, v26);
  }

  v102 = [objc_allocWithZone(MEMORY[0x277CD1E00]) initWithSignificantEvent:v100 offset:v101];

  *(v96 + 32) = v102;
  sub_252DF2648();
  v103 = sub_252E37254();

  v104 = [v117 recurrence];
  v105 = v122;
  v106 = [v119 newEventTriggerBuilderWithName:v122 events:v103 endEvents:0 recurrences:v104 predicate:0];

  return v106;
}

id sub_252DEC30C()
{
  v126 = sub_252E32BA4();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v2 = &v115 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252E32FF4();
  v127 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v115 - v7;
  v9 = sub_252E32E04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v115 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  MEMORY[0x28223BE20](v16 - 8);
  v125 = &v115 - v17;
  v128 = v0;
  v18 = [v0 type];
  if (v18 == 1)
  {
    v122 = v10;
    v123 = v3;
    v121 = v15;
    v125 = v9;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v35 = sub_252E36AD4();
    __swift_project_value_buffer(v35, qword_27F544C40);
    sub_252CC3D90(0xD000000000000010, 0x8000000252E9E3A0, 0xD000000000000086, 0x8000000252E9E150);
    v36 = [v128 value];
    if (v36)
    {
      v37 = v36;
      type metadata accessor for TimeTriggerValue(0);
      if (swift_dynamicCastClass())
      {
        v118 = v2;
        v120 = v37;
        v38 = v5;
        sub_252E32FC4();
        sub_252E32DF4();
        sub_252B93B3C(v5, v13, v8);
        v39 = v8;
        v40 = v122;
        v41 = v122 + 8;
        v42 = v125;
        v119 = *(v122 + 8);
        v119(v13, v125);
        v43 = v127 + 8;
        v44 = *(v127 + 8);
        v44(v38, v123);
        if ((*(v40 + 48))(v39, 1, v42) != 1)
        {
          v65 = (*(v40 + 32))(v121, v39, v42);
          v66 = sub_252B680FC(v65);
          swift_beginAccess();
          v67 = *(v66 + 16);
          v68 = *(v67 + 16);
          v127 = v43;
          v116 = v44;
          v117 = v41;
          if (v68)
          {
            memcpy(v130, (v67 + 504 * v68 - 472), sizeof(v130));
            sub_2529353AC(v130, v129);

            v69 = v130[30];
            v70 = v130[31];

            sub_252935408(v130);
          }

          else
          {

            v69 = 0;
            v70 = 0;
          }

          v115 = sub_252DF24DC(v69, v70);
          v122 = v71;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_252E3C130;
          sub_252E32FC4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
          v73 = sub_252E32FE4();
          v74 = *(v73 - 8);
          v75 = *(v74 + 72);
          v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_252E3C280;
          v78 = v77 + v76;
          v79 = v38;
          v80 = *(v74 + 104);
          v80(v78, *MEMORY[0x277CC9968], v73);
          v80(v78 + v75, *MEMORY[0x277CC9980], v73);
          v80(v78 + 2 * v75, *MEMORY[0x277CC99A0], v73);
          sub_2529FE09C(v77);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v81 = v118;
          v82 = v121;
          sub_252E32F44();

          v116(v79, v123);
          v83 = objc_allocWithZone(MEMORY[0x277CD18A8]);
          v84 = sub_252E32B04();
          v85 = [v83 initWithFireDateComponents_];

          (*(v124 + 8))(v81, v126);
          *(v72 + 32) = v85;
          v86 = [v128 recurrence];
          if (v86)
          {
            v87 = v86;
            v88 = sub_252E37264();
          }

          else
          {
            v88 = 0;
          }

          v89 = sub_252E36F04();

          sub_252DF2648();
          v90 = sub_252E37254();

          if (v88)
          {
            v91 = sub_252E37254();
          }

          else
          {
            v91 = 0;
          }

          v92 = [objc_allocWithZone(MEMORY[0x277CD19F8]) initWithName:v89 events:v90 endEvents:0 recurrences:v91 predicate:0];

          v119(v82, v125);
          return v92;
        }

        sub_25293847C(v39, &qword_27F540F38, &unk_252E41490);
      }

      else
      {
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v35, qword_27F544CB8);
    v61 = 0xD00000000000003DLL;
    v62 = 0x8000000252E9E260;
    v63 = 317;
    goto LABEL_46;
  }

  if (v18 != 2)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v45 = sub_252E36AD4();
    __swift_project_value_buffer(v45, qword_27F544CB8);
    v130[0] = 0;
    v130[1] = 0xE000000000000000;
    sub_252E379F4();

    v130[0] = 0xD000000000000027;
    v130[1] = 0x8000000252E9E1E0;
    v46 = [v128 type];
    if (v46 == 1)
    {
      v47 = 0xE900000000000064;
      v48 = 0x65736142656D6974;
    }

    else if (v46 == 2)
    {
      v47 = 0xEA00000000006465;
      v48 = 0x736142746E657665;
    }

    else
    {
      v47 = 0xE700000000000000;
      v48 = 0x6E776F6E6B6E75;
    }

    MEMORY[0x2530AD570](v48, v47);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v130[0], v130[1], 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000010, 0x8000000252E9E3C0, 346);

    return 0;
  }

  v19 = [v128 value];
  if (!v19)
  {
LABEL_39:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v60 = sub_252E36AD4();
    __swift_project_value_buffer(v60, qword_27F544CB8);
    v61 = 0xD00000000000004DLL;
    v62 = 0x8000000252E9E2E0;
    v63 = 252;
LABEL_46:
    sub_252CC4050(v61, v62, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000010, 0x8000000252E9E3C0, v63);
    return 0;
  }

  v20 = v19;
  type metadata accessor for EventTriggerValue(0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

    goto LABEL_39;
  }

  v22 = v21;
  v23 = v126;
  if (qword_27F53F8F8 != -1)
  {
    swift_once();
  }

  v24 = qword_27F575DD8;
  v25 = v125;
  if (*(qword_27F575DD8 + 16))
  {
    sub_252A488EC();
    if (v26)
    {
      if (*(v24 + 16))
      {
        v27 = sub_252A488EC();
        if (v28)
        {
          v29 = *(*(v24 + 56) + 8 * v27);
          v30 = sub_252B680FC(v27);
          swift_beginAccess();
          v31 = *(v30 + 16);
          v32 = *(v31 + 16);
          if (v32)
          {
            memcpy(v130, (v31 + 504 * v32 - 472), sizeof(v130));
            sub_2529353AC(v130, v129);

            v33 = v130[30];
            v34 = v130[31];

            sub_252935408(v130);
          }

          else
          {

            v33 = 0;
            v34 = 0;
          }

          sub_252DF24DC(v33, v34);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_252E3C130;
          *(v93 + 32) = [objc_allocWithZone(MEMORY[0x277CD1D20]) initWithPresenceEventType:v29 presenceUserType:1];
          v94 = [v128 recurrence];
          if (v94)
          {
            v95 = v94;
            v96 = sub_252E37264();
          }

          else
          {
            v96 = 0;
          }

          v97 = sub_252E36F04();

          sub_252DF2648();
          v98 = sub_252E37254();

          if (v96)
          {
            v99 = sub_252E37254();
          }

          else
          {
            v99 = 0;
          }

          v100 = [objc_allocWithZone(MEMORY[0x277CD19F8]) initWithName:v97 events:v98 endEvents:0 recurrences:v99 predicate:0];

          return v100;
        }
      }
    }
  }

  if (qword_27F53F8F0 != -1)
  {
    swift_once();
  }

  v49 = qword_27F575DD0;
  if (!*(qword_27F575DD0 + 16) || (sub_252A488EC(), (v50 & 1) == 0) || !*(v49 + 16) || (v51 = sub_252A488EC(), (v52 & 1) == 0))
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v59 = sub_252E36AD4();
    __swift_project_value_buffer(v59, qword_27F544CB8);
    sub_252CC4050(0xD000000000000041, 0x8000000252E9E330, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000010, 0x8000000252E9E3C0, 310);

    return 0;
  }

  v53 = *(*(v49 + 56) + 8 * v51);
  v54 = sub_252B680FC(v53);
  swift_beginAccess();
  v55 = *(v54 + 16);
  v56 = *(v55 + 16);
  if (v56)
  {
    memcpy(v130, (v55 + 504 * v56 - 472), sizeof(v130));
    sub_2529353AC(v130, v129);

    v57 = v130[30];
    v58 = v130[31];

    sub_252935408(v130);
  }

  else
  {

    v57 = 0;
    v58 = 0;
  }

  v127 = sub_252DF24DC(v57, v58);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_252E3C130;
  v102 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
  swift_beginAccess();
  sub_252938414(v22 + v102, v25, &qword_27F540F00, &unk_252E3FEC0);
  v103 = v124;
  v104 = (*(v124 + 48))(v25, 1, v23);
  v105 = v53;
  v106 = 0;
  if (v104 != 1)
  {
    v106 = sub_252E32B04();
    (*(v103 + 8))(v25, v23);
  }

  v107 = [objc_allocWithZone(MEMORY[0x277CD1E00]) initWithSignificantEvent:v105 offset:v106];

  *(v101 + 32) = v107;
  v108 = [v128 recurrence];
  if (v108)
  {
    v109 = v108;
    v110 = sub_252E37264();
  }

  else
  {
    v110 = 0;
  }

  v111 = sub_252E36F04();

  sub_252DF2648();
  v112 = sub_252E37254();

  if (v110)
  {
    v113 = sub_252E37254();
  }

  else
  {
    v113 = 0;
  }

  v114 = [objc_allocWithZone(MEMORY[0x277CD19F8]) initWithName:v111 events:v112 endEvents:0 recurrences:v113 predicate:0];

  return v114;
}

uint64_t sub_252DED39C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_252E32FF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v58 - v8;
  v10 = sub_252E32E04();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v58 - v15;
  v17 = [v2 type];
  if (v17 == 1)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v28 = sub_252E36AD4();
    v29 = __swift_project_value_buffer(v28, qword_27F544CB8);
    v58[0] = "TriggerRecurrenceWeekdays is ";
    v58[1] = v29;
    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E9E230, 0xD000000000000086, 0x8000000252E9E150);
    v30 = [v2 value];
    if (v30)
    {
      v31 = v30;
      type metadata accessor for TimeTriggerValue(0);
      if (swift_dynamicCastClass())
      {
        sub_252E32FC4();
        sub_252E32DF4();
        sub_252B93B3C(v6, v14, v9);

        (*(v11 + 8))(v14, v10);
        (*(v4 + 8))(v6, v3);
        if ((*(v11 + 48))(v9, 1, v10) != 1)
        {
          v46 = *(v11 + 32);
          v46(v16, v9, v10);
          v47 = v59;
          v46(v59, v16, v10);
          v48 = type metadata accessor for TriggerEventType(0);
          swift_storeEnumTagMultiPayload();
          v49 = *(*(v48 - 8) + 56);
          v50 = v47;
          return v49(v50, 0, 1, v48);
        }

        sub_25293847C(v9, &qword_27F540F38, &unk_252E41490);
      }

      else
      {
      }
    }

    sub_252CC4050(0xD00000000000003DLL, 0x8000000252E9E260, 0xD000000000000086, v58[0] | 0x8000000000000000, 0xD000000000000014, 0x8000000252E9E210, 493);
    v45 = type metadata accessor for TriggerEventType(0);
    return (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
  }

  if (v17 != 2)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v32 = sub_252E36AD4();
    __swift_project_value_buffer(v32, qword_27F544CB8);
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_252E379F4();

    v60 = 0xD000000000000027;
    v61 = 0x8000000252E9E1E0;
    v33 = [v2 type];
    v34 = 0xE700000000000000;
    v35 = 0x6E776F6E6B6E75;
    if (v33 == 2)
    {
      v35 = 0x736142746E657665;
      v34 = 0xEA00000000006465;
    }

    v36 = v33 == 1;
    if (v33 == 1)
    {
      v37 = 0x65736142656D6974;
    }

    else
    {
      v37 = v35;
    }

    if (v36)
    {
      v38 = 0xE900000000000064;
    }

    else
    {
      v38 = v34;
    }

    MEMORY[0x2530AD570](v37, v38);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v60, v61, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000014, 0x8000000252E9E210, 498);

    goto LABEL_37;
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544CB8);
  sub_252CC3D90(0xD000000000000030, 0x8000000252E9E2A0, 0xD000000000000086, 0x8000000252E9E150);
  v19 = [v2 value];
  if (!v19)
  {
LABEL_36:
    sub_252CC4050(0xD00000000000004DLL, 0x8000000252E9E2E0, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000014, 0x8000000252E9E210, 474);
    goto LABEL_37;
  }

  v20 = v19;
  type metadata accessor for EventTriggerValue(0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

    goto LABEL_36;
  }

  v22 = v21;
  if (qword_27F53F8F8 != -1)
  {
    swift_once();
  }

  v23 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event;
  if (*(qword_27F575DD8 + 16))
  {
    sub_252A488EC();
    if (v24)
    {
      v25 = sub_2529BBB48(*(v22 + v23));
      if (v25 != 2)
      {
        v51 = v25;

        v52 = v59;
        *v59 = v51 & 1;
        v53 = type metadata accessor for TriggerEventType(0);
        swift_storeEnumTagMultiPayload();
        v40 = *(*(v53 - 8) + 56);
        v42 = v52;
        v43 = 0;
        v41 = v53;
        goto LABEL_38;
      }
    }
  }

  if (qword_27F53F8F0 != -1)
  {
    swift_once();
  }

  if (*(qword_27F575DD0 + 16))
  {
    sub_252A488EC();
    if (v26)
    {
      v27 = sub_2529BBB28(*(v22 + v23));
      if (v27 != 2)
      {
        v54 = v27;
        v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F48, &unk_252E3F7C0) + 48);
        v56 = v59;
        *v59 = v54 & 1;
        v57 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
        swift_beginAccess();
        sub_252938414(v22 + v57, &v56[v55], &qword_27F540F00, &unk_252E3FEC0);

        v48 = type metadata accessor for TriggerEventType(0);
        swift_storeEnumTagMultiPayload();
        v49 = *(*(v48 - 8) + 56);
        v50 = v56;
        return v49(v50, 0, 1, v48);
      }
    }
  }

  sub_252CC4050(0xD000000000000041, 0x8000000252E9E330, 0xD000000000000086, 0x8000000252E9E150, 0xD000000000000014, 0x8000000252E9E210, 486);

LABEL_37:
  v39 = type metadata accessor for TriggerEventType(0);
  v40 = *(*(v39 - 8) + 56);
  v41 = v39;
  v42 = v59;
  v43 = 1;
LABEL_38:

  return v40(v42, v43, 1, v41);
}

uint64_t sub_252DEDCB4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 recurrence];
  if (v3)
  {
    v4 = v3;
    sub_252E32BA4();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  sub_252BD5CAC(v5, a1);
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CB8);
  sub_252E379F4();

  v7 = sub_252E35B04();
  MEMORY[0x2530AD570](v7);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E9E130, 0xD000000000000086, 0x8000000252E9E150);
}

uint64_t sub_252DEDE18()
{
  v27 = sub_252E32BA4();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252E32FF4();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_252E32E04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  sub_252E32DC4();
  v15 = sub_252B94898();
  v16 = *(v10 + 8);
  v16(v14, v9);
  if (v15)
  {
    v17 = [v30 value];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for TimeTriggerValue(0);
      v19 = swift_dynamicCastClass();
      if (!v19)
      {

        return v19 & 1;
      }

      v30 = v18;
      sub_252E32FC4();
      v20 = v27;
      (*(v0 + 16))(v2, v19 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v27);
      sub_252E32FA4();
      (*(v0 + 8))(v2, v20);
      v19 = v29;
      v21 = *(v28 + 8);
      v21(v5, v29);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        v23 = v26;
        (*(v10 + 32))(v26, v8, v9);
        sub_252E32FC4();
        v24 = v19;
        LOBYTE(v19) = sub_252E32F14();

        v21(v5, v24);
        v16(v23, v9);
        return v19 & 1;
      }

      sub_25293847C(v8, &qword_27F540F38, &unk_252E41490);
    }
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

uint64_t sub_252DEE1E8(void *a1, uint64_t a2)
{
  v119 = sub_252E36324();
  v117 = *(v119 - 8);
  v5 = MEMORY[0x28223BE20](v119);
  v116 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v108 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v92 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v105 = &v92 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v106 = &v92 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v92 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  inited = swift_initStackObject();
  v24 = MEMORY[0x277D84F90];
  *(inited + 16) = MEMORY[0x277D84F90];
  v25 = [a1 automatableTask];
  if (v25)
  {
    v26 = v25;
    v103 = v13;
    v107 = a2;
    type metadata accessor for ControlAutomateHomeIntent();
    v27 = swift_dynamicCastClass();
    v28 = v26;
    if (v27)
    {
      v29 = v27;
      v93 = v28;
      v95 = inited;
      v96 = v2;
      v94 = a1;
      type metadata accessor for HomeAutomationEntityState.Builder(0);
      v30 = swift_allocObject();
      v31 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute;
      v32 = v117 + 56;
      v33 = *(v117 + 56);
      v34 = v119;
      v33(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, 1, 1, v119);
      *(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_stateValue) = 0;
      v35 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType;
      v113 = v33;
      v114 = v32;
      v33(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, 1, 1, v34);
      v36 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask;
      [*(v29 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) attribute];
      if (qword_27F53F2A8 != -1)
      {
        goto LABEL_65;
      }

      while (1)
      {
        v37 = off_27F541CD8;
        if (*(off_27F541CD8 + 2) && (v38 = sub_252A488EC(), (v39 & 1) != 0))
        {
          v121 = *(v37[7] + v38);
          AttributeSemantic.rawValue.getter();
          sub_252E362F4();
          v40 = 0;
        }

        else
        {
          v40 = 1;
        }

        v113(v22, v40, 1, v119);
        swift_beginAccess();
        sub_252956BAC(v22, v31 + v30);
        swift_endAccess();
        sub_25293847C(v22, &qword_27F540298, &unk_252E3C270);
        v41 = [*&v36[v29] value];
        if (v41)
        {
          v42 = v41;
          v43 = sub_252D0842C();
        }

        else
        {
          v43 = 0;
        }

        v45 = *&v36[v29];

        [v45 taskType];
        if (qword_27F53F298 != -1)
        {
          swift_once();
        }

        v46 = v107;
        if (*(off_27F541CC8 + 2) && (sub_252A488EC(), (v47 & 1) != 0))
        {

          sub_252E37024();

          v48 = 0;
        }

        else
        {
          v48 = 1;
        }

        v113(v20, v48, 1, v119);
        swift_beginAccess();
        sub_252956BAC(v20, v30 + v35);
        swift_endAccess();
        sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
        type metadata accessor for HomeAutomationEntityState(0);
        v49 = swift_allocObject();
        *(v49 + 16) = 0;
        sub_252938414(v31 + v30, v49 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, &qword_27F540298, &unk_252E3C270);
        *(v49 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue) = v43;
        v104 = v49;
        sub_252938414(v30 + v35, v49 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, &qword_27F540298, &unk_252E3C270);
        swift_setDeallocating();
        sub_25293847C(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, &qword_27F540298, &unk_252E3C270);

        sub_25293847C(v30 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, &qword_27F540298, &unk_252E3C270);
        swift_deallocClassInstance();
        v120 = v24;
        if (v46 >> 62)
        {
          v20 = sub_252E378C4();
        }

        else
        {
          v20 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v50 = v96;
        v22 = v95;
        v36 = MEMORY[0x277D84F90];
        if (!v20)
        {
LABEL_61:

          *(v22 + 2) = v36;
          v89 = *(v50 + 136);

          v44 = v89(v90);

          return v44;
        }

        v51 = 0;
        v102 = v46 & 0xC000000000000001;
        v98 = v46 & 0xFFFFFFFFFFFFFF8;
        v97 = v46 + 32;
        v99 = (v117 + 32);
        v100 = xmmword_252E3C130;
        v101 = v20;
        while (v102)
        {
          v115 = MEMORY[0x2530ADF00](v51, v46);
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_63;
          }

LABEL_30:
          v111 = v53;
          v54 = *(*v115 + 256);
          v109 = *v115 + 256;
          v110 = v54;
          v55 = v54();
          v56 = sub_2529F7B8C(0, 1, 1, v36);
          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          if (v58 >= v57 >> 1)
          {
            v56 = sub_2529F7B8C((v57 > 1), v58 + 1, 1, v56);
          }

          *(v56 + 2) = v58 + 1;
          *&v56[8 * v58 + 32] = v55;
          type metadata accessor for HomeAutomationEntityResponse.Builder(0);
          v59 = swift_allocObject();
          v60 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
          v112 = 1;
          v61 = v119;
          v62 = v113;
          v113((v59 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName), 1, 1, v119);
          v62(v59 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v61);
          *(v59 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
          *(v59 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v36;
          *(v59 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
          v62(v59 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v61);
          *(v59 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v36;
          *(v59 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v36;
          v63 = v115;

          v64 = v106;
          sub_252E37024();

          v62(v64, 0, 1, v61);
          swift_beginAccess();
          sub_252956BAC(v64, v59 + v60);
          swift_endAccess();
          sub_25293847C(v64, &qword_27F540298, &unk_252E3C270);
          v65 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
          v66 = [*(v63 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
          if (v66)
          {
            v67 = v66;
            type metadata accessor for Room(0);
            swift_allocObject();
            sub_2529A1E08(v67);

            v68 = v105;
            sub_252E37024();

            v112 = 0;
          }

          else
          {
            v68 = v105;
          }

          v29 = v103;
          v69 = 1;
          v113(v68, v112, 1, v119);
          sub_252AD6B04(v68);

          sub_25293847C(v68, &qword_27F540298, &unk_252E3C270);
          v70 = [*(v115 + v65) home];
          v31 = v99;
          if (v70)
          {
            v71 = v70;
            type metadata accessor for Home(0);
            swift_allocObject();
            sub_2529E65BC(v71);

            sub_252E37024();

            v69 = 0;
          }

          v72 = 1;
          v113(v29, v69, 1, v119);
          v35 = sub_252AD6E30(v29);

          v73 = sub_25293847C(v29, &qword_27F540298, &unk_252E3C270);
          v74 = (v110)(v73);
          sub_252E25FC4(v74);
          v36 = MEMORY[0x277D84F90];
          if ((v75 & 1) == 0)
          {
            if (qword_27F53F2A0 != -1)
            {
              swift_once();
            }

            v76 = off_27F541CD0;
            if (*(off_27F541CD0 + 2))
            {
              v77 = sub_252A488EC();
              if (v78)
              {
                v121 = *(v76[7] + v77);
                AccessoryTypeSemantic.rawValue.getter();
                sub_252E362F4();
                v72 = 0;
              }
            }
          }

          v79 = v108;
          v113(v108, v72, 1, v119);
          v80 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
          swift_beginAccess();
          sub_252956BAC(v79, v35 + v80);
          swift_endAccess();
          sub_25293847C(v79, &qword_27F540298, &unk_252E3C270);
          v24 = *(v56 + 2);
          if (v24)
          {
            if (qword_27F53F2A0 != -1)
            {
              swift_once();
            }

            v81 = off_27F541CD0;
            v29 = 32;
            v22 = MEMORY[0x277D84F90];
            do
            {
              if (v81[2])
              {
                v82 = sub_252A488EC();
                if (v83)
                {
                  v121 = *(v81[7] + v82);
                  AccessoryTypeSemantic.rawValue.getter();
                  v84 = v116;
                  sub_252E362F4();
                  v85 = *v31;
                  (*v31)(v118, v84, v119);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v22 = sub_2529F7F74(0, *(v22 + 2) + 1, 1, v22);
                  }

                  v87 = *(v22 + 2);
                  v86 = *(v22 + 3);
                  if (v87 >= v86 >> 1)
                  {
                    v22 = sub_2529F7F74((v86 > 1), v87 + 1, 1, v22);
                  }

                  *(v22 + 2) = v87 + 1;
                  v85(&v22[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v87], v118, v119);
                }
              }

              v29 += 8;
              --v24;
            }

            while (v24);

            v46 = v107;
            v36 = MEMORY[0x277D84F90];
          }

          else
          {

            v22 = v36;
            v46 = v107;
          }

          *(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v22;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v88 = swift_allocObject();
          *(v88 + 16) = v100;
          *(v88 + 32) = v104;
          *(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v88;

          type metadata accessor for HomeAutomationEntityResponse(0);
          swift_allocObject();
          v30 = sub_2529605C0(v35);
          MEMORY[0x2530AD700]();
          if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v20 = v101;
          v51 = v111;
          if (v111 == v101)
          {
            v36 = v120;
            v50 = v96;
            v22 = v95;
            goto LABEL_61;
          }
        }

        if (v51 >= *(v98 + 16))
        {
          goto LABEL_64;
        }

        v115 = *(v97 + 8 * v51);

        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (!v52)
        {
          goto LABEL_30;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        swift_once();
      }
    }
  }

  else
  {
  }

  v44 = (*(v2 + 136))(inited);

  return v44;
}

uint64_t sub_252DEF140()
{
  v1 = v0;
  v2 = sub_252E32BA4();
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  v81 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E32FE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_252E32FF4();
  v88 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v74 - v14;
  v16 = sub_252E32E04();
  v17 = *(v16 - 8);
  v86 = v16;
  v87 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v85 = &v74 - v24;
  v25 = [v0 value];
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = v25;
  v89 = v1;
  type metadata accessor for TimeTriggerValue(0);
  v27 = swift_dynamicCastClass();
  if (!v27)
  {

    v1 = v89;
LABEL_8:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544D60);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();
    v37 = [v1 description];
    v38 = sub_252E36F34();
    v40 = v39;

    MEMORY[0x2530AD570](v38, v40);

    MEMORY[0x2530AD570](0xD00000000000004ELL, 0x8000000252E9E400);
    sub_252CC4050(v90, v91, 0xD000000000000086, 0x8000000252E9E150, 0xD00000000000001ALL, 0x8000000252E9E450, 652);

    return 3;
  }

  v28 = v27;
  if (*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval))
  {
    v29 = v26;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544D60);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();
    v31 = [v89 description];
    v32 = sub_252E36F34();
    v34 = v33;

    MEMORY[0x2530AD570](v32, v34);

    MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E9E550);
    sub_252CC4050(v90, v91, 0xD000000000000086, 0x8000000252E9E150, 0xD00000000000001ALL, 0x8000000252E9E450, 657);

    return 5;
  }

  v80 = v26;
  if (sub_252B93218())
  {
    v41 = [v89 recurrence];
    if (!v41)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v69 = sub_252E36AD4();
      __swift_project_value_buffer(v69, qword_27F544D60);
      v90 = 0;
      v91 = 0xE000000000000000;
      sub_252E379F4();
      v70 = [v89 description];
      v71 = sub_252E36F34();
      v73 = v72;

      MEMORY[0x2530AD570](v71, v73);

      MEMORY[0x2530AD570](0xD000000000000051, 0x8000000252E9E4F0);
      sub_252CC4050(v90, v91, 0xD000000000000086, 0x8000000252E9E150, 0xD00000000000001ALL, 0x8000000252E9E450, 662);

      return 2;
    }
  }

  sub_252E32FC4();
  (*(v5 + 104))(v7, *MEMORY[0x277CC9988], v4);
  sub_252E32DC4();
  sub_252E32FB4();
  v42 = v87;
  v43 = v23;
  v44 = v86;
  v78 = *(v87 + 8);
  v79 = v87 + 8;
  v78(v43, v86);
  v45 = v4;
  v46 = v42;
  (*(v5 + 8))(v7, v45);
  v47 = v88 + 8;
  v48 = v84;
  v77 = *(v88 + 8);
  v77(v9, v84);
  v76 = *(v46 + 48);
  if (v76(v15, 1, v44) == 1)
  {
    sub_25293847C(v15, &qword_27F540F38, &unk_252E41490);
    v49 = v89;
LABEL_16:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v50 = sub_252E36AD4();
    __swift_project_value_buffer(v50, qword_27F544D60);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();
    v51 = [v49 description];
    v52 = sub_252E36F34();
    v54 = v53;

    MEMORY[0x2530AD570](v52, v54);

    MEMORY[0x2530AD570](0xD00000000000005BLL, 0x8000000252E9E470);
    sub_252CC4050(v90, v91, 0xD000000000000086, 0x8000000252E9E150, 0xD00000000000001ALL, 0x8000000252E9E450, 670);

    return 1;
  }

  v55 = *(v46 + 32);
  v87 = v46 + 32;
  v75 = v55;
  v55(v85, v15, v44);
  sub_252E32FC4();
  v56 = v81;
  v57 = v82;
  v58 = v28 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate;
  v59 = v83;
  (*(v82 + 16))(v81, v58, v83);
  v88 = v47;
  sub_252E32FA4();
  (*(v57 + 8))(v56, v59);
  v77(v9, v48);
  v60 = v44;
  if (v76(v13, 1, v44) == 1)
  {
    sub_25293847C(v13, &qword_27F540F38, &unk_252E41490);
    v49 = v89;
    v61 = v85;
    v62 = v78;
  }

  else
  {
    v75(v20, v13, v44);
    v61 = v85;
    v63 = sub_252E32D74();
    v62 = v78;
    v78(v20, v60);
    v49 = v89;
    if (v63)
    {
      v62(v61, v60);
      goto LABEL_16;
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v64 = sub_252E36AD4();
  __swift_project_value_buffer(v64, qword_27F544D60);
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_252E379F4();
  v65 = [v49 description];
  v66 = sub_252E36F34();
  v68 = v67;

  v90 = v66;
  v91 = v68;
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E9E4D0);
  sub_252CC3D90(v90, v91, 0xD000000000000086, 0x8000000252E9E150);

  v62(v61, v60);
  return 0;
}

uint64_t sub_252DEFCA4()
{
  v1 = v0;
  v2 = [v0 value];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for EventTriggerValue(0);
    if (swift_dynamicCastClass())
    {
      v4 = [v0 recurrence];
      if (v4)
      {
        v5 = v4;
        sub_252E32BA4();
        v6 = sub_252E37264();

        v7 = *(v6 + 16);

        if (v7 <= 6)
        {
          if (qword_27F53F8F8 != -1)
          {
            swift_once();
          }

          if (*(qword_27F575DD8 + 16))
          {
            sub_252A488EC();
            if (v8)
            {
              if (qword_27F53F4E8 != -1)
              {
                swift_once();
              }

              v9 = sub_252E36AD4();
              __swift_project_value_buffer(v9, qword_27F544D60);
              sub_252CC3D90(0xD000000000000055, 0x8000000252E9E5C0, 0xD000000000000086, 0x8000000252E9E150);

              return 4;
            }
          }
        }
      }
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  sub_252E379F4();
  v12 = [v1 description];
  v13 = sub_252E36F34();
  v15 = v14;

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E9E5A0);
  sub_252CC3D90(v13, v15, 0xD000000000000086, 0x8000000252E9E150);

  return 0;
}

uint64_t sub_252DEFF40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462D0, &qword_252E61808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C3C0;
  *(inited + 32) = 1;
  v1 = *MEMORY[0x277CD0FA8];
  *(inited + 40) = *MEMORY[0x277CD0FA8];
  *(inited + 48) = 2;
  v2 = *MEMORY[0x277CD0FB0];
  *(inited + 56) = *MEMORY[0x277CD0FB0];
  v3 = sub_252CC68E4(inited);
  swift_setDeallocating();
  v4 = v1;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5462D8, &unk_252E61810);
  result = swift_arrayDestroy();
  qword_27F575DD0 = v3;
  return result;
}

unint64_t sub_252DF0014()
{
  result = sub_252CC68BC(&unk_2864A93C8);
  qword_27F575DD8 = result;
  return result;
}

uint64_t sub_252DF003C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 4 || a1 == 3)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_11:
      sub_252E37024();
      v3 = 0;
      goto LABEL_12;
    }

LABEL_15:
    result = sub_252E37DF4();
    __break(1u);
    return result;
  }

  v3 = 1;
LABEL_12:
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_252DF0184(uint64_t a1)
{
  result = sub_252E32B54();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if ((v3 * 60) >> 64 != (60 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = 3600 * v3;
  if ((60 * v3 * 60) >> 64 != (3600 * v3) >> 63)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_252E32B64();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  v7 = 60 * v6;
  if ((v6 * 60) >> 64 != (60 * v6) >> 63)
  {
    goto LABEL_18;
  }

  result = sub_252E32B74();
  v9 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = result;
  }

  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_252DF0238()
{
  v0 = sub_2529FE74C(&unk_2864A8AD0);
  result = swift_arrayDestroy();
  qword_27F575DE0 = v0;
  return result;
}

uint64_t sub_252DF0284()
{
  v0 = sub_2529FE74C(&unk_2864A8B40);
  result = swift_arrayDestroy();
  qword_27F575DE8 = v0;
  return result;
}

uint64_t sub_252DF02D0()
{
  if (qword_27F53F900 != -1)
  {
    swift_once();
  }

  v0 = qword_27F575DE0;
  v1 = qword_27F53F908;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_2529F2320(v2, v0);
  qword_27F575DF0 = result;
  return result;
}

uint64_t AutomateHomeIntent.description.getter()
{
  v1 = v0;
  v2 = [v0 automatableTask];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  type metadata accessor for ControlAutomateHomeIntent();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v6 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v7 = v5;

  v8 = [v6 init];
  [v8 setUserTask_];
  type metadata accessor for HomeFilter();
  v9 = sub_252E37254();

  [v8 setFilters_];

  [v8 setTime_];
LABEL_6:
  sub_252E379F4();
  MEMORY[0x2530AD570](0x7274202020200A7BLL, 0xEF203A7265676769);
  v10 = [v1 trigger];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F8, &unk_252E594B8);
  v11 = sub_252E36F94();
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E9E000);
  [v8 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v12 = sub_252E36F94();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E9E030);
  if (v8)
  {
    v13 = [v8 filters];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for HomeFilter();
      sub_252E37264();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v15 = sub_252E36F94();
  MEMORY[0x2530AD570](v15);

  MEMORY[0x2530AD570](0x7D0A7D202020200ALL, 0xE800000000000000);

  return 0;
}

uint64_t TriggerType.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 2)
  {
    v1 = 0x736142746E657665;
  }

  if (a1 == 1)
  {
    return 0x65736142656D6974;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_252DF06F8()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 2)
  {
    v1 = 0x736142746E657665;
  }

  if (*v0 == 1)
  {
    return 0x65736142656D6974;
  }

  else
  {
    return v1;
  }
}

uint64_t TimeTriggerValue.description.getter()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v1 = MEMORY[0x28223BE20](v62);
  v63 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v61 = &v51 - v4;
  MEMORY[0x28223BE20](v3);
  v55 = &v51 - v5;
  v54 = sub_252E32E04();
  v68 = *(v54 - 8);
  v6 = MEMORY[0x28223BE20](v54);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v51 - v8;
  v9 = sub_252E32FF4();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E32BA4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate;
  v17 = *(v13 + 16);
  v17(v15, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v12);
  sub_252DF0EF8();
  v67 = sub_252E37D94();
  v69 = v18;
  v19 = *(v13 + 8);
  v19(v15, v12);
  sub_252E32FC4();
  v20 = v13 + 8;
  v70 = v0;
  v59 = v16;
  v60 = v17;
  v21 = v0 + v16;
  v22 = v68;
  v56 = v13 + 16;
  v17(v15, v21, v12);
  v23 = v54;
  v24 = v55;
  v64 = v11;
  sub_252E32FA4();
  v58 = v19;
  v53 = v20;
  v19(v15, v12);
  v57 = *(v22 + 48);
  if (v57(v24, 1, v23) == 1)
  {
    sub_25293847C(v24, &qword_27F540F38, &unk_252E41490);
  }

  else
  {

    v25 = v51;
    (*(v22 + 32))(v51, v24, v23);
    v26 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v27 = sub_252E36F04();
    [v26 setDateFormat_];

    v28 = sub_252E32D64();
    v29 = v22;
    v30 = [v26 stringFromDate_];

    v67 = sub_252E36F34();
    v69 = v31;

    (*(v29 + 8))(v25, v23);
  }

  v32 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
  v33 = v70;
  swift_beginAccess();
  sub_252938414(v33 + v32, v61, &qword_27F540F38, &unk_252E41490);
  v34 = sub_252E36F94();
  v36 = v35;
  v60(v15, v33 + v59, v12);
  v37 = v63;
  v38 = v64;
  sub_252E32FA4();
  v58(v15, v12);
  if (v57(v37, 1, v23) == 1)
  {
    sub_25293847C(v37, &qword_27F540F38, &unk_252E41490);
  }

  else
  {

    v39 = v68;
    v40 = v52;
    (*(v68 + 32))(v52, v37, v23);
    v41 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v42 = sub_252E36F04();
    [v41 setDateFormat_];

    v43 = sub_252E32D64();
    v44 = [v41 stringFromDate_];

    v34 = sub_252E36F34();
    v36 = v45;

    (*(v39 + 8))(v40, v23);
  }

  v46 = v69;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x726567676972740ALL, 0xEE00203A65746144);
  MEMORY[0x2530AD570](v67, v46);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E9E050);
  MEMORY[0x2530AD570](v34, v36);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E9E070);
  if (*(v70 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval))
  {
    v47 = 1702195828;
  }

  else
  {
    v47 = 0x65736C6166;
  }

  if (*(v70 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval))
  {
    v48 = 0xE400000000000000;
  }

  else
  {
    v48 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v47, v48);

  MEMORY[0x2530AD570](10, 0xE100000000000000);
  v49 = v71;
  (*(v65 + 8))(v38, v66);
  return v49;
}

unint64_t sub_252DF0EF8()
{
  result = qword_27F5462B8;
  if (!qword_27F5462B8)
  {
    v3 = sub_252E32BA4();
    result = swift_getWitnessTable(MEMORY[0x277CC89C0], v3, v0, v1);
    atomic_store(result, &qword_27F5462B8);
  }

  return result;
}

uint64_t TriggerCondition.triggerNature.getter()
{
  v1 = v0;
  v37 = 0x6E776F6E6B6E75;
  v2 = sub_252E32BA4();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E32FF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_252E32E04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v1 type];
  if (v16 == 1)
  {
    v33 = v5;
    v34 = v13;
    v35 = v6;
    v22 = [v1 value];
    if (v22)
    {
      v23 = v22;
      type metadata accessor for TimeTriggerValue(0);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v24;
        sub_252E32FC4();
        v26 = v36;
        (*(v36 + 16))(v4, v25 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v2);
        sub_252E32FA4();
        (*(v26 + 8))(v4, v2);
        v27 = *(v35 + 8);
        v28 = v33;
        v27(v8, v33);
        v29 = v34;
        if ((*(v34 + 48))(v11, 1, v12) == 1)
        {
          sub_25293847C(v11, &qword_27F540F38, &unk_252E41490);
        }

        else
        {
          (*(v29 + 32))(v15, v11, v12);
          sub_252E32FC4();
          v31 = sub_252E32F14();
          v27(v8, v28);
          (*(v29 + 8))(v15, v12);
          if (v31)
          {

            return 0xD000000000000019;
          }
        }

        return 0x65736142656D6974;
      }

      else
      {
      }
    }
  }

  else if (v16 == 2)
  {
    v17 = [v1 value];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for EventTriggerValue(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event);

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            return 0x6F48657669727261;
          }

          if (v20 == 4)
          {
            return 0x6D6F48657661656CLL;
          }
        }

        else
        {
          if (v20 == 1)
          {
            return 0x657369726E7573;
          }

          if (v20 == 2)
          {
            return 0x7465736E7573;
          }
        }
      }

      else
      {
      }
    }
  }

  return v37;
}

id sub_252DF1448(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

unint64_t TriggerCondition.description.getter()
{
  v1 = 0xD000000000000019;
  v2 = [v0 type];
  if (v2 == 2)
  {
    sub_252E379F4();

    v11 = 0xD00000000000001BLL;
    v7 = [v0 value];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for EventTriggerValue(0);
      if (!swift_dynamicCastClass())
      {
      }
    }

    v5 = &unk_27F5462C0;
    v6 = &unk_252E617C8;
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    sub_252E379F4();

    v11 = 0xD00000000000001ALL;
    v3 = [v0 value];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for TimeTriggerValue(0);
      if (!swift_dynamicCastClass())
      {
      }
    }

    v5 = &unk_27F5462C8;
    v6 = &unk_252E617D0;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](125, 0xE100000000000000);
    return v11;
  }

  return v1;
}

unint64_t sub_252DF1674(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2530AED20](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2530AED20](&v3, 8);
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

uint64_t sub_252DF1700(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v103 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v5 - 8);
  v112 = v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v113 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v114 = v103 - v10;
  v11 = sub_252E32E04();
  v115 = *(v11 - 8);
  v116 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v110 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v111 = v103 - v14;
  v123 = sub_252E32FF4();
  v15 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_252E32BA4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v103 - v22;
  type metadata accessor for HomeAutomationDialogTrigger.Builder(0);
  swift_allocObject();
  v24 = sub_252A08364();
  if (!a1)
  {
    goto LABEL_53;
  }

  v117 = a1;
  v25 = [v117 recurrence];
  v121 = v17;
  v107 = v4;
  v106 = v18;
  v105 = v21;
  v109 = v25;
  if (!v25)
  {
    v34 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v108 = a1;
  v26 = v25;
  v27 = sub_252E37264();

  a1 = *(v27 + 16);
  if (!a1)
  {

    v34 = MEMORY[0x277D84F90];
    a1 = v108;
LABEL_21:
    v39 = v24;
    if (qword_27F53F498 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_22;
  }

  v104 = v24;
  v30 = *(v18 + 16);
  v28 = v18 + 16;
  v29 = v30;
  v31 = (*(v28 + 64) + 32) & ~*(v28 + 64);
  v103[1] = v27;
  v32 = v27 + v31;
  v124 = *(v28 + 56);
  v120 = (v15 + 8);
  v33 = (v28 - 8);
  v34 = MEMORY[0x277D84F90];
  v118 = v30;
  v119 = v28;
  v30(v23, v27 + v31, v17);
  while (1)
  {
    v35 = sub_252E32B84();
    if (v36)
    {
      (*v33)(v23, v17);
      goto LABEL_6;
    }

    v37 = v35;
    v38 = v122;
    sub_252E32FC4();
    v39 = sub_252E32F54();
    (*v120)(v38, v123);
    v40 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      break;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v40 >= *(v39 + 16))
    {
      goto LABEL_56;
    }

    v41 = v39 + 16 * v40;
    v43 = *(v41 + 32);
    v42 = *(v41 + 40);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_2529F7A80(0, *(v34 + 2) + 1, 1, v34);
    }

    v44 = v34;
    v45 = *(v34 + 2);
    v46 = v44;
    v47 = *(v44 + 3);
    if (v45 >= v47 >> 1)
    {
      v46 = sub_2529F7A80((v47 > 1), v45 + 1, 1, v46);
    }

    v17 = v121;
    (*v33)(v23, v121);
    *(v46 + 2) = v45 + 1;
    v48 = &v46[16 * v45];
    v34 = v46;
    *(v48 + 4) = v43;
    *(v48 + 5) = v42;
    v29 = v118;
LABEL_6:
    v32 += v124;
    if (!--a1)
    {

      a1 = v108;
      v24 = v104;
      goto LABEL_21;
    }

    v29(v23, v32, v17);
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_once();
LABEL_22:
  v49 = sub_252E36AD4();
  __swift_project_value_buffer(v49, qword_27F544C70);
  v125 = 0;
  v126 = 0xE000000000000000;
  sub_252E379F4();

  v125 = 0xD000000000000010;
  v126 = 0x8000000252E9E3E0;

  v51 = MEMORY[0x2530AD730](v50, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v51);

  sub_252CC3D90(v125, v126, 0xD000000000000086, 0x8000000252E9E150);

  v52 = sub_252C75848(v34);

  if (qword_27F53F900 != -1)
  {
    swift_once();
  }

  v53 = sub_2529A9538(v52, qword_27F575DE0);

  if (v53)
  {
    v54 = 0;
    goto LABEL_33;
  }

  v56 = sub_252C75848(v55);

  if (qword_27F53F908 != -1)
  {
    swift_once();
  }

  v57 = sub_2529A9538(v56, qword_27F575DE8);

  if (v57)
  {
    v54 = 0;
    v58 = 1;
  }

  else
  {

    v60 = sub_252C75848(v59);

    if (qword_27F53F910 != -1)
    {
      swift_once();
    }

    v54 = sub_2529A9538(v60, qword_27F575DF0);

LABEL_33:
    v58 = 0;
  }

  v61 = [v117 value];
  if (!v61)
  {
LABEL_39:
    v72 = v117;
    v73 = [v117 value];
    if (!v73)
    {

      v24 = v39;
      goto LABEL_53;
    }

    v74 = v73;
    type metadata accessor for EventTriggerValue(0);
    v75 = swift_dynamicCastClass();
    if (!v75)
    {

      v24 = v39;
      goto LABEL_53;
    }

    v76 = v75;
    v124 = v74;
    v77 = v109 != 0;
    v78 = v112;
    sub_252DF003C(*(v75 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event), v112);
    v79 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event;
    swift_beginAccess();
    v80 = v39 + v79;
    v24 = v39;
    sub_252956BAC(v78, v80);
    swift_endAccess();
    sub_25293847C(v78, &qword_27F540298, &unk_252E3C270);
    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence) = v77;
    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday) = v53 & 1;
    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend) = v58;
    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday) = v54 & 1;
    v81 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    swift_beginAccess();
    v82 = v76 + v81;
    v83 = v113;
    sub_252938414(v82, v113, &qword_27F540F38, &unk_252E41490);
    v85 = v115;
    v84 = v116;
    if ((*(v115 + 48))(v83, 1, v116) == 1)
    {
      sub_25293847C(v83, &qword_27F540F38, &unk_252E41490);
      v86 = 0;
    }

    else
    {
      v88 = v110;
      (*(v85 + 32))(v110, v83, v84);
      sub_252E36214();
      swift_allocObject();
      sub_252E36204();
      sub_252E32D94();
      sub_252E361F4();

      v86 = sub_252E361E4();

      (*(v85 + 8))(v88, v84);
    }

    *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence) = v86;

    v89 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    swift_beginAccess();
    v90 = v76 + v89;
    v91 = v107;
    sub_252938414(v90, v107, &qword_27F540F00, &unk_252E3FEC0);
    v92 = v106;
    v93 = v121;
    if ((*(v106 + 48))(v91, 1, v121) == 1)
    {

      sub_25293847C(v91, &qword_27F540F00, &unk_252E3FEC0);
      goto LABEL_53;
    }

    v94 = v105;
    (*(v92 + 32))(v105, v91, v93);
    sub_252E36274();
    swift_allocObject();
    v95 = sub_252E36264();
    v96 = sub_252DF0184(v95);
    if ((v96 & 0x8000000000000000) == 0 || (v97 = __OFSUB__(0, v96), result = -v96, !v97))
    {
      sub_252E36254();

      v99 = sub_252E36244();

      *(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset) = v99;

      v101 = sub_252DF0184(v100);

      (*(v92 + 8))(v94, v93);
      *(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isOffsetToPast) = v101 < 0;
      goto LABEL_53;
    }

    __break(1u);
    return result;
  }

  v62 = v61;
  type metadata accessor for TimeTriggerValue(0);
  v63 = swift_dynamicCastClass();
  if (!v63)
  {

    goto LABEL_39;
  }

  v64 = v63;
  v65 = v109 != 0;
  *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time) = sub_252B93750();

  *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence) = v65;
  v24 = v39;
  *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday) = v53 & 1;
  *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend) = v58;
  *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday) = v54 & 1;
  v66 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
  swift_beginAccess();
  v67 = v64 + v66;
  v68 = v114;
  sub_252938414(v67, v114, &qword_27F540F38, &unk_252E41490);
  v70 = v115;
  v69 = v116;
  if ((*(v115 + 48))(v68, 1, v116) == 1)
  {

    sub_25293847C(v68, &qword_27F540F38, &unk_252E41490);
    v71 = 0;
  }

  else
  {
    v87 = v111;
    (*(v70 + 32))(v111, v68, v69);
    sub_252E36214();
    swift_allocObject();
    sub_252E36204();
    sub_252E32D94();
    sub_252E361F4();

    v71 = sub_252E361E4();

    (*(v70 + 8))(v87, v69);
  }

  *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence) = v71;

LABEL_53:
  type metadata accessor for HomeAutomationDialogTrigger(0);
  swift_allocObject();
  v102 = sub_252A09E4C(v24);

  return v102;
}

uint64_t sub_252DF24DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v12 = a1;
      v13 = a2;

      MEMORY[0x2530AD570](32, 0xE100000000000000);
      v11[1] = sub_252DF1674(0xAuLL);
      v9 = sub_252E37D94();
      MEMORY[0x2530AD570](v9);

      return v12;
    }

    else
    {
    }
  }

  else
  {
    sub_252E32E74();
    a1 = sub_252E32E24();
    (*(v5 + 8))(v7, v4);
  }

  return a1;
}

unint64_t sub_252DF2648()
{
  result = qword_27F542120;
  if (!qword_27F542120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F542120);
  }

  return result;
}

uint64_t sub_252DF2698@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      MEMORY[0x2530AD700](v8);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v7;
      if (v9 == i)
      {
        v10 = v13;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  sub_252A62028(v11, 0, a2, a3);

  sub_252C91044(v10, 1);

  return sub_252E33B94();
}

void *sub_252DF2820(uint64_t a1)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();
  v4 = *(v3 + 22);

  v1[2] = v4;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  swift_beginAccess();
  v7 = *(v6 + 23);

  v1[3] = v7;
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8);
  sub_252929E74((v9 + 136), (v1 + 4));

  v11 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10) + 29);

  v1[12] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[13] = &off_2864BA730;
  v1[9] = v11;
  v1[14] = a1;
  return v1;
}

uint64_t sub_252DF2910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  v5 = sub_252E33C44();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DF29E0, 0, 0);
}

uint64_t sub_252DF29E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v1 = sub_252E34034();
  v0[20] = v1;
  v2 = sub_252E34024();
  v0[21] = v2;
  v3 = [v1 disambiguationItems];
  v4 = sub_252E37264();

  v5 = sub_252A9E238(v4);

  if (v5)
  {
    v6 = sub_252A6EACC(v5);
    v0[22] = v6;

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D18);
    sub_252E379F4();

    v8 = type metadata accessor for HomeFilter();
    v9 = MEMORY[0x2530AD730](v6, v8);
    MEMORY[0x2530AD570](v9);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E77320, 0xD000000000000098, 0x8000000252E9E670);

    v10 = sub_252A6D8E8(v6);
    v0[23] = v10;
    *(sub_252B680FC(v10) + 72) = 1;

    v12 = sub_252B680FC(v11);
    *(v12 + 104) = v10;
    *(v12 + 112) = 0;

    *(sub_252B680FC(v13) + 120) = v6;

    v15 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v14);
    sub_252929E74((v15 + 288), (v0 + 2));

    v16 = v0[5];
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
    LOBYTE(v10) = (*(v17 + 120))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v10)
    {
      v18 = v0[15];
      v0[24] = *(v18 + 24);
      v0[25] = *(v18 + 112);
      sub_252CC3D90(0xD000000000000033, 0x8000000252E77450, 0xD000000000000096, 0x8000000252E76FA0);
      v26 = sub_252A71970;
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v20 = sub_252DF2F20;
    }

    else
    {
      v0[35] = *(v0[15] + 112);
      sub_252CC3D90(0xD000000000000028, 0x8000000252E77420, 0xD000000000000096, 0x8000000252E76FA0);
      v25 = sub_252A6F108(v6, 0);
      v0[36] = v25;
      v0[12] = v25;
      v26 = sub_252A71628;
      v19 = swift_task_alloc();
      v0[37] = v19;
      *v19 = v0;
      v20 = sub_252DF3680;
    }

    v19[1] = v20;

    return v26(v6);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D18);
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD000000000000098, 0x8000000252E9E670, 0xD00000000000003ALL, 0x8000000252E773E0, 37);
    sub_2529515FC(0, 3, 0xD00000000000001ALL, 0x8000000252E9E710);
    type metadata accessor for HomeAutomationError(0);
    sub_252DF445C(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v22 = v1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}