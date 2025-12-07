__n128 sub_22B718264(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B718278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B7182C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22B718320(uint64_t a1)
{
  v1 = sub_22B7DBF58();
  v9 = v1;
  v75 = *v1->messageStore;
  if (!v75)
  {
    v1, v2, v3, v4, v5, v6, v7, v8, v69, v72;
    return;
  }

  v10 = 0;
  queue = v1->queue;
  v11 = MEMORY[0x277D84F90];
  v70 = v1;
  while (v10 < *v9->messageStore)
  {
    v19 = *&queue[8 * v10];
    v20 = sub_22B7DBE88();
    v28 = *v20->messageStore;
    if (v28)
    {
      v76 = MEMORY[0x277D84F90];
      v29 = v20;
      sub_22B7AB8A4(0, v28, 0);
      v37 = v29;
      v38 = v76;
      v39 = *(v76 + 16);
      v40 = 16 * v39;
      v41 = 32;
      do
      {
        v42 = *(&v37->super.isa + v41);
        v43 = *(v76 + 24);
        v44 = v39 + 1;
        if (v39 >= v43 >> 1)
        {
          sub_22B7AB8A4((v43 > 1), v39 + 1, 1);
          v37 = v29;
        }

        *(v76 + 16) = v44;
        v45 = v76 + v40;
        *(v45 + 32) = v19;
        *(v45 + 40) = v42;
        v40 += 16;
        v41 += 8;
        v39 = v44;
        --v28;
      }

      while (v28);
      v37, v30, v31, v32, v33, v34, v35, v36, v70, queue;
      v9 = v71;
    }

    else
    {
      v20, v21, v22, v23, v24, v25, v26, v27, v70, queue;
      v38 = MEMORY[0x277D84F90];
    }

    v46 = *v38->messageStore;
    v47 = *v11->messageStore;
    v48 = v47 + v46;
    if (__OFADD__(v47, v46))
    {
      goto LABEL_29;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v48 <= *v11->chatRegistry >> 1)
    {
      if (*v38->messageStore)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v47 <= v48)
      {
        v57 = v47 + v46;
      }

      else
      {
        v57 = v47;
      }

      v11 = sub_22B71BFB8(isUniquelyReferenced_nonNull_native, v57, 1, v11, v53, v54, v55, v56);
      if (*v38->messageStore)
      {
LABEL_22:
        v58 = *v11->messageStore;
        if ((*v11->chatRegistry >> 1) - v58 < v46)
        {
          goto LABEL_31;
        }

        memcpy(&v11->queue[16 * v58], v38->queue, 16 * v46);
        v38, v59, v60, v61, v62, v63, v64, v65, v71, v74;
        if (v46)
        {
          v66 = *v11->messageStore;
          v67 = __OFADD__(v66, v46);
          v68 = v66 + v46;
          if (v67)
          {
            goto LABEL_32;
          }

          *v11->messageStore = v68;
        }

        goto LABEL_4;
      }
    }

    v38, v50, v51, v52, v53, v54, v55, v56, v71, v74;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_4:
    if (++v10 == v75)
    {
      v9, v12, v13, v14, v15, v16, v17, v18, v70, queue;
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_22B718550()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  MEMORY[0x231895FF0](v2);
  return sub_22B7DC6B8();
}

uint64_t sub_22B7185AC()
{
  v1 = v0[1];
  MEMORY[0x231895FF0](*v0);
  return MEMORY[0x231895FF0](v1);
}

uint64_t sub_22B7185E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22B7DC668();
  MEMORY[0x231895FF0](v2);
  MEMORY[0x231895FF0](v3);
  return sub_22B7DC6B8();
}

void sub_22B718694()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    swift_beginAccess();
    v1 = *(v0 + 120);
    if (*v1->messageStore)
    {
      *(v0 + 120) = MEMORY[0x277D84F98];
      swift_beginAccess();
      v2 = *(v0 + 128);
      v3 = v2 + 64;
      v4 = 1 << v2[32];
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(v2 + 8);
      v7 = (v4 + 63) >> 6;

      v8 = 0;
      v25 = v2;
      while (v6)
      {
LABEL_13:
        v11 = *(*(v2 + 7) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
        v12 = *v1->messageStore;
        if (v12)
        {
          sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
          v13 = swift_allocObject();
          v14 = j__malloc_size(v13);
          v15 = v14 - 32;
          if (v14 < 32)
          {
            v15 = v14 - 25;
          }

          v13[2] = v12;
          v13[3] = (2 * (v15 >> 3)) | 1;
          v26 = sub_22B759F48(&v27, v13 + 4, v12, v1);
          v16 = v27;
          swift_unknownObjectRetain();

          sub_22B705E3C(v16);
          if (v26 != v12)
          {
            goto LABEL_21;
          }

          v2 = v25;
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v6 &= v6 - 1;
        sub_22B718A00();
        v9 = sub_22B7DB8F8();

        [v11 executorStatusReportsUpdated_];
        swift_unknownObjectRelease();
      }

      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          v1, v17, v18, v19, v20, v21, v22, v23, v24, v25;
          return;
        }

        v6 = *&v3[8 * v10];
        ++v8;
        if (v6)
        {
          v8 = v10;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }
  }
}

uint64_t sub_22B7188C4(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v8[15], a2, a3, a4, a5, a6, a7, a8, vars0, vars8;
  v8[16], v9, v10, v11, v12, v13, v14, v15, vars0a, vars8a;
  v8[17], v16, v17, v18, v19, v20, v21, v22, vars0b, vars8b;
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v8);
}

unint64_t sub_22B718944()
{
  result = qword_27D8CD960;
  if (!qword_27D8CD960)
  {
    sub_22B6FB8C4(&qword_27D8CD968, qword_22B7F9F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD960);
  }

  return result;
}

unint64_t sub_22B7189AC()
{
  result = qword_281420DE0;
  if (!qword_281420DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281420DE0);
  }

  return result;
}

unint64_t sub_22B718A00()
{
  result = qword_28141F008;
  if (!qword_28141F008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F008);
  }

  return result;
}

uint64_t sub_22B718A4C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CD980);
  sub_22B4CFA74(v0, qword_27D8CD980);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B718AC0()
{
  sub_22B7DC668();
  MEMORY[0x231895FF0](0);
  return sub_22B7DC6B8();
}

uint64_t sub_22B718B2C(uint64_t a1)
{
  sub_22B7DC668();
  MEMORY[0x231895FF0](0);
  return sub_22B7DC6B8();
}

uint64_t sub_22B718B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B7DC2E8();
  MEMORY[0x231895140](0x203A68746170, 0xE600000000000000);
  MEMORY[0x231895140](a1, a2);
  MEMORY[0x231895140](0x727265203E2D2D20, 0xEC000000203A726FLL);
  sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
  sub_22B7DC428();
  return 0;
}

uint64_t IMPurgedAttachmentHandler.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id IMPurgedAttachmentHandler.init(batchSize:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithBatchSize_];
}

{
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_currentBatch] = 0;
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents] = v3;
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures] = v3;
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths] = v3;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_batchSize] = a1;
  v5.receiver = v1;
  v5.super_class = IMPurgedAttachmentHandler;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall IMPurgedAttachmentHandler.registerPurgedAttachment(at:)(Swift::String_optional at)
{
  if (at.value._object)
  {
    object = at.value._object;
    countAndFlagsBits = at.value._countAndFlagsBits;

    v4 = sub_22B7DB678();
    v5 = [v4 __im_isLivePhotoBundlePath];

    if ((v5 & 1) != 0 || (v6 = sub_22B7DB678(), v7 = [v6 __im_isLivePhotoBundleComponent], v6, v7))
    {
      v8 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths;
      swift_beginAccess();
      v9 = *(v1 + v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v8) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_22B71BD80(0, *v9->messageStore + 1, 1, v9, v11, v12, v13, v14);
        *(v1 + v8) = v9;
      }

      v16 = *v9->messageStore;
      v15 = *v9->chatRegistry;
      if (v16 >= v15 >> 1)
      {
        v9 = sub_22B71BD80((v15 > 1), v16 + 1, 1, v9, v11, v12, v13, v14);
      }

      *v9->messageStore = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 4) = countAndFlagsBits;
      *(v17 + 5) = object;
      *(v1 + v8) = v9;
      swift_endAccess();
    }

    else
    {
      v18 = OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths;
      swift_beginAccess();
      v19 = *(v1 + v18);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v18) = v19;
      if ((v20 & 1) == 0)
      {
        v19 = sub_22B71BD80(0, *v19->messageStore + 1, 1, v19, v21, v22, v23, v24);
        *(v1 + v18) = v19;
      }

      v25 = *v19->messageStore;
      v26 = *v19->chatRegistry;
      v27 = v25 + 1;
      if (v25 >= v26 >> 1)
      {
        v29 = v19;
        v30 = *v19->messageStore;
        v31 = sub_22B71BD80((v26 > 1), v25 + 1, 1, v29, v21, v22, v23, v24);
        v25 = v30;
        v19 = v31;
      }

      *v19->messageStore = v27;
      v28 = v19 + 16 * v25;
      *(v28 + 4) = countAndFlagsBits;
      *(v28 + 5) = object;
      *(v1 + v18) = v19;
      swift_endAccess();
      if (v27 >= *(v1 + OBJC_IVAR___IMPurgedAttachmentHandler_batchSize))
      {
        sub_22B71915C();
      }
    }
  }
}

void sub_22B71915C()
{
  if (qword_27D8CCC10 != -1)
  {
LABEL_146:
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_27D8CD980);
  v2 = v0;
  v0 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(&v0->super, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134218240;
    *(v4 + 4) = *(&v2->super.isa + OBJC_IVAR___IMPurgedAttachmentHandler_currentBatch);
    *(v4 + 12) = 2048;
    v5 = OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths;
    swift_beginAccess();
    *(v4 + 14) = (*(&v2->super.isa + v5))[2];

    _os_log_impl(&dword_22B4CC000, &v0->super, v3, "Processing batch %ld with %ld attachment paths.", v4, 0x16u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  else
  {
  }

  v6 = OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths;
  swift_beginAccess();
  v489 = v2;
  v486 = v6;
  v7 = *(&v2->super.isa + v6);
  v8 = *v7->messageStore;

  if (v8)
  {
    v16 = 0;
    membershipObserver = v7->membershipObserver;
    v488 = MEMORY[0x277D84F90];
    while (2)
    {
      v18 = &membershipObserver[16 * v16];
      v19 = v16;
      while (1)
      {
        if (v19 >= *v7->messageStore)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v20 = *v18;
        v491[0] = *(v18 - 1);
        v491[1] = v20;
        sub_22B704B70();

        v0 = v491;
        v21 = sub_22B7DC0C8();
        v29 = *v21->messageStore;
        if (v29 > 9)
        {
          v37 = *v21[2].queue;
          v0 = *v21[2].membershipObserver;
          v38 = v21;

          v20, v39, v40, v41, v42, v43, v44, v45, v449, *(&v449 + 1);
          v53 = v38;
          goto LABEL_15;
        }

        if (v29)
        {
          break;
        }

        ++v19;
        v21, v22, v23, v24, v25, v26, v27, v28, v449, *(&v449 + 1);
        v20, v30, v31, v32, v33, v34, v35, v36, v450, v463;
        v18 += 2;
        if (v8 == v19)
        {
          goto LABEL_22;
        }
      }

      v54 = v21 + 16 * v29;
      v37 = *(v54 + 2);
      v0 = *(v54 + 3);
      v55 = v21;

      v55, v56, v57, v58, v59, v60, v61, v62, v449, *(&v449 + 1);
      v53 = v20;
LABEL_15:
      v53, v46, v47, v48, v49, v50, v51, v52, v451, v464;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v488 = sub_22B71BD80(0, *v488->messageStore + 1, 1, v488, v12, v13, v14, v15);
      }

      v64 = *v488->messageStore;
      v63 = *v488->chatRegistry;
      if (v64 >= v63 >> 1)
      {
        v488 = sub_22B71BD80((v63 > 1), v64 + 1, 1, v488, v12, v13, v14, v15);
      }

      v16 = v19 + 1;
      *v488->messageStore = v64 + 1;
      v65 = v488 + 16 * v64;
      *(v65 + 4) = v37;
      *(v65 + 5) = v0;
      membershipObserver = v7->membershipObserver;
      if (v8 - 1 != v19)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v488 = MEMORY[0x277D84F90];
  }

LABEL_22:
  v7, v9, v10, v11, v12, v13, v14, v15, v449, *(&v449 + 1);
  v66 = v488;
  isFirstFire = v2;
  v490 = *v488->messageStore;
  if (v490 != (*(&v2->super.isa + v486))[2])
  {
    v68 = v2;

    v69 = sub_22B7DB298();
    v70 = sub_22B7DBC98();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 134218240;
      *(v71 + 4) = *v488->messageStore;
      v488, v72, v73, v74, v75, v76, v77, v78, v452, v465;
      *(v71 + 12) = 2048;
      *(v71 + 14) = (*(&v489->super.isa + v486))[2];

      _os_log_impl(&dword_22B4CC000, v69, v70, "Only %ld guids could be found out of %ld attachment paths.", v71, 0x16u);
      MEMORY[0x231898D60](v71, -1, -1);
    }

    else
    {

      v488, v79, v80, v81, v82, v83, v84, v85, v452, v465;
      v69 = v68;
    }
  }

  if (v490)
  {
    v86 = 0;
    for (i = 0; v490 != i; i = (i + 1))
    {
      v88 = isFirstFire;

      v0 = sub_22B7DB298();
      v89 = sub_22B7DBC88();

      v66, v90, v91, v92, v93, v94, v95, v96, v452, v465;
      if (os_log_type_enabled(&v0->super, v89))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v99 = v66;
        v100 = v98;
        v491[0] = v98;
        *v97 = 136315394;
        v101 = v99 + v86;
        v102 = *(v101 + 4);
        v103 = *(v101 + 5);

        v104 = sub_22B4CFAAC(v102, v103, v491);
        v103, v105, v106, v107, v108, v109, v110, v111, v452, v465;
        *(v97 + 4) = v104;
        *(v97 + 12) = 2080;
        v112 = *(&v489->super.isa + v486);
        if (i >= *(v112 + 16))
        {
          goto LABEL_143;
        }

        v113 = v112 + v86;
        v114 = *(v113 + 32);
        v115 = *(v113 + 40);

        v116 = sub_22B4CFAAC(v114, v115, v491);
        v117 = v115;
        isFirstFire = v489;
        v117, v118, v119, v120, v121, v122, v123, v124, v449, *(&v449 + 1);
        *(v97 + 14) = v116;
        _os_log_impl(&dword_22B4CC000, &v0->super, v89, "guid: %s attachmentPath: %s", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v100, -1, -1);
        MEMORY[0x231898D60](v97, -1, -1);

        v66 = v488;
      }

      else
      {
      }

      v86 += 16;
    }
  }

  v126 = sub_22B77A2DC(v125);
  v66, v127, v128, v129, v130, v131, v132, v133, v452, v465;
  v141 = *(v126 + 16);
  if (v141)
  {
    v142 = sub_22B759CB4(*(v126 + 16), 0);
    v126 = sub_22B75A414(v491, v142 + 4, v141, v126);
    sub_22B705E3C(v491[0]);
    if (v126 == v141)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  v126, v134, v135, v136, v137, v138, v139, v140, v449, *(&v449 + 1);
  v142 = MEMORY[0x277D84F90];
LABEL_38:
  v143 = MEMORY[0x277D837D0];

  v144 = sub_22B7DB298();
  v145 = sub_22B7DBC78();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 134217984;
    *(v146 + 4) = v142[2];

    _os_log_impl(&dword_22B4CC000, v144, v145, "%ld unique guids found.", v146, 0xCu);
    MEMORY[0x231898D60](v146, -1, -1);
  }

  else
  {
  }

  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_22B7F9FE0;
  v148 = sub_22B7DB6A8();
  v150 = v149;
  *(v147 + 56) = v143;
  v151 = sub_22B704A5C();
  *(v147 + 64) = v151;
  *(v147 + 32) = v148;
  *(v147 + 40) = v150;
  v152 = sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  *(v147 + 96) = v152;
  v153 = sub_22B714FD8(&qword_27D8CDA80, &unk_27D8CE9E0, &qword_22B7F99B0, MEMORY[0x277CC9C50]);
  *(v147 + 104) = v153;
  *(v147 + 72) = v142;
  v154 = sub_22B7DB6A8();
  *(v147 + 136) = MEMORY[0x277D837D0];
  *(v147 + 144) = v151;
  *(v147 + 112) = v154;
  *(v147 + 120) = v155;
  *(v147 + 176) = v152;
  *(v147 + 184) = v153;
  *(v147 + 152) = v142;
  v479 = v142;
  swift_bridgeObjectRetain_n();
  v156 = sub_22B7DBC58();
  v157 = [objc_opt_self() sharedInstance];
  if (!v157)
  {
LABEL_154:
    __break(1u);
    return;
  }

  v158 = v157;
  v159 = [v157 attachmentsFilteredUsingPredicate:v156 limit:0x7FFFFFFFFFFFFFFFLL];

  if (v159)
  {
    sub_22B4D01A0(0, &qword_27D8CDA88, 0x277D1A9C0);
    v167 = sub_22B7DB918();
    v168 = v167;
    v478 = v167 >> 62;
    v476 = v156;
    if (v167 >> 62)
    {
LABEL_148:
      v169 = sub_22B7DC1C8();
    }

    else
    {
      v169 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v477 = v159;
    v487 = v168;
    if (v169 != v479[2])
    {

      v170 = sub_22B7DB298();
      v171 = sub_22B7DBC88();
      if (os_log_type_enabled(v170, v171))
      {
        v179 = swift_slowAlloc();
        *v179 = 134218240;
        if (v478)
        {
          v180 = sub_22B7DC1C8();
        }

        else
        {
          v180 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v179 + 4) = v180;
        v168, v172, v173, v174, v175, v176, v177, v178, v449, *(&v449 + 1);
        *(v179 + 12) = 2048;
        *(v179 + 14) = v479[2];

        _os_log_impl(&dword_22B4CC000, v170, v171, "Numbers of transfers %ld did not match the expected %ld transfers.", v179, 0x16u);
        MEMORY[0x231898D60](v179, -1, -1);
      }

      else
      {

        v168, v185, v186, v187, v188, v189, v190, v191, v449, *(&v449 + 1);
      }

      v192 = MEMORY[0x277D84F90];
      if (v169)
      {
        v491[0] = MEMORY[0x277D84F90];
        sub_22B7AB8E4(0, v169 & ~(v169 >> 63), 0);
        if (v169 < 0)
        {
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        v193 = 0;
        v192 = v491[0];
        do
        {
          if ((v168 & 0xC000000000000001) != 0)
          {
            v194 = MEMORY[0x231895C80](v193, v168);
          }

          else
          {
            v194 = *(v168 + 8 * v193 + 32);
          }

          v195 = v194;
          v196 = [v194 guid];
          if (v196)
          {
            v197 = v196;
            v198 = sub_22B7DB6A8();
            v200 = v199;
          }

          else
          {

            v198 = 0;
            v200 = 0;
          }

          v491[0] = v192;
          v202 = *v192->messageStore;
          v201 = *v192->chatRegistry;
          if (v202 >= v201 >> 1)
          {
            sub_22B7AB8E4((v201 > 1), v202 + 1, 1);
            v192 = v491[0];
          }

          ++v193;
          *v192->messageStore = v202 + 1;
          v203 = v192 + 16 * v202;
          *(v203 + 4) = v198;
          *(v203 + 5) = v200;
          v66 = v488;
        }

        while (v169 != v193);
      }

      v484 = sub_22B77A374(v192);
      v192, v204, v205, v206, v207, v208, v209, v210, v453, v466;
      v0 = MEMORY[0x277D84F90];
      if (v169)
      {
        v491[0] = MEMORY[0x277D84F90];
        sub_22B7AB8E4(0, v169 & ~(v169 >> 63), 0);
        if (v169 < 0)
        {
LABEL_151:
          __break(1u);
LABEL_152:

          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        v211 = 0;
        v0 = v491[0];
        do
        {
          if ((v168 & 0xC000000000000001) != 0)
          {
            v212 = MEMORY[0x231895C80](v211, v168);
          }

          else
          {
            v212 = *(v168 + 8 * v211 + 32);
          }

          v213 = v212;
          v214 = [v212 originalGUID];
          if (v214)
          {
            v215 = v214;
            v216 = sub_22B7DB6A8();
            v218 = v217;
          }

          else
          {

            v216 = 0;
            v218 = 0;
          }

          v491[0] = v0;
          v220 = *v0->messageStore;
          v219 = *v0->chatRegistry;
          if (v220 >= v219 >> 1)
          {
            sub_22B7AB8E4((v219 > 1), v220 + 1, 1);
            v0 = v491[0];
          }

          ++v211;
          *v0->messageStore = v220 + 1;
          v221 = v0 + 16 * v220;
          *(v221 + 4) = v216;
          *(v221 + 5) = v218;
        }

        while (v169 != v211);
      }

      v482 = sub_22B77A374(v0);
      v0, v222, v223, v224, v225, v226, v227, v228, v454, v467;
      if (v490)
      {
        v168 = 0;
        queue = v66->queue;
        isFirstFire = v484->isFirstFire;
        v237 = v482->isFirstFire;
        *&v236 = 136315394;
        v449 = v236;
        do
        {
          if (v168 >= *v66->messageStore)
          {
            goto LABEL_144;
          }

          v238 = &queue[16 * v168];
          if (*v484->messageStore)
          {
            v240 = *v238;
            v239 = v238[1];
            sub_22B7DC668();
            sub_22B7DC688();

            sub_22B7DB758();
            v241 = sub_22B7DC6B8();
            v249 = -1 << v484->queue[0];
            v250 = v241 & ~v249;
            if ((*(&isFirstFire->super.isa + ((v250 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v250))
            {
              v251 = ~v249;
              v252 = *v484->blocklistObserver;
              while (1)
              {
                v253 = (v252 + 16 * v250);
                v242 = v253[1];
                if (v242)
                {
                  v254 = *v253 == v240 && v242 == v239;
                  if (v254 || (sub_22B7DC518() & 1) != 0)
                  {
                    break;
                  }
                }

                v250 = (v250 + 1) & v251;
                if (((*(&isFirstFire->super.isa + ((v250 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v250) & 1) == 0)
                {
                  goto LABEL_97;
                }
              }

              v239, v242, v243, v244, v245, v246, v247, v248, v449, *(&v449 + 1);

              v0 = sub_22B7DB298();
              v255 = sub_22B7DBC88();
              v66, v256, v257, v258, v259, v260, v261, v262, v455, v468;
              if (os_log_type_enabled(&v0->super, v255))
              {
                v263 = swift_slowAlloc();
                v264 = swift_slowAlloc();
                v491[0] = v264;
                *v263 = 136315138;
                v265 = *v238;
                v266 = v238[1];

                v267 = sub_22B4CFAAC(v265, v266, v491);
                v266, v268, v269, v270, v271, v272, v273, v274, v449, *(&v449 + 1);
                *(v263 + 4) = v267;
                v275 = v255;
                p_super = &v0->super;
                v277 = "Matching guid (%s) found in transfers.";
                goto LABEL_81;
              }

              goto LABEL_82;
            }

LABEL_97:
            v239, v242, v243, v244, v245, v246, v247, v248, v449, *(&v449 + 1);
          }

          if (*v482->messageStore)
          {
            v279 = *v238;
            v278 = v238[1];
            sub_22B7DC668();
            sub_22B7DC688();

            sub_22B7DB758();
            v280 = sub_22B7DC6B8();
            v288 = -1 << v482->queue[0];
            v289 = v280 & ~v288;
            if ((*&v237[(v289 >> 3) & 0xFFFFFFFFFFFFFF8] >> v289))
            {
              v290 = ~v288;
              v291 = *v482->blocklistObserver;
              while (1)
              {
                v292 = (v291 + 16 * v289);
                v281 = v292[1];
                if (v281)
                {
                  v293 = *v292 == v279 && v281 == v278;
                  if (v293 || (sub_22B7DC518() & 1) != 0)
                  {
                    break;
                  }
                }

                v289 = (v289 + 1) & v290;
                if (((*&v237[(v289 >> 3) & 0xFFFFFFFFFFFFFF8] >> v289) & 1) == 0)
                {
                  goto LABEL_110;
                }
              }

              v278, v281, v282, v283, v284, v285, v286, v287, v449, *(&v449 + 1);

              v0 = sub_22B7DB298();
              v294 = sub_22B7DBC88();
              v66, v295, v296, v297, v298, v299, v300, v301, v456, v469;
              if (os_log_type_enabled(&v0->super, v294))
              {
                v263 = swift_slowAlloc();
                v264 = swift_slowAlloc();
                v491[0] = v264;
                *v263 = 136315138;
                v302 = *v238;
                v303 = v238[1];

                v304 = sub_22B4CFAAC(v302, v303, v491);
                v303, v305, v306, v307, v308, v309, v310, v311, v449, *(&v449 + 1);
                *(v263 + 4) = v304;
                v275 = v294;
                p_super = &v0->super;
                v277 = "Matching original guid (%s) found in transfers.";
                goto LABEL_81;
              }

              goto LABEL_82;
            }

LABEL_110:
            v278, v281, v282, v283, v284, v285, v286, v287, v449, *(&v449 + 1);
          }

          v66 = v489;
          if (v490 != (*(&v489->super.isa + v486))[2])
          {
            v66 = v488;

            v0 = sub_22B7DB298();
            v344 = sub_22B7DBC78();
            v488, v345, v346, v347, v348, v349, v350, v351, v449, *(&v449 + 1);
            if (os_log_type_enabled(&v0->super, v344))
            {
              v263 = swift_slowAlloc();
              v264 = swift_slowAlloc();
              v491[0] = v264;
              *v263 = 136315138;
              v352 = *v238;
              v353 = v238[1];

              v354 = sub_22B4CFAAC(v352, v353, v491);
              v353, v355, v356, v357, v358, v359, v360, v361, v449, *(&v449 + 1);
              *(v263 + 4) = v354;
              v275 = v344;
              p_super = &v0->super;
              v277 = "No matching guid or original guid found in transfers for guid: %s";
LABEL_81:
              _os_log_impl(&dword_22B4CC000, p_super, v275, v277, v263, 0xCu);
              sub_22B4CFB78(v264);
              MEMORY[0x231898D60](v264, -1, -1);
              MEMORY[0x231898D60](v263, -1, -1);
            }

LABEL_82:

            goto LABEL_83;
          }

          v312 = v489;

          v0 = sub_22B7DB298();
          v313 = sub_22B7DBC78();

          v488, v314, v315, v316, v317, v318, v319, v320, v449, *(&v449 + 1);
          if (os_log_type_enabled(&v0->super, v313))
          {
            v321 = swift_slowAlloc();
            v322 = swift_slowAlloc();
            v491[0] = v322;
            *v321 = v449;
            v323 = *v238;
            v324 = v238[1];

            v159 = sub_22B4CFAAC(v323, v324, v491);
            v324, v325, v326, v327, v328, v329, v330, v331, v449, *(&v449 + 1);
            *(v321 + 4) = v159;
            *(v321 + 12) = 2080;
            v332 = *(&v489->super.isa + v486);
            if (v168 >= *(v332 + 16))
            {
              __break(1u);
              goto LABEL_148;
            }

            v333 = v332 + 16 * v168;
            v334 = *(v333 + 32);
            v335 = *(v333 + 40);

            v336 = sub_22B4CFAAC(v334, v335, v491);
            v335, v337, v338, v339, v340, v341, v342, v343, v449, *(&v449 + 1);
            *(v321 + 14) = v336;
            _os_log_impl(&dword_22B4CC000, &v0->super, v313, "No matching guid or original guid found in transfers for guid: %s attachmentPath: %s", v321, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v322, -1, -1);
            MEMORY[0x231898D60](v321, -1, -1);
          }

          v66 = v488;
LABEL_83:
          ++v168;
        }

        while (v168 != v490);
      }

      v484, v229, v230, v231, v232, v233, v234, v235, v449, *(&v449 + 1);
      v482, v362, v363, v364, v365, v366, v367, v368, v457, v470;
      isFirstFire = v489;
      v168 = v487;
    }

    v0 = isFirstFire;
    sub_22B71A794();
    if (v478)
    {
      v376 = sub_22B7DC1C8();
      if (!v376)
      {
LABEL_136:
        v488, v369, v370, v371, v372, v373, v374, v375, v449, *(&v449 + 1);

        sub_22B71CC10();
        v168, v399, v400, v401, v402, v403, v404, v405, v458, v471;
        v406 = *(&isFirstFire->super.isa + v486);
        v407 = MEMORY[0x277D84F90];
        *(&isFirstFire->super.isa + v486) = MEMORY[0x277D84F90];
        v406, v408, v409, v410, v411, v412, v413, v414, v459, v472;
        v415 = OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents;
        swift_beginAccess();
        v416 = *(&isFirstFire->super.isa + v415);
        *(&isFirstFire->super.isa + v415) = v407;
        v416, v417, v418, v419, v420, v421, v422, v423, v460, v473;
        v424 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures;
        swift_beginAccess();
        v425 = *(&isFirstFire->super.isa + v424);
        *(&isFirstFire->super.isa + v424) = v407;
        v425, v426, v427, v428, v429, v430, v431, v432, v461, v474;
        v433 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths;
        swift_beginAccess();
        v434 = *(&isFirstFire->super.isa + v433);
        *(&isFirstFire->super.isa + v433) = v407;
        v434, v435, v436, v437, v438, v439, v440, v441, v462, v475;
        v442 = [(IMDScheduledMessageCoordinator *)isFirstFire delegate];
        if (v442)
        {
          [v442 batchCompletedWithTransfers_];

          swift_unknownObjectRelease();
          v443 = &unk_27D8CD000;
          v444 = v476;
        }

        else
        {

          v444 = v477;
          v443 = &unk_27D8CD000;
        }

        v445 = v443[308];
        v446 = *(&isFirstFire->super.isa + v445);
        v447 = __OFADD__(v446, 1);
        v448 = (v446 + 1);
        if (!v447)
        {
          *(&isFirstFire->super.isa + v445) = v448;
          return;
        }

        __break(1u);
        goto LABEL_150;
      }
    }

    else
    {
      v376 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v376)
      {
        goto LABEL_136;
      }
    }

    v377 = 0;
    v378 = v168 & 0xC000000000000001;
    v481 = v168 & 0xFFFFFFFFFFFFFF8;
    v483 = v168 & 0xC000000000000001;
    v485 = v376;
    while (1)
    {
      if (v378)
      {
        v379 = MEMORY[0x231895C80](v377, v168);
        v380 = v377 + 1;
        if (__OFADD__(v377, 1))
        {
          goto LABEL_142;
        }
      }

      else
      {
        if (v377 >= *(v481 + 16))
        {
          goto LABEL_145;
        }

        v379 = *(v168 + 8 * v377 + 32);
        v380 = v377 + 1;
        if (__OFADD__(v377, 1))
        {
          goto LABEL_142;
        }
      }

      v381 = v379;
      v382 = sub_22B7DB298();
      v383 = sub_22B7DBC78();
      if (os_log_type_enabled(v382, v383))
      {
        v384 = swift_slowAlloc();
        v385 = swift_slowAlloc();
        v491[0] = v385;
        *v384 = 136315138;
        v386 = [v381 guid];

        if (!v386)
        {
          goto LABEL_153;
        }

        v387 = sub_22B7DB6A8();
        v389 = v388;

        v390 = sub_22B4CFAAC(v387, v389, v491);
        v389, v391, v392, v393, v394, v395, v396, v397, v449, *(&v449 + 1);
        *(v384 + 4) = v390;
        _os_log_impl(&dword_22B4CC000, v382, v383, "updating transfer with guid %s as waiting for accept.", v384, 0xCu);
        sub_22B4CFB78(v385);
        MEMORY[0x231898D60](v385, -1, -1);
        MEMORY[0x231898D60](v384, -1, -1);

        isFirstFire = v489;
        v168 = v487;
        v378 = v483;
        v376 = v485;
      }

      else
      {
      }

      v398 = [objc_opt_self() sharedInstance];
      if (!v398)
      {
        goto LABEL_152;
      }

      v0 = v398;
      [(IMDScheduledMessageCoordinator *)v398 updateTransferAsWaitingForAccept:v381];

      ++v377;
      if (v380 == v376)
      {
        goto LABEL_136;
      }
    }
  }

  v181 = v156;
  v66, v160, v161, v162, v163, v164, v165, v166, v449, *(&v449 + 1);

  v182 = sub_22B7DB298();
  v183 = sub_22B7DBC98();
  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    *v184 = 0;
    _os_log_impl(&dword_22B4CC000, v182, v183, "Found no transfers!", v184, 2u);
    MEMORY[0x231898D60](v184, -1, -1);
  }
}

void sub_22B71A794()
{
  v111[6] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  if (v2)
  {
    v109 = OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents;
    v110 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures;

    membershipObserver = v107->membershipObserver;
    v4 = &off_278709000;
    while (1)
    {
      v13 = *(membershipObserver - 1);
      v12 = *membershipObserver;

      v14 = sub_22B7DB678();
      v15 = [v14 v4[489]];

      if (v15)
      {
        break;
      }

      v12, v16, v17, v18, v19, v20, v21, v22, v105, v107;
LABEL_4:
      membershipObserver += 2;
      if (!--v2)
      {
        v107, v5, v6, v7, v8, v9, v10, v11, v105, v107;
        return;
      }
    }

    v23 = sub_22B7DB678();
    v24 = [v23 im_livePhotoImagePath];

    if (v24)
    {
      v25 = sub_22B7DB6A8();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v28 = sub_22B7DB678();
    v29 = [v28 im_livePhotoVideoPath];

    if (v29)
    {
      v37 = sub_22B7DB6A8();
      v39 = v38;

      if (!v27)
      {
        if (v39)
        {
          v25 = v37;
LABEL_16:
          v40 = [objc_opt_self() defaultManager];
          v41 = sub_22B7DB678();
          v111[0] = 0;
          v42 = [v40 removeItemAtPath:v41 error:v111];

          if (v42)
          {
            v43 = v111[0];
            v12, v44, v45, v46, v47, v48, v49, v50, v105, v107;
            swift_beginAccess();
            v51 = *(v0 + v109);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + v109) = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v51 = sub_22B71BD80(0, *v51->messageStore + 1, 1, v51, v53, v54, v55, v56);
              *(v0 + v109) = v51;
            }

            v58 = *v51->messageStore;
            v57 = *v51->chatRegistry;
            if (v58 >= v57 >> 1)
            {
              v51 = sub_22B71BD80((v57 > 1), v58 + 1, 1, v51, v53, v54, v55, v56);
            }

            *v51->messageStore = v58 + 1;
            v59 = v51 + 16 * v58;
            *(v59 + 4) = v25;
            *(v59 + 5) = v39;
            *(v0 + v109) = v51;
            swift_endAccess();
            goto LABEL_33;
          }

          v60 = v111[0];
          v39, v61, v62, v63, v64, v65, v66, v67, v105, v107;
          v68 = sub_22B7DA6F8();

          swift_willThrow();
          swift_beginAccess();
          v69 = *(v0 + v110);

          v70 = v68;
          v71 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v110) = v69;
          if ((v71 & 1) == 0)
          {
            v69 = sub_22B71C0BC(0, *v69->messageStore + 1, 1, v69, v72, v73, v74, v75);
            *(v0 + v110) = v69;
          }

          v77 = *v69->messageStore;
          v76 = *v69->chatRegistry;
          if (v77 >= v76 >> 1)
          {
            v69 = sub_22B71C0BC((v76 > 1), v77 + 1, 1, v69, v72, v73, v74, v75);
          }

          *v69->messageStore = v77 + 1;
          v78 = &v69->super.isa + 3 * v77;
          v78[4] = v13;
          v78[5] = v12;
          v78[6] = v68;
          *(v0 + v110) = v69;
          swift_endAccess();
          v12, v79, v80, v81, v82, v83, v84, v85, v106, v108;
          v86 = v68;
LABEL_32:

LABEL_33:
          v4 = &off_278709000;
          goto LABEL_4;
        }

LABEL_27:
        sub_22B71CE50();
        v87 = swift_allocError();
        swift_beginAccess();
        v88 = *(v0 + v110);

        v89 = v87;
        v90 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + v110) = v88;
        if ((v90 & 1) == 0)
        {
          v88 = sub_22B71C0BC(0, *v88->messageStore + 1, 1, v88, v91, v92, v93, v94);
          *(v0 + v110) = v88;
        }

        v96 = *v88->messageStore;
        v95 = *v88->chatRegistry;
        if (v96 >= v95 >> 1)
        {
          v88 = sub_22B71C0BC((v95 > 1), v96 + 1, 1, v88, v91, v92, v93, v94);
        }

        *v88->messageStore = v96 + 1;
        v97 = &v88->super.isa + 3 * v96;
        v97[4] = v13;
        v97[5] = v12;
        v97[6] = v87;
        *(v0 + v110) = v88;
        swift_endAccess();
        v12, v98, v99, v100, v101, v102, v103, v104, v105, v107;
        v86 = v87;
        goto LABEL_32;
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_27;
      }

      v39 = 0;
    }

    v39, v30, v31, v32, v33, v34, v35, v36, v105, v107;
    v39 = v27;
    goto LABEL_16;
  }
}

void sub_22B71AC4C()
{
  v1 = v0;
  v2 = OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = *v3->messageStore;
  if (v4)
  {
    if (v4 >= 3)
    {
      v4 = 3;
    }

    v54[0] = *&v0[v2];
    v54[2] = 0;
    v54[3] = ((2 * v4) | 1);

    sub_22B6F0AD4(&qword_27D8CDA90, &qword_22B7FA0C8);
    sub_22B714FD8(&qword_27D8CDA98, &qword_27D8CDA90, &qword_22B7FA0C8, MEMORY[0x277D83FA0]);
    v5 = sub_22B7DB5F8();
    v7 = v6;
    v3, v6, v8, v9, v10, v11, v12, v13, v51, v54[0];
    v54[1] = 0xE100000000000000;
    MEMORY[0x231895140](v5, v7);
    v7, v14, v15, v16, v17, v18, v19, v20, v52, 0xA;
    MEMORY[0x231895140](10, 0xE100000000000000);
    v22 = v54[0];
    v21 = 0xE100000000000000;
  }

  else
  {
    v22 = 0;
    v21 = 0xE000000000000000;
  }

  if (qword_27D8CCC10 != -1)
  {
    swift_once();
  }

  v23 = sub_22B7DB2B8();
  sub_22B4CFA74(v23, qword_27D8CD980);
  v24 = v0;

  v25 = sub_22B7DB298();
  v26 = sub_22B7DBC78();
  v21, v27, v28, v29, v30, v31, v32, v33, v51, v54[0];
  if (os_log_type_enabled(v25, v26))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v54[0] = v42;
    *v41 = 134218242;
    *(v41 + 4) = *(*&v1[v2] + 16);

    *(v41 + 12) = 2080;
    v43 = sub_22B4CFAAC(v22, v21, v54);
    v21, v44, v45, v46, v47, v48, v49, v50, v53, v54[0];
    *(v41 + 14) = v43;
    _os_log_impl(&dword_22B4CC000, v25, v26, "Deleted %ld matching live photo components:%s", v41, 0x16u);
    sub_22B4CFB78(v42);
    MEMORY[0x231898D60](v42, -1, -1);
    MEMORY[0x231898D60](v41, -1, -1);
  }

  else
  {
    v21, v34, v35, v36, v37, v38, v39, v40, v53, v54[0];
  }
}

void sub_22B71AEE4()
{
  v1 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v72 = MEMORY[0x277D84F90];

    sub_22B7AB6B4(0, v3, 0);
    v4 = v72;
    v64 = v2;
    v5 = (v2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v71[0] = 0;
      v71[1] = 0xE000000000000000;

      v9 = v8;
      sub_22B7DC2E8();
      MEMORY[0x231895140](0x203A68746170, 0xE600000000000000);
      MEMORY[0x231895140](v7, v6);
      MEMORY[0x231895140](0x727265203E2D2D20, 0xEC000000203A726FLL);
      sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
      sub_22B7DC428();
      v6, v10, v11, v12, v13, v14, v15, v16, v64, v8;

      v72 = v4;
      v25 = *v4->messageStore;
      v24 = *v4->chatRegistry;
      if (v25 >= v24 >> 1)
      {
        sub_22B7AB6B4((v24 > 1), v25 + 1, 1);
        v4 = v72;
      }

      *v4->messageStore = v25 + 1;
      v26 = v4 + 16 * v25;
      *(v26 + 4) = 0;
      *(v26 + 5) = 0xE000000000000000;
      v5 += 3;
      --v3;
    }

    while (v3);
    v64, v17, v18, v19, v20, v21, v22, v23, v64, v68;
  }

  v71[0] = v4;
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B714FD8(&qword_28141F2C8, &unk_27D8CE9E0, &qword_22B7F99B0, MEMORY[0x277D83958]);
  v27 = sub_22B7DB5F8();
  v29 = v28;
  v4, v28, v30, v31, v32, v33, v34, v35, v63, v67;
  if (qword_27D8CCC10 != -1)
  {
    swift_once();
  }

  v36 = sub_22B7DB2B8();
  sub_22B4CFA74(v36, qword_27D8CD980);

  v37 = sub_22B7DB298();
  v38 = sub_22B7DBC78();
  v29, v39, v40, v41, v42, v43, v44, v45, v65, v69;
  if (os_log_type_enabled(v37, v38))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v71[0] = v54;
    *v53 = 136315138;
    v55 = sub_22B4CFAAC(v27, v29, v71);
    v29, v56, v57, v58, v59, v60, v61, v62, v66, v70;
    *(v53 + 4) = v55;
    _os_log_impl(&dword_22B4CC000, v37, v38, "Errors:\n%s", v53, 0xCu);
    sub_22B4CFB78(v54);
    MEMORY[0x231898D60](v54, -1, -1);
    MEMORY[0x231898D60](v53, -1, -1);
  }

  else
  {
    v29, v46, v47, v48, v49, v50, v51, v52, v66, v70;
  }
}

id IMPurgedAttachmentHandler.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

IMDScheduledMessageCoordinator *sub_22B71B35C(IMDScheduledMessageCoordinator *result, int64_t a2, char a3, IMDScheduledMessageCoordinator *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->chatRegistry;
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

  v8 = *a4->messageStore;
  if (v7 <= v8)
  {
    v9 = *a4->messageStore;
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22B6F0AD4(&qword_27D8CD618, &qword_22B7F95F8);
  v10 = *(sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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

  *v13->messageStore = v8;
  *v13->chatRegistry = 2 * ((result - v12) / v11);
LABEL_19:
  v16 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v21 = *(v16 - 1);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = a4 + v22;
  if (v5)
  {
    if (v13 < a4 || v13 + v22 >= &v23[*(v21 + 72) * v8])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v23, v15, v16, v17, v18, v19, v20, v24, v25;
  return v13;
}

IMDScheduledMessageCoordinator *sub_22B71B560(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CD9F0, &qword_22B7FA008);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->messageStore = v12;
    *v14->chatRegistry = (v15 - 32 + ((v15 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v17 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v17[2 * v12])
    {
      memmove(queue, v17, 2 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    memcpy(queue, v17, 2 * v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8, v19, v20;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71B65C(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CD9F8, &qword_22B7FA010);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 29;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 2);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[4 * v12])
    {
      memmove(queue, v18, 4 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    memcpy(queue, v18, 4 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71B760(IMDScheduledMessageCoordinator *result, const char *a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CDA00, &unk_22B7FA018);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14->queue >= &a4->queue[40 * v12])
    {
      memmove(v14->queue, a4->queue, 40 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD638, &qword_22B7F9740);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8, v17, v18;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71B8F4(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[8 * v12])
    {
      memmove(queue, v18, 8 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    memcpy(queue, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71BA28(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[32 * v12])
    {
      memmove(queue, v18, 32 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71BB34(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CDA58, &qword_22B7FA088);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[16 * v12])
    {
      memmove(queue, v18, 16 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    memcpy(queue, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71BC38(IMDScheduledMessageCoordinator *result, const char *a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CDA60, &unk_22B7FA098);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14->queue >= &a4->queue[24 * v12])
    {
      memmove(v14->queue, a4->queue, 24 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD650, &unk_22B7F9750);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8, v17, v18;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71BD80(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[16 * v12])
    {
      memmove(queue, v18, 16 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71BEAC(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CDA30, &unk_22B7FA050);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 + 31;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 6);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[64 * v12])
    {
      memmove(queue, v18, v12 << 6);
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71BFB8(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CD9D8, &qword_22B7F9FF0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[16 * v12])
    {
      memmove(queue, v18, 16 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    memcpy(queue, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71C0BC(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CDAA8, &unk_22B7FA0D0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v17 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v17[24 * v12])
    {
      memmove(queue, v17, 24 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8, v19, v20;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71C1DC(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CDA68, &qword_22B7FA0A8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[32 * v12])
    {
      memmove(queue, v18, 32 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71C2E8(IMDScheduledMessageCoordinator *result, const char *a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CDA38, &qword_22B7FA068);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14->queue >= &a4->queue[16 * v12])
    {
      memmove(v14->queue, a4->queue, 16 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CDA40, &qword_22B7FA070);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8, v18, v19;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71C41C(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CDA78, &qword_22B7FA0B8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[32 * v12])
    {
      memmove(queue, v18, 32 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71C564(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 29;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 2);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[4 * v12])
    {
      memmove(queue, v18, 4 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    memcpy(queue, v18, 4 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71C684(IMDScheduledMessageCoordinator *result, const char *a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *a4->chatRegistry;
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->messageStore;
  if (v13 <= v14)
  {
    v15 = *a4->messageStore;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_22B6F0AD4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    *v16->messageStore = v14;
    *v16->chatRegistry = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16->queue >= &a4->queue[24 * v14])
    {
      memmove(v16->queue, a4->queue, 24 * v14);
    }

    *a4->messageStore = 0;
  }

  else
  {
    sub_22B6F0AD4(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8, v19, v20;
  return v16;
}

IMDScheduledMessageCoordinator *sub_22B71C7CC(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CD9E8, &qword_22B7FA000);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[16 * v12])
    {
      memmove(queue, v18, 16 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

IMDScheduledMessageCoordinator *sub_22B71C900(IMDScheduledMessageCoordinator *result, int64_t a2, char a3, IMDScheduledMessageCoordinator *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22B6F0AD4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *v17->messageStore = v12;
  *v17->chatRegistry = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 1);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = a4 + v26;
  if (v9)
  {
    if (v17 < a4 || v17 + v26 >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24, v28, v29;
  return v17;
}

IMDScheduledMessageCoordinator *sub_22B71CADC(IMDScheduledMessageCoordinator *result, int64_t a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->chatRegistry;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->messageStore;
  if (v11 <= v12)
  {
    v13 = *a4->messageStore;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_22B6F0AD4(&qword_27D8CD9E0, &qword_22B7F9FF8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->messageStore = v12;
    *v14->chatRegistry = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  queue = v14->queue;
  v18 = a4->queue;
  if (v9)
  {
    if (v14 != a4 || queue >= &v18[16 * v12])
    {
      memmove(queue, v18, 16 * v12);
    }

    *a4->messageStore = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8, v20, v21;
  return v14;
}

void sub_22B71CC10()
{
  if (qword_27D8CCC10 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_27D8CD980);
  v2 = v0;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + OBJC_IVAR___IMPurgedAttachmentHandler_currentBatch);

    _os_log_impl(&dword_22B4CC000, v3, v4, "Finished processing batch %ld.", v5, 0xCu);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  v6 = v2;
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC78();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths;
    swift_beginAccess();
    v12 = *(&v6->isa + v11);

    v14 = MEMORY[0x2318952A0](v13, MEMORY[0x277D837D0]);
    v16 = v15;
    v12, v15, v17, v18, v19, v20, v21, v22, v31, v33;
    v23 = sub_22B4CFAAC(v14, v16, &v35);
    v16, v24, v25, v26, v27, v28, v29, v30, v32, v34;
    *(v9 + 4) = v23;
    _os_log_impl(&dword_22B4CC000, v7, v8, "Ignored %s live photo bundles or bundle components.", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  sub_22B71AC4C();
  sub_22B71AEE4();
}

unint64_t sub_22B71CE50()
{
  result = qword_27D8CDAA0;
  if (!qword_27D8CDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CDAA0);
  }

  return result;
}

uint64_t sub_22B71CEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22B71CEEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15ProcessingErrorOwet(unsigned int *a1, int a2)
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

_WORD *_s15ProcessingErrorOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_22B71D028()
{
  result = qword_27D8CDAC8;
  if (!qword_27D8CDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CDAC8);
  }

  return result;
}

uint64_t sub_22B71D07C()
{
  sub_22B7DC668();
  sub_22B7DB758();
  return sub_22B7DC6B8();
}

uint64_t sub_22B71D100(uint64_t a1)
{
  sub_22B7DC668();
  sub_22B7DB758();
  return sub_22B7DC6B8();
}

void sub_22B71D15C(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_22B7DC4B8();
  v3, v5, v6, v7, v8, v9, v10, v11, v12, v13;
  *a2 = v4 != 0;
}

void IMDChatStore.batchOfRecordIDsToDelete(limit:)(uint64_t a1)
{
  v4 = [v1 recordZoneID];
  if (!v4)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v10 = sub_22B7DB2B8();
    sub_22B4CFA74(v10, qword_281422608);
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBC98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v11, v12, "No chat record zone ID present!", v13, 2u);
      MEMORY[0x231898D60](v13, -1, -1);
    }

    v14 = [objc_opt_self() sharedInstance];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22B7DB678();
      sub_22B71DB80();
      v17 = swift_allocError();
      v18 = sub_22B7DA6E8();

      v19 = sub_22B7DB678();
      [v15 forceAutoBugCaptureWithSubType:v16 errorPayload:v18 type:v19 context:0];

      sub_22B71E2E4(MEMORY[0x277D84F90]);
      return;
    }

    __break(1u);
LABEL_26:
    __break(1u);

    v3, v33, v34, v35, v36, v37, v38, v39, v47, v49;
    v50, v40, v41, v42, v43, v44, v45, v46, v48, v49;
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v1 record1ZoneID];
  if (!v6)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v20 = sub_22B7DB2B8();
    sub_22B4CFA74(v20, qword_281422608);
    v21 = sub_22B7DB298();
    v22 = sub_22B7DBC98();
    if (os_log_type_enabled(v21, v22))
    {
      v3 = swift_slowAlloc();
      LOWORD(v3->super.isa) = 0;
      _os_log_impl(&dword_22B4CC000, v21, v22, "No chat1 record zone ID present!", v3, 2u);
      MEMORY[0x231898D60](v3, -1, -1);
    }

    v23 = [objc_opt_self() sharedInstance];
    if (v23)
    {
      v24 = v23;
      v25 = sub_22B7DB678();
      sub_22B71DB80();
      v26 = swift_allocError();
      v27 = sub_22B7DA6E8();

      v28 = sub_22B7DB678();
      [v24 forceAutoBugCaptureWithSubType:v25 errorPayload:v27 type:v28 context:0];

      sub_22B71E2E4(MEMORY[0x277D84F90]);
      return;
    }

    goto LABEL_26;
  }

  v7 = v6;
  v8 = IMDChatCopyChatRecordIDsAndGUIDsToDeleteWithLimit();
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
      sub_22B7DB908();
    }
  }

  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v29 = sub_22B7DB2B8();
  sub_22B4CFA74(v29, qword_281422608);
  v30 = sub_22B7DB298();
  v31 = sub_22B7DBC98();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22B4CC000, v30, v31, "Received nil recordIDsByGUIDs from IMDPersistence returning nil for batchOfRecordIDsToDelete for DeletedChatStore.", v32, 2u);
    MEMORY[0x231898D60](v32, -1, -1);
  }

  sub_22B71E2E4(MEMORY[0x277D84F90]);
}

void sub_22B71D808(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_22B7DC248();
  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v8 = sub_22B4D7EC0(v42);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_22B4D1F68(*(v7 + 56) + 32 * v8, v43);
  sub_22B4DA138(v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  sub_22B7DC248();
  if (!*(v7 + 16) || (v17 = sub_22B4D7EC0(v42), (v10 & 1) == 0))
  {
    0xE800000000000000, v10, v11, v12, v13, v14, v15, v16, v41, 0x64697567;
LABEL_11:
    sub_22B4DA138(v42);
    return;
  }

  sub_22B4D1F68(*(v7 + 56) + 32 * v17, v43);
  sub_22B4DA138(v42);
  if (swift_dynamicCast())
  {
    v25 = sub_22B71EB8C(1684632935, 0xE400000000000000, a3, a4);
    sub_22B71EEC0();
    v26 = v25;
    v27 = sub_22B7DBC48();
    v28 = v27;
    if (*(*a1 + 16) && (sub_22B7237AC(v27), (v29 & 1) != 0))
    {
      0xE400000000000000, v29, v30, v31, v32, v33, v34, v35, v41, 0x64697567;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = *a1;
      sub_22B768B6C(1684632935, 0xE400000000000000, v28, isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v41, 0x64697567);

      *a1 = v42[0];
    }
  }

  else
  {
    0xE800000000000000, v18, v19, v20, v21, v22, v23, v24, v41, 0x64697567;
  }
}

unint64_t sub_22B71DB80()
{
  result = qword_27D8CDAD0;
  if (!qword_27D8CDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CDAD0);
  }

  return result;
}

unint64_t sub_22B71DBD4(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CDBA0, &qword_22B7FA3A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_22B6F0AD4(&unk_27D8CF760, &unk_22B7FA3B0);
    v7 = sub_22B7DC488();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_22B4D7E58(v9, v5, &unk_27D8CDBA0, &qword_22B7FA3A8);
      v11 = *v5;
      result = sub_22B725570();
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
      result = sub_22B71EE58(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71DDAC(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CDB90, &qword_22B7FA398);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_22B6F0AD4(&qword_27D8CDB98, &qword_22B7FA3A0);
    v7 = sub_22B7DC488();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_22B4D7E58(v9, v5, &qword_27D8CDB90, &qword_22B7FA398);
      v11 = *v5;
      result = sub_22B725570();
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer(0);
      result = sub_22B71EE58(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71DF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
    v3 = sub_22B7DC488();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B4D7E58(v4, &v13, &qword_27D8CDB60, &qword_22B7FA360);
      v5 = v13;
      v6 = v14;
      result = sub_22B723648(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22B4D7F04(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71E0C8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22B6F0AD4(&qword_27D8CDB88, &qword_22B7FA390);
  v3 = sub_22B7DC488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = sub_22B7235C8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v15 = *v9;
    v16 = v6;
    result = sub_22B7235C8(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B71E1E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CDB80, &qword_22B7FA388);
    v3 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_22B723648(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71E2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CF770, &qword_22B7FA3F8);
    v3 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_22B7237AC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71E3E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22B6F0AD4(&qword_27D8CDB50, &qword_22B7FA350);
  v3 = sub_22B7DC488();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_22B725570();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_22B725570();
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B71E4F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_22B6F0AD4(a2, a3);
    v5 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22B723648(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71E5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CDBC0, &qword_22B7FA3C8);
    v3 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B723648(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_22B71E700(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22B6F0AD4(&qword_27D8CDBB0, &unk_22B7FD3B0);
  v3 = sub_22B7DC488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22B7235C8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22B7235C8(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_22B71E81C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22B6F0AD4(&unk_27D8CF750, &unk_22B7FA378);
  v3 = sub_22B7DC488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22B7235C8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22B7235C8(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B71E938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CDB68, &qword_22B7FA368);
    v3 = sub_22B7DC488();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B4D7E58(v4, &v15, &unk_27D8CDB70, &qword_22B7FA370);
      v5 = v15;
      v6 = v16;
      result = sub_22B723648(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71EA90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_22B6F0AD4(a2, a3);
    v5 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_22B723648(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22B71EB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22B7DB6A8();
  v8 = v7;
  v29 = v6;
  v31 = v7;
  sub_22B704B70();
  v9 = sub_22B7DC0F8();
  v8, v10, v11, v12, v13, v14, v15, v16, v29, v31;
  if ((v9 & 1) == 0)
  {
    v17 = sub_22B7DB6A8();
    v19 = v18;
    v30 = v17;
    v32 = v18;
    v20 = sub_22B7DC0F8();
    v19, v21, v22, v23, v24, v25, v26, v27, v30, v32;
    if ((v20 & 1) == 0)
    {
      return a4;
    }
  }

  return a3;
}

uint64_t _sSo12IMDChatStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(IMDScheduledMessageCoordinator *a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  a1, v5, v6, v7, v8, v9, v10, v11, v27, v29;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    v14 = sub_22B71EEC0();
    v15 = MEMORY[0x2318952A0](a1, v14);
    v17 = v16;
    v18 = sub_22B4CFAAC(v15, v16, &v29);
    v17, v19, v20, v21, v22, v23, v24, v25, v28, v29;
    *(v12 + 4) = v18;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing chat tombstones for recordIDs: %s", v12, 0xCu);
    sub_22B4CFB78(v13);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  return IMDChatClearPendingDeleteChatsTable();
}

unint64_t sub_22B71EE04()
{
  result = qword_27D8CDB40;
  if (!qword_27D8CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CDB40);
  }

  return result;
}

uint64_t sub_22B71EE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22B71EEC0()
{
  result = qword_28141F2A8;
  if (!qword_28141F2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F2A8);
  }

  return result;
}

unint64_t sub_22B71EF0C()
{
  result = qword_28141F2A0;
  if (!qword_28141F2A0)
  {
    sub_22B71EEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2A0);
  }

  return result;
}

id ScheduledMessageStore.recordZoneID.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result scheduledMessageRecordZoneID];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ScheduledMessageStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScheduledMessageStore.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ScheduledMessageStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_22B71F280(uint64_t a1)
{
  v2 = v1;
  if (qword_28141F388 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422650);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Trying to Load Scheduled Message Records that need CK Sync", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v8 = [v2 scheduledMessagesBatchFetcherForSyncState_];
  [v8 setBatchSize_];
  v9 = [v8 nextBatch];
  sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
  v10 = sub_22B7DB918();

  v11 = sub_22B796DA8(v10);
  v10, v12, v13, v14, v15, v16, v17, v18, v20, v21;
  return v11;
}

uint64_t _s12IMDaemonCore21ScheduledMessageStoreC25recordIDsAndGUIDsToDelete9withLimitSaySDys11AnyHashableVypGGs5Int64V_tF_0(uint64_t a1)
{
  if (qword_28141F388 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422650);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Trying to Get RecordIDs & GUIDs to Delete", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = [objc_msgSend(objc_opt_self() synchronousDatabase)];
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v7 = sub_22B7DB918();

  return v7;
}

void _s12IMDaemonCore21ScheduledMessageStoreC15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(IMDScheduledMessageCoordinator *a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  a1, v5, v6, v7, v8, v9, v10, v11, v47, v50;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136315138;
    v14 = sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
    v15 = MEMORY[0x2318952A0](a1, v14);
    v17 = v16;
    v18 = sub_22B4CFAAC(v15, v16, &v50);
    v17, v19, v20, v21, v22, v23, v24, v25, v48, v50;
    *(v12 + 4) = v18;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing message tombstones for recordIDs: %s", v12, 0xCu);
    sub_22B4CFB78(v13);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  if (a1 >> 62)
  {
    v26 = sub_22B7DC1C8();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v50 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      return;
    }

    v28 = 0;
    v27 = v50;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x231895C80](v28, a1);
      }

      else
      {
        v29 = *&a1->queue[8 * v28];
      }

      v30 = v29;
      v31 = [v29 recordName];
      v32 = sub_22B7DB6A8();
      v34 = v33;

      v50 = v27;
      v36 = *v27->messageStore;
      v35 = *v27->chatRegistry;
      if (v36 >= v35 >> 1)
      {
        sub_22B7AB6B4((v35 > 1), v36 + 1, 1);
        v27 = v50;
      }

      ++v28;
      *v27->messageStore = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 4) = v32;
      *(v37 + 5) = v34;
    }

    while (v26 != v28);
  }

  v38 = [objc_opt_self() synchronousDatabase];
  v39 = sub_22B7DB8F8();
  v27, v40, v41, v42, v43, v44, v45, v46, v39, v50;
  [v38 deleteTombstonedScheduledMessagesWithRecordIDs_];
  swift_unknownObjectRelease();
}

uint64_t IncomingClientConnectionListener.machServiceName.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName);

  return v1;
}

id IncomingClientConnectionListener.init(machServiceName:allowedEntitlements:requestHandlers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v8 = sub_22B7DBD48();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_22B7DB398();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = OBJC_IVAR___IMDIncomingClientConnectionListener_clientConnectionWorkloop;
  v12 = sub_22B7DB678();
  v13 = IMDCreateWorkloop(v12);

  *&v5[v11] = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v15 = sub_22B7DB678();
  v16 = [v14 initWithMachServiceName_];

  sub_22B6F0AD4(&qword_27D8CDC08, &qword_22B7FA430);
  v25 = v16;
  v26 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84FA0];
  v17 = v16;
  sub_22B7DACD8();
  sub_22B7DACE8();
  MEMORY[0x231894670](&type metadata for IncomingClientConnectionListener.State);
  *&v5[OBJC_IVAR___IMDIncomingClientConnectionListener_queue] = sub_22B7DACC8();
  v18 = &v5[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v5[OBJC_IVAR___IMDIncomingClientConnectionListener_allowedEntitlements] = a3;
  *&v5[OBJC_IVAR___IMDIncomingClientConnectionListener_requestHandlers] = a4;
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, sel_init);
  [v17 setDelegate_];

  return v19;
}

id IncomingClientConnectionListener.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();

  sub_22B7DACB8();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id IncomingClientConnectionListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22B71FE84(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_22B6F0AD4(a1, a2);
  sub_22B7DACB8();
  return v4;
}

uint64_t (*sub_22B71FFA4(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = IncomingClientConnectionListener.supportedServices.modify(v2);
  return sub_22B720014;
}

void sub_22B720014(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*IncomingClientConnectionListener.supportedServices.modify(void *a1))(IMDScheduledMessageCoordinator **a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7DACB8();
  return sub_22B7200E0;
}

void sub_22B7200E0(IMDScheduledMessageCoordinator **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_22B7DACB8();
    v2, v3, v4, v5, v6, v7, v8, v9, v17, v18;
  }

  else
  {
    sub_22B7DACB8();
  }

  v2, v10, v11, v12, v13, v14, v15, v16, v17, v18;
}

void sub_22B720258(void *a1)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422698);
  v3 = a1;
  oslog = sub_22B7DB298();
  v4 = sub_22B7DBC78();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = [v3 processIdentifier];

    _os_log_impl(&dword_22B4CC000, oslog, v4, "Connection interrupted for PID %d", v5, 8u);
    MEMORY[0x231898D60](v5, -1, -1);
    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

void *sub_22B720384(void *a1)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422698);
  v3 = a1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC78();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = [v3 processIdentifier];

    _os_log_impl(&dword_22B4CC000, v4, v5, "Connection invalidated for PID %d", v6, 8u);
    MEMORY[0x231898D60](v6, -1, -1);
  }

  else
  {

    v4 = v3;
  }

  v7 = sub_22B7DACB8();
  MEMORY[0x28223BE20](v7);
  return sub_22B7DACB8();
}

void *sub_22B720524@<X0>(void *a1@<X8>)
{
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  result = sub_22B7DACB8();
  *a1 = v3;
  return result;
}

uint64_t sub_22B72059C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_22B759CB4(*(v3 + 16), 0);
  v6 = sub_22B75A414(&v8, v5 + 4, v4, v3);
  v7 = v8;

  result = sub_22B705E3C(v7);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

void sub_22B72065C(uint64_t a1, IMDScheduledMessageCoordinator *a2)
{

  v4 = sub_22B77A2DC(a2);
  a2, v5, v6, v7, v8, v9, v10, v11, v19, v21;
  *(a1 + 16), v12, v13, v14, v15, v16, v17, v18, v20, v22;
  *(a1 + 16) = v4;
}

id sub_22B720744(void **a1, void *a2, const char *a3, const char **a4, ...)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v8 = sub_22B7DB2B8();
  sub_22B4CFA74(v8, qword_281422698);
  v9 = a2;
  v10 = sub_22B7DB298();
  v11 = sub_22B7DBC78();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B4CFAAC(*&v9[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName], *&v9[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName + 8], &v17);
    _os_log_impl(&dword_22B4CC000, v10, v11, a3, v12, 0xCu);
    sub_22B4CFB78(v13);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  v14 = *a1;
  v15 = *a4;

  return [v14 v15];
}

unint64_t sub_22B7208EC(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_22B7DC1C8();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x231895C80](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_22B7209F0(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_22B7208EC(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_22B7DC1C8();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_22B7DC1C8())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x231895C80](v11, v7);
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x231895C80](v10, v7);
        v14 = MEMORY[0x231895C80](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_22B702604(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_22B702604(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_22B7DC1C8();
}

uint64_t sub_22B720C18(uint64_t a1, uint64_t a2)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422698);

  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC78();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    sub_22B7DACB8();
    v9 = sub_22B4CFAAC(v21, v22, &v23);
    v22, v10, v11, v12, v13, v14, v15, v16, v21, v22;
    *(v7 + 4) = v9;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Removing client %s", v7, 0xCu);
    sub_22B4CFB78(v8);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v17 = sub_22B7209F0((a2 + 8), a1);

  v19 = *(a2 + 8);
  if (v19 >> 62)
  {
    result = sub_22B7DC1C8();
    v20 = result;
    if (result >= v17)
    {
      return sub_22B6FC070(v17, v20);
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= v17)
    {
      return sub_22B6FC070(v17, v20);
    }
  }

  __break(1u);
  return result;
}

uint64_t static IMDFilePurgeabilityMonitor.Constants.fileEventsMask.getter@<X0>(_DWORD *a1@<X8>)
{
  if (qword_28141F0F8 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = dword_28141F100;
  return result;
}

id sub_22B720F14()
{
  result = [objc_allocWithZone(IMDFilePurgeabilityMonitor) init];
  qword_28141F118 = result;
  return result;
}

id static IMDFilePurgeabilityMonitor.shared()()
{
  if (qword_28141F110 != -1)
  {
    swift_once();
  }

  v1 = qword_28141F118;

  return v1;
}

id sub_22B721000()
{
  v1 = v0;
  v2 = sub_22B7DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B7DB398();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OBJC_IVAR___IMDFilePurgeabilityMonitor_purgeabilityQueue;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DBD28();
  sub_22B7DACD8();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v2);
  *&v1[v8] = sub_22B7DBD88();
  v14.receiver = v1;
  v14.super_class = IMDFilePurgeabilityMonitor;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  if (qword_28141F1E8 != -1)
  {
    swift_once();
  }

  [v12 addObserver:v11 selector:? name:? object:?];

  return v11;
}

void sub_22B7212B8(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v55 = a2;
  v2 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v52 - v3;
  v4 = sub_22B7DA968();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = objc_opt_self();
  v14 = [v13 messagesDomain];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = sub_22B7DB678();
  v17 = [v15 BOOLForKey_];

  if (v17)
  {
    return;
  }

  v18 = [v13 &selRef_laterDate_ + 4];
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v20 = sub_22B7DB678();
  v21 = [v19 BOOLForKey_];

  if (!v21)
  {
    return;
  }

  v22 = [v13 &selRef_laterDate_ + 4];
  if (v22)
  {
    v23 = v22;
    v24 = sub_22B7DB678();
    [v23 doubleForKey_];

    v25 = sub_22B7DB678();
    v26 = IMBagIntValueWithDefault();

    sub_22B7DA8F8();
    sub_22B7DA958();
    if ((v26 * 60) >> 64 == (60 * v26) >> 63)
    {
      v27 = 3600 * v26;
      v28 = (60 * v26 * 60) >> 64;
      v30 = v56;
      v29 = v57;
      if (v28 == v27 >> 63)
      {
        v31 = v27;
        sub_22B7DA898();
        if (v32 > v31)
        {
          v33 = [v13 &selRef_laterDate_ + 4];
          if (v33)
          {
            v34 = v33;
            sub_22B7DA958();
            sub_22B7DA908();
            (*(v30 + 8))(v7, v29);
            v35 = sub_22B7DBAC8();
            v36 = sub_22B7DB678();
            [v34 setValue:v35 forKey:v36];
          }

          v37 = sub_22B7DBA58();
          v38 = v54;
          (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
          v39 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v40 = swift_allocObject();
          v40[2] = 0;
          v40[3] = 0;
          v41 = v53;
          v40[4] = v39;
          v40[5] = v41;
          v40[6] = v55;

          sub_22B77E3D4(0, 0, v38, &unk_22B7FA538, v40);
        }

        v42 = *(v30 + 8);
        v42(v10, v29);
        v42(v12, v29);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v43 = [v13 &selRef_laterDate_ + 4];
  if (v43)
  {
    v44 = v43;
    sub_22B7DA958();
    sub_22B7DA908();
    (*(v56 + 8))(v7, v57);
    v45 = sub_22B7DBAC8();
    v46 = sub_22B7DB678();
    [v44 setValue:v45 forKey:v46];
  }

  v47 = sub_22B7DBA58();
  v48 = v54;
  (*(*(v47 - 8) + 56))(v54, 1, 1, v47);
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v51 = v53;
  v50[4] = v49;
  v50[5] = v51;
  v50[6] = v55;

  sub_22B77E3D4(0, 0, v48, &unk_22B7FA528, v50);
}

uint64_t sub_22B7218D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22B7218F4, 0, 0);
}

uint64_t sub_22B7218F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_22B7219E4;
    v4 = v0[6];
    v3 = v0[7];

    return sub_22B721AE0(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B7219E4()
{

  return MEMORY[0x2822009F8](sub_22B725578, 0, 0);
}

uint64_t sub_22B721AE0(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  v4 = sub_22B7DA9A8();
  v3[48] = v4;
  v3[49] = *(v4 - 8);
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B721BA4, 0, 0);
}

uint64_t sub_22B721BA4()
{
  sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
  v1 = sub_22B72276C();
  *(v0 + 408) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 392);
    v3 = *(v0 + 400);
    v5 = *(v0 + 384);
    v6 = objc_opt_self();
    sub_22B7DA998();
    sub_22B7DA978();
    v8 = v7;
    (*(v4 + 8))(v3, v5);
    v9 = sub_22B7DB678();
    v8, v10, v11, v12, v13, v14, v15, v16, v47, v49;
    v17 = sub_22B7DB678();
    v18 = sub_22B7DB678();
    v19 = sub_22B7DB678();
    v20 = sub_22B7DB678();
    v21 = sub_22B7DB678();
    v22 = [v6 userNotificationWithIdentifier:v9 title:v17 message:v18 defaultButton:v19 alternateButton:v20 otherButton:v21];

    if (v22)
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    *(v0 + 248) = v52;
    *(v0 + 264) = v53;
    if (*(v0 + 272))
    {
      sub_22B4D01A0(0, &qword_27D8CE548, 0x277D192D0);
      if (swift_dynamicCast())
      {
        v27 = *(v0 + 368);
        v50 = *(v0 + 376);
        v28 = *(v0 + 360);
        v29 = *(v0 + 344);
        *(v0 + 416) = v29;
        [v29 setShowInLockScreen_];
        sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22B7F93B0;
        *(v0 + 312) = 0x68746150656C6966;
        *(v0 + 320) = 0xE800000000000000;
        v31 = MEMORY[0x277D837D0];
        sub_22B7DC248();
        *(inited + 96) = v31;
        *(inited + 72) = v28;
        *(inited + 80) = v27;

        v32 = sub_22B4D7D1C(inited);
        swift_setDeallocating();
        sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
        v33 = sub_22B7DB568();
        v32, v34, v35, v36, v37, v38, v39, v40, (v0 + 352), v50;
        [v29 setUserInfo_];

        *(v0 + 16) = v0;
        *(v0 + 56) = v48;
        *(v0 + 24) = sub_22B722198;
        v41 = swift_continuation_init();
        *(v0 + 240) = sub_22B6F0AD4(&qword_27D8CE550, &qword_22B7FA548);
        *(v0 + 184) = MEMORY[0x277D85DD0];
        *(v0 + 192) = 1107296256;
        *(v0 + 200) = sub_22B77E9CC;
        *(v0 + 208) = &unk_283F1CE80;
        *(v0 + 216) = v41;
        [v2 addUserNotification:v29 listener:v51 completionHandler:v0 + 184];

        return MEMORY[0x282200938](v0 + 16);
      }
    }

    else
    {
      sub_22B4D0D64(v0 + 248, &unk_27D8CCDC0, &qword_22B7F9580);
    }

    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v42 = sub_22B7DB2B8();
    sub_22B4CFA74(v42, qword_2814226B0);
    v24 = sub_22B7DB298();
    v43 = sub_22B7DBC98();
    if (os_log_type_enabled(v24, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22B4CC000, v24, v43, "Could not create a user notification for Tap-to-Radar", v44, 2u);
      MEMORY[0x231898D60](v44, -1, -1);
    }
  }

  else
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v23 = sub_22B7DB2B8();
    sub_22B4CFA74(v23, qword_2814226B0);
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B4CC000, v24, v25, "Tried to launch TapToRadarDraft but could not convert IMUserNotificationCenter.sharedInstance() to IMUserNotificationCenter!", v26, 2u);
      MEMORY[0x231898D60](v26, -1, -1);
    }
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_22B722198()
{

  return MEMORY[0x2822009F8](sub_22B722278, 0, 0);
}

uint64_t sub_22B722278()
{
  v29 = v0;
  v1 = *(v0 + 352);

  if (qword_28141F3D0 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_2814226B0);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBCB8();

  if (!os_log_type_enabled(v4, v5))
  {
    v9 = *(v0 + 408);

    goto LABEL_16;
  }

  v6 = (v0 + 280);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v26 = v8;
  *v7 = 136315138;
  if (!v1)
  {
    *v6 = 0u;
    *(v0 + 296) = 0u;
LABEL_13:
    sub_22B4D0D64(v0 + 280, &unk_27D8CCDC0, &qword_22B7F9580);
    goto LABEL_14;
  }

  if ([v3 identifier])
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v10 = v28;
  *v6 = v27;
  *(v0 + 296) = v10;
  if (!*(v0 + 304))
  {
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v12 = 0x800000022B80F0A0;
    v11 = 0xD00000000000001CLL;
    goto LABEL_15;
  }

  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
LABEL_15:
  v13 = *(v0 + 408);
  v14 = *(v0 + 416);
  v15 = sub_22B4CFAAC(v11, v12, &v26);
  v12, v16, v17, v18, v19, v20, v21, v22, v25, v26;
  *(v7 + 4) = v15;
  _os_log_impl(&dword_22B4CC000, v4, v5, "Finished processing user notification: %s", v7, 0xCu);
  sub_22B4CFB78(v8);
  MEMORY[0x231898D60](v8, -1, -1);
  MEMORY[0x231898D60](v7, -1, -1);

LABEL_16:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22B7224FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22B722520, 0, 0);
}

uint64_t sub_22B722520()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_22B722610;
    v4 = v0[6];
    v3 = v0[7];

    return sub_22B721AE0(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B722610()
{

  return MEMORY[0x2822009F8](sub_22B72270C, 0, 0);
}

uint64_t sub_22B72270C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B72276C()
{
  if ([swift_getObjCClassFromMetadata() sharedInstance])
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B4D0D64(v4, &unk_27D8CCDC0, &qword_22B7F9580);
    return 0;
  }
}

void IMDFilePurgeabilityMonitor.userNotificationDidFinish(_:)(void *a1)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  if (!a1)
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v31 = sub_22B7DB2B8();
    sub_22B4CFA74(v31, qword_2814226B0);
    v49 = sub_22B7DB298();
    v32 = sub_22B7DBC98();
    if (!os_log_type_enabled(v49, v32))
    {
      goto LABEL_29;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v52[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80EE40, v52);
    _os_log_impl(&dword_22B4CC000, v49, v32, "%s invoked but no notification", v33, 0xCu);
    sub_22B4CFB78(v34);
    MEMORY[0x231898D60](v34, -1, -1);
    MEMORY[0x231898D60](v33, -1, -1);
    goto LABEL_24;
  }

  v49 = a1;
  v6 = [v49 response];
  if (v6 == 3)
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v43 = sub_22B7DB2B8();
    sub_22B4CFA74(v43, qword_2814226B0);
    v44 = sub_22B7DB298();
    v45 = sub_22B7DBC98();
    if (!os_log_type_enabled(v44, v45))
    {

      goto LABEL_29;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80EE40, v52);
    _os_log_impl(&dword_22B4CC000, v44, v45, "%s: user cancelled Tap-to-Radar", v46, 0xCu);
    sub_22B4CFB78(v47);
    MEMORY[0x231898D60](v47, -1, -1);
    MEMORY[0x231898D60](v46, -1, -1);

LABEL_24:
    return;
  }

  if (v6 == 2)
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v35 = sub_22B7DB2B8();
    sub_22B4CFA74(v35, qword_2814226B0);
    v36 = sub_22B7DB298();
    v37 = sub_22B7DBC78();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v52[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80EE40, v52);
      _os_log_impl(&dword_22B4CC000, v36, v37, "%s: user asked us to stop showing TTR prompts", v38, 0xCu);
      sub_22B4CFB78(v39);
      MEMORY[0x231898D60](v39, -1, -1);
      MEMORY[0x231898D60](v38, -1, -1);
    }

    v40 = [objc_opt_self() messagesDomain];
    if (v40)
    {
      v41 = v40;
      v42 = sub_22B7DB678();
      [v41 setBool:1 forKey:v42];
    }

    goto LABEL_29;
  }

  if (v6)
  {

    MEMORY[0x2821F9730]();
    return;
  }

  v7 = [v49 userInfo];
  if (!v7)
  {
LABEL_29:
    v48 = v49;

    return;
  }

  v8 = v7;
  v9 = sub_22B7DB588();

  v50 = 0x68746150656C6966;
  v51 = 0xE800000000000000;
  sub_22B7DC248();
  if (*(v9 + 16))
  {
    v17 = v1;
    v18 = sub_22B4D7EC0(v52);
    if (v10)
    {
      sub_22B4D1F68(*(v9 + 56) + 32 * v18, v53);
      sub_22B4DA138(v52);
      v9, v19, v20, v21, v22, v23, v24, v25, v49, v50;
      if (swift_dynamicCast())
      {
        v26 = v50;
        v27 = v51;
        v28 = sub_22B7DBA58();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
        v29 = swift_allocObject();
        v29[2] = 0;
        v29[3] = 0;
        v29[4] = v17;
        v29[5] = v26;
        v29[6] = v27;
        v30 = v17;
        sub_22B722F28(0, 0, v5, &unk_22B7FA4F8, v29);

        return;
      }

      goto LABEL_24;
    }
  }

  v9, v10, v11, v12, v13, v14, v15, v16, v49, v50;

  sub_22B4DA138(v52);
}

uint64_t sub_22B722E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22B6F0D94;

  return sub_22B724D18(a5, a6);
}

uint64_t sub_22B722F28(uint64_t a1, IMDScheduledMessageCoordinator *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_22B724CA8(a3, &v29 - v9);
  v11 = sub_22B7DBA58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22B4D0D64(v10, &qword_27D8CD5C0, &qword_22B7F8CF0);
  }

  else
  {
    sub_22B7DBA48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22B7DB9C8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22B7DB6F8() + 32;

      if (v17 | v15)
      {
        v33[0] = 0;
        v33[1] = 0;
        v19 = v33;
        v33[2] = v15;
        v33[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v30 = 7;
      v31 = v19;
      v32 = v18;
      v20 = swift_task_create();

      sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
      a2, v21, v22, v23, v24, v25, v26, v27, v29, v30;

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  if (v17 | v15)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v15;
    v33[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22B7231EC(uint64_t a1, IMDScheduledMessageCoordinator *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v33 = a4;
  v12 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  sub_22B724CA8(a3, &v33 - v13);
  v15 = sub_22B7DBA58();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_22B4D0D64(v14, &qword_27D8CD5C0, &qword_22B7F8CF0);
  }

  else
  {
    sub_22B7DBA48();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22B7DB9C8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_22B7DB6F8() + 32;

      sub_22B6F0AD4(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v37[0] = 0;
        v37[1] = 0;
        v23 = v37;
        v37[2] = v19;
        v37[3] = v21;
      }

      v34 = 7;
      v35 = v23;
      v36 = v22;
      v24 = swift_task_create();

      sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
      a2, v25, v26, v27, v28, v29, v30, v31, v33, v34;

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  sub_22B6F0AD4(a6, a7);
  if (v21 | v19)
  {
    v37[4] = 0;
    v37[5] = 0;
    v37[6] = v19;
    v37[7] = v21;
  }

  return swift_task_create();
}

unint64_t sub_22B7235C8(uint64_t a1, uint64_t a2)
{
  sub_22B7DC668();
  MEMORY[0x231895FF0](a1);
  MEMORY[0x231895FF0](a2);
  v4 = sub_22B7DC6B8();

  return sub_22B7238E8(a1, a2, v4);
}

unint64_t sub_22B723648(uint64_t a1, uint64_t a2)
{
  sub_22B7DC668();
  sub_22B7DB758();
  v4 = sub_22B7DC6B8();

  return sub_22B723960(a1, a2, v4);
}

uint64_t sub_22B7236C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B6F0D94;

  return sub_22B722E8C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22B7237AC(uint64_t a1)
{
  v2 = sub_22B7DBFC8();

  return sub_22B723A18(a1, v2);
}

unint64_t sub_22B7237F0(uint64_t a1)
{
  sub_22B7DC668();
  MEMORY[0x231895FF0](a1);
  v2 = sub_22B7DC6B8();
  return sub_22B723AEC(a1, v2);
}

unint64_t sub_22B723858(uint64_t a1)
{
  sub_22B7DB6A8();
  v3 = v2;
  sub_22B7DC668();
  sub_22B7DB758();
  v4 = sub_22B7DC6B8();
  v3, v5, v6, v7, v8, v9, v10, v11, v13, v14;
  return sub_22B723B58(a1, v4);
}

unint64_t sub_22B7238E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22B723960(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22B7DC518())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B723A18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22B7DBFD8();

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

unint64_t sub_22B723AEC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22B723B58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22B7DB6A8();
      v8 = v7;
      v9 = sub_22B7DB6A8();
      v17 = v10;
      if (v6 == v9 && v8 == v10)
      {
        break;
      }

      v19 = sub_22B7DC518();
      v8, v20, v21, v22, v23, v24, v25, v26, v42, v45;
      v17, v27, v28, v29, v30, v31, v32, v33, v43, v46;
      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    v8, v10, v11, v12, v13, v14, v15, v16, v42, v45;
    v17, v34, v35, v36, v37, v38, v39, v40, v44, v47;
  }

  return v4;
}

uint64_t sub_22B723C5C(int *a1)
{
  v1 = *a1;
  if ((*a1 & 0x100) != 0)
  {
    v3 = 0x657461657263;
  }

  else
  {
    if ((*a1 & 0x1200) == 0x1000)
    {
      return 0x6465696669646F6DLL;
    }

    if ((v1 & 0x200) == 0)
    {
      sub_22B7DC2E8();
      0xE000000000000000, v4, v5, v6, v7, v8, v9, v10, v20, v22;
      HIDWORD(v23) = v1;
      FileEventFlags.description.getter();
      v12 = v11;
      MEMORY[0x231895140]();
      v12, v13, v14, v15, v16, v17, v18, v19, v21, v23;
      return 0xD000000000000014;
    }

    v3 = 0x65766F6D6572;
  }

  return v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
}

uint64_t sub_22B723D3C(void *a1, IMDScheduledMessageCoordinator *a2)
{
  v47 = a1;
  v3 = sub_22B7DA728();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_22B7DA828();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B7DA6D8();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v3);

  v17 = a2;
  sub_22B7DA818();
  sub_22B6F0AD4(&qword_27D8CE558, &qword_22B7FA550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v19 = *MEMORY[0x277CBE898];
  *(inited + 32) = *MEMORY[0x277CBE898];
  v20 = v19;
  sub_22B7177E8(inited);
  v22 = v21;
  swift_setDeallocating();
  sub_22B724C4C(inited + 32);
  sub_22B7DA758();
  v23 = v46;
  (*(v11 + 8))(v13, v10);
  v22, v24, v25, v26, v27, v28, v29, v30, v46, v47;
  v31 = sub_22B7DA6C8();
  if (v31 == 2)
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v32 = sub_22B7DB2B8();
    sub_22B4CFA74(v32, qword_2814226B0);

    v33 = sub_22B7DB298();
    v34 = sub_22B7DBC98();
    v17, v35, v36, v37, v38, v39, v40, v41, v46, v47;
    if (os_log_type_enabled(v33, v34))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v42 = 136380675;
      *(v42 + 4) = sub_22B4CFAAC(v47, v17, &v48);
      _os_log_impl(&dword_22B4CC000, v33, v34, "NSURL did not contain isPurgeable despite requesting it for %{private}s", v42, 0xCu);
      sub_22B4CFB78(v43);
      MEMORY[0x231898D60](v43, -1, -1);
      MEMORY[0x231898D60](v42, -1, -1);
    }

    v23[1](v16, v14);
    v44 = 0;
  }

  else
  {
    v44 = v31;
    v23[1](v16, v14);
  }

  return v44 & 1;
}

uint64_t sub_22B72435C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v121 - v11;
  v13 = sub_22B7DA828();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v121 - v17;
  v126 = [a3 isSticker];
  v19 = [a4 balloonBundleID];
  if (!v19)
  {
    sub_22B7DB6A8();
    v33 = v26;
LABEL_12:
    v33, v26, v27, v28, v29, v30, v31, v32, v121, v122;
    v124 = 0;
    goto LABEL_15;
  }

  v20 = v14;
  v21 = v19;
  v22 = sub_22B7DB6A8();
  v24 = v23;

  v25 = sub_22B7DB6A8();
  v33 = v26;
  if (!v24)
  {
    v14 = v20;
    goto LABEL_12;
  }

  if (v22 == v25 && v24 == v26)
  {
    v24, v26, v25, v28, v29, v30, v31, v32, v121, v122;
    v33, v51, v52, v53, v54, v55, v56, v57, v121, v122;
    v50 = 256;
  }

  else
  {
    v35 = sub_22B7DC518();
    v24, v36, v37, v38, v39, v40, v41, v42, v121, v122;
    v33, v43, v44, v45, v46, v47, v48, v49, v121, v122;
    v50 = 256;
    if ((v35 & 1) == 0)
    {
      v50 = 0;
    }
  }

  v124 = v50;
  v14 = v20;
LABEL_15:
  v125 = a1;
  sub_22B7DA808();
  v58 = v14[6];
  if (v58(v12, 1, v13) == 1)
  {
    sub_22B4D0D64(v12, &qword_27D8CFC90, &unk_22B7FE140);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    (v14[4])(v18, v12, v13);
    sub_22B7DA738();
    v62 = v61;
    v63 = sub_22B7DB678();
    v122 = v14;
    v64 = v63;
    v62, v65, v66, v67, v68, v69, v70, v71, v121, v122;
    HIDWORD(v121) = [v64 im_isAudioMessageExtension];
    v72 = sub_22B7DA778();
    v74 = v73;
    v129 = v72;
    v130 = v73;
    v75 = sub_22B7DB6A8();
    v77 = v76;
    v127 = v75;
    v128 = v76;
    sub_22B704B70();
    LOBYTE(v62) = sub_22B7DC0E8();
    v74, v78, v79, v80, v81, v82, v83, v84, v121, v122;
    v77, v85, v86, v87, v88, v89, v90, v91, v121, v122;

    v14 = v122;
    (*(v122 + 1))(v18, v13);
    if (v62)
    {
      v59 = 0x100000000;
    }

    else
    {
      v59 = 0;
    }

    if (HIDWORD(v121))
    {
      v60 = 0x1000000;
    }

    else
    {
      v60 = 0;
    }
  }

  sub_22B7DA808();
  if (v58(v10, 1, v13) != 1)
  {
    v93 = v123;
    (v14[4])(v123, v10, v13);
    if (sub_22B7DA738() != 0x61506E6967756C70 || v94 != 0xED000064616F6C79)
    {
      v101 = v94;
      v102 = sub_22B7DC518();
      v101, v103, v104, v105, v106, v107, v108, v109, v121, v122;
      if (v102)
      {
        v92 = 0x10000;
        goto LABEL_35;
      }

      v110 = sub_22B7DA738();
      v96 = 0x800000022B80F0C0;
      if (v110 != 0xD000000000000017 || 0x800000022B80F0C0 != v94)
      {
        v111 = v94;
        v112 = sub_22B7DC518();
        v111, v113, v114, v115, v116, v117, v118, v119, v121, v122;
        if (v112)
        {
          v92 = 0x10000;
        }

        else
        {
          v92 = 0;
        }

        goto LABEL_35;
      }
    }

    v94, v94, v95, v96, v97, v98, v99, v100, v121, v122;
    v92 = 0x10000;
LABEL_35:
    (v14[1])(v93, v13);
    return v124 | v126 | v59 | v92 | v60;
  }

  sub_22B4D0D64(v10, &qword_27D8CFC90, &unk_22B7FE140);
  v92 = 0;
  return v124 | v126 | v59 | v92 | v60;
}

void sub_22B72487C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22B7DB678();
    v7 = sub_22B7DB678();
    v8 = sub_22B7DB678();
    sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B7F93B0;
    strcpy(v21, "transferGUID");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    v10 = MEMORY[0x277D837D0];
    sub_22B7DC248();
    *(inited + 96) = v10;
    *(inited + 72) = a1;
    *(inited + 80) = a2;

    v11 = sub_22B4D7D1C(inited);
    swift_setDeallocating();
    sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
    v12 = sub_22B7DB568();
    v11, v13, v14, v15, v16, v17, v18, v19, v20, v21[0];
    [v5 forceAutoBugCaptureWithSubType:v6 errorPayload:0 type:v7 context:v8 metadata:v12];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B724A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B6F0D94;

  return sub_22B7224FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B724B24()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B724B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B6F12E8;

  return sub_22B7218D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B724C4C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B724CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B724D18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22B7DAD38();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22B7DAD48();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_22B7DAD88();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_22B7DAD28();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_22B7DAD98();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B724F48, 0, 0);
}

uint64_t sub_22B724F48()
{
  v1 = v0[14];
  v2 = v0[15];
  v33 = v2;
  v3 = v0[13];
  v38 = v3;
  v39 = v1;
  v35 = v0[12];
  v41 = v0[11];
  v42 = v0[10];
  v37 = v0[9];
  v43 = v0[8];
  v36 = v0[7];
  v4 = v0[5];
  v34 = v0[4];
  v6 = v0[2];
  v5 = v0[3];
  v40 = v0[6];
  sub_22B7DC2E8();
  MEMORY[0x231895140](0xD00000000000002ELL, 0x800000022B80F170);
  MEMORY[0x231895140](v6, v5);
  MEMORY[0x231895140](0xD000000000000054, 0x800000022B80F1A0);
  (*(v1 + 104))(v2, *MEMORY[0x277D195A8], v3);
  sub_22B6F0AD4(&unk_27D8CECA0, &unk_22B7FB7D0);
  v7 = sub_22B7DAD18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B7F93A0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277D195A0], v7);
  v13(v12 + v9, *MEMORY[0x277D19598], v7);
  sub_22B7DAD78();
  (*(v43 + 104))(v37, *MEMORY[0x277D195D8], v36);
  (*(v4 + 104))(v40, *MEMORY[0x277D195C8], v34);
  v31 = MEMORY[0x277D84F90];
  sub_22B7DAD08();
  v11, v14, v15, v16, v17, v18, v19, v20, v37, v31;
  0xE000000000000000, v21, v22, v23, v24, v25, v26, v27, v30, v32;
  (*(v4 + 8))(v40, v34);
  (*(v43 + 8))(v37, v36);
  (*(v41 + 8))(v35, v42);
  (*(v39 + 8))(v33, v38);
  v28 = swift_task_alloc();
  v0[19] = v28;
  *v28 = v0;
  v28[1] = sub_22B7252E4;

  return MEMORY[0x282173A08]();
}

uint64_t sub_22B7252E4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_22B7254B4;
  }

  else
  {
    v2 = sub_22B7253F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B7253F8()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22B7254B4()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22B72558C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22B7255AC, v1, 0);
}

uint64_t sub_22B7255AC(__n128 a1)
{
  v2 = v1[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[5] = Strong;
  v4 = *(v2 + 184);
  v1[6] = v4;
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(v4 + 16) + **(v4 + 16));
    v6 = swift_task_alloc();
    v1[7] = v6;
    *v6 = v1;
    v6[1] = sub_22B725728;
    v7 = v1[4];

    return v11(v7, ObjectType, v4);
  }

  else
  {
    v9 = v1[1];
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_22B725728(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_22B725840, v2, 0);
}

uint64_t sub_22B725840(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 64);
  if (*(v9 + 16))
  {
    v11 = *(v8 + 24);
    v10 = *(v8 + 32);
    sub_22B7DBED8();
    v20 = *(v8 + 40);
    KeyPath = swift_getKeyPath();
    *(v8 + 72) = KeyPath;
    v13 = swift_allocObject();
    *(v8 + 80) = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = v9;
    *(v13 + 32) = v20;
    *(v13 + 48) = v11;

    swift_unknownObjectRetain();
    v14 = swift_task_alloc();
    *(v8 + 88) = v14;
    v15 = sub_22B6F0AD4(&qword_27D8CE5F0, &qword_22B7FA640);
    *v14 = v8;
    v14[1] = sub_22B7259F8;

    return MEMORY[0x282172F38](v8 + 16, KeyPath, &unk_22B7FA638, v13, v15);
  }

  else
  {
    *(v8 + 64), a2, a3, a4, a5, a6, a7, a8, v19, v21;
    swift_unknownObjectRelease();
    v16 = *(v8 + 8);
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

uint64_t sub_22B7259F8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_22B725B8C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22B725B28;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B725B28()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B725B8C()
{

  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422680);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Error fetching recent tasks from IMDPersistenceAgent: %@", v7, 0xCu);
    sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v11 = *(v0 + 96);

  swift_unknownObjectRelease();
  v12 = *(v0 + 8);
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t sub_22B725D48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v7[8] = *a2;
  return MEMORY[0x2822009F8](sub_22B725D78, a3, 0);
}

uint64_t sub_22B725D78()
{
  v9 = v0[6];
  sub_22B6F0AD4(&qword_27D8CE5F8, &qword_22B7FB6B0);
  v1 = swift_allocObject();
  v0[9] = v1;
  *(v1 + 16) = xmmword_22B7F93B0;
  sub_22B7DBF48();
  v2 = sub_22B7DBE58();

  *(v1 + 32) = v2;
  ObjectType = swift_getObjectType();
  v8 = (*(v9 + 8) + **(v9 + 8));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22B725F04;
  v5 = v0[6];
  v6 = v0[3];

  return v8(v6, ObjectType, v5);
}

uint64_t sub_22B725F04(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22B72601C, v2, 0);
}

uint64_t sub_22B72601C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v21 = v8;
  v9 = v8[11];
  v10 = *v9->messageStore;
  if (v10)
  {
    v11 = sub_22B759C24(*v9->messageStore, 0);
    v9 = sub_22B75A56C(&v20, v11 + 4, v10, v9);
    sub_22B705E3C(v20);
    if (v9 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9, a2, a3, a4, a5, a6, a7, a8, v19, v20;
  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v8[12] = v11;
  ObjectType = swift_getObjectType();
  v13 = swift_task_alloc();
  v8[13] = v13;
  *v13 = v8;
  v13[1] = sub_22B72614C;
  v14 = v8[9];
  v15 = v8[7];
  v16 = v8[4];
  v17 = MEMORY[0x277D84F90];

  return MEMORY[0x282172F48](v17, v14, v16, v11, v15, ObjectType);
}

uint64_t sub_22B72614C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 24);
  *(*v1 + 112) = a1;

  v2, v4, v5, v6, v7, v8, v9, v10, v12, v13;

  return MEMORY[0x2822009F8](sub_22B7262A4, v3, 0);
}

uint64_t sub_22B7262C8(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22B726360;

  return sub_22B72558C(a1);
}

uint64_t sub_22B726360(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_22B726478, v2, 0);
}

uint64_t sub_22B726478(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v52 = v8;
  v9 = *(v8 + 32);
  if (v9 >> 62)
  {
    if (sub_22B7DC1C8())
    {
      goto LABEL_3;
    }

LABEL_13:
    *(v8 + 32), a2, a3, a4, a5, a6, a7, a8, v50, v51;
    v40 = 0;
    goto LABEL_14;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v10 = sub_22B7DB2B8();
  sub_22B4CFA74(v10, qword_281422680);

  v11 = sub_22B7DB298();
  v12 = sub_22B7DBC78();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = *(v8 + 16);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v50 = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_22B4CFAAC(*(v20 + 248), *(v20 + 256), &v50);
    *(v21 + 12) = 2048;
    if (v9 >> 62)
    {
      v30 = sub_22B7DC1C8();
    }

    else
    {
      v30 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = *(v8 + 32);
    *(v21 + 14) = v30;
    v31, v23, v24, v25, v26, v27, v28, v29, v50, v51;
    _os_log_impl(&dword_22B4CC000, v11, v12, "[%{public}s] loaded %ld task(s) to run", v21, 0x16u);
    sub_22B4CFB78(v22);
    MEMORY[0x231898D60](v22, -1, -1);
    MEMORY[0x231898D60](v21, -1, -1);
  }

  else
  {
    *(v8 + 32), v13, v14, v15, v16, v17, v18, v19, v50, v51;
  }

  v32 = *(v8 + 32);
  v40 = sub_22B717B44(v32, v33, v34, v35, v36, v37, v38, v39);
  v32, v41, v42, v43, v44, v45, v46, v47, v50, v51;
LABEL_14:
  v48 = *(v8 + 8);

  return v48(v40);
}

uint64_t sub_22B7266A4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22B7266C8, v2, 0);
}

uint64_t sub_22B7266C8(__n128 a1)
{
  v2 = v1[3];
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4:
        v15 = 1;
        break;
      case 5:
        v15 = 2;
        break;
      case 6:
        v15 = 3;
        break;
      default:
        goto LABEL_16;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v1[8] = Strong;
    if (Strong)
    {
      v17 = *(v1[5] + 184);
      ObjectType = swift_getObjectType();
      v22 = (*(v17 + 32) + **(v17 + 32));
      v19 = swift_task_alloc();
      v1[9] = v19;
      *v19 = v1;
      v19[1] = sub_22B726B10;
      v8 = v1[4];
      v9 = v1[5];
      v10 = v15;
      v11 = ObjectType;
      v12 = v17;
      v13 = v22;

      return v13(v9, v10, v8, v11, v12);
    }

    goto LABEL_24;
  }

  if ((v2 - 2) < 2 || v2 == 0)
  {
LABEL_24:
    v20 = v1[1];

    return v20();
  }

  if (v2 == 1)
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    v1[6] = v4;
    if (v4)
    {
      v5 = *(v1[5] + 184);
      v6 = swift_getObjectType();
      v21 = (*(v5 + 64) + **(v5 + 64));
      v7 = swift_task_alloc();
      v1[7] = v7;
      *v7 = v1;
      v7[1] = sub_22B726A00;
      v8 = v1[4];
      v9 = v1[5];
      v10 = 1;
      v11 = v6;
      v12 = v5;
      v13 = v21;

      return v13(v9, v10, v8, v11, v12);
    }

    goto LABEL_24;
  }

LABEL_16:
  type metadata accessor for IMPersistentTaskRunResult(0);
  v1[2] = v2;

  return sub_22B7DC548();
}

uint64_t sub_22B726A00()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B726B10()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B726C20()
{
  v0 = sub_22B6F0AD4(&unk_27D8CE580, &unk_22B7FA5D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_22B6F0AD4(&unk_27D8CE570, &qword_22B7FA5B0);
  sub_22B6F24F4(v3, qword_281420560);
  sub_22B4CFA74(v3, qword_281420560);
  v4 = *MEMORY[0x277D195F0];
  v5 = sub_22B6F0AD4(&qword_27D8CD6F0, &qword_22B7F9848);
  v6 = *(v5 - 8);
  (*(v6 + 104))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_22B7DADC8();
  return sub_22B7DADB8();
}

uint64_t sub_22B726D90(uint64_t a1)
{
  v2[6] = v1;
  sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v2[7] = swift_task_alloc();
  v4 = sub_22B7DC408();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_22B6F0AD4(&unk_27D8CE570, &qword_22B7FA5B0);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[14] = v6;
  *v6 = v2;
  v6[1] = sub_22B726F24;

  return sub_22B7262C8(a1);
}

uint64_t sub_22B726F24(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_22B72703C, v2, 0);
}

uint64_t sub_22B72703C()
{
  v158 = v0;
  if (*(v0 + 120))
  {
    v1 = *(v0 + 48);
    v2 = v1[31];
    *(v0 + 128) = v2;
    v3 = v1[32];
    *(v0 + 136) = v3;
    v4 = v1[14];
    *(v0 + 144) = v4;
    v5 = v1[24];
    type metadata accessor for IMDPersistentTaskMetricCollector();
    swift_allocObject();
    v6 = v5;

    *(v0 + 152) = sub_22B799DD0(v2, v3, v4, v5);

    if (v4 == 3)
    {
      if (qword_281420558 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 96);
      v14 = *(v0 + 104);
      v16 = *(v0 + 88);
      v17 = sub_22B4CFA74(v16, qword_281420560);
      (*(v15 + 16))(v14, v17, v16);
      sub_22B7DADA8();
      (*(v15 + 8))(v14, v16);
      if (*(v0 + 320) == 1)
      {
        sub_22B7DC5B8();
        v18 = swift_task_alloc();
        *(v0 + 160) = v18;
        *v18 = v0;
        v18[1] = sub_22B7277BC;

        return sub_22B729E90(0x475CA13EDC000000, 85478499, 0, 0, 1);
      }
    }

    v20 = *(v0 + 120);
    v21 = *v20->messageStore;
    *(v0 + 168) = v21;
    if (v21)
    {
      v22 = 0;
      while (1)
      {
        *(v0 + 176) = v22;
        v23 = *(v0 + 120);
        if (v22 >= *(v23 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v24 = v23 + (v22 << 6);
        v25 = *(v24 + 48);
        *(v0 + 184) = v25;
        v26 = *(v24 + 56);
        v27 = *(v24 + 64);
        *(v0 + 192) = v27;
        v28 = *(v24 + 72);
        v29 = *(v24 + 80);
        *(v0 + 200) = v29;
        v30 = *(v24 + 88);
        *(v0 + 208) = v30;

        if ((sub_22B7DBAB8() & 1) == 0)
        {
          break;
        }

        v29, v31, v32, v33, v34, v35, v36, v37, v137, v145;
        v30, v38, v39, v40, v41, v42, v43, v44, v138, v146;
        v22 = *(v0 + 176) + 1;
        if (v22 == *(v0 + 168))
        {
          *(v0 + 120), v45, v46, v47, v48, v49, v50, v51, v137, v145;
          v52 = *(v0 + 152);
          goto LABEL_22;
        }
      }

      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v60 = sub_22B7DB2B8();
      *(v0 + 216) = sub_22B4CFA74(v60, qword_281422680);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v61 = sub_22B7DB298();
      v62 = sub_22B7DBCB8();

      if (os_log_type_enabled(v61, v62))
      {
        v155 = v62;
        log = v61;
        v64 = *(v0 + 128);
        v63 = *(v0 + 136);
        v65 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *(v0 + 40) = v147;
        *v65 = 136446978;
        *(v65 + 4) = sub_22B4CFAAC(v64, v63, (v0 + 40));
        *(v65 + 12) = 2048;
        if (v29 >> 62)
        {
          v73 = sub_22B7DC1C8();
        }

        else
        {
          v73 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v65 + 14) = v73;
        *(v65 + 22) = 2080;
        v29, v66, v67, v68, v69, v70, v71, v72, v137, v147;
        v30, v74, v75, v76, v77, v78, v79, v80, v139, v148;
        if ((v26 & 1) == 0)
        {
          v88 = sub_22B7DBE48();
          v90 = v89;
          v91 = sub_22B4CFAAC(v88, v89, (v0 + 40));
          v90, v92, v93, v94, v95, v96, v97, v98, v140, v149;
          *(v65 + 24) = v91;
          *(v65 + 32) = 2080;
          v29, v99, v100, v101, v102, v103, v104, v105, v141, v150;
          v30, v106, v107, v108, v109, v110, v111, v112, v142, v151;
          if ((v28 & 1) == 0)
          {
            v117 = [objc_opt_self() nameForReason:v27 inFlag:v25];
            v118 = sub_22B7DB6A8();
            v120 = v119;

            v121 = sub_22B4CFAAC(v118, v120, (v0 + 40));
            v120, v122, v123, v124, v125, v126, v127, v128, v143, v152;
            *(v65 + 34) = v121;
            _os_log_impl(&dword_22B4CC000, log, v155, "[%{public}s] running %ld task(s) with flag %s and reason %s", v65, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v153, -1, -1);
            MEMORY[0x231898D60](v65, -1, -1);

            goto LABEL_35;
          }

          goto LABEL_43;
        }

        v29, v81, v82, v83, v84, v85, v86, v87, v140, v149;
        v30, v130, v131, v132, v133, v134, v135, v136, v144, v154;
        __break(1u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        if ((v26 & 1) == 0)
        {
          if ((v28 & 1) == 0)
          {
LABEL_35:
            sub_22B7DBF98();
            v129 = swift_task_alloc();
            *(v0 + 224) = v129;
            *v129 = v0;
            v129[1] = sub_22B727DA8;
            v113 = v29;
            v114 = v25;
            v115 = v27;
            v116 = v30;

            return MEMORY[0x282172F88](v113, v114, v115, v116);
          }

LABEL_44:
          __break(1u);
          return MEMORY[0x282172F88](v113, v114, v115, v116);
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v52 = *(v0 + 152);
    v20, v7, v8, v9, v10, v11, v12, v13, v137, v145;
LABEL_22:
    *(v0 + 321) = 0;

    return MEMORY[0x2822009F8](sub_22B728794, v52, 0);
  }

  else
  {
    if (qword_28141F398 != -1)
    {
LABEL_39:
      swift_once();
    }

    v53 = sub_22B7DB2B8();
    sub_22B4CFA74(v53, qword_281422680);

    v54 = sub_22B7DB298();
    v55 = sub_22B7DBCB8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 48);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v157 = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_22B4CFAAC(*(v56 + 248), *(v56 + 256), &v157);
      _os_log_impl(&dword_22B4CC000, v54, v55, "[%{public}s] finished", v57, 0xCu);
      sub_22B4CFB78(v58);
      MEMORY[0x231898D60](v58, -1, -1);
      MEMORY[0x231898D60](v57, -1, -1);
    }

    v59 = *(v0 + 8);

    return v59(1, 0);
  }
}

uint64_t sub_22B7277BC()
{
  v2 = *v1;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[6];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_22B72A474;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_22B727968;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B727968(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v15 = *(v10 + 120);
  v16 = *v15->messageStore;
  *(v10 + 168) = v16;
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      *(v10 + 176) = v17;
      v18 = *(v10 + 120);
      if (v17 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v19 = v18 + (v17 << 6);
      v9 = *(v19 + 48);
      *(v10 + 184) = v9;
      v14 = *(v19 + 56);
      v11 = *(v19 + 64);
      *(v10 + 192) = v11;
      v13 = *(v19 + 72);
      v12 = *(v19 + 80);
      *(v10 + 200) = v12;
      v8 = *(v19 + 88);
      *(v10 + 208) = v8;

      if ((sub_22B7DBAB8() & 1) == 0)
      {
        break;
      }

      v12, v20, v21, v22, v23, v24, v25, v26, v120, v130;
      v8, v27, v28, v29, v30, v31, v32, v33, v121, v131;
      v17 = *(v10 + 176) + 1;
      if (v17 == *(v10 + 168))
      {
        *(v10 + 120), v34, v35, v36, v37, v38, v39, v40, v120, v130;
        v41 = *(v10 + 152);
        goto LABEL_8;
      }
    }

    if (qword_28141F398 == -1)
    {
      goto LABEL_12;
    }

LABEL_24:
    swift_once();
LABEL_12:
    v42 = sub_22B7DB2B8();
    *(v10 + 216) = sub_22B4CFA74(v42, qword_281422680);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v43 = sub_22B7DB298();
    v44 = sub_22B7DBCB8();

    if (os_log_type_enabled(v43, v44))
    {
      HIDWORD(v130) = v44;
      log = v43;
      v46 = *(v10 + 128);
      v45 = *(v10 + 136);
      v47 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *(v10 + 40) = v122;
      *v47 = 136446978;
      *(v47 + 4) = sub_22B4CFAAC(v46, v45, (v10 + 40));
      *(v47 + 12) = 2048;
      if (v12 >> 62)
      {
        v55 = sub_22B7DC1C8();
      }

      else
      {
        v55 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v47 + 14) = v55;
      *(v47 + 22) = 2080;
      v12, v48, v49, v50, v51, v52, v53, v54, v122, v130;
      v8, v56, v57, v58, v59, v60, v61, v62, v123, v132;
      if ((v14 & 1) == 0)
      {
        v70 = sub_22B7DBE48();
        v72 = v71;
        v73 = sub_22B4CFAAC(v70, v71, (v10 + 40));
        v72, v74, v75, v76, v77, v78, v79, v80, v124, v133;
        *(v47 + 24) = v73;
        *(v47 + 32) = 2080;
        v12, v81, v82, v83, v84, v85, v86, v87, v125, v134;
        v8, v88, v89, v90, v91, v92, v93, v94, v126, v135;
        if ((v13 & 1) == 0)
        {
          v99 = [objc_opt_self() nameForReason:v11 inFlag:v9];
          v100 = sub_22B7DB6A8();
          v102 = v101;

          v103 = sub_22B4CFAAC(v100, v102, (v10 + 40));
          v102, v104, v105, v106, v107, v108, v109, v110, v127, v136;
          *(v47 + 34) = v103;
          _os_log_impl(&dword_22B4CC000, log, v138, "[%{public}s] running %ld task(s) with flag %s and reason %s", v47, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v128, -1, -1);
          MEMORY[0x231898D60](v47, -1, -1);

          goto LABEL_20;
        }

        goto LABEL_28;
      }

      v12, v63, v64, v65, v66, v67, v68, v69, v124, v133;
      v8, v112, v113, v114, v115, v116, v117, v118, v129, v137;
      __break(1u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      if ((v14 & 1) == 0)
      {
        if ((v13 & 1) == 0)
        {
LABEL_20:
          sub_22B7DBF98();
          v111 = swift_task_alloc();
          *(v10 + 224) = v111;
          *v111 = v10;
          v111[1] = sub_22B727DA8;
          v95 = v12;
          v96 = v9;
          v97 = v11;
          v98 = v8;

          return MEMORY[0x282172F88](v95, v96, v97, v98);
        }

LABEL_29:
        __break(1u);
        return MEMORY[0x282172F88](v95, v96, v97, v98);
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v41 = *(v10 + 152);
  v15, a2, a3, a4, a5, a6, a7, a8, v120, v130;
LABEL_8:
  *(v10 + 321) = 0;

  return MEMORY[0x2822009F8](sub_22B728794, v41, 0);
}

uint64_t sub_22B727DA8()
{
  v2 = *v1;
  v15 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v10 = *(v2 + 6);
    *(v2 + 15), v3, v4, v5, v6, v7, v8, v9, v14, v15;
    v11 = sub_22B729A30;
    v12 = v10;
  }

  else
  {
    v12 = *(v2 + 6);
    v11 = sub_22B727ED0;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_22B727ED0(uint64_t a1)
{
  v2 = v1[25];
  if (v2 >> 62)
  {
    v3 = sub_22B7DC1C8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v1[3] = MEMORY[0x277D84F90];
    v5 = sub_22B7AB8C4(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v5, v6, v7);
    }

    v8 = 0;
    v4 = v1[3];
    v9 = v2 & 0xC000000000000001;
    v19 = v1[25] + 32;
    do
    {
      if (v9)
      {
        v10 = MEMORY[0x231895C80](v8, v1[25]);
      }

      else
      {
        v10 = *(v19 + 8 * v8);
      }

      v11 = v10;
      v12 = [v10 rowID];

      v1[3] = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22B7AB8C4((v13 > 1), v14 + 1, 1);
        v4 = v1[3];
      }

      ++v8;
      *(v4 + 16) = v14 + 1;
      *(v4 + 8 * v14 + 32) = v12;
    }

    while (v3 != v8);
  }

  v1[30] = v4;
  v15 = v1[19];
  v16 = v1[7];
  sub_22B7DA938();
  v17 = sub_22B7DA968();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v5 = sub_22B72809C;
  v6 = v15;
  v7 = 0;

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22B72809C()
{
  v1 = sub_22B797B38(*(v0 + 184), *(v0 + 56));
  if (v1)
  {
    v2 = v1;
    [v1 addItemCount_];
  }

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_22B79B2B4(*(v0 + 240));
  sub_22B79B2B4(MEMORY[0x277D84F90]);
  sub_22B4D0D64(v3, &unk_27D8CF790, &qword_22B7F9578);

  return MEMORY[0x2822009F8](sub_22B728170, v4, 0);
}

uint64_t sub_22B728170()
{
  v4 = *(v0 + 48);

  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *(v0 + 32) = v4;
    *v10 = 136446978;
    *(v10 + 4) = sub_22B4CFAAC(v9, v8, (v0 + 32));
    *(v10 + 12) = 2048;
    v18 = *(v0 + 200);
    if (v7 >> 62)
    {
      v19 = sub_22B7DC1C8();
      v18 = *(v0 + 200);
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = *(v0 + 208);
    v3 = *(v0 + 184);
    v28 = *(v0 + 192);
    v18, v11, v12, v13, v14, v15, v16, v17, v167, v182;
    v27, v29, v30, v31, v32, v33, v34, v35, v168, v183;
    *(v10 + 14) = v19;
    v18, v36, v37, v38, v39, v40, v41, v42, v169, v184;
    v27, v43, v44, v45, v46, v47, v48, v49, v170, v185;
    *(v10 + 22) = 2080;
    v50 = sub_22B7DBE48();
    v52 = v51;
    v53 = sub_22B4CFAAC(v50, v51, (v0 + 32));
    v52, v54, v55, v56, v57, v58, v59, v60, v171, v186;
    *(v10 + 24) = v53;
    *(v10 + 32) = 2080;
    v61 = [objc_opt_self() nameForReason:v28 inFlag:v3];
    v62 = sub_22B7DB6A8();
    v2 = v63;

    v1 = sub_22B4CFAAC(v62, v2, (v0 + 32));
    v2, v64, v65, v66, v67, v68, v69, v70, v172, v187;
    *(v10 + 34) = v1;
    _os_log_impl(&dword_22B4CC000, v5, v6, "[%{public}s] ran %ld task(s) with flag %s and reason %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v4, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  else
  {
    v10 = *(v0 + 208);
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
  }

  while (1)
  {
    v87 = *(v0 + 176) + 1;
    if (v87 == *(v0 + 168))
    {
      break;
    }

    *(v0 + 176) = v87;
    v71 = *(v0 + 120);
    if (v87 >= *(v71 + 16))
    {
      __break(1u);
LABEL_27:
      swift_once();
LABEL_15:
      v89 = sub_22B7DB2B8();
      *(v0 + 216) = sub_22B4CFA74(v89, qword_281422680);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v90 = sub_22B7DB298();
      v91 = sub_22B7DBCB8();

      if (os_log_type_enabled(v90, v91))
      {
        HIDWORD(v182) = v91;
        log = v90;
        v93 = *(v0 + 128);
        v92 = *(v0 + 136);
        v94 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        *(v0 + 40) = v174;
        *v94 = 136446978;
        *(v94 + 4) = sub_22B4CFAAC(v93, v92, (v0 + 40));
        *(v94 + 12) = 2048;
        if (v1 >> 62)
        {
          v102 = sub_22B7DC1C8();
        }

        else
        {
          v102 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v94 + 14) = v102;
        *(v94 + 22) = 2080;
        v1, v95, v96, v97, v98, v99, v100, v101, v174, v182;
        v10, v103, v104, v105, v106, v107, v108, v109, v175, v189;
        if ((v3 & 1) == 0)
        {
          v117 = sub_22B7DBE48();
          v119 = v118;
          v120 = sub_22B4CFAAC(v117, v118, (v0 + 40));
          v119, v121, v122, v123, v124, v125, v126, v127, v176, v190;
          *(v94 + 24) = v120;
          *(v94 + 32) = 2080;
          v1, v128, v129, v130, v131, v132, v133, v134, v177, v191;
          v10, v135, v136, v137, v138, v139, v140, v141, v178, v192;
          if ((v2 & 1) == 0)
          {
            v146 = [objc_opt_self() nameForReason:v4 inFlag:v6];
            v147 = sub_22B7DB6A8();
            v149 = v148;

            v150 = sub_22B4CFAAC(v147, v149, (v0 + 40));
            v149, v151, v152, v153, v154, v155, v156, v157, v179, v193;
            *(v94 + 34) = v150;
            _os_log_impl(&dword_22B4CC000, log, v195, "[%{public}s] running %ld task(s) with flag %s and reason %s", v94, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v180, -1, -1);
            MEMORY[0x231898D60](v94, -1, -1);

LABEL_23:
            sub_22B7DBF98();
            v158 = swift_task_alloc();
            *(v0 + 224) = v158;
            *v158 = v0;
            v158[1] = sub_22B727DA8;
            v142 = v1;
            v143 = v6;
            v144 = v4;
            v145 = v10;

            return MEMORY[0x282172F88](v142, v143, v144, v145);
          }

LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return MEMORY[0x282172F88](v142, v143, v144, v145);
        }

        v1, v110, v111, v112, v113, v114, v115, v116, v176, v190;
        v10, v159, v160, v161, v162, v163, v164, v165, v181, v194;
        __break(1u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        if ((v3 & 1) == 0)
        {
          if ((v2 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v72 = v71 + (v87 << 6);
    v6 = *(v72 + 48);
    *(v0 + 184) = v6;
    LOBYTE(v3) = *(v72 + 56);
    v4 = *(v72 + 64);
    *(v0 + 192) = v4;
    LOBYTE(v2) = *(v72 + 72);
    v1 = *(v72 + 80);
    *(v0 + 200) = v1;
    v10 = *(v72 + 88);
    *(v0 + 208) = v10;

    if ((sub_22B7DBAB8() & 1) == 0)
    {
      if (qword_28141F398 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

    v1, v73, v74, v75, v76, v77, v78, v79, v167, v182;
    v10, v80, v81, v82, v83, v84, v85, v86, v173, v188;
  }

  *(v0 + 120), v20, v21, v22, v23, v24, v25, v26, v167, v182;
  v88 = *(v0 + 152);
  *(v0 + 321) = 0;

  return MEMORY[0x2822009F8](sub_22B728794, v88, 0);
}

uint64_t sub_22B728794()
{
  v0[31] = *(*(v0[19] + 160) + 16);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_22B728834;

  return sub_22B798834();
}

uint64_t sub_22B728834()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22B728944, v1, 0);
}

uint64_t sub_22B728944(__n128 a1)
{
  v64 = v1;
  v2 = *(v1 + 48);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (*(v1 + 321) != 1)
    {
      goto LABEL_4;
    }

LABEL_18:
    if (qword_28141F398 != -1)
    {
LABEL_48:
      swift_once();
    }

    v30 = sub_22B7DB2B8();
    sub_22B4CFA74(v30, qword_281422680);

    v31 = sub_22B7DB298();
    v32 = sub_22B7DBCB8();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = *(v1 + 128);
      v33 = *(v1 + 136);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v63 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_22B4CFAAC(v34, v33, &v63);
      _os_log_impl(&dword_22B4CC000, v31, v32, "[%{public}s] finished batch, has more work to do, but is throttled", v35, 0xCu);
      sub_22B4CFB78(v36);
      MEMORY[0x231898D60](v36, -1, -1);
      MEMORY[0x231898D60](v35, -1, -1);
    }

    else
    {
    }

    v37 = 4;
    goto LABEL_44;
  }

  v10 = *(v1 + 321);
  v11 = *(v1 + 48);
  v12 = *(v2 + 184);
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 24))(v11, ObjectType, v12);
  swift_unknownObjectRelease();
  if (v10 & 1) != 0 || (v14)
  {
    goto LABEL_18;
  }

LABEL_4:
  v15 = *(v1 + 144);
  if (v15 >= 4)
  {
    type metadata accessor for IMPersistentTaskLane(0);
    *(v1 + 16) = v15;

    return sub_22B7DC548();
  }

  v16 = *(&off_2787089E8 + v15);
  *(v1 + 264) = v16;
  v17 = *v16->messageStore;
  *(v1 + 272) = v17;
  if (!v17)
  {
LABEL_11:
    v16, v3, v4, v5, v6, v7, v8, v9, v60, v61;
    if (v15 == 3 || (sub_22B7DAE68(), sub_22B7DAE58(), v22 = sub_22B7DAE38(), , (v22 & 1) == 0))
    {
      if (sub_22B7DBAB8())
      {
        if (qword_28141F398 != -1)
        {
          swift_once();
        }

        v39 = sub_22B7DB2B8();
        sub_22B4CFA74(v39, qword_281422680);

        v40 = sub_22B7DB298();
        v41 = sub_22B7DBCB8();

        if (os_log_type_enabled(v40, v41))
        {
          v43 = *(v1 + 128);
          v42 = *(v1 + 136);
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v63 = v45;
          *v44 = 136446210;
          *(v44 + 4) = sub_22B4CFAAC(v43, v42, &v63);
          _os_log_impl(&dword_22B4CC000, v40, v41, "[%{public}s] finished batch, has more work to do, but is cancelled", v44, 0xCu);
          sub_22B4CFB78(v45);
          MEMORY[0x231898D60](v45, -1, -1);
          MEMORY[0x231898D60](v44, -1, -1);
        }

        else
        {
        }

        v37 = 3;
      }

      else
      {
        if (qword_28141F398 != -1)
        {
          swift_once();
        }

        v51 = sub_22B7DB2B8();
        sub_22B4CFA74(v51, qword_281422680);

        v52 = sub_22B7DB298();
        v53 = sub_22B7DBCB8();

        if (os_log_type_enabled(v52, v53))
        {
          v55 = *(v1 + 128);
          v54 = *(v1 + 136);
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v63 = v57;
          *v56 = 136446210;
          *(v56 + 4) = sub_22B4CFAAC(v55, v54, &v63);
          _os_log_impl(&dword_22B4CC000, v52, v53, "[%{public}s] finished batch, has more work to do, yielding", v56, 0xCu);
          sub_22B4CFB78(v57);
          MEMORY[0x231898D60](v57, -1, -1);
          MEMORY[0x231898D60](v56, -1, -1);
        }

        else
        {
        }

        v37 = 2;
      }
    }

    else
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v23 = sub_22B7DB2B8();
      sub_22B4CFA74(v23, qword_281422680);

      v24 = sub_22B7DB298();
      v25 = sub_22B7DBCB8();

      if (os_log_type_enabled(v24, v25))
      {
        v27 = *(v1 + 128);
        v26 = *(v1 + 136);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v63 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_22B4CFAAC(v27, v26, &v63);
        _os_log_impl(&dword_22B4CC000, v24, v25, "[%{public}s] finished batch, has more work to do, but blocked by low power mode", v28, 0xCu);
        sub_22B4CFB78(v29);
        MEMORY[0x231898D60](v29, -1, -1);
        MEMORY[0x231898D60](v28, -1, -1);
      }

      else
      {
      }

      v37 = 6;
    }

LABEL_44:
    v58 = *(v1 + 248);

    v59 = *(v1 + 8);

    return v59(v37, v58);
  }

  v18 = 0;
  while (1)
  {
    *(v1 + 280) = v18;
    v19 = *(v1 + 264);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    v20 = *(v19 + 8 * v18 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v1 + 288) = Strong;
    if (Strong)
    {
      break;
    }

    v18 = *(v1 + 280) + 1;
    if (v18 == *(v1 + 272))
    {
      v16 = *(v1 + 264);
      v15 = *(v1 + 144);
      goto LABEL_11;
    }
  }

  v46 = *(v1 + 48);
  v47 = *(v46 + 184);
  v48 = swift_getObjectType();
  v49 = *(v46 + 120);
  v62 = (*(v47 + 80) + **(v47 + 80));
  v50 = swift_task_alloc();
  *(v1 + 296) = v50;
  *v50 = v1;
  v50[1] = sub_22B729128;

  return v62(v49, v20, v48, v47);
}

uint64_t sub_22B729128(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_22B729240, v2, 0);
}

uint64_t sub_22B729240(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v82 = v8;
  v9 = *(v8 + 304);
  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_52:
    v11 = sub_22B7DC1C8();
    v12 = *(v8 + 304);
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *(v8 + 304);
  }

  v13 = 0;
  v14 = v9 & 0xC000000000000001;
  v15 = v12 + 32;
  while (v11 != v13)
  {
    if (v14)
    {
      v16 = MEMORY[0x231895C80](v13, *(v8 + 304));
    }

    else
    {
      if (v13 >= *(v10 + 16))
      {
        goto LABEL_50;
      }

      v16 = *(v15 + 8 * v13);
    }

    v9 = v16;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v17 = [v16 isEmpty];

    ++v13;
    if ((v17 & 1) == 0)
    {
      v35 = *(v8 + 304);
      *(v8 + 264), a2, a3, a4, a5, a6, a7, a8, v76, v78;
      v35, v36, v37, v38, v39, v40, v41, v42, v77, v79;
      swift_unknownObjectRelease();
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v43 = sub_22B7DB2B8();
      sub_22B4CFA74(v43, qword_281422680);

      v44 = sub_22B7DB298();
      v45 = sub_22B7DBCB8();

      if (os_log_type_enabled(v44, v45))
      {
        v47 = *(v8 + 128);
        v46 = *(v8 + 136);
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v81 = v49;
        *v48 = 136446210;
        *(v48 + 4) = sub_22B4CFAAC(v47, v46, &v81);
        _os_log_impl(&dword_22B4CC000, v44, v45, "[%{public}s] finished batch, has more work to do, but has higher priority work", v48, 0xCu);
        sub_22B4CFB78(v49);
        MEMORY[0x231898D60](v49, -1, -1);
        MEMORY[0x231898D60](v48, -1, -1);
      }

      else
      {
      }

      v50 = 5;
      goto LABEL_46;
    }
  }

  *(v8 + 304), a2, a3, a4, a5, a6, a7, a8, v76, v78;
  swift_unknownObjectRelease();
  while (1)
  {
    v25 = *(v8 + 280) + 1;
    if (v25 == *(v8 + 272))
    {
      break;
    }

    *(v8 + 280) = v25;
    v26 = *(v8 + 264);
    if (v25 >= *(v26 + 16))
    {
      goto LABEL_51;
    }

    v27 = *(v26 + 8 * v25 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v8 + 288) = Strong;
    if (Strong)
    {
      v29 = *(v8 + 48);
      v30 = *(v29 + 184);
      ObjectType = swift_getObjectType();
      v32 = *(v29 + 120);
      v80 = (*(v30 + 80) + **(v30 + 80));
      v33 = swift_task_alloc();
      *(v8 + 296) = v33;
      *v33 = v8;
      v33[1] = sub_22B729128;

      return v80(v32, v27, ObjectType, v30);
    }
  }

  v51 = *(v8 + 144);
  *(v8 + 264), v18, v19, v20, v21, v22, v23, v24, v76, v78;
  if (v51 == 3 || (sub_22B7DAE68(), sub_22B7DAE58(), v52 = sub_22B7DAE38(), , (v52 & 1) == 0))
  {
    if (sub_22B7DBAB8())
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v60 = sub_22B7DB2B8();
      sub_22B4CFA74(v60, qword_281422680);

      v61 = sub_22B7DB298();
      v62 = sub_22B7DBCB8();

      if (os_log_type_enabled(v61, v62))
      {
        v64 = *(v8 + 128);
        v63 = *(v8 + 136);
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v81 = v66;
        *v65 = 136446210;
        *(v65 + 4) = sub_22B4CFAAC(v64, v63, &v81);
        _os_log_impl(&dword_22B4CC000, v61, v62, "[%{public}s] finished batch, has more work to do, but is cancelled", v65, 0xCu);
        sub_22B4CFB78(v66);
        MEMORY[0x231898D60](v66, -1, -1);
        MEMORY[0x231898D60](v65, -1, -1);
      }

      else
      {
      }

      v50 = 3;
    }

    else
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v67 = sub_22B7DB2B8();
      sub_22B4CFA74(v67, qword_281422680);

      v68 = sub_22B7DB298();
      v69 = sub_22B7DBCB8();

      if (os_log_type_enabled(v68, v69))
      {
        v71 = *(v8 + 128);
        v70 = *(v8 + 136);
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v81 = v73;
        *v72 = 136446210;
        *(v72 + 4) = sub_22B4CFAAC(v71, v70, &v81);
        _os_log_impl(&dword_22B4CC000, v68, v69, "[%{public}s] finished batch, has more work to do, yielding", v72, 0xCu);
        sub_22B4CFB78(v73);
        MEMORY[0x231898D60](v73, -1, -1);
        MEMORY[0x231898D60](v72, -1, -1);
      }

      else
      {
      }

      v50 = 2;
    }
  }

  else
  {
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v53 = sub_22B7DB2B8();
    sub_22B4CFA74(v53, qword_281422680);

    v54 = sub_22B7DB298();
    v55 = sub_22B7DBCB8();

    if (os_log_type_enabled(v54, v55))
    {
      v57 = *(v8 + 128);
      v56 = *(v8 + 136);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v81 = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_22B4CFAAC(v57, v56, &v81);
      _os_log_impl(&dword_22B4CC000, v54, v55, "[%{public}s] finished batch, has more work to do, but blocked by low power mode", v58, 0xCu);
      sub_22B4CFB78(v59);
      MEMORY[0x231898D60](v59, -1, -1);
      MEMORY[0x231898D60](v58, -1, -1);
    }

    else
    {
    }

    v50 = 6;
  }

LABEL_46:
  v74 = *(v8 + 248);

  v75 = *(v8 + 8);

  return v75(v50, v74);
}

uint64_t sub_22B729A30()
{
  v98 = v0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 48);

  v4 = v2;
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC98();

  if (!os_log_type_enabled(v5, v6))
  {
    v14 = *(v0 + 200);
    v45 = *(v0 + 208);
    v14, v7, v8, v9, v10, v11, v12, v13, v86, v91;

    v45, v46, v47, v48, v49, v50, v51, v52, v88, v93;
    goto LABEL_6;
  }

  v14 = *(v0 + 200);
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v17 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v97 = v3;
  *v17 = 136446722;
  *(v17 + 4) = sub_22B4CFAAC(v16, v15, &v97);
  *(v17 + 12) = 2048;
  if (v14 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B7DC1C8())
  {
    v26 = *(v0 + 232);
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    *(v17 + 14) = i;
    v27, v18, v19, v20, v21, v22, v23, v24, v86, v91;
    v28, v29, v30, v31, v32, v33, v34, v35, v87, v92;
    *(v17 + 22) = 2112;
    v36 = v26;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v37;
    *v1 = v37;
    _os_log_impl(&dword_22B4CC000, v5, v6, "[%{public}s] failed to run %ld with error %@", v17, 0x20u);
    sub_22B4D0D64(v1, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v1, -1, -1);
    sub_22B4CFB78(v3);
    MEMORY[0x231898D60](v3, -1, -1);
    MEMORY[0x231898D60](v17, -1, -1);

LABEL_6:
    if (*(v0 + 200) >> 62)
    {
      v17 = sub_22B7DC1C8();
      if (!v17)
      {
LABEL_18:
        v76 = *(v0 + 208);
        *(v0 + 200), v38, v39, v40, v41, v42, v43, v44, v86, v91;
        v76, v77, v78, v79, v80, v81, v82, v83, v90, v96;
        v54 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    v97 = MEMORY[0x277D84F90];
    v5 = &v97;
    sub_22B7AB8C4(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    ;
  }

  v53 = 0;
  v54 = v97;
  v55 = v14 & 0xC000000000000001;
  v94 = (*(v0 + 200) + 32);
  do
  {
    if (v55)
    {
      v56 = MEMORY[0x231895C80](v53, *(v0 + 200));
    }

    else
    {
      v56 = v94[v53];
    }

    v57 = v56;
    v58 = [v56 rowID];

    v97 = v54;
    v67 = *(v54 + 16);
    v66 = *(v54 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_22B7AB8C4((v66 > 1), v67 + 1, 1);
      v54 = v97;
    }

    ++v53;
    *(v54 + 16) = v67 + 1;
    *(v54 + 8 * v67 + 32) = v58;
  }

  while (v17 != v53);
  v68 = *(v0 + 208);
  *(v0 + 200), v59, v60, v61, v62, v63, v64, v65, v86, v94;
  v68, v69, v70, v71, v72, v73, v74, v75, v89, v95;
LABEL_19:
  *(v0 + 312) = v54;
  v84 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_22B729D90, v84, 0);
}

uint64_t sub_22B729D90()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 48);
  sub_22B79B2B4(MEMORY[0x277D84F90]);
  sub_22B79B2B4(v1);

  return MEMORY[0x2822009F8](sub_22B729E20, v2, 0);
}

uint64_t sub_22B729E20()
{
  v1 = *(v0 + 152);
  *(v0 + 321) = 1;

  return MEMORY[0x2822009F8](sub_22B728794, v1, 0);
}

uint64_t sub_22B729E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22B7DC3E8();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22B729F90, 0, 0);
}

uint64_t sub_22B729F90()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_22B7DC408();
  v5 = sub_22B72A348(&qword_28141EFC0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22B7DC588();
  sub_22B72A348(&qword_28141EFC8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22B7DC418();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_22B72A120;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_22B72A120()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B72A2DC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_22B72A2DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B72A348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B72A39C(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22B6F0D94;

  return sub_22B725D48(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_22B72A498()
{
  v54 = v0;
  if (qword_28141F398 != -1)
  {
LABEL_34:
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  v0[4] = sub_22B4CFA74(v1, qword_281422680);

  v2 = sub_22B7DB298();
  v3 = sub_22B7DBCB8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_22B4CFAAC(*(v4 + 248), *(v4 + 256), &v53);
    _os_log_impl(&dword_22B4CC000, v2, v3, "[%{public}s] Validating resume request for persistent task", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v7 = v0[3];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v0[3];
    v16 = *(v7 + 184);
    ObjectType = swift_getObjectType();
    LOBYTE(v15) = (*(v16 + 24))(v15, ObjectType, v16);
    swift_unknownObjectRelease();
    if (v15)
    {

      v18 = sub_22B7DB298();
      v19 = sub_22B7DBCB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = v0[3];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v53 = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_22B4CFAAC(*(v20 + 248), *(v20 + 256), &v53);
        _os_log_impl(&dword_22B4CC000, v18, v19, "[%{public}s] Ignoring request to resume task because it is throttled", v21, 0xCu);
        sub_22B4CFB78(v22);
        MEMORY[0x231898D60](v22, -1, -1);
        MEMORY[0x231898D60](v21, -1, -1);
      }

      v23 = 0;
      v24 = 4;
LABEL_27:
      v44 = v0[1];

      return v44(v24, v23);
    }
  }

  v25 = *(v0[3] + 112);
  v0[5] = v25;
  if (v25 >= 4)
  {
    type metadata accessor for IMPersistentTaskLane(0);
    v0[2] = v25;

    return sub_22B7DC548();
  }

  else
  {
    v26 = *(&off_278708A08 + v25);
    v0[6] = v26;
    v27 = *v26->messageStore;
    v0[7] = v27;
    if (!v27)
    {
LABEL_16:
      v26, v8, v9, v10, v11, v12, v13, v14, v50, v51;
      if (v25 == 3 || (sub_22B7DAE68(), sub_22B7DAE58(), v32 = sub_22B7DAE38(), , (v32 & 1) == 0))
      {

        v39 = sub_22B7DB298();
        v40 = sub_22B7DBCB8();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = v0[3];
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v53 = v43;
          *v42 = 136446210;
          *(v42 + 4) = sub_22B4CFAAC(*(v41 + 248), *(v41 + 256), &v53);
          _os_log_impl(&dword_22B4CC000, v39, v40, "[%{public}s] Resume request for persistent task is allowed to proceed", v42, 0xCu);
          sub_22B4CFB78(v43);
          MEMORY[0x231898D60](v43, -1, -1);
          MEMORY[0x231898D60](v42, -1, -1);
        }

        v24 = 0;
        v23 = 1;
      }

      else
      {

        v33 = sub_22B7DB298();
        v34 = sub_22B7DBCB8();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = v0[3];
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v53 = v37;
          *v36 = 136446210;
          *(v36 + 4) = sub_22B4CFAAC(*(v35 + 248), *(v35 + 256), &v53);
          _os_log_impl(&dword_22B4CC000, v33, v34, "[%{public}s] Ignoring request to resume task because it is blocked by low power mode", v36, 0xCu);
          sub_22B4CFB78(v37);
          MEMORY[0x231898D60](v37, -1, -1);
          MEMORY[0x231898D60](v36, -1, -1);
        }

        v23 = 0;
        v24 = 6;
      }

      goto LABEL_27;
    }

    v28 = 0;
    while (1)
    {
      v0[8] = v28;
      v29 = v0[6];
      if (v28 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v30 = *(v29 + 8 * v28 + 32);
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[9] = Strong;
      if (Strong)
      {
        break;
      }

      v28 = v0[8] + 1;
      if (v28 == v0[7])
      {
        v25 = v0[5];
        v26 = v0[6];
        goto LABEL_16;
      }
    }

    v45 = v0[3];
    v46 = *(v45 + 184);
    v47 = swift_getObjectType();
    v48 = *(v45 + 120);
    v52 = (*(v46 + 80) + **(v46 + 80));
    v49 = swift_task_alloc();
    v0[10] = v49;
    *v49 = v0;
    v49[1] = sub_22B72AAF4;

    return v52(v48, v30, v47, v46);
  }
}

uint64_t sub_22B72AAF4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22B72AC0C, v2, 0);
}

uint64_t sub_22B72AC0C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v70 = v8;
  v9 = *(v8 + 88);
  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_36:
    v11 = sub_22B7DC1C8();
    v12 = *(v8 + 88);
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *(v8 + 88);
  }

  v13 = 0;
  v14 = v9 & 0xC000000000000001;
  v15 = v12 + 32;
  while (v11 != v13)
  {
    if (v14)
    {
      v16 = MEMORY[0x231895C80](v13, *(v8 + 88));
    }

    else
    {
      if (v13 >= *(v10 + 16))
      {
        goto LABEL_34;
      }

      v16 = *(v15 + 8 * v13);
    }

    v9 = v16;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v17 = [v16 isEmpty];

    ++v13;
    if ((v17 & 1) == 0)
    {
      v35 = *(v8 + 88);
      *(v8 + 48), a2, a3, a4, a5, a6, a7, a8, v64, v66;
      v35, v36, v37, v38, v39, v40, v41, v42, v65, v67;
      swift_unknownObjectRelease();

      v43 = sub_22B7DB298();
      v44 = sub_22B7DBCB8();

      if (os_log_type_enabled(v43, v44))
      {
        v46 = *(v8 + 24);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v69 = v48;
        *v47 = 136446210;
        *(v47 + 4) = sub_22B4CFAAC(*(v46 + 248), *(v46 + 256), &v69);
        _os_log_impl(&dword_22B4CC000, v43, v44, "[%{public}s] Ignoring request to resume task because it has higher priority work", v47, 0xCu);
        sub_22B4CFB78(v48);
        MEMORY[0x231898D60](v48, -1, -1);
        MEMORY[0x231898D60](v47, -1, -1);
      }

      v49 = 0;
      v50 = 5;
      goto LABEL_30;
    }
  }

  *(v8 + 88), a2, a3, a4, a5, a6, a7, a8, v64, v66;
  swift_unknownObjectRelease();
  while (1)
  {
    v25 = *(v8 + 64) + 1;
    if (v25 == *(v8 + 56))
    {
      break;
    }

    *(v8 + 64) = v25;
    v26 = *(v8 + 48);
    if (v25 >= *(v26 + 16))
    {
      goto LABEL_35;
    }

    v27 = *(v26 + 8 * v25 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v8 + 72) = Strong;
    if (Strong)
    {
      v29 = *(v8 + 24);
      v30 = *(v29 + 184);
      ObjectType = swift_getObjectType();
      v32 = *(v29 + 120);
      v68 = (*(v30 + 80) + **(v30 + 80));
      v33 = swift_task_alloc();
      *(v8 + 80) = v33;
      *v33 = v8;
      v33[1] = sub_22B72AAF4;

      return v68(v32, v27, ObjectType, v30);
    }
  }

  v51 = *(v8 + 40);
  *(v8 + 48), v18, v19, v20, v21, v22, v23, v24, v64, v66;
  if (v51 == 3 || (sub_22B7DAE68(), sub_22B7DAE58(), v52 = sub_22B7DAE38(), , (v52 & 1) == 0))
  {

    v58 = sub_22B7DB298();
    v59 = sub_22B7DBCB8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v8 + 24);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_22B4CFAAC(*(v60 + 248), *(v60 + 256), &v69);
      _os_log_impl(&dword_22B4CC000, v58, v59, "[%{public}s] Resume request for persistent task is allowed to proceed", v61, 0xCu);
      sub_22B4CFB78(v62);
      MEMORY[0x231898D60](v62, -1, -1);
      MEMORY[0x231898D60](v61, -1, -1);
    }

    v50 = 0;
    v49 = 1;
  }

  else
  {

    v53 = sub_22B7DB298();
    v54 = sub_22B7DBCB8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v8 + 24);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v69 = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_22B4CFAAC(*(v55 + 248), *(v55 + 256), &v69);
      _os_log_impl(&dword_22B4CC000, v53, v54, "[%{public}s] Ignoring request to resume task because it is blocked by low power mode", v56, 0xCu);
      sub_22B4CFB78(v57);
      MEMORY[0x231898D60](v57, -1, -1);
      MEMORY[0x231898D60](v56, -1, -1);
    }

    v49 = 0;
    v50 = 6;
  }

LABEL_30:
  v63 = *(v8 + 8);

  return v63(v50, v49);
}

uint64_t sub_22B72B164()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B72B1F4;

  return sub_22B72A478();
}

uint64_t sub_22B72B1F4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 32) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x2822009F8](sub_22B72B310, v4, 0);
}

uint64_t sub_22B72B310()
{
  v24 = v0;
  if (*(v0 + 96))
  {
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v1 = sub_22B7DB2B8();
    *(v0 + 40) = sub_22B4CFA74(v1, qword_281422680);

    v2 = sub_22B7DB298();
    v3 = sub_22B7DBCB8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 16);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_22B4CFAAC(*(v4 + 248), *(v4 + 256), &v23);
      _os_log_impl(&dword_22B4CC000, v2, v3, "[%{public}s] Resuming task", v5, 0xCu);
      sub_22B4CFB78(v6);
      MEMORY[0x231898D60](v6, -1, -1);
      MEMORY[0x231898D60](v5, -1, -1);
    }

    v7 = *(v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 48) = Strong;
    if (Strong)
    {
      v9 = *(v7 + 184);
      ObjectType = swift_getObjectType();
      v22 = (*(v9 + 72) + **(v9 + 72));
      v11 = swift_task_alloc();
      *(v0 + 56) = v11;
      *v11 = v0;
      v11[1] = sub_22B72B6F4;
      v12 = *(v0 + 16);

      return v22(v12, ObjectType, v9);
    }

    else
    {

      v16 = sub_22B7DB298();
      v17 = sub_22B7DBC88();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v0 + 16);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v23 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_22B4CFAAC(*(v18 + 248), *(v18 + 256), &v23);
        _os_log_impl(&dword_22B4CC000, v16, v17, "[%{public}s] Finished notifying delegate of resume", v19, 0xCu);
        sub_22B4CFB78(v20);
        MEMORY[0x231898D60](v20, -1, -1);
        MEMORY[0x231898D60](v19, -1, -1);
      }

      *(v0 + 64) = 0;
      v21 = swift_task_alloc();
      *(v0 + 72) = v21;
      *v21 = v0;
      v21[1] = sub_22B72B994;

      return sub_22B726D90(100);
    }
  }

  else
  {
    v14 = *(v0 + 32);
    v15 = *(v0 + 8);

    return v15(v14, 0);
  }
}

uint64_t sub_22B72B6F4()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B72B820, v1, 0);
}

uint64_t sub_22B72B820()
{
  v9 = v0;

  v1 = sub_22B7DB298();
  v2 = sub_22B7DBC88();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[2];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22B4CFAAC(*(v3 + 248), *(v3 + 256), &v8);
    _os_log_impl(&dword_22B4CC000, v1, v2, "[%{public}s] Finished notifying delegate of resume", v4, 0xCu);
    sub_22B4CFB78(v5);
    MEMORY[0x231898D60](v5, -1, -1);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v0[8] = 0;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_22B72B994;

  return sub_22B726D90(100);
}

uint64_t sub_22B72B994(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_22B72BAAC, v4, 0);
}

void sub_22B72BAAC()
{
  v34 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
  }

  else
  {

    v4 = sub_22B7DB298();
    v5 = sub_22B7DBCB8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_22B4CFAAC(*(v6 + 248), *(v6 + 256), &v33);
      *(v7 + 12) = 2048;
      *(v7 + 14) = v3;
      _os_log_impl(&dword_22B4CC000, v4, v5, "[%{public}s] Total completed is now %ld", v7, 0x16u);
      sub_22B4CFB78(v8);
      MEMORY[0x231898D60](v8, -1, -1);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    if (v0[10] != 2 || swift_unknownObjectWeakLoadStrong() && (v9 = v0[2], v10 = *(v9 + 184), ObjectType = swift_getObjectType(), LOBYTE(v9) = (*(v10 + 24))(v9, ObjectType, v10), swift_unknownObjectRelease(), (v9 & 1) != 0))
    {

      v12 = sub_22B7DB298();
      v13 = sub_22B7DBCB8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = v0[2];
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33 = v16;
        *v15 = 136446466;
        *(v15 + 4) = sub_22B4CFAAC(*(v14 + 248), *(v14 + 256), &v33);
        *(v15 + 12) = 2080;
        v17 = NSStringFromIMPersistentTaskRunResult();
        v18 = sub_22B7DB6A8();
        v20 = v19;

        v21 = sub_22B4CFAAC(v18, v20, &v33);
        v20, v22, v23, v24, v25, v26, v27, v28, v32, v33;
        *(v15 + 14) = v21;
        _os_log_impl(&dword_22B4CC000, v12, v13, "[%{public}s] Batch result %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v16, -1, -1);
        MEMORY[0x231898D60](v15, -1, -1);
      }

      v29 = v0[10];
      v30 = v0[1];

      v30(v29, v3);
    }

    else
    {
      v0[8] = v3;
      v31 = swift_task_alloc();
      v0[9] = v31;
      *v31 = v0;
      v31[1] = sub_22B72B994;

      sub_22B726D90(100);
    }
  }
}

uint64_t sub_22B72BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22B7DB368();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B72BEE4, v3, 0);
}

uint64_t sub_22B72BEE4()
{
  v64 = v0;
  v1 = v0[2];
  if ((v1 - 4) < 3)
  {
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v2 = sub_22B7DB2B8();
    sub_22B4CFA74(v2, qword_281422680);

    v3 = sub_22B7DB298();
    v4 = sub_22B7DBCB8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[5];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v62 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_22B4CFAAC(*(v5 + 248), *(v5 + 256), &v62);
      *(v6 + 12) = 2082;
      v8 = NSStringFromIMPersistentTaskRunResult();
      v9 = sub_22B7DB6A8();
      v11 = v10;

      v12 = sub_22B4CFAAC(v9, v11, &v62);
      v11, v13, v14, v15, v16, v17, v18, v19, v62, v63;
      *(v6 + 14) = v12;
      _os_log_impl(&dword_22B4CC000, v3, v4, "[%{public}s] blocked due to %{public}s, expiring with infinite delay", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v7, -1, -1);
      MEMORY[0x231898D60](v6, -1, -1);
    }

    v21 = v0[7];
    v20 = v0[8];
    v23 = v0[5];
    v22 = v0[6];
    v24 = v0[4];
    *(v23 + 216) = 1;
    v25 = swift_allocObject();
    v0[12] = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    (*(v21 + 104))(v20, *MEMORY[0x277D851B8], v22);
    v26 = sub_22B72C7F4;

    v27 = v24;
LABEL_13:

    return MEMORY[0x2822009F8](v26, 0, 0);
  }

  if (v1 == 1)
  {
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v28 = sub_22B7DB2B8();
    sub_22B4CFA74(v28, qword_281422680);

    v29 = sub_22B7DB298();
    v30 = sub_22B7DBCB8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[5];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22B4CFAAC(*(v31 + 248), *(v31 + 256), &v62);
      _os_log_impl(&dword_22B4CC000, v29, v30, "[%{public}s] finished, marking completed", v32, 0xCu);
      sub_22B4CFB78(v33);
      MEMORY[0x231898D60](v33, -1, -1);
      MEMORY[0x231898D60](v32, -1, -1);
    }

    v35 = v0[7];
    v34 = v0[8];
    v36 = v0[6];
    v37 = v0[4];
    v38 = swift_allocObject();
    v0[9] = v38;
    *(v38 + 16) = v37;
    (*(v35 + 104))(v34, *MEMORY[0x277D851B8], v36);
    v26 = sub_22B72C4A8;
    v39 = v37;
    goto LABEL_13;
  }

  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v40 = sub_22B7DB2B8();
  sub_22B4CFA74(v40, qword_281422680);

  v41 = sub_22B7DB298();
  v42 = sub_22B7DBCB8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v0[5];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v62 = v45;
    *v44 = 136446466;
    *(v44 + 4) = sub_22B4CFAAC(*(v43 + 248), *(v43 + 256), &v62);
    *(v44 + 12) = 2082;
    v46 = NSStringFromIMPersistentTaskRunResult();
    v47 = sub_22B7DB6A8();
    v49 = v48;

    v50 = sub_22B4CFAAC(v47, v49, &v62);
    v49, v51, v52, v53, v54, v55, v56, v57, v62, v63;
    *(v44 + 14) = v50;
    _os_log_impl(&dword_22B4CC000, v41, v42, "[%{public}s] %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v45, -1, -1);
    MEMORY[0x231898D60](v44, -1, -1);
  }

  v58 = swift_task_alloc();
  v0[15] = v58;
  *v58 = v0;
  v58[1] = sub_22B72CAAC;
  v60 = v0[2];
  v59 = v0[3];

  return sub_22B7266A4(v60, v59);
}

uint64_t sub_22B72C4A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v2;
  v3[3] = sub_22B72DC04;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_22B72C5B0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DC18, v3, v5);
}