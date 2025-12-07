uint64_t sub_1DAB4F708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DAA68090(0);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v4 = sub_1DACB89D4();
  v5 = sub_1DACB8A54();

  return v5;
}

uint64_t sub_1DAB4F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DACB7D04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v8 = sub_1DACB7CE4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = 1;
  sub_1DACB71E4();
  sub_1DACB88E4();

  return v8;
}

uint64_t sub_1DAB4F8F0(uint64_t a1, char a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v8 + v7 + v6) = a2;
  sub_1DACB88E4();
}

uint64_t sub_1DAB4FA78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1DAA68090(0);
  sub_1DACB8BB4();
  v8 = sub_1DACB89D4();
  sub_1DAA4E420(0, a4, a5, MEMORY[0x1E69E6720]);
  v9 = sub_1DACB8A54();

  return v9;
}

uint64_t sub_1DAB4FB28(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_1DACB88E4();
}

uint64_t sub_1DAB4FBE0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71E4();
  sub_1DACB88E4();
}

uint64_t sub_1DAB4FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1DACB88E4();
}

uint64_t sub_1DAB4FE74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_1DAB5000C(v8, a2, a3, v3, v6, v7);
}

uint64_t sub_1DAB4FED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DAB5000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v15, a2, a3, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_1DAB501A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA4E420(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1DACB8B74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAB5021C(void **a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  sub_1DAB4E9AC(a1, v4, v5);
}

void sub_1DAB502FC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    sub_1DACB71E4();
    v4 = sub_1DACB92F4();
    v5 = sub_1DACB92F4();
    v6 = [v4 fc:v5 numberFollowingString:?];

    if (v6)
    {

      [v6 integerValue];

      return;
    }

    v7 = HIBYTE(a2) & 0xF;
    v8 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1DABBDB84(a1, a2, 10);
        goto LABEL_66;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v35[0] = a1;
        v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (a1 == 43)
        {
          if (v7)
          {
            if (--v7)
            {
              v24 = 0;
              v25 = v35 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }

          goto LABEL_74;
        }

        if (a1 != 45)
        {
          if (v7)
          {
            v31 = 0;
            v32 = v35;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

        if (v7)
        {
          if (--v7)
          {
            v16 = 0;
            v17 = v35 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v10 = sub_1DACB9D24();
        }

        v11 = *v10;
        if (v11 == 43)
        {
          if (v8 >= 1)
          {
            v7 = v8 - 1;
            if (v8 != 1)
            {
              v20 = 0;
              if (v10)
              {
                v21 = v10 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_64;
                  }

                  v23 = 10 * v20;
                  if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v20 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    goto LABEL_64;
                  }

                  ++v21;
                  if (!--v7)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_56;
            }

            goto LABEL_64;
          }

          goto LABEL_73;
        }

        if (v11 != 45)
        {
          if (v8)
          {
            v28 = 0;
            if (v10)
            {
              while (1)
              {
                v29 = *v10 - 48;
                if (v29 > 9)
                {
                  goto LABEL_64;
                }

                v30 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  goto LABEL_64;
                }

                v28 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_64;
                }

                ++v10;
                if (!--v8)
                {
                  goto LABEL_56;
                }
              }
            }

            goto LABEL_56;
          }

LABEL_64:
          LOBYTE(v7) = 1;
          goto LABEL_65;
        }

        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v13 = v10 + 1;
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_64;
                }

                v15 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v15 - v14;
                if (__OFSUB__(v15, v14))
                {
                  goto LABEL_64;
                }

                ++v13;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_56:
            LOBYTE(v7) = 0;
LABEL_65:
            v36 = v7;
LABEL_66:

            return;
          }

          goto LABEL_64;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1DAB5068C(void *a1)
{
  sub_1DAA492B4(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v101 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v100 = &v96 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v96 - v7;
  v9 = sub_1DACB7CC4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v98 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v96 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v96 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v96 - v19;
  v113 = MEMORY[0x1E69E7CC0];
  v20 = [a1 recordID];
  v21 = [v20 recordName];

  v22 = sub_1DACB9324();
  v24 = v23;

  if (v22 == 0x6F666E4972657375 && v24 == 0xE800000000000000)
  {
  }

  else
  {
    v25 = sub_1DACBA174();

    if ((v25 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v26 = [a1 encryptedValues];
  v27 = sub_1DACB92F4();
  v28 = [v26 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v28 && (v110 = v28, sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue), (swift_dynamicCast() & 1) != 0))
  {
    v29 = v108;
    v30 = v109;
    updated = type metadata accessor for UpdateUserIDCommand();
    v32 = objc_allocWithZone(updated);
    v33 = &v32[OBJC_IVAR___SCUpdateUserIDCommand_userID];
    *v33 = v29;
    v33[1] = v30;
    v32[OBJC_IVAR___SCUpdateUserIDCommand_overwrite] = 0;
    v103.receiver = v32;
    v103.super_class = updated;
    objc_msgSendSuper2(&v103, sel_init);
    MEMORY[0x1E12770F0]();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
    v34 = v113;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = [a1 encryptedValues];
  v36 = sub_1DACB92F4();
  v37 = [v35 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v37)
  {
    v110 = v37;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    if (swift_dynamicCast())
    {
      v97 = v15;
      v38 = v108;
      v39 = v109;
      v40 = v102;
      sub_1DACB7C84();
      v41 = type metadata accessor for UpdateAdsUserIDCommand(0);
      v42 = objc_allocWithZone(v41);
      v43 = &v42[OBJC_IVAR___SCUpdateAdsUserIDCommand_userID];
      *v43 = v38;
      v43[1] = v39;
      (*(v10 + 16))(&v42[OBJC_IVAR___SCUpdateAdsUserIDCommand_userIDCreatedDate], v40, v9);
      v42[OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite] = 0;
      v104.receiver = v42;
      v104.super_class = v41;
      objc_msgSendSuper2(&v104, sel_init);
      v44 = (*(v10 + 8))(v40, v9);
      MEMORY[0x1E12770F0](v44);
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DACB9694();
      }

      sub_1DACB96F4();
      v34 = v113;
      v15 = v97;
    }
  }

  v45 = [a1 encryptedValues];
  v46 = sub_1DACB92F4();
  v47 = [v45 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v47)
  {
    v99 = *(v10 + 56);
    v99(v8, 1, 1, v9);
    goto LABEL_22;
  }

  v108 = v47;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  v48 = swift_dynamicCast();
  v49 = *(v10 + 56);
  v49(v8, v48 ^ 1u, 1, v9);
  v50 = (*(v10 + 48))(v8, 1, v9);
  v99 = v49;
  if (v50 == 1)
  {
LABEL_22:
    sub_1DAA776C4(v8);
    goto LABEL_23;
  }

  v97 = v15;
  (*(v10 + 32))(v18, v8, v9);
  v51 = *(v10 + 16);
  v52 = v102;
  v51(v102, v18, v9);
  v53 = type metadata accessor for UpdateUserStartDateCommand(0);
  v54 = objc_allocWithZone(v53);
  v51(&v54[OBJC_IVAR___SCUpdateUserStartDateCommand_startDate], v52, v9);
  v54[OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy] = 2;
  v105.receiver = v54;
  v105.super_class = v53;
  objc_msgSendSuper2(&v105, sel_init);
  v55 = *(v10 + 8);
  v56 = v55(v52, v9);
  MEMORY[0x1E12770F0](v56);
  if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v55(v18, v9);
  v34 = v113;
  v15 = v97;
LABEL_23:
  v57 = [a1 valuesByKey];
  v58 = sub_1DACB92F4();
  v59 = [v57 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v59)
  {
    v108 = v59;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    if (swift_dynamicCast())
    {
      v60 = v110;
      v61 = type metadata accessor for UpdateUpsellAppLaunchCountCommand();
      v62 = objc_allocWithZone(v61);
      *&v62[OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount] = v60;
      v106.receiver = v62;
      v106.super_class = v61;
      objc_msgSendSuper2(&v106, sel_init);
      MEMORY[0x1E12770F0]();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DACB9694();
      }

      sub_1DACB96F4();
      v34 = v113;
    }
  }

  v63 = [a1 valuesByKey];
  v64 = sub_1DACB92F4();
  v65 = [v63 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v65)
  {
    v110 = v65;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    if (swift_dynamicCast())
    {
      v66 = v108;
      v67 = v109;
      v68 = type metadata accessor for UpdateLastAppLaunchUpsellInstanceIDCommand();
      v69 = objc_allocWithZone(v68);
      v70 = &v69[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
      *v70 = v66;
      *(v70 + 1) = v67;
      v107.receiver = v69;
      v107.super_class = v68;
      objc_msgSendSuper2(&v107, sel_init);
      MEMORY[0x1E12770F0]();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DACB9694();
      }

      sub_1DACB96F4();
      v34 = v113;
    }
  }

  v71 = [a1 encryptedValues];
  v72 = sub_1DACB92F4();
  v73 = [v71 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v73)
  {
    v74 = v100;
    v76 = v99;
    v99(v100, 1, 1, v9);
    goto LABEL_39;
  }

  v108 = v73;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  v74 = v100;
  v75 = swift_dynamicCast();
  v76 = v99;
  v99(v74, v75 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v74, 1, v9) == 1)
  {
LABEL_39:
    sub_1DAA776C4(v74);
    goto LABEL_40;
  }

  (*(v10 + 32))(v15, v74, v9);
  v77 = *(v10 + 16);
  v78 = v102;
  v77(v102, v15, v9);
  v79 = type metadata accessor for UpdateAppLaunchUpsellLastSeenDateCommand(0);
  v80 = objc_allocWithZone(v79);
  v77(&v80[OBJC_IVAR___SCUpdateAppLaunchUpsellLastSeenDateCommand_appLaunchUpsellLastSeenDate], v78, v9);
  v111.receiver = v80;
  v111.super_class = v79;
  objc_msgSendSuper2(&v111, sel_init);
  v81 = *(v10 + 8);
  v82 = v81(v78, v9);
  MEMORY[0x1E12770F0](v82);
  if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v81(v15, v9);
  v34 = v113;
  v76 = v99;
LABEL_40:
  v83 = [a1 encryptedValues];
  v84 = sub_1DACB92F4();
  v85 = [v83 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v85)
  {
    v86 = v101;
    v76(v101, 1, 1, v9);
    goto LABEL_46;
  }

  v108 = v85;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  v86 = v101;
  v87 = swift_dynamicCast();
  v76(v86, v87 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v86, 1, v9) == 1)
  {
LABEL_46:
    sub_1DAA776C4(v86);
    return v34;
  }

  v88 = v98;
  (*(v10 + 32))(v98, v86, v9);
  v89 = *(v10 + 16);
  v90 = v102;
  v89(v102, v88, v9);
  v91 = type metadata accessor for UpdateAppReviewRequestLastSeenDateCommand(0);
  v92 = objc_allocWithZone(v91);
  v89(&v92[OBJC_IVAR___SCUpdateAppReviewRequestLastSeenDateCommand_appReviewRequestLastSeenDate], v90, v9);
  v112.receiver = v92;
  v112.super_class = v91;
  objc_msgSendSuper2(&v112, sel_init);
  v93 = *(v10 + 8);
  v94 = v93(v90, v9);
  MEMORY[0x1E12770F0](v94);
  if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v93(v88, v9);
  return v113;
}

void sub_1DAB51504(void *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = (a1 + 3);
  v7 = a1[3];
  v34 = a1[4];
  v35 = v3;
  v8 = type metadata accessor for RawAttributionSource(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  os_unfair_lock_lock((v1 + 80));
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v13 = *(v1 + 104);
  v12 = *(v1 + 112);
  v14 = *(v1 + 120);
  v31 = v4;
  v32 = v5;
  v29 = v10;
  v30 = v7;
  v28 = v12;
  if (v11)
  {
    v15 = *(a1 + 1);
    v43[0] = *a1;
    v43[1] = v15;
    v44 = a1[4];
    *&v48 = v10;
    *(&v48 + 1) = v11;
    v49 = v13;
    v50 = v12;
    v51 = v14;
    v45 = v43[0];
    v46 = v15;
    v47 = *v6;
    v16 = v10;
    v17 = v12;
    sub_1DAAA1344(&v45, &v42);
    sub_1DAB53BA4(&v46, &v42, sub_1DAB5395C);
    sub_1DAB53B30(&v47, &v42, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1DAB53C0C);
    sub_1DAAF2954(v16, v11, v13, v17, v14);
    LOBYTE(v16) = sub_1DAC3C194(v43, &v48);

    sub_1DAB53908(&v45);
    sub_1DAA7139C(&v46, sub_1DAB5395C);
    sub_1DAB539D8(&v47, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
    v19 = v34;
    v18 = v35;
    if (v16)
    {
      os_unfair_lock_unlock((v1 + 80));
      return;
    }
  }

  else
  {
    v48 = *a1;
    v43[0] = *v6;
    *&v45 = v5;
    sub_1DAAA1344(&v48, &v47);
    sub_1DAB53BA4(&v45, &v47, sub_1DAB5395C);
    sub_1DAB53B30(v43, &v47, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1DAB53C0C);
    v20 = v4;
    v18 = v35;
    v21 = v7;
    v19 = v34;
    sub_1DAA75E60(v20, v35, v5, v21, v34);
  }

  sub_1DAA75E60(v29, v11, v13, v28, v14);
  v22 = v32;
  *(v1 + 88) = v31;
  *(v1 + 96) = v18;
  v23 = v30;
  *(v1 + 104) = v22;
  *(v1 + 112) = v23;
  *(v1 + 120) = v19;
  v42 = *a1;
  v40 = *v6;
  v41 = v22;
  sub_1DAAA1344(&v42, &v39);
  sub_1DAB53BA4(&v41, &v39, sub_1DAB5395C);
  v24 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E6720];
  sub_1DAB53B30(&v40, &v39, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1DAB53C0C);
  os_unfair_lock_unlock((v1 + 80));
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_1DAC1F0A8(a1, *(v1 + 24));
  v39 = *a1;
  v26 = a1[2];
  v37 = *v6;
  v38 = v26;
  sub_1DAAA1344(&v39, v36);
  sub_1DAB53BA4(&v38, v36, sub_1DAB5395C);
  sub_1DAB53B30(&v37, v36, &qword_1EE123FD0, v24, v25, sub_1DAB53C0C);
  v27 = v33;
  sub_1DAB51960(a1, v33);
  sub_1DAA66A08(&qword_1EE124AD8, type metadata accessor for RawAttributionSource, &unk_1DACC82E0);
  sub_1DACB8454();
  sub_1DAA7139C(v27, type metadata accessor for RawAttributionSource);
}

uint64_t sub_1DAB51960@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1DAA6F818(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v32 - v5;
  sub_1DAA6F818(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v32 - v7;
  v8 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DACB92E4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[4];
  if (*a1 == __PAIR128__(0xED000065636E616ELL, v19) || (sub_1DACBA174() & 1) != 0)
  {
    sub_1DACB9284();
    (*(v10 + 16))(v13, v15, v9);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v20 = qword_1EE13E470;
    sub_1DACB7DF4();
    v16 = sub_1DACB9384();
    v17 = v21;
    (*(v10 + 8))(v15, v9);
    v22 = v33;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_8:
    v23 = sub_1DACB7AB4();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    goto LABEL_9;
  }

  sub_1DACB71E4();
  v22 = v33;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1DACB71E4();
  sub_1DACB7A94();

LABEL_9:
  v24 = v34;
  sub_1DAB51F30(a1, v34);
  v25 = type metadata accessor for RawAttributionSource(0);
  v26 = *(v25 + 20);
  v27 = sub_1DACB7AB4();
  v28 = v32;
  (*(*(v27 - 8) + 56))(v32 + v26, 1, 1, v27);
  v29 = *(v25 + 24);
  v30 = type metadata accessor for RawAttributionSourceLogo(0);
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *v28 = v16;
  v28[1] = v17;
  sub_1DAA6EADC(v22, v28 + v26, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  return sub_1DAA6EADC(v24, v28 + v29, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
}

uint64_t sub_1DAB51E24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  sub_1DAB539D8(v0 + 88, &qword_1EE125140, &type metadata for SDSMetadata);

  return swift_deallocClassInstance();
}

void sub_1DAB51E8C(uint64_t a1)
{
  if (!qword_1ECBE7CB0)
  {
    sub_1DAB53C0C(255, &qword_1EE125140, &type metadata for SDSMetadata, MEMORY[0x1E69E6720]);
    v1 = sub_1DACB8C24();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7CB0);
    }
  }
}

uint64_t sub_1DAB51F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RawAttributionSourceLogo(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1DAA6F818(0, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v139 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v152 = &v139 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v158 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v139 - v20;
  v164 = sub_1DACB7AB4();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v150 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6F818(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, v8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v149 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v139 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v139 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v148 = &v139 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v139 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v159 = &v139 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v139 - v38;
  v169 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v166 = *(v169 - 8);
  v39 = MEMORY[0x1EEE9AC00](v169);
  v161 = &v139 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v151 = &v139 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v160 = &v139 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v157 = &v139 - v45;
  v167 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v170 = *(v167 - 8);
  result = MEMORY[0x1EEE9AC00](v167);
  v165 = &v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v49 = *(a1 + 16);
  if (v49 == 0.0)
  {
    v181 = *v48;
    v57 = v48;
    sub_1DAB53908(&v181);
    v185 = *(v57 + 24);
    sub_1DAB539D8(&v185, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
LABEL_62:
    v87 = 1;
    return (*(v5 + 56))(a2, v87, 1, v4);
  }

  v153 = v48;
  v145 = v7;
  v154 = v5;
  v162 = v4;
  v155 = a2;
  v50 = *(*&v49 + 16);
  v142 = v15;
  v176 = v49;
  v144 = v30;
  v141 = v12;
  v147 = v35;
  v143 = v27;
  if (!v50)
  {
    v174 = 0;
    v173 = 0;
    v146 = 0;
    v53 = 0;
    v175 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_26;
  }

  v51 = 0;
  v52 = (*&v49 + 64);
  while (1)
  {
    if (v51 >= *(*&v49 + 16))
    {
      __break(1u);
      goto LABEL_85;
    }

    v53 = *(v52 - 3);
    v175 = *(v52 - 4);
    v54 = *(v52 - 16);
    v173 = *(v52 - 1);
    v174 = *v52;
    if (v54 <= 1)
    {
      break;
    }

    v55 = v54;
LABEL_9:
    v56 = sub_1DACBA174();
    sub_1DACB71E4();

    if (v56)
    {
      goto LABEL_15;
    }

    ++v51;

    v52 += 40;
    if (v50 == v51)
    {
      v175 = 0;
      v53 = 0;
      v55 = 0;
      v173 = 0;
      v174 = 0;
      goto LABEL_15;
    }
  }

  if (!v54)
  {
    v55 = v54;
    goto LABEL_9;
  }

  sub_1DACB71E4();

  v55 = 1;
LABEL_15:
  v146 = v55;
  v172 = *(*&v49 + 16);
  if (v172)
  {
    v168 = v53;
    v62 = 0;
    v63 = (*&v49 + 64);
    while (1)
    {
      if (v62 >= *(*&v49 + 16))
      {
        goto LABEL_86;
      }

      v58 = *(v63 - 4);
      v60 = *(v63 - 16);
      v50 = *(v63 - 1);
      v61 = *v63;
      v59 = *(v63 - 3);
      if (*(v63 - 16) > 1u && v60 != 3)
      {
        break;
      }

      v64 = sub_1DACBA174();
      sub_1DACB71E4();

      if (v64)
      {
        goto LABEL_25;
      }

      ++v62;

      v63 += 40;
      v49 = v176;
      if (v172 == v62)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v50 = 0;
        v61 = 0;
LABEL_25:
        v53 = v168;
        goto LABEL_26;
      }
    }

    sub_1DACB71E4();

    v60 = 2;
    goto LABEL_25;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v50 = 0;
  v61 = 0;
LABEL_26:
  v168 = v53;
  v140 = v58;
  *&v181 = v58;
  *(&v181 + 1) = v59;
  v172 = v59;
  v182 = v60;
  v183 = v50;
  v184 = v61;
  v65 = v176;
  v66 = *(*&v176 + 16);
  if (!v66)
  {
LABEL_33:
    v75 = v153;
    v177 = *v153;
    sub_1DAB53908(&v177);

    v178 = *(v75 + 24);
    sub_1DAB539D8(&v178, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
    v70 = 0.0;
    v69 = 0.0;
    v71 = 0;
    v72 = 0.0;
    v73 = 0;
LABEL_37:
    v4 = v162;
    v179[0] = v70;
    v179[1] = v69;
    *&v179[2] = v71;
    v179[3] = v72;
    v180 = v73;
    v77 = v168;
    if (!v168)
    {

      v87 = 1;
      a2 = v155;
      v5 = v154;
      return (*(v5 + 56))(a2, v87, 1, v4);
    }

    v176 = v69;
    v78 = v167;
    v79 = v165;
    sub_1DAA6E428(v165);
    v80 = v157;
    sub_1DAB53BA4(v79, v157, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v81 = sub_1DACB79C4();
    v83 = v82;
    v84 = *(v163 + 8);
    v84(v80, v164);
    if (v81 == v175 && v77 == v83)
    {

      v85 = v158;
      v86 = v78;
    }

    else
    {
      v88 = sub_1DACBA174();

      v85 = v158;
      v86 = v78;
      if ((v88 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v89 = v156;
    sub_1DAB53B30(v79 + *(v86 + 20), v156, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, MEMORY[0x1E69E6720], sub_1DAA6F818);
    if ((*(v166 + 48))(v89, 1, v169) == 1)
    {
      sub_1DAB53C5C(v89, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      if (!v172)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v90 = v150;
      v91 = v164;
      (*(v163 + 16))(v150, v89, v164);
      sub_1DAA7139C(v89, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      v92 = sub_1DACB79C4();
      v94 = v93;
      v84(v90, v91);
      if (v94)
      {
        if (v172)
        {
          v86 = v78;
          if (v92 == v140 && v172 == v94)
          {

            v4 = v162;
LABEL_53:
            v95 = v171;
            sub_1DAB53BA4(v79, v171, type metadata accessor for RawAttributionSourceLogo.Unresolved);
            v96 = v170;
            (*(v170 + 56))(v95, 0, 1, v86);
            goto LABEL_57;
          }

          v97 = sub_1DACBA174();

          v4 = v162;
          if (v97)
          {
            goto LABEL_53;
          }
        }

        else
        {
          sub_1DACB71E4();

          v4 = v162;
          v86 = v78;
        }
      }

      else
      {
        v4 = v162;
        v86 = v78;
        if (!v172)
        {
LABEL_52:
          sub_1DACB71E4();
          goto LABEL_53;
        }
      }
    }

LABEL_56:
    v96 = v170;
    (*(v170 + 56))(v171, 1, 1, v86);
LABEL_57:
    v98 = v159;
    sub_1DAB53B30(v171, v85, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved, MEMORY[0x1E69E6720], sub_1DAA6F818);
    v99 = *(v96 + 48);
    v170 = v96 + 48;
    v100 = v99(v85, 1, v86);
    a2 = v155;
    v5 = v154;
    if (v100 == 1)
    {
      sub_1DAB53C5C(v85, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v101 = 0.0;
      v102 = v169;
    }

    else
    {
      v103 = v155;
      v104 = v99;
      v105 = v151;
      sub_1DAB53BA4(v85, v151, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      sub_1DAA7139C(v85, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v102 = v169;
      v101 = *(v105 + *(v169 + 20));
      v106 = v105;
      v99 = v104;
      a2 = v103;
      sub_1DAA7139C(v106, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    }

    *&v185 = v175;
    *(&v185 + 1) = v168;
    v186 = v146;
    v187 = v173;
    v188 = v174;
    sub_1DAB53624(&v185, v101, v100 == 1, v98);
    v107 = *(v166 + 48);
    if (v107(v98, 1, v102) == 1)
    {

      sub_1DAB53C5C(v171, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      sub_1DAA7139C(v165, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      sub_1DAB53C5C(v98, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      goto LABEL_62;
    }

    v108 = v160;
    sub_1DAB53AC8(v98, v160, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAB53BA4(v108, v161, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v109 = v152;
    sub_1DAB53B30(v171, v152, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved, MEMORY[0x1E69E6720], sub_1DAA6F818);
    if (v99(v109, 1, v86) == 1)
    {
      v110 = qword_1EE120C40;
      v111 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
      v112 = v109;
    }

    else
    {
      v113 = v148;
      sub_1DAB53B30(v109 + *(v86 + 20), v148, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, MEMORY[0x1E69E6720], sub_1DAA6F818);
      sub_1DAA7139C(v109, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v114 = v169;
      if (v107(v113, 1, v169) != 1)
      {
        v117 = *(v113 + *(v114 + 20));
        sub_1DAA7139C(v113, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        v115 = v117;
        v86 = v167;
        v116 = 0;
LABEL_69:
        sub_1DAB53624(&v181, v115, v116, v147);
        v118 = v142;
        sub_1DAB53B30(v171, v142, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved, MEMORY[0x1E69E6720], sub_1DAA6F818);
        v119 = v99(v118, 1, v86);
        v120 = v144;
        if (v119 == 1)
        {
          v121 = qword_1EE120C40;
          v122 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
        }

        else
        {
          v123 = v118 + *(v86 + 24);
          v124 = v149;
          sub_1DAB53B30(v123, v149, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, MEMORY[0x1E69E6720], sub_1DAA6F818);
          v125 = v118;
          v118 = v124;
          sub_1DAA7139C(v125, type metadata accessor for RawAttributionSourceLogo.Unresolved);
          v126 = v124;
          v127 = v169;
          if (v107(v126, 1, v169) != 1)
          {
            v130 = *(v118 + *(v127 + 20));
            sub_1DAA7139C(v118, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
            v128 = v130;
            v129 = 0;
            goto LABEL_75;
          }

          v121 = qword_1EE120CD0;
          v122 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant;
        }

        sub_1DAB53C5C(v118, v121, v122);
        v128 = 0.0;
        v129 = 1;
LABEL_75:
        v131 = v143;
        sub_1DAB53624(v179, v128, v129, v143);
        sub_1DAA7139C(v160, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        sub_1DAA7139C(v165, type metadata accessor for RawAttributionSourceLogo.Unresolved);
        v132 = v169;
        if (v107(v131, 1, v169) == 1)
        {
          v133 = v131;
          v134 = v141;
          sub_1DAB53A48(v171, v141, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
          v135 = v167;
          if (v99(v134, 1, v167) == 1)
          {
            sub_1DAB53C5C(v134, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
            v136 = v169;
            (*(v166 + 56))(v120, 1, 1, v169);
          }

          else
          {
            sub_1DAB53B30(v134 + *(v135 + 24), v120, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, MEMORY[0x1E69E6720], sub_1DAA6F818);
            sub_1DAA7139C(v134, type metadata accessor for RawAttributionSourceLogo.Unresolved);
            v136 = v169;
          }

          if (v107(v133, 1, v136) != 1)
          {
            sub_1DAB53C5C(v133, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
          }
        }

        else
        {
          sub_1DAB53C5C(v171, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
          sub_1DAB53AC8(v131, v120, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
          (*(v166 + 56))(v120, 0, 1, v132);
        }

        v137 = v145;
        sub_1DAB53AC8(v161, v145, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        v138 = v167;
        sub_1DAB53A48(v147, v137 + *(v167 + 20), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        sub_1DAB53A48(v120, v137 + *(v138 + 24), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        swift_storeEnumTagMultiPayload();
        sub_1DAB53AC8(v137, a2, type metadata accessor for RawAttributionSourceLogo);
        v87 = 0;
        return (*(v5 + 56))(a2, v87, 1, v4);
      }

      v110 = qword_1EE120CD0;
      v111 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant;
      v112 = v113;
    }

    sub_1DAB53C5C(v112, v110, v111);
    v115 = 0.0;
    v116 = 1;
    goto LABEL_69;
  }

  v67 = 0;
  v68 = (*&v176 + 64);
  while (v67 < *(*&v65 + 16))
  {
    v70 = *(v68 - 4);
    v69 = *(v68 - 3);
    v71 = *(v68 - 16);
    v72 = *(v68 - 1);
    v73 = *v68;
    if (*(v68 - 16) > 1u && v71 != 2)
    {
      sub_1DACB71E4();

      v71 = 3;
LABEL_36:
      v76 = v153;
      v177 = *v153;
      sub_1DAB53908(&v177);

      v178 = *(v76 + 24);
      sub_1DAB539D8(&v178, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
      goto LABEL_37;
    }

    v74 = sub_1DACBA174();
    sub_1DACB71E4();

    if (v74)
    {
      goto LABEL_36;
    }

    ++v67;

    v68 += 5;
    v65 = v176;
    if (v66 == v67)
    {
      goto LABEL_33;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1DAB53624@<X0>(double *a1@<X0>, double a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  sub_1DAA6F818(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1DACB7AB4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  if (!*(a1 + 1))
  {
    goto LABEL_4;
  }

  v18 = a1[3];
  v25 = *(a1 + 32);
  sub_1DACB7A94();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DAB539D8(a1, &qword_1EE1237A0, &type metadata for SDSMetadata.SourceLogo);
    sub_1DAB53C5C(v10, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
LABEL_4:
    v19 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  v21 = *(v12 + 32);
  v21(v17, v10, v11);
  v21(v15, v17, v11);
  sub_1DAB539D8(a1, &qword_1EE1237A0, &type metadata for SDSMetadata.SourceLogo);
  v22 = a2;
  if (a3)
  {
    v22 = 0.0;
  }

  if (v25)
  {
    v18 = v22;
  }

  v21(a4, v15, v11);
  v23 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *&a4[*(v23 + 20)] = v18;
  return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
}

void sub_1DAB5395C(uint64_t a1)
{
  if (!qword_1EE11FB80)
  {
    sub_1DAB53C0C(255, &qword_1EE123FA0, &type metadata for SDSMetadata.SourceLogo, MEMORY[0x1E69E62F8]);
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FB80);
    }
  }
}

uint64_t sub_1DAB539D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAB53C0C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAB53A48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA6F818(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAB53AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAB53B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1DAB53BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1DAB53C0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAB53C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA6F818(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAB53D24(void *a1, uint64_t a2)
{
  sub_1DAB546D0(0, &qword_1ECBE7CE0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB54620();
  sub_1DACBA304();
  v10[1] = a2;
  sub_1DAB54674();
  sub_1DAB54734(&qword_1ECBE7CE8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAB53EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E697070616DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB53F48(uint64_t a1)
{
  v2 = sub_1DAB54620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB53F84(uint64_t a1)
{
  v2 = sub_1DAB54620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAB53FC0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB5445C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1DAB54008@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC8];
    goto LABEL_24;
  }

  v4 = 0;
  v5 = *result;
  v6 = MEMORY[0x1E69E7CC8];
  v7 = a2 + 40;
  v32 = a3;
  v31 = a2 + 40;
  while (2)
  {
    v8 = (v7 + 16 * v4);
    v9 = v4;
    while (1)
    {
      if (v9 >= v3)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_26;
      }

      if (*(v5 + 16))
      {
        break;
      }

LABEL_4:
      ++v9;
      v8 += 2;
      if (v4 == v3)
      {
        a3 = v32;
        goto LABEL_24;
      }
    }

    v11 = *(v8 - 1);
    v10 = *v8;
    sub_1DACB71E4();
    v12 = sub_1DAA4BF3C(v11, v10);
    if ((v13 & 1) == 0)
    {

      goto LABEL_4;
    }

    v14 = (*(v5 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DACC1D20;
    *(v17 + 32) = v16;
    *(v17 + 40) = v15;
    v30 = v17;
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v6;
    v20 = sub_1DAA4BF3C(v11, v10);
    v21 = v6[2];
    v22 = (v19 & 1) == 0;
    result = (v21 + v22);
    if (__OFADD__(v21, v22))
    {
      goto LABEL_27;
    }

    if (v6[3] < result)
    {
      v23 = v19;
      sub_1DAB609F8(result, isUniquelyReferenced_nonNull_native);
      result = sub_1DAA4BF3C(v11, v10);
      if ((v23 & 1) == (v24 & 1))
      {
        v20 = result;
        v19 = v23;
        goto LABEL_16;
      }

LABEL_29:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = v19;
      result = sub_1DAB65A84();
      v19 = v29;
    }

LABEL_16:
    v6 = v33;
    if ((v19 & 1) == 0)
    {
      v33[(v20 >> 6) + 8] |= 1 << v20;
      v25 = (v33[6] + 16 * v20);
      *v25 = v11;
      v25[1] = v10;
      *(v33[7] + 8 * v20) = v30;
      v26 = v33[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (!v27)
      {
        v33[2] = v28;
        goto LABEL_20;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    *(v33[7] + 8 * v20) = v30;

LABEL_20:
    a3 = v32;
    v7 = v31;
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

LABEL_24:
  *a3 = v6;
  return result;
}

uint64_t sub_1DAB5427C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB542D8(uint64_t a1)
{
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = a1;
  sub_1DACB71E4();
  v2 = sub_1DACB89D4();
  sub_1DAA9CB70(0);
  v3 = sub_1DACB8A64();

  return v3;
}

unint64_t sub_1DAB543F8()
{
  result = qword_1ECBE7CB8;
  if (!qword_1ECBE7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7CB8);
  }

  return result;
}

void *sub_1DAB5445C(void *a1)
{
  sub_1DAB546D0(0, &qword_1ECBE7CC0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB54620();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB54674();
    sub_1DAB54734(&qword_1ECBE7CD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DAB54620()
{
  result = qword_1ECBE7CC8;
  if (!qword_1ECBE7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7CC8);
  }

  return result;
}

void sub_1DAB54674()
{
  if (!qword_1ECBE7CD0)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7CD0);
    }
  }
}

void sub_1DAB546D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB54620();
    v7 = a3(a1, &type metadata for TestFeedLookupService.TestData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB54734(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAB54674();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB547A8()
{
  result = qword_1ECBE7CF0;
  if (!qword_1ECBE7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7CF0);
  }

  return result;
}

unint64_t sub_1DAB54800()
{
  result = qword_1ECBE7CF8;
  if (!qword_1ECBE7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7CF8);
  }

  return result;
}

unint64_t sub_1DAB54858()
{
  result = qword_1ECBE7D00;
  if (!qword_1ECBE7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D00);
  }

  return result;
}

uint64_t sub_1DAB548B8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB54984(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB54A3C(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAB54B04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB56418(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAB54B34(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000617465;
  v3 = 0x6D2D7365756C6176;
  v4 = 0xE600000000000000;
  v5 = 0x736569726573;
  if (*v1 != 2)
  {
    v5 = 1635018093;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x636E657265666572;
    v2 = 0xEE006174656D2D65;
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

uint64_t sub_1DAB54BBC()
{
  v1 = 0x6D2D7365756C6176;
  v2 = 0x736569726573;
  if (*v0 != 2)
  {
    v2 = 1635018093;
  }

  if (*v0)
  {
    v1 = 0x636E657265666572;
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

unint64_t sub_1DAB54C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB56418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB54C68(uint64_t a1)
{
  v2 = sub_1DAB57B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB54CA4(uint64_t a1)
{
  v2 = sub_1DAB57B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB54D68@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAB54DC0(uint64_t a1)
{
  v2 = sub_1DAB57AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB54DFC(uint64_t a1)
{
  v2 = sub_1DAB57AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *sub_1DAB54E38@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB56464(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_1DAB54E7C()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB54F40(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB54FF0(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAB550B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB568F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAB550E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0xE400000000000000;
  v6 = 1751607656;
  v7 = 0xE300000000000000;
  v8 = 7827308;
  if (v2 != 3)
  {
    v8 = 0x656D756C6F76;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65736F6C63;
    v3 = 0xE500000000000000;
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

uint64_t sub_1DAB551C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 118;
  }

  else
  {
    v3 = 6710642;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE100000000000000;
  }

  if (*a2)
  {
    v5 = 118;
  }

  else
  {
    v5 = 6710642;
  }

  if (*a2)
  {
    v6 = 0xE100000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB55254()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB552C4(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB55320(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DAB55398(uint64_t *a1@<X8>)
{
  v2 = 6710642;
  if (*v1)
  {
    v2 = 118;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAB553C4()
{
  if (*v0)
  {
    return 118;
  }

  else
  {
    return 6710642;
  }
}

uint64_t sub_1DAB553F8(uint64_t a1)
{
  v2 = sub_1DAB58820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55434(uint64_t a1)
{
  v2 = sub_1DAB58820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB55470@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB56940(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DAB554EC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAB55544(uint64_t a1)
{
  v2 = sub_1DAB5808C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55580(uint64_t a1)
{
  v2 = sub_1DAB5808C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAB555BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB56B80(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAB5565C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAB556B4(uint64_t a1)
{
  v2 = sub_1DAB57FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB556F0(uint64_t a1)
{
  v2 = sub_1DAB57FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAB5572C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB56E50(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAB55764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB557CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB55824@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAB55890@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAB558E8(uint64_t a1)
{
  v2 = sub_1DAB58718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55924(uint64_t a1)
{
  v2 = sub_1DAB58718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAB55960@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB57050(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAB5598C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1702125892;
  }

  else
  {
    v3 = 0x6D617473656D6954;
  }

  if (v2)
  {
    v4 = 0xE900000000000070;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1702125892;
  }

  else
  {
    v5 = 0x6D617473656D6954;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE900000000000070;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB55A30()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB55AB0(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB55B1C(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DAB55BA4(uint64_t *a1@<X8>)
{
  v2 = 1702125892;
  if (!*v1)
  {
    v2 = 0x6D617473656D6954;
  }

  v3 = 0xE900000000000070;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAB55C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB55CD8(uint64_t a1)
{
  v2 = sub_1DAB58134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55D14(uint64_t a1)
{
  v2 = sub_1DAB58134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAB55D50@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB571F8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1DAB55D80()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DAB55DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAB55E90(uint64_t a1)
{
  v2 = sub_1DAB581DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55ECC(uint64_t a1)
{
  v2 = sub_1DAB581DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB55F08@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB573A0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DAB55F38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0x7265732D61746164;
  }

  if (v2)
  {
    v4 = 0xEB00000000736569;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0x7265732D61746164;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEB00000000736569;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB55FE0()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB56064(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB560D4(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB56160@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1DAB561BC(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (!*v1)
  {
    v2 = 0x7265732D61746164;
  }

  v3 = 0xEB00000000736569;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAB561FC()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x7265732D61746164;
  }
}

uint64_t sub_1DAB56244@<X0>(char *a4@<X8>)
{
  v5 = sub_1DACB9F04();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1DAB562A4(uint64_t a1)
{
  v2 = sub_1DAB57920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB562E0(uint64_t a1)
{
  v2 = sub_1DAB57920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

ValueMetadata *sub_1DAB5631C@<X0>(ValueMetadata **a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAB575A0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAB56348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = *(a3 + 16) + 1;
  while (1)
  {
    if (!--v6)
    {
      return 0;
    }

    v7 = *(v5 - 24);
    if (v7 == a1 && *(v5 - 16) == a2)
    {
      break;
    }

    v5 += 32;
    if (sub_1DACBA174())
    {
      goto LABEL_11;
    }
  }

  v7 = a1;
LABEL_11:
  sub_1DACB71E4();
  sub_1DACB71E4();
  return v7;
}

unint64_t sub_1DAB56418(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

char *sub_1DAB56464(void *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5F0, sub_1DAB57AF0, &type metadata for YahooChartResponse.DataSeries.FeaturesCodingKeys);
  v3 = v2;
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  sub_1DAB587C0(0, &qword_1EE11F5F8, sub_1DAB57B44, &type metadata for YahooChartResponse.DataSeries.CodingKeys);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = a1[3];
  v19 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DAB57B44();
  v12 = v18;
  sub_1DACBA2F4();
  if (!v12)
  {
    v16 = v5;
    v18 = v8;
    v20 = 0;
    sub_1DAB57B98();
    sub_1DACB9FE4();
    v5 = v21;
    v20 = 2;
    sub_1DAB57BEC();
    sub_1DACB9FE4();
    v15[2] = v21;
    v20 = 1;
    sub_1DAB57C40();
    sub_1DACB9FE4();
    v15[1] = 0;
    LOBYTE(v21) = 3;
    sub_1DAB57AF0();
    v14 = v16;
    sub_1DACB9F14();
    sub_1DAB58874(0, &qword_1EE11FB00, &type metadata for YahooChartResponse.Feature, MEMORY[0x1E69E62F8]);
    sub_1DAB57C94(&qword_1EE11FAF8, &qword_1EE11FB00, &type metadata for YahooChartResponse.Feature, sub_1DAB57D20);
    sub_1DACB9FE4();
    (*(v17 + 8))(v14, v3);
    (*(v18 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v5;
}

unint64_t sub_1DAB568F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAB56940(void *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5E0, sub_1DAB58820, &type metadata for YahooChartResponse.Record.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB58820();
  sub_1DACBA2F4();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1DACB9FA4();
    sub_1DAB58874(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v10[30] = 1;
    sub_1DAB588C4();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_1DAB56B80(void *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5D8, sub_1DAB5808C, &type metadata for YahooChartResponse.Series.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB5808C();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB58874(0, &qword_1EE11FB10, &type metadata for YahooChartResponse.Record, MEMORY[0x1E69E62F8]);
    sub_1DAB57C94(&qword_1EE11FB08, &qword_1EE11FB10, &type metadata for YahooChartResponse.Record, sub_1DAB580E0);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DAB56E50(void *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5C8, sub_1DAB57FE4, &type metadata for YahooChartResponse.Mapping.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB57FE4();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB58874(0, &qword_1EE11FB20, &type metadata for YahooChartResponse.MappingEntry, MEMORY[0x1E69E62F8]);
    sub_1DAB57C94(&qword_1EE11FB18, &qword_1EE11FB20, &type metadata for YahooChartResponse.MappingEntry, sub_1DAB58038);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DAB57050(void *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5E8, sub_1DAB58718, &type metadata for YahooChartResponse.MappingEntry.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB58718();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB5876C();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DAB571F8(void *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5C0, sub_1DAB58134, &type metadata for YahooChartResponse.Metadata.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB58134();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB58188();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DAB573A0(void *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5D0, sub_1DAB581DC, &type metadata for YahooChartResponse.Feature.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB581DC();
  sub_1DACBA2F4();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DACB9FA4();
    v11 = 1;
    sub_1DACB9F34();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

ValueMetadata *sub_1DAB575A0(void *a1)
{
  v3 = &type metadata for YahooChartResponse.CodingKeys;
  sub_1DAB587C0(0, &qword_1EE11F600, sub_1DAB57920, &type metadata for YahooChartResponse.CodingKeys);
  v5 = v4;
  v15 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v14 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB57920();
  sub_1DACBA2F4();
  if (!v1)
  {
    v18 = 1;
    v10 = v14;
    sub_1DACB9F14();
    sub_1DAB58874(0, &qword_1ECBE7D08, &type metadata for YahooChartResponse.DataSeries, MEMORY[0x1E69E62F8]);
    v17 = 0;
    sub_1DAB57C94(&qword_1ECBE7D10, &qword_1ECBE7D08, &type metadata for YahooChartResponse.DataSeries, sub_1DAB57974);
    sub_1DACB9FE4();
    v12 = *(v15 + 8);
    v12(v10, v5);
    v12(v9, v5);
    v3 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1DAB57920()
{
  result = qword_1EE121C40;
  if (!qword_1EE121C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C40);
  }

  return result;
}

unint64_t sub_1DAB57974()
{
  result = qword_1EE121BF8;
  if (!qword_1EE121BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BF8);
  }

  return result;
}

unint64_t sub_1DAB579EC()
{
  result = qword_1ECBE7D18;
  if (!qword_1ECBE7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D18);
  }

  return result;
}

unint64_t sub_1DAB57A44()
{
  result = qword_1EE121C30;
  if (!qword_1EE121C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C30);
  }

  return result;
}

unint64_t sub_1DAB57A9C()
{
  result = qword_1EE121C38;
  if (!qword_1EE121C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C38);
  }

  return result;
}

unint64_t sub_1DAB57AF0()
{
  result = qword_1EE121C10;
  if (!qword_1EE121C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C10);
  }

  return result;
}

unint64_t sub_1DAB57B44()
{
  result = qword_1EE121C28;
  if (!qword_1EE121C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C28);
  }

  return result;
}

unint64_t sub_1DAB57B98()
{
  result = qword_1EE121B48;
  if (!qword_1EE121B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B48);
  }

  return result;
}

unint64_t sub_1DAB57BEC()
{
  result = qword_1EE121B88;
  if (!qword_1EE121B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B88);
  }

  return result;
}

unint64_t sub_1DAB57C40()
{
  result = qword_1EE121B18;
  if (!qword_1EE121B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B18);
  }

  return result;
}

uint64_t sub_1DAB57C94(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB58874(255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB57D20()
{
  result = qword_1EE121B68;
  if (!qword_1EE121B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B68);
  }

  return result;
}

unint64_t sub_1DAB57DD8()
{
  result = qword_1ECBE7D20;
  if (!qword_1ECBE7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D20);
  }

  return result;
}

unint64_t sub_1DAB57E30()
{
  result = qword_1ECBE7D28;
  if (!qword_1ECBE7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D28);
  }

  return result;
}

unint64_t sub_1DAB57E88()
{
  result = qword_1EE121C18;
  if (!qword_1EE121C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C18);
  }

  return result;
}

unint64_t sub_1DAB57EE0()
{
  result = qword_1EE121C20;
  if (!qword_1EE121C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C20);
  }

  return result;
}

unint64_t sub_1DAB57F38()
{
  result = qword_1EE121C00;
  if (!qword_1EE121C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C00);
  }

  return result;
}

unint64_t sub_1DAB57F90()
{
  result = qword_1EE121C08;
  if (!qword_1EE121C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C08);
  }

  return result;
}

unint64_t sub_1DAB57FE4()
{
  result = qword_1EE121B60;
  if (!qword_1EE121B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B60);
  }

  return result;
}

unint64_t sub_1DAB58038()
{
  result = qword_1EE121BD8;
  if (!qword_1EE121BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BD8);
  }

  return result;
}

unint64_t sub_1DAB5808C()
{
  result = qword_1EE121BA0;
  if (!qword_1EE121BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BA0);
  }

  return result;
}

unint64_t sub_1DAB580E0()
{
  result = qword_1EE121BA8;
  if (!qword_1EE121BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BA8);
  }

  return result;
}

unint64_t sub_1DAB58134()
{
  result = qword_1EE121B40;
  if (!qword_1EE121B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B40);
  }

  return result;
}

unint64_t sub_1DAB58188()
{
  result = qword_1EE121B20;
  if (!qword_1EE121B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B20);
  }

  return result;
}

unint64_t sub_1DAB581DC()
{
  result = qword_1EE121B80;
  if (!qword_1EE121B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B80);
  }

  return result;
}

unint64_t sub_1DAB582A4()
{
  result = qword_1ECBE7D38;
  if (!qword_1ECBE7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D38);
  }

  return result;
}

unint64_t sub_1DAB582FC()
{
  result = qword_1ECBE7D40;
  if (!qword_1ECBE7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D40);
  }

  return result;
}

unint64_t sub_1DAB58354()
{
  result = qword_1ECBE7D48;
  if (!qword_1ECBE7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D48);
  }

  return result;
}

unint64_t sub_1DAB583AC()
{
  result = qword_1ECBE7D50;
  if (!qword_1ECBE7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D50);
  }

  return result;
}

unint64_t sub_1DAB58404()
{
  result = qword_1ECBE7D58;
  if (!qword_1ECBE7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D58);
  }

  return result;
}

unint64_t sub_1DAB5845C()
{
  result = qword_1EE121B70;
  if (!qword_1EE121B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B70);
  }

  return result;
}

unint64_t sub_1DAB584B4()
{
  result = qword_1EE121B78;
  if (!qword_1EE121B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B78);
  }

  return result;
}

unint64_t sub_1DAB5850C()
{
  result = qword_1EE121B30;
  if (!qword_1EE121B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B30);
  }

  return result;
}

unint64_t sub_1DAB58564()
{
  result = qword_1EE121B38;
  if (!qword_1EE121B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B38);
  }

  return result;
}

unint64_t sub_1DAB585BC()
{
  result = qword_1EE121B90;
  if (!qword_1EE121B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B90);
  }

  return result;
}

unint64_t sub_1DAB58614()
{
  result = qword_1EE121B98;
  if (!qword_1EE121B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B98);
  }

  return result;
}

unint64_t sub_1DAB5866C()
{
  result = qword_1EE121B50;
  if (!qword_1EE121B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B50);
  }

  return result;
}

unint64_t sub_1DAB586C4()
{
  result = qword_1EE121B58;
  if (!qword_1EE121B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B58);
  }

  return result;
}

unint64_t sub_1DAB58718()
{
  result = qword_1EE121BF0;
  if (!qword_1EE121BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BF0);
  }

  return result;
}

unint64_t sub_1DAB5876C()
{
  result = qword_1EE121BC8;
  if (!qword_1EE121BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BC8);
  }

  return result;
}

void sub_1DAB587C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1DACBA004();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAB58820()
{
  result = qword_1EE121BC0;
  if (!qword_1EE121BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BC0);
  }

  return result;
}

void sub_1DAB58874(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DAB588C4()
{
  result = qword_1EE123E88;
  if (!qword_1EE123E88)
  {
    sub_1DAB58874(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E88);
  }

  return result;
}

unint64_t sub_1DAB58958()
{
  result = qword_1EE121B28;
  if (!qword_1EE121B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B28);
  }

  return result;
}

unint64_t sub_1DAB589E0()
{
  result = qword_1ECBE7D60;
  if (!qword_1ECBE7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D60);
  }

  return result;
}

unint64_t sub_1DAB58A38()
{
  result = qword_1ECBE7D68;
  if (!qword_1ECBE7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D68);
  }

  return result;
}

unint64_t sub_1DAB58A90()
{
  result = qword_1ECBE7D70;
  if (!qword_1ECBE7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D70);
  }

  return result;
}

unint64_t sub_1DAB58AE8()
{
  result = qword_1EE121BB0;
  if (!qword_1EE121BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BB0);
  }

  return result;
}

unint64_t sub_1DAB58B40()
{
  result = qword_1EE121BB8;
  if (!qword_1EE121BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BB8);
  }

  return result;
}

unint64_t sub_1DAB58B98()
{
  result = qword_1EE121BE0;
  if (!qword_1EE121BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BE0);
  }

  return result;
}

unint64_t sub_1DAB58BF0()
{
  result = qword_1EE121BE8;
  if (!qword_1EE121BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BE8);
  }

  return result;
}

unint64_t sub_1DAB58C44()
{
  result = qword_1EE121BD0;
  if (!qword_1EE121BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BD0);
  }

  return result;
}

uint64_t sub_1DAB58CA0(uint64_t a1)
{
  v2 = v1;
  v29 = type metadata accessor for NewsFeedRequest(0);
  v4 = *(v29 - 8);
  v5 = MEMORY[0x1EEE9AC00](v29);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v10 = *(v4 + 80);
    v11 = a1 + ((v10 + 32) & ~v10);
    v12 = *(v4 + 72);
    v26 = v10;
    v24 = v12;
    v25 = (v10 + 16) & ~v10;
    for (i = v9 - 1; ; --i)
    {
      sub_1DAB59108(v11, v8);
      v14 = v2[5];
      v15 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v14);
      sub_1DAB5916C(&v8[*(v29 + 32)], v40);
      sub_1DAB5916C(v40, v41);
      v37 = v41[6];
      v38 = v41[7];
      v39 = v42;
      v33 = v41[2];
      v34 = v41[3];
      v35 = v41[4];
      v36 = v41[5];
      v31 = v41[0];
      v32 = v41[1];
      sub_1DAB5916C(v40, v43);
      sub_1DAA806E4(v43, &v30);
      sub_1DABBE584(&v31, v14, v15);
      v44[6] = v37;
      v44[7] = v38;
      v45 = v39;
      v44[2] = v33;
      v44[3] = v34;
      v44[4] = v35;
      v44[5] = v36;
      v44[0] = v31;
      v44[1] = v32;
      sub_1DAA9B1C8(v44);
      v16 = v27;
      sub_1DAB59108(v8, v27);
      v17 = v25;
      v18 = swift_allocObject();
      sub_1DAB591C8(v16, v18 + v17);
      v19 = sub_1DACB89D4();
      sub_1DACB8A54();

      sub_1DAB59298(v8);
      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (!i)
      {
        break;
      }

      v11 += v24;
    }
  }

  v20 = sub_1DACB89D4();
  v21 = sub_1DACB8934();

  return v21;
}

uint64_t sub_1DAB58F98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  v6 = type metadata accessor for NewsFeedRequest(0);
  sub_1DAB5916C(a2 + *(v6 + 32), v21);
  *&v19 = v3;
  *(&v19 + 1) = v5;
  *&v20[0] = v4;
  sub_1DAB5916C(v21, v20 + 8);
  v15 = v20[5];
  v16 = v20[6];
  v17 = v20[7];
  v18 = v20[8];
  v11 = v20[1];
  v12 = v20[2];
  v13 = v20[3];
  v14 = v20[4];
  v9 = v19;
  v10 = v20[0];
  sub_1DAB592F4();
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAB59344(v21, v8);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB59108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsFeedRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB591C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsFeedRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB59298(uint64_t a1)
{
  v2 = type metadata accessor for NewsFeedRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAB592F4()
{
  if (!qword_1ECBE7D78)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7D78);
    }
  }
}

uint64_t sub_1DAB593A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1DACA53DC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1DAA4BF3C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1DAB65314();
        v16 = v18;
      }

      result = sub_1DAB6478C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1DAB594A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAB5FC04(0, qword_1EE123840, type metadata accessor for QuoteDetail, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for QuoteDetail(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1DAA63378(a1, qword_1EE123840, type metadata accessor for QuoteDetail);
    sub_1DAB5FECC(a2, a3, type metadata accessor for QuoteDetail, type metadata accessor for QuoteDetail, type metadata accessor for QuoteDetail, sub_1DAB65480, v9);

    return sub_1DAA63378(v9, qword_1EE123840, type metadata accessor for QuoteDetail);
  }

  else
  {
    sub_1DAA7C55C(a1, v12, type metadata accessor for QuoteDetail);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DACA5564(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DAB596FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAB5FC04(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for EarningsCalendarEventModel(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1DAA63378(a1, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
    sub_1DAB5FECC(a2, a3, type metadata accessor for EarningsCalendarEventModel, type metadata accessor for EarningsCalendarEventModel, type metadata accessor for EarningsCalendarEventModel, sub_1DAB664AC, v9);

    return sub_1DAA63378(v9, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
  }

  else
  {
    sub_1DAA7C55C(a1, v12, type metadata accessor for EarningsCalendarEventModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DACA5A5C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DAB59950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAB5FC04(0, qword_1EE120360, type metadata accessor for Chart, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Chart(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1DAA63378(a1, qword_1EE120360, type metadata accessor for Chart);
    sub_1DAB5FECC(a2, a3, type metadata accessor for Chart, type metadata accessor for Chart, type metadata accessor for Chart, sub_1DAB66744, v9);

    return sub_1DAA63378(v9, qword_1EE120360, type metadata accessor for Chart);
  }

  else
  {
    sub_1DAA7C55C(a1, v12, type metadata accessor for Chart);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DACA5BF0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DAB59BA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1DAA5616C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1DACA628C(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_1DACB9DF4();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1DAA63378(a1, &unk_1ECBE7E00, sub_1DAB69B4C);
    sub_1DAB60050(a2, v9);
    v7 = sub_1DACB9DF4();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1DAA63378(v9, &unk_1ECBE7E00, sub_1DAB69B4C);
  }

  return result;
}

id NewsCoreConfiguration.__allocating_init(experimentalizableFieldPostfix:appConfiguration:topStoriesConfiguration:newsUIConfiguration:newsPersonalizationTreatment:endpointConfigurations:paidBundleConfiguration:paidBundleViaOfferConfiguration:analyticsEndpointMaxPayloadSize:maxRetriesForDroppedFeeds:delayBeforeRetryingDroppedFeeds:enableCacheFallbackForArticleRecirculation:prerollLoadingTimeout:prerollReadyToPlayTimeout:isPrivateDataEncryptionRequired:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, double a9, double a10, double a11, __int128 *a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16)
{
  v17 = v16;
  v61 = a3;
  v56 = a7;
  v52 = a1;
  v53 = a2;
  v59 = a16;
  v58 = a15;
  v57 = a14;
  v55 = a13;
  v54 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_allocWithZone(v17);
  v28 = *a4;
  v29 = a4[3];
  memcpy(v65, a6, sizeof(v65));
  memcpy(v71, a8, 0x1F9uLL);
  v30 = a12[3];
  v68 = a12[2];
  v69 = v30;
  v70 = *(a12 + 64);
  v31 = a12[1];
  v66 = *a12;
  v67 = v31;
  v32 = &v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix];
  v33 = v53;
  *v32 = v52;
  v32[1] = v33;
  sub_1DAB697A0(a3, &v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration], type metadata accessor for AppConfiguration);
  v34 = &v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration];
  *v34 = v28;
  *(v34 + 8) = *(a4 + 1);
  *(v34 + 3) = v29;
  v35 = &v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration];
  *(v35 + 8) = *(a5 + 64);
  v36 = *(a5 + 48);
  *(v35 + 2) = *(a5 + 32);
  *(v35 + 3) = v36;
  v37 = *(a5 + 16);
  *v35 = *a5;
  *(v35 + 1) = v37;
  memcpy(&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment], a6, 0x8DBuLL);
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations] = v56;
  memcpy(&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration], v71, 0x1F9uLL);
  v38 = &v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration];
  *v38 = v66;
  v40 = v68;
  v39 = v69;
  v41 = v67;
  v38[64] = v70;
  *(v38 + 2) = v40;
  *(v38 + 3) = v39;
  *(v38 + 1) = v41;
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize] = v55;
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds] = v57;
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds] = a9;
  v42 = v59;
  v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation] = v58;
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout] = a10;
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout] = a11;
  v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired] = v42;
  v43 = swift_allocObject();
  memcpy((v43 + 16), v71, 0x1F9uLL);
  v64[64] = MEMORY[0x1E69E7CC0];
  sub_1DAA4F398(v71, v64);
  sub_1DAA4F3F4(&v66, v64);
  sub_1DAA4F4F4(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAB5FC04(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA5A834();
  sub_1DACB9BB4();
  v44 = MEMORY[0x1E69D6A80];
  sub_1DAB5ABC0(0, &unk_1EE11FF20, &unk_1EE11F830, 0x1E69B5428, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleConfig] = sub_1DACB8914();
  v45 = swift_allocObject();
  v46 = v69;
  *(v45 + 48) = v68;
  *(v45 + 64) = v46;
  *(v45 + 80) = v70;
  v47 = v67;
  *(v45 + 16) = v66;
  *(v45 + 32) = v47;
  v64[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF18, &unk_1EE11F820, 0x1E69B5430, v44);
  swift_allocObject();
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleViaOfferConfig] = sub_1DACB8914();
  v48 = swift_allocObject();
  memcpy((v48 + 16), v65, 0x8DBuLL);
  v64[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF10, &unk_1EE11F810, 0x1E69B5480, v44);
  swift_allocObject();
  *&v27[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPersonalizationTreatment] = sub_1DACB8914();
  v63.receiver = v27;
  v63.super_class = v62;
  v49 = objc_msgSendSuper2(&v63, sel_init);
  sub_1DAA640AC(v61);
  return v49;
}

uint64_t sub_1DAB5A264(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DAA96D8C();
    v2 = sub_1DACB9EA4();
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
  sub_1DACB71F4();
  result = sub_1DACB71E4();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;
    sub_1DACB71E4();
    sub_1DACB71E4();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1DAA5616C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1DAA5616C(v29, v30);
    result = sub_1DACB9BF4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1DAA5616C(v30, (*(v2 + 56) + 32 * v10));
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

uint64_t NewsCoreConfiguration.experimentalizableFieldPostfix.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix);
  sub_1DACB71E4();
  return v1;
}

id NewsCoreConfiguration.init(experimentalizableFieldPostfix:appConfiguration:topStoriesConfiguration:newsUIConfiguration:newsPersonalizationTreatment:endpointConfigurations:paidBundleConfiguration:paidBundleViaOfferConfiguration:analyticsEndpointMaxPayloadSize:maxRetriesForDroppedFeeds:delayBeforeRetryingDroppedFeeds:enableCacheFallbackForArticleRecirculation:prerollLoadingTimeout:prerollReadyToPlayTimeout:isPrivateDataEncryptionRequired:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, double a9, double a10, double a11, __int128 *a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16)
{
  v52 = a7;
  v57 = a3;
  v49 = a1;
  v50 = a2;
  v56 = a16;
  v55 = a15;
  v54 = a14;
  v53 = a13;
  ObjectType = swift_getObjectType();
  v25 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v25);
  v51 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a4;
  v28 = a4[3];
  memcpy(v61, a6, sizeof(v61));
  memcpy(v67, a8, 0x1F9uLL);
  v29 = a12[3];
  v64 = a12[2];
  v65 = v29;
  v66 = *(a12 + 64);
  v30 = a12[1];
  v62 = *a12;
  v63 = v30;
  v31 = &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix];
  v32 = v50;
  *v31 = v49;
  v31[1] = v32;
  sub_1DAB697A0(a3, &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration], type metadata accessor for AppConfiguration);
  v33 = &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration];
  *v33 = v27;
  *(v33 + 8) = *(a4 + 1);
  *(v33 + 3) = v28;
  v34 = &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration];
  *(v34 + 8) = *(a5 + 64);
  v35 = *(a5 + 48);
  *(v34 + 2) = *(a5 + 32);
  *(v34 + 3) = v35;
  v36 = *(a5 + 16);
  *v34 = *a5;
  *(v34 + 1) = v36;
  memcpy(&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment], a6, 0x8DBuLL);
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations] = v52;
  memcpy(&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration], a8, 0x1F9uLL);
  v37 = &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration];
  v38 = a12[3];
  *(v37 + 2) = a12[2];
  *(v37 + 3) = v38;
  v37[64] = *(a12 + 64);
  v39 = a12[1];
  *v37 = *a12;
  *(v37 + 1) = v39;
  v40 = v54;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize] = v53;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds] = v40;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds] = a9;
  LOBYTE(v40) = v56;
  v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation] = v55;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout] = a10;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout] = a11;
  v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired] = v40;
  v41 = swift_allocObject();
  memcpy((v41 + 16), a8, 0x1F9uLL);
  v60[64] = MEMORY[0x1E69E7CC0];
  sub_1DAA4F398(v67, v60);
  sub_1DAA4F3F4(&v62, v60);
  sub_1DAA4F4F4(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAB5FC04(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA5A834();
  sub_1DACB9BB4();
  v42 = MEMORY[0x1E69D6A80];
  sub_1DAB5ABC0(0, &unk_1EE11FF20, &unk_1EE11F830, 0x1E69B5428, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleConfig] = sub_1DACB8914();
  v43 = swift_allocObject();
  v44 = v65;
  *(v43 + 48) = v64;
  *(v43 + 64) = v44;
  *(v43 + 80) = v66;
  v45 = v63;
  *(v43 + 16) = v62;
  *(v43 + 32) = v45;
  v60[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF18, &unk_1EE11F820, 0x1E69B5430, v42);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleViaOfferConfig] = sub_1DACB8914();
  v46 = swift_allocObject();
  memcpy((v46 + 16), v61, 0x8DBuLL);
  v60[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF10, &unk_1EE11F810, 0x1E69B5480, v42);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPersonalizationTreatment] = sub_1DACB8914();
  v59.receiver = v16;
  v59.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v59, sel_init);
  sub_1DAA640AC(v57);
  return v47;
}

void sub_1DAB5ABC0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DAA420F4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DAB5AC28(void *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_1DAB5ACC8(a2);
  sub_1DAA55EB0(v3);

  v4 = objc_allocWithZone(MEMORY[0x1E69B5430]);
  v5 = sub_1DACB9114();

  v6 = [v4 initWithConfigDictionary_];

  *a1 = v6;
}

unint64_t sub_1DAB5ACC8(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1DACB75A4();
  swift_allocObject();
  sub_1DACB7594();
  v2 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v2;
  v17 = *(a1 + 64);
  v3 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v3;
  sub_1DAB6A5A4();
  v4 = sub_1DACB7584();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = sub_1DACB7B44();
  *&v16[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:4 error:v16];

  if (v9)
  {
    v10 = *&v16[0];
    sub_1DACB9B74();
    swift_unknownObjectRelease();
    sub_1DAA61100();
    if (swift_dynamicCast())
    {
      sub_1DAA563C0(v4, v6);
      return v15;
    }
  }

  else
  {
    v12 = *&v16[0];
    v13 = sub_1DACB78C4();

    swift_willThrow();
  }

  v14 = sub_1DAB68C38(MEMORY[0x1E69E7CC0]);
  sub_1DAA563C0(v4, v6);
  return v14;
}

id NewsCoreConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsCoreConfiguration.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id NewsCoreConfiguration.topStoriesConfig.getter()
{
  sub_1DAB5B568(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC2610;
  strcpy(v44, "channelId");
  WORD5(v44[0]) = 0;
  HIDWORD(v44[0]) = -385875968;
  v3 = MEMORY[0x1E69E6158];
  sub_1DACB9C14();
  v4 = (v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration);
  v6 = *v4;
  v5 = *(v4 + 1);
  *(inited + 96) = v3;
  *(inited + 72) = v6;
  *(inited + 80) = v5;
  strcpy(v44, "badgesTimeout");
  HIWORD(v44[0]) = -4864;
  sub_1DACB71E4();
  sub_1DACB9C14();
  v7 = v4[3];
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 168) = MEMORY[0x1E69E7360];
  *(inited + 144) = v7;
  strcpy(v44, "styleConfigs");
  BYTE13(v44[0]) = 0;
  HIWORD(v44[0]) = -5120;
  sub_1DACB9C14();
  v8 = *(v4 + 2);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    goto LABEL_13;
  }

  v30 = inited;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1DAB25D18(0, v9, 0);
  if (!*(v8 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 0;
  v1 = &v37;
  v10 = v45;
  v12 = (v8 + 32);
  while (1)
  {
    v13 = v12[1];
    v44[0] = *v12;
    v44[1] = v13;
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[5];
    v44[4] = v12[4];
    v44[5] = v16;
    v44[2] = v14;
    v44[3] = v15;
    v17 = v12[3];
    v39 = v12[2];
    v40 = v17;
    v18 = v12[5];
    v41 = v12[4];
    v42 = v18;
    v19 = v12[1];
    v37 = *v12;
    v38 = v19;
    sub_1DAB5FB54(v44, &v31);
    sub_1DAB5B5DC(&v37, &v43);
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v31 = v37;
    v32 = v38;
    sub_1DAB5FBB0(&v31);
    v20 = v43;
    v45 = v10;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1DAB25D18((v21 > 1), v22 + 1, 1);
      v10 = v45;
    }

    *(v10 + 16) = v22 + 1;
    *(v10 + 8 * v22 + 32) = v20;
    if (v9 - 1 == v11)
    {
      break;
    }

    v12 += 6;
    if (++v11 >= *(v8 + 16))
    {
      goto LABEL_15;
    }
  }

  inited = v30;
LABEL_13:
  sub_1DAB5FC04(0, &qword_1EE11FA48, sub_1DAB279F4, MEMORY[0x1E69E62F8]);
  *(inited + 240) = v23;
  *(inited + 216) = v10;
  sub_1DAB68448(inited);
  swift_setDeallocating();
  sub_1DAB6A54C(0, &qword_1EE11F770, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x1E69B5660]);
  v25 = sub_1DACB9114();
  v26 = [v24 initWithConfigDictionary_];

  if (v26)
  {

    return v26;
  }

LABEL_19:
  __break(1u);
  v28 = v1[3];
  v33 = v1[2];
  v34 = v28;
  v29 = v1[5];
  v35 = v1[4];
  v36 = v29;
  v31 = v37;
  v32 = v38;
  sub_1DAB5FBB0(&v31);

  __break(1u);
  return result;
}

void sub_1DAB5B568(uint64_t a1)
{
  if (!qword_1EE11F4A0)
  {
    sub_1DAB6A54C(255, &qword_1EE11F770, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F4A0);
    }
  }
}

uint64_t sub_1DAB5B5DC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  v6 = a1[7];
  v14 = a1[4];
  v15 = a1[6];
  v7 = a1[9];
  v16 = a1[8];
  v17 = a1[10];
  v12 = *a1;
  v13 = a1[11];
  sub_1DAB5B568(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC4A00;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v9 = MEMORY[0x1E69E6158];
  sub_1DACB9C14();
  *(inited + 96) = v9;
  *(inited + 72) = v4;
  *(inited + 80) = v3;
  sub_1DACB9C14();
  *(inited + 168) = v9;
  *(inited + 144) = v12;
  *(inited + 152) = v2;
  sub_1DACB9C14();
  *(inited + 240) = v9;
  *(inited + 216) = v14;
  *(inited + 224) = v5;
  sub_1DACB9C14();
  *(inited + 312) = v9;
  *(inited + 288) = v15;
  *(inited + 296) = v6;
  sub_1DACB9C14();
  *(inited + 384) = v9;
  *(inited + 360) = v16;
  *(inited + 368) = v7;
  sub_1DACB9C14();
  *(inited + 456) = v9;
  *(inited + 432) = v17;
  *(inited + 440) = v13;
  v10 = sub_1DAB68448(inited);
  swift_setDeallocating();
  sub_1DAB6A54C(0, &qword_1EE11F770, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8);
  result = swift_arrayDestroy();
  *a2 = v10;
  return result;
}

void NewsCoreConfiguration.analyticsEnvelopeContentTypeConfigs(for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations);
  v3 = sub_1DAB5B9B0(a1);
  sub_1DAA61D24(v2, v3, v4, v8);

  v5 = sub_1DACB92F4();
  v6 = sub_1DACB92F4();
  v7 = FCAnalyticsEnvelopeContentTypeConfigsByContentType();

  if (v7)
  {
    sub_1DAB68598(v8);
    sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
    sub_1DAA420F4(0, &qword_1EE126620, 0x1E69B6CE0);
    sub_1DAB685EC();
    sub_1DACB9124();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DAB5B9B0(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x474E4947415453;
      }

      if (a1 == 3)
      {
        return 16721;
      }

      return 1414743380;
    }

    if (a1 == 1)
    {
      return 0x49544355444F5250;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x584F42444E4153;
      case 8:
        return 0x314F4D4544;
      case 9:
        return 0x324F4D4544;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 == 5)
  {
    return 0x3144554F4C4349;
  }

  else
  {
    return 0x4C45564544;
  }
}

id NewsCoreConfiguration.currentTreatment.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v0 initWithInteger_];
}

double NewsCoreConfiguration.endOfArticleMinPaidHeadlineRatio.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3864);
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3872))
  {
    return 0.25;
  }

  return result;
}

uint64_t NewsCoreConfiguration.endOfArticleMaxInaccessiblePaidArticleCount.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3888))
  {
    return 2;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3880);
  }
}

uint64_t NewsCoreConfiguration.endOfArticleExpireArticlesAfter.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3904))
  {
    return 2592000;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3896);
  }
}

double NewsCoreConfiguration.interstitialAdLoadDelay.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3912);
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3920))
  {
    return 1.0;
  }

  return result;
}

double NewsCoreConfiguration.adRequestThrottle.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3928);
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3936))
  {
    return 1.0;
  }

  return result;
}

id NewsCoreConfiguration.notificationsConfig.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B5400]);

  return [v0 init];
}

id NewsCoreConfiguration.embedProxyConfiguration.getter()
{
  v10 = MEMORY[0x1E69E7CC8];
  v1 = (v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4032);
  if (v2 == 1)
  {
    v3 = 0;
    v2 = 0;
  }

  else
  {
    v3 = v1[503];
    sub_1DACB71E4();
  }

  sub_1DAB593A0(v3, v2, 0x736F4879786F7270, 0xE900000000000074);
  if (v1[504] == 1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = v1[506];
    v4 = v1[505];
    sub_1DACB71E4();
  }

  sub_1DAB593A0(v4, v5, 0x74754179786F7270, 0xEF6769666E6F436FLL);
  sub_1DAB5A264(v10);

  v6 = objc_allocWithZone(MEMORY[0x1E69B5270]);
  v7 = sub_1DACB9114();

  v8 = [v6 initWithDictionary_];

  return v8;
}

uint64_t NewsCoreConfiguration.copy(with:)@<X0>(void *a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  ObjectType = swift_getObjectType();
  v54 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix + 8);
  v50 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix);
  v52 = v7;
  sub_1DAB697A0(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration, v7, type metadata accessor for AppConfiguration);
  v9 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration);
  v47 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration + 8);
  v48 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration + 16);
  v49 = v9;
  v10 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration + 24);
  v11 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 48);
  v67 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 32);
  v68 = v11;
  v69 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 64);
  v12 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 16);
  v65 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration);
  v66 = v12;
  memcpy(v58, (v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment), sizeof(v58));
  v13 = *(v2 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations);
  memcpy(v64, (v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration), 0x1F9uLL);
  v14 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration + 48);
  v61 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration + 32);
  v62 = v14;
  v63 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration + 64);
  v15 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration + 16);
  v59 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration);
  v60 = v15;
  v46 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize);
  v16 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds);
  v17 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds);
  v18 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation);
  v19 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout);
  v20 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout);
  v21 = *(v3 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired);
  v22 = objc_allocWithZone(ObjectType);
  v23 = &v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix];
  *v23 = v50;
  v23[1] = v8;
  sub_1DAB697A0(v7, &v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration], type metadata accessor for AppConfiguration);
  v24 = &v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration];
  v25 = v48;
  v26 = v47;
  *v24 = v49;
  v24[1] = v26;
  v24[2] = v25;
  v24[3] = v10;
  v27 = &v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration];
  v29 = v67;
  v28 = v68;
  v30 = v66;
  *(v27 + 8) = v69;
  *(v27 + 2) = v29;
  *(v27 + 3) = v28;
  *(v27 + 1) = v30;
  *v27 = v65;
  memcpy(&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment], v58, 0x8DBuLL);
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations] = v13;
  memcpy(&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration], v64, 0x1F9uLL);
  v31 = &v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration];
  *v31 = v59;
  v33 = v61;
  v32 = v62;
  v34 = v60;
  v31[64] = v63;
  *(v31 + 2) = v33;
  *(v31 + 3) = v32;
  *(v31 + 1) = v34;
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize] = v46;
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds] = v16;
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds] = v17;
  v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation] = v18;
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout] = v19;
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout] = v20;
  v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired] = v21;
  v35 = swift_allocObject();
  memcpy((v35 + 16), v64, 0x1F9uLL);
  v57[64] = MEMORY[0x1E69E7CC0];
  sub_1DAA4F398(v64, v57);
  sub_1DAA4F3F4(&v59, v57);
  sub_1DAA4F398(v64, v57);
  sub_1DAA4F3F4(&v59, v57);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA4F450(&v65, v57);
  sub_1DAA4F4F4(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAB5FC04(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA5A834();
  sub_1DACB71E4();
  sub_1DACB9BB4();
  v36 = MEMORY[0x1E69D6A80];
  sub_1DAB5ABC0(0, &unk_1EE11FF20, &unk_1EE11F830, 0x1E69B5428, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleConfig] = sub_1DACB8914();
  v37 = swift_allocObject();
  v38 = v62;
  *(v37 + 48) = v61;
  *(v37 + 64) = v38;
  *(v37 + 80) = v63;
  v39 = v60;
  *(v37 + 16) = v59;
  *(v37 + 32) = v39;
  v57[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF18, &unk_1EE11F820, 0x1E69B5430, v36);
  swift_allocObject();
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleViaOfferConfig] = sub_1DACB8914();
  v40 = swift_allocObject();
  memcpy((v40 + 16), v58, 0x8DBuLL);
  v57[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF10, &unk_1EE11F810, 0x1E69B5480, v36);
  swift_allocObject();
  *&v22[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPersonalizationTreatment] = sub_1DACB8914();
  v41 = ObjectType;
  v56.receiver = v22;
  v56.super_class = ObjectType;
  v42 = objc_msgSendSuper2(&v56, sel_init);
  result = sub_1DAA640AC(v52);
  v44 = v53;
  v53[3] = v41;
  *v44 = v42;
  return result;
}

uint64_t NewsCoreConfiguration.embedConfigurationAssetID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.webEmbedContentBlockers.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.webEmbedContentBlockerOverrides.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 40);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.anfRenderingConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 56);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.endOfArticleFeedConfigurationResourceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1328);
  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.userConcernConfigurationResourceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4112);
  sub_1DACB71E4();
  return v1;
}

unint64_t NewsCoreConfiguration.configurableOffersMappingResourceId.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4184))
  {
    v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4176);
  }

  else
  {
    v1 = 0xD000000000000033;
  }

  sub_1DACB71E4();
  return v1;
}

uint64_t NewsCoreConfiguration.aiAttributionArticleString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4128);
  sub_1DACB71E4();
  return v1;
}

id NewsCoreConfiguration.newAdsEnabled.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3952))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3944);
  }

  return [objc_opt_self() enabledForCurrentLevel_];
}

id NewsCoreConfiguration.newsPersonalizationConfiguration.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B53D8]);

  return [v0 init];
}

uint64_t NewsCoreConfiguration.subscriptionsPlacardGlobalMaximumPerDay.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3968);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NewsCoreConfiguration.subscriptionsPlacardPublisherFrequencyInSeconds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3960);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t NewsCoreConfiguration.subscriptionsGracePeriodForTokenVerificationSeconds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3976);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

void NewsCoreConfiguration.iAdConfig.getter()
{
  sub_1DAA420F4(0, &qword_1EE11D0A0, 0x1E69B5340);
  v1[0] = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1568);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1576);
  sub_1DAAF671C(v1);
}

id NewsCoreConfiguration.puzzlesConfig.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B5550]);

  return [v0 init];
}

unint64_t NewsCoreConfiguration.articleConfig.getter()
{
  v1 = v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration;
  if (!*(v1 + *(type metadata accessor for AppConfiguration(0) + 544)))
  {
    return sub_1DAB68448(MEMORY[0x1E69E7CC0]);
  }

  sub_1DAA7C3AC(0, &qword_1EE123FE8, MEMORY[0x1E69D6A58], MEMORY[0x1E69E5E28]);
  sub_1DAB68654();
  v2 = sub_1DACB91D4();
  if (!v2)
  {
    return sub_1DAB68448(MEMORY[0x1E69E7CC0]);
  }

  v3 = sub_1DAA55EB0(v2);

  return v3;
}

void sub_1DAB5FC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1DAB5FC68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DAA4BF3C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAB658E0();
      v10 = v16;
    }

    v11 = *(v10 + 56) + 48 * v8;
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);
    v14 = *(v11 + 40);
    *a3 = *v11;
    *(a3 + 8) = *(v11 + 8);
    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
    *(a3 + 40) = v14;
    sub_1DAB6493C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *(a3 + 26) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DAB5FD2C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1DAB09598(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1DAB64B0C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1DAB65AA0();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1DACB9E24();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_1DACB71E4();
  v7 = sub_1DACB9E14();
  v8 = sub_1DAB6012C(v4, v7);
  sub_1DACB71F4();
  v9 = sub_1DAB09598(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1DAB64B0C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1DAB5FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1DAA4BF3C(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_1DAA7C55C(v19 + *(v27 + 72) * v16, a7, a4);
    sub_1DAB64CB0(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

double sub_1DAB60050@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DAB09820(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DAB67A90();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1DACB9DF4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1DAA5616C((*(v9 + 56) + 32 * v7), a2);
    sub_1DAB64EA4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1DAB6012C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1DAB6A44C(0);
    v2 = sub_1DACB9E94();
    v19 = v2;
    sub_1DACB9E04();
    v3 = sub_1DACB9E34();
    if (v3)
    {
      v4 = v3;
      sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1DAA420F4(0, &unk_1EE11F840, 0x1E69B5278);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1DAB60A14(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1DACB9A94();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1DACB9E34();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DAB603A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1DAB698C4(0, a3, a4, a5, sub_1DAA485B8);
  v37 = v7;
  result = sub_1DACB9E84();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {
        sub_1DACB71E4();
        swift_unknownObjectRetain();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1DAB6065C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for QuoteDetail(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1DAA7C3AC(0, &qword_1EE11F728, type metadata accessor for QuoteDetail, MEMORY[0x1E69E6EC8]);
  v40 = v4;
  result = sub_1DACB9E84();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DAA7C55C(v28, v41, type metadata accessor for QuoteDetail);
      }

      else
      {
        sub_1DAB697A0(v28, v41, type metadata accessor for QuoteDetail);
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DAA7C55C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for QuoteDetail);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DAB60A14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB6A44C(0);
  result = sub_1DACB9E84();
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

      result = sub_1DACB9A94();
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

uint64_t sub_1DAB60C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB6A3B4(0);
  v60 = v4;
  v6 = sub_1DACB9E84();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v57 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v58 = v6;
    v59 = v5;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
LABEL_15:
      v23 = v18 | (v8 << 6);
      v64 = v19;
      if (v60)
      {
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + 136 * v23;
        v27 = *v25;
        v26 = *(v25 + 8);
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        v30 = *(v25 + 40);
        v66 = *(v25 + 32);
        v65 = *(v25 + 48);
        v67 = *(v25 + 56);
        v31 = *(v25 + 64);
        v32 = *(v25 + 120);
        v33 = *(v25 + 104);
        v70 = *(v25 + 80);
        v68 = *(v25 + 72);
        v69 = *(v25 + 96);
        v63 = *(v24 + 8 * v23);
      }

      else
      {
        v34 = *(v5 + 48) + 136 * v23;
        v36 = *(v34 + 16);
        v35 = *(v34 + 32);
        v37 = *(v34 + 64);
        v79 = *(v34 + 48);
        v80 = v37;
        v38 = *(v34 + 80);
        v39 = *(v34 + 96);
        v40 = *(v34 + 112);
        *&v82[32] = *(v34 + 128);
        *v82 = v39;
        *&v82[16] = v40;
        v81 = v38;
        v76 = *v34;
        v77 = v36;
        v78 = v35;
        v41 = *(*(v5 + 56) + 8 * v23);
        v71 = *&v82[8];
        v73 = *&v82[24];
        v68 = *(&v80 + 1);
        v69 = v39;
        v70 = v38;
        v61 = v80;
        v67 = *(&v79 + 1);
        v42 = *(&v35 + 1);
        v65 = v79;
        v66 = v35;
        v44 = *(&v36 + 1);
        v43 = v36;
        v26 = *(&v76 + 1);
        v27 = v76;
        sub_1DAA806E4(&v76, v75);
        v63 = v41;
        v30 = v42;
        v29 = v43;
        v7 = v58;
        sub_1DACB71E4();
        v28 = v44;
        v31 = v61;
        v33 = v71;
        v32 = v73;
      }

      v62 = v27;
      *&v76 = v27;
      *(&v76 + 1) = v26;
      v45 = v29;
      *&v77 = v29;
      *(&v77 + 1) = v28;
      v46 = v28;
      *&v78 = v66;
      *(&v78 + 1) = v30;
      v47 = v30;
      *&v79 = v65;
      *(&v79 + 1) = v67;
      v48 = v31;
      LOBYTE(v80) = v31;
      *(&v80 + 1) = v68;
      v81 = v70;
      *v82 = v69;
      v72 = v33;
      v74 = v32;
      *&v82[8] = v33;
      *&v82[24] = v32;
      sub_1DACBA284();
      sub_1DAB08BD4(v75);
      result = sub_1DACBA2C4();
      v49 = -1 << *(v7 + 32);
      v50 = result & ~v49;
      v51 = v50 >> 6;
      if (((-1 << v50) & ~*(v13 + 8 * (v50 >> 6))) == 0)
      {
        v52 = 0;
        v53 = (63 - v49) >> 6;
        v16 = v72;
        v15 = v74;
        while (++v51 != v53 || (v52 & 1) == 0)
        {
          v54 = v51 == v53;
          if (v51 == v53)
          {
            v51 = 0;
          }

          v52 |= v54;
          v55 = *(v13 + 8 * v51);
          if (v55 != -1)
          {
            v14 = __clz(__rbit64(~v55)) + (v51 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v50) & ~*(v13 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
      v16 = v72;
      v15 = v74;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v7 + 48) + 136 * v14;
      *v17 = v62;
      *(v17 + 8) = v26;
      *(v17 + 16) = v45;
      *(v17 + 24) = v46;
      *(v17 + 32) = v66;
      *(v17 + 40) = v47;
      *(v17 + 48) = v65;
      *(v17 + 56) = v67;
      *(v17 + 64) = v48;
      *(v17 + 72) = v68;
      *(v17 + 80) = v70;
      *(v17 + 96) = v69;
      *(v17 + 120) = v15;
      *(v17 + 104) = v16;
      *(*(v7 + 56) + 8 * v14) = v63;
      ++*(v7 + 16);
      v5 = v59;
      v11 = v64;
    }

    v20 = v8;
    result = v57;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v12)
      {
        break;
      }

      v22 = v57[v8];
      ++v20;
      if (v22)
      {
        v18 = __clz(__rbit64(v22));
        v19 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v56 = 1 << *(v5 + 32);
    v3 = v2;
    if (v56 >= 64)
    {
      bzero(v57, ((v56 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v57 = -1 << v56;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAB610B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB6A354();
  v32 = v4;
  result = sub_1DACB9E84();
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
      sub_1DAB5916C(*(v5 + 56) + 136 * v20, v33);
      if ((v32 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DAB59344(v33, v34);
      }

      sub_1DAB5916C(v33, v34);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1DAB5916C(v34, *(v7 + 56) + 136 * v15);
      ++*(v7 + 16);
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAB61390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB69808();
  v39 = v4;
  result = sub_1DACB9E84();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 104 * v21;
      if (v39)
      {
        v40 = *(v25 + 8);
        v41 = *(v25 + 24);
        v42 = *v25;
        v43 = *(v25 + 32);
        v44 = *(v25 + 48);
        v45 = *(v25 + 16);
        v46 = *(v25 + 72);
        v48 = *(v25 + 80);
        v49 = *(v25 + 64);
        v50 = *(v25 + 88);
        v47 = *(v25 + 96);
      }

      else
      {
        v27 = *(v25 + 16);
        v26 = *(v25 + 32);
        v52 = *v25;
        v53 = v27;
        v54 = v26;
        v29 = *(v25 + 64);
        v28 = *(v25 + 80);
        v30 = *(v25 + 48);
        v58 = *(v25 + 96);
        v56 = v29;
        v57 = v28;
        v55 = v30;
        v47 = v58;
        v48 = v28;
        v49 = v29;
        v50 = *(&v28 + 1);
        v46 = *(&v29 + 1);
        v43 = v54;
        v44 = v30;
        v41 = *(&v53 + 1);
        v45 = v53;
        v40 = *(&v52 + 1);
        v42 = v52;
        sub_1DACB71E4();
        sub_1DAB69868(&v52, v51);
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 104 * v15;
      *v17 = v42;
      *(v17 + 8) = v40;
      *(v17 + 16) = v45;
      *(v17 + 24) = v41;
      *(v17 + 32) = v43;
      *(v17 + 48) = v44;
      *(v17 + 64) = v49;
      *(v17 + 72) = v46;
      *(v17 + 80) = v48;
      *(v17 + 88) = v50;
      *(v17 + 96) = v47;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAB61740(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1DAB698C4(0, a3, a4, a5, sub_1DAA488A4);
  v37 = v7;
  result = sub_1DACB9E84();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1DAB619FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EarningsCalendarEventModel(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1DAA7C3AC(0, &qword_1ECBE7DE8, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6EC8]);
  v40 = v4;
  result = sub_1DACB9E84();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DAA7C55C(v28, v41, type metadata accessor for EarningsCalendarEventModel);
      }

      else
      {
        sub_1DAB697A0(v28, v41, type metadata accessor for EarningsCalendarEventModel);
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DAA7C55C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for EarningsCalendarEventModel);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DAB61DD0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1DAB699E0(0, a3, a4, a5);
  v63 = v7;
  v9 = sub_1DACB9E84();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v60 = (v8 + 64);
    v12 = 1 << *(v8 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v8 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v9 + 64;
    v61 = v9;
    v62 = v8;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v22 = (v14 - 1) & v14;
LABEL_15:
      v26 = v21 | (v11 << 6);
      v67 = v22;
      if (v63)
      {
        v27 = *(v8 + 56);
        v28 = *(v8 + 48) + 136 * v26;
        v30 = *v28;
        v29 = *(v28 + 8);
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        v33 = *(v28 + 40);
        v69 = *(v28 + 32);
        v68 = *(v28 + 48);
        v70 = *(v28 + 56);
        v34 = *(v28 + 64);
        v35 = *(v28 + 120);
        v36 = *(v28 + 104);
        v73 = *(v28 + 80);
        v71 = *(v28 + 72);
        v72 = *(v28 + 96);
        v66 = *(v27 + 8 * v26);
      }

      else
      {
        v37 = *(v8 + 48) + 136 * v26;
        v39 = *(v37 + 16);
        v38 = *(v37 + 32);
        v40 = *(v37 + 64);
        v82 = *(v37 + 48);
        v83 = v40;
        v41 = *(v37 + 80);
        v42 = *(v37 + 96);
        v43 = *(v37 + 112);
        *&v85[32] = *(v37 + 128);
        *v85 = v42;
        *&v85[16] = v43;
        v84 = v41;
        v79 = *v37;
        v80 = v39;
        v81 = v38;
        v44 = *(*(v8 + 56) + 8 * v26);
        v74 = *&v85[8];
        v76 = *&v85[24];
        v71 = *(&v83 + 1);
        v72 = v42;
        v73 = v41;
        v64 = v83;
        v70 = *(&v82 + 1);
        v45 = *(&v38 + 1);
        v68 = v82;
        v69 = v38;
        v47 = *(&v39 + 1);
        v46 = v39;
        v29 = *(&v79 + 1);
        v30 = v79;
        sub_1DAA806E4(&v79, v78);
        v66 = v44;
        v33 = v45;
        v32 = v46;
        v10 = v61;
        sub_1DACB71E4();
        v31 = v47;
        v34 = v64;
        v36 = v74;
        v35 = v76;
      }

      v65 = v30;
      *&v79 = v30;
      *(&v79 + 1) = v29;
      v48 = v32;
      *&v80 = v32;
      *(&v80 + 1) = v31;
      v49 = v31;
      *&v81 = v69;
      *(&v81 + 1) = v33;
      v50 = v33;
      *&v82 = v68;
      *(&v82 + 1) = v70;
      v51 = v34;
      LOBYTE(v83) = v34;
      *(&v83 + 1) = v71;
      v84 = v73;
      *v85 = v72;
      v75 = v36;
      v77 = v35;
      *&v85[8] = v36;
      *&v85[24] = v35;
      sub_1DACBA284();
      sub_1DAB08BD4(v78);
      result = sub_1DACBA2C4();
      v52 = -1 << *(v10 + 32);
      v53 = result & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v16 + 8 * (v53 >> 6))) == 0)
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        v19 = v75;
        v18 = v77;
        while (++v54 != v56 || (v55 & 1) == 0)
        {
          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v16 + 8 * v54);
          if (v58 != -1)
          {
            v17 = __clz(__rbit64(~v58)) + (v54 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v53) & ~*(v16 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
      v19 = v75;
      v18 = v77;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v20 = *(v10 + 48) + 136 * v17;
      *v20 = v65;
      *(v20 + 8) = v29;
      *(v20 + 16) = v48;
      *(v20 + 24) = v49;
      *(v20 + 32) = v69;
      *(v20 + 40) = v50;
      *(v20 + 48) = v68;
      *(v20 + 56) = v70;
      *(v20 + 64) = v51;
      *(v20 + 72) = v71;
      *(v20 + 80) = v73;
      *(v20 + 96) = v72;
      *(v20 + 120) = v18;
      *(v20 + 104) = v19;
      *(*(v10 + 56) + 8 * v17) = v66;
      ++*(v10 + 16);
      v8 = v62;
      v14 = v67;
    }

    v23 = v11;
    result = v60;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v15)
      {
        break;
      }

      v25 = v60[v11];
      ++v23;
      if (v25)
      {
        v21 = __clz(__rbit64(v25));
        v22 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v63 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v59 = 1 << *(v8 + 32);
    v6 = v5;
    if (v59 >= 64)
    {
      bzero(v60, ((v59 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v60 = -1 << v59;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_1DAB6221C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB698C4(0, &unk_1EE11CFE0, &unk_1EE11D048, 0x1E69B52B8, sub_1DAA420F4);
  v35 = v4;
  result = sub_1DACB9E84();
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
        sub_1DACB71E4();
        v25 = v24;
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
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

uint64_t sub_1DAB624E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB69A54();
  v36 = v4;
  result = sub_1DACB9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *(v25 + 8);
      v38 = *v25;
      v37 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v38;
      *(v17 + 8) = v26;
      *(v17 + 16) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAB627A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB6A108();
  v39 = v4;
  result = sub_1DACB9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
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
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v25 = v22 | (v8 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      if (v39)
      {
        v29 = *(v5 + 56) + 776 * v25;
        v50 = *(v29 + 16);
        v51 = *(v29 + 32);
        v52 = *(v29 + 48);
        v53 = *(v29 + 64);
        v49 = *v29;
        v40 = *(v29 + 72);
        v41 = *(v29 + 88);
        memcpy(__src, (v29 + 104), sizeof(__src));
        v42 = *(v29 + 688);
        v43 = *(v29 + 704);
        v47 = *(v29 + 720);
        v44 = *(v29 + 728);
        v46 = *(v29 + 736);
        v48 = *(v29 + 760);
        v45 = *(v29 + 744);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 776 * v25), sizeof(__dst));
        v48 = *&__dst[760];
        v45 = *&__dst[744];
        v46 = __dst[736];
        v47 = *&__dst[720];
        v44 = *&__dst[728];
        v42 = *&__dst[688];
        v43 = *&__dst[704];
        v40 = *&__dst[72];
        v41 = *&__dst[88];
        sub_1DACB71E4();
        sub_1DAAE8548(__dst, &v49);
        v51 = *&__dst[32];
        v52 = *&__dst[48];
        v53 = __dst[64];
        v49 = *__dst;
        v50 = *&__dst[16];
        memcpy(__src, &__dst[104], sizeof(__src));
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      __dst[64] = v53;
      v16 = v51;
      v17 = v52;
      *&__dst[32] = v51;
      *&__dst[48] = v52;
      v19 = v49;
      v18 = v50;
      *__dst = v49;
      *&__dst[16] = v50;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (*(v7 + 48) + 16 * v15);
      *v20 = v27;
      v20[1] = v28;
      v21 = *(v7 + 56) + 776 * v15;
      *v21 = v19;
      *(v21 + 64) = *&__dst[64];
      *(v21 + 32) = v16;
      *(v21 + 48) = v17;
      *(v21 + 16) = v18;
      *(v21 + 88) = v41;
      *(v21 + 72) = v40;
      result = memcpy((v21 + 104), __src, 0x248uLL);
      *(v21 + 688) = v42;
      *(v21 + 704) = v43;
      *(v21 + 720) = v47;
      *(v21 + 728) = v44;
      *(v21 + 736) = v46;
      *(v21 + 744) = v45;
      *(v21 + 760) = v48;
      ++*(v7 + 16);
    }

    v23 = v8;
    while (1)
    {
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v24 = v9[v8];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v12 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAB62BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB6A04C();
  v37 = v4;
  result = sub_1DACB9E84();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 72 * v21;
      if (v37)
      {
        v38 = *(v25 + 8);
        v43 = *(v25 + 16);
        v39 = *(v25 + 24);
        v40 = *v25;
        v42 = *(v25 + 32);
        v44 = *(v25 + 56);
        v41 = *(v25 + 40);
      }

      else
      {
        v26 = *(v25 + 16);
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        *&v47[32] = *(v25 + 64);
        *v47 = v27;
        *&v47[16] = v28;
        v46[1] = v26;
        v46[0] = *v25;
        v44 = *&v47[24];
        v41 = *&v47[8];
        v42 = v27;
        v39 = *(&v26 + 1);
        v43 = v26;
        v38 = *(&v46[0] + 1);
        v40 = *&v46[0];
        sub_1DACB71E4();
        sub_1DAB6A0AC(v46, v45);
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 16) = v43;
      *(v17 + 24) = v39;
      *(v17 + 32) = v42;
      *(v17 + 56) = v44;
      *(v17 + 40) = v41;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAB62F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB69FEC();
  v36 = v4;
  result = sub_1DACB9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *(v25 + 8);
      v38 = *v25;
      v37 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v38;
      *(v17 + 8) = v26;
      *(v17 + 16) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAB631F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for YahooMultiQuoteItem(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1DAA7C3AC(0, &qword_1EE126630, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6EC8]);
  v40 = v4;
  result = sub_1DACB9E84();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DAA7C55C(v28, v41, type metadata accessor for YahooMultiQuoteItem);
      }

      else
      {
        sub_1DAB697A0(v28, v41, type metadata accessor for YahooMultiQuoteItem);
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DAA7C55C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for YahooMultiQuoteItem);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DAB63590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAB69AB4(0);
  v34 = v4;
  result = sub_1DACB9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_1DAB6382C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SDSAuthToken(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7AB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1DAB6A168(0);
  v43 = v4;
  result = sub_1DACB9E84();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1DAA7C55C(v27 + v28 * v24, v47, type metadata accessor for SDSAuthToken);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1DAB697A0(v29 + v28 * v24, v47, type metadata accessor for SDSAuthToken);
      }

      sub_1DAA4F4F4(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      result = sub_1DACB91E4();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1DAA7C55C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SDSAuthToken);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1DAB63CC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1DACB9DF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1DAB69BA4(0);
  v39 = v4;
  result = sub_1DACB9E84();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1DAA5616C((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1DAA7C694(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_1DACB91E4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1DAA5616C(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1DAB64054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for LanguageConfig(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1DAA7C3AC(0, &unk_1EE123D20, type metadata accessor for LanguageConfig, MEMORY[0x1E69E6EC8]);
  v40 = v4;
  result = sub_1DACB9E84();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DAA7C55C(v28, v41, type metadata accessor for LanguageConfig);
      }

      else
      {
        sub_1DAB697A0(v28, v41, type metadata accessor for LanguageConfig);
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DAA7C55C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for LanguageConfig);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DAB643F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for YahooQuoteDetailItem(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1DAA7C3AC(0, &qword_1EE126628, type metadata accessor for YahooQuoteDetailItem, MEMORY[0x1E69E6EC8]);
  v40 = v4;
  result = sub_1DACB9E84();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DAA7C55C(v28, v41, type metadata accessor for YahooQuoteDetailItem);
      }

      else
      {
        sub_1DAB697A0(v28, v41, type metadata accessor for YahooQuoteDetailItem);
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DAA7C55C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for YahooQuoteDetailItem);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DAB6478C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DACB9BD4() + 1) & ~v5;
    do
    {
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v9 = sub_1DACBA2C4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DAB6493C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DACB9BD4() + 1) & ~v5;
    do
    {
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v11 = sub_1DACBA2C4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DAB64B0C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DACB9BD4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1DACB9A94();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1DAB64CB0(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1DACB9BD4() + 1) & ~v6;
    while (1)
    {
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v11 = sub_1DACBA2C4();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DAB64EA4(int64_t a1, uint64_t a2)
{
  v4 = sub_1DACB9DF4();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1DACB9BD4();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_1DACB91E4();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1DAB65190(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1DAB698C4(0, a1, a2, a3, sub_1DAA485B8);
  v5 = *v3;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
        sub_1DACB71E4();
        result = swift_unknownObjectRetain();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1DAB65314()
{
  v1 = v0;
  sub_1DAA4BEE0();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_1DACB71E4();
        result = sub_1DACB71E4();
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

void *sub_1DAB65480()
{
  v1 = v0;
  v2 = type metadata accessor for QuoteDetail(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &qword_1EE11F728, type metadata accessor for QuoteDetail, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1DACB9E74();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1DAB697A0(*(v4 + 56) + v26, v30, type metadata accessor for QuoteDetail);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DAA7C55C(v25, *(v27 + 56) + v26, type metadata accessor for QuoteDetail);
        result = sub_1DACB71E4();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1DAB656FC()
{
  v1 = v0;
  sub_1DAA80BE4();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAA806E4(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 136;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 64);
      v40 = *(v21 + 48);
      v41 = v24;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      v45 = *(v21 + 128);
      v43 = v26;
      v44 = v25;
      v42 = v27;
      v37 = *v21;
      v38 = v23;
      v39 = v22;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      *v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v41;
      *(v29 + 48) = v40;
      *(v29 + 64) = v32;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      *(v29 + 128) = v45;
      *(v29 + 96) = v34;
      *(v29 + 112) = v35;
      *(v29 + 80) = v33;
      sub_1DACB71E4();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1DAB658E0()
{
  v1 = v0;
  sub_1DAA74DF8();
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v26 = *(v22 + 16);
        v25 = *(v22 + 24);
        v27 = *(v22 + 32);
        LOWORD(v22) = *(v22 + 40);
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v26;
        *(v29 + 24) = v25;
        *(v29 + 32) = v27;
        *(v29 + 40) = v22;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        result = sub_1DACB71E4();
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

id sub_1DAB65AA0()
{
  v1 = v0;
  sub_1DAB6A44C(0);
  v2 = *v0;
  v3 = sub_1DACB9E74();
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

void *sub_1DAB65BF4()
{
  v1 = v0;
  sub_1DAB6A3B4(0);
  v2 = *v0;
  v3 = sub_1DACB9E74();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DACB71E4())
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 136 * v16);
      v19 = v17[1];
      v18 = v17[2];
      v20 = v17[4];
      v26[3] = v17[3];
      v26[4] = v20;
      v21 = v17[5];
      v22 = v17[6];
      v23 = v17[7];
      v27 = *(v17 + 16);
      v26[6] = v22;
      v26[7] = v23;
      v26[5] = v21;
      v26[0] = *v17;
      v26[1] = v19;
      v26[2] = v18;
      v24 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 136 * v16), v17, 0x88uLL);
      *(*(v4 + 56) + 8 * v16) = v24;
      sub_1DAA806E4(v26, v25);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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