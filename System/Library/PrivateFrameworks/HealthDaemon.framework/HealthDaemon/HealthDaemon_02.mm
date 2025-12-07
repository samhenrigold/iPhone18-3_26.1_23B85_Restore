id sub_2289C0080(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22911C5BC();

  v3 = sub_22911C44C();

  return v3;
}

uint64_t sub_2289C00EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22911C5BC();
  *(a1 + *a4) = sub_22911C45C();
}

id sub_2289C0150(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR___HDCloudSyncManagerRecordTask_recordsToCreate] = a4;
  *&v7[OBJC_IVAR___HDCloudSyncManagerRecordTask_recordsToDelete] = a5;
  aBlock[4] = a6;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289C103C;
  aBlock[3] = &block_descriptor_4;
  v11 = _Block_copy(aBlock);

  v14.receiver = v7;
  v14.super_class = HDCloudSyncManagerRecordTask;
  v12 = objc_msgSendSuper2(&v14, sel_initWithManager_context_accessibilityAssertion_completion_, a1, a2, a3, v11);

  _Block_release(v11);
  return v12;
}

void sub_2289C026C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

void sub_2289C03E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_22911B7EC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2 & 1);
}

void __swiftcall HDCloudSyncManagerRecordTask.pipeline(for:)(HDCloudSyncPipeline *__return_ptr retstr, HDCloudSyncRepository *a2)
{
  v3 = v2;
  v5 = sub_22911B98C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 context];
  v10 = [v9 subContextByAddingOptions_];

  v11 = sub_2289B3D00(0, &qword_27D862DA0, off_27860DC10);
  v73 = v11;
  v72[0] = v10;
  v12 = [v3 accessibilityAssertion];
  v13 = [v3 manager];
  if (v13 && (v14 = v13, v15 = [v13 queue], v14, v15))
  {
    if (v11)
    {
LABEL_4:
      v16 = __swift_project_boxed_opaque_existential_1(v72, v11);
      v17 = *(v11 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v19);
      v20 = sub_22911CACC();
      (*(v17 + 8))(v19, v11);
      __swift_destroy_boxed_opaque_existential_0(v72);
      goto LABEL_7;
    }
  }

  else
  {
    sub_2289B3D00(0, &qword_27D862DA8, 0x277D85C78);
    (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
    v15 = sub_22911C63C();
    (*(v6 + 8))(v8, v5);
    v11 = v73;
    if (v73)
    {
      goto LABEL_4;
    }
  }

  v20 = 0;
LABEL_7:
  v21 = [objc_allocWithZone(HDCloudSyncPipeline) initForContext:v20 repository:a2 accessibilityAssertion:v12 queue:v15];
  swift_unknownObjectRelease();

  v22 = &selRef_nextObject;
  v23 = [v21 operationConfiguration];
  v24 = [v23 repository];

  v25 = [v24 primaryCKContainer];
  if (!v25)
  {
    return;
  }

  v64 = v25;
  v65 = [v21 operationConfiguration];
  v26 = [v3 recordsToCreate];
  v27 = sub_22911C5BC();
  v28 = sub_22911C45C();

  if (v28 >> 62)
  {
    v29 = sub_22911C78C();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x277D84F90];
  v66 = v21;
  if (v29)
  {
    v72[0] = MEMORY[0x277D84F90];
    sub_22911C8BC();
    if (v29 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v69 = v27;
    v70 = v3;
    v31 = objc_opt_self();
    v32 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x22AAC6410](v32, v28);
      }

      else
      {
        v34 = *(v28 + 8 * v32 + 32);
      }

      v35 = v34;
      v36 = [v34 recordID];
      if (!v36)
      {
        sub_22911C35C();
        v36 = sub_22911C34C();
      }

      v37 = [v35 zoneID];
      if (!v37)
      {
        sub_22911C35C();
        v37 = sub_22911C34C();
      }

      v38 = [v35 ownerID];
      if (!v38)
      {
        sub_22911C35C();
        v38 = sub_22911C34C();
      }

      ++v32;
      v33 = [v31 hkctl:v36 deviceContextRecordWithRecordID:v37 zoneID:v38 ownerID:?];

      sub_22911C88C();
      sub_22911C8CC();
      sub_22911C8DC();
      sub_22911C89C();
    }

    while (v29 != v32);

    v39 = v72[0];
    v21 = v66;
    v22 = &selRef_nextObject;
    v3 = v70;
    v30 = MEMORY[0x277D84F90];
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v40 = [v3 recordsToDelete];
  v41 = sub_22911C45C();

  v63 = v39;
  if (v41 >> 62)
  {
    v42 = sub_22911C78C();
    if (v42)
    {
LABEL_27:
      v72[0] = v30;
      sub_22911C8BC();
      if ((v42 & 0x8000000000000000) == 0)
      {
        v69 = sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
        v43 = sub_2289B3D00(0, &qword_27D862DB0, 0x277CBC5F8);
        v44 = 0;
        v67 = v41 & 0xC000000000000001;
        v68 = v43;
        v70 = v41;
        do
        {
          if (v67)
          {
            v45 = MEMORY[0x22AAC6410](v44, v41);
          }

          else
          {
            v45 = *(v41 + 8 * v44 + 32);
          }

          v46 = v45;
          ++v44;
          v47 = [v45 recordID];
          sub_22911C35C();

          v48 = [v46 zoneID];
          sub_22911C35C();

          v49 = [v46 ownerID];
          sub_22911C35C();

          sub_22911C60C();
          sub_22911C5CC();

          sub_22911C88C();
          sub_22911C8CC();
          sub_22911C8DC();
          sub_22911C89C();
          v41 = v70;
        }

        while (v42 != v44);

        v21 = v66;
        v22 = &selRef_nextObject;
        goto LABEL_37;
      }

LABEL_40:
      __break(1u);
      return;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_27;
    }
  }

LABEL_37:
  v50 = v64;
  v51 = objc_allocWithZone(HDCloudSyncModifyRecordsOperation);
  sub_2289B3D00(0, &qword_27D862DB8, 0x277CBC5A0);
  v52 = v50;
  v53 = sub_22911C44C();

  sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
  v54 = sub_22911C44C();

  v55 = v65;
  v56 = [v51 initWithConfiguration:v65 container:v52 recordsToSave:v53 recordIDsToDelete:v54];

  v57 = v56;
  v58 = [v21 v22[227]];
  v59 = type metadata accessor for HDCloudSyncManagerOperationPipelineStage();
  v60 = objc_allocWithZone(v59);
  *&v60[OBJC_IVAR____TtC12HealthDaemonP33_3C3AA33439CD1EDF39A06BA01B83D0D640HDCloudSyncManagerOperationPipelineStage_operation] = v57;
  v71.receiver = v60;
  v71.super_class = v59;
  v61 = v57;
  v62 = [(HDCloudSyncPipeline *)&v71 initWithConfiguration:v58 cloudState:0];

  [v21 addStage_];
}

id HDCloudSyncManagerRecordTask.init(manager:context:accessibilityAssertion:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2289C103C;
  v14[3] = &block_descriptor_1;
  v11 = _Block_copy(v14);
  v12 = [v10 initWithManager:a1 context:a2 accessibilityAssertion:a3 completion:v11];

  _Block_release(v11);

  return v12;
}

id sub_2289C0F98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__CFString *sub_2289C1044@<X0>(uint64_t *a1@<X8>)
{
  v154 = a1;
  v2 = sub_22911B8DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v156 = v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v155 = v150 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v150 - v8;
  sub_2289C1FA0(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v150 - v11;
  sub_2289C1CBC(0);
  v157 = v13;
  v14 = swift_allocBox();
  v16 = v15;
  *v15 = [v1 isActive];
  v158 = v1;
  v17 = [v1 systemBuildVersion];
  if (v17)
  {
    v18 = v17;
    v19 = sub_22911C35C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v16 + 1) = v19;
  *(v16 + 2) = v21;
  v22 = [v158 productType];
  if (v22)
  {
    v23 = v22;
    v24 = sub_22911C35C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(v16 + 3) = v24;
  *(v16 + 4) = v26;
  v27 = [v158 deviceMode];
  if (v27 == 2)
  {
    v28 = @"Satellite";
    v30 = @"Satellite";
  }

  else if (v27 == 1)
  {
    v28 = @"Basic";
    v29 = @"Basic";
  }

  else
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v27];
  }

  result = v28;
  if (!result)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    return result;
  }

  v32 = result;
  v33 = sub_22911C35C();
  v35 = v34;

  *(v16 + 5) = v33;
  *(v16 + 6) = v35;
  v36 = [v158 record];
  v37 = [v36 modificationDate];

  if (v37)
  {
    sub_22911B86C();

    v38 = sub_22911B88C();
    (*(*(v38 - 8) + 56))(v12, 0, 1, v38);
  }

  else
  {
    v39 = sub_22911B88C();
    (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
  }

  v40 = v157[28];
  v41 = &v16[v157[32]];
  v42 = v157[36];
  sub_2289BE454(v12, &v16[v157[24]]);
  v43 = v158;
  v152 = [v158 storeIdentifier];
  sub_22911B8CC();
  (*(v3 + 32))(&v16[v40], v9, v2);
  v151 = [v43 ownerIdentifier];
  *v41 = sub_22911C35C();
  v41[1] = v44;
  v45 = [v43 syncIdentity];
  v153 = v14;
  if (v45)
  {
    v46 = v45;
    v47 = [v45 hardwareIdentifier];
    sub_22911B8CC();

    v48 = [v46 databaseIdentifier];
    sub_22911B8CC();

    v49 = [v46 instanceDiscriminator];
    sub_22911C35C();

    sub_22911BE6C();
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = sub_22911BE7C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v54 = v52 + 56;
  v53(&v16[v42], v50, 1, v51);
  v55 = v158;
  v56 = v157[40];
  v16[v56] = [v158 isChild];
  v57 = [v55 pendingOwner];
  if (v57)
  {
    v58 = v57;
    v59 = sub_22911C35C();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v62 = v158;
  v63 = &v16[v157[44]];
  v64 = v157[48];
  *v63 = v59;
  v63[1] = v61;
  v65 = [v62 pendingSyncIdentity];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 hardwareIdentifier];
    v150[1] = v54;
    sub_22911B8CC();

    v68 = [v66 databaseIdentifier];
    sub_22911B8CC();

    v69 = [v66 instanceDiscriminator];
    sub_22911C35C();

    sub_22911BE6C();
    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  v53(&v16[v64], v70, 1, v51);
  v71 = v158;
  v72 = [v158 supportedProtocolVersion];
  if (v72 == 1)
  {
    v74 = @"Yukon";
    v76 = @"Yukon";
    v73 = v157;
  }

  else
  {
    v73 = v157;
    if (v72)
    {
      v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v72];
    }

    else
    {
      v74 = @"Tigris";
      v75 = @"Tigris";
    }
  }

  result = v74;
  if (!result)
  {
    goto LABEL_85;
  }

  v77 = result;
  v78 = &v16[v73[52]];
  v79 = sub_22911C35C();
  v81 = v80;

  *v78 = v79;
  v78[1] = v81;
  v82 = [v71 requiredProtocolVersion];
  if (v82 == 1)
  {
    v83 = @"Yukon";
    v85 = @"Yukon";
  }

  else if (v82)
  {
    v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v82];
  }

  else
  {
    v83 = @"Tigris";
    v84 = @"Tigris";
  }

  result = v83;
  if (!result)
  {
    goto LABEL_86;
  }

  v86 = result;

  v87 = &v16[v73[56]];
  v88 = v73[60];

  v89 = sub_22911C35C();
  v91 = v90;

  *v87 = v89;
  v87[1] = v91;
  v92 = [v71 shardPredicate];
  if (v92)
  {
    v93 = v92;
    sub_2289E52DC();

    v94 = 0;
  }

  else
  {
    v94 = 1;
  }

  v95 = sub_22911BF3C();
  (*(*(v95 - 8) + 56))(&v16[v88], v94, 1, v95);
  v96 = [v71 currentSequenceHeaderRecord];
  if (v96)
  {
    v97 = v96;
    v98 = [v96 slot];
    switch(v98)
    {
      case 3:
        v99 = @"Tombstone";
        v102 = @"Tombstone";
        break;
      case 2:
        v99 = @"B";
        v101 = @"B";
        break;
      case 1:
        v99 = @"A";
        v100 = @"A";
        break;
      default:
        v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v98];
        break;
    }

    v103 = v99;
    if (v103)
    {
      v104 = v103;
      v105 = sub_22911C35C();
      v107 = v106;

      goto LABEL_52;
    }
  }

  v105 = 0;
  v107 = 0;
LABEL_52:
  v108 = &v16[v73[64]];
  *v108 = v105;
  v108[1] = v107;
  v109 = [v71 oldSequenceHeaderRecord];
  if (v109)
  {
    v110 = v109;
    v111 = [v109 slot];
    switch(v111)
    {
      case 3:
        v112 = @"Tombstone";
        v115 = @"Tombstone";
        break;
      case 2:
        v112 = @"B";
        v114 = @"B";
        break;
      case 1:
        v112 = @"A";
        v113 = @"A";
        break;
      default:
        v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v111];
        break;
    }

    v116 = v112;
    if (v116)
    {
      v117 = v116;
      v118 = sub_22911C35C();
      v120 = v119;

      goto LABEL_64;
    }
  }

  v118 = 0;
  v120 = 0;
LABEL_64:
  v121 = &v16[v73[68]];
  *v121 = v118;
  v121[1] = v120;
  v122 = [v71 activeSequenceHeaderRecord];
  if (!v122)
  {
LABEL_75:
    v131 = 0;
    v133 = 0;
    goto LABEL_76;
  }

  v123 = v122;
  v124 = [v122 slot];
  switch(v124)
  {
    case 3:
      v125 = @"Tombstone";
      v128 = @"Tombstone";
      break;
    case 2:
      v125 = @"B";
      v127 = @"B";
      break;
    case 1:
      v125 = @"A";
      v126 = @"A";
      break;
    default:
      v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v124];
      break;
  }

  v129 = v125;
  if (!v129)
  {

    goto LABEL_75;
  }

  v130 = v129;
  v131 = sub_22911C35C();
  v133 = v132;

LABEL_76:
  v134 = &v16[v73[72]];
  v135 = v73[76];
  *v134 = v131;
  v134[1] = v133;
  v136 = [v71 slotASequenceHeaderRecord];
  if (v136)
  {
    v137 = v136;
    sub_2289BD4B0(&v16[v135]);

    v138 = 0;
  }

  else
  {
    v138 = 1;
  }

  v139 = sub_22911BF0C();
  v140 = *(v139 - 8);
  v141 = *(v140 + 56);
  v142 = 1;
  v141(&v16[v135], v138, 1, v139);
  v143 = v73[80];
  v144 = [v71 slotBSequenceHeaderRecord];
  if (v144)
  {
    v145 = v144;
    sub_2289BD4B0(&v16[v143]);

    v142 = 0;
  }

  v146 = 1;
  v141(&v16[v143], v142, 1, v139);
  v147 = v73[84];
  v148 = [v71 tombstoneSequenceRecord];
  if (v148)
  {
    v149 = v148;
    sub_2289BD4B0(&v16[v147]);

    v146 = 0;
  }

  v141(&v16[v147], v146, 1, v139);
  *v154 = v153;
  return (*(v140 + 104))();
}

void sub_2289C1CBC(uint64_t a1)
{
  if (!qword_27D862DE0)
  {
    MEMORY[0x28223BE20](a1);
    sub_2289B44EC();
    sub_2289C1FA0(255, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_22911B8DC();
    sub_2289C1FA0(255, &qword_27D862D90, MEMORY[0x277CCB430]);
    sub_2289C1FA0(255, &qword_27D862DE8, MEMORY[0x277CCB4E8]);
    sub_2289C1FA0(255, &qword_27D862DF0, MEMORY[0x277CCB4E0]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862DE0);
    }
  }
}

void sub_2289C1FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911C6CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289C1FF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 attachmentReference];
  sub_2289C21E4(0);
  v6 = *(v5 + 112);
  v7 = [v2 referenceIdentifier];
  v8 = sub_22911C35C();
  v10 = v9;

  *a1 = v8;
  a1[1] = v10;
  v11 = [v4 objectIdentifier];
  v12 = sub_22911C35C();
  v14 = v13;

  a1[2] = v12;
  a1[3] = v14;
  v15 = [v4 schemaIdentifier];
  v16 = sub_22911C35C();
  v18 = v17;

  a1[4] = v16;
  a1[5] = v18;
  a1[6] = [v4 schemaVersion];
  v19 = [v4 attachmentIdentifier];
  sub_22911B8CC();

  *(a1 + v6) = [v4 type];
  v20 = [v4 creationDate];
  sub_22911B86C();

  v21 = *MEMORY[0x277CCB480];
  v22 = sub_22911BF0C();
  v23 = *(*(v22 - 8) + 104);

  return v23(a1, v21, v22);
}

void sub_2289C21E4(uint64_t a1)
{
  if (!qword_27D862DF8)
  {
    MEMORY[0x28223BE20](a1);
    sub_22911B8DC();
    sub_22911B88C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862DF8);
    }
  }
}

id sub_2289C2338()
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR___HDWorkoutAssertionManager_rbsAssertionsByIdentifier;
  swift_beginAccess();
  v54 = v0;
  v2 = *&v0[v1];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &selRef_initWithSeries_values_;
  v55 = v2;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v2 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(v2 + 56) + 8 * v13);
        v63[0] = 0;

        v18 = v17;
        if ([v18 v9[281]])
        {
          v10 = v63[0];

          v8 = v11;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v57 = v18;
          v19 = v63[0];
          v20 = sub_22911B7FC();

          swift_willThrow();
          if (qword_27D862780 != -1)
          {
            swift_once();
          }

          v21 = sub_22911B95C();
          __swift_project_value_buffer(v21, qword_27D86A948);

          v22 = v20;
          v23 = sub_22911B94C();
          v24 = sub_22911C5EC();

          log = v23;
          if (os_log_type_enabled(v23, v24))
          {
            v56 = v24;
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v63[0] = v27;
            *v25 = 136315394;
            v28 = sub_2289B9170(v15, v16, v63);

            *(v25 + 4) = v28;
            *(v25 + 12) = 2112;
            v29 = v20;
            v30 = _swift_stdlib_bridgeErrorToNSError();
            *(v25 + 14) = v30;
            *v26 = v30;
            _os_log_impl(&dword_228986000, log, v56, "Failed to invalidate RBS assertions %s with error: %@", v25, 0x16u);
            sub_2289C4A08(v26);
            v31 = v26;
            v2 = v55;
            MEMORY[0x22AAC9830](v31, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v27);
            MEMORY[0x22AAC9830](v27, -1, -1);
            MEMORY[0x22AAC9830](v25, -1, -1);
          }

          else
          {
          }

          v8 = v11;
          v9 = &selRef_initWithSeries_values_;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v8;
      }
    }
  }

  [*&v54[OBJC_IVAR___HDWorkoutAssertionManager_assertionManager] invalidate];
  v32 = OBJC_IVAR___HDWorkoutAssertionManager_liveActivityAssertionsByIdentifier;
  swift_beginAccess();
  v33 = *&v54[v32];
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v38 = (v35 + 63) >> 6;
  v58 = v33;

  v39 = 0;
  while (v37)
  {
LABEL_28:
    v41 = __clz(__rbit64(v37)) | (v39 << 6);
    v42 = (*(v58 + 48) + 16 * v41);
    v44 = *v42;
    v43 = v42[1];
    v45 = *(*(v58 + 56) + 8 * v41);
    v46 = qword_27D862780;

    loga = v45;
    if (v46 != -1)
    {
      swift_once();
    }

    v47 = sub_22911B95C();
    __swift_project_value_buffer(v47, qword_27D86A948);

    v48 = sub_22911B94C();
    v49 = sub_22911C5FC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v62 = v51;
      *v50 = 136315138;
      v52 = sub_2289B9170(v44, v43, &v62);

      *(v50 + 4) = v52;
      _os_log_impl(&dword_228986000, v48, v49, "Invalidating SNA assertion with identifier %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAC9830](v51, -1, -1);
      MEMORY[0x22AAC9830](v50, -1, -1);
    }

    else
    {
    }

    v37 &= v37 - 1;
    [loga invalidate];
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_34;
    }

    if (v40 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v40);
    ++v39;
    if (v37)
    {
      v39 = v40;
      goto LABEL_28;
    }
  }

  v61.receiver = v54;
  v61.super_class = HDWorkoutAssertionManager;
  return objc_msgSendSuper2(&v61, sel_dealloc);
}

void __swiftcall HDWorkoutAssertionManager.takeRBSAssertion(ownerIdentifier:assertionIdentifier:pid:explanation:)(HDAssertion_optional *__return_ptr retstr, Swift::String ownerIdentifier, Swift::String assertionIdentifier, Swift::Int32 pid, Swift::String_optional explanation)
{
  v6 = v5;
  object = explanation.value._object;
  v7 = assertionIdentifier._object;
  countAndFlagsBits = assertionIdentifier._countAndFlagsBits;
  v79[3] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v9 = *&v5[OBJC_IVAR___HDWorkoutAssertionManager_lock];
  os_unfair_lock_lock(v9 + 4);
  strcpy(v79, "Runningboard-");
  HIWORD(v79[1]) = -4864;
  MEMORY[0x22AAC5FC0](countAndFlagsBits, v7);
  v10 = v79[1];
  v11 = OBJC_IVAR___HDWorkoutAssertionManager_rbsAssertionsByIdentifier;
  swift_beginAccess();
  if (*(*&v5[v11] + 16) && (sub_2289AD318(v79[0], v79[1]), (v12 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v13 = sub_22911B95C();
    __swift_project_value_buffer(v13, qword_27D86A948);

    v14 = sub_22911B94C();
    v15 = sub_22911C5FC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v79[0];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v79[0] = v18;
      *v17 = 136446466;
      v19 = sub_22911CBAC();
      v21 = sub_2289B9170(v19, v20, v79);

      *(v17 + 4) = v21;
      v22 = v9;
      *(v17 + 12) = 2080;
      v23 = sub_2289B9170(v16, v10, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_228986000, v14, v15, "%{public}s RBS Assertion with identifier %s already taken.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v18, -1, -1);
      MEMORY[0x22AAC9830](v17, -1, -1);
    }

    else
    {

      v22 = v9;
    }
  }

  else
  {
    v77 = v9;
    swift_endAccess();
    v24 = objc_allocWithZone(MEMORY[0x277D10AB8]);
    v72 = v79[0];
    v25 = sub_22911C34C();
    v26 = sub_22911C34C();
    v27 = [v24 initWithAssertionIdentifier:v25 ownerIdentifier:v26];

    v28 = *&v6[OBJC_IVAR___HDWorkoutAssertionManager_assertionManager];
    if ([v28 takeAssertion_])
    {
      v71 = v28;
      v29 = sub_22911C34C();
      if (object)
      {
        v30 = sub_22911C34C();
      }

      else
      {
        v30 = 0;
      }

      v39 = [v6 makeRBSAssertionWithAssertionIdentifier:v29 pid:pid explanation:v30];

      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v40 = sub_22911B95C();
      __swift_project_value_buffer(v40, qword_27D86A948);

      v41 = sub_22911B94C();
      v42 = sub_22911C5FC();

      if (os_log_type_enabled(v41, v42))
      {
        v74 = v39;
        v43 = swift_slowAlloc();
        v76 = v27;
        v44 = swift_slowAlloc();
        v79[0] = v44;
        *v43 = 136446466;
        v45 = sub_22911CBAC();
        v47 = sub_2289B9170(v45, v46, v79);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2080;
        v48 = v72;
        *(v43 + 14) = sub_2289B9170(v72, v10, v79);
        _os_log_impl(&dword_228986000, v41, v42, "%{public}s Acquiring RBS Assertion with identifier %s", v43, 0x16u);
        swift_arrayDestroy();
        v49 = v44;
        v27 = v76;
        MEMORY[0x22AAC9830](v49, -1, -1);
        v50 = v43;
        v39 = v74;
        MEMORY[0x22AAC9830](v50, -1, -1);

        v22 = v77;
      }

      else
      {

        v22 = v9;
        v48 = v79[0];
      }

      v79[0] = 0;
      v51 = [v39 acquireWithError_];
      v52 = v79[0];
      if (v51)
      {
        swift_beginAccess();

        v53 = v52;
        v54 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = *&v6[v11];
        *&v6[v11] = 0x8000000000000000;
        sub_2289B0074(v54, v48, v10, isUniquelyReferenced_nonNull_native);

        *&v6[v11] = v78;
        swift_endAccess();
        v56 = sub_22911C34C();

        [v71 addObserver:v6 forAssertionIdentifier:v56 queue:0];
      }

      else
      {
        v57 = v39;
        v58 = v79[0];

        v59 = sub_22911B7FC();

        swift_willThrow();
        v60 = v59;
        v61 = sub_22911B94C();
        v62 = sub_22911C5EC();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v79[0] = v65;
          *v63 = 136446466;
          v66 = sub_22911CBAC();
          v68 = sub_2289B9170(v66, v67, v79);
          v22 = v77;

          *(v63 + 4) = v68;
          *(v63 + 12) = 2112;
          v69 = v59;
          v70 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 14) = v70;
          *v64 = v70;
          _os_log_impl(&dword_228986000, v61, v62, "%{public}s Failed to acquire RBS assertion %@", v63, 0x16u);
          sub_2289C4A08(v64);
          MEMORY[0x22AAC9830](v64, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x22AAC9830](v65, -1, -1);
          MEMORY[0x22AAC9830](v63, -1, -1);
        }

        [v27 invalidate];
      }
    }

    else
    {

      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v31 = sub_22911B95C();
      __swift_project_value_buffer(v31, qword_27D86A948);
      v32 = sub_22911B94C();
      v33 = sub_22911C5EC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v79[0] = v35;
        *v34 = 136446210;
        v36 = sub_22911CBAC();
        v38 = sub_2289B9170(v36, v37, v79);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_228986000, v32, v33, "%{public}s Failed to take HDAssertion", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AAC9830](v35, -1, -1);
        MEMORY[0x22AAC9830](v34, -1, -1);
      }

      v22 = v9;
    }
  }

  os_unfair_lock_unlock(v22 + 4);
}

id HDWorkoutAssertionManager.makeRBSAssertion(assertionIdentifier:pid:explanation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  ObjectType = swift_getObjectType();
  v7 = [objc_opt_self() targetWithPid_];
  v8 = sub_22911C34C();
  v9 = sub_22911C34C();
  v10 = [objc_opt_self() attributeWithDomain:v8 name:v9];

  sub_2289C4ACC();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2291640E0;
  *(v11 + 32) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D46DB8]);

  v13 = v7;
  v14 = v10;
  v15 = sub_22911C34C();

  sub_2289B3D00(0, &qword_27D862E20, 0x277D46DD8);
  v16 = sub_22911C44C();

  v17 = [v12 initWithExplanation:v15 target:v13 attributes:v16];

  v18 = swift_allocObject();
  *(v18 + 16) = ObjectType;
  v21[4] = sub_2289C4B20;
  v21[5] = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_2289C57BC;
  v21[3] = &block_descriptor_2;
  v19 = _Block_copy(v21);

  [v17 setInvalidationHandler_];
  _Block_release(v19);

  return v17;
}

void sub_2289C3564(void *a1, void *a2, uint64_t a3)
{
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v5 = sub_22911B95C();
  __swift_project_value_buffer(v5, qword_27D86A948);
  v6 = a1;
  v7 = a2;
  oslog = sub_22911B94C();
  v8 = sub_22911C5FC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136446722;
    v12 = sub_22911CBAC();
    v14 = sub_2289B9170(v12, v13, &v20);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    *(v9 + 22) = 2112;
    v15 = v6;
    if (a2)
    {
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v9 + 24) = v17;
    v10[1] = v18;
    _os_log_impl(&dword_228986000, oslog, v8, "%{public}s RBS assertion %@ was invalidated with error %@", v9, 0x20u);
    sub_2289C4A64(0);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAC9830](v11, -1, -1);
    MEMORY[0x22AAC9830](v9, -1, -1);
  }
}

void __swiftcall HDWorkoutAssertionManager.takeLiveActivityAssertion(ownerIdentifier:clientBundleIdentifier:explanation:)(HDAssertion_optional *__return_ptr retstr, Swift::String ownerIdentifier, Swift::String clientBundleIdentifier, Swift::String explanation)
{
  v5 = v4;
  object = clientBundleIdentifier._object;
  countAndFlagsBits = clientBundleIdentifier._countAndFlagsBits;
  v8 = ownerIdentifier._object;
  v63 = ownerIdentifier._countAndFlagsBits;
  swift_getObjectType();
  v9 = *(v4 + OBJC_IVAR___HDWorkoutAssertionManager_lock);
  os_unfair_lock_lock(v9 + 4);
  strcpy(&aBlock, "LiveActivity-");
  HIWORD(aBlock) = -4864;
  MEMORY[0x22AAC5FC0](countAndFlagsBits, object);
  v10 = *(&aBlock + 1);
  v11 = OBJC_IVAR___HDWorkoutAssertionManager_liveActivityAssertionsByIdentifier;
  swift_beginAccess();
  if (*(*(v4 + v11) + 16) && (sub_2289AD318(aBlock, *(&aBlock + 1)), (v12 & 1) != 0))
  {
    v13 = aBlock;
    swift_endAccess();
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v14 = sub_22911B95C();
    __swift_project_value_buffer(v14, qword_27D86A948);

    v15 = sub_22911B94C();
    v16 = sub_22911C5FC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&aBlock = v18;
      *v17 = 136446466;
      v19 = sub_22911CBAC();
      v21 = sub_2289B9170(v19, v20, &aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_2289B9170(v13, v10, &aBlock);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_228986000, v15, v16, "%{public}s Live Activity Assertion with identifier %s already taken.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v18, -1, -1);
      MEMORY[0x22AAC9830](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v62 = v9;
    swift_endAccess();
    v23 = objc_allocWithZone(MEMORY[0x277D10AB8]);
    v59 = aBlock;
    v24 = sub_22911C34C();
    v25 = sub_22911C34C();
    v26 = [v23 initWithAssertionIdentifier:v24 ownerIdentifier:v25];

    v27 = *(v5 + OBJC_IVAR___HDWorkoutAssertionManager_assertionManager);
    v61 = v26;
    if ([v27 takeAssertion_])
    {
      v64 = v27;
      v28 = objc_allocWithZone(MEMORY[0x277D4D500]);
      v29 = sub_22911C34C();
      v30 = [v28 initWithBundleIdentifier_];

      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = objc_allocWithZone(MEMORY[0x277D4D4F8]);
      v33 = v30;

      v34 = sub_22911C34C();
      v69 = sub_2289C4B40;
      v70 = v31;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v67 = sub_2289C57BC;
      v68 = &block_descriptor_6;
      v35 = _Block_copy(&aBlock);

      v36 = [v32 initWithExplanation:v34 target:v33 invalidationHandler:v35];
      _Block_release(v35);

      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v37 = sub_22911B95C();
      __swift_project_value_buffer(v37, qword_27D86A948);

      v38 = sub_22911B94C();
      v39 = sub_22911C5FC();

      if (os_log_type_enabled(v38, v39))
      {
        v60 = v36;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&aBlock = v41;
        *v40 = 136446466;
        v42 = sub_22911CBAC();
        v44 = sub_2289B9170(v42, v43, &aBlock);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        v45 = v59;
        *(v40 + 14) = sub_2289B9170(v59, v10, &aBlock);
        _os_log_impl(&dword_228986000, v38, v39, "%{public}s Acquiring Live Activity Assertion with identifier %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC9830](v41, -1, -1);
        v46 = v40;
        v36 = v60;
        MEMORY[0x22AAC9830](v46, -1, -1);

        v9 = v62;
      }

      else
      {

        v9 = v62;
        v45 = v59;
      }

      swift_beginAccess();

      v56 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *(v5 + v11);
      *(v5 + v11) = 0x8000000000000000;
      sub_2289B0090(v56, v45, v10, isUniquelyReferenced_nonNull_native);

      *(v5 + v11) = v65;
      swift_endAccess();
      v58 = sub_22911C34C();

      [v64 addObserver:v5 forAssertionIdentifier:v58 queue:0];
    }

    else
    {
      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v47 = sub_22911B95C();
      __swift_project_value_buffer(v47, qword_27D86A948);

      v48 = sub_22911B94C();
      v49 = sub_22911C5EC();

      v9 = v62;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&aBlock = v51;
        *v50 = 136446722;
        v52 = sub_22911CBAC();
        v54 = sub_2289B9170(v52, v53, &aBlock);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_2289B9170(v63, v8, &aBlock);
        *(v50 + 22) = 2080;
        v55 = sub_2289B9170(v59, v10, &aBlock);

        *(v50 + 24) = v55;
        _os_log_impl(&dword_228986000, v48, v49, "%{public}s Failed to take HDAssertion with owner identifier %s and client identifier %s", v50, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAC9830](v51, -1, -1);
        MEMORY[0x22AAC9830](v50, -1, -1);
      }

      else
      {
      }
    }
  }

  os_unfair_lock_unlock(v9 + 4);
}

void sub_2289C400C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      a2 = sub_22911B7EC();
    }

    [v6 handleDidInvalidateLiveActivityAssertion:a1 error:a2];
  }
}

void sub_2289C4164(void *a1, void *a2)
{
  swift_getObjectType();
  if ([a1 invalidationReason] != 3)
  {
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v4 = sub_22911B95C();
    __swift_project_value_buffer(v4, qword_27D86A948);
    v5 = a1;
    v6 = a2;
    oslog = sub_22911B94C();
    v7 = sub_22911C5EC();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v8 = 136446722;
      v11 = sub_22911CBAC();
      v13 = sub_2289B9170(v11, v12, &v19);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v5;
      *(v8 + 22) = 2112;
      v14 = v5;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v8 + 24) = v16;
      v9[1] = v17;
      _os_log_impl(&dword_228986000, oslog, v7, "%{public}s Live activity %@ invalidated with error %@", v8, 0x20u);
      sub_2289C4A64(0);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAC9830](v10, -1, -1);
      MEMORY[0x22AAC9830](v8, -1, -1);
    }

    else
    {
    }
  }
}

void __swiftcall HDWorkoutAssertionManager.init()(HDWorkoutAssertionManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id HDWorkoutAssertionManager.init()()
{
  v1 = OBJC_IVAR___HDWorkoutAssertionManager_assertionManager;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D10AC0]) init];
  v2 = OBJC_IVAR___HDWorkoutAssertionManager_lock;
  sub_2289C56E4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = OBJC_IVAR___HDWorkoutAssertionManager_rbsAssertionsByIdentifier;
  v5 = MEMORY[0x277D84F90];
  *&v0[v4] = sub_2289B27C0(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR___HDWorkoutAssertionManager_liveActivityAssertionsByIdentifier;
  *&v0[v6] = sub_2289B27DC(v5);
  v8.receiver = v0;
  v8.super_class = HDWorkoutAssertionManager;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_2289C45BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

unint64_t sub_2289C4648@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22911C42C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_228A0FD0C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_228A0FD0C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22911C41C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22911C3EC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22911C3EC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22911C42C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_228A0FD0C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22911C42C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_228A0FD0C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_228A0FD0C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22911C3EC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2289C4A08(uint64_t a1)
{
  sub_2289C4A64(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289C4A64(uint64_t a1)
{
  if (!qword_27D862BA0)
  {
    sub_2289B3D00(255, &qword_280D678B0, 0x277D82BB8);
    v1 = sub_22911C6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862BA0);
    }
  }
}

void sub_2289C4ACC()
{
  if (!qword_280D679C0)
  {
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D679C0);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2289C4B48(uint64_t a1, unint64_t a2)
{
  v14[0] = 45;
  v14[1] = 0xE100000000000000;
  v13[2] = v14;

  v5 = sub_2289C4648(0x7FFFFFFFFFFFFFFFLL, 1, sub_2289C575C, v13, a1, a2, v4);
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    swift_bridgeObjectRetain_n();

    MEMORY[0x22AAC5F90](v6, v7, v8, v9);
    swift_bridgeObjectRelease_n();
    v10 = sub_22911CA9C();

    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v10)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

void sub_2289C4C60(void *a1)
{
  v2 = v1;
  v112[3] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v4 = *(v2 + OBJC_IVAR___HDWorkoutAssertionManager_lock);
  os_unfair_lock_lock(v4 + 4);
  v5 = [a1 assertionIdentifier];
  v6 = sub_22911C35C();
  v8 = v7;

  v9 = sub_2289C4B48(v6, v8);

  if (v9 != 2)
  {
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v24 = sub_22911B95C();
    __swift_project_value_buffer(v24, qword_27D86A948);
    v25 = a1;
    v26 = sub_22911B94C();
    v27 = sub_22911C5FC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v112[0] = v110;
      *v28 = 136446466;
      v29 = sub_22911CBAC();
      v111 = v4;
      v31 = sub_2289B9170(v29, v30, v112);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = [v25 assertionIdentifier];
      v33 = sub_22911C35C();
      v34 = v25;
      v36 = v35;

      v37 = v33;
      v4 = v111;
      v38 = sub_2289B9170(v37, v36, v112);
      v25 = v34;

      *(v28 + 14) = v38;
      _os_log_impl(&dword_228986000, v26, v27, "%{public}s HDAssertion with identifier %s was invalidated. Invalidating underlying assertion.", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v110, -1, -1);
      MEMORY[0x22AAC9830](v28, -1, -1);
    }

    v39 = [v25 assertionIdentifier];
    v40 = sub_22911C35C();
    v42 = v41;

    if (v9)
    {
      v43 = OBJC_IVAR___HDWorkoutAssertionManager_liveActivityAssertionsByIdentifier;
      swift_beginAccess();
      v44 = *(v2 + v43);
      if (*(v44 + 16))
      {
        v45 = sub_2289AD318(v40, v42);
        v47 = v46;

        if (v47)
        {
          v48 = *(*(v44 + 56) + 8 * v45);
          swift_endAccess();
          v49 = v48;
          [v49 invalidate];
          v50 = [v25 assertionIdentifier];
          v51 = sub_22911C35C();
          v53 = v52;

          swift_beginAccess();
          v55 = sub_2289E7928(v51, v53, v54);
          swift_endAccess();

          goto LABEL_28;
        }
      }

      else
      {
      }

      swift_endAccess();
      v70 = v25;
      v55 = sub_22911B94C();
      v71 = sub_22911C5EC();

      if (!os_log_type_enabled(v55, v71))
      {
        goto LABEL_28;
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v112[0] = v73;
      *v72 = 136446466;
      v74 = sub_22911CBAC();
      v76 = sub_2289B9170(v74, v75, v112);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v77 = [v70 assertionIdentifier];
      v78 = sub_22911C35C();
      v80 = v79;

      v81 = sub_2289B9170(v78, v80, v112);

      *(v72 + 14) = v81;
      v82 = "%{public}s Failed to find Live Activity assertion with identifier %s to invalidate";
    }

    else
    {
      v56 = OBJC_IVAR___HDWorkoutAssertionManager_rbsAssertionsByIdentifier;
      swift_beginAccess();
      v57 = *(v2 + v56);
      if (*(v57 + 16))
      {
        v58 = sub_2289AD318(v40, v42);
        v60 = v59;

        if (v60)
        {
          v61 = *(*(v57 + 56) + 8 * v58);
          swift_endAccess();
          v112[0] = 0;
          v62 = v61;
          if ([v62 invalidateSyncWithError_])
          {
            v63 = v112[0];
            v64 = [v25 assertionIdentifier];
            v65 = sub_22911C35C();
            v67 = v66;

            swift_beginAccess();
            v69 = sub_2289E7910(v65, v67, v68);
            swift_endAccess();

            goto LABEL_8;
          }

          v92 = v112[0];
          v93 = sub_22911B7FC();

          swift_willThrow();
          v94 = v25;
          v95 = v93;
          v55 = sub_22911B94C();
          v96 = sub_22911C5EC();

          if (!os_log_type_enabled(v55, v96))
          {

            goto LABEL_8;
          }

          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v112[0] = v99;
          *v97 = 136446722;
          v100 = sub_22911CBAC();
          v102 = sub_2289B9170(v100, v101, v112);

          *(v97 + 4) = v102;
          *(v97 + 12) = 2080;
          v103 = [v94 assertionIdentifier];
          v104 = sub_22911C35C();
          v106 = v105;

          v107 = sub_2289B9170(v104, v106, v112);

          *(v97 + 14) = v107;
          *(v97 + 22) = 2112;
          v108 = v93;
          v109 = _swift_stdlib_bridgeErrorToNSError();
          *(v97 + 24) = v109;
          *v98 = v109;
          _os_log_impl(&dword_228986000, v55, v96, "%{public}s Failed to invalidate RBS assertion with identifier %s %@", v97, 0x20u);
          sub_2289C4A08(v98);
          MEMORY[0x22AAC9830](v98, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x22AAC9830](v99, -1, -1);
          MEMORY[0x22AAC9830](v97, -1, -1);

LABEL_28:
          goto LABEL_8;
        }
      }

      else
      {
      }

      swift_endAccess();
      v83 = v25;
      v55 = sub_22911B94C();
      v71 = sub_22911C5EC();

      if (!os_log_type_enabled(v55, v71))
      {
        goto LABEL_28;
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v112[0] = v73;
      *v72 = 136446466;
      v84 = sub_22911CBAC();
      v86 = sub_2289B9170(v84, v85, v112);

      *(v72 + 4) = v86;
      *(v72 + 12) = 2080;
      v87 = [v83 assertionIdentifier];
      v88 = sub_22911C35C();
      v90 = v89;

      v91 = sub_2289B9170(v88, v90, v112);

      *(v72 + 14) = v91;
      v82 = "%{public}s Failed to find RBS assertion with identifier %s to invalidate";
    }

    _os_log_impl(&dword_228986000, v55, v71, v82, v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v73, -1, -1);
    MEMORY[0x22AAC9830](v72, -1, -1);
    goto LABEL_28;
  }

  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v10 = sub_22911B95C();
  __swift_project_value_buffer(v10, qword_27D86A948);
  v11 = a1;
  v12 = sub_22911B94C();
  v13 = sub_22911C5EC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v112[0] = v15;
    *v14 = 136446466;
    v16 = sub_22911CBAC();
    v18 = sub_2289B9170(v16, v17, v112);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = [v11 assertionIdentifier];
    v20 = sub_22911C35C();
    v22 = v21;

    v23 = sub_2289B9170(v20, v22, v112);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_228986000, v12, v13, "%{public}s Failed to find Assertion with identifier %s to invalidate", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v15, -1, -1);
    MEMORY[0x22AAC9830](v14, -1, -1);
  }

LABEL_8:
  os_unfair_lock_unlock(v4 + 4);
}

void sub_2289C56E4(uint64_t a1)
{
  if (!qword_280D678C0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22911C86C();
    if (!v2)
    {
      atomic_store(v1, &qword_280D678C0);
    }
  }
}

uint64_t sub_2289C575C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22911CADC() & 1;
  }
}

unint64_t HDEntityError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    if (*(v0 + 16))
    {
      sub_22911C83C();

      v4 = 0xD000000000000011;
LABEL_11:
      v14 = v4;
      MEMORY[0x22AAC5FC0](v1, v2);
      return v14;
    }

    sub_22911C83C();

    v14 = 0xD000000000000015;
    swift_getMetatypeMetadata();
    v5 = sub_22911C3AC();
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        sub_22911C83C();

        v4 = 0xD00000000000001DLL;
      }

      else
      {
        sub_22911C83C();

        v4 = 0xD000000000000015;
      }

      goto LABEL_11;
    }

    swift_getMetatypeMetadata();
    v7 = sub_22911C3AC();
    v9 = v8;
    swift_getMetatypeMetadata();
    v10 = sub_22911C3AC();
    v12 = v11;
    sub_22911C83C();

    v14 = 0xD00000000000001ALL;
    MEMORY[0x22AAC5FC0](v7, v9);

    MEMORY[0x22AAC5FC0](0x746365707865202CLL, 0xEB00000000206465);
    v5 = v10;
    v6 = v12;
  }

  MEMORY[0x22AAC5FC0](v5, v6);

  return v14;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2289C5A2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2289C5A74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

Swift::Void __swiftcall HDCloudSyncDeleteOrphanedRecordsOperation.main()()
{
  v1 = sub_22911B95C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedBehavior];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 features];

  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = [v7 removeCKCascadeDelete];

  if (v8)
  {
    sub_22911B93C();
    v9 = v0;
    v10 = sub_22911B94C();
    v11 = sub_22911C5FC();

    v12 = &selRef_client;
    if (os_log_type_enabled(v10, v11))
    {
      v13 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v13 = 136315394;
      v14 = [v9 description];
      v15 = sub_22911C35C();
      v17 = v16;

      v18 = sub_2289B9170(v15, v17, aBlock);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      v19 = [v9 configuration];
      v20 = [v19 repository];

      v21 = [v20 description];
      v22 = sub_22911C35C();
      v24 = v23;

      v25 = sub_2289B9170(v22, v24, aBlock);

      *(v13 + 14) = v25;
      _os_log_impl(&dword_228986000, v10, v11, "%s Track and delete orphaned records for container %s", v13, 0x16u);
      v26 = v33;
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v26, -1, -1);
      v27 = v13;
      v12 = &selRef_client;
      MEMORY[0x22AAC9830](v27, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v28 = [objc_allocWithZone(MEMORY[0x277D10BB0]) init];
    [v28 beginTask];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2289C5FC0;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2289C5FC8;
    aBlock[3] = &block_descriptor_3;
    v30 = _Block_copy(aBlock);

    [v28 setDidFinish_];
    _Block_release(v30);
    v31 = [v9 v12[368]];
    sub_2289C6084(v28, v31);

    [v28 finishTask];
  }

  else
  {

    [v0 finishWithSuccess:1 error:0];
  }
}

void sub_2289C5F14(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(a3 + 16))
    {
      v8 = *(a3 + 32);
      v9 = v8;
      v10 = sub_22911B7EC();
    }

    else
    {
      v10 = 0;
    }

    [v7 finishWithSuccess:a2 & 1 error:v10];
  }
}

void sub_2289C5FC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  sub_2289BCE8C();
  sub_22911C45C();

  v6 = a2;
  v5();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2289C6084(void *a1, void *a2)
{
  v21[7] = *MEMORY[0x277D85DE8];
  [a1 beginTask];
  v4 = [a2 repository];
  v5 = [a2 cachedCloudState];
  v21[0] = 0;
  v6 = [v5 zonesByIdentifierWithError_];

  v7 = v21[0];
  if (v6)
  {
    sub_2289B3D00(0, &qword_27D862A40, off_27860E1E8);
    sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
    sub_2289C83EC();
    v8 = sub_22911C2CC();
    v9 = v7;

    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = v8;
    v11 = swift_allocObject();
    v11[2] = sub_2289C8454;
    v11[3] = v10;
    v21[4] = sub_2289C84B8;
    v21[5] = v11;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_228A052DC;
    v21[3] = &block_descriptor_10;
    v12 = _Block_copy(v21);
    v13 = a1;
    v14 = a2;

    [v4 enumerateAllContainersWithBlock_];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    [v13 finishTask];
    v16 = sub_2289C8454;
  }

  else
  {
    v17 = v21[0];
    v18 = sub_22911B7FC();

    swift_willThrow();
    v19 = sub_22911B7EC();
    [a1 failTaskWithError_];

    v16 = 0;
    v10 = 0;
  }

  return sub_2289ACBE4(v16, v10);
}

void __swiftcall HDCloudSyncDeleteOrphanedRecordsOperation.init(configuration:cloudState:)(HDCloudSyncDeleteOrphanedRecordsOperation *__return_ptr retstr, HDCloudSyncOperationConfiguration *configuration, HDCloudSyncCloudState_optional *cloudState)
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:configuration cloudState:cloudState];
}

id HDCloudSyncDeleteOrphanedRecordsOperation.init(configuration:cloudState:)(void *a1, void *a2)
{
  v6.super_class = HDCloudSyncDeleteOrphanedRecordsOperation;
  v4 = objc_msgSendSuper2(&v6, sel_initWithConfiguration_cloudState_, a1, a2);

  return v4;
}

void sub_2289C64B0(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  [a1 beginTask];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;

  v9 = a3;
  sub_2289C79E4(a4, sub_2289C87C0, v8, sub_2289C74FC);

  v10 = objc_allocWithZone(HDCloudSyncModifyRecordsOperation);
  sub_2289B3D00(0, &qword_27D862DB8, 0x277CBC5A0);
  v11 = sub_22911C44C();
  sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
  v12 = sub_22911C44C();

  v13 = [v10 initWithConfiguration:a2 container:v9 recordsToSave:v11 recordIDsToDelete:v12];

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v26 = sub_2289C87A8;
  v27 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2289C6B18;
  v25 = &block_descriptor_36;
  v15 = _Block_copy(&aBlock);
  v16 = v13;
  v17 = a1;

  [v16 setOnSuccess_];
  _Block_release(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v17;
  v26 = sub_2289C8718;
  v27 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2289C6E44;
  v25 = &block_descriptor_42;
  v19 = _Block_copy(&aBlock);
  v20 = v9;
  v21 = v17;

  [v16 setOnError_];
  _Block_release(v19);

  [v16 start];
}

void sub_2289C67E4(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  [a1 beginTask];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;

  v9 = a3;
  sub_2289C79E4(a4, sub_2289C84C0, v8, sub_2289C7014);

  v10 = objc_allocWithZone(HDCloudSyncModifyRecordsOperation);
  sub_2289B3D00(0, &qword_27D862DB8, 0x277CBC5A0);
  v11 = sub_22911C44C();
  sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
  v12 = sub_22911C44C();

  v13 = [v10 initWithConfiguration:a2 container:v9 recordsToSave:v11 recordIDsToDelete:v12];

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v26 = sub_2289C84C8;
  v27 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2289C6B18;
  v25 = &block_descriptor_19;
  v15 = _Block_copy(&aBlock);
  v16 = v13;
  v17 = a1;

  [v16 setOnSuccess_];
  _Block_release(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v17;
  v26 = sub_2289C84D8;
  v27 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2289C6E44;
  v25 = &block_descriptor_25;
  v19 = _Block_copy(&aBlock);
  v20 = v9;
  v21 = v17;

  [v16 setOnError_];
  _Block_release(v19);

  [v16 start];
}

void sub_2289C6B18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2289C6B80(uint64_t a1, void *a2, void *a3, void *a4, unint64_t *a5, void *a6)
{
  v33 = a6;
  v10 = sub_22911B95C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B93C();
  v14 = a3;
  v15 = a2;
  v16 = sub_22911B94C();
  v17 = sub_22911C5EC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v10;
    v22 = v21;
    v34 = v21;
    *v19 = 138412802;
    *(v19 + 4) = v14;
    *v20 = v14;
    *(v19 + 12) = 2080;
    sub_2289B3D00(0, a5, v33);
    v23 = v14;
    v24 = sub_22911CBAC();
    v26 = sub_2289B9170(v24, v25, &v34);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2112;
    v27 = a2;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v28;
    v20[1] = v28;
    _os_log_impl(&dword_228986000, v16, v17, "%@ Failed to delete orphaned records of %s: %@", v19, 0x20u);
    sub_2289C862C(0, &qword_27D862BA0, &qword_280D678B0, 0x277D82BB8, MEMORY[0x277D83D88]);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAC9830](v22, -1, -1);
    v29 = v19;
    a4 = v32;
    MEMORY[0x22AAC9830](v29, -1, -1);

    (*(v11 + 8))(v13, v31);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v30 = sub_22911B7EC();
  [a4 failTaskWithError_];
}

void sub_2289C6E44(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

BOOL sub_2289C6EC8(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 zoneIdentifier];
  v5 = [v4 containerIdentifier];

  v6 = sub_22911C35C();
  v8 = v7;

  v9 = [a2 containerIdentifier];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_22911C35C();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {

    goto LABEL_10;
  }

  v15 = sub_22911CADC();

  result = 0;
  if (v15)
  {
LABEL_10:
    v17 = [v3 zoneIdentifier];
    v18 = [v17 scope];

    return v18 == 2;
  }

  return result;
}

unint64_t sub_2289C7014(void *a1)
{
  v3 = sub_22911B95C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v46 = MEMORY[0x277D84F90];
  v10 = objc_autoreleasePoolPush();
  sub_2289C7EA0(a1, &v46, sub_228A06B90, sub_228A06BEC);
  if (v1)
  {
    objc_autoreleasePoolPop(v10);

    sub_22911B93C();
    v11 = a1;
    v12 = v1;
    v13 = sub_22911B94C();
    v14 = sub_22911C5EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v11;
      *v16 = v11;
      *(v15 + 12) = 2114;
      v17 = v11;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v19;
      v16[1] = v19;
      _os_log_impl(&dword_228986000, v13, v14, "Failed to fetch records for zone %@: %{public}@", v15, 0x16u);
      sub_2289C862C(0, &qword_27D862BA0, &qword_280D678B0, 0x277D82BB8, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v16, -1, -1);
      MEMORY[0x22AAC9830](v15, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    return MEMORY[0x277D84F90];
  }

  else
  {
    objc_autoreleasePoolPop(v10);
    v20 = v46;
    if (v46 >> 62)
    {
      if (!sub_22911C78C())
      {
        return v20;
      }
    }

    else if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v20;
    }

    sub_22911B93C();
    v21 = a1;
    v22 = sub_22911B94C();
    v23 = sub_22911C5FC();

    if (os_log_type_enabled(v22, v23))
    {
      v43 = v23;
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 134218754;
      v44 = v3;
      v45 = v25;
      if (v20 >> 62)
      {
        v26 = sub_22911C78C();
      }

      else
      {
        v26 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v24 + 4) = v26;
      *(v24 + 12) = 2080;
      sub_2289C8744(0, &qword_27D862EC0, &qword_27D862EA8, off_27860DB30);
      v27 = sub_22911CBAC();
      v29 = sub_2289B9170(v27, v28, &v45);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      v30 = v41;
      *v41 = v21;
      *(v24 + 32) = 2080;
      v31 = sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
      v32 = v21;

      v34 = MEMORY[0x22AAC6030](v33, v31);
      v36 = v35;

      v37 = sub_2289B9170(v34, v36, &v45);

      *(v24 + 34) = v37;
      _os_log_impl(&dword_228986000, v22, v43, "Found %ld orphaned %s records in %@: \n%s", v24, 0x2Au);
      sub_2289C4A08(v30);
      MEMORY[0x22AAC9830](v30, -1, -1);
      v38 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v38, -1, -1);
      MEMORY[0x22AAC9830](v24, -1, -1);

      (*(v4 + 8))(v7, v44);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  return v20;
}

unint64_t sub_2289C74FC(void *a1)
{
  v3 = sub_22911B95C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v46 = MEMORY[0x277D84F90];
  v10 = objc_autoreleasePoolPush();
  sub_2289C7EA0(a1, &v46, sub_228A06E08, sub_228A06B90);
  if (v1)
  {
    objc_autoreleasePoolPop(v10);

    sub_22911B93C();
    v11 = a1;
    v12 = v1;
    v13 = sub_22911B94C();
    v14 = sub_22911C5EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v11;
      *v16 = v11;
      *(v15 + 12) = 2114;
      v17 = v11;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v19;
      v16[1] = v19;
      _os_log_impl(&dword_228986000, v13, v14, "Failed to fetch records for zone %@: %{public}@", v15, 0x16u);
      sub_2289C862C(0, &qword_27D862BA0, &qword_280D678B0, 0x277D82BB8, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v16, -1, -1);
      MEMORY[0x22AAC9830](v15, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    return MEMORY[0x277D84F90];
  }

  else
  {
    objc_autoreleasePoolPop(v10);
    v20 = v46;
    if (v46 >> 62)
    {
      if (!sub_22911C78C())
      {
        return v20;
      }
    }

    else if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v20;
    }

    sub_22911B93C();
    v21 = a1;
    v22 = sub_22911B94C();
    v23 = sub_22911C5FC();

    if (os_log_type_enabled(v22, v23))
    {
      v43 = v23;
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 134218754;
      v44 = v3;
      v45 = v25;
      if (v20 >> 62)
      {
        v26 = sub_22911C78C();
      }

      else
      {
        v26 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v24 + 4) = v26;
      *(v24 + 12) = 2080;
      sub_2289C8744(0, &qword_27D862ED0, &qword_27D862EC8, off_27860DFC8);
      v27 = sub_22911CBAC();
      v29 = sub_2289B9170(v27, v28, &v45);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      v30 = v41;
      *v41 = v21;
      *(v24 + 32) = 2080;
      v31 = sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
      v32 = v21;

      v34 = MEMORY[0x22AAC6030](v33, v31);
      v36 = v35;

      v37 = sub_2289B9170(v34, v36, &v45);

      *(v24 + 34) = v37;
      _os_log_impl(&dword_228986000, v22, v43, "Found %ld orphaned %s records in %@: \n%s", v24, 0x2Au);
      sub_2289C4A08(v30);
      MEMORY[0x22AAC9830](v30, -1, -1);
      v38 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v38, -1, -1);
      MEMORY[0x22AAC9830](v24, -1, -1);

      (*(v4 + 8))(v7, v44);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  return v20;
}

uint64_t sub_2289C79E4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(id))
{
  v5 = v4;
  v6 = a3;
  sub_2289C858C(a1, a2, a3, v50);
  v7 = v50[0];
  v8 = v50[1];
  v9 = v50[3];
  v10 = v50[4];
  v47 = v50[5];
  v11 = (v50[2] + 64) >> 6;

  v46 = MEMORY[0x277D84F90];
  v48 = v7;
  while (2)
  {
    v12 = v9;
    v13 = v10;
    if (v7 < 0)
    {
      while (1)
      {
        if (!sub_22911C9FC())
        {
          goto LABEL_45;
        }

        swift_unknownObjectRelease();
        sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
        swift_dynamicCast();
        v6 = v51;
        v9 = v12;
        v10 = v13;
        if (!v51)
        {
          goto LABEL_45;
        }

LABEL_11:
        v49[0] = v6;
        if (v47(v49))
        {
          break;
        }

        v12 = v9;
        v13 = v10;
        v7 = v48;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_3;
        }
      }

      v16 = v5;
      v17 = a4(v6);
      if (v5)
      {
        goto LABEL_48;
      }

      v18 = v17;

      v19 = v18 >> 62;
      if (v18 >> 62)
      {
        v20 = sub_22911C78C();
      }

      else
      {
        v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v46;
      v22 = v46 >> 62;
      v45 = v18;
      if (v46 >> 62)
      {
        v40 = v20;
        result = sub_22911C78C();
        v20 = v40;
      }

      else
      {
        result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v20;
      v24 = result + v20;
      if (__OFADD__(result, v20))
      {
        __break(1u);
        goto LABEL_50;
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (result)
      {
        if (!v22)
        {
          v25 = v46 & 0xFFFFFFFFFFFFFF8;
          if (v24 <= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v26 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (!v19)
            {
LABEL_24:
              v28 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:
              v46 = v21;
              if (v28)
              {
                if (((v26 >> 1) - v27) >= v42)
                {
                  v31 = v25 + 8 * v27 + 32;
                  v41 = v25;
                  if (v19)
                  {
                    if (v28 < 1)
                    {
LABEL_53:
                      __break(1u);
                      return result;
                    }

                    sub_2289C862C(0, &qword_27D862EB0, &qword_27D862A20, 0x277CBC5D0, MEMORY[0x277D83940]);
                    sub_2289C8694();
                    v32 = 0;
                    v33 = v45;
                    do
                    {
                      v34 = sub_2289C8504(v49, v32, v33);
                      v6 = v28;
                      v36 = *v35;
                      (v34)(v49, 0);
                      v33 = v45;
                      *(v31 + 8 * v32) = v36;
                      v28 = v6;
                      ++v32;
                    }

                    while (v6 != v32);
                  }

                  else
                  {
                    v6 = (v45 & 0xFFFFFFFFFFFFFF8);
                    sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
                    swift_arrayInitWithCopy();
                  }

                  v5 = v16;
                  v7 = v48;
                  if (v42 < 1)
                  {
                    continue;
                  }

                  v37 = *(v41 + 16);
                  v38 = __OFADD__(v37, v42);
                  v39 = v37 + v42;
                  if (!v38)
                  {
                    *(v41 + 16) = v39;
                    continue;
                  }

LABEL_52:
                  __break(1u);
                  goto LABEL_53;
                }

LABEL_51:
                __break(1u);
                goto LABEL_52;
              }

              v6 = v42;

              v7 = v48;
              if (v42 <= 0)
              {
                continue;
              }

LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

LABEL_29:
            v44 = v19;
            v29 = v25;
            v30 = v26;
            result = sub_22911C78C();
            v26 = v30;
            v25 = v29;
            v19 = v44;
            v28 = result;
            goto LABEL_30;
          }

LABEL_28:
          result = sub_22911C85C();
          v21 = result;
          v25 = result & 0xFFFFFFFFFFFFFF8;
          v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (!v19)
          {
            goto LABEL_24;
          }

          goto LABEL_29;
        }
      }

      else if (!v22)
      {
        goto LABEL_28;
      }

      sub_22911C78C();
      goto LABEL_28;
    }

    break;
  }

LABEL_3:
  v14 = v12;
  v15 = v13;
  v9 = v12;
  if (v13)
  {
LABEL_7:
    v10 = (v15 - 1) & v15;
    v6 = *(*(v7 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_45:
    v7 = v48;
LABEL_46:
    sub_2289C8624(v7);

    return v46;
  }

  else
  {
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v11)
      {
        goto LABEL_46;
      }

      v15 = *(v8 + 8 * v9);
      ++v14;
      if (v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_48:

    sub_2289C8624(v48);

    return v46;
  }
}

void sub_2289C7EA0(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a3();
  if (!v5)
  {
    v9 = v8;
    if (v8 >> 62)
    {
      goto LABEL_15;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a2; v10; i = a2)
    {
      v60 = a4;
      v62 = MEMORY[0x277D84F90];
      v11 = sub_22911C8BC();
      if (v10 < 0)
      {
        goto LABEL_64;
      }

      a2 = 0;
      v4 = v9 & 0xC000000000000001;
      a4 = (v9 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v4)
        {
          v12 = MEMORY[0x22AAC6410](a2, v9);
          goto LABEL_7;
        }

        if ((a2 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (a2 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * a2 + 32);
LABEL_7:
        v13 = v12;
        ++a2;
        v14 = [v12 recordID];

        sub_22911C88C();
        sub_22911C8CC();
        sub_22911C8DC();
        sub_22911C89C();
        if (v10 == a2)
        {

          v15 = v62;
          a2 = i;
          a4 = v60;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v10 = sub_22911C78C();
    }

    v15 = MEMORY[0x277D84F90];
LABEL_17:
    v4 = sub_2289DD024(v15);

    v11 = a4(v16);
    if (v11 >> 62)
    {
      goto LABEL_66;
    }

    v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
    v49 = v11;
    v50 = MEMORY[0x277D84F90];
    if (v17)
    {
      v18 = 0;
      v57 = v11 & 0xFFFFFFFFFFFFFF8;
      v58 = v11 & 0xC000000000000001;
      v55 = v11 + 32;
      v56 = v4 & 0xC000000000000001;
      v52 = 0;
      v53 = (MEMORY[0x277D84F90] + 32);
      v61 = v4 + 56;
      v59 = v4;
      v51 = v17;
      while (1)
      {
        while (1)
        {
          if (v58)
          {
            v11 = MEMORY[0x22AAC6410](v18, v49);
          }

          else
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              v48 = v11;
              v17 = sub_22911C78C();
              v11 = v48;
              goto LABEL_19;
            }

            if (v18 >= *(v57 + 16))
            {
              goto LABEL_62;
            }

            v11 = *(v55 + 8 * v18);
          }

          v19 = v11;
          v20 = __OFADD__(v18++, 1);
          if (v20)
          {
            goto LABEL_61;
          }

          v21 = [v11 parentRecordReference];
          v22 = [v21 recordID];
          v23 = v22;
          if (v56)
          {
            break;
          }

          if (*(v4 + 16))
          {
            sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
            v26 = sub_22911C6AC();
            v27 = -1 << *(v4 + 32);
            v28 = v26 & ~v27;
            if ((*(v61 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
            {
              v29 = ~v27;
              while (1)
              {
                v30 = *(*(v4 + 48) + 8 * v28);
                v31 = sub_22911C6BC();

                if (v31)
                {
                  break;
                }

                v28 = (v28 + 1) & v29;
                v4 = v59;
                if (((*(v61 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

              a2 = i;
              v4 = v59;
              v17 = v51;
              goto LABEL_22;
            }
          }

LABEL_36:

          a2 = i;
          v17 = v51;
LABEL_37:
          v32 = [v19 recordID];

          v33 = v52;
          if (!v52)
          {
            v34 = v50[3];
            if (((v34 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_65;
            }

            v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
            if (v35 <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = v35;
            }

            sub_2289C4ACC();
            v37 = swift_allocObject();
            v38 = _swift_stdlib_malloc_size(v37);
            v39 = v38 - 32;
            if (v38 < 32)
            {
              v39 = v38 - 25;
            }

            v40 = v39 >> 3;
            v37[2] = v36;
            v37[3] = (2 * (v39 >> 3)) | 1;
            v41 = (v37 + 4);
            v42 = v50[3] >> 1;
            if (v50[2])
            {
              v43 = v50 + 4;
              if (v37 != v50 || v41 >= v43 + 8 * v42)
              {
                memmove(v37 + 4, v43, 8 * v42);
              }

              v50[2] = 0;
            }

            v53 = (v41 + 8 * v42);

            v33 = (v40 & 0x7FFFFFFFFFFFFFFFLL) - v42;
            v50 = v37;
            v4 = v59;
            v17 = v51;
          }

          v20 = __OFSUB__(v33, 1);
          v44 = v33 - 1;
          if (v20)
          {
            goto LABEL_63;
          }

          v52 = v44;
          *v53++ = v32;
          if (v18 == v17)
          {
            goto LABEL_55;
          }
        }

        v24 = v22;
        v25 = sub_22911C7CC();

        if ((v25 & 1) == 0)
        {
          goto LABEL_37;
        }

        v21 = v19;
LABEL_22:

        if (v18 == v17)
        {
          goto LABEL_55;
        }
      }
    }

    v52 = 0;
LABEL_55:
    v45 = v50[3];
    if (v45 >= 2)
    {
      v46 = v45 >> 1;
      v20 = __OFSUB__(v46, v52);
      v47 = v46 - v52;
      if (v20)
      {
        __break(1u);
        return;
      }

      v50[2] = v47;
    }

    *a2 = v50;
  }
}

unint64_t sub_2289C83EC()
{
  result = qword_27D862A58;
  if (!qword_27D862A58)
  {
    sub_2289B3D00(255, &qword_27D862A40, off_27860E1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862A58);
  }

  return result;
}

void sub_2289C8454(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_2289C64B0(v3, v4, a1, v5);

  sub_2289C67E4(v3, v4, a1, v5);
}

void (*sub_2289C8504(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAC6410](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2289C8584;
  }

  __break(1u);
  return result;
}

unint64_t sub_2289C858C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_22911C96C();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2289C862C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2289B3D00(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2289C8694()
{
  result = qword_27D862EB8;
  if (!qword_27D862EB8)
  {
    sub_2289C862C(255, &qword_27D862EB0, &qword_27D862A20, 0x277CBC5D0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862EB8);
  }

  return result;
}

uint64_t sub_2289C8744(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_2289B3D00(255, a3, a4);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2289C87DC()
{
  v1 = *v0;
  sub_22911CB7C();
  MEMORY[0x22AAC6750](v1);
  return sub_22911CB9C();
}

uint64_t sub_2289C8850(uint64_t a1)
{
  v2 = *v1;
  sub_22911CB7C();
  MEMORY[0x22AAC6750](v2);
  return sub_22911CB9C();
}

uint64_t sub_2289C88D8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker;
  if (*(v2 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker))
  {
    v4 = *(v2 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker);
  }

  else
  {
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0xF0))(0, a2);
    *(v2 + v3) = v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

uint64_t (*sub_2289C89CC(uint64_t *a1, uint64_t a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = sub_2289C88D8(a1, a2);
  return sub_2289C8A14;
}

char *sub_2289C8A2C(__n128 a1)
{
  v2 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___dataCollector;
  v3 = *&v1[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___dataCollector];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___dataCollector];
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = objc_allocWithZone(type metadata accessor for HDSwimmingDataCollector());
    v7 = v1;
    v8 = v1;
    v9 = sub_2289D83FC(Strong, v7);

    v10 = *&v8[v2];
    *&v8[v2] = v9;
    v4 = v9;

    v3 = 0;
  }

  v11 = v3;
  return v4;
}

char *HDSwimTracker.init(profile:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker] = 0;
  v3 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers;
  v4 = HKLogWorkoutsCategory();
  v5 = objc_allocWithZone(MEMORY[0x277CCDA88]);
  v6 = sub_22911C34C();
  v7 = [v5 initWithName:v6 loggingCategory:v4];

  *&v1[v3] = v7;
  *&v1[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData] = 0;
  v8 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_startLock;
  sub_2289C8CC8(0, &qword_27D862EF8, MEMORY[0x277D839B0]);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  *&v1[v8] = v9;
  v10 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_generalLock;
  sub_2289C8CC8(0, &qword_280D678C0, MEMORY[0x277D84F78] + 8);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v1[v10] = v11;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___dataCollector] = 0;
  swift_unknownObjectWeakAssign();
  v16.receiver = v1;
  v16.super_class = type metadata accessor for HDSwimTracker();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v14 = sub_2289C8A2C(v13);
  [*&v12[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers] registerObserver_];

  return v12;
}

void sub_2289C8CC8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_22911C86C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2289C8D74()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC1D60]) init];
  v1 = type metadata accessor for HDCMSwimTracker();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_2289C8E94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_startLock);
  os_unfair_lock_lock((v3 + 20));
  if (*(v3 + 16))
  {
    os_unfair_lock_unlock((v3 + 20));
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v4 = sub_22911B95C();
    __swift_project_value_buffer(v4, qword_27D86A948);
    oslog = sub_22911B94C();
    v5 = sub_22911C5FC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136446210;
      v8 = sub_22911CBAC();
      v10 = sub_2289B9170(v8, v9, aBlock);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_228986000, oslog, v5, "%{public}s: Start called more than once. Ignoring...", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AAC9830](v7, -1, -1);
      MEMORY[0x22AAC9830](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    *(v3 + 16) = 1;
    os_unfair_lock_unlock((v3 + 20));
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v11 = sub_22911B95C();
    __swift_project_value_buffer(v11, qword_27D86A948);
    v12 = sub_22911B94C();
    v13 = sub_22911C5FC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      v16 = sub_22911CBAC();
      v18 = sub_2289B9170(v16, v17, aBlock);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_228986000, v12, v13, "%{public}s Starting monitoring for swim updates", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAC9830](v15, -1, -1);
      MEMORY[0x22AAC9830](v14, -1, -1);
    }

    v19 = objc_allocWithZone(MEMORY[0x277CC1D58]);
    v20 = sub_22911B8BC();
    v21 = [v19 initWithSessionId_];

    v22 = objc_allocWithZone(HDSafeCMSwimData);
    v23 = v21;
    v24 = [v22 initWithSwimData_];
    v25 = objc_allocWithZone(type metadata accessor for HDCMSwimData(0));
    v26 = sub_2289DEE2C(v23, v24);

    v27 = OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData;
    v28 = *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData);
    *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData) = v26;

    v31 = sub_2289C88D8(v29, v30);
    v32 = *(v1 + v27);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = ObjectType;
    aBlock[4] = sub_2289CAB40;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2289C9594;
    aBlock[3] = &block_descriptor_4;
    v35 = _Block_copy(aBlock);
    v36 = v32;

    [v31 startUpdatesFromRecord:v36 handler:v35];
    _Block_release(v35);

    swift_unknownObjectRelease();
  }
}

void sub_2289C9314(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v8 = a1;
      v9 = sub_22911C78C();
      a1 = v8;
      if (v9 >= 1)
      {
LABEL_4:
        v5 = a1;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v7 = Strong;
          sub_2289C9A90(v5, 0, 0);
        }

        return;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }
  }

  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v10 = sub_22911B95C();
  __swift_project_value_buffer(v10, qword_27D86A948);
  v11 = a2;
  oslog = sub_22911B94C();
  v12 = sub_22911C5EC();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v13 = 136446466;
    v16 = sub_22911CBAC();
    v18 = sub_2289B9170(v16, v17, v23);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v13 + 14) = v20;
    *v14 = v21;
    _os_log_impl(&dword_228986000, oslog, v12, "%{public}s Received nil or empty swim data from core motion with error %@", v13, 0x16u);
    sub_2289C4A08(v14);
    MEMORY[0x22AAC9830](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAC9830](v15, -1, -1);
    MEMORY[0x22AAC9830](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2289C9594(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for HDCMSwimData(0);
    v4 = sub_22911C45C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_2289C97C4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v2 = sub_22911B95C();
  __swift_project_value_buffer(v2, qword_27D86A948);
  v3 = sub_22911B94C();
  v4 = sub_22911C5FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = sub_22911CBAC();
    v9 = sub_2289B9170(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_228986000, v3, v4, "%{public}s Stopping swim updates", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAC9830](v6, -1, -1);
    MEMORY[0x22AAC9830](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_generalLock);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  os_unfair_lock_lock(v10 + 4);
  sub_2289CABA4();
  os_unfair_lock_unlock(v10 + 4);
  v13 = *(v1 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_startLock);
  os_unfair_lock_lock((v13 + 20));
  *(v13 + 16) = 0;
  os_unfair_lock_unlock((v13 + 20));
}

void sub_2289C9A90(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *(v3 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData);
  if (v8)
  {
    v9 = v8;
    v11 = sub_2289C88D8(v9, v10);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = v12;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = v9;
    v13[7] = ObjectType;
    v26[4] = sub_2289CAE0C;
    v26[5] = v13;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    v26[2] = sub_2289C9594;
    v26[3] = &block_descriptor_23;
    v14 = _Block_copy(v26);

    v15 = v9;
    sub_2289CAE1C(a2, a3);

    [v11 querySwimUpdatesFromRecord:v15 handler:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v16 = sub_22911B95C();
    __swift_project_value_buffer(v16, qword_27D86A948);
    v17 = sub_22911B94C();
    v18 = sub_22911C5EC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136446210;
      v21 = sub_22911CBAC();
      v23 = sub_2289B9170(v21, v22, v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_228986000, v17, v18, "%{public}s Reference is nil", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAC9830](v20, -1, -1);
      MEMORY[0x22AAC9830](v19, -1, -1);
    }

    if (a2)
    {
      sub_2289CADB8();
      v24 = swift_allocError();
      *v25 = 1;
      a2(0, v24);
    }
  }
}

void sub_2289C9D88(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *), uint64_t a6, char *a7, uint64_t a8)
{
  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = *(Strong + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers);
      v15 = Strong;

      v16 = v14;

      v17 = swift_allocObject();
      *(v17 + 16) = a3;
      v88 = sub_2289CAE54;
      v89 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v85 = 1107296256;
      v86 = sub_2289CA710;
      v87 = &block_descriptor_38;
      v18 = _Block_copy(&aBlock);

      [v16 notifyObservers_];
      _Block_release(v18);
    }
  }

  if (!a1)
  {
    goto LABEL_40;
  }

  if (a1 >> 62)
  {
    if (sub_22911C78C() >= 1)
    {
      goto LABEL_7;
    }

LABEL_40:
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v63 = sub_22911B95C();
    __swift_project_value_buffer(v63, qword_27D86A948);
    v64 = a2;
    v65 = sub_22911B94C();
    v66 = sub_22911C5EC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock = v69;
      *v67 = 136446466;
      v70 = sub_22911CBAC();
      v72 = sub_2289B9170(v70, v71, &aBlock);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2112;
      if (a2)
      {
        v73 = a2;
        v74 = _swift_stdlib_bridgeErrorToNSError();
        v75 = v74;
      }

      else
      {
        v74 = 0;
        v75 = 0;
      }

      *(v67 + 14) = v74;
      *v68 = v75;
      _os_log_impl(&dword_228986000, v65, v66, "%{public}s Queried swim data is nil or empty with error %@", v67, 0x16u);
      sub_2289C4A08(v68);
      MEMORY[0x22AAC9830](v68, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AAC9830](v69, -1, -1);
      MEMORY[0x22AAC9830](v67, -1, -1);
    }

    if (a5)
    {
      sub_2289CADB8();
      v76 = swift_allocError();
      *v77 = 0;
      a5(0, v76);
    }

    return;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_40;
  }

LABEL_7:
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  v20 = (v19 + 16);
  v83 = v19;
  if (*&a7[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_recordId])
  {
LABEL_8:
    v21 = a7;
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    if (!sub_22911C78C())
    {
      goto LABEL_8;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v78 = a7;
    v47 = MEMORY[0x22AAC6410](0, a1);
    goto LABEL_31;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(a1 + 32);
    v46 = a7;
    v47 = v45;
LABEL_31:
    v48 = v47;
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v49 = sub_22911B95C();
    __swift_project_value_buffer(v49, qword_27D86A948);
    v50 = v48;
    v51 = sub_22911B94C();
    v52 = sub_22911C5FC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock = v80;
      *v53 = 136446466;
      v54 = sub_22911CBAC();
      v56 = sub_2289B9170(v54, v55, &aBlock);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2112;
      *(v53 + 14) = v50;
      *v79 = v50;
      v57 = v50;
      _os_log_impl(&dword_228986000, v51, v52, "%{public}s Setting first swim reference to %@", v53, 0x16u);
      sub_2289C4A08(v79);
      MEMORY[0x22AAC9830](v79, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x22AAC9830](v80, -1, -1);
      MEMORY[0x22AAC9830](v53, -1, -1);
    }

    v58 = *v20;
    *v20 = v50;
    v59 = v50;

    swift_beginAccess();
    v60 = swift_unknownObjectWeakLoadStrong();

    v19 = v83;
    if (v60)
    {
      v61 = *&v60[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData];
      *&v60[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData] = v59;
      v62 = v59;
    }

LABEL_9:
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = *(v22 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers);

      v25 = swift_allocObject();
      *(v25 + 16) = a1;
      *(v25 + 24) = v19;
      v88 = sub_2289CAE2C;
      v89 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v85 = 1107296256;
      v86 = sub_2289CA710;
      v87 = &block_descriptor_32;
      v26 = _Block_copy(&aBlock);

      [v24 notifyObservers_];
      _Block_release(v26);
    }

    v27 = sub_2289CA954(a1, v20);
    v28 = MEMORY[0x28223BE20](v27);
    if (v29)
    {
      v30 = 0;
      if (!a5)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v90 = v28;
    sub_2289CAE34(&v90, &aBlock);
    v30 = aBlock;
    if (aBlock)
    {
      v31 = qword_27D862780;
      v32 = aBlock;
      if (v31 != -1)
      {
        swift_once();
      }

      v33 = sub_22911B95C();
      __swift_project_value_buffer(v33, qword_27D86A948);
      v34 = v32;
      v35 = sub_22911B94C();
      v36 = sub_22911C5FC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v82 = v34;
        v38 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        aBlock = v81;
        *v37 = 136446466;
        v39 = sub_22911CBAC();
        v41 = sub_2289B9170(v39, v40, &aBlock);

        *(v37 + 4) = v41;
        v34 = v82;
        *(v37 + 12) = 2112;
        *(v37 + 14) = v82;
        *v38 = v30;
        v42 = v82;
        _os_log_impl(&dword_228986000, v35, v36, "%{public}s Setting swim reference to %@", v37, 0x16u);
        sub_2289C4A08(v38);
        MEMORY[0x22AAC9830](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x22AAC9830](v81, -1, -1);
        MEMORY[0x22AAC9830](v37, -1, -1);
      }

      swift_beginAccess();
      v43 = swift_unknownObjectWeakLoadStrong();
      if (!v43)
      {

        if (!a5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v44 = *&v43[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData];
      *&v43[OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_referenceSwimData] = v30;
    }

    if (!a5)
    {
LABEL_23:

      return;
    }

LABEL_22:
    a5(1, 0);
    goto LABEL_23;
  }

  __break(1u);
  __break(1u);
}

void sub_2289CA6A4(void *a1, uint64_t a2)
{
  type metadata accessor for HDCMSwimData(0);
  v3 = sub_22911C44C();
  [a1 onDemandSwimmingDataDidUpdate_];
}

uint64_t sub_2289CA710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_2289CA770(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HDCMSwimData(0);
  v5 = sub_22911C44C();
  swift_beginAccess();
  [a1 historicalSwimmingDataDidUpdate:v5 reference:*(a3 + 16)];
}

id HDSwimTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDSwimTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDSwimTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2289CA954(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v5 = sub_22911C78C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v6 = v3 & 0xC000000000000001;
  v13 = v3;
  v7 = v3 + 32;
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v6)
    {
      v9 = MEMORY[0x22AAC6410](v8 - 1, v13);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v5 >= *(v4 + 16))
      {
        goto LABEL_20;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = *a2;
    if (*(*a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount) < *&v9[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount] || *(v10 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment) < *&v9[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment] || *(v10 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance) < *&v9[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance])
    {

      return v5;
    }

    v11 = *&v9[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount];
    v3 = *(v10 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount);
  }

  while (v3 >= v11);
  return v5;
}

unint64_t sub_2289CAAD4@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AAC6410](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2289CADB8()
{
  result = qword_27D862F18;
  if (!qword_27D862F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862F18);
  }

  return result;
}

uint64_t sub_2289CAE1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HDSwimTrackerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HDSwimTrackerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2289CAFD0()
{
  result = qword_27D862F20;
  if (!qword_27D862F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862F20);
  }

  return result;
}

id sub_2289CB03C()
{
  v1 = OBJC_IVAR___HDDatabaseAccessibilityAssertionStoreServer____lazy_storage___queue;
  v2 = *(v0 + OBJC_IVAR___HDDatabaseAccessibilityAssertionStoreServer____lazy_storage___queue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HDDatabaseAccessibilityAssertionStoreServer____lazy_storage___queue);
  }

  else
  {
    type metadata accessor for DatabaseAccessibilityAssertionStoreServer();
    v4 = [swift_getObjCClassFromMetadata() description];
    if (!v4)
    {
      sub_22911C35C();
      v4 = sub_22911C34C();
    }

    v5 = HKCreateSerialDispatchQueue();

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id DatabaseAccessibilityAssertionStoreServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseAccessibilityAssertionStoreServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DatabaseAccessibilityAssertionStoreServer.remote_invalidateDatabaseAccessibilityAssertion(_:)(void *a1)
{
  if (a1)
  {
    v7 = a1;
    v2 = [v1 client];
    v3 = [v2 assertionForHKDatabaseAccessibilityAssertion_];

    if (v3)
    {
      v4 = v3;
      [v4 invalidate];
      v5 = [v1 client];
      [v5 removeAssertionMappingForAssertion_];

      v6 = v5;
    }

    else
    {
      v6 = v7;
    }
  }
}

uint64_t DatabaseAccessibilityAssertionStoreServer.remote_requestDatabaseAccessibilityAssertion(forOwnerIdentifier:contextType:isRecovery:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v12 = sub_22911B97C();
  v27 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22911B9AC();
  v15 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2289CB03C();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  *(v18 + 56) = v24;
  *(v18 + 64) = a6;
  aBlock[4] = sub_2289CB8D0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289CBBB0;
  aBlock[3] = &block_descriptor_5;
  v19 = _Block_copy(aBlock);
  v20 = v6;

  sub_22911B99C();
  v28 = MEMORY[0x277D84F90];
  sub_2289CBC64(&qword_280D678F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2289CBC0C(0);
  sub_2289CBC64(&unk_280D67900, sub_2289CBC0C, MEMORY[0x277D83970]);
  sub_22911C6EC();
  v21 = v25;
  MEMORY[0x22AAC61F0](0, v17, v14, v19);
  _Block_release(v19);

  (*(v27 + 8))(v14, v12);
  (*(v15 + 8))(v17, v26);
}

void sub_2289CB808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, void))
{
  v7 = sub_2289CB8E4(a2, a3, a4, a5);
  a6(v7, 0);
}

id sub_2289CB8E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = sub_22911B8DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v6 profile];
  if (result)
  {
    v29[1] = v5;
    v14 = 3;
    if (a3 != 2)
    {
      v14 = 1;
    }

    if (a3 == 3)
    {
      v14 = 4;
    }

    if (a4)
    {
      v15 = 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = result;
    v17 = [result database];

    v18 = sub_22911C34C();
    v30[0] = 0;
    v19 = [v17 takeAccessibilityAssertionWithOwnerIdentifier:v18 contextType:v15 shouldPerformTransaction:0 error:v30];

    if (v19)
    {
      v20 = v30[0];
      v21 = v19;
      v22 = [v21 UUID];
      sub_22911B8CC();

      sub_22911B8AC();
      (*(v10 + 8))(v12, v9);
      v23 = objc_allocWithZone(MEMORY[0x277CCD2B8]);
      v24 = sub_22911C34C();
      v25 = sub_22911C34C();

      v26 = [v23 initWithOwnerIdentifier:v24 uuidString:v25];

      v27 = [v6 client];
      [v27 addAssertionMapping_];

      return v26;
    }

    else
    {
      v28 = v30[0];
      sub_22911B7FC();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2289CBBB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2289CBC0C(uint64_t a1)
{
  if (!qword_280D678F8)
  {
    sub_22911B97C();
    v1 = sub_22911C4BC();
    if (!v2)
    {
      atomic_store(v1, &qword_280D678F8);
    }
  }
}

uint64_t sub_2289CBC64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2289CBD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22911B7EC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2289CBE10@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 disabledOwnerIdentifiers];
  v4 = sub_22911C51C();

  *a1 = v4;
  v5 = *MEMORY[0x277CCB4C0];
  v6 = sub_22911BF0C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

id sub_2289CBEC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 changeIndex];
  [v3 protocolVersion];
  result = HKSyncProtocolVersionToString();
  if (result)
  {
    v6 = result;
    v7 = sub_22911C35C();
    v9 = v8;

    v10 = [v3 finalForSequence];
    *a1 = v4;
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    v11 = *MEMORY[0x277CCB4B8];
    v12 = sub_22911BF0C();
    v13 = *(*(v12 - 8) + 104);

    return v13(a1, v11, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2289CBFB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 attachment];
  sub_2289CC18C(0);
  v5 = [v2 attachmentIdentifier];
  v6 = sub_22911C35C();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  v9 = [v4 name];
  v10 = sub_22911C35C();
  v12 = v11;

  a1[2] = v10;
  a1[3] = v12;
  a1[4] = [v4 size];
  v13 = [v4 type];
  v14 = sub_22911C35C();
  v16 = v15;

  a1[5] = v14;
  a1[6] = v16;
  v17 = [v4 fileHash];
  v18 = sub_22911C35C();
  v20 = v19;

  a1[7] = v18;
  a1[8] = v20;
  v21 = [v4 creationDate];
  sub_22911B86C();

  v22 = *MEMORY[0x277CCB458];
  v23 = sub_22911BF0C();
  v24 = *(*(v23 - 8) + 104);

  return v24(a1, v22, v23);
}

void sub_2289CC18C(uint64_t a1)
{
  if (!qword_27D862FA0)
  {
    MEMORY[0x28223BE20](a1);
    sub_22911B88C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862FA0);
    }
  }
}

unint64_t HDBQuantitySampleEntity.Property.rawValue.getter()
{
  v1 = 0x65756C61765F61;
  v2 = *v0;
  v3 = 0xD000000000000010;
  if (v2 != 3)
  {
    v3 = 0x6C616E696769726FLL;
  }

  if (v2 == 2)
  {
    v3 = 0x65756C61765F62;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

HealthDaemon::HDBQuantitySampleEntity::Property_optional __swiftcall HDBQuantitySampleEntity.Property.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22911CA9C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2289CC3CC()
{
  sub_22911CB7C();
  sub_22911C3DC();

  return sub_22911CB9C();
}

uint64_t sub_2289CC4B4(uint64_t a1)
{
  sub_22911C3DC();
}

uint64_t sub_2289CC588(uint64_t a1)
{
  sub_22911CB7C();
  sub_22911C3DC();

  return sub_22911CB9C();
}

void sub_2289CC678(unint64_t *a1@<X8>)
{
  v2 = 0x65756C61765F61;
  v3 = *v1;
  v4 = 0xE700000000000000;
  v5 = 0xE700000000000000;
  v6 = 0xD000000000000010;
  v7 = 0x8000000229181B80;
  if (v3 != 3)
  {
    v6 = 0x6C616E696769726FLL;
    v7 = 0xED000074696E755FLL;
  }

  if (v3 == 2)
  {
    v6 = 0x65756C61765F62;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000010;
    v4 = 0x8000000229181B60;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v6;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

id HDBQuantitySampleEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDBQuantitySampleEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDBQuantitySampleEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDBQuantitySampleEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDBQuantitySampleEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon23HDBQuantitySampleEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v57 = sub_22911C68C();
  v43 = *(v57 - 8);
  v0 = v43;
  v1 = v43;
  MEMORY[0x28223BE20](v57);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22911C66C();
  v4 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v42 - v8);
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v56 = *(v0 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_229163C40;
  v12 = sub_22911C35C();
  v53 = v13;
  v54 = v12;
  sub_2289B5B9C(0);
  v15 = v14;
  v16 = swift_allocBox();
  v18 = v17;
  v52 = v15;
  v19 = *(v15 + 48);
  *v17 = 0xD000000000000013;
  v17[1] = 0x8000000229183140;
  v20 = *MEMORY[0x277D109B8];
  v21 = sub_22911C64C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 104);
  v51 = v20;
  v49 = v23;
  v50 = v21;
  v48 = v22 + 104;
  (v23)(v18 + v19, v20);
  *v9 = v16;
  v24 = *(v4 + 104);
  v47 = *MEMORY[0x277D109C8];
  v55 = v4 + 104;
  v25 = v24;
  (v24)(v9);
  v26 = v10;
  v44 = v11;
  sub_22911C67C();
  v59 = MEMORY[0x277D84F90];
  sub_2289FD438(0, 5, 0);
  v27 = 0;
  v28 = v59;
  v46 = 0x8000000229181B80;
  LODWORD(v54) = *MEMORY[0x277D109E0];
  LODWORD(v53) = *MEMORY[0x277D10A08];
  v45 = 0x8000000229181B60;
  v29 = (v43 + 32);
  do
  {
    v30 = byte_283BE3790[v27 + 32];
    if (v30 >= 4)
    {
      v35 = v52;
      v36 = swift_allocBox();
      v37 = *(v35 + 48);
      *v38 = 0x52454745544E49;
      *(v38 + 1) = 0xE700000000000000;
      v49(&v38[v37], v51, v50);
      *v7 = v36;
      v34 = v47;
    }

    else
    {
      v31 = sub_22911C65C();
      v32 = swift_allocBox();
      (*(*(v31 - 8) + 104))(v33, v54, v31);
      *v7 = v32;
      v34 = v53;
    }

    v25(v7, v34, v58);
    sub_22911C67C();
    v59 = v28;
    v40 = *(v28 + 16);
    v39 = *(v28 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_2289FD438((v39 > 1), v40 + 1, 1);
      v28 = v59;
    }

    ++v27;
    *(v28 + 16) = v40 + 1;
    (*v29)(v28 + v26 + v40 * v56, v3, v57);
  }

  while (v27 != 5);
  v59 = v44;
  sub_228A1008C(v28);
  return v59;
}

unint64_t _s12HealthDaemon23HDBQuantitySampleEntityC11foreignKeysSDySSSo08HDSQLiteE10ForeignKeyCGyFZ_0()
{
  sub_2289B5B48(0, &qword_27D862B68, sub_2289B5A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C50;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v1;
  sub_2289B3D00(0, &qword_27D862B78, off_27860F338);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  strcpy((inited + 56), "original_unit");
  *(inited + 70) = -4864;
  sub_2289B3D00(0, &unk_27D862FC0, off_27860F650);
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277D10B38]) initWithEntityClass:swift_getObjCClassFromMetadata() property:*MEMORY[0x277D10A40] deletionAction:0];
  v2 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A00(0);
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_2289CD154()
{
  result = qword_27D862FA8;
  if (!qword_27D862FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862FA8);
  }

  return result;
}

unint64_t sub_2289CD1AC()
{
  result = qword_27D862FB0;
  if (!qword_27D862FB0)
  {
    sub_2289CD204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862FB0);
  }

  return result;
}

void sub_2289CD204()
{
  if (!qword_27D862FB8)
  {
    v0 = sub_22911C4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862FB8);
    }
  }
}

uint64_t getEnumTagSinglePayload for HDBQuantitySampleEntity.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HDBQuantitySampleEntity.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2289CD4C8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277CC95F0];
  sub_2289CFD5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource____lazy_storage___workoutDataProcessorUUID;
  swift_beginAccess();
  sub_2289D092C(v1 + v10, v9, &qword_27D8630C0, v3);
  v11 = sub_22911B8DC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_2289D0998(v9, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v13 = [v1 taskUUID];
  sub_22911B8CC();

  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_2289D0618(v7, v1 + v10);
  return swift_endAccess();
}

char *sub_2289CD8A0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource__workoutDataFlowLink] = 0;
  v9 = OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource____lazy_storage___workoutDataProcessorUUID;
  v10 = sub_22911B8DC();
  v11 = *(v10 - 8);
  v23 = v10;
  (*(v11 + 56))(&v4[v9], 1, 1);
  if (a2)
  {
    sub_22911C28C();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  *&v4[OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource_configuration] = v12;
  v14 = sub_22911B8BC();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for HDWorkoutMetricsDataSource(0);
  v15 = objc_msgSendSuper2(&v24, sel_initWithUUID_configuration_client_delegate_, v14, a2, a3, a4);

  v16 = v15;
  v17 = &unk_283CBA250;
  v18 = &unk_283CD7C50;
  v19 = HKLogWorkoutsCategory();
  v20 = [objc_allocWithZone(MEMORY[0x277CCD2B0]) initWithProcessor:v16 sourceProtocol:v17 destinationProtocol:v18 loggingCategory:v19];

  swift_unknownObjectRelease();
  (*(v11 + 8))(a1, v23);
  v21 = *&v16[OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource__workoutDataFlowLink];
  *&v16[OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource__workoutDataFlowLink] = v20;

  return v16;
}

void sub_2289CDCE8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v2 = sub_22911B95C();
  __swift_project_value_buffer(v2, qword_27D86A948);
  v3 = sub_22911B94C();
  v4 = sub_22911C5FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136446210;
    v7 = sub_22911CBAC();
    v9 = sub_2289B9170(v7, v8, &v32);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_228986000, v3, v4, "%{public}s Setting up metrics session", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAC9830](v6, -1, -1);
    MEMORY[0x22AAC9830](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource_configuration))
  {
    v10 = sub_22911C27C();
    v11 = [v10 activityType];

    if (sub_2289CE1D0(v11))
    {
      type metadata accessor for HDSwimmingDataCollector();
      if (swift_dynamicCastClass())
      {
        v12 = sub_22911B94C();
        v13 = sub_22911C5FC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v32 = v15;
          *v14 = 136446210;
          v16 = sub_22911CBAC();
          v18 = sub_2289B9170(v16, v17, &v32);

          *(v14 + 4) = v18;
          _os_log_impl(&dword_228986000, v12, v13, "%{public}s Registering for swimming updates", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x22AAC9830](v15, -1, -1);
          MEMORY[0x22AAC9830](v14, -1, -1);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          [*(Strong + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers) registerObserver_];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    oslog = sub_22911B94C();
    v21 = sub_22911C5EC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446210;
      v28 = sub_22911CBAC();
      v30 = sub_2289B9170(v28, v29, &v32);

      *(v22 + 4) = v30;
      v27 = "%{public}s Failed to find swimming data collector";
      goto LABEL_20;
    }
  }

  else
  {
    oslog = sub_22911B94C();
    v21 = sub_22911C5EC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446210;
      v24 = sub_22911CBAC();
      v26 = sub_2289B9170(v24, v25, &v32);

      *(v22 + 4) = v26;
      v27 = "%{public}s Failed to find activity type";
LABEL_20:
      _os_log_impl(&dword_228986000, oslog, v21, v27, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAC9830](v23, -1, -1);
      MEMORY[0x22AAC9830](v22, -1, -1);

      return;
    }
  }
}

id sub_2289CE1D0(uint64_t a1)
{
  if (a1 != 82 && a1 != 46)
  {
    return 0;
  }

  result = [v1 profile];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result dataCollectionManager];

  if (!v4)
  {
    return 0;
  }

  sub_2289B3D00(0, &qword_27D863190, 0x277CCD830);
  v5 = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCB38]);
  v6 = [v4 aggregatorForType_];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 allCollectors];
  sub_2289B3D00(0, &qword_27D8630E0, off_27860E7B0);
  v8 = sub_22911C45C();

  if (v8 >> 62)
  {
    result = sub_22911C78C();
    if (result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_8:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAC6410](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_15:

  v11 = [v10 collector];

  return v11;
}

void sub_2289CE38C(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = [v1 client];
  v5 = [v4 connection];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = ObjectType;
    aBlock[4] = sub_2289D0594;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2289CE7AC;
    aBlock[3] = &block_descriptor_6;
    v7 = _Block_copy(aBlock);

    v8 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);

    sub_22911C6DC();
    swift_unknownObjectRelease();
    sub_2289D05B4();
    if (swift_dynamicCast())
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  v9 = sub_22911C78C();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_7:
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else if ((a1 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(a1 + 8 * v11 + 32);
      if (v5)
      {
LABEL_12:
        swift_unknownObjectRetain();
        sub_2289CE878(v12);
        sub_22911C14C();
        v13 = sub_22911C44C();

        [v5 clientRemote:v13 didReceiveMetrics:?];

        swift_unknownObjectRelease_n();
        return;
      }

      goto LABEL_17;
    }

    __break(1u);
    return;
  }

  v12 = MEMORY[0x22AAC6410](v11, a1);
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_17:
}

void sub_2289CE5F0(void *a1, uint64_t a2)
{
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v3 = sub_22911B95C();
  __swift_project_value_buffer(v3, qword_27D86A948);
  v4 = a1;
  oslog = sub_22911B94C();
  v5 = sub_22911C5EC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    v9 = sub_22911CBAC();
    v11 = sub_2289B9170(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_228986000, oslog, v5, "%{public}s Failed to notify client of swimming data update entry update %@", v6, 0x16u);
    sub_2289C4A08(v7);
    MEMORY[0x22AAC9830](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAC9830](v8, -1, -1);
    MEMORY[0x22AAC9830](v6, -1, -1);
  }
}

void sub_2289CE7AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2289CE878(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_22911C19C();
  v112 = *(v2 - 8);
  v113 = v2;
  MEMORY[0x28223BE20](v2);
  v109 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22911B7DC();
  v110 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v118 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289CFD5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v6 - 8);
  v111 = &v97 - v7;
  v8 = sub_22911B8DC();
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x28223BE20](v8);
  v115 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CC9578];
  sub_2289CFD5C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v97 - v15;
  v17 = sub_22911B88C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v97 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v114 = &v97 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v97 - v26;
  v120 = a1;
  sub_2289D092C(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v16, &qword_27D862B48, v10);
  v28 = *(v18 + 48);
  if (v28(v16, 1, v17) == 1)
  {
    v29 = &qword_27D862B48;
    v30 = MEMORY[0x277CC9578];
    v31 = v16;
LABEL_7:
    sub_2289D0998(v31, v29, v30);
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v39 = sub_22911B95C();
    __swift_project_value_buffer(v39, qword_27D86A948);
    v40 = sub_22911B94C();
    v41 = sub_22911C5EC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v121 = v43;
      *v42 = 136446210;
      v44 = sub_22911CBAC();
      v46 = sub_2289B9170(v44, v45, &v121);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_228986000, v40, v41, "%{public}s Unable to calculate metrics. start, end or sourceID is nil", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AAC9830](v43, -1, -1);
      MEMORY[0x22AAC9830](v42, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v107 = v4;
  v32 = *(v18 + 32);
  v32(v27, v16, v17);
  sub_2289D092C(v120 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v14, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v28(v14, 1, v17) == 1)
  {
    (*(v18 + 8))(v27, v17);
    v29 = &qword_27D862B48;
    v30 = MEMORY[0x277CC9578];
    v31 = v14;
    goto LABEL_7;
  }

  v105 = v18;
  v106 = v27;
  v33 = v114;
  v32(v114, v14, v17);
  v34 = v111;
  sub_2289D092C(v120 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v111, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v35 = v17;
  v37 = v116;
  v36 = v117;
  if ((*(v116 + 48))(v34, 1, v117) == 1)
  {
    v38 = *(v105 + 8);
    v38(v33, v17);
    v38(v106, v17);
    v29 = &qword_27D8630C0;
    v30 = MEMORY[0x277CC95F0];
    v31 = v34;
    goto LABEL_7;
  }

  (*(v37 + 32))(v115, v34, v36);
  v121 = MEMORY[0x277D84F90];
  v48 = *(v105 + 16);
  v48(v23, v106, v35);
  v103 = v35;
  v48(v108, v33, v35);
  sub_22911B7CC();
  v111 = objc_opt_self();
  v49 = [v111 meterUnit];
  v50 = *(v120 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance);
  v51 = v120;
  v108 = objc_opt_self();
  v52 = [v108 quantityWithUnit:v49 doubleValue:v50];

  v53 = *MEMORY[0x277CCB5A8];
  v104 = *(v112 + 104);
  v112 += 104;
  v54 = v109;
  v104(v109, v53, v113);
  v55 = objc_allocWithZone(MEMORY[0x277CCD7F0]);
  v56 = v52;
  v57 = sub_22911B8BC();
  v58 = sub_22911B7AC();
  [v55 initWithIdentifier:v57 dateInterval:v58 quantity:v56 resumeContext:0];
  v102 = v56;

  ObjectType = sub_22911C14C();
  v59 = objc_allocWithZone(ObjectType);
  v99 = sub_22911C13C();
  v60 = [v111 countUnit];
  v61 = v108;
  v62 = [v108 quantityWithUnit:v60 doubleValue:*(v51 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount)];

  v63 = v113;
  v64 = v104;
  v104(v54, *MEMORY[0x277CCB5B8], v113);
  v65 = objc_allocWithZone(MEMORY[0x277CCD7F0]);
  v66 = v62;
  v67 = sub_22911B8BC();
  v68 = sub_22911B7AC();
  [v65 initWithIdentifier:v67 dateInterval:v68 quantity:v66 resumeContext:0];
  v101 = v66;

  v69 = objc_allocWithZone(ObjectType);
  v70 = v54;
  v98 = sub_22911C13C();
  v71 = v111;
  v72 = [v111 countUnit];
  v73 = [v61 quantityWithUnit:v72 doubleValue:*(v120 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount)];

  v64(v70, *MEMORY[0x277CCB5B0], v63);
  v74 = objc_allocWithZone(MEMORY[0x277CCD7F0]);
  v75 = v73;
  v76 = sub_22911B8BC();
  v77 = sub_22911B7AC();
  [v74 initWithIdentifier:v76 dateInterval:v77 quantity:v75 resumeContext:0];
  v100 = v75;

  v78 = ObjectType;
  v79 = objc_allocWithZone(ObjectType);
  v97 = sub_22911C13C();
  v80 = [v71 countUnit];
  v81 = [v108 quantityWithUnit:v80 doubleValue:*(v120 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment)];

  v104(v70, *MEMORY[0x277CCB5C0], v113);
  v82 = objc_allocWithZone(MEMORY[0x277CCD7F0]);
  v83 = v81;
  v84 = sub_22911B8BC();
  v85 = sub_22911B7AC();
  [v82 initWithIdentifier:v84 dateInterval:v85 quantity:v83 resumeContext:0];

  v86 = objc_allocWithZone(v78);
  v87 = sub_22911C13C();
  v88 = v99;
  MEMORY[0x22AAC6000]();
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22911C47C();
  }

  sub_22911C4AC();
  v89 = v98;
  MEMORY[0x22AAC6000]();
  v90 = v110;
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22911C47C();
  }

  sub_22911C4AC();
  v91 = v97;
  MEMORY[0x22AAC6000]();
  v92 = v105;
  v93 = v106;
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22911C47C();
  }

  sub_22911C4AC();
  v94 = v87;
  MEMORY[0x22AAC6000]();
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22911C47C();
  }

  sub_22911C4AC();

  (*(v90 + 8))(v118, v107);
  (*(v116 + 8))(v115, v117);
  v95 = *(v92 + 8);
  v96 = v103;
  v95(v114, v103);
  v95(v93, v96);
  return v121;
}

void sub_2289CF614(void *a1, uint64_t a2, uint64_t a3, void *a4, const char *a5, SEL *a6, ...)
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a1;
  sub_2289D0B64(v10, a5, a6);
  swift_unknownObjectRelease();
}

uint64_t sub_2289CFA3C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_22911B88C();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = _Block_copy(a4);
  sub_22911B86C();
  sub_22911B86C();
  v11 = *(v7 + 8);
  v11(v8, v6);
  v11(v9, v6);
  v10[2](v10, 1, 0);
  _Block_release(v10);

  v12 = *(v4 + 8);

  return v12();
}

id sub_2289CFBAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDWorkoutMetricsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HDWorkoutMetricsDataSource(uint64_t a1)
{
  result = qword_27D8630B0;
  if (!qword_27D8630B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2289CFCA4(uint64_t a1)
{
  sub_2289CFD5C(319, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2289CFD5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911C6CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289CFDB0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2289D0EDC;

  return v6();
}

uint64_t sub_2289CFE98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2289CFF80;

  return v7();
}

uint64_t sub_2289CFF80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2289D0074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_2289CFD5C(0, &qword_27D8630E8, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_2289D092C(a3, v24 - v11, &qword_27D8630E8, v9);
  v13 = sub_22911C4EC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2289D0998(v12, &qword_27D8630E8, MEMORY[0x277D85720]);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22911C4DC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_22911C4CC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_22911C3BC() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2289D0998(a3, &qword_27D8630E8, MEMORY[0x277D85720]);

    return v22;
  }

LABEL_8:
  sub_2289D0998(a3, &qword_27D8630E8, MEMORY[0x277D85720]);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2289D03A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2289D049C;

  return v6(a1);
}

uint64_t sub_2289D049C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2289D05B4()
{
  result = qword_27D8630D0;
  if (!qword_27D8630D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8630D0);
  }

  return result;
}

uint64_t sub_2289D0618(uint64_t a1, uint64_t a2)
{
  sub_2289CFD5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2289D0698()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2289CFF80;

  return sub_2289CFA3C(v2, v3, v4, v5);
}

uint64_t sub_2289D0760()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2289D0EDC;

  return sub_2289CFDB0(v2, v3, v4);
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2289D0860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2289D0EDC;

  return sub_2289CFE98(a1, v4, v5, v6);
}

uint64_t sub_2289D092C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289CFD5C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289D0998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2289CFD5C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2289D09F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2289D0EDC;

  return sub_2289D03A4(a1, v4);
}

uint64_t sub_2289D0AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2289CFF80;

  return sub_2289D03A4(a1, v4);
}

void sub_2289D0B64(void *a1, const char *a2, SEL *a3)
{
  v6 = v3;
  swift_getObjectType();
  v8 = [a1 workoutConfiguration];
  v9 = [v8 activityType];

  if (sub_2289CE1D0(v9))
  {
    type metadata accessor for HDSwimmingDataCollector();
    if (swift_dynamicCastClass())
    {
      if (qword_27D862780 != -1)
      {
        swift_once();
      }

      v10 = sub_22911B95C();
      __swift_project_value_buffer(v10, qword_27D86A948);
      v11 = sub_22911B94C();
      v12 = sub_22911C5FC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v30 = v14;
        *v13 = 136446210;
        v15 = sub_22911CBAC();
        v17 = a2;
        v18 = a3;
        v19 = sub_2289B9170(v15, v16, &v30);

        *(v13 + 4) = v19;
        a3 = v18;
        _os_log_impl(&dword_228986000, v11, v12, v17, v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AAC9830](v14, -1, -1);
        MEMORY[0x22AAC9830](v13, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        [*(Strong + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker_observers) *a3];
      }

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v22 = sub_22911B95C();
  __swift_project_value_buffer(v22, qword_27D86A948);
  oslog = sub_22911B94C();
  v23 = sub_22911C5EC();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136446210;
    v26 = sub_22911CBAC();
    v28 = sub_2289B9170(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_228986000, oslog, v23, "%{public}s Failed to find swimming data collector", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAC9830](v25, -1, -1);
    MEMORY[0x22AAC9830](v24, -1, -1);
  }
}

id HDHRIndicatorSnapshotEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIndicatorSnapshotEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIndicatorSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIndicatorSnapshotEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIndicatorSnapshotEntity.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRIndicatorSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HDHRIndicatorSnapshotEntity.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRIndicatorSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12HealthDaemon27HDHRIndicatorSnapshotEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v37 = *(v4 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_229164690;
  v35 = v6;
  v36 = v6 + v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000010;
  *(v7 + 24) = 0x80000002291833C0;
  *v3 = v7;
  v8 = *MEMORY[0x277D109D0];
  v9 = *(v1 + 104);
  v34 = v1 + 104;
  v9(v3, v8, v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C(0);
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v3 = v12;
  v18 = *MEMORY[0x277D109C8];
  v19 = v0;
  v31 = v9;
  v9(v3, v18, v0);
  v20 = v37;
  sub_22911C67C();
  v32 = 2 * v20;
  v33 = "collection_identifier";
  v21 = sub_22911C65C();
  v22 = swift_allocBox();
  v23 = *MEMORY[0x277D109D8];
  v24 = *(*(v21 - 8) + 104);
  v24(v25, v23, v21);
  *v3 = v22;
  v26 = *MEMORY[0x277D109F8];
  v9(v3, v26, v19);
  sub_22911C67C();
  v27 = swift_allocBox();
  v24(v28, v23, v21);
  *v3 = v27;
  v31(v3, v26, v19);
  sub_22911C67C();
  return v35;
}

void sub_2289D173C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911CABC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289D17B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x65756C61765F61;
    }

    if (v2)
    {
      v4 = 0x8000000229181B60;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x65756C61765F62;
    v4 = 0xE700000000000000;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000229181B80;
  }

  else
  {
    v3 = 0x6C616E696769726FLL;
    v4 = 0xED000074696E755FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x65756C61765F61;
    }

    if (a2)
    {
      v5 = 0x8000000229181B60;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x65756C61765F62)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000229181B80;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED000074696E755FLL;
    if (v3 != 0x6C616E696769726FLL)
    {
LABEL_31:
      v7 = sub_22911CADC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_2289D1960(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64615F736168;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C74665F736168;
    }

    else
    {
      v5 = 0x64615F736168;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6E696E6B5F736168;
    v4 = 0xE900000000000070;
  }

  else if (a1 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x6473735F736168;
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x73685F736168;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x6C74665F736168;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6E696E6B5F736168;
    v6 = 0xE900000000000070;
    v7 = 0xE700000000000000;
    v8 = 0x6473735F736168;
    if (a2 != 3)
    {
      v8 = 0x73685F736168;
      v7 = 0xE600000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22911CADC();
  }

  return v12 & 1;
}

uint64_t HDOHSEntity.Property.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64615F736168;
  v3 = 0x6E696E6B5F736168;
  v4 = 0x6473735F736168;
  if (v1 != 3)
  {
    v4 = 0x73685F736168;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C74665F736168;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

HealthDaemon::HDOHSEntity::Property_optional __swiftcall HDOHSEntity.Property.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22911CA9C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2289D1BD8()
{
  sub_22911CB7C();
  sub_22911C3DC();

  return sub_22911CB9C();
}

uint64_t sub_2289D1CB8(uint64_t a1)
{
  sub_22911C3DC();
}

uint64_t sub_2289D1D84(uint64_t a1)
{
  sub_22911CB7C();
  sub_22911C3DC();

  return sub_22911CB9C();
}

void sub_2289D1E6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x64615F736168;
  v5 = 0xE900000000000070;
  v6 = 0x6E696E6B5F736168;
  v7 = 0xE700000000000000;
  v8 = 0x6473735F736168;
  if (v2 != 3)
  {
    v8 = 0x73685F736168;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C74665F736168;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t static HDOHSEntity.foreignKeys()()
{
  sub_2289B5B48(0, &qword_27D862B68, sub_2289B5A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v1;
  sub_2289B3D00(0, &qword_27D862B78, off_27860F338);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  v2 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  return v2;
}

id HDOHSEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDOHSEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDOHSEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDOHSEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDOHSEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon11HDOHSEntityC7columnsSaySo20HDSQLiteSchemaEntityC0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v44 = sub_22911C68C();
  v37 = *(v44 - 8);
  v1 = v37;
  v0 = v37;
  MEMORY[0x28223BE20](v44);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22911C66C();
  v4 = *(v45 - 8);
  v5 = MEMORY[0x28223BE20](v45);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v35 - v8);
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v10 = *(v0 + 72);
  v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v42 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_229163C40;
  v13 = sub_22911C35C();
  v38 = v14;
  v39 = v13;
  sub_2289B5B9C(0);
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18;
  v20 = *(v16 + 48);
  *v18 = 0xD000000000000013;
  *(v18 + 1) = 0x8000000229183140;
  v21 = *MEMORY[0x277D109B8];
  v22 = sub_22911C64C();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v9 = v17;
  v23 = *MEMORY[0x277D109C8];
  v24 = *(v4 + 104);
  v43 = v4 + 104;
  v40 = v24;
  v24(v9, v23, v45);
  v41 = v11;
  v36 = v12;
  sub_22911C67C();
  v46 = MEMORY[0x277D84F90];
  sub_2289FD438(0, 5, 0);
  v25 = v46;
  LODWORD(v39) = *MEMORY[0x277D109D8];
  LODWORD(v38) = *MEMORY[0x277D10A18];
  v26 = (v37 + 32);
  v27 = sub_22911C65C();
  v28 = 0;
  v37 = v27 - 8;
  do
  {
    v29 = v3;
    v30 = swift_allocBox();
    (*(*(v27 - 8) + 104))(v31, v39, v27);
    *v7 = v30;
    v40(v7, v38, v45);
    sub_22911C67C();
    v46 = v25;
    v33 = *(v25 + 16);
    v32 = *(v25 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_2289FD438((v32 > 1), v33 + 1, 1);
      v25 = v46;
    }

    ++v28;
    *(v25 + 16) = v33 + 1;
    (*v26)(v25 + v41 + v33 * v42, v29, v44);
    v3 = v29;
  }

  while (v28 != 5);
  v46 = v36;
  sub_228A1008C(v25);
  return v46;
}

unint64_t sub_2289D27F4()
{
  result = qword_27D863160;
  if (!qword_27D863160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863160);
  }

  return result;
}

unint64_t sub_2289D284C()
{
  result = qword_27D863168;
  if (!qword_27D863168)
  {
    sub_2289D28A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863168);
  }

  return result;
}

void sub_2289D28A4()
{
  if (!qword_27D863170)
  {
    v0 = sub_22911C4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863170);
    }
  }
}

uint64_t sub_2289D2928@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 name];
  v25 = sub_22911C35C();
  v6 = v5;

  v7 = [v1 package];
  v8 = sub_22911C35C();
  v10 = v9;

  v11 = [v1 version];
  v12 = sub_22911C35C();
  v14 = v13;

  v15 = [v1 compatibilityVersion];
  v16 = sub_22911C35C();
  v18 = v17;

  v19 = [v2 authorizationIdentifiers];
  v20 = sub_22911C45C();

  *a1 = v25;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v18;
  a1[8] = v20;
  v21 = *MEMORY[0x277CCB468];
  v22 = sub_22911BF0C();
  v23 = *(*(v22 - 8) + 104);

  return v23(a1, v21, v22);
}

uint64_t sub_2289D2AE4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 UUID];
  sub_22911B8CC();

  v4 = *MEMORY[0x277CCB488];
  v5 = sub_22911BF0C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_2289D2B80@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 authorizationIdentifiers];
  v4 = sub_22911C45C();

  *a1 = v4;
  v5 = *MEMORY[0x277CCB4A0];
  v6 = sub_22911BF0C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

id HDHRIntroSnapshotEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIntroSnapshotEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIntroSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIntroSnapshotEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIntroSnapshotEntity.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRIntroSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HDHRIntroSnapshotEntity.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRIntroSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12HealthDaemon23HDHRIntroSnapshotEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v19 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v20 = *(v4 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_229163C50;
  v18[1] = v6 + v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000010;
  *(v7 + 24) = 0x80000002291833C0;
  *v3 = v7;
  v8 = *(v1 + 104);
  v8(v3, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  v18[0] = sub_22911C35C();
  sub_2289B5B9C(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x8000000229182120;
  v15 = *MEMORY[0x277D109B8];
  v16 = sub_22911C64C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v3 = v11;
  v8(v3, *MEMORY[0x277D109C8], v19);
  sub_22911C67C();
  return v6;
}

unint64_t static HDHREntity.foreignKeys()()
{
  sub_2289D3CA4(0, &qword_27D862B68, sub_2289B5A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v1;
  sub_2289B3D00(0, &qword_27D862B78, off_27860F338);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  v2 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  return v2;
}

id HDHREntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHREntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHREntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHREntity.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHREntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon10HDHREntityC18privateSubEntitiesSayyXlXpGyFZ_0()
{
  sub_2289D3CA4(0, &qword_27D863158, sub_2289BF80C);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_229164960;
  *(v0 + 32) = type metadata accessor for HDHRDemoEntity();
  *(v0 + 40) = type metadata accessor for HDHRIntroSnapshotEntity();
  *(v0 + 48) = type metadata accessor for HDHRDomainSnapshotEntity();
  *(v0 + 56) = type metadata accessor for HDHRIndicatorSnapshotEntity();
  *(v0 + 64) = type metadata accessor for HDHRConstellationSnapshotEntity();
  *(v0 + 72) = type metadata accessor for HDHRIndicatorCollectionEntity();
  *(v0 + 80) = type metadata accessor for HDHRCResultsEntity();
  *(v0 + 88) = type metadata accessor for HDHREResultsEntity();
  *(v0 + 96) = type metadata accessor for HDHRISnapshotCollectionEntity();
  *(v0 + 104) = type metadata accessor for HDHRPreviousContentEntity();
  *(v0 + 112) = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return v0;
}

uint64_t _s12HealthDaemon10HDHREntityC7columnsSaySo20HDSQLiteSchemaEntityC0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D3CA4(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v29 = *(v4 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v31 = 2 * v29;
  v6 = swift_allocObject();
  v30 = v6;
  *(v6 + 16) = xmmword_229163C60;
  v28[2] = v6 + v5;
  sub_22911C35C();
  sub_2289B5B9C(0);
  v8 = v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  *v10 = 0xD000000000000013;
  *(v10 + 1) = 0x8000000229183140;
  v13 = *MEMORY[0x277D109B8];
  v14 = sub_22911C64C();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  *v3 = v9;
  v15 = *MEMORY[0x277D109C8];
  v16 = *(v1 + 104);
  v28[1] = v1 + 104;
  v16(v3, v15, v0);
  sub_22911C67C();
  v17 = swift_allocBox();
  v19 = v18;
  v20 = sub_22911C65C();
  v21 = swift_allocBox();
  v22 = *MEMORY[0x277D109D8];
  v23 = *(*(v20 - 8) + 104);
  v23(v24, v22, v20);
  *v19 = v21;
  v16(v19, *MEMORY[0x277D109E8], v0);
  *v3 = v17;
  v16(v3, *MEMORY[0x277D10A10], v0);
  sub_22911C67C();
  v25 = swift_allocBox();
  v23(v26, v22, v20);
  *v3 = v25;
  v16(v3, *MEMORY[0x277D10A18], v0);
  sub_22911C67C();
  return v30;
}

void sub_2289D3CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911CABC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289D3CF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v6 = sub_22911BE5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 entityIdentifier];
  v10 = [a1 schemaIdentifier];
  if (v10)
  {
    v11 = v10;
    sub_22911C35C();
  }

  v12 = [a1 description];
  sub_22911C35C();

  sub_22911BE4C();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_2289B0254(v16, v9, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v9, v6);
  *(a4 + 16) = v17;
  return swift_endAccess();
}

id HDHRFAMeasureCollectionEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRFAMeasureCollectionEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRFAMeasureCollectionEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRFAMeasureCollectionEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HDHRFAMeasureCollectionEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRFAMeasureCollectionEntity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12HealthDaemon29HDHRFAMeasureCollectionEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v36 = sub_22911C66C();
  v0 = *(v36 - 8);
  v1 = MEMORY[0x28223BE20](v36);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v1);
  v35 = &v25[-v4];
  v34 = sub_22911C68C();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x277D84F90];
  sub_2289FD438(0, 4, 0);
  v7 = 0;
  v8 = v37;
  v29 = 0x8000000229182750;
  v31 = *MEMORY[0x277D109D8];
  v30 = *MEMORY[0x277D109F8];
  v9 = (v0 + 104);
  v28 = *MEMORY[0x277D109E8];
  v27 = 0x80000002291820F0;
  v10 = (v0 + 32);
  v26 = *MEMORY[0x277D109D0];
  v32 = v5 + 32;
  do
  {
    if (byte_283BE38C8[v7 + 32] > 1u)
    {
      if (byte_283BE38C8[v7 + 32] == 2)
      {
        v14 = sub_22911C65C();
        v15 = swift_allocBox();
        (*(*(v14 - 8) + 104))(v16, v31, v14);
        *v3 = v15;
        v13 = v28;
        goto LABEL_8;
      }
    }

    else if (!byte_283BE38C8[v7 + 32])
    {
      v11 = swift_allocObject();
      v12 = v27;
      *(v11 + 16) = 0xD000000000000021;
      *(v11 + 24) = v12;
      *v3 = v11;
      v13 = v26;
      goto LABEL_8;
    }

    v17 = sub_22911C65C();
    v18 = swift_allocBox();
    (*(*(v17 - 8) + 104))(v19, v31, v17);
    *v3 = v18;
    v13 = v30;
LABEL_8:
    v20 = v36;
    (*v9)(v3, v13, v36);
    (*v10)(v35, v3, v20);
    v21 = v33;
    sub_22911C67C();
    v37 = v8;
    v23 = *(v8 + 16);
    v22 = *(v8 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_2289FD438((v22 > 1), v23 + 1, 1);
      v8 = v37;
    }

    ++v7;
    *(v8 + 16) = v23 + 1;
    (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v21, v34);
  }

  while (v7 != 4);
  return v8;
}

id HDHREResultsEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHREResultsEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHREResultsEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHREResultsEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHREResultsEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHREResultsEntity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HDHREResultsEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHREResultsEntity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12HealthDaemon18HDHREResultsEntityC7columnsSaySo014HDSQLiteSchemaD0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v38 = *(v4 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v35 = 4 * v38;
  v6 = swift_allocObject();
  v34 = v6;
  *(v6 + 16) = xmmword_229163F30;
  v37 = v6 + v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000021;
  *(v7 + 24) = 0x80000002291820F0;
  *v3 = v7;
  v8 = *(v1 + 104);
  v8(v3, *MEMORY[0x277D109D0], v0);
  v33 = v8;
  v36 = v1 + 104;
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x8000000229182120;
  v15 = *MEMORY[0x277D109B8];
  v16 = sub_22911C64C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v3 = v11;
  v17 = *MEMORY[0x277D109C8];
  v32 = v0;
  v8(v3, v17, v0);
  sub_22911C67C();
  v18 = sub_22911C65C();
  v19 = swift_allocBox();
  v20 = *MEMORY[0x277D109D8];
  v21 = *(*(v18 - 8) + 104);
  v21(v22, v20, v18);
  *v3 = v19;
  v23 = *MEMORY[0x277D109F8];
  v24 = v33;
  v33(v3, v23, v0);
  sub_22911C67C();
  v25 = swift_allocBox();
  v21(v26, v20, v18);
  *v3 = v25;
  v27 = v32;
  v24(v3, v23, v32);
  sub_22911C67C();
  v28 = swift_allocBox();
  v21(v29, *MEMORY[0x277D109E0], v18);
  *v3 = v28;
  v24(v3, *MEMORY[0x277D109E8], v27);
  sub_22911C67C();
  return v34;
}

id HDHRCResultsEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRCResultsEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRCResultsEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRCResultsEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRCResultsEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRCResultsEntity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HDHRCResultsEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRCResultsEntity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12HealthDaemon18HDHRCResultsEntityC7columnsSaySo014HDSQLiteSchemaD0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v83 = *(v4 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v72 = v6;
  *(v6 + 16) = xmmword_229164A80;
  v7 = v6 + v5;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000021;
  *(v8 + 24) = 0x80000002291820F0;
  *v3 = v8;
  v9 = *(v1 + 104);
  (v9)(v3, *MEMORY[0x277D109D0], v0);
  v79 = v1 + 104;
  sub_22911C67C();
  v82 = sub_22911C35C();
  sub_2289B5B9C(0);
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v3 = v12;
  v18 = *MEMORY[0x277D109C8];
  v78 = v0;
  (v9)(v3, v18, v0);
  v81 = v7;
  v19 = v83;
  sub_22911C67C();
  v75 = 2 * v19;
  v20 = sub_22911C65C();
  v21 = swift_allocBox();
  v76 = *MEMORY[0x277D109D8];
  v22 = *(v20 - 8);
  v23 = *(v22 + 104);
  v24 = v22 + 104;
  v23(v25);
  v77 = v24;
  v82 = v23;
  *v3 = v21;
  LODWORD(v74) = *MEMORY[0x277D109F8];
  v9(v3);
  v26 = v75;
  sub_22911C67C();
  v75 = v26 + v83;
  v27 = v83;
  v73 = "collection_identifier";
  v28 = swift_allocBox();
  v29 = v76;
  (v23)(v30, v76, v20);
  *v3 = v28;
  v31 = v74;
  v32 = v78;
  v80 = v9;
  (v9)(v3, v74, v78);
  sub_22911C67C();
  v75 = 4 * v27;
  v33 = swift_allocBox();
  v34 = v82;
  v82(v35, v29, v20);
  *v3 = v33;
  (v9)(v3, v31, v32);
  sub_22911C67C();
  v36 = swift_allocBox();
  v37 = *MEMORY[0x277D109E0];
  v34(v38, v37, v20);
  *v3 = v36;
  LODWORD(v75) = *MEMORY[0x277D10A08];
  v39 = v32;
  v40 = v80;
  v80(v3);
  sub_22911C67C();
  v41 = swift_allocBox();
  LODWORD(v73) = v37;
  v42 = v82;
  v82(v43, v37, v20);
  *v3 = v41;
  v40(v3, v74, v39);
  sub_22911C67C();
  v70 = 7 * v83;
  v71 = 8 * v83;
  v44 = swift_allocBox();
  v45 = v42;
  v42(v46, v37, v20);
  *v3 = v44;
  LODWORD(v74) = *MEMORY[0x277D109E8];
  v47 = v74;
  v48 = v78;
  v49 = v80;
  (v80)(v3, v74, v78);
  v50 = v81;
  sub_22911C67C();
  v51 = swift_allocBox();
  v45(v52, v73, v20);
  *v3 = v51;
  v49(v3, v47, v48);
  sub_22911C67C();
  v53 = v83;
  v54 = swift_allocBox();
  v55 = v73;
  v82(v56, v73, v20);
  *v3 = v54;
  v57 = v78;
  v49(v3, v75, v78);
  sub_22911C67C();
  v58 = v50;
  v70 = "on18HDHREResultsEntity";
  v71 = v50 + 10 * v53;
  v59 = swift_allocBox();
  v60 = v82;
  v82(v61, v55, v20);
  *v3 = v59;
  v62 = v80;
  (v80)(v3, v74, v57);
  sub_22911C67C();
  v74 = v58 + 11 * v53;
  v63 = swift_allocBox();
  v64 = v76;
  v60(v65, v76, v20);
  *v3 = v63;
  v66 = v75;
  v62(v3, v75, v57);
  sub_22911C67C();
  v67 = swift_allocBox();
  v60(v68, v64, v20);
  *v3 = v67;
  (v80)(v3, v66, v57);
  sub_22911C67C();
  return v72;
}

uint64_t sub_2289D595C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 sourceDeviceIdentifier];
  v4 = sub_22911C35C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  v7 = *MEMORY[0x277CCB498];
  v8 = sub_22911BF0C();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

char *HDSwimmingDataCollector.__allocating_init(profile:tracker:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2289D83FC(a1, a2);

  return v6;
}

void sub_2289D5A5C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22911B7EC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

char *HDSwimmingDataCollector.init(profile:tracker:)(void *a1, void *a2)
{
  v4 = sub_2289D83FC(a1, a2);

  return v4;
}

void sub_2289D5B10(unint64_t a1, void *a2)
{
  v6 = v2;
  swift_getObjectType();
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v37 = a1;
    }

    else
    {
      v37 = a1 & 0xF8;
    }

    if (sub_22911C78C() <= 0)
    {
      return;
    }

    v65 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    v64 = a2;
    v9 = sub_22911C78C();
    if (!v9)
    {
      v10 = a2;
      v37 = 1;
      v58 = MEMORY[0x277D84F90];
      v59 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }

    if (v9 < 1)
    {
      __break(1u);
      goto LABEL_53;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }

    v65 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    v64 = a2;
  }

  v60 = a1 & 0xC000000000000001;
  v62 = v9;
  v10 = a2;
  swift_beginAccess();
  v11 = 0;
  v12 = 0;
  v58 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v56 = a1;
  v57 = v6;
  do
  {
    if (v60)
    {
      v13 = MEMORY[0x22AAC6410](v12, a1);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:

      goto LABEL_10;
    }

    v13 = *(a1 + 8 * v12 + 32);
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_10:
    v14 = qword_27D862780;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_22911B95C();
    __swift_project_value_buffer(v16, qword_27D86A948);
    v17 = sub_22911B94C();
    v18 = sub_22911C5FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v63 = v21;
      *v19 = 136446722;
      v22 = sub_22911CBAC();
      v24 = sub_2289B9170(v22, v23, &v63);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v10;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v15;
      *v20 = v10;
      v20[1] = v15;
      v25 = v15;
      v26 = v10;
      _os_log_impl(&dword_228986000, v17, v18, "%{public}s Calculating difference for prior swim data %@ and current swim data %@", v19, 0x20u);
      sub_2289C4A64(0);
      swift_arrayDestroy();
      v27 = v20;
      a1 = v56;
      MEMORY[0x22AAC9830](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v28 = v21;
      v6 = v57;
      MEMORY[0x22AAC9830](v28, -1, -1);
      MEMORY[0x22AAC9830](v19, -1, -1);
    }

    v29 = v15;
    v30 = v10;
    v31 = sub_2289D62F8(v30, v29);

    if (v31)
    {
      v32 = v31;
      MEMORY[0x22AAC6000]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22911C47C();
      }

      sub_22911C4AC();

      v58 = v66;
    }

    v33 = v29;
    v34 = v30;
    v35 = sub_2289D70F0(v34, v33);

    if (v35)
    {
      v36 = v35;
      MEMORY[0x22AAC6000]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22911C47C();
      }

      sub_22911C4AC();

      v59 = v65;
    }

    else
    {
    }

    ++v12;
    v64 = v33;
    v10 = v33;

    v11 = 1;
  }

  while (v62 != v12);
  v37 = 0;
LABEL_25:
  Strong = swift_unknownObjectWeakLoadStrong();
  v61 = v10;
  if (Strong && (v39 = Strong, v40 = [Strong dataCollectionManager], v39, v40))
  {
    sub_2289B3D00(0, &qword_27D863190, 0x277CCD830);
    v41 = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCC78]);
    v3 = [v40 aggregatorForType_];
  }

  else
  {
    v3 = 0;
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42 && (v43 = v42, v44 = [v42 dataCollectionManager], v43, v44))
  {
    sub_2289B3D00(0, &qword_27D863190, 0x277CCD830);
    v45 = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCB38]);
    v4 = [v44 aggregatorForType_];
  }

  else
  {
    v4 = 0;
  }

  v5 = &selRef_journalPath;
  a1 = &selRef_courseAccuracy;
  if (!v3)
  {

    v49 = v59;
    if (v4)
    {
      goto LABEL_37;
    }

LABEL_42:

    if (v37)
    {
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  if (!(v58 >> 62))
  {
    v46 = v3;

    sub_22911CAEC();
    sub_2289D86B4();
    goto LABEL_36;
  }

LABEL_53:
  sub_2289D86B4();
  v54 = v3;

  sub_22911CA3C();

LABEL_36:

  sub_2289D86B4();
  v47 = sub_22911C44C();

  v48 = [objc_opt_self() v5[130]];
  [v3 *(a1 + 1360)];

  v49 = v59;
  if (!v4)
  {
    goto LABEL_42;
  }

LABEL_37:
  if (v49 >> 62)
  {
    sub_2289D86B4();
    v55 = v4;

    sub_22911CA3C();
  }

  else
  {
    v50 = v4;

    sub_22911CAEC();
    sub_2289D86B4();
  }

  sub_2289D86B4();
  v51 = sub_22911C44C();

  v52 = [objc_opt_self() v5[130]];
  [v4 *(a1 + 1360)];

  if (v37)
  {
LABEL_40:
    v53 = v61;
    goto LABEL_44;
  }

LABEL_43:
  v53 = v61;

LABEL_44:
}

id sub_2289D62F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v124 = sub_22911B95C();
  v4 = *(v124 - 8);
  v5 = MEMORY[0x28223BE20](v124);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v116 = &v105 - v8;
  v9 = sub_22911B7DC();
  v115 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v114 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v118 = &v105 - v12;
  v13 = MEMORY[0x277D83D88];
  sub_2289D8B5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v119 = &v105 - v15;
  v16 = sub_22911B8DC();
  v120 = *(v16 - 8);
  v121 = v16;
  MEMORY[0x28223BE20](v16);
  v117 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289D8B5C(0, &qword_27D862B48, MEMORY[0x277CC9578], v13);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v105 - v22;
  v123 = sub_22911B88C();
  v24 = *(v123 - 8);
  v25 = MEMORY[0x28223BE20](v123);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v105 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v34 = &v105 - v33;
  v35 = *(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount);
  v36 = *(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount);
  v37 = __OFSUB__(v35, v36);
  v38 = v35 - v36;
  if (v37)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v38 < 1)
  {
    sub_22911B92C();
    v44 = sub_22911B94C();
    v45 = sub_22911C5FC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v125[0] = v47;
      *v46 = 136446210;
      v48 = sub_22911CBAC();
      v50 = sub_2289B9170(v48, v49, v125);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_228986000, v44, v45, "%{public}s Stroke difference between current and prior swim objects is not greater than zero.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AAC9830](v47, -1, -1);
      MEMORY[0x22AAC9830](v46, -1, -1);
    }

    (*(v4 + 8))(v7, v124);
    return 0;
  }

  v111 = v32;
  v112 = v38;
  v113 = v31;
  v110 = v4;
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v23, &qword_27D862B48, MEMORY[0x277CC9578]);
  v39 = *(v24 + 48);
  v40 = v123;
  if (v39(v23, 1, v123) == 1)
  {
    v41 = &qword_27D862B48;
    v42 = MEMORY[0x277CC9578];
    v43 = v23;
    goto LABEL_13;
  }

  v108 = v29;
  v109 = v9;
  v51 = *(v24 + 32);
  v51(v34, v23, v40);
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v21, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v39(v21, 1, v40) == 1)
  {
    (*(v24 + 8))(v34, v40);
    v41 = &qword_27D862B48;
    v42 = MEMORY[0x277CC9578];
    v43 = v21;
    goto LABEL_13;
  }

  v106 = v34;
  v107 = v24;
  v52 = v108;
  v51(v108, v21, v40);
  v105 = a2;
  v53 = v119;
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v119, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v55 = v120;
  v54 = v121;
  if ((*(v120 + 48))(v53, 1, v121) == 1)
  {
    v56 = *(v107 + 8);
    v56(v52, v40);
    v56(v106, v40);
    v41 = &qword_27D8630C0;
    v42 = MEMORY[0x277CC95F0];
    v43 = v53;
LABEL_13:
    sub_2289D8C40(v43, v41, v42);
    v30 = v124;
    if (qword_27D862780 == -1)
    {
LABEL_14:
      __swift_project_value_buffer(v30, qword_27D86A948);
      v57 = sub_22911B94C();
      v58 = sub_22911C5EC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v125[0] = v60;
        *v59 = 136446210;
        v61 = sub_22911CBAC();
        v63 = sub_2289B9170(v61, v62, v125);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_228986000, v57, v58, "%{public}s Unable to calculate lap difference for prior swim data. start, end or sourceID is nil", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x22AAC9830](v60, -1, -1);
        MEMORY[0x22AAC9830](v59, -1, -1);
      }

      return 0;
    }

LABEL_23:
    v104 = v30;
    swift_once();
    v30 = v104;
    goto LABEL_14;
  }

  (*(v55 + 32))(v117, v53, v54);
  v65 = *(v107 + 16);
  v65(v111, v106, v40);
  v65(v113, v52, v40);
  v66 = v118;
  sub_22911B7CC();
  v67 = [objc_opt_self() countUnit];
  v68 = [objc_opt_self() quantityWithUnit:v67 doubleValue:v112];

  v69 = v116;
  sub_22911B92C();
  v70 = v115;
  v71 = v114;
  (*(v115 + 16))(v114, v66, v109);
  v72 = v68;
  v73 = sub_22911B94C();
  v74 = sub_22911C5FC();

  v75 = os_log_type_enabled(v73, v74);
  v76 = v124;
  if (v75)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v125[0] = v113;
    *v77 = 136446722;
    v79 = sub_22911CBAC();
    v81 = sub_2289B9170(v79, v80, v125);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2080;
    sub_2289D8CB0();
    v82 = v109;
    v83 = sub_22911CAAC();
    v85 = v84;
    v86 = *(v70 + 8);
    v119 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    ObjectType = v86;
    v86(v71, v82);
    v87 = sub_2289B9170(v83, v85, v125);
    v55 = v120;

    *(v77 + 14) = v87;
    *(v77 + 22) = 2112;
    *(v77 + 24) = v72;
    *v78 = v72;
    v88 = v72;
    _os_log_impl(&dword_228986000, v73, v74, "%{public}s Creating stroke datum with date interval %s and quantity %@", v77, 0x20u);
    sub_2289D8D08(v78, sub_2289C4A64);
    v89 = v78;
    v54 = v121;
    MEMORY[0x22AAC9830](v89, -1, -1);
    v90 = v113;
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v90, -1, -1);
    MEMORY[0x22AAC9830](v77, -1, -1);

    (*(v110 + 8))(v116, v124);
  }

  else
  {

    v91 = *(v70 + 8);
    v119 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    ObjectType = v91;
    v91(v71, v109);
    (*(v110 + 8))(v69, v76);
  }

  sub_2289D8B5C(0, &qword_27D863220, sub_2289B3BE4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v93;
  v94 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 72) = sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  *(inited + 48) = v94;
  sub_2289B26A8(inited);
  swift_setDeallocating();
  sub_2289D8D08(inited + 32, sub_2289B3BE4);
  v95 = objc_allocWithZone(HDQuantityDatum);
  v96 = v117;
  v97 = sub_22911B8BC();
  v98 = v118;
  v99 = sub_22911B7AC();
  v100 = sub_22911C2BC();

  v101 = [v95 initWithIdentifier:v97 dateInterval:v99 quantity:v72 metadata:v100 resumeContextProvider:0];

  ObjectType(v98, v109);
  (*(v55 + 8))(v96, v54);
  v102 = *(v107 + 8);
  v103 = v123;
  v102(v108, v123);
  v102(v106, v103);
  return v101;
}

id sub_2289D70F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22911B95C();
  v123 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v116 = v107 - v8;
  v9 = sub_22911B7DC();
  v115 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v114 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = v107 - v12;
  v13 = MEMORY[0x277D83D88];
  sub_2289D8B5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = v107 - v15;
  v16 = sub_22911B8DC();
  v17 = *(v16 - 8);
  v120 = v16;
  v121 = v17;
  MEMORY[0x28223BE20](v16);
  v118 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289D8B5C(0, &qword_27D862B48, MEMORY[0x277CC9578], v13);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v107 - v23;
  v25 = sub_22911B88C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v107 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v107 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v37 = *(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance) - *(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance);
  if (v37 <= 2.22044605e-16)
  {
    v40 = v4;
    sub_22911B92C();
    v41 = sub_22911B94C();
    v42 = sub_22911C5FC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v124[0] = v44;
      *v43 = 136446210;
      v45 = sub_22911CBAC();
      v47 = sub_2289B9170(v45, v46, v124);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_228986000, v41, v42, "%{public}s Distance difference between current and prior swim objects is too small", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAC9830](v44, -1, -1);
      MEMORY[0x22AAC9830](v43, -1, -1);
    }

    (*(v123 + 8))(v7, v40);
    return 0;
  }

  v111 = v36;
  v113 = v107 - v35;
  v112 = v9;
  v38 = v34;
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v24, &qword_27D862B48, MEMORY[0x277CC9578]);
  v39 = *(v26 + 48);
  if (v39(v24, 1, v38) == 1)
  {
    sub_2289D8C40(v24, &qword_27D862B48, MEMORY[0x277CC9578]);
LABEL_12:
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27D86A948);
    v59 = sub_22911B94C();
    v60 = sub_22911C5EC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v124[0] = v62;
      *v61 = 136446210;
      v63 = sub_22911CBAC();
      v65 = sub_2289B9170(v63, v64, v124);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_228986000, v59, v60, "%{public}s Unable to calculate lap difference for prior swim data. start, end or sourceID is nil", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AAC9830](v62, -1, -1);
      MEMORY[0x22AAC9830](v61, -1, -1);
    }

    return 0;
  }

  v109 = v33;
  v110 = v4;
  v48 = v113;
  v49 = v24;
  v50 = *(v26 + 32);
  v50(v113, v49, v38);
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v22, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v39(v22, 1, v38) == 1)
  {
    (*(v26 + 8))(v48, v38);
    v51 = &qword_27D862B48;
    v52 = MEMORY[0x277CC9578];
    v53 = v22;
LABEL_11:
    sub_2289D8C40(v53, v51, v52);
    v4 = v110;
    goto LABEL_12;
  }

  v108 = v26;
  v54 = v109;
  v50(v109, v22, v38);
  v107[1] = a2;
  v55 = v117;
  sub_2289D8BC0(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v117, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v57 = v120;
  v56 = v121;
  if ((*(v121 + 48))(v55, 1, v120) == 1)
  {
    v58 = *(v108 + 8);
    v58(v54, v38);
    v58(v113, v38);
    v51 = &qword_27D8630C0;
    v52 = MEMORY[0x277CC95F0];
    v53 = v55;
    goto LABEL_11;
  }

  (*(v56 + 32))(v118, v55, v57);
  v67 = *(v108 + 16);
  v67(v30, v113, v38);
  v117 = v38;
  v67(v111, v54, v38);
  v68 = v119;
  sub_22911B7CC();
  v69 = [objc_opt_self() meterUnit];
  v70 = [objc_opt_self() quantityWithUnit:v69 doubleValue:v37];

  v71 = v116;
  sub_22911B92C();
  v72 = v115;
  v73 = v114;
  v74 = v112;
  (*(v115 + 16))(v114, v68, v112);
  v75 = v70;
  v76 = sub_22911B94C();
  v77 = sub_22911C5FC();

  v78 = os_log_type_enabled(v76, v77);
  v79 = v110;
  if (v78)
  {
    v80 = swift_slowAlloc();
    v81 = v74;
    v82 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v124[0] = v111;
    *v80 = 136446722;
    v83 = sub_22911CBAC();
    v85 = sub_2289B9170(v83, v84, v124);

    *(v80 + 4) = v85;
    *(v80 + 12) = 2080;
    sub_2289D8CB0();
    v86 = sub_22911CAAC();
    v88 = v87;
    v89 = *(v72 + 8);
    v115 = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    ObjectType = v89;
    v89(v73, v81);
    v90 = sub_2289B9170(v86, v88, v124);
    v57 = v120;

    *(v80 + 14) = v90;
    *(v80 + 22) = 2112;
    *(v80 + 24) = v75;
    *v82 = v75;
    v91 = v75;
    _os_log_impl(&dword_228986000, v76, v77, "%{public}s Creating distance datum with date interval %s and quantity %@", v80, 0x20u);
    sub_2289D8D08(v82, sub_2289C4A64);
    v92 = v82;
    v74 = v81;
    MEMORY[0x22AAC9830](v92, -1, -1);
    v93 = v111;
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v93, -1, -1);
    MEMORY[0x22AAC9830](v80, -1, -1);

    (*(v123 + 8))(v116, v110);
  }

  else
  {

    v94 = *(v72 + 8);
    v115 = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    ObjectType = v94;
    v94(v73, v74);
    (*(v123 + 8))(v71, v79);
  }

  sub_2289D8B5C(0, &qword_27D863220, sub_2289B3BE4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v96;
  v97 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 72) = sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  *(inited + 48) = v97;
  sub_2289B26A8(inited);
  swift_setDeallocating();
  sub_2289D8D08(inited + 32, sub_2289B3BE4);
  v98 = objc_allocWithZone(HDQuantityDatum);
  v99 = v118;
  v100 = sub_22911B8BC();
  v101 = v119;
  v102 = sub_22911B7AC();
  v103 = sub_22911C2BC();

  v104 = [v98 initWithIdentifier:v100 dateInterval:v102 quantity:v75 metadata:v103 resumeContextProvider:0];

  ObjectType(v101, v74);
  (*(v121 + 8))(v99, v57);
  v105 = *(v108 + 8);
  v106 = v117;
  v105(v109, v117);
  v105(v113, v106);
  return v104;
}

id sub_2289D8090()
{
  v0 = [objc_opt_self() _localDeviceSource];

  return v0;
}

uint64_t sub_2289D8114()
{
  v1 = [v0 description];
  v2 = sub_22911C35C();
  v4 = v3;

  MEMORY[0x22AAC5FC0](v2, v4);

  MEMORY[0x22AAC5FC0](45, 0xE100000000000000);
  sub_22911C94C();
  return 0;
}

id HDSwimmingDataCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDSwimmingDataCollector.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDSwimmingDataCollector();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_2289D83FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_aggregators;
  *&v3[v4] = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:5];
  v5 = OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_quantityTypes;
  sub_2289C4ACC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_229164B30;
  sub_2289B3D00(0, &qword_27D863190, 0x277CCD830);
  *(v6 + 32) = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCB38]);
  *(v6 + 40) = MEMORY[0x22AAC61E0](*MEMORY[0x277CCCC78]);
  *&v3[v5] = v6;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for HDSwimmingDataCollector();
  v7 = objc_msgSendSuper2(&v20, sel_init);
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakAssign();
  v9 = *&v7[OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_quantityTypes];
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

    return v7;
  }

  result = sub_22911C78C();
  v10 = result;
  if (!result)
  {
    return v7;
  }

LABEL_3:
  if (v10 >= 1)
  {
    v11 = OBJC_IVAR____TtC12HealthDaemon23HDSwimmingDataCollector_aggregators;

    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x22AAC6410](i, v9);
      }

      else
      {
        v13 = *(v9 + 8 * i + 32);
      }

      v14 = v13;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v16 = Strong, v17 = [Strong dataCollectionManager], v16, v17))
      {
        v18 = [v17 aggregatorForType_];
      }

      else
      {
        v18 = 0;
      }

      [*&v7[v11] setObject:v18 forKey:v14];
      v19 = [objc_allocWithZone(MEMORY[0x277CCD2A0]) init];
      if (v18)
      {
        [v18 registerDataCollector:v7 state:v19];
      }
    }

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_2289D86B4()
{
  result = qword_27D863188;
  if (!qword_27D863188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D863188);
  }

  return result;
}

void sub_2289D8718(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  swift_getObjectType();
  v5 = sub_22911B95C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_2289C9A90(0, a2, a3);
    v10 = v19;
  }

  else
  {
    sub_22911B92C();
    v11 = sub_22911B94C();
    v12 = sub_22911C5FC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19 = a3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      v16 = sub_22911CBAC();
      v18 = sub_2289B9170(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_228986000, v11, v12, "%{public}s Requesting final data but the tracker is nil", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAC9830](v15, -1, -1);
      MEMORY[0x22AAC9830](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    a2(1, 0);
  }
}

void sub_2289D8B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2289D8BC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289D8B5C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289D8C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2289D8B5C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2289D8CB0()
{
  result = qword_27D862BA8;
  if (!qword_27D862BA8)
  {
    sub_22911B7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862BA8);
  }

  return result;
}

uint64_t sub_2289D8D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id HDHRConstellationSnapshotEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRConstellationSnapshotEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRConstellationSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRConstellationSnapshotEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRConstellationSnapshotEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRConstellationSnapshotEntity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HDHRConstellationSnapshotEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRConstellationSnapshotEntity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12HealthDaemon31HDHRConstellationSnapshotEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v37 = *(v4 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_229164690;
  v34 = v6;
  v35 = v6 + v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000010;
  *(v7 + 24) = 0x80000002291833C0;
  *v3 = v7;
  v8 = *MEMORY[0x277D109D0];
  v36 = *(v1 + 104);
  v36(v3, v8, v0);
  v33 = v1 + 104;
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x8000000229182120;
  v15 = *MEMORY[0x277D109B8];
  v16 = sub_22911C64C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v3 = v11;
  v17 = v0;
  v18 = v36;
  v36(v3, *MEMORY[0x277D109C8], v0);
  v19 = v37;
  sub_22911C67C();
  v31 = 2 * v19;
  v32 = "ationSnapshotEntity";
  v20 = sub_22911C65C();
  v21 = swift_allocBox();
  v22 = *MEMORY[0x277D109D8];
  v23 = *(*(v20 - 8) + 104);
  v23(v24, v22, v20);
  *v3 = v21;
  v25 = *MEMORY[0x277D109F8];
  v18(v3, v25, v17);
  v26 = v31;
  sub_22911C67C();
  v37 += v26;
  v27 = swift_allocBox();
  v23(v28, v22, v20);
  *v3 = v27;
  v36(v3, v25, v17);
  sub_22911C67C();
  return v34;
}

uint64_t sub_2289D95FC@<X0>(uint64_t *a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      v23 = sub_22911C66C();
      v24 = swift_allocBox();
      v26 = v33;
      v34 = sub_22911C65C();
      v35 = swift_allocBox();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D109D8], v34);
      *v26 = v35;
      v30 = MEMORY[0x277D10A00];
      goto LABEL_13;
    case 2:
    case 5:
    case 0xF:
    case 0x10:
      v3 = sub_22911C65C();
      v4 = swift_allocBox();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D109D8], v3);
      *a1 = v4;
      v6 = MEMORY[0x277D10A18];
      goto LABEL_16;
    case 3:
      v7 = sub_22911C65C();
      v8 = swift_allocBox();
      v10 = v41;
      v11 = MEMORY[0x277D109D8];
      goto LABEL_15;
    case 4:
    case 6:
      v12 = sub_22911C65C();
      v13 = swift_allocBox();
      v15 = v14;
      v16 = MEMORY[0x277D109D8];
      goto LABEL_7;
    case 7:
    case 8:
      v12 = sub_22911C65C();
      v13 = swift_allocBox();
      v15 = v22;
      v16 = MEMORY[0x277D109E0];
LABEL_7:
      (*(*(v12 - 8) + 104))(v15, *v16, v12);
      *a1 = v13;
      v6 = MEMORY[0x277D109F8];
      goto LABEL_16;
    case 9:
      v17 = sub_22911C65C();
      v18 = swift_allocBox();
      v20 = v31;
      v21 = MEMORY[0x277D109D8];
      goto LABEL_10;
    case 0xA:
    case 0xB:
      v17 = sub_22911C65C();
      v18 = swift_allocBox();
      v20 = v19;
      v21 = MEMORY[0x277D109E0];
LABEL_10:
      (*(*(v17 - 8) + 104))(v20, *v21, v17);
      *a1 = v18;
      v6 = MEMORY[0x277D109E8];
      goto LABEL_16;
    case 0xC:
    case 0xD:
      v7 = sub_22911C65C();
      v8 = swift_allocBox();
      v10 = v9;
      v11 = MEMORY[0x277D109E0];
LABEL_15:
      (*(*(v7 - 8) + 104))(v10, *v11, v7);
      *a1 = v8;
      v6 = MEMORY[0x277D109F0];
      goto LABEL_16;
    case 0xE:
      v23 = sub_22911C66C();
      v24 = swift_allocBox();
      v26 = v25;
      v27 = sub_22911C65C();
      v28 = swift_allocBox();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D109D8], v27);
      *v26 = v28;
      v30 = MEMORY[0x277D10A18];
LABEL_13:
      v45 = *(*(v23 - 8) + 104);
      v45(v26, *v30, v23);
      *a1 = v24;
      v37 = *MEMORY[0x277D10A10];
      v38 = a1;
      v39 = v23;
      v40 = v45;
      goto LABEL_17;
    default:
      v32 = swift_allocObject();
      *(v32 + 16) = 0xD000000000000013;
      *(v32 + 24) = 0x8000000229183140;
      *a1 = v32;
      v6 = MEMORY[0x277D109D0];
LABEL_16:
      v42 = *v6;
      v43 = sub_22911C66C();
      v40 = *(*(v43 - 8) + 104);
      v39 = v43;
      v38 = a1;
      v37 = v42;
LABEL_17:

      return v40(v38, v37, v39);
  }
}

unint64_t HDClinicalHealthLinkEntity.Property.rawValue.getter()
{
  result = 0x4449574F52;
  switch(*v0)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x5F746E756F636361;
      break;
    case 3:
      result = 0x6464615F65746164;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x646574656C6564;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 0x6C6562616CLL;
      break;
    case 8:
      result = 0x7367616C66;
      break;
    case 9:
      result = 7955819;
      break;
    case 0xA:
      result = 0x65646F6373736170;
      break;
    case 0xB:
      result = 0x74736566696E616DLL;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0xD000000000000021;
      break;
    case 0xE:
      result = 0x636E615F636E7973;
      break;
    case 0xF:
      result = 0x6564695F636E7973;
      break;
    case 0x10:
      result = 0x6F72705F636E7973;
      break;
    default:
      return result;
  }

  return result;
}

HealthDaemon::HDClinicalHealthLinkEntity::Property_optional __swiftcall HDClinicalHealthLinkEntity.Property.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22911CAFC();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2289D9C58()
{
  sub_22911CB7C();
  HDClinicalHealthLinkEntity.Property.rawValue.getter();
  sub_22911C3DC();

  return sub_22911CB9C();
}

uint64_t sub_2289D9CC0(uint64_t a1)
{
  HDClinicalHealthLinkEntity.Property.rawValue.getter();
  sub_22911C3DC();
}

uint64_t sub_2289D9D24(uint64_t a1)
{
  sub_22911CB7C();
  HDClinicalHealthLinkEntity.Property.rawValue.getter();
  sub_22911C3DC();

  return sub_22911CB9C();
}

unint64_t sub_2289D9D94@<X0>(unint64_t *a1@<X8>)
{
  result = HDClinicalHealthLinkEntity.Property.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2289D9DCC()
{
  v0 = HDClinicalHealthLinkEntity.Property.rawValue.getter();
  v2 = v1;
  if (v0 == HDClinicalHealthLinkEntity.Property.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22911CADC();
  }

  return v5 & 1;
}

uint64_t HDClinicalHealthLinkEntity.JoinedProperty.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22911CA9C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2289D9EE8()
{
  sub_22911CB7C();
  sub_22911C3DC();
  return sub_22911CB9C();
}

uint64_t sub_2289D9F5C(uint64_t a1)
{
  sub_22911CB7C();
  sub_22911C3DC();
  return sub_22911CB9C();
}

uint64_t sub_2289D9FB0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22911CA9C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2289DA03C()
{
  v0 = sub_22911C66C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_22911C68C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  sub_2289FD438(0, 17, 0);
  v7 = 0;
  v8 = v14;
  v12[2] = 0x8000000229181C30;
  v12[3] = 0x8000000229181C50;
  v12[1] = 0x8000000229181BE0;
  do
  {
    v13 = byte_283BE3AA8[v7 + 32];
    sub_2289D95FC(v2);
    sub_22911C67C();
    v14 = v8;
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_2289FD438((v9 > 1), v10 + 1, 1);
      v8 = v14;
    }

    ++v7;
    *(v8 + 16) = v10 + 1;
    result = (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v6, v3);
  }

  while (v7 != 17);
  qword_27D863228 = v8;
  return result;
}

double static HDClinicalHealthLinkEntity.columns.getter()
{
  if (qword_27D862788 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t static HDClinicalHealthLinkEntity.foreignKeys()()
{
  sub_2289BF380(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = 0x5F746E756F636361;
  *(inited + 40) = 0xEA00000000006469;
  sub_2289B3D00(0, &qword_27D863230, off_27860DA90);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  v1 = sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  return v1;
}

uint64_t static HDClinicalHealthLinkEntity.joinClauses(forProperty:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x8000000229181CA0 == a2 || (sub_22911CADC() & 1) != 0)
  {
    sub_2289DD328(0, &qword_280D679C0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2291640E0;
    v3 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
    if (!v3)
    {
      sub_22911C35C();
      v3 = sub_22911C34C();
    }

    v4 = objc_opt_self();
    sub_2289B3D00(0, &qword_27D863230, off_27860DA90);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_22911C34C();
    v7 = [v4 leftJoinClauseFromTable:v3 toTargetEntity:ObjCClassFromMetadata as:0 localReference:v6 targetKey:*MEMORY[0x277D10A40]];

    *(inited + 32) = v7;
    v8 = sub_2289DD048(inited, &qword_27D863238, 0x277D10B50, &qword_27D863240, &qword_27D863290);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v10 = swift_getObjCClassFromMetadata();
    v11 = sub_22911C34C();
    v13.receiver = v10;
    v13.super_class = &OBJC_METACLASS____TtC12HealthDaemon26HDClinicalHealthLinkEntity;
    v12 = objc_msgSendSuper2(&v13, sel_joinClausesForProperty_, v11);

    if (v12)
    {
      sub_2289B3D00(0, &qword_27D863238, 0x277D10B50);
      sub_2289B33F8(&qword_27D863240, &qword_27D863238, 0x277D10B50);
      v8 = sub_22911C51C();
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

id HDClinicalHealthLinkEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDClinicalHealthLinkEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDClinicalHealthLinkEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDClinicalHealthLinkEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDClinicalHealthLinkEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_2289DAD44()
{
  if (qword_27D862788 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2289DADA0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22911BE7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2289DD5D4(&qword_27D862D58, MEMORY[0x277CCB438]);
  v33 = a2;
  v11 = sub_22911C2FC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2289DD5D4(&qword_27D863278, MEMORY[0x277CCB440]);
      v21 = sub_22911C33C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2289DBDC0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2289DB058(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22911C79C();

    if (v17)
    {

      sub_2289B3D00(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22911C78C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2289DB3B4(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2289DB908(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_2289DBD3C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_2289B3D00(0, a3, a4);
    v19 = sub_22911C6AC();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22911C6BC();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2289DC03C(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}