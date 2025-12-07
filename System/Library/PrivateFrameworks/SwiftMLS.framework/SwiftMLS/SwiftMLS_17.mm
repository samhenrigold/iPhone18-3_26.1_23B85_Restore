uint64_t sub_26BF4B5DC()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[333];
  v4 = v0[323];
  v5 = v0[314];
  v6 = v0[313];
  sub_26BE6FF8C((v0 + 73));
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  sub_26BE2E258(v4, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF4B834()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[333];
  v4 = v0[323];
  v5 = v0[314];
  sub_26BE6FF8C((v0 + 73));
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  sub_26BE2E258(v4, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF4BA78()
{
  v1 = v0[333];
  sub_26BE00258(v0[335], v0[336]);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF4BC70()
{
  *(*v1 + 3256) = v0;

  if (v0)
  {
    v2 = sub_26BF4BF9C;
  }

  else
  {
    v2 = sub_26BF4BD84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF4BD84()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2488);
  sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26BF4BF9C()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2488);
  sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26BF4C1BC()
{
  v1 = v0[369];
  v2 = v0[368];
  v3 = v0[367];
  v4 = v0[366];
  v5 = v0[365];
  v6 = v0[364];
  v7 = v0[362];
  v13 = v0[363];
  v14 = v0[336];
  v12 = v0[335];
  v16 = v0[311];
  v17 = v0[333];
  v15 = v0[306];
  if (v5 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[364];
  }

  if (v5 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v0[365];
  }

  sub_26BE00258(v0[360], v0[361]);
  sub_26BE00258(v8, v9);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE132D4(v6, v5);
  sub_26BE132D4(v7, v13);
  sub_26BE00258(v12, v14);
  sub_26BF26D4C((v0 + 117));
  sub_26BE2DBC4((v0 + 229));
  sub_26BF7F05C(v15, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v16, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v17, type metadata accessor for MLS.MLSMessage);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF4C498()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[363];
  v4 = v0[362];
  v5 = v0[336];
  v6 = v0[335];
  v7 = v0[333];
  v8 = v0[311];
  v9 = v0[306];
  sub_26BE00258(v0[360], v0[361]);
  sub_26BE132D4(v2, v1);
  sub_26BE132D4(v4, v3);
  sub_26BE00258(v6, v5);
  sub_26BE2DBC4((v0 + 229));
  sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF4C714()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[333];
  v4 = v0[311];
  v5 = v0[306];
  sub_26BE00258(v0[378], v0[379]);
  sub_26BE00258(v2, v1);
  sub_26BE2DBC4((v0 + 222));
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF4C968()
{
  v1 = v0[333];
  v2 = v0[311];
  v3 = v0[306];
  sub_26BE00258(v0[335], v0[336]);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF4CBA0()
{
  v1 = v0[333];
  v2 = v0[311];
  v3 = v0[310];
  v4 = v0[306];
  sub_26BE00258(v0[335], v0[336]);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF4CDEC()
{
  v1 = v0[333];
  v2 = v0[311];
  v3 = v0[310];
  v4 = v0[306];
  sub_26BE00258(v0[335], v0[336]);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF4D038(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = v4;
  v6 = v3;
  v83 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v9 = MEMORY[0x28223BE20](v80);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v75 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = type metadata accessor for FileInfoAndSender(0);
  v81 = *(v19 - 8);
  v82 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = *a3;
  v78 = a3[1];
  v79 = v21;
  v22 = *(a3 + 32);
  v77 = *(a3 + 5);
  v76 = *(a3 + 48);
  if (v76 == 1)
  {
    v70 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v71 = v22;
    v74 = v11;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v73 = v13;
    v23 = sub_26C009A5C();
    v24 = __swift_project_value_buffer(v23, qword_280478EE8);

    v25 = sub_26C009A3C();
    v26 = sub_26C00AA1C();

    v27 = os_log_type_enabled(v25, v26);
    v72 = a1;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v90 = v4;
      v29 = v28;
      v30 = swift_slowAlloc();
      v69 = v24;
      v31 = v30;
      *&v85[0] = v30;
      *v29 = 136315138;

      v32 = sub_26BE3D034();
      v34 = v33;

      v35 = sub_26BE29740(v32, v34, v85);
      a1 = v72;

      *(v29 + 4) = v35;
      _os_log_impl(&dword_26BDFE000, v25, v26, "%s: Processed commit was generated by this client", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x26D69A4E0](v31, -1, -1);
      v36 = v29;
      v5 = v90;
      MEMORY[0x26D69A4E0](v36, -1, -1);
    }

    v37 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject;
    swift_beginAccess();
    sub_26BE2E1F0(v6 + v37, v18, &qword_28045FA38, &qword_26C01D890);
    v38 = (*(v81 + 48))(v18, 1, v82);
    v11 = v74;
    if (v38 == 1)
    {
      sub_26BE2E258(v18, &qword_28045FA38, &qword_26C01D890);
      v13 = v73;
    }

    else
    {
      v69 = v37;
      sub_26BF7F124(v18, v70, type metadata accessor for FileInfoAndSender);

      v39 = sub_26C009A3C();
      v40 = sub_26C00AA1C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v90 = v5;
        v42 = v41;
        v43 = swift_slowAlloc();
        *&v85[0] = v43;
        *v42 = 136315138;

        v44 = sub_26BE3D034();
        v46 = v45;

        v47 = sub_26BE29740(v44, v46, v85);
        v11 = v74;

        *(v42 + 4) = v47;
        _os_log_impl(&dword_26BDFE000, v39, v40, "%s: Received confirmation that commit was accepted; marking stored keys for group subject as valid", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x26D69A4E0](v43, -1, -1);
        v48 = v42;
        v5 = v90;
        MEMORY[0x26D69A4E0](v48, -1, -1);
      }

      v49 = v75;
      sub_26BF7F124(v70, v75, type metadata accessor for FileInfoAndSender);
      v50 = v82;
      v51 = *(v81 + 56);
      v51(v49, 0, 1, v82);
      v52 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
      swift_beginAccess();
      sub_26BE7170C(v49, v6 + v52, &qword_28045FA38, &qword_26C01D890);
      swift_endAccess();
      v51(v49, 1, 1, v50);
      v53 = v69;
      swift_beginAccess();
      sub_26BE7170C(v49, v6 + v53, &qword_28045FA38, &qword_26C01D890);
      swift_endAccess();
      a1 = v72;
      v13 = v73;
    }

    LOBYTE(v22) = v71;
  }

  v54 = *(v6 + 48);
  swift_beginAccess();
  sub_26BE295A0(v54 + 40, v85);
  v55 = v89;
  if (v89 == 2)
  {
    v84[3] = &type metadata for SwiftMLSFeatureFlags;
    v84[4] = sub_26BE295D8();
    LOBYTE(v84[0]) = 2;
    v56 = sub_26C00929C();
    sub_26BE29710(v85);
    __swift_destroy_boxed_opaque_existential_1(v84);
    v57 = v83;
    if ((v56 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_26BE29710(v85);
    v57 = v83;
    if ((v55 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  result = sub_26BF4EE40(a1, v57);
  if (v5)
  {
    return result;
  }

  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch) = result;

LABEL_18:
  v85[0] = v79;
  v85[1] = v78;
  v86 = v22;
  v87 = v77;
  v88 = v76;
  v59 = *(v57 + *(type metadata accessor for MLS.GroupState(0) + 40));
  v60 = sub_26BE81FE0(v59);
  if (v5)
  {

LABEL_21:
    LODWORD(v60) = sub_26BE4126C();
    goto LABEL_22;
  }

  if ((v60 & 0x100000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v61 = *(v57 + 24);
  LODWORD(v84[0]) = v60;
  v83 = v61;
  v84[1] = v61;
  sub_26BF4D900(v85, v84);
  v62 = sub_26BE81FE0(v59);
  if ((v62 & 0x100000000) != 0)
  {
    v62 = sub_26BE4126C();
  }

  v90 = 0;
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v80, qword_28045E4F0);
  swift_beginAccess();
  sub_26BE2E1F0(v63, v11, &qword_28045E4A8, &unk_26C00ECB0);
  v64 = sub_26C00921C();
  v65 = *(v64 - 8);
  v66 = v11;
  v67 = *(v65 + 48);
  if (v67(v66, 1, v64) == 1)
  {
    sub_26C00920C();
    if (v67(v66, 1, v64) != 1)
    {
      sub_26BE2E258(v66, &qword_28045E4A8, &unk_26C00ECB0);
    }
  }

  else
  {
    (*(v65 + 32))(v13, v66, v64);
  }

  (*(v65 + 56))(v13, 0, 1, v64);
  swift_beginAccess();
  sub_26BE4D1CC(v13, v62, v83);
  return swift_endAccess();
}

void *sub_26BF4D900(void *result, int *a2)
{
  v3 = v2;
  v4 = *result;
  v5 = result[1];
  v6 = result[3];
  v95 = *a2;
  v94 = *(a2 + 1);
  v7 = *(*result + 16);
  v90 = v5;
  v92 = v6;
  if (!v7)
  {
LABEL_27:
    v34 = *(v5 + 16);
    if (v34)
    {
      v35 = 0;
      v36 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
      v37 = v5 + 32;
      do
      {
        if (v35 >= *(v5 + 16))
        {
          goto LABEL_81;
        }

        sub_26BE2DA9C(v37, &v99);
        if ((v100 & 0x20) != 0)
        {
          if ((v99 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x26D6996F0](0);
          }

          else
          {
            if (!*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v38 = *(v99 + 32);
          }

          v39 = v38;
          v40 = SecCertificateCopyURIs();
          if (!v40)
          {
            goto LABEL_93;
          }

          v41 = v40;

          v97 = v41;
          type metadata accessor for CFArray(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
          if (swift_dynamicCast())
          {
            if (v102)
            {
              if (v102[2])
              {
                v43 = v102[4];
                v42 = v102[5];

                swift_beginAccess();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v102 = *(v3 + v36);
                v45 = v102;
                *(v3 + v36) = 0x8000000000000000;
                v46 = sub_26BEBB618(v43, v42);
                v48 = v45[2];
                v49 = (v47 & 1) == 0;
                v22 = __OFADD__(v48, v49);
                v50 = v48 + v49;
                if (v22)
                {
                  goto LABEL_87;
                }

                v51 = v47;
                if (v45[3] >= v50)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_45;
                  }

                  v56 = v46;
                  sub_26BE6E178();
                  v46 = v56;
                  if ((v51 & 1) == 0)
                  {
                    goto LABEL_49;
                  }

LABEL_46:
                  v53 = v46;

                  v54 = v102;
                  v55 = v102[7] + 16 * v53;
                  *v55 = v95;
                  *(v55 + 8) = v94;
                }

                else
                {
                  sub_26BE6A5B8(v50, isUniquelyReferenced_nonNull_native);
                  v46 = sub_26BEBB618(v43, v42);
                  if ((v51 & 1) != (v52 & 1))
                  {
                    goto LABEL_95;
                  }

LABEL_45:
                  if (v51)
                  {
                    goto LABEL_46;
                  }

LABEL_49:
                  v54 = v102;
                  v102[(v46 >> 6) + 8] |= 1 << v46;
                  v57 = (v54[6] + 16 * v46);
                  *v57 = v43;
                  v57[1] = v42;
                  v58 = v54[7] + 16 * v46;
                  *v58 = v95;
                  *(v58 + 8) = v94;
                  v59 = v54[2];
                  v22 = __OFADD__(v59, 1);
                  v60 = v59 + 1;
                  if (v22)
                  {
                    goto LABEL_90;
                  }

                  v54[2] = v60;
                }

                v3 = v93;
                *(v93 + v36) = v54;
                swift_endAccess();
                v5 = v90;
                v6 = v92;
                goto LABEL_30;
              }
            }
          }
        }

LABEL_30:
        ++v35;
        result = sub_26BE2DAF8(&v99);
        v37 += 56;
      }

      while (v34 != v35);
    }

    v61 = *(v6 + 16);
    if (!v61)
    {
      return result;
    }

    v62 = 0;
    v89 = *(v6 + 16);
    v91 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
    for (i = v6 + 32; ; i += 112)
    {
      if (v62 >= *(v6 + 16))
      {
        goto LABEL_82;
      }

      sub_26BF7ED2C(i, &v99);
      sub_26BE2DA9C(&v101, &v97);
      sub_26BF7ED88(&v99);
      if ((v98 & 0x20) != 0)
      {
        if ((v97 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x26D6996F0](0);
        }

        else
        {
          if (!*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v64 = *(v97 + 32);
        }

        v65 = v64;
        v66 = SecCertificateCopyURIs();
        if (!v66)
        {
          goto LABEL_94;
        }

        v67 = v66;

        v102 = v67;
        type metadata accessor for CFArray(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
        if (swift_dynamicCast())
        {
          if (v96)
          {
            if (v96[2])
            {
              v69 = v96[4];
              v68 = v96[5];

              sub_26BE2DAF8(&v97);
              swift_beginAccess();
              v70 = swift_isUniquelyReferenced_nonNull_native();
              v102 = *(v3 + v91);
              v71 = v102;
              *(v3 + v91) = 0x8000000000000000;
              v72 = sub_26BEBB618(v69, v68);
              v74 = v71[2];
              v75 = (v73 & 1) == 0;
              v22 = __OFADD__(v74, v75);
              v76 = v74 + v75;
              if (v22)
              {
                goto LABEL_88;
              }

              v77 = v73;
              if (v71[3] >= v76)
              {
                if (v70)
                {
                  v61 = v89;
                  if ((v73 & 1) == 0)
                  {
                    goto LABEL_76;
                  }
                }

                else
                {
                  v82 = v72;
                  sub_26BE6E178();
                  v72 = v82;
                  v61 = v89;
                  if ((v77 & 1) == 0)
                  {
                    goto LABEL_76;
                  }
                }
              }

              else
              {
                sub_26BE6A5B8(v76, v70);
                v72 = sub_26BEBB618(v69, v68);
                if ((v77 & 1) != (v78 & 1))
                {
                  goto LABEL_95;
                }

                v61 = v89;
                if ((v77 & 1) == 0)
                {
LABEL_76:
                  v80 = v102;
                  v102[(v72 >> 6) + 8] |= 1 << v72;
                  v83 = (v80[6] + 16 * v72);
                  *v83 = v69;
                  v83[1] = v68;
                  v84 = v80[7] + 16 * v72;
                  *v84 = v95;
                  *(v84 + 8) = v94;
                  v85 = v80[2];
                  v22 = __OFADD__(v85, 1);
                  v86 = v85 + 1;
                  if (v22)
                  {
                    goto LABEL_91;
                  }

                  v80[2] = v86;
                  goto LABEL_78;
                }
              }

              v79 = v72;

              v80 = v102;
              v81 = v102[7] + 16 * v79;
              *v81 = v95;
              *(v81 + 8) = v94;
LABEL_78:
              v3 = v93;
              *(v93 + v91) = v80;
              result = swift_endAccess();
              v6 = v92;
              goto LABEL_56;
            }
          }
        }
      }

      result = sub_26BE2DAF8(&v97);
LABEL_56:
      if (v61 == ++v62)
      {
        return result;
      }
    }
  }

  v8 = 0;
  v87 = *result;
  v88 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  v9 = v4 + 32;
  while (v8 < *(v4 + 16))
  {
    sub_26BE2DA9C(v9, &v99);
    if ((v100 & 0x20) != 0)
    {
      if ((v99 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D6996F0](0);
      }

      else
      {
        if (!*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v10 = *(v99 + 32);
      }

      v11 = v10;
      v12 = SecCertificateCopyURIs();
      if (!v12)
      {
        goto LABEL_92;
      }

      v13 = v12;

      v97 = v13;
      type metadata accessor for CFArray(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
      if (swift_dynamicCast())
      {
        if (v102)
        {
          if (v102[2])
          {
            v15 = v102[4];
            v14 = v102[5];

            swift_beginAccess();
            v16 = swift_isUniquelyReferenced_nonNull_native();
            v102 = *(v3 + v88);
            v17 = v102;
            *(v3 + v88) = 0x8000000000000000;
            v18 = sub_26BEBB618(v15, v14);
            v20 = v17[2];
            v21 = (v19 & 1) == 0;
            v22 = __OFADD__(v20, v21);
            v23 = v20 + v21;
            if (v22)
            {
              goto LABEL_86;
            }

            v24 = v19;
            if (v17[3] >= v23)
            {
              if (v16)
              {
                v4 = v87;
                if ((v19 & 1) == 0)
                {
                  goto LABEL_24;
                }
              }

              else
              {
                v29 = v18;
                sub_26BE6E178();
                v18 = v29;
                v4 = v87;
                if ((v24 & 1) == 0)
                {
                  goto LABEL_24;
                }
              }
            }

            else
            {
              sub_26BE6A5B8(v23, v16);
              v18 = sub_26BEBB618(v15, v14);
              if ((v24 & 1) != (v25 & 1))
              {
                goto LABEL_95;
              }

              v4 = v87;
              if ((v24 & 1) == 0)
              {
LABEL_24:
                v27 = v102;
                v102[(v18 >> 6) + 8] |= 1 << v18;
                v30 = (v27[6] + 16 * v18);
                *v30 = v15;
                v30[1] = v14;
                v31 = v27[7] + 16 * v18;
                *v31 = v95;
                *(v31 + 8) = v94;
                v32 = v27[2];
                v22 = __OFADD__(v32, 1);
                v33 = v32 + 1;
                if (v22)
                {
                  goto LABEL_89;
                }

                v27[2] = v33;
                goto LABEL_26;
              }
            }

            v26 = v18;

            v27 = v102;
            v28 = v102[7] + 16 * v26;
            *v28 = v95;
            *(v28 + 8) = v94;
LABEL_26:
            v3 = v93;
            *(v93 + v88) = v27;
            swift_endAccess();
            v5 = v90;
            v6 = v92;
            goto LABEL_4;
          }
        }
      }
    }

LABEL_4:
    ++v8;
    result = sub_26BE2DAF8(&v99);
    v9 += 56;
    if (v7 == v8)
    {
      goto LABEL_27;
    }
  }

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
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

uint64_t sub_26BF4E118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v139 = a1[1];
  v134 = a1[2];
  v135 = a1[3];
  v131 = *(a1 + 32);
  v130 = a1[5];
  v129 = *(a1 + 48);
  v156 = *(*a1 + 16);
  if (v156)
  {
    v3 = 0;
    v4 = v2 + 32;
    v136 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        goto LABEL_139;
      }

      sub_26BE2DA9C(v4, &v149);
      if ((HIBYTE(v149) & 0x20) == 0)
      {
        goto LABEL_4;
      }

      if ((v149 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D6996F0](0);
      }

      else
      {
        if (!*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        v5 = *(v149 + 32);
      }

      v6 = v5;
      v7 = SecCertificateCopyURIs();
      if (!v7)
      {
        goto LABEL_151;
      }

      v8 = v7;

      *&v142 = v8;
      type metadata accessor for CFArray(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
      if (!swift_dynamicCast() || !v155[0])
      {
        goto LABEL_4;
      }

      if (*(v155[0] + 16))
      {
        break;
      }

LABEL_4:
      ++v3;
      sub_26BE2DAF8(&v149);
      v4 += 56;
      if (v156 == v3)
      {
        goto LABEL_26;
      }
    }

    v10 = *(v155[0] + 32);
    v9 = *(v155[0] + 40);

    sub_26BE2DA9C(&v149, &v142);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155[0] = v136;
    v12 = sub_26BEBB618(v10, v9);
    v14 = v136[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_147;
    }

    v18 = v13;
    if (v136[3] >= v17)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = v12;
        sub_26BE6FBC8();
        v12 = v21;
        if ((v18 & 1) == 0)
        {
LABEL_23:
          v22 = v155[0];
          *(v155[0] + 8 * (v12 >> 6) + 64) |= 1 << v12;
          v23 = (v22[6] + 16 * v12);
          *v23 = v10;
          v23[1] = v9;
          v24 = v22[7] + 56 * v12;
          v25 = v145;
          v27 = v143;
          v26 = v144;
          *v24 = v142;
          *(v24 + 16) = v27;
          *(v24 + 32) = v26;
          *(v24 + 48) = v25;
          v28 = v22[2];
          v16 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v16)
          {
            goto LABEL_149;
          }

          v136 = v22;
          v22[2] = v29;
          goto LABEL_4;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_26BE6D2E0(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_26BEBB618(v10, v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_155;
      }
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_20:
    v20 = v12;

    v136 = v155[0];
    sub_26BE41628(&v142, *(v155[0] + 56) + 56 * v20);
    goto LABEL_4;
  }

  v136 = MEMORY[0x277D84F98];
LABEL_26:
  v30 = v139;
  v141 = *(v139 + 16);
  if (v141)
  {
    v31 = 0;
    v32 = v139 + 32;
    v33 = MEMORY[0x277D84F98];
    v34 = &qword_28045E4A0;
    v133 = v2;
    while (1)
    {
      if (v31 >= *(v30 + 16))
      {
        goto LABEL_140;
      }

      sub_26BE2DA9C(v32, &v149);
      if ((HIBYTE(v149) & 0x20) == 0)
      {
        goto LABEL_29;
      }

      if ((v149 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x26D6996F0](0);
      }

      else
      {
        if (!*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_144;
        }

        v35 = *(v149 + 32);
      }

      v36 = v35;
      v37 = SecCertificateCopyURIs();
      if (!v37)
      {
        goto LABEL_152;
      }

      v38 = v37;

      *&v142 = v38;
      type metadata accessor for CFArray(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v34, &qword_26C00E210);
      if (!swift_dynamicCast() || !v155[0])
      {
        goto LABEL_29;
      }

      if (*(v155[0] + 16))
      {
        break;
      }

LABEL_29:
      ++v31;
      sub_26BE2DAF8(&v149);
      v32 += 56;
      if (v141 == v31)
      {
        goto LABEL_53;
      }
    }

    v39 = v34;
    v41 = *(v155[0] + 32);
    v40 = *(v155[0] + 40);

    sub_26BE2DA9C(&v149, &v142);
    v42 = v33;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v155[0] = v42;
    v45 = sub_26BEBB618(v41, v40);
    v46 = v42[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_148;
    }

    v49 = v44;
    if (v42[3] < v48)
    {
      sub_26BE6D2E0(v48, v43);
      v50 = sub_26BEBB618(v41, v40);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_155;
      }

      v45 = v50;
      if ((v49 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_47:

      v33 = v155[0];
      sub_26BE41628(&v142, *(v155[0] + 56) + 56 * v45);
LABEL_48:
      v30 = v139;
      v34 = v39;
      v2 = v133;
      goto LABEL_29;
    }

    if (v43)
    {
      if (v44)
      {
        goto LABEL_47;
      }
    }

    else
    {
      sub_26BE6FBC8();
      if (v49)
      {
        goto LABEL_47;
      }
    }

LABEL_43:
    v33 = v155[0];
    *(v155[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
    v52 = (v33[6] + 16 * v45);
    *v52 = v41;
    v52[1] = v40;
    v53 = v33[7] + 56 * v45;
    v54 = v145;
    v56 = v143;
    v55 = v144;
    *v53 = v142;
    *(v53 + 16) = v56;
    *(v53 + 32) = v55;
    *(v53 + 48) = v54;
    v57 = v33[2];
    v16 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v16)
    {
      goto LABEL_150;
    }

    v33[2] = v58;
    goto LABEL_48;
  }

  v33 = MEMORY[0x277D84F98];
LABEL_53:

  v60 = sub_26BEC1EFC(v59);

  v62 = sub_26BEBCD0C(v61, v60);
  v138 = v33;

  v140 = v62;
  if (v156)
  {
    v63 = 0;
    v137 = v62 + 56;
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v63 >= *(v2 + 16))
      {
        goto LABEL_141;
      }

      sub_26BE2DA9C(v2 + 32 + 56 * v63, &v142);
      if ((HIBYTE(v142) & 0x20) != 0)
      {
        if ((v142 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x26D6996F0](0);
        }

        else
        {
          if (!*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_145;
          }

          v65 = *(v142 + 32);
        }

        v66 = v65;
        v67 = SecCertificateCopyURIs();
        if (!v67)
        {
          goto LABEL_153;
        }

        v68 = v67;

        *&v149 = v68;
        type metadata accessor for CFArray(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
        if (swift_dynamicCast())
        {
          if (v154[0])
          {
            if (*(v154[0] + 16) && (v69 = *(v154[0] + 32), v70 = *(v154[0] + 40), , , *(v62 + 16)))
            {
              sub_26C00B05C();
              sub_26C00A58C();
              v71 = sub_26C00B0CC();
              v72 = -1 << *(v62 + 32);
              v73 = v71 & ~v72;
              if ((*(v137 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
              {
                v74 = ~v72;
                while (1)
                {
                  v75 = (*(v140 + 48) + 16 * v73);
                  v76 = *v75 == v69 && v75[1] == v70;
                  if (v76 || (sub_26C00AF2C() & 1) != 0)
                  {
                    break;
                  }

                  v73 = (v73 + 1) & v74;
                  if (((*(v137 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }

                sub_26BE2DAF8(&v142);
                v62 = v140;
                goto LABEL_80;
              }

LABEL_73:

              v62 = v140;
            }

            else
            {
            }
          }
        }
      }

      v149 = v142;
      v150 = v143;
      v151 = v144;
      v152 = v145;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v64;
      if ((v77 & 1) == 0)
      {
        sub_26BECBA54(0, *(v64 + 16) + 1, 1);
        v64 = v155[0];
      }

      v79 = *(v64 + 16);
      v78 = *(v64 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_26BECBA54((v78 > 1), v79 + 1, 1);
        v64 = v155[0];
      }

      *(v64 + 16) = v79 + 1;
      v80 = v64 + 56 * v79;
      v81 = v149;
      v82 = v150;
      v83 = v151;
      *(v80 + 80) = v152;
      *(v80 + 48) = v82;
      *(v80 + 64) = v83;
      *(v80 + 32) = v81;
LABEL_80:
      if (++v63 == v156)
      {
        goto LABEL_85;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
LABEL_85:

  if (v141)
  {
    v84 = 0;
    v156 = v140 + 56;
    v85 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v84 >= *(v139 + 16))
      {
        goto LABEL_142;
      }

      sub_26BE2DA9C(v139 + 32 + 56 * v84, &v142);
      if ((HIBYTE(v142) & 0x20) != 0)
      {
        if ((v142 & 0xC000000000000001) != 0)
        {
          v86 = MEMORY[0x26D6996F0](0);
        }

        else
        {
          if (!*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_146;
          }

          v86 = *(v142 + 32);
        }

        v87 = v86;
        v88 = SecCertificateCopyURIs();
        if (!v88)
        {
          goto LABEL_154;
        }

        v89 = v88;

        *&v149 = v89;
        type metadata accessor for CFArray(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
        if (swift_dynamicCast())
        {
          if (v154[0])
          {
            if (*(v154[0] + 16))
            {
              v90 = *(v154[0] + 32);
              v91 = *(v154[0] + 40);

              if (*(v140 + 16))
              {
                sub_26C00B05C();
                sub_26C00A58C();
                v92 = sub_26C00B0CC();
                v93 = -1 << *(v140 + 32);
                v94 = v92 & ~v93;
                if ((*(v156 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94))
                {
                  v95 = ~v93;
                  while (1)
                  {
                    v96 = (*(v140 + 48) + 16 * v94);
                    v97 = *v96 == v90 && v96[1] == v91;
                    if (v97 || (sub_26C00AF2C() & 1) != 0)
                    {
                      break;
                    }

                    v94 = (v94 + 1) & v95;
                    if (((*(v156 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
                    {
                      goto LABEL_105;
                    }
                  }

                  sub_26BE2DAF8(&v142);
                  goto LABEL_111;
                }
              }
            }

LABEL_105:
          }
        }
      }

      v149 = v142;
      v150 = v143;
      v151 = v144;
      v152 = v145;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v85;
      if ((v98 & 1) == 0)
      {
        sub_26BECBA54(0, *(v85 + 16) + 1, 1);
        v85 = v155[0];
      }

      v100 = *(v85 + 16);
      v99 = *(v85 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_26BECBA54((v99 > 1), v100 + 1, 1);
        v85 = v155[0];
      }

      *(v85 + 16) = v100 + 1;
      v101 = v85 + 56 * v100;
      v102 = v149;
      v103 = v150;
      v104 = v151;
      *(v101 + 80) = v152;
      *(v101 + 48) = v103;
      *(v101 + 64) = v104;
      *(v101 + 32) = v102;
LABEL_111:
      if (++v84 == v141)
      {
        goto LABEL_116;
      }
    }
  }

  v85 = MEMORY[0x277D84F90];
LABEL_116:

  v105 = 0;
  v106 = 1 << *(v140 + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v108 = v107 & *(v140 + 56);
  v109 = (v106 + 63) >> 6;
  while (v108)
  {
    v110 = v108;
LABEL_127:
    v108 = (v110 - 1) & v110;
    if (v138[2])
    {
      v112 = (*(v140 + 48) + ((v105 << 10) | (16 * __clz(__rbit64(v110)))));
      v114 = *v112;
      v113 = v112[1];

      v115 = sub_26BEBB618(v114, v113);
      if (v116)
      {
        sub_26BE2DA9C(v138[7] + 56 * v115, v155);
        if (!v136[2])
        {
          sub_26BE2DAF8(v155);
          goto LABEL_120;
        }

        v117 = sub_26BEBB618(v114, v113);
        v119 = v118;

        if (v119)
        {
          sub_26BE2DA9C(v136[7] + 56 * v117, v154);
          sub_26BE2DA9C(v155, &v149);
          sub_26BE2DA9C(v154, &v153);
          sub_26BF7ED2C(&v149, &v142);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_26BEECFC4(0, *(v135 + 2) + 1, 1, v135);
          }

          v121 = *(v135 + 2);
          v120 = *(v135 + 3);
          if (v121 >= v120 >> 1)
          {
            v135 = sub_26BEECFC4((v120 > 1), v121 + 1, 1, v135);
          }

          sub_26BF7ED88(&v149);
          sub_26BE2DAF8(v154);
          sub_26BE2DAF8(v155);
          *(v135 + 2) = v121 + 1;
          v122 = &v135[112 * v121];
          v124 = v143;
          v123 = v144;
          *(v122 + 2) = v142;
          *(v122 + 3) = v124;
          *(v122 + 4) = v123;
          v125 = v148;
          v127 = v145;
          v126 = v146;
          *(v122 + 7) = v147;
          *(v122 + 8) = v125;
          *(v122 + 5) = v127;
          *(v122 + 6) = v126;
        }

        else
        {
          sub_26BE2DAF8(v155);
        }
      }

      else
      {
LABEL_120:
      }
    }
  }

  while (1)
  {
    v111 = v105 + 1;
    if (__OFADD__(v105, 1))
    {
      break;
    }

    if (v111 >= v109)
    {

      *(a2 + 32) = v131;
      *(a2 + 40) = v130;
      *(a2 + 48) = v129;
      *a2 = v64;
      *(a2 + 8) = v85;
      *(a2 + 16) = v134;
      *(a2 + 24) = v135;
    }

    v110 = *(v140 + 56 + 8 * v111);
    ++v105;
    if (v110)
    {
      v105 = v111;
      goto LABEL_127;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
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
  __break(1u);
LABEL_155:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

uint64_t sub_26BF4EE40(uint64_t a1, uint64_t a2)
{
  v270 = a2;
  v262 = _s21RCSParticipantKeyRollVMa(0);
  v253 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v261 = &v230 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v264 = *(v259 - 8);
  v4 = MEMORY[0x28223BE20](v259);
  v256 = &v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v268 = &v230 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v252 = &v230 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v260 = &v230 - v11;
  MEMORY[0x28223BE20](v10);
  v263 = &v230 - v12;
  v257 = _s18RCSParticipantInfoVMa(0);
  v13 = MEMORY[0x28223BE20](v257);
  v255 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v254 = &v230 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v267 = &v230 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v230 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v230 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v230 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v230 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v230 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v230 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v230 - v37;
  v39 = sub_26C005704(MEMORY[0x277D84F90]);
  v40 = *(a1 + 40);
  v41 = *(a1 + 48);
  v42 = *(a1 + 56);
  v273 = a1;
  v43 = v271;
  v44 = sub_26BFEB264(sub_26BE2DB4C, v272, *(a1 + 32), v40, v41, v42);
  if (v43)
  {
    goto LABEL_2;
  }

  v248 = v33;
  v246 = v26;
  v251 = v24;
  v247 = v30;
  v245 = v21;
  v249 = v36;
  v250 = v38;
  v258 = 0;
  v271 = *(v44 + 2);
  if (v271)
  {
    v21 = 0;
    v45 = (v44 + 32);
    v46 = v267;
    v47 = v268;
    v48 = v39;
    v49 = v270;
    v50 = v44;
    v269 = v44;
    while (1)
    {
      if (v21 >= *(v50 + 16))
      {
        __break(1u);
LABEL_140:
        sub_26BF7F05C(v263, type metadata accessor for MLS.SubjectPublicKeyInfo);
LABEL_141:
        v33 = v235;

        sub_26BE2E258(v50, &qword_28045EE68, &unk_26C016A90);
        sub_26BE01654();
        swift_allocError();
        *v228 = 12;
        v228[112] = 9;
        swift_willThrow();
        sub_26BE0489C(v21, v33);
        sub_26BE2E258(v249, &qword_28045EE68, &unk_26C016A90);
        sub_26BE2E258(v250, &qword_28045EE68, &unk_26C016A90);
        sub_26BE2DBC4(&v276);

        return v33;
      }

      sub_26BE2DB68(v45, &v276);
      if ((v277 & 0x2000000000000000) != 0)
      {
        break;
      }

LABEL_7:
      ++v21;
      sub_26BE2DBC4(&v276);
      v45 += 56;
      if (v271 == v21)
      {
        goto LABEL_32;
      }
    }

    if ((v276 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x26D6996F0](0);
    }

    else
    {
      if (!*((v276 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:

        sub_26BE0489C(v21, v33);
LABEL_148:

        sub_26BE2DBC4(&v276);

        return v33;
      }

      v51 = *(v276 + 32);
    }

    v52 = v51;
    v53 = SecCertificateCopyURIs();
    if (!v53)
    {
      goto LABEL_157;
    }

    v54 = v53;

    v274 = v54;
    type metadata accessor for CFArray(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
    if (!swift_dynamicCast())
    {
      v49 = v270;
LABEL_6:
      v50 = v269;
      goto LABEL_7;
    }

    v50 = v269;
    v49 = v270;
    if (!v278)
    {
      goto LABEL_7;
    }

    if (!v278[2])
    {

      goto LABEL_7;
    }

    v33 = v278[4];
    v55 = v278[5];

    v56 = v276;
    v265 = v277;
    sub_26BE04890(v276, v277);
    v57 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v274 = v48;
    v60 = sub_26BEBB618(v33, v55);
    v61 = v48[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_150;
    }

    v64 = v59;
    if (v57[3] < v63)
    {
      sub_26BE6D024(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_26BEBB618(v33, v55);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_159;
      }

      v60 = v65;
      v47 = v268;
      v49 = v270;
      if ((v64 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_26:

      v48 = v274;
      v73 = (v274[7] + 16 * v60);
      v74 = *v73;
      v75 = v73[1];
      v76 = v265;
      *v73 = v56;
      v73[1] = v76;
      sub_26BE0489C(v74, v75);
LABEL_27:
      v46 = v267;
      goto LABEL_6;
    }

    v49 = v270;
    if (isUniquelyReferenced_nonNull_native)
    {
      v47 = v268;
      if (v59)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_26BE6FA44();
      v49 = v270;
      v47 = v268;
      if (v64)
      {
        goto LABEL_26;
      }
    }

LABEL_21:
    v48 = v274;
    v274[(v60 >> 6) + 8] |= 1 << v60;
    v67 = (v48[6] + 16 * v60);
    *v67 = v33;
    v67[1] = v55;
    v68 = (v48[7] + 16 * v60);
    v69 = v265;
    *v68 = v56;
    v68[1] = v69;
    v70 = v48[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_151;
    }

    v48[2] = v72;
    goto LABEL_27;
  }

  v46 = v267;
  v47 = v268;
  v48 = v39;
  v49 = v270;
LABEL_32:
  v269 = v48;

  v33 = sub_26C0047C0(MEMORY[0x277D84F90]);
  v77 = *(v266 + 152);
  v78 = *(v266 + 24);
  MEMORY[0x28223BE20](v33);
  *(&v230 - 2) = v49;
  v79 = v258;
  v84 = sub_26BFEB264(sub_26BF7F1F4, (&v230 - 4), v80, v81, v82, v83);
  if (v79)
  {

    return v33;
  }

  v87 = v84;
  v244 = v78;
  v88 = *(v84 + 2);
  if (!v88)
  {
LABEL_138:

LABEL_2:

    return v33;
  }

  v242 = v77;
  v258 = 0;
  v89 = 0;
  v234 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch;
  v90 = v84 + 32;
  v237 = (v264 + 56);
  v236 = (v264 + 48);
  *&v85 = 136315650;
  v232 = v85;
  v91 = v250;
  v270 = (v84 + 32);
  v271 = v84;
  v243 = v88;
  while (1)
  {
    if (v89 >= *(v87 + 2))
    {
      goto LABEL_143;
    }

    sub_26BE2DB68(&v90[56 * v89], &v276);
    if ((v277 & 0x2000000000000000) != 0)
    {
      break;
    }

LABEL_41:
    ++v89;
    sub_26BE2DBC4(&v276);
    if (v89 == v88)
    {
      goto LABEL_138;
    }
  }

  if ((v276 & 0xC000000000000001) != 0)
  {
    v96 = MEMORY[0x26D6996F0](0);
LABEL_47:
    v97 = v96;
    v98 = SecCertificateCopyURIs();
    if (!v98)
    {
      goto LABEL_158;
    }

    v99 = v98;

    v274 = v99;
    type metadata accessor for CFArray(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
    if (!swift_dynamicCast())
    {
LABEL_40:
      v90 = v270;
      v87 = v271;
      goto LABEL_41;
    }

    v100 = v251;
    v87 = v271;
    if (!v278)
    {
      v90 = v270;
      goto LABEL_41;
    }

    if (!v278[2])
    {

      v90 = v270;
      goto LABEL_41;
    }

    v101 = v46;
    v265 = v33;
    v102 = v278[4];
    v103 = v278[5];

    v104 = v269;
    if (!*(v269 + 2) || (v105 = sub_26BEBB618(v102, v103), (v106 & 1) == 0))
    {
      v21 = v47;
      v109 = v265;
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v274 = v109;
      v111 = v102;
      v112 = v102;
      v113 = v103;
      v114 = sub_26BEBB618(v112, v103);
      v116 = *(v109 + 16);
      v117 = (v115 & 1) == 0;
      v71 = __OFADD__(v116, v117);
      v118 = v116 + v117;
      if (v71)
      {
        goto LABEL_152;
      }

      v119 = v115;
      v46 = v101;
      if (*(v109 + 24) >= v118)
      {
        v87 = v271;
        if ((v110 & 1) == 0)
        {
          v226 = v114;
          sub_26BE6E178();
          v87 = v271;
          v114 = v226;
        }

        v91 = v250;
        if ((v119 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_26BE6A5B8(v118, v110);
        v114 = sub_26BEBB618(v111, v113);
        if ((v119 & 1) != (v120 & 1))
        {
          goto LABEL_159;
        }

        v91 = v250;
        v87 = v271;
        if ((v119 & 1) == 0)
        {
LABEL_60:
          v121 = v274;
          v274[(v114 >> 6) + 8] |= 1 << v114;
          v122 = (v121[6] + 16 * v114);
          *v122 = v111;
          v122[1] = v113;
          v123 = v121[7] + 16 * v114;
          *v123 = v242;
          *(v123 + 8) = v244;
          v124 = v121[2];
          v71 = __OFADD__(v124, 1);
          v125 = v124 + 1;
          if (v71)
          {
            goto LABEL_153;
          }

          v33 = v121;
          v121[2] = v125;
LABEL_67:
          v90 = v270;
          v47 = v21;
LABEL_68:
          v88 = v243;
          goto LABEL_41;
        }
      }

      v126 = v114;

      v33 = v274;
      v127 = v274[7] + 16 * v126;
      *v127 = v242;
      *(v127 + 8) = v244;
      goto LABEL_67;
    }

    v240 = v102;
    v238 = v103;
    v107 = (*(v104 + 7) + 16 * v105);
    v21 = *v107;
    v33 = v107[1];
    v241 = v276;
    v239 = v277;
    if ((v33 & 0x2000000000000000) != 0)
    {
      v108 = v101;
      if ((v21 & 0xC000000000000001) != 0)
      {

        v129 = MEMORY[0x26D6996F0](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_154;
        }

        v128 = *(v21 + 32);
        sub_26BE04890(v21, v33);
        v129 = v128;
      }

      v130 = v258;
      sub_26BECF754(v129);
      v258 = v130;
      v91 = v250;
      if (v130)
      {
        goto LABEL_144;
      }

      v131 = v100;
      v132 = v246;
      sub_26BF7F124(v131, v246, _s18RCSParticipantInfoVMa);
      sub_26BE2E1F0(v132 + *(v257 + 32), v91, &qword_28045EE68, &unk_26C016A90);
      sub_26BF7F05C(v132, _s18RCSParticipantInfoVMa);
    }

    else
    {
      (*v237)(v91, 1, 1, v259);
      sub_26BE00608(v21, v33);
      v108 = v101;
    }

    v50 = v248;
    v235 = v33;
    if ((v239 & 0x2000000000000000) != 0)
    {
      if ((v241 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x26D6996F0](0, v241);
      }

      else
      {
        if (!*((v241 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_155;
        }

        v134 = *(v241 + 32);
      }

      v135 = v258;
      sub_26BECF754(v134);
      v258 = v135;
      if (v135)
      {

        sub_26BE0489C(v21, v33);
        v229 = v91;
LABEL_147:
        sub_26BE2E258(v229, &qword_28045EE68, &unk_26C016A90);
        goto LABEL_148;
      }

      v136 = v245;
      sub_26BF7F124(v108, v245, _s18RCSParticipantInfoVMa);
      sub_26BE2E1F0(v136 + *(v257 + 32), v249, &qword_28045EE68, &unk_26C016A90);
      sub_26BF7F05C(v136, _s18RCSParticipantInfoVMa);
      v133 = v259;
    }

    else
    {
      v133 = v259;
      (*v237)(v249, 1, 1, v259);
    }

    sub_26BE2E1F0(v91, v50, &qword_28045EE68, &unk_26C016A90);
    v137 = *v236;
    if ((*v236)(v50, 1, v133) == 1)
    {
      goto LABEL_141;
    }

    sub_26BF7F124(v50, v263, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v50 = v247;
    sub_26BE2E1F0(v249, v247, &qword_28045EE68, &unk_26C016A90);
    if (v137(v50, 1, v133) == 1)
    {
      goto LABEL_140;
    }

    v138 = v260;
    sub_26BF7F124(v50, v260, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v233 = v21;
    if ((v239 & 0x2000000000000000) == 0)
    {
      v139 = _s8SwiftMLS0B0O20SubjectPublicKeyInfoV2eeoiySbAE_AEtFZ_0(v263, v138);
      v33 = v256;
      v47 = v268;
      if (v139)
      {
        v91 = v250;
LABEL_92:

        v147 = *(v266 + v234);
        v148 = v240;
        if (*(v147 + 16))
        {

          v149 = sub_26BEBB618(v148, v238);
          if (v150)
          {
            v151 = (*(v147 + 56) + 16 * v149);
            v21 = *v151;
            v152 = *(v151 + 1);
          }

          else
          {
            v21 = 0;
            v152 = 0;
          }
        }

        else
        {
          v21 = 0;
          v152 = 0;
        }

        if (qword_28045DF80 != -1)
        {
          swift_once();
        }

        v161 = sub_26C009A5C();
        __swift_project_value_buffer(v161, qword_280478EE8);
        v162 = v238;

        v163 = sub_26C009A3C();
        v164 = sub_26C00A9FC();

        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          LODWORD(v239) = v164;
          v166 = v165;
          v241 = swift_slowAlloc();
          v278 = v241;
          *v166 = v232;

          v231 = v163;
          v167 = sub_26BE3D034();
          v169 = v168;

          v170 = sub_26BE29740(v167, v169, &v278);

          *(v166 + 4) = v170;
          *(v166 + 12) = 2080;
          *(v166 + 14) = sub_26BE29740(v240, v162, &v278);
          *(v166 + 22) = 2080;
          LODWORD(v274) = v21;
          v275 = v152;
          v171 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
          v173 = sub_26BE29740(v171, v172, &v278);

          *(v166 + 24) = v173;
          v91 = v250;
          v174 = v231;
          _os_log_impl(&dword_26BDFE000, v231, v239, "%s: %s was not rolled, keeping at %s", v166, 0x20u);
          v175 = v241;
          swift_arrayDestroy();
          v176 = v175;
          v177 = v240;
          MEMORY[0x26D69A4E0](v176, -1, -1);
          MEMORY[0x26D69A4E0](v166, -1, -1);

          v178 = v267;
        }

        else
        {

          v178 = v267;
          v177 = v240;
        }

        v179 = v265;
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v274 = v179;
        sub_26BE57234(v21, v152, v177, v162, v180);
        sub_26BE0489C(v233, v235);

        sub_26BF7F05C(v260, type metadata accessor for MLS.SubjectPublicKeyInfo);
        sub_26BF7F05C(v263, type metadata accessor for MLS.SubjectPublicKeyInfo);
        sub_26BE2E258(v249, &qword_28045EE68, &unk_26C016A90);
        sub_26BE2E258(v91, &qword_28045EE68, &unk_26C016A90);
        v33 = v274;
        v90 = v270;
        v87 = v271;
        v46 = v178;
        goto LABEL_68;
      }

      v21 = &unk_26C016A90;
      v153 = MEMORY[0x277D84F90];
      goto LABEL_115;
    }

    v91 = v250;
    v33 = v256;
    v47 = v268;
    if ((v241 & 0xC000000000000001) != 0)
    {
      v227 = MEMORY[0x26D6996F0](0, v241);
    }

    else
    {
      if (!*((v241 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }

      v227 = *(v241 + 32);
    }

    v140 = v263;
    v141 = v255;
    v142 = v258;
    sub_26BECF754(v227);
    v258 = v142;
    v143 = v257;
    if (v142)
    {

      sub_26BE0489C(v21, v235);

      sub_26BF7F05C(v260, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BF7F05C(v140, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BE2E258(v249, &qword_28045EE68, &unk_26C016A90);
      v229 = v91;
      goto LABEL_147;
    }

    v144 = v141;
    v145 = v254;
    sub_26BF7F124(v144, v254, _s18RCSParticipantInfoVMa);
    v146 = *(v145 + *(v143 + 36));

    sub_26BF7F05C(v145, _s18RCSParticipantInfoVMa);
    if (_s8SwiftMLS0B0O20SubjectPublicKeyInfoV2eeoiySbAE_AEtFZ_0(v140, v260))
    {
      goto LABEL_92;
    }

    if (v146)
    {
      v154 = *(v146 + 16);
      if (v154)
      {
        v274 = MEMORY[0x277D84F90];
        sub_26BECBAF4(0, v154, 0);
        v153 = v274;
        v155 = (*(v253 + 80) + 32) & ~*(v253 + 80);
        v239 = v146;
        v156 = v146 + v155;
        v241 = *(v253 + 72);
        v157 = v252;
        do
        {
          v158 = v261;
          sub_26BF7F0BC(v156, v261, _s21RCSParticipantKeyRollVMa);
          sub_26BF7F0BC(v158 + *(v262 + 24), v157, type metadata accessor for MLS.SubjectPublicKeyInfo);
          sub_26BF7F05C(v158, _s21RCSParticipantKeyRollVMa);
          v274 = v153;
          v160 = *(v153 + 16);
          v159 = *(v153 + 24);
          if (v160 >= v159 >> 1)
          {
            sub_26BECBAF4((v159 > 1), v160 + 1, 1);
            v153 = v274;
          }

          *(v153 + 16) = v160 + 1;
          sub_26BF7F124(v157, v153 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v160, type metadata accessor for MLS.SubjectPublicKeyInfo);
          v156 += v241;
          --v154;
        }

        while (v154);

        v33 = v256;
        v47 = v268;
        goto LABEL_114;
      }
    }

    v153 = MEMORY[0x277D84F90];
LABEL_114:
    v21 = &unk_26C016A90;
LABEL_115:
    v181 = *(v153 + 16);
    v182 = sub_26BF7EFF4(&qword_28045FB18, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    v274 = MEMORY[0x26D699320](v181, v259, v182);
    v183 = *(v153 + 16);
    if (v183)
    {
      v184 = v153 + ((*(v264 + 80) + 32) & ~*(v264 + 80));
      v185 = *(v264 + 72);
      do
      {
        sub_26BF7F0BC(v184, v33, type metadata accessor for MLS.SubjectPublicKeyInfo);
        sub_26BF75C7C(v47, v33);
        sub_26BF7F05C(v47, type metadata accessor for MLS.SubjectPublicKeyInfo);
        v184 += v185;
        --v183;
      }

      while (v183);

      v21 = &unk_26C016A90;
    }

    else
    {
    }

    v186 = sub_26BF32C8C(v260, v274);

    v187 = v238;
    v188 = v240;
    if (v186)
    {
      v189 = *(v266 + v234);
      v190 = v242;
      v191 = v244;
      v192 = v244;
      if (*(v189 + 16))
      {

        v193 = sub_26BEBB618(v188, v187);
        v190 = v242;
        v192 = v191;
        if (v194)
        {
          v195 = (*(v189 + 56) + 16 * v193);
          v190 = *v195;
          v192 = *(v195 + 1);
        }
      }

      v241 = v192;
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v196 = sub_26C009A5C();
      __swift_project_value_buffer(v196, qword_280478EE8);

      v197 = sub_26C009A3C();
      v198 = sub_26C00A9FC();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        LODWORD(v231) = v190;
        v200 = v199;
        v239 = swift_slowAlloc();
        v278 = v239;
        *v200 = v232;

        v201 = sub_26BE3D034();
        v203 = v202;

        v204 = sub_26BE29740(v201, v203, &v278);

        *(v200 + 4) = v204;
        *(v200 + 12) = 2080;
        v205 = v240;
        *(v200 + 14) = sub_26BE29740(v240, v238, &v278);
        *(v200 + 22) = 2080;
        LODWORD(v274) = v190;
        v21 = v241;
        v275 = v241;
        v206 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
        v208 = sub_26BE29740(v206, v207, &v278);

        *(v200 + 24) = v208;
        _os_log_impl(&dword_26BDFE000, v197, v198, "%s: %s was gracefully rolled, keeping last rolled at %s", v200, 0x20u);
        v209 = v239;
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v209, -1, -1);
        MEMORY[0x26D69A4E0](v200, -1, -1);

        v91 = v250;
        v210 = v231;
        v88 = v243;
      }

      else
      {

        v91 = v250;
        v210 = v190;
        v88 = v243;
        v205 = v240;
        v21 = v241;
      }

      v224 = v265;
      v225 = swift_isUniquelyReferenced_nonNull_native();
      v274 = v224;
      sub_26BE57234(v210, v21, v205, v238, v225);
      sub_26BE0489C(v233, v235);

      sub_26BF7F05C(v260, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BF7F05C(v263, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BE2E258(v249, &qword_28045EE68, &unk_26C016A90);
      sub_26BE2E258(v91, &qword_28045EE68, &unk_26C016A90);
      v33 = v274;
      v90 = v270;
      v87 = v271;
      v46 = v267;
      goto LABEL_41;
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v211 = sub_26C009A5C();
    __swift_project_value_buffer(v211, qword_280478EE8);

    v212 = sub_26C009A3C();
    v213 = sub_26C00A9FC();

    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v278 = v241;
      *v214 = v232;

      LODWORD(v239) = v213;
      v215 = sub_26BE3D034();
      v217 = v216;

      v218 = sub_26BE29740(v215, v217, &v278);

      *(v214 + 4) = v218;
      v231 = v212;
      *(v214 + 12) = 2080;
      v93 = v240;
      *(v214 + 14) = sub_26BE29740(v240, v187, &v278);
      *(v214 + 22) = 2080;
      LODWORD(v274) = v242;
      v92 = v244;
      v275 = v244;
      v219 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v221 = sub_26BE29740(v219, v220, &v278);

      *(v214 + 24) = v221;
      v21 = &unk_26C016A90;
      v222 = v231;
      _os_log_impl(&dword_26BDFE000, v231, v239, "%s: %s was non-gracefully rolled, resetting last rolled to %s", v214, 0x20u);
      v223 = v241;
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v223, -1, -1);
      MEMORY[0x26D69A4E0](v214, -1, -1);

      v46 = v267;
      v88 = v243;
    }

    else
    {

      v46 = v267;
      v92 = v244;
      v88 = v243;
      v93 = v240;
    }

    v94 = v265;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v274 = v94;
    sub_26BE57234(v242, v92, v93, v187, v95);
    sub_26BE0489C(v233, v235);

    sub_26BF7F05C(v260, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BF7F05C(v263, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BE2E258(v249, &qword_28045EE68, &unk_26C016A90);
    v91 = v250;
    sub_26BE2E258(v250, &qword_28045EE68, &unk_26C016A90);
    v33 = v274;
    goto LABEL_40;
  }

  if (*((v276 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v96 = *(v276 + 32);
    goto LABEL_47;
  }

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
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

void sub_26BF50BC8(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v112 = *(a2 + 8);
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v11 = sub_26C009A5C();
  __swift_project_value_buffer(v11, qword_280478EE8);

  sub_26BE00608(a3, a4);
  sub_26BE00608(a5, a6);
  v12 = sub_26C009A3C();
  v13 = sub_26C00AA1C();

  sub_26BE00258(a3, a4);
  sub_26BE00258(a5, a6);
  v109 = v13;
  v111 = a5;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v130 = v107;
    *v14 = 136315650;

    v106 = v12;
    v15 = sub_26BE3D034();
    v17 = v16;

    v18 = sub_26BE29740(v15, v17, &v130);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = v135;
    sub_26BF87240(a3, a4);
    v135 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v20 = sub_26C00A3EC();
    v22 = v21;

    v23 = sub_26BE411D0(16, v20, v22);
    v25 = v24;
    v26 = a6;
    v28 = v27;
    v30 = v29;

    v31 = MEMORY[0x26D698FE0](v23, v25, v28, v30);
    v33 = v32;
    v34 = a7;

    v35 = sub_26BE29740(v31, v33, &v130);

    *(v14 + 14) = v35;
    *(v14 + 22) = 2080;
    v36 = v135;
    v37 = sub_26BF87240(v111, v26);
    v135 = v36;
    *&v122 = v37;
    v38 = sub_26C00A3EC();
    v40 = v39;

    v41 = sub_26BE411D0(16, v38, v40);
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = MEMORY[0x26D698FE0](v41, v43, v45, v47);
    v50 = v49;

    v51 = sub_26BE29740(v48, v50, &v130);

    *(v14 + 24) = v51;
    _os_log_impl(&dword_26BDFE000, v106, v109, "%s: processing inner encryption of single-recipient application with messageID %s for originalMessageID %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v107, -1, -1);
    MEMORY[0x26D69A4E0](v14, -1, -1);
  }

  else
  {

    v34 = a7;
  }

  v52 = 0;
  v53 = *(&v112 + 1) >> 62;
  if ((*(&v112 + 1) >> 62) > 1)
  {
    if (v53 != 2)
    {
      goto LABEL_12;
    }

    v52 = *(v112 + 16);
  }

  else
  {
    if (!v53)
    {
      goto LABEL_12;
    }

    v52 = v112;
  }

  sub_26BE00608(v112, *(&v112 + 1));
LABEL_12:
  v130 = v112;
  v131 = v52;
  v54 = sub_26BEE6028();
  if ((v54 & 0x100000000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v59 = 1;
    swift_willThrow();
    goto LABEL_16;
  }

  v55 = v54;
  v56 = v135;
  v57 = sub_26BF2F7B0();
  if (v56)
  {
LABEL_16:
    *&v122 = &_s37HPKEInnerEncapsulatedKeyAndCiphertextVN;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB10, &qword_26C01FC98);
    v60 = sub_26C00A4FC();
    sub_26BE826C4(v60, v61, v112, *(&v112 + 1));

    swift_willThrow();
    v63 = *(&v130 + 1);
    v62 = v130;
    goto LABEL_17;
  }

  v110 = v57;
  v135 = v58;
  v113 = sub_26BF2F7B0();
  v114 = v64;
  sub_26BE00258(v130, *(&v130 + 1));
  if (*(a1 + *(type metadata accessor for MLS.GroupState(0) + 52)) == v55)
  {
    sub_26BE5305C(&v130);
    if (v132)
    {
      sub_26BE03890(&v130, v134);
      LODWORD(v122) = 0;
      BYTE4(v122) = 1;
      v73 = *(a1 + 40);
      v74 = *(a1 + 48);
      v75 = *(a1 + 56);
      LOWORD(v130) = *(a1 + 32);
      *(&v130 + 1) = v73;
      LODWORD(v131) = v74;
      v132 = v75;
      MEMORY[0x28223BE20](v73);

      MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BF7ED0C);

      v91 = sub_26C009A3C();
      v92 = sub_26C00AA0C();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&v130 = v94;
        *v93 = 136315138;

        v95 = sub_26BE3D034();
        v97 = v96;

        v98 = sub_26BE29740(v95, v97, &v130);

        *(v93 + 4) = v98;
        _os_log_impl(&dword_26BDFE000, v91, v92, "%s: Missing own sender leaf node in tree when processing single-recipient application message", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x26D69A4E0](v94, -1, -1);
        MEMORY[0x26D69A4E0](v93, -1, -1);
      }

      LOBYTE(v130) = 15;
      v133 = 0;
      v99 = sub_26C00A45C();
      sub_26BE2DC18(&v130, &v122);
      v100 = swift_allocObject();
      v101 = v127;
      *(v100 + 88) = v126;
      *(v100 + 104) = v101;
      *(v100 + 120) = v128;
      v102 = v123;
      *(v100 + 24) = v122;
      *(v100 + 40) = v102;
      v103 = v125;
      *(v100 + 56) = v124;
      *(v100 + 16) = 3;
      *(v100 + 136) = v129;
      *(v100 + 72) = v103;
      v120 = sub_26BE2E3DC;
      v121 = v100;
      v116 = MEMORY[0x277D85DD0];
      v117 = 1107296256;
      v118 = sub_26BEB8234;
      v119 = &block_descriptor_167;
      v104 = _Block_copy(&v116);

      AnalyticsSendEventLazy();
      _Block_release(v104);

      sub_26BE2DC9C(&v130);
      sub_26BE01654();
      swift_allocError();
      *v105 = 15;
      v105[112] = 0;
      swift_willThrow();
      sub_26BE00258(v110, v135);
      sub_26BE00258(v113, v114);
      __swift_destroy_boxed_opaque_existential_1(v134);
      return;
    }

    sub_26BE2E258(&v130, &qword_28045E6A8, &qword_26C0112B0);

    v76 = sub_26C009A3C();
    v77 = sub_26C00AA0C();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v130 = v79;
      *v78 = 136315138;

      v80 = sub_26BE3D034();
      v82 = v81;

      v83 = sub_26BE29740(v80, v82, &v130);

      *(v78 + 4) = v83;
      _os_log_impl(&dword_26BDFE000, v76, v77, "%s: Missing own leaf node in tree when processing single-recipient application message", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x26D69A4E0](v79, -1, -1);
      MEMORY[0x26D69A4E0](v78, -1, -1);
    }

    LOBYTE(v130) = 34;
    v133 = 0;
    v84 = sub_26C00A45C();
    sub_26BE2DC18(&v130, &v122);
    v85 = swift_allocObject();
    v86 = v127;
    *(v85 + 88) = v126;
    *(v85 + 104) = v86;
    *(v85 + 120) = v128;
    v87 = v123;
    *(v85 + 24) = v122;
    *(v85 + 40) = v87;
    v88 = v125;
    *(v85 + 56) = v124;
    *(v85 + 16) = 3;
    *(v85 + 136) = v129;
    *(v85 + 72) = v88;
    v120 = sub_26BE2DC78;
    v121 = v85;
    v116 = MEMORY[0x277D85DD0];
    v117 = 1107296256;
    v118 = sub_26BEB8234;
    v119 = &block_descriptor_4;
    v89 = _Block_copy(&v116);

    AnalyticsSendEventLazy();
    _Block_release(v89);

    sub_26BE2DC9C(&v130);
    sub_26BE01654();
    swift_allocError();
    *v90 = 34;
    v90[112] = 0;
    swift_willThrow();
    sub_26BE00258(v110, v135);
    v62 = v113;
    v63 = v114;
LABEL_17:
    sub_26BE00258(v62, v63);
    return;
  }

  v65 = sub_26C009A3C();
  v66 = sub_26C00AA1C();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v130 = v68;
    *v67 = 136315138;

    v69 = sub_26BE3D034();
    v71 = v70;

    v72 = sub_26BE29740(v69, v71, &v130);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_26BDFE000, v65, v66, "%s: the single-recipient message was for us, so we can safely ignore it", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x26D69A4E0](v68, -1, -1);
    MEMORY[0x26D69A4E0](v67, -1, -1);

    sub_26BE00258(v110, v135);
    sub_26BE00258(v113, v114);
  }

  else
  {
    sub_26BE00258(v110, v135);
    sub_26BE00258(v113, v114);
  }

  *v34 = 1;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 72) = 0u;
  *(v34 + 88) = 0u;
  *(v34 + 97) = 0u;
  *(v34 + 113) = 4;
}

uint64_t sub_26BF51B80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE28F58;

  return sub_26BE9EA04(a1, v1);
}

uint64_t sub_26BF51C34@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = *a3;
  v9 = *(a3 + 4);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0;
  v57 = 0u;
  memset(v56, 0, sizeof(v56));
  if ((v7 & 1) == 0)
  {
    LODWORD(v45[0]) = v6;
    v10 = a1;
    sub_26BF35930(a1, v45, &v48);
    v52 = v48;
    v53 = v49;
    v54 = v50;
    v55 = AssociatedConformanceWitness;
    sub_26BE2E258(&v59, &qword_28045EAA8, &unk_26C014260);
    v59 = v52;
    v60 = v53;
    v61 = v54;
    v62 = v55;
    a1 = v10;
  }

  if ((v9 & 1) == 0)
  {
    LODWORD(v45[0]) = v8;
    sub_26BF35930(a1, v45, &v48);
    v52 = v48;
    v53 = v49;
    v54 = v50;
    v55 = AssociatedConformanceWitness;
    sub_26BE2E258(v56, &qword_28045EAA8, &unk_26C014260);
    sub_26BE2DB68(&v52, v56);
    v11 = *(v4 + 56);
    v12 = *(v4 + 64);
    swift_beginAccess();
    sub_26BE038A8(v4 + 112, v45);
    v13 = v46;
    v14 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v15 = *(v14 + 40);
    *(&v50 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v49);
    sub_26BE04890(v11, v12);
    v15(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v45);
    *&v48 = v11;
    *(&v48 + 1) = v12;
    v16 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(&v52, &v48);
    sub_26BE2DBC4(&v48);
    if (v16)
    {
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v17 = sub_26C009A5C();
      __swift_project_value_buffer(v17, qword_280478EE8);

      v18 = sub_26C009A3C();
      v19 = sub_26C00AA1C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v48 = v21;
        *v20 = 136315138;

        v22 = sub_26BE3D034();
        v24 = v23;

        v25 = sub_26BE29740(v22, v24, &v48);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_26BDFE000, v18, v19, "%s: left group", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x26D69A4E0](v21, -1, -1);
        MEMORY[0x26D69A4E0](v20, -1, -1);
      }

      sub_26BE2DBC4(&v52);
      sub_26BE2E1F0(&v59, a4, &qword_28045EAA8, &unk_26C014260);
      v26 = 22;
      goto LABEL_22;
    }

    sub_26BE2DBC4(&v52);
  }

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v27 = sub_26C009A5C();
  __swift_project_value_buffer(v27, qword_280478EE8);

  v28 = sub_26C009A3C();
  v29 = sub_26C00AA1C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = 7104878;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v48 = v32;
    *v31 = 136315650;

    v33 = sub_26BE3D034();
    v35 = v34;

    v36 = sub_26BE29740(v33, v35, &v48);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    swift_beginAccess();
    if (*(&v61 + 1))
    {
      sub_26BE2DA9C(&v59, &v52);
      v37 = MLS.Identity.SigningIdentity.description.getter();
      v39 = v38;
      sub_26BE2DBC4(&v52);
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = 7104878;
    }

    v40 = sub_26BE29740(v37, v39, &v48);

    *(v31 + 14) = v40;
    *(v31 + 22) = 2080;
    swift_beginAccess();
    if (*(&v57 + 1))
    {
      sub_26BE2DA9C(v56, &v52);
      v30 = MLS.Identity.SigningIdentity.description.getter();
      v42 = v41;
      sub_26BE2DBC4(&v52);
    }

    else
    {
      v42 = 0xE300000000000000;
    }

    v43 = sub_26BE29740(v30, v42, &v48);

    *(v31 + 24) = v43;
    _os_log_impl(&dword_26BDFE000, v28, v29, "%s: removed from group, committer: %s, proposer: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v32, -1, -1);
    MEMORY[0x26D69A4E0](v31, -1, -1);
  }

  swift_beginAccess();
  sub_26BE2E1F0(&v59, a4, &qword_28045EAA8, &unk_26C014260);
  swift_beginAccess();
  sub_26BE2E1F0(v56, a4 + 56, &qword_28045EAA8, &unk_26C014260);
  v26 = 21;
LABEL_22:
  *(a4 + 112) = v26;
  sub_26BE2E258(v56, &qword_28045EAA8, &unk_26C014260);
  return sub_26BE2E258(&v59, &qword_28045EAA8, &unk_26C014260);
}

uint64_t sub_26BF522F8(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_26BF52320, 0, 0);
}

uint64_t sub_26BF52320()
{
  v1 = v0[4];
  v2 = v0[5];

  sub_26BE00608(v1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_26BE3C268;
  v4 = v0[2];

  return (sub_26BE9DF04)(v4);
}

uint64_t sub_26BF523F4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 536) = v2;
  *(v3 + 528) = a1;
  *(v3 + 544) = *(type metadata accessor for MLS.MLSMessage(0) - 8);
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 560) = *a2;

  return MEMORY[0x2822009F8](sub_26BF524C0, 0, 0);
}

uint64_t sub_26BF524C0()
{
  v1 = *(v0 + 528);
  v2 = *(v1 + 16);
  *(v0 + 576) = v2;
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 544);
    v5 = *(v4 + 80);
    *(v0 + 132) = v5;
    *(v0 + 584) = *(v4 + 72);
    *(v0 + 600) = v3;
    *(v0 + 592) = 0;
    v6 = *(v0 + 552);
    sub_26BF7F0BC(v1 + ((v5 + 32) & ~v5), v6, type metadata accessor for MLS.MLSMessage);
    *(v0 + 496) = xmmword_26C00BBD0;
    *(v0 + 512) = 0;
    sub_26BEE3688(v6);
    v7 = *(v0 + 496);
    v8 = *(v0 + 504);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_13;
      }

      v12 = *(v7 + 24);
    }

    else
    {
      if (!v9)
      {
        v10 = *(v0 + 496);
        v11 = *(v0 + 504);
LABEL_14:
        v15 = *(v0 + 568);
        v16 = *(v0 + 560);
        v17 = sub_26C00909C();
        v19 = v18;
        *(v0 + 608) = v17;
        *(v0 + 616) = v18;
        sub_26BE00258(v10, v11);

        sub_26BE00608(v17, v19);
        sub_26BE2BAE8(v16, v15);
        v20 = swift_task_alloc();
        *(v0 + 624) = v20;
        *v20 = v0;
        v20[1] = sub_26BF52B1C;
        v21 = *(v0 + 568);
        v22 = *(v0 + 560);
        v23 = *(v0 + 536);

        return sub_26BE9DF04(v0 + 16, v23, v23, v17, v19, v22, v21);
      }

      v12 = v7 >> 32;
    }

    v11 = *(v0 + 504);
    v10 = *(v0 + 496);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v11 = v8;
    v10 = v7;
    goto LABEL_14;
  }

  v13 = *(v0 + 8);

  return v13(v3);
}

uint64_t sub_26BF52B1C()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = sub_26BF53348;
  }

  else
  {
    sub_26BE00258(*(v2 + 608), *(v2 + 616));
    v3 = sub_26BF52C3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF52C3C()
{
  v58 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 600);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26BEED9D4(0, *(v2 + 2) + 1, 1, *(v0 + 600));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_26BEED9D4((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 576);
  v6 = *(v0 + 592) + 1;
  sub_26BF7F05C(*(v0 + 552), type metadata accessor for MLS.MLSMessage);
  *(v2 + 2) = v4 + 1;
  v7 = &v2[120 * v4];
  v8 = *(v0 + 64);
  v10 = *(v0 + 16);
  v9 = *(v0 + 32);
  *(v7 + 4) = *(v0 + 48);
  *(v7 + 5) = v8;
  *(v7 + 2) = v10;
  *(v7 + 3) = v9;
  v12 = *(v0 + 96);
  v11 = *(v0 + 112);
  v13 = *(v0 + 80);
  *(v7 + 72) = *(v0 + 128);
  *(v7 + 7) = v12;
  *(v7 + 8) = v11;
  *(v7 + 6) = v13;
  if (v6 == v5)
  {
    goto LABEL_6;
  }

  v16 = *(v0 + 632);
  v17 = *(v0 + 592) + 1;
  *(v0 + 600) = v2;
  *(v0 + 592) = v17;
  v18 = *(v0 + 552);
  sub_26BF7F0BC(*(v0 + 528) + ((*(v0 + 132) + 32) & ~*(v0 + 132)) + *(v0 + 584) * v17, v18, type metadata accessor for MLS.MLSMessage);
  *(v0 + 496) = xmmword_26C00BBD0;
  *(v0 + 512) = 0;
  sub_26BEE3688(v18);
  v19 = *(v0 + 496);
  v20 = *(v0 + 504);
  if (!v16)
  {
    v37 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_33;
      }

      v40 = *(v19 + 24);
    }

    else
    {
      if (!v37)
      {
        v38 = *(v0 + 496);
        v39 = *(v0 + 504);
LABEL_34:
        v48 = *(v0 + 568);
        v49 = *(v0 + 560);
        v50 = sub_26C00909C();
        v52 = v51;
        *(v0 + 608) = v50;
        *(v0 + 616) = v51;
        sub_26BE00258(v38, v39);

        sub_26BE00608(v50, v52);
        sub_26BE2BAE8(v49, v48);
        v53 = swift_task_alloc();
        *(v0 + 624) = v53;
        *v53 = v0;
        v53[1] = sub_26BF52B1C;
        v54 = *(v0 + 568);
        v55 = *(v0 + 560);
        v56 = *(v0 + 536);

        return sub_26BE9DF04(v0 + 16, v56, v56, v50, v52, v55, v54);
      }

      v40 = v19 >> 32;
    }

    v39 = *(v0 + 504);
    v38 = *(v0 + 496);
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    v39 = v20;
    v38 = v19;
    goto LABEL_34;
  }

  sub_26BE00258(v19, v20);
  *(v0 + 520) = v16;
  v21 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if (swift_dynamicCast())
  {

    v22 = *(v0 + 216);
    *(v0 + 320) = *(v0 + 200);
    *(v0 + 336) = v22;
    *(v0 + 352) = *(v0 + 232);
    *(v0 + 368) = *(v0 + 248);
    v23 = *(v0 + 152);
    *(v0 + 256) = *(v0 + 136);
    *(v0 + 272) = v23;
    v24 = *(v0 + 184);
    *(v0 + 288) = *(v0 + 168);
    *(v0 + 304) = v24;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v25 = sub_26C009A5C();
    __swift_project_value_buffer(v25, qword_280478EE8);
    sub_26BE2DC18(v0 + 256, v0 + 376);

    v26 = sub_26C009A3C();
    v27 = sub_26C00AA0C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57 = v30;
      *v28 = 136315394;

      v31 = sub_26BE3D034();
      v33 = v32;

      v34 = sub_26BE29740(v31, v33, &v57);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2112;
      sub_26BE01654();
      swift_allocError();
      sub_26BE2DC18(v0 + 376, v35);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      sub_26BE2DC9C(v0 + 376);
      *(v28 + 14) = v36;
      *v29 = v36;
      _os_log_impl(&dword_26BDFE000, v26, v27, "%s: Error while processing message: %@", v28, 0x16u);
      sub_26BE2E258(v29, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26D69A4E0](v30, -1, -1);
      MEMORY[0x26D69A4E0](v28, -1, -1);
    }

    else
    {

      sub_26BE2DC9C(v0 + 376);
    }

    if (*(*(v0 + 600) + 16))
    {
      v41 = sub_26C009A3C();
      v42 = sub_26C00AA0C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26BDFE000, v41, v42, "Returning partial results", v43, 2u);
        MEMORY[0x26D69A4E0](v43, -1, -1);
      }

      v44 = *(v0 + 552);

      sub_26BE2DC9C(v0 + 256);
      sub_26BF7F05C(v44, type metadata accessor for MLS.MLSMessage);

      v2 = *(v0 + 600);
LABEL_6:

      v14 = *(v0 + 8);

      return v14(v2);
    }

    v45 = *(v0 + 552);

    sub_26BE01654();
    swift_allocError();
    sub_26BE2DC18(v0 + 256, v46);
    swift_willThrow();
    sub_26BE2DC9C(v0 + 256);
    sub_26BF7F05C(v45, type metadata accessor for MLS.MLSMessage);
  }

  else
  {
    sub_26BF7F05C(*(v0 + 552), type metadata accessor for MLS.MLSMessage);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_26BF53348()
{
  v29 = v0;
  sub_26BE00258(*(v0 + 608), *(v0 + 616));
  v1 = *(v0 + 632);
  *(v0 + 520) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 216);
    *(v0 + 320) = *(v0 + 200);
    *(v0 + 336) = v3;
    *(v0 + 352) = *(v0 + 232);
    *(v0 + 368) = *(v0 + 248);
    v4 = *(v0 + 152);
    *(v0 + 256) = *(v0 + 136);
    *(v0 + 272) = v4;
    v5 = *(v0 + 184);
    *(v0 + 288) = *(v0 + 168);
    *(v0 + 304) = v5;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v6 = sub_26C009A5C();
    __swift_project_value_buffer(v6, qword_280478EE8);
    sub_26BE2DC18(v0 + 256, v0 + 376);

    v7 = sub_26C009A3C();
    v8 = sub_26C00AA0C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v9 = 136315394;

      v12 = sub_26BE3D034();
      v14 = v13;

      v15 = sub_26BE29740(v12, v14, &v28);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      sub_26BE01654();
      swift_allocError();
      sub_26BE2DC18(v0 + 376, v16);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      sub_26BE2DC9C(v0 + 376);
      *(v9 + 14) = v17;
      *v10 = v17;
      _os_log_impl(&dword_26BDFE000, v7, v8, "%s: Error while processing message: %@", v9, 0x16u);
      sub_26BE2E258(v10, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69A4E0](v11, -1, -1);
      MEMORY[0x26D69A4E0](v9, -1, -1);
    }

    else
    {

      sub_26BE2DC9C(v0 + 376);
    }

    if (*(*(v0 + 600) + 16))
    {
      v18 = sub_26C009A3C();
      v19 = sub_26C00AA0C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_26BDFE000, v18, v19, "Returning partial results", v20, 2u);
        MEMORY[0x26D69A4E0](v20, -1, -1);
      }

      v21 = *(v0 + 552);

      sub_26BE2DC9C(v0 + 256);
      sub_26BF7F05C(v21, type metadata accessor for MLS.MLSMessage);

      v22 = *(v0 + 600);

      v23 = *(v0 + 8);

      return v23(v22);
    }

    v25 = *(v0 + 552);

    sub_26BE01654();
    swift_allocError();
    sub_26BE2DC18(v0 + 256, v26);
    swift_willThrow();
    sub_26BE2DC9C(v0 + 256);
    sub_26BF7F05C(v25, type metadata accessor for MLS.MLSMessage);
  }

  else
  {
    sub_26BF7F05C(*(v0 + 552), type metadata accessor for MLS.MLSMessage);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_26BF537C8(uint64_t a1, _OWORD *a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = *a2;
  return MEMORY[0x2822009F8](sub_26BF537F0, 0, 0);
}

uint64_t sub_26BF537F0()
{
  MLS.Group.Message.asSingleCommit()(v0 + 2);
  v2 = v0[2];
  v1 = v0[3];
  v0[8] = v2;
  v0[9] = v1;

  sub_26BE00608(v2, v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_26BF53924;
  v4 = v0[4];
  v5 = v0[5];

  return sub_26BE9DF04(v4, v5, v5, v2, v1, 0, 0xF000000000000000);
}

uint64_t sub_26BF53924()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BF53A60, 0, 0);
  }

  else
  {
    sub_26BE00258(v2[8], v2[9]);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_26BF53A60()
{
  sub_26BE00258(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26BF53AC4(_OWORD *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_26BF53AEC, 0, 0);
}

uint64_t sub_26BF53AEC()
{
  v26 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25[0] = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, v25);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: processing incoming commit list", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  sub_26BE00608(v10, v11);
  v12 = sub_26BEEDF2C(v10, v11);
  *(v0 + 56) = v12;
  v13 = v12;
  swift_bridgeObjectRetain_n();

  v14 = sub_26C009A3C();
  v15 = sub_26C00AA1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136315394;

    v18 = sub_26BE3D034();
    v20 = v19;

    v21 = sub_26BE29740(v18, v20, v25);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2048;
    v22 = *(v13 + 16);

    *(v16 + 14) = v22;

    _os_log_impl(&dword_26BDFE000, v14, v15, "%s: commit list: %ld commits", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x26D69A4E0](v17, -1, -1);
    MEMORY[0x26D69A4E0](v16, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v0 + 16) = xmmword_26C00DA60;
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_26BF53E94;

  return sub_26BF523F4(v13, (v0 + 16));
}

uint64_t sub_26BF53E94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BF53FF4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_26BF5400C(_OWORD *a1, _OWORD *a2)
{
  *(v3 + 32) = v2;
  *(v3 + 40) = *a1;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_26BF5403C, 0, 0);
}

uint64_t sub_26BF5403C()
{
  v26 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25[0] = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, v25);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: processing incoming commit list", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  sub_26BE00608(v10, v11);
  v12 = sub_26BEEDF2C(v10, v11);
  *(v0 + 72) = v12;
  v13 = v12;
  swift_bridgeObjectRetain_n();

  v14 = sub_26C009A3C();
  v15 = sub_26C00AA1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136315394;

    v18 = sub_26BE3D034();
    v20 = v19;

    v21 = sub_26BE29740(v18, v20, v25);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2048;
    v22 = *(v13 + 16);

    *(v16 + 14) = v22;

    _os_log_impl(&dword_26BDFE000, v14, v15, "%s: commit list: %ld commits", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x26D69A4E0](v17, -1, -1);
    MEMORY[0x26D69A4E0](v16, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v0 + 16) = *(v0 + 56);
  v23 = swift_task_alloc();
  *(v0 + 80) = v23;
  *v23 = v0;
  v23[1] = sub_26BF543E0;

  return sub_26BF523F4(v13, (v0 + 16));
}

uint64_t sub_26BF543E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BF54540, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_26BF54558(_OWORD *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_26BF54580, 0, 0);
}

uint64_t sub_26BF54580()
{
  v26 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25[0] = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, v25);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: processing incoming proposal list, taking only the first proposal", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  sub_26BE00608(v10, v11);
  v12 = sub_26BEEDF5C(v10, v11);
  *(v0 + 56) = v12;
  v13 = v12;
  swift_bridgeObjectRetain_n();

  v14 = sub_26C009A3C();
  v15 = sub_26C00AA1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136315394;

    v18 = sub_26BE3D034();
    v20 = v19;

    v21 = sub_26BE29740(v18, v20, v25);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2048;
    v22 = *(v13 + 16);

    *(v16 + 14) = v22;

    _os_log_impl(&dword_26BDFE000, v14, v15, "%s: proposal list: %ld proposals", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x26D69A4E0](v17, -1, -1);
    MEMORY[0x26D69A4E0](v16, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v0 + 16) = xmmword_26C00DA60;
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_26BF54928;

  return sub_26BF523F4(v13, (v0 + 16));
}

uint64_t sub_26BF54928(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BF7F1C4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_26BF54A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[164] = v5;
  v6[163] = a5;
  v6[162] = a4;
  v6[161] = a3;
  v6[160] = a2;
  v6[159] = a1;
  v6[165] = *v5;
  v7 = type metadata accessor for MLS.MLSMessage(0);
  v6[166] = v7;
  v6[167] = *(v7 - 8);
  v6[168] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v6[169] = swift_task_alloc();
  v8 = sub_26C009C8C();
  v6[170] = v8;
  v6[171] = *(v8 - 8);
  v6[172] = swift_task_alloc();
  v6[173] = type metadata accessor for MLS.GroupState.CommitOutput(0);
  v6[174] = swift_task_alloc();
  v6[175] = swift_task_alloc();
  v6[176] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v6[177] = swift_task_alloc();
  v9 = type metadata accessor for MLS.GroupState(0);
  v6[178] = v9;
  v6[179] = *(v9 - 8);
  v6[180] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF54CE0, 0, 0);
}

uint64_t sub_26BF54CE0()
{
  v129 = v0;
  sub_26BF7F0BC(*(v0 + 1280), *(v0 + 1440), type metadata accessor for MLS.GroupState);
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  *(v0 + 1448) = v1;
  *(v0 + 1456) = __swift_project_value_buffer(v1, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1288);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v126 = v6;
    *v5 = 136315394;

    v7 = sub_26BE3D034();
    v9 = v8;

    v10 = sub_26BE29740(v7, v9, &v126);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2048;
    v11 = *(v4 + 16);

    *(v5 + 14) = v11;

    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: performing commit with %ld new proposals", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D69A4E0](v6, -1, -1);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v12 = sub_26C009A3C();
  v13 = sub_26C00A9FC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 1288);
    v15 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v125[0] = v121;
    *v15 = 136315394;

    v16 = sub_26BE3D034();
    v18 = v17;

    v19 = sub_26BE29740(v16, v18, v125);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = *(v14 + 16);
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v22 = *(v0 + 1288);
      v126 = MEMORY[0x277D84F90];
      sub_26BECBB14(0, v20, 0);
      v21 = v126;
      v23 = (v22 + 32);
      do
      {
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[3];
        *(v0 + 48) = v23[2];
        *(v0 + 64) = v26;
        *(v0 + 16) = v24;
        *(v0 + 32) = v25;
        v27 = v23[4];
        v28 = v23[5];
        v29 = v23[7];
        *(v0 + 112) = v23[6];
        *(v0 + 128) = v29;
        *(v0 + 80) = v27;
        *(v0 + 96) = v28;
        v30 = v23[8];
        v31 = v23[9];
        v32 = v23[10];
        *(v0 + 192) = *(v23 + 22);
        *(v0 + 160) = v31;
        *(v0 + 176) = v32;
        *(v0 + 144) = v30;
        v33 = sub_26BE5CD48(v0 + 16);
        if (v33 <= 4)
        {
          if (v33 <= 1)
          {
            if (v33)
            {
              v34 = 2;
            }

            else
            {
              v34 = 1;
            }
          }

          else if (v33 == 2)
          {
            v34 = 3;
          }

          else if (v33 == 3)
          {
            v34 = 4;
          }

          else
          {
            v34 = 5;
          }
        }

        else if (v33 > 7)
        {
          if (v33 == 8)
          {
            v34 = -4092;
          }

          else
          {
            if (v33 != 9)
            {
              v34 = -1;
              goto LABEL_30;
            }

            v34 = -4093;
          }
        }

        else if (v33 == 5)
        {
          v34 = 6;
        }

        else if (v33 == 6)
        {
          v34 = 7;
        }

        else
        {
          v34 = -4094;
        }

        sub_26BE5CDC8(v0 + 16);
LABEL_30:
        v126 = v21;
        v36 = *(v21 + 16);
        v35 = *(v21 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_26BECBB14((v35 > 1), v36 + 1, 1);
          v21 = v126;
        }

        *(v21 + 16) = v36 + 1;
        *(v21 + 2 * v36 + 32) = v34;
        v23 = (v23 + 184);
        --v20;
      }

      while (v20);
    }

    v37 = MEMORY[0x26D6991B0](v21, MEMORY[0x277D84C58]);
    v39 = v38;

    v40 = sub_26BE29740(v37, v39, v125);

    *(v15 + 14) = v40;
    _os_log_impl(&dword_26BDFE000, v12, v13, "%s: new proposal types in commit: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v121, -1, -1);
    MEMORY[0x26D69A4E0](v15, -1, -1);
  }

  sub_26BF7F0BC(*(v0 + 1304), *(v0 + 1416), type metadata accessor for MLS.GroupState.CommitOptions);
  sub_26BF57DC8();
  v41 = *(v0 + 1440);
  v42 = *(v0 + 1312);
  sub_26BF9E81C(v43);
  v44 = *(v42 + 48);
  swift_beginAccess();
  v45 = *(v44 + 48);
  result = sub_26BF36A34(v41);
  v47 = result;
  v49 = v48;
  v50 = **(v0 + 1440);
  if ((v50 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v51 = v50 != 1;
    LOBYTE(v126) = v50 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v128 = v51;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v52 = v127;

    v53 = sub_26BE1264C(v52);
    v55 = v54;
    v119 = *(v0 + 1416);
    v56 = *(v0 + 1376);
    v122 = *(v0 + 1368);
    v117 = *(v0 + 1392);
    v118 = *(v0 + 1296);
    v57 = *(v0 + 1288);

    *(v0 + 1208) = v53;
    *(v0 + 1216) = v55;
    sub_26BE00608(v53, v55);
    sub_26C009C5C();
    *(v0 + 1080) = v45;
    *(v0 + 1088) = v47;
    *(v0 + 1096) = v49;
    *(v0 + 1104) = 0;
    sub_26BE638EC(v57, v56, v119, (v0 + 1080), v118, v117);
    v58 = (v122 + 8);
    v59 = *(v0 + 1400);
    v60 = *(v0 + 1392);
    v61 = *(v0 + 1384);
    v120 = *(v0 + 1352);
    v123 = *(v0 + 1312);
    (*v58)(*(v0 + 1376), *(v0 + 1360));
    sub_26BE00258(v53, v55);
    sub_26BE00258(v47, v49);
    sub_26BF7F124(v60, v59, type metadata accessor for MLS.GroupState.CommitOutput);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
    v63 = *(v62 + 48);
    v64 = v59 + *(v61 + 24);
    sub_26BF7F0BC(v64, v120, type metadata accessor for MLS.GroupState);
    v65 = (v59 + *(v61 + 32));
    v66 = v65[7];
    v67 = v65[8];
    v68 = v65[10];
    *(v0 + 344) = v65[9];
    *(v0 + 360) = v68;
    *(v0 + 312) = v66;
    *(v0 + 328) = v67;
    v69 = v65[3];
    v70 = v65[4];
    v71 = v65[6];
    *(v0 + 280) = v65[5];
    *(v0 + 296) = v71;
    *(v0 + 248) = v69;
    *(v0 + 264) = v70;
    v73 = v65[1];
    v72 = v65[2];
    *(v0 + 200) = *v65;
    *(v0 + 216) = v73;
    *(v0 + 232) = v72;
    memmove((v120 + v63), v65, 0xB0uLL);
    (*(*(v62 - 8) + 56))(v120, 0, 1, v62);
    v74 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
    swift_beginAccess();
    sub_26BE6FF30(v0 + 200, v0 + 376);
    sub_26BE7170C(v120, v123 + v74, &qword_28045E8D8, &qword_26C012580);
    swift_endAccess();
    sub_26BF56BD4(&v126);
    v75 = v127;
    *(v0 + 1464) = v126;
    *(v0 + 1472) = v75;
    type metadata accessor for MLS.KeySchedule(0);
    sub_26C009C3C();
    *(v0 + 1480) = *(v0 + 1224);
    *(v0 + 1488) = *(v0 + 1232);
    v126 = *(v64 + 56);

    MLS.RatchetTree.rawRepresentation.getter();
    *(v0 + 1496) = v76;
    *(v0 + 1504) = v77;
    v78 = *(v0 + 1400);
    v79 = *(v0 + 1336);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F248, &qword_26C01A888);
    v80 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_26C011280;
    sub_26BF7F0BC(v78, v81 + v80, type metadata accessor for MLS.MLSMessage);
    sub_26BEE6FC0(v81);
    *(v0 + 1512) = v82;
    *(v0 + 1520) = v83;
    v84 = *(v0 + 1400);
    v85 = *(v0 + 1384);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v0 + 1240) = xmmword_26C00DA60;
    v86 = *(v84 + *(v85 + 20));
    if (*(v86 + 16))
    {
      v87 = *(v0 + 1344);
      v89 = *(v86 + 40);
      v88 = *(v86 + 48);
      v90 = *(v86 + 56);
      *v87 = *(v86 + 32);
      *(v87 + 8) = v89;
      *(v87 + 16) = v88;
      *(v87 + 24) = v90;
      type metadata accessor for MLS.MLSMessage.Inner(0);
      swift_storeEnumTagMultiPayload();

      sub_26BE00608(v88, v90);

      sub_26BE00608(v88, v90);
      MLS.MLSMessage.rawValue.getter();
      v124 = v88;
      v92 = v91;
      v94 = v93;
      sub_26BF7F05C(*(v0 + 1344), type metadata accessor for MLS.MLSMessage);
      sub_26BE132D4(*(v0 + 1240), *(v0 + 1248));
      *(v0 + 1240) = v92;
      *(v0 + 1248) = v94;

      v95 = sub_26C009A3C();
      v96 = sub_26C00AA1C();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v126 = v98;
        *v97 = 136315138;

        v99 = sub_26BE3D034();
        v101 = v100;

        v102 = sub_26BE29740(v99, v101, &v126);

        *(v97 + 4) = v102;
        _os_log_impl(&dword_26BDFE000, v95, v96, "%s: generated welcome message", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x26D69A4E0](v98, -1, -1);
        MEMORY[0x26D69A4E0](v97, -1, -1);

        sub_26BE00258(v124, v90);
      }

      else
      {

        sub_26BE00258(v124, v90);
      }
    }

    v103 = *(v0 + 1440);
    v104 = *(v0 + 1424);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 1528) = v105;
    v106 = *(*(v105 - 8) + 80);
    *(v0 + 668) = v106;
    v107 = (v106 + 32) & ~v106;
    v108 = swift_allocObject();
    *(v0 + 1536) = v108;
    *(v108 + 16) = xmmword_26C011280;
    v109 = sub_26BE81FE0(*(v103 + *(v104 + 40)));
    if ((v109 & 0x100000000) != 0)
    {
      LODWORD(v109) = sub_26BE4126C();
    }

    v110 = v108 + v107;
    v111 = *(v0 + 1440);
    v112 = *(v0 + 1432);
    v113 = *(v0 + 1424);
    v114 = *(v105 + 48);
    v115 = *(v111 + 24);
    *v110 = v109;
    *(v110 + 8) = v115;
    sub_26BF7F0BC(v111, v110 + v114, type metadata accessor for MLS.GroupState);
    (*(v112 + 56))(v110 + v114, 0, 1, v113);
    v116 = swift_task_alloc();
    *(v0 + 1544) = v116;
    *v116 = v0;
    v116[1] = sub_26BF56088;

    return sub_26BF394D4(v108);
  }

  return result;
}

uint64_t sub_26BF56088()
{
  *(*v1 + 1552) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF56A54;
  }

  else
  {
    v2 = sub_26BF56208;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF56208()
{
  v73 = v0;

  v1 = sub_26C009A3C();
  v2 = sub_26C00AA1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v72[0] = v4;
    *v3 = 136315138;

    v5 = sub_26BE3D034();
    v7 = v6;

    v8 = sub_26BE29740(v5, v7, v72);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_26BDFE000, v1, v2, "%s: returning commit output", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x26D69A4E0](v4, -1, -1);
    MEMORY[0x26D69A4E0](v3, -1, -1);
  }

  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  v9 = v0[190];
  v10 = v0[189];
  __swift_project_value_buffer(v0[181], qword_280478FB0);
  sub_26BE00608(v10, v9);
  v11 = sub_26C009A3C();
  v12 = sub_26C00A9FC();
  sub_26BE00258(v10, v9);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v72[0] = v14;
    *v13 = 136315138;
    v15 = sub_26C0090EC();
    v17 = sub_26BE29740(v15, v16, v72);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_26BDFE000, v11, v12, "Produced Commit message: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26D69A4E0](v14, -1, -1);
    MEMORY[0x26D69A4E0](v13, -1, -1);
  }

  v71 = v0 + 155;
  v18 = sub_26C009A3C();
  v19 = sub_26C00A9FC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v72[0] = v21;
    *v20 = 136315138;
    swift_beginAccess();
    v22 = v0[156];
    if (v22 >> 60 == 15)
    {
      v23 = 0xE500000000000000;
      v24 = 0x3E6C696E3CLL;
    }

    else
    {
      v25 = *v71;
      sub_26BE00608(*v71, v0[156]);
      v26 = sub_26C0090EC();
      v23 = v27;
      sub_26BE00258(v25, v22);
      v24 = v26;
    }

    v28 = sub_26BE29740(v24, v23, v72);

    *(v20 + 4) = v28;
    _os_log_impl(&dword_26BDFE000, v18, v19, "Produced Welcome message: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x26D69A4E0](v21, -1, -1);
    MEMORY[0x26D69A4E0](v20, -1, -1);
  }

  else
  {
  }

  v29 = v0[184];
  v30 = v0[183];
  sub_26BE00608(v30, v29);
  v31 = sub_26C009A3C();
  v32 = sub_26C00A9FC();
  sub_26BE00258(v30, v29);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v72[0] = v34;
    *v33 = 136315138;
    v35 = sub_26C0090EC();
    v37 = sub_26BE29740(v35, v36, v72);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_26BDFE000, v31, v32, "Produced next groupInfo: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x26D69A4E0](v34, -1, -1);
    MEMORY[0x26D69A4E0](v33, -1, -1);
  }

  v38 = v0[186];
  v39 = v0[185];
  sub_26BE00608(v39, v38);
  v40 = sub_26C009A3C();
  v41 = sub_26C00A9FC();
  sub_26BE00258(v39, v38);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v0[186];
    v43 = v0[185];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v72[0] = v45;
    *v44 = 136315138;
    v0[158] = sub_26BF87240(v43, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v46 = sub_26C00A3EC();
    v48 = v47;

    v49 = sub_26BE29740(v46, v48, v72);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_26BDFE000, v40, v41, "Produced next epoch authenticator: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x26D69A4E0](v45, -1, -1);
    MEMORY[0x26D69A4E0](v44, -1, -1);
  }

  v50 = v0[188];
  v51 = v0[187];
  sub_26BE00608(v51, v50);
  v52 = sub_26C009A3C();
  v53 = sub_26C00A9FC();
  sub_26BE00258(v51, v50);
  if (os_log_type_enabled(v52, v53))
  {
    v54 = v0[180];
    v55 = v0[177];
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v72[0] = v57;
    *v56 = 136315138;
    v58 = sub_26C0090EC();
    v60 = sub_26BE29740(v58, v59, v72);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_26BDFE000, v52, v53, "Produced next ratchet tree: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x26D69A4E0](v57, -1, -1);
    MEMORY[0x26D69A4E0](v56, -1, -1);
  }

  else
  {
    v54 = v0[180];
    v55 = v0[177];
  }

  sub_26BF7F05C(v55, type metadata accessor for MLS.GroupState.CommitOptions);
  sub_26BF7F05C(v54, type metadata accessor for MLS.GroupState);
  v61 = v0[188];
  v62 = v0[187];
  v63 = v0[175];
  v64 = v0[159];
  v69 = *(v0 + 183);
  v70 = *(v0 + 189);
  v68 = *(v0 + 185);
  swift_beginAccess();
  v65 = *v71;
  *v64 = v70;
  *(v64 + 16) = v65;
  *(v64 + 32) = v69;
  *(v64 + 48) = v68;
  *(v64 + 64) = v62;
  *(v64 + 72) = v61;
  sub_26BE2BAE8(v65, *(&v65 + 1));
  sub_26BF7F05C(v63, type metadata accessor for MLS.GroupState.CommitOutput);
  sub_26BE132D4(v0[155], v0[156]);

  v66 = v0[1];

  return v66();
}

uint64_t sub_26BF56A54()
{
  v1 = v0[190];
  v2 = v0[189];
  v3 = v0[186];
  v4 = v0[185];
  v5 = v0[184];
  v6 = v0[183];
  v7 = v0[180];
  v8 = v0[177];
  v9 = v0[175];
  sub_26BE00258(v0[187], v0[188]);
  sub_26BE00258(v4, v3);
  sub_26BE00258(v6, v5);
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState.CommitOptions);
  sub_26BF7F05C(v7, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState.CommitOutput);
  sub_26BE132D4(v0[155], v0[156]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF56BD4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MLS.GroupInfo(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v7[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 3, v14);
  *v9 = 0;
  *(v9 + v7[8]) = 0;
  *(v9 + v7[9]) = 1;
  *(v9 + v7[10]) = 0;
  *(v9 + v7[11]) = MEMORY[0x277D84F90];
  MLS.GroupState.generateGroupInfo(commitOptions:)(v9, v12);
  result = sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState.CommitOptions);
  if (!v1)
  {
    sub_26BF7F0BC(v12, v5, type metadata accessor for MLS.GroupInfo);
    type metadata accessor for MLS.MLSMessage.Inner(0);
    swift_storeEnumTagMultiPayload();
    MLS.MLSMessage.rawValue.getter();
    v17 = v16;
    v19 = v18;
    sub_26BF7F05C(v5, type metadata accessor for MLS.MLSMessage);
    result = sub_26BF7F05C(v12, type metadata accessor for MLS.GroupInfo);
    *a1 = v17;
    a1[1] = v19;
  }

  return result;
}

uint64_t MLS.Welcome.asMessage()@<X0>(void *a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v5) = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  *v6 = v5;
  *(v6 + 1) = v7;
  *(v6 + 2) = v8;
  *(v6 + 3) = v9;
  type metadata accessor for MLS.MLSMessage.Inner(0);
  swift_storeEnumTagMultiPayload();

  sub_26BE00608(v8, v9);
  MLS.MLSMessage.rawValue.getter();
  if (v2)
  {
    return sub_26BF7F05C(v6, type metadata accessor for MLS.MLSMessage);
  }

  v13 = v10;
  v14 = v11;
  result = sub_26BF7F05C(v6, type metadata accessor for MLS.MLSMessage);
  *a1 = v13;
  a1[1] = v14;
  return result;
}

uint64_t sub_26BF56FC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BF56FE4, 0, 0);
}

uint64_t sub_26BF56FE4()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F19C;
  v2 = *(v0 + 16);

  return (sub_26BE927E4)(v2);
}

uint64_t sub_26BF570AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  v3[25] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v3[26] = swift_task_alloc();
  type metadata accessor for MLS.GroupState(0);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF57170, 0, 0);
}

uint64_t sub_26BF57170()
{
  v18 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315394;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    v12 = *(v5 + 16);

    *(v6 + 14) = v12;

    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: adding %ld members to group", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_26BE2FFCC();
  *v17 = *(v0[23] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v13 = 45;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0;
    *(v13 + 112) = 23;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_26BF5747C;

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF5747C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 272) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF575DC, 0, 0);
  }
}

uint64_t sub_26BF575DC()
{
  if (*(v0 + 272) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 184);
    v5 = *(v4 + 152);
    v6 = *(v4 + 24);
    *(v0 + 160) = v5;
    *(v0 + 168) = v6;
    v7 = swift_task_alloc();
    *(v0 + 232) = v7;
    *v7 = v0;
    v7[1] = sub_26BF57744;
    v8 = *(v0 + 216);

    return sub_26BF37CA4(v8, (v0 + 160), 0);
  }
}

uint64_t sub_26BF57744()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_26BF57AD4;
  }

  else
  {
    v2 = sub_26BF57858;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF57858()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_26BE5D1F0(sub_26BF7F03C, v4, v3);
  *(v0 + 248) = v5;
  if (v1)
  {
    v6 = *(v0 + 216);

    sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = v5;
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);

    *(v0 + 152) = 0;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 32) = 0u;
    sub_26BE2962C(0, 0x3000000000000000uLL);
    *(v0 + 16) = xmmword_26C00DA50;
    sub_26BE7170C(v0 + 120, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE701EC(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    v12 = v11[5];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    (*(*(v13 - 8) + 56))(&v10[v12], 1, 3, v13);
    *v10 = 0;
    v10[v11[6]] = 0;
    v10[v11[7]] = 0;
    v10[v11[8]] = 0;
    *&v10[v11[9]] = MEMORY[0x277D84F90];
    v14 = swift_task_alloc();
    *(v0 + 256) = v14;
    *v14 = v0;
    v14[1] = sub_26BF57B40;
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 176);

    return sub_26BF54A88(v17, v15, v9, v0 + 16, v16);
  }
}

uint64_t sub_26BF57AD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF57B40()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  sub_26BF7F05C(*(v2 + 208), type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8(v2 + 16);
  if (v0)
  {
    v3 = sub_26BF57D40;
  }

  else
  {
    v3 = sub_26BF57CB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF57CB4()
{
  sub_26BF7F05C(*(v0 + 216), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF57D40()
{
  sub_26BF7F05C(*(v0 + 216), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

void sub_26BF57DC8()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for FileInfoAndSender(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE2E1F0(v2 + v10, v5, &qword_28045FA38, &qword_26C01D890);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26BE2E258(v5, &qword_28045FA38, &qword_26C01D890);
  }

  else
  {
    sub_26BF7F124(v5, v9, type metadata accessor for FileInfoAndSender);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v11 = sub_26C009A5C();
    v12 = __swift_project_value_buffer(v11, qword_280478EE8);

    v36[7] = v12;
    v13 = sub_26C009A3C();
    v14 = sub_26C00AA1C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36[0] = v16;
      *v15 = 136315138;

      v17 = sub_26BE3D034();
      v19 = v18;

      v20 = sub_26BE29740(v17, v19, v36);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_26BDFE000, v13, v14, "%s: Generating group info extensions with fileInfoForGroupSubject extension", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x26D69A4E0](v16, -1, -1);
      MEMORY[0x26D69A4E0](v15, -1, -1);
    }

    type metadata accessor for FileInfo(0);
    sub_26BF7EFF4(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);
    v21 = sub_26C00998C();
    if (v1)
    {
      sub_26BF7F05C(v9, type metadata accessor for FileInfoAndSender);
    }

    else
    {
      v23 = v21;
      v24 = v22;
      sub_26BE00608(v21, v22);
      sub_26BFFB11C(v23, v24, v36);
      sub_26BE00258(v23, v24);
      v25 = v36[0];
      v26 = v36[1];
      v27 = v36[2];
      v28 = sub_26BEEBD8C(0, 1, 1, MEMORY[0x277D84F90]);
      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_26BEEBD8C((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v35[1] = v28;
      v31 = &v28[24 * v30];
      *(v31 + 16) = v25;
      *(v31 + 5) = v26;
      *(v31 + 6) = v27;
      v32 = sub_26C009A3C();
      v33 = sub_26C00AA1C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_26BDFE000, v32, v33, "Added subject key extension to group info extensions", v34, 2u);
        MEMORY[0x26D69A4E0](v34, -1, -1);
      }

      sub_26BE00258(v23, v24);

      sub_26BF7F05C(v9, type metadata accessor for FileInfoAndSender);
    }
  }
}

void sub_26BF582A8(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_26C0098EC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BE820D4(*(a1 + 72), v34);
  if (v2)
  {
    return;
  }

  v11 = *(&v34[0] + 1);
  if (*(&v34[0] + 1) >> 60 == 15)
  {
    return;
  }

  v38 = 0;
  v33 = v1;
  v12 = *&v34[0];
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v13 = sub_26C009A5C();
  v14 = __swift_project_value_buffer(v13, qword_280478EE8);
  sub_26BE00608(v12, v11);
  v15 = sub_26C009A3C();
  v16 = sub_26C00AA1C();
  if (!os_log_type_enabled(v15, v16))
  {
    sub_26BE132D4(v12, v11);
    goto LABEL_18;
  }

  v32 = v14;
  v17 = swift_slowAlloc();
  v18 = v17;
  *v17 = 134217984;
  v19 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_17;
    }

    v22 = *(v12 + 16);
    v21 = *(v12 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    LODWORD(v20) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
      return;
    }

    v20 = v20;
    goto LABEL_17;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v20 = BYTE6(v11);
LABEL_17:
  *(v17 + 4) = v20;
  sub_26BE132D4(v12, v11);
  _os_log_impl(&dword_26BDFE000, v15, v16, "Found subject key extension in GroupInfo containing %ld bytes", v18, 0xCu);
  MEMORY[0x26D69A4E0](v18, -1, -1);
LABEL_18:

  v36 = v12;
  v37 = v11;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_26BE00608(v12, v11);
  sub_26C0098DC();
  sub_26BF7EFF4(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);
  v24 = v38;
  sub_26C00999C();
  if (v24)
  {
    sub_26BE132D4(v12, v11);
  }

  else
  {
    v25 = sub_26C009A3C();
    v26 = sub_26C00AA1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26BDFE000, v25, v26, "Found FileInfo in subject key extension", v27, 2u);
      MEMORY[0x26D69A4E0](v27, -1, -1);

      sub_26BE132D4(v12, v11);
    }

    else
    {
      sub_26BE132D4(v12, v11);
    }

    v28 = v33;
    sub_26BF7F124(v10, v6, type metadata accessor for FileInfo);
    v29 = type metadata accessor for FileInfoAndSender(0);
    v30 = &v6[*(v29 + 20)];
    *(v30 + 6) = 0;
    *(v30 + 1) = 0u;
    *(v30 + 2) = 0u;
    *v30 = 0u;
    (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
    v31 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
    swift_beginAccess();
    sub_26BE7170C(v6, v28 + v31, &qword_28045FA38, &qword_26C01D890);
    swift_endAccess();
  }
}

char *sub_26BF58738(uint64_t a1, uint64_t a2)
{
  v4 = v3;

  v7 = sub_26BEC8E48(a2);

  v41 = MEMORY[0x277D84F90];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  LOWORD(v37) = v8;
  v38 = v9;
  v39 = v10;
  v40 = v11;

  v12 = v4;
  sub_26BE5A75C(&v37, v2, v7, &v41);

  v13 = v38;

  if (v12)
  {
LABEL_13:

    return v13;
  }

  v13 = v41;
  v14 = *(a2 + 16);
  if (*(v41 + 2) != v14)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v15 = sub_26C009A5C();
    __swift_project_value_buffer(v15, qword_280478EE8);

    v16 = sub_26C009A3C();
    v17 = sub_26C00AA0C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v14;

      *(v18 + 12) = 2048;
      *(v18 + 14) = *(v13 + 2);
      _os_log_impl(&dword_26BDFE000, v16, v17, "Attempted to remove %ld members, but %ld were found", v18, 0x16u);
      MEMORY[0x26D69A4E0](v18, -1, -1);
    }

    else
    {
    }

    v19 = sub_26C009A3C();
    v20 = sub_26C00AA0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;

      v24 = MEMORY[0x26D6991B0](v23, &type metadata for MLS.LeafIndex);
      v26 = v25;

      v27 = sub_26BE29740(v24, v26, &v37);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_26BDFE000, v19, v20, "Indices to remove: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26D69A4E0](v22, -1, -1);
      MEMORY[0x26D69A4E0](v21, -1, -1);
    }

    v28 = sub_26C009A3C();
    v29 = sub_26C00AA0C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      v32 = MEMORY[0x26D6991B0](a2, &type metadata for MLS.Identity.SigningIdentity);
      v34 = sub_26BE29740(v32, v33, &v37);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_26BDFE000, v28, v29, "Members to remove: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x26D69A4E0](v31, -1, -1);
      MEMORY[0x26D69A4E0](v30, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v35 = 15;
    v35[112] = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  return v13;
}

uint64_t sub_26BF58B48(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26BF58B70, 0, 0);
}

uint64_t sub_26BF58B70()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F19C;
  v2 = *(v0 + 16);

  return (sub_26BE9326C)(v2);
}

uint64_t sub_26BF58C3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 296) = a4;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 176) = a1;
  *(v4 + 200) = type metadata accessor for MLS.GroupState.CommitOptions(0);
  *(v4 + 208) = swift_task_alloc();
  type metadata accessor for MLS.GroupState(0);
  *(v4 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF58D04, 0, 0);
}

uint64_t sub_26BF58D04()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 160) = v2;
  *(v0 + 168) = v3;
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_26BF58DBC;
  v5 = *(v0 + 216);

  return sub_26BF37CA4(v5, (v0 + 160), 0);
}

uint64_t sub_26BF58DBC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_26BF591D8;
  }

  else
  {
    v2 = sub_26BF58ED0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF58ED0()
{
  v19 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  v0[30] = __swift_project_value_buffer(v1, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315394;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    v12 = *(v5 + 16);

    *(v6 + 14) = v12;

    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: removing %ld members from group", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = v0[29];
  sub_26BE2FFCC();
  if (v13)
  {
    goto LABEL_9;
  }

  *v18 = *(v0[23] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    v14 = swift_allocError();
    *v15 = 45;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0;
    *(v15 + 112) = 23;
    swift_willThrow();
    v13 = v14;
LABEL_9:
    v0[33] = v13;

    return MEMORY[0x2822009F8](sub_26BF57D40, 0, 0);
  }

  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  v16[1] = sub_26BF59244;

  return sub_26BE304A0();
}

uint64_t sub_26BF591D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF59244(char a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    *(v4 + 264) = v1;
    v5 = sub_26BF57D40;
  }

  else
  {
    *(v4 + 297) = a1 & 1;
    v5 = sub_26BF59374;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF59374()
{
  v27 = v0;
  if (*(v0 + 297) == 1)
  {
    sub_26BE01654();
    v1 = swift_allocError();
    *v2 = 46;
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0;
    *(v2 + 112) = 23;
    swift_willThrow();
    *(v0 + 264) = v1;

    return MEMORY[0x2822009F8](sub_26BF57D40, 0, 0);
  }

  else
  {
    v3 = *(v0 + 256);
    v4 = sub_26BF58738(*(v0 + 216), *(v0 + 192));
    if (v3)
    {
      sub_26BF7F05C(*(v0 + 216), type metadata accessor for MLS.GroupState);

      v15 = *(v0 + 8);

      return v15();
    }

    else
    {
      v5 = v4;

      v6 = sub_26C009A3C();
      v7 = sub_26C00A9FC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v26 = v9;
        *v8 = 136315138;
        v10 = MEMORY[0x26D6991B0](v5, &type metadata for MLS.LeafIndex);
        v12 = sub_26BE29740(v10, v11, &v26);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_26BDFE000, v6, v7, "Indices to remove from group: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x26D69A4E0](v9, -1, -1);
        MEMORY[0x26D69A4E0](v8, -1, -1);
      }

      v13 = MEMORY[0x277D84F90];
      v14 = MLS.GroupState.generateAddAndRemoveProposals(adds:removes:serverRemove:)(MEMORY[0x277D84F90], v5, *(v0 + 296));
      *(v0 + 272) = v14;
      v16 = v14;
      v18 = *(v0 + 200);
      v17 = *(v0 + 208);

      *(v0 + 152) = 0;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 32) = 0u;
      sub_26BE2962C(0, 0x3000000000000000uLL);
      *(v0 + 16) = xmmword_26C00DA50;
      sub_26BE7170C(v0 + 120, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
      sub_26BE701EC(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      *(v0 + 72) = 0u;
      v19 = v18[5];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
      (*(*(v20 - 8) + 56))(&v17[v19], 1, 3, v20);
      *v17 = 0;
      v17[v18[6]] = 0;
      v17[v18[7]] = 0;
      v17[v18[8]] = 0;
      *&v17[v18[9]] = v13;
      v21 = swift_task_alloc();
      *(v0 + 280) = v21;
      *v21 = v0;
      v21[1] = sub_26BF59788;
      v23 = *(v0 + 208);
      v22 = *(v0 + 216);
      v24 = *(v0 + 176);

      return sub_26BF54A88(v24, v22, v16, v0 + 16, v23);
    }
  }
}

uint64_t sub_26BF59788()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  sub_26BF7F05C(*(v2 + 208), type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8(v2 + 16);
  if (v0)
  {
    v3 = sub_26BF598FC;
  }

  else
  {
    v3 = sub_26BF7F1C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF598FC()
{
  sub_26BF7F05C(*(v0 + 216), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF59984(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BF599A4, 0, 0);
}

uint64_t sub_26BF599A4()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F1A0;
  v2 = v0[2];
  v3 = v0[3];

  return sub_26BEA0904(v2, v3, v3);
}

uint64_t sub_26BF59A5C(uint64_t a1, uint64_t a2)
{
  v2[51] = a1;
  v2[52] = a2;
  v3 = type metadata accessor for MLS.MLSMessage(0);
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();
  v4 = type metadata accessor for MLS.GroupState(0);
  v2[56] = v4;
  v2[57] = *(v4 - 8);
  v2[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF59B78, 0, 0);
}

uint64_t sub_26BF59B78()
{
  v15 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, v14);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: proposing removal of self from group", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  sub_26BE2FFCC();
  *v14 = *(v0[52] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v10 = 45;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0;
    *(v10 + 112) = 23;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[59] = v13;
    *v13 = v0;
    v13[1] = sub_26BF59E38;

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF59E38(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 201) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF59F9C, 0, 0);
  }
}

uint64_t sub_26BF59F9C()
{
  if (*(v0 + 201) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 416);
    v5 = *(v4 + 152);
    v6 = *(v4 + 24);
    *(v0 + 392) = v5;
    *(v0 + 400) = v6;
    v7 = swift_task_alloc();
    *(v0 + 480) = v7;
    *v7 = v0;
    v7[1] = sub_26BF5A104;
    v8 = *(v0 + 464);

    return sub_26BF37CA4(v8, (v0 + 392), 0);
  }
}

uint64_t sub_26BF5A104()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_26BF5A54C;
  }

  else
  {
    v2 = sub_26BF5A218;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5A218()
{
  v35 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 440);
  sub_26BE800C4((v0 + 208));
  v3 = *(v0 + 352);
  *(v0 + 144) = *(v0 + 336);
  *(v0 + 160) = v3;
  *(v0 + 176) = *(v0 + 368);
  *(v0 + 192) = *(v0 + 384);
  v4 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v4;
  v5 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v5;
  v6 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v6;
  v7 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v7;
  sub_26BE82200(v0 + 16);
  v8 = *(v0 + 160);
  v30[8] = *(v0 + 144);
  v30[9] = v8;
  v31[0] = *(v0 + 176);
  *(v31 + 9) = *(v0 + 185);
  v9 = *(v0 + 96);
  v30[4] = *(v0 + 80);
  v30[5] = v9;
  v10 = *(v0 + 128);
  v30[6] = *(v0 + 112);
  v30[7] = v10;
  v11 = *(v0 + 32);
  v30[0] = *(v0 + 16);
  v30[1] = v11;
  v12 = *(v0 + 64);
  v30[2] = *(v0 + 48);
  v30[3] = v12;
  v32[0] = 0;
  v33 = xmmword_26C00BBD0;
  v34 = 0;
  sub_26BE68838(v30, v32, v2);
  if (v1)
  {
    v13 = *(v0 + 464);
    sub_26BE00258(0, 0xC000000000000000);
    sub_26BF7F05C(v13, type metadata accessor for MLS.GroupState);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 464);
    v17 = *(v0 + 448);
    sub_26BE00258(0, 0xC000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 496) = v18;
    v19 = *(*(v18 - 8) + 80);
    *(v0 + 204) = v19;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    *(v0 + 504) = v21;
    *(v21 + 16) = xmmword_26C011280;
    v22 = sub_26BE81FE0(*(v16 + *(v17 + 40)));
    if ((v22 & 0x100000000) != 0)
    {
      LODWORD(v22) = sub_26BE4126C();
    }

    v23 = v21 + v20;
    v25 = *(v0 + 456);
    v24 = *(v0 + 464);
    v26 = *(v0 + 448);
    v27 = *(v18 + 48);
    v28 = *(v24 + 24);
    *v23 = v22;
    *(v23 + 8) = v28;
    sub_26BF7F0BC(v24, v23 + v27, type metadata accessor for MLS.GroupState);
    (*(v25 + 56))(v23 + v27, 0, 1, v26);
    v29 = swift_task_alloc();
    *(v0 + 512) = v29;
    *v29 = v0;
    v29[1] = sub_26BF5A5BC;

    return sub_26BF394D4(v21);
  }
}

uint64_t sub_26BF5A54C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5A5BC()
{
  *(*v1 + 520) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF5A938;
  }

  else
  {
    v2 = sub_26BF5A73C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5A73C()
{
  v1 = v0[65];
  v3 = v0[54];
  v2 = v0[55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F248, &qword_26C01A888);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26C011280;
  sub_26BF7F0BC(v2, v5 + v4, type metadata accessor for MLS.MLSMessage);
  sub_26BEE6FC0(v5);
  v8 = v7;
  v9 = v0[58];
  v10 = v0[55];
  if (v1)
  {
    sub_26BF7F05C(v10, type metadata accessor for MLS.MLSMessage);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v0[51];
    sub_26BF7F05C(v10, type metadata accessor for MLS.MLSMessage);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v13 = v8;
    v13[1] = v12;
  }

  sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState);

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF5A938()
{
  v1 = v0[58];
  sub_26BF7F05C(v0[55], type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF5AA10@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F248, &qword_26C01A888);
  v6 = *(type metadata accessor for MLS.MLSMessage(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C011280;
  sub_26BF7F0BC(v2, v8 + v7, type metadata accessor for MLS.MLSMessage);
  v9 = a1(v8);
  if (v3)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    return swift_deallocClassInstance();
  }

  else
  {
    v12 = v9;
    v13 = v10;
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    *a2 = v12;
    a2[1] = v13;
  }

  return result;
}

uint64_t sub_26BF5AB84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BF5ABA4, 0, 0);
}

uint64_t sub_26BF5ABA4()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1C3F0;
  v2 = v0[2];
  v3 = v0[3];

  return sub_26BE9443C(v2, v3, v3);
}

uint64_t sub_26BF5AC5C(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  v2[40] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v2[41] = swift_task_alloc();
  type metadata accessor for MLS.GroupState(0);
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5AD1C, 0, 0);
}

uint64_t sub_26BF5AD1C()
{
  v17 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  *(v0 + 344) = __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: performing self update", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 312);
  v11 = *(v10 + 152);
  v12 = *(v10 + 24);
  *(v0 + 288) = v11;
  *(v0 + 296) = v12;
  v13 = swift_task_alloc();
  *(v0 + 352) = v13;
  *v13 = v0;
  v13[1] = sub_26BF5AF28;
  v14 = *(v0 + 336);

  return sub_26BF37CA4(v14, (v0 + 288), 0);
}

uint64_t sub_26BF5AF28()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_26BF5B52C;
  }

  else
  {
    v2 = sub_26BF5B03C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5B03C()
{
  v44 = v0;
  v1 = *(*(v0 + 312) + 48);
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v1 + v4, v0 + 120);
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 32) = 0u;
  sub_26BE2958C(v2, v3);
  sub_26BE2962C(0, 0x3000000000000000uLL);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  sub_26BE7170C(v0 + 120, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
  sub_26BE701EC(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;

  v5 = sub_26C009A3C();
  v6 = sub_26C00A9FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42 = v8;
    *v7 = 136315138;
    v9 = *(v1 + 32);
    if ((~v9 & 0x3000000000000000) != 0)
    {
      v43[0] = *(v1 + 24);
      v43[1] = v9;
      v11 = MLS.Identity.Credential.description.getter();
      v10 = v12;
    }

    else
    {
      v10 = 0xE500000000000000;
      v11 = 0x3E6C696E3CLL;
    }

    v13 = sub_26BE29740(v11, v10, &v42);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_26BDFE000, v5, v6, "Updating with new credential: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v14 = sub_26C009A3C();
  v15 = sub_26C00A9FC();

  if (os_log_type_enabled(v14, v15))
  {
    buf = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *buf = 136315138;
    sub_26BE038A8(v1 + v4, v0 + 200);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1((v0 + 200), v16);
    v39 = v15;
    v38 = *(v17 + 40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 184) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 192) = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1((v0 + 160));
    v38(v16, v17);
    v20 = (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
    v22 = v21;
    v23 = sub_26BE83594(v20, v21);
    v25 = v24;
    sub_26BE00258(v20, v22);
    __swift_destroy_boxed_opaque_existential_1((v0 + 160));
    __swift_destroy_boxed_opaque_existential_1((v0 + 200));
    v26 = sub_26BE29740(v23, v25, v43);

    *(buf + 4) = v26;
    _os_log_impl(&dword_26BDFE000, v14, v39, "Updating with new signature public key: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D69A4E0](v41, -1, -1);
    MEMORY[0x26D69A4E0](buf, -1, -1);
  }

  v28 = *(v0 + 320);
  v27 = *(v0 + 328);
  v29 = v28[5];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v30 - 8) + 56))(&v27[v29], 1, 3, v30);
  *v27 = 0;
  v27[v28[6]] = 1;
  v27[v28[7]] = 0;
  v27[v28[8]] = 0;
  v31 = v28[9];
  v32 = MEMORY[0x277D84F90];
  *&v27[v31] = MEMORY[0x277D84F90];
  v33 = swift_task_alloc();
  *(v0 + 368) = v33;
  *v33 = v0;
  v33[1] = sub_26BF5B598;
  v35 = *(v0 + 328);
  v34 = *(v0 + 336);
  v36 = *(v0 + 304);

  return sub_26BF54A88(v36, v34, v32, v0 + 16, v35);
}

uint64_t sub_26BF5B52C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5B598()
{
  v2 = *(*v1 + 328);
  *(*v1 + 376) = v0;

  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState.CommitOptions);
  if (v0)
  {
    v3 = sub_26BF5B770;
  }

  else
  {
    v3 = sub_26BF5B6DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF5B6DC()
{
  sub_26BF7F05C(*(v0 + 336), type metadata accessor for MLS.GroupState);
  sub_26BF7E1E8(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5B770()
{
  sub_26BF7F05C(*(v0 + 336), type metadata accessor for MLS.GroupState);
  sub_26BF7E1E8(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BF5B824, 0, 0);
}

uint64_t sub_26BF5B824()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_26BE00608(v2, v1);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_26BE3C268;
  v4 = v0[2];

  return (sub_26BE9FE6C)(v4);
}

uint64_t sub_26BF5B8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for MLS.MLSMessage(0);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for MLS.GroupState(0);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5B9E0, 0, 0);
}

uint64_t sub_26BF5B9E0()
{
  v15 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  v0[15] = v1;
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, v14);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: encrypting application message", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  sub_26BE2FFCC();
  *v14 = *(v0[8] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v10 = 45;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0;
    *(v10 + 112) = 23;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_26BF5BCA4;

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF5BCA4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 220) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF5BE08, 0, 0);
  }
}

uint64_t sub_26BF5BE08()
{
  if (*(v0 + 220) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v4 + 152);
    v6 = *(v4 + 24);
    *(v0 + 40) = v5;
    *(v0 + 48) = v6;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_26BF5BF74;
    v8 = *(v0 + 112);

    return sub_26BF37CA4(v8, (v0 + 40), 0);
  }
}

uint64_t sub_26BF5BF74()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26BF5C504;
  }

  else
  {
    v2 = sub_26BF5C088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5C088()
{
  v40 = v0;
  v1 = *(v0 + 144);
  v2 = sub_26BF36A34(*(v0 + 112));
  if (v1)
  {

    v4 = 0;
    v5 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
    v5 = v3;
  }

  *(v0 + 152) = v4;
  *(v0 + 160) = v5;
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(*(v0 + 64) + 48);
  swift_beginAccess();
  v10 = *(v9 + 50);
  v37[0] = v4;
  v37[1] = v5;
  v37[2] = 0;
  v38 = v10;
  v39 = v10 ^ 1;
  MLS.GroupState.generateApplicationMessage(message:options:)(v8, v7, v37, v6);
  MLS.MLSMessage.rawValue.getter();
  *(v0 + 168) = v11;
  *(v0 + 176) = v12;
  v13 = v11;
  v14 = v12;
  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 120), qword_280478FB0);
  sub_26BE00608(v13, v14);
  v15 = sub_26C009A3C();
  v16 = sub_26C00A9FC();
  sub_26BE00258(v13, v14);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37[0] = v18;
    *v17 = 136315138;
    v19 = sub_26C0090EC();
    v21 = sub_26BE29740(v19, v20, v37);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26BDFE000, v15, v16, "Produced application message: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x26D69A4E0](v18, -1, -1);
    MEMORY[0x26D69A4E0](v17, -1, -1);
  }

  v22 = *(v0 + 112);
  v23 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 184) = v24;
  v25 = *(*(v24 - 8) + 80);
  *(v0 + 216) = v25;
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  *(v0 + 192) = v27;
  *(v27 + 16) = xmmword_26C011280;
  v28 = sub_26BE81FE0(*(v22 + *(v23 + 40)));
  if ((v28 & 0x100000000) != 0)
  {
    LODWORD(v28) = sub_26BE4126C();
  }

  v29 = v27 + v26;
  v31 = *(v0 + 104);
  v30 = *(v0 + 112);
  v32 = *(v0 + 96);
  v33 = *(v24 + 48);
  v34 = *(v30 + 24);
  *v29 = v28;
  *(v29 + 8) = v34;
  sub_26BF7F0BC(v30, v29 + v33, type metadata accessor for MLS.GroupState);
  (*(v31 + 56))(v29 + v33, 0, 1, v32);
  v35 = swift_task_alloc();
  *(v0 + 200) = v35;
  *v35 = v0;
  v35[1] = sub_26BF5C574;

  return sub_26BF394D4(v27);
}

uint64_t sub_26BF5C504()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5C574()
{
  *(*v1 + 208) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF5C7C4;
  }

  else
  {
    v2 = sub_26BF5C6F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5C6F4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[7];
  sub_26BE00258(v0[19], v0[20]);
  sub_26BF7F05C(v4, type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  *v5 = v2;
  v5[1] = v1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF5C7C4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[14];
  v4 = v0[11];
  sub_26BE00258(v0[19], v0[20]);
  sub_26BE00258(v1, v2);
  sub_26BF7F05C(v4, type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF5C894(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BF5C8B4, 0, 0);
}

uint64_t sub_26BF5C8B4()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F1A0;
  v2 = v0[2];
  v3 = v0[3];

  return sub_26BE939CC(v2, v3, v3);
}

uint64_t sub_26BF5C96C(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v2[24] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v2[25] = swift_task_alloc();
  type metadata accessor for MLS.GroupState(0);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5CA2C, 0, 0);
}

uint64_t sub_26BF5CA2C()
{
  v17 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: performing explicit commit", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 184);
  v11 = *(v10 + 152);
  v12 = *(v10 + 24);
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_26BF5CC38;
  v14 = *(v0 + 208);

  return sub_26BF37CA4(v14, (v0 + 160), 0);
}

uint64_t sub_26BF5CC38()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_26BF5CD4C;
  }

  else
  {
    v2 = sub_26BF5CDB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5CD4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5CDB8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 32) = 0u;
  sub_26BE2962C(0, 0x3000000000000000uLL);
  *(v0 + 16) = xmmword_26C00DA50;
  sub_26BE7170C(v0 + 120, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
  sub_26BE701EC(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  v3 = v2[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 3, v4);
  *v1 = 0;
  v1[v2[6]] = 0;
  v1[v2[7]] = 0;
  v1[v2[8]] = 0;
  v5 = MEMORY[0x277D84F90];
  *&v1[v2[9]] = MEMORY[0x277D84F90];
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_26BF5CF64;
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = *(v0 + 176);

  return sub_26BF54A88(v9, v7, v5, v0 + 16, v8);
}

uint64_t sub_26BF5CF64()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  *(v2 + 240) = v0;

  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState.CommitOptions);
  sub_26BF7E1E8(v2 + 16);
  if (v0)
  {
    v4 = sub_26BF5D144;
  }

  else
  {
    v4 = sub_26BF5D0B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF5D0B8()
{
  sub_26BF7F05C(*(v0 + 208), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5D144()
{
  sub_26BF7F05C(*(v0 + 208), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.GroupInfo.asMessage()@<X0>(void *a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BF7F0BC(v3, v7, type metadata accessor for MLS.GroupInfo);
  type metadata accessor for MLS.MLSMessage.Inner(0);
  swift_storeEnumTagMultiPayload();
  MLS.MLSMessage.rawValue.getter();
  if (v2)
  {
    return sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage);
  }

  v11 = v8;
  v12 = v9;
  result = sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage);
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_26BF5D2E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_26BF5D328, 0, 0);
}

uint64_t sub_26BF5D328()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F19C;
  v2 = *(v0 + 16);

  return (sub_26BEA1630)(v2);
}

uint64_t sub_26BF5D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  type metadata accessor for MLS.GroupState(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5D47C, 0, 0);
}

uint64_t sub_26BF5D47C()
{
  v17 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: generating group info", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 40);
  v11 = *(v10 + 152);
  v12 = *(v10 + 24);
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_26BF5D688;
  v14 = *(v0 + 56);

  return sub_26BF37CA4(v14, (v0 + 16), 0);
}

uint64_t sub_26BF5D688()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26BF5D854;
  }

  else
  {
    v2 = sub_26BF5D79C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5D79C()
{
  sub_26BF56BD4(*(v0 + 32));
  sub_26BF7F05C(*(v0 + 56), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5D854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5D8D8()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BF5D98C;
  v2 = *(v0 + 16);

  return sub_26BE8F6DC(sub_26BE8F6DC, v2, v2);
}

uint64_t sub_26BF5D98C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_26BE24610;
  }

  else
  {
    v2 = sub_26BE26740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5DAC0()
{
  v18 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  swift_retain_n();
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v6 = 136315394;
    v7 = v5[4];
    v8 = v5[5];
    sub_26BE00608(v7, v8);
    v0[5] = sub_26BF87240(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v9 = sub_26C00A3EC();
    v11 = v10;
    sub_26BE00258(v7, v8);

    v12 = sub_26BE29740(v9, v11, &v17);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2048;
    swift_beginAccess();
    v13 = *(v5[20] + 16);

    *(v6 + 14) = v13;

    _os_log_impl(&dword_26BDFE000, v2, v3, "Deleting group with ID %s and %ld associated epochs", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x26D69A4E0](v16, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  else
  {
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_26BF5DD50;

  return sub_26BF3D100();
}

uint64_t sub_26BF5DD50()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BF5DE80, 0, 0);
  }
}

uint64_t sub_26BF5DE80()
{
  v1 = v0[6];
  v2 = *(v1 + 32);
  v0[8] = v2;
  v3 = *(v1 + 40);
  v0[9] = v3;
  sub_26BE00608(v2, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_26BF53924;

  return sub_26BE24038(v2, v3);
}

uint64_t sub_26BF5DF40(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BF5DF64, 0, 0);
}

uint64_t sub_26BF5DF64()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_26BF5E048;
  v3 = *(v0 + 16);

  return sub_26BE1AC80(v3, &unk_26C01FA50, v1);
}

uint64_t sub_26BF5E048()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BF5E158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  type metadata accessor for MLS.MLSMessage(0);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for MLS.GroupState(0);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5E248, 0, 0);
}

uint64_t sub_26BF5E248()
{
  v15 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  v0[11] = v1;
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, v14);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: signing public application message", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  sub_26BE2FFCC();
  *v14 = *(v0[5] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v10 = 45;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0;
    *(v10 + 112) = 23;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_26BF5E50C;

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF5E50C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 172) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF5E670, 0, 0);
  }
}

uint64_t sub_26BF5E670()
{
  if (*(v0 + 172) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v4 + 152);
    v6 = *(v4 + 24);
    *(v0 + 16) = v5;
    *(v0 + 24) = v6;
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_26BF5E7DC;
    v8 = *(v0 + 80);

    return sub_26BF37CA4(v8, (v0 + 16), 1);
  }
}

uint64_t sub_26BF5E7DC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26BF5EF10;
  }

  else
  {
    v2 = sub_26BF5E8F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5E8F0()
{
  v30 = v0;
  v1 = *(v0 + 112);
  MLS.GroupState.generateSignedMessage(messageID:verifiableDerivedContent:)(*(*(v0 + 48) + 40), *(*(v0 + 48) + 48), *(v0 + 48), *(v0 + 56));
  if (v1)
  {
    sub_26BF7F05C(*(v0 + 80), type metadata accessor for MLS.GroupState);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    MLS.MLSMessage.rawValue.getter();
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    v6 = v2;
    v7 = v3;
    if (qword_28045DFD0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 88), qword_280478FB0);
    sub_26BE00608(v6, v7);
    v8 = sub_26C009A3C();
    v9 = sub_26C00A9FC();
    sub_26BE00258(v6, v7);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      v12 = sub_26C0090EC();
      v14 = sub_26BE29740(v12, v13, &v29);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_26BDFE000, v8, v9, "Produced signed message: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69A4E0](v11, -1, -1);
      MEMORY[0x26D69A4E0](v10, -1, -1);
    }

    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 136) = v17;
    v18 = *(*(v17 - 8) + 80);
    *(v0 + 168) = v18;
    v19 = (v18 + 32) & ~v18;
    v20 = swift_allocObject();
    *(v0 + 144) = v20;
    *(v20 + 16) = xmmword_26C011280;
    v21 = sub_26BE81FE0(*(v15 + *(v16 + 40)));
    if ((v21 & 0x100000000) != 0)
    {
      LODWORD(v21) = sub_26BE4126C();
    }

    v22 = v20 + v19;
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v25 = *(v0 + 64);
    v26 = *(v17 + 48);
    v27 = *(v23 + 24);
    *v22 = v21;
    *(v22 + 8) = v27;
    sub_26BF7F0BC(v23, v22 + v26, type metadata accessor for MLS.GroupState);
    (*(v24 + 56))(v22 + v26, 0, 1, v25);
    v28 = swift_task_alloc();
    *(v0 + 152) = v28;
    *v28 = v0;
    v28[1] = sub_26BF5ECC8;

    return sub_26BF394D4(v20);
  }
}

uint64_t sub_26BF5ECC8()
{
  *(*v1 + 160) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF5EF80;
  }

  else
  {
    v2 = sub_26BF5EE48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF5EE48()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[10];
  v4 = v0[4];
  sub_26BF7F05C(v0[7], type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  *v4 = v2;
  v4[1] = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF5EF10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF5EF80()
{
  v1 = v0[10];
  v2 = v0[7];
  sub_26BE00258(v0[15], v0[16]);
  sub_26BF7F05C(v2, type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v3 = v0[1];

  return v3();
}

void sub_26BF5F038(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unsigned __int16 *a8@<X7>, void *a9@<X8>)
{
  v11 = v9;
  v105 = a6;
  v113 = a4;
  v98 = a2;
  v18 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v18 - 8);
  v104 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *a8;
  v95 = *(a8 + 2);
  v20 = *(type metadata accessor for MLS.GroupState(0) + 40);
  v103 = a1;
  v102 = *(a1 + v20);
  v21 = sub_26BE81FE0(v102);
  v22 = a3;
  if (v10)
  {
  }

  else if ((v21 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  v21 = sub_26BE4126C();
LABEL_5:
  v101 = 0;
  v100 = v21;
  v23 = a9;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v24 = sub_26C009A5C();
  __swift_project_value_buffer(v24, qword_280478EE8);

  v25 = v113;
  sub_26BE00608(v113, a5);
  v26 = v105;
  sub_26BE2BAE8(v105, a7);
  v27 = sub_26C009A3C();
  v28 = sub_26C00AA1C();

  sub_26BE00258(v25, a5);
  sub_26BE132D4(v26, a7);
  v99 = v28;
  v29 = os_log_type_enabled(v27, v28);
  v97 = v11;
  if (v29)
  {
    v91 = v27;
    v93 = v22;
    v94 = v23;
    v30 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v109[0] = v90;
    *v30 = 136315906;

    v31 = sub_26BE3D034();
    v32 = a5;
    v34 = v33;

    v35 = sub_26BE29740(v31, v34, v109);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v92 = v32;
    v36 = v101;
    *&v106 = sub_26BF87240(v25, v32);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v101 = v37;
    v38 = sub_26C00A3EC();
    v40 = v39;

    v41 = sub_26BE411D0(16, v38, v40);
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = MEMORY[0x26D698FE0](v41, v43, v45, v47);
    v50 = v49;

    v51 = sub_26BE29740(v48, v50, v109);

    *(v30 + 14) = v51;
    *(v30 + 22) = 2080;
    if (a7 >> 60 == 15)
    {
      v52 = sub_26C00AACC();
      v56 = v55;
    }

    else
    {
      *&v106 = sub_26BF87240(v105, a7);
      v60 = sub_26C00A3EC();
      v62 = v61;

      v63 = sub_26BE411D0(16, v60, v62);
      v65 = v64;
      v67 = v66;
      v56 = v68;

      v54 = v67;
      v53 = v65;
      v52 = v63;
    }

    v69 = MEMORY[0x26D698FE0](v52, v53, v54, v56);
    v71 = v70;

    v72 = sub_26BE29740(v69, v71, v109);

    *(v30 + 24) = v72;
    *(v30 + 32) = 1024;
    *(v30 + 34) = v100;
    v73 = v91;
    _os_log_impl(&dword_26BDFE000, v91, v99, "%s: encrypting application message with AAD for messageID %s and originalMessageID %s, era %u", v30, 0x26u);
    v74 = v90;
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v74, -1, -1);
    MEMORY[0x26D69A4E0](v30, -1, -1);

    v57 = v94;
    v59 = v104;
    v58 = v93;
    a5 = v92;
  }

  else
  {

    v57 = v23;
    v58 = v22;
    v59 = v104;
    v36 = v101;
  }

  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v75 = sub_26BE81FE0(v102);
  v76 = v113;
  if (v36)
  {
  }

  else if ((v75 & 0x100000000) == 0)
  {
    goto LABEL_17;
  }

  LODWORD(v75) = sub_26BE4126C();
LABEL_17:
  v112 = 0;
  memset(v111, 0, sizeof(v111));
  LOWORD(v109[0]) = 1;
  v109[1] = v76;
  v109[2] = a5;
  v110 = v75;
  sub_26BE00608(v76, a5);
  sub_26BE7170C(&v106, v111, &qword_28045E2A8, &qword_26C028DD0);
  v106 = xmmword_26C00BBD0;
  *&v107 = 0;
  sub_26BFF933C(v109);
  v77 = v106;
  v78 = *(&v106 + 1) >> 62;
  if ((*(&v106 + 1) >> 62) > 1)
  {
    if (v78 != 2)
    {
      goto LABEL_25;
    }

    v79 = *(v106 + 24);
  }

  else
  {
    if (!v78)
    {
      goto LABEL_25;
    }

    v79 = v106 >> 32;
  }

  if (v79 < 0)
  {
    __break(1u);
  }

LABEL_25:
  v80 = sub_26C00909C();
  v82 = v81;
  sub_26BE00258(v77, *(&v77 + 1));
  v83 = *(v97 + 48);
  swift_beginAccess();
  v84 = *(v83 + 50);
  sub_26BE00258(0, 0xC000000000000000);
  v85 = v96;
  if (v95)
  {
    v85 = v84 & 1;
  }

  *&v106 = v80;
  *(&v106 + 1) = v82;
  *&v107 = 0;
  WORD4(v107) = v85;
  BYTE10(v107) = v95 & ~v84;
  sub_26BE00608(v80, v82);
  MLS.GroupState.generateApplicationMessage(message:options:)(v98, v58, &v106, v59);
  sub_26BE00258(v106, *(&v106 + 1));
  MLS.MLSMessage.rawValue.getter();
  v87 = v86;
  v89 = v88;
  sub_26BF7F05C(v59, type metadata accessor for MLS.MLSMessage);
  sub_26BE6FDD8(v109);
  *v57 = v87;
  v57[1] = v89;
  sub_26BE00258(v80, v82);
}

uint64_t sub_26BF5F78C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  return MEMORY[0x2822009F8](sub_26BF5F7BC, 0, 0);
}

uint64_t sub_26BF5F7BC()
{

  sub_26BF7E0E0((v0 + 2), (v0 + 8));
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BF5F880;
  v2 = v0[14];
  v3 = v0[15];

  return sub_26BEA0BB8(v2, v3, v3, (v0 + 2));
}

uint64_t sub_26BF5F880()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BF5F974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for MLS.GroupState(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5FA38, 0, 0);
}

uint64_t sub_26BF5FA38()
{
  v15 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  v0[10] = v1;
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, v14);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: encrypting application message with AAD", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  sub_26BE2FFCC();
  *v14 = *(v0[5] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v10 = 45;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0;
    *(v10 + 112) = 23;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_26BF5FCF0;

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF5FCF0(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 164) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF5FE48, 0, 0);
  }
}

uint64_t sub_26BF5FE48()
{
  if (*(v0 + 164) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v4 + 152);
    v6 = *(v4 + 24);
    *(v0 + 16) = v5;
    *(v0 + 24) = v6;
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_26BF5FFA8;
    v8 = *(v0 + 72);

    return sub_26BF37CA4(v8, (v0 + 16), 0);
  }
}

uint64_t sub_26BF5FFA8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26BF6046C;
  }

  else
  {
    v2 = sub_26BF600BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF600BC()
{
  v38 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v36 = 0;
  v37 = 1;
  sub_26BF5F038(v2, v4, v5, v6, v7, v8, v9, &v36, v35);
  if (v1)
  {
    sub_26BF7F05C(*(v0 + 72), type metadata accessor for MLS.GroupState);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = v35[0];
    v13 = v35[1];
    *(v0 + 112) = v35[0];
    *(v0 + 120) = v13;
    if (qword_28045DFD0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 80), qword_280478FB0);
    sub_26BE00608(v12, v13);
    v14 = sub_26C009A3C();
    v15 = sub_26C00A9FC();
    sub_26BE00258(v12, v13);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35[0] = v17;
      *v16 = 136315138;
      v18 = sub_26C0090EC();
      v20 = sub_26BE29740(v18, v19, v35);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_26BDFE000, v14, v15, "Produced application message with AAD: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x26D69A4E0](v17, -1, -1);
      MEMORY[0x26D69A4E0](v16, -1, -1);
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 128) = v23;
    v24 = *(*(v23 - 8) + 80);
    *(v0 + 160) = v24;
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    *(v0 + 136) = v26;
    *(v26 + 16) = xmmword_26C011280;
    v27 = sub_26BE81FE0(*(v21 + *(v22 + 40)));
    if ((v27 & 0x100000000) != 0)
    {
      LODWORD(v27) = sub_26BE4126C();
    }

    v28 = v26 + v25;
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);
    v32 = *(v23 + 48);
    v33 = *(v29 + 24);
    *v28 = v27;
    *(v28 + 8) = v33;
    sub_26BF7F0BC(v29, v28 + v32, type metadata accessor for MLS.GroupState);
    (*(v30 + 56))(v28 + v32, 0, 1, v31);
    v34 = swift_task_alloc();
    *(v0 + 144) = v34;
    *v34 = v0;
    v34[1] = sub_26BF604D0;

    return sub_26BF394D4(v26);
  }
}

uint64_t sub_26BF6046C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF604D0()
{
  *(*v1 + 152) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF606E8;
  }

  else
  {
    v2 = sub_26BF60650;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF60650()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[4];
  sub_26BF7F05C(v0[9], type metadata accessor for MLS.GroupState);
  *v3 = v2;
  v3[1] = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF606E8()
{
  v1 = v0[9];
  sub_26BE00258(v0[14], v0[15]);
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF60774(uint64_t a1, int *a2, unsigned int *a3)
{
  v5 = v4;
  v6 = v3;
  v7 = *a2;
  v8 = *a3;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v9 = sub_26C009A5C();
  __swift_project_value_buffer(v9, qword_280478EE8);
  swift_retain_n();
  v10 = sub_26C009A3C();
  v11 = sub_26C00AA1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v61 = v54;
    *v12 = 136316418;

    log = v10;
    v13 = sub_26BE3D034();
    v15 = v14;

    v16 = sub_26BE29740(v13, v15, &v61);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v7;
    *(v12 + 18) = 1024;
    *(v12 + 20) = v8;
    *(v12 + 24) = 2080;
    v65 = v8;
    v18 = *(v6 + 32);
    v17 = *(v6 + 40);
    sub_26BE00608(v18, v17);
    v19 = sub_26BF87240(v18, v17);
    v64 = v11;
    *&v56 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    v20 = v7;
    sub_26BE3C0F4();
    v21 = sub_26C00A3EC();
    v23 = v22;
    v24 = v17;
    v8 = v65;
    sub_26BE00258(v18, v24);
    v5 = v4;

    v25 = sub_26BE29740(v21, v23, &v61);
    v7 = v20;

    *(v12 + 26) = v25;
    *(v12 + 34) = 2048;
    v26 = *(v6 + 24);

    *(v12 + 36) = v26;

    *(v12 + 44) = 1024;
    LODWORD(v26) = *(v6 + 152);

    *(v12 + 46) = v26;

    _os_log_impl(&dword_26BDFE000, log, v64, "%s: generating outer info and AAD for FTD replay: sender %u, receiver %u, groupID %s, epoch %lld, era %u", v12, 0x32u);
    v11 = v54;
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v54, -1, -1);
    MEMORY[0x26D69A4E0](v12, -1, -1);
  }

  else
  {
  }

  v27 = sub_26BE099A8(0xD00000000000001ALL, 0x800000026C02D0D0);
  v29 = *(v6 + 32);
  v28 = *(v6 + 40);
  v30 = *(v6 + 24);
  v31 = *(v6 + 152);
  *&v61 = v27;
  *(&v61 + 1) = v32;
  *&v62 = v29;
  *(&v62 + 1) = v28;
  *v63 = v30;
  *&v63[8] = v31;
  *&v63[12] = v8;
  *&v63[16] = v7;
  v63[20] = 1;
  v59 = xmmword_26C00BBD0;
  v60 = 0;
  v56 = v61;
  v57 = v62;
  v58[0] = *v63;
  *(v58 + 13) = *&v63[13];
  sub_26BE00608(v29, v28);
  sub_26BE7ACD8(&v56);
  if (!v5)
  {
    v33 = v59;
    v34 = *(&v59 + 1) >> 62;
    if ((*(&v59 + 1) >> 62) > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_16;
      }

      v35 = *(v59 + 24);
    }

    else
    {
      if (!v34)
      {
        goto LABEL_16;
      }

      v35 = v59 >> 32;
    }

    if (v35 < 0)
    {
      __break(1u);
    }

LABEL_16:
    v65 = v8;
    v11 = sub_26C00909C();
    sub_26BE00258(v33, *(&v33 + 1));

    v36 = sub_26C009A3C();
    v37 = sub_26C00AA1C();

    if (os_log_type_enabled(v36, v37))
    {
      v55 = v7;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v56 = v39;
      *v38 = 136315138;

      v40 = sub_26BE3D034();
      v41 = v11;
      v43 = v42;

      v44 = sub_26BE29740(v40, v43, &v56);
      v11 = v41;

      *(v38 + 4) = v44;
      _os_log_impl(&dword_26BDFE000, v36, v37, "%s: generating HPKE AAD for FTD replay", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x26D69A4E0](v39, -1, -1);
      v45 = v38;
      v7 = v55;
      MEMORY[0x26D69A4E0](v45, -1, -1);
    }

    v47 = *(v6 + 32);
    v46 = *(v6 + 40);
    v48 = *(v6 + 24);
    v49 = *(v6 + 152);
    v59 = xmmword_26C00BBD0;
    v60 = 0;
    *&v56 = v47;
    *(&v56 + 1) = v46;
    *&v57 = v48;
    *(&v57 + 1) = __PAIR64__(v65, v49);
    LODWORD(v58[0]) = v7;
    sub_26BE00608(v47, v46);
    sub_26BE7AFEC(&v56);
    v51 = v59;
    v52 = *(&v59 + 1) >> 62;
    if ((*(&v59 + 1) >> 62) > 1)
    {
      if (v52 != 2 || (*(v59 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (!v52 || ((v59 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_28:
    sub_26C00909C();
    sub_26BF7EC9C(&v61);
    sub_26BE00258(v47, v46);
    sub_26BE00258(v51, *(&v51 + 1));
    return v11;
  }

  sub_26BF7EC9C(&v61);
  sub_26BE00258(v59, *(&v59 + 1));
  return v11;
}

uint64_t sub_26BF60D64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BF60D88, 0, 0);
}

uint64_t sub_26BF60D88()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_26BF7F1C8;
  v3 = *(v0 + 16);

  return sub_26BE1AC80(v3, &unk_26C01FA70, v1);
}

uint64_t sub_26BF60E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[153] = a3;
  v3[152] = a2;
  v3[151] = a1;
  v4 = type metadata accessor for MLS.GroupState(0);
  v3[154] = v4;
  v3[155] = *(v4 - 8);
  v3[156] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF60F34, 0, 0);
}

uint64_t sub_26BF60F34()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[153];
  v2 = sub_26C009A5C();
  v0[157] = v2;
  v0[158] = __swift_project_value_buffer(v2, qword_280478EE8);
  sub_26BF7EF44(v1, (v0 + 114));

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19[0] = v6;
    *v5 = 136315394;

    v7 = sub_26BE3D034();
    v9 = v8;

    v10 = sub_26BE29740(v7, v9, v19);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = MLS.Identity.SigningIdentity.description.getter();
    v13 = v12;
    sub_26BF7EFA0((v0 + 114));
    v14 = sub_26BE29740(v11, v13, v19);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: encrypting wrapped application message for recipient %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v6, -1, -1);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }

  else
  {

    sub_26BF7EFA0((v0 + 114));
  }

  sub_26BE2FFCC();
  *v19 = *(v0[152] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v15 = 45;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0;
    *(v15 + 112) = 23;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[159] = v18;
    *v18 = v0;
    v18[1] = sub_26BF61264;

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF61264(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 537) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF613BC, 0, 0);
  }
}

uint64_t sub_26BF613BC()
{
  if (*(v0 + 537) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 1216);
    v5 = *(v4 + 152);
    v6 = *(v4 + 24);
    *(v0 + 1192) = v5;
    *(v0 + 1200) = v6;
    v7 = swift_task_alloc();
    *(v0 + 1280) = v7;
    *v7 = v0;
    v7[1] = sub_26BF61518;
    v8 = *(v0 + 1248);

    return sub_26BF37CA4(v8, (v0 + 1192), 0);
  }
}

uint64_t sub_26BF61518()
{
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v2 = sub_26BF62704;
  }

  else
  {
    v2 = sub_26BF6162C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF6162C()
{
  v144 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1224) + 16;
  *(v0 + 540) = 0;
  *(v0 + 544) = 1;
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  LOWORD(v139) = *(v2 + 32);
  v140 = v5;
  LODWORD(v141) = v6;
  v142 = v7;
  v8 = swift_task_alloc();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v0 + 540;

  MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BF7F1CC);
  if (v1)
  {
    v9 = *(v0 + 1248);

LABEL_11:
    sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState);
LABEL_12:

    v62 = *(v0 + 8);

    return v62();
  }

  if (*(v0 + 544))
  {

    v11 = sub_26C009A3C();
    v12 = sub_26C00AA0C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v139 = v14;
      *v13 = 136315138;

      v15 = sub_26BE3D034();
      v17 = v16;

      v18 = sub_26BE29740(v15, v17, &v139);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26BDFE000, v11, v12, "%s: when generating wrapped application message, recipient not found in group", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D69A4E0](v14, -1, -1);
      MEMORY[0x26D69A4E0](v13, -1, -1);
    }

    v9 = *(v0 + 1248);
    *(v0 + 424) = 3;
    *(v0 + 536) = 9;
    v19 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 424, v0 + 552);
    v20 = swift_allocObject();
    v21 = *(v0 + 632);
    *(v20 + 88) = *(v0 + 616);
    *(v20 + 104) = v21;
    *(v20 + 120) = *(v0 + 648);
    v22 = *(v0 + 568);
    *(v20 + 24) = *(v0 + 552);
    *(v20 + 40) = v22;
    v23 = *(v0 + 600);
    *(v20 + 56) = *(v0 + 584);
    *(v20 + 16) = 2;
    *(v20 + 136) = *(v0 + 664);
    *(v20 + 72) = v23;
    *(v0 + 1032) = sub_26BE2E3DC;
    *(v0 + 1040) = v20;
    *(v0 + 1000) = MEMORY[0x277D85DD0];
    *(v0 + 1008) = 1107296256;
    *(v0 + 1016) = sub_26BEB8234;
    *(v0 + 1024) = &block_descriptor_223;
    v24 = _Block_copy((v0 + 1000));

    AnalyticsSendEventLazy();
    _Block_release(v24);

    sub_26BE2DC9C(v0 + 424);
    sub_26BE01654();
    swift_allocError();
    *v25 = 3;
    v25[112] = 9;
    swift_willThrow();
    goto LABEL_11;
  }

  v26 = *(v0 + 540);
  LODWORD(v137) = *(*(v0 + 1248) + *(*(v0 + 1232) + 52));
  LODWORD(v139) = v26;
  v27 = sub_26BF60774(v10, &v137, &v139);
  *(v0 + 1296) = v27;
  *(v0 + 1304) = v28;
  *(v0 + 1312) = v29;
  *(v0 + 1320) = v30;
  v31 = v29;
  v32 = v30;
  v135 = v27;
  v136 = v28;
  v33 = *(v2 + 40);
  v34 = *(v2 + 48);
  v35 = *(v2 + 56);
  *(v0 + 1136) = *(v2 + 32);
  *(v0 + 1144) = v33;
  *(v0 + 1152) = v34;
  *(v0 + 1160) = v35;
  *(v0 + 548) = v26;

  MLS.TreeKEMPublicKey.find(leafIndex:)((v0 + 548), v0 + 16);

  v36 = *(v0 + 96);
  v38 = *(v0 + 112);
  v37 = *(v0 + 128);
  *(v0 + 384) = v38;
  *(v0 + 400) = v37;
  v39 = *(v0 + 32);
  v41 = *(v0 + 48);
  v40 = *(v0 + 64);
  *(v0 + 320) = v41;
  *(v0 + 336) = v40;
  v42 = *(v0 + 64);
  v44 = *(v0 + 80);
  v43 = *(v0 + 96);
  *(v0 + 352) = v44;
  *(v0 + 368) = v43;
  v45 = *(v0 + 32);
  v46 = *(v0 + 16);
  *(v0 + 288) = v46;
  *(v0 + 304) = v45;
  v47 = *(v0 + 128);
  *(v0 + 248) = v38;
  *(v0 + 264) = v47;
  *(v0 + 184) = v41;
  *(v0 + 200) = v42;
  *(v0 + 216) = v44;
  *(v0 + 232) = v36;
  *(v0 + 416) = *(v0 + 144);
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v46;
  *(v0 + 168) = v39;
  if (sub_26BE59C80(v0 + 152) == 1)
  {

    v48 = sub_26C009A3C();
    v49 = sub_26C00AA0C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v139 = v132;
      *v50 = 136315138;

      v51 = sub_26BE3D034();
      v53 = v52;

      v54 = sub_26BE29740(v51, v53, &v139);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_26BDFE000, v48, v49, "%s: when generating wrapped application message, encryption key not found for recipient", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x26D69A4E0](v132, -1, -1);
      MEMORY[0x26D69A4E0](v50, -1, -1);
    }

    v9 = *(v0 + 1248);
    *(v0 + 672) = 3;
    *(v0 + 784) = 9;
    v55 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 672, v0 + 792);
    v56 = swift_allocObject();
    v57 = *(v0 + 872);
    *(v56 + 88) = *(v0 + 856);
    *(v56 + 104) = v57;
    *(v56 + 120) = *(v0 + 888);
    v58 = *(v0 + 808);
    *(v56 + 24) = *(v0 + 792);
    *(v56 + 40) = v58;
    v59 = *(v0 + 840);
    *(v56 + 56) = *(v0 + 824);
    *(v56 + 16) = 2;
    *(v56 + 136) = *(v0 + 904);
    *(v56 + 72) = v59;
    *(v0 + 1080) = sub_26BE2E3DC;
    *(v0 + 1088) = v56;
    *(v0 + 1048) = MEMORY[0x277D85DD0];
    *(v0 + 1056) = 1107296256;
    *(v0 + 1064) = sub_26BEB8234;
    *(v0 + 1072) = &block_descriptor_230;
    v60 = _Block_copy((v0 + 1048));

    AnalyticsSendEventLazy();
    _Block_release(v60);

    sub_26BE2DC9C(v0 + 672);
    sub_26BE01654();
    swift_allocError();
    *v61 = 3;
    v61[112] = 9;
    swift_willThrow();
    sub_26BE00258(v31, v32);
    sub_26BE00258(v135, v136);
    goto LABEL_11;
  }

  v64 = *(v0 + 1216);
  v66 = *(v0 + 152);
  v65 = *(v0 + 160);
  *(v0 + 1328) = v66;
  *(v0 + 1336) = v65;
  sub_26BE00608(v66, v65);
  sub_26BE2E258(v0 + 288, &qword_28045E6A0, &unk_26C016520);
  v67 = *(v64 + 72);
  v69 = *(v64 + 80);
  v68 = *(v64 + 88);
  v70 = *(v64 + 96);
  v71 = *(v64 + 104);
  if (v67)
  {
    LOBYTE(v139) = 1;
    v140 = v69;
    v141 = v68;
    v142 = v70;
    v143 = v71;
    *(v0 + 1120) = type metadata accessor for P256EncryptionPublicKey(0);
    *(v0 + 1128) = sub_26BF7EFF4(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey, &protocol conformance descriptor for P256EncryptionPublicKey);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1096));

    sub_26BE00608(v66, v65);

    P256EncryptionPublicKey.init(data:ciphersuite:)(v66, v65, &v139, boxed_opaque_existential_1);
  }

  else
  {
    LOBYTE(v139) = 0;
    v140 = v69;
    v141 = v68;
    v142 = v70;
    v143 = v71;
    *(v0 + 1120) = type metadata accessor for Curve25519EncryptionPublicKey(0);
    *(v0 + 1128) = sub_26BF7EFF4(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey, &protocol conformance descriptor for Curve25519EncryptionPublicKey);
    v73 = __swift_allocate_boxed_opaque_existential_1((v0 + 1096));

    sub_26BE00608(v66, v65);

    Curve25519EncryptionPublicKey.init(data:ciphersuite:)(v66, v65, &v139, v73);
  }

  v74 = *(v0 + 1224);
  v75 = *(v0 + 1120);
  v76 = *(v0 + 1128);
  __swift_project_boxed_opaque_existential_1((v0 + 1096), v75);
  v77 = (*(v76 + 24))(v135, v136, v31, v32, *v74, v74[1], v75, v76);
  *(v0 + 1344) = v77;
  *(v0 + 1352) = v78;
  *(v0 + 1360) = v79;
  *(v0 + 1368) = v80;
  v81 = v78;
  v137 = xmmword_26C00BBD0;
  v138 = 0;
  LODWORD(v139) = v26;
  v140 = v79;
  v141 = v80;
  v142 = v77;
  v143 = v78;
  v82 = v77;
  aBlock = v80;
  v83 = v79;
  sub_26BE00608(v79, v80);
  sub_26BE00608(v82, v81);
  sub_26BE7B1F4(&v139);
  v130 = v83;
  v131 = v82;
  v133 = v81;
  v84 = v137;
  v85 = *(&v137 + 1) >> 62;
  if ((*(&v137 + 1) >> 62) > 1)
  {
    if (v85 != 2)
    {
      goto LABEL_26;
    }

    v86 = *(v137 + 24);
  }

  else
  {
    if (!v85)
    {
      goto LABEL_26;
    }

    v86 = v137 >> 32;
  }

  if (v86 < 0)
  {
    __break(1u);
  }

LABEL_26:
  v87 = *(v0 + 1216);
  v128 = sub_26C00909C();
  v129 = v88;
  *(v0 + 1376) = v128;
  *(v0 + 1384) = v88;
  sub_26BE00258(v84, *(&v84 + 1));
  v89 = *(v87 + 48);
  swift_beginAccess();
  if (*(v89 + 50) != 1)
  {

    v94 = sub_26C009A3C();
    v95 = sub_26C00AA0C();

    v126 = v95;
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v139 = v125;
      *v96 = 136315138;

      v97 = sub_26BE3D034();
      v99 = v98;

      v100 = sub_26BE29740(v97, v99, &v139);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_26BDFE000, v94, v126, "%s: must use 'configuration.mlsOptions.encryptionOptions.useSecretPayload' with encryptWrappedApplicationMessage", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      MEMORY[0x26D69A4E0](v125, -1, -1);
      MEMORY[0x26D69A4E0](v96, -1, -1);
    }

    v127 = *(v0 + 1248);
    sub_26BE01654();
    swift_allocError();
    *v101 = 0xD00000000000006CLL;
    *(v101 + 8) = 0x800000026C02D0F0;
    *(v101 + 112) = 2;
    swift_willThrow();
    sub_26BE00258(v130, aBlock);
    sub_26BE00258(v131, v133);
    sub_26BE00258(v66, v65);
    sub_26BE00258(v31, v32);
    sub_26BE00258(v135, v136);
    sub_26BE00258(v128, v129);
    sub_26BE00258(v131, v133);
    sub_26BE00258(v130, aBlock);
    sub_26BF7F05C(v127, type metadata accessor for MLS.GroupState);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1096));
    goto LABEL_12;
  }

  v90 = *(v0 + 1248);
  v91 = *(v0 + 1224);
  v92 = *(v91 + 72);
  v93 = *(v91 + 80);
  LOWORD(v137) = 2;
  BYTE2(v137) = 0;
  sub_26BF5F038(v90, v128, v129, v92, v93, 0, 0xF000000000000000, &v137, &v139);
  v102 = v139;
  v103 = v140;
  *(v0 + 1392) = v139;
  *(v0 + 1400) = v103;
  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1256), qword_280478FB0);
  sub_26BE00608(v102, v103);
  v104 = sub_26C009A3C();
  v105 = sub_26C00A9FC();
  sub_26BE00258(v102, v103);
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v139 = v107;
    *v106 = 136315138;
    v108 = sub_26C0090EC();
    v110 = sub_26BE29740(v108, v109, &v139);

    *(v106 + 4) = v110;
    _os_log_impl(&dword_26BDFE000, v104, v105, "Produced wrapped application message: %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x26D69A4E0](v107, -1, -1);
    MEMORY[0x26D69A4E0](v106, -1, -1);
  }

  v111 = *(v0 + 1248);
  v112 = *(v0 + 1232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 1408) = v113;
  v114 = *(*(v113 - 8) + 80);
  *(v0 + 668) = v114;
  v115 = (v114 + 32) & ~v114;
  v116 = swift_allocObject();
  *(v0 + 1416) = v116;
  *(v116 + 16) = xmmword_26C011280;
  v117 = sub_26BE81FE0(*(v111 + *(v112 + 40)));
  if ((v117 & 0x100000000) != 0)
  {
    LODWORD(v117) = sub_26BE4126C();
  }

  v118 = v116 + v115;
  v119 = *(v0 + 1248);
  v120 = *(v0 + 1240);
  v121 = *(v0 + 1232);
  v122 = *(v113 + 48);
  v123 = *(v119 + 24);
  *v118 = v117;
  *(v118 + 8) = v123;
  sub_26BF7F0BC(v119, v118 + v122, type metadata accessor for MLS.GroupState);
  (*(v120 + 56))(v118 + v122, 0, 1, v121);
  v124 = swift_task_alloc();
  *(v0 + 1424) = v124;
  *v124 = v0;
  v124[1] = sub_26BF62768;

  return sub_26BF394D4(v116);
}

uint64_t sub_26BF62704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF62768()
{
  *(*v1 + 1432) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v2 = sub_26BF62A4C;
  }

  else
  {
    v2 = sub_26BF628E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF628E8()
{
  v17 = v0[174];
  v18 = v0[175];
  v13 = v0[172];
  v14 = v0[173];
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[168];
  v5 = v0[167];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[164];
  v12 = v0[163];
  v9 = v0[162];
  v15 = v0[156];
  v16 = v0[151];
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE00258(v6, v5);
  sub_26BE00258(v8, v7);
  sub_26BE00258(v9, v12);
  sub_26BE00258(v13, v14);
  sub_26BE00258(v4, v3);
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v15, type metadata accessor for MLS.GroupState);
  *v16 = v17;
  v16[1] = v18;
  __swift_destroy_boxed_opaque_existential_1(v0 + 137);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF62A4C()
{
  v15 = v0[174];
  v16 = v0[175];
  v12 = v0[172];
  v13 = v0[171];
  v14 = v0[173];
  v1 = v0[170];
  v2 = v0[169];
  v3 = v0[168];
  v4 = v0[167];
  v5 = v0[166];
  v6 = v0[165];
  v7 = v0[164];
  v8 = v0[163];
  v9 = v0[162];
  v17 = v0[156];
  sub_26BE00258(v1, v13);
  sub_26BE00258(v3, v2);
  sub_26BE00258(v5, v4);
  sub_26BE00258(v7, v6);
  sub_26BE00258(v9, v8);
  sub_26BE00258(v12, v14);
  sub_26BE00258(v15, v16);
  sub_26BE00258(v3, v2);
  sub_26BE00258(v1, v13);
  sub_26BF7F05C(v17, type metadata accessor for MLS.GroupState);
  __swift_destroy_boxed_opaque_existential_1(v0 + 137);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF62BA4()
{
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_26BF62C50;

  return sub_26BEA6AC0(v1 + 16, v0);
}

uint64_t sub_26BF62C50()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_26BE3E180;
  }

  else
  {
    v2 = sub_26BF7F1BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_26BF62D64(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v137 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v7 = MEMORY[0x28223BE20](v137);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v128 - v10;
  v12 = type metadata accessor for MLS.MLSMessage(0);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v17 = *a2;
  v18 = *(*a2 + 16);
  if (!v18)
  {
    if (qword_28045DF80 == -1)
    {
LABEL_18:
      v47 = sub_26C009A5C();
      __swift_project_value_buffer(v47, qword_280478EE8);

      v48 = sub_26C009A3C();
      v49 = sub_26C00AA1C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v165 = v51;
        *v50 = 136315138;

        v52 = sub_26BE3D034();
        v54 = v53;

        v55 = sub_26BE29740(v52, v54, &v165);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_26BDFE000, v48, v49, "%s: no replacements to make, returning empty proposals", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x26D69A4E0](v51, -1, -1);
        MEMORY[0x26D69A4E0](v50, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_66:
    swift_once();
    goto LABEL_18;
  }

  v135 = &v128 - v15;
  v136 = v16;
  v130 = v9;
  v131 = v14;
  v128 = a1;
  v129 = v4;
  v138 = v3;
  v180 = MEMORY[0x277D84F90];
  v132 = v18;
  sub_26BECBB74(0, v18, 0);
  if (!*(v17 + 16))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v19 = 0;
  v20 = v180;
  v21 = v17 + 32;
  v133 = v17;
  v134 = v132 - 1;
  v22 = v17 + 32;
  v23 = v136;
  while (1)
  {
    v139 = v20;
    sub_26BF7EE94(v22, v177);
    v24 = 0;
    v25 = v178;
    v26 = v179;
    v27 = v179 >> 62;
    if ((v179 >> 62) > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_10;
      }

      v24 = *(v178 + 16);
    }

    else
    {
      if (!v27)
      {
        goto LABEL_10;
      }

      v24 = v178;
    }

    sub_26BE00608(v178, v179);
    sub_26BE00608(v25, v26);
LABEL_10:
    *&v165 = v25;
    *(&v165 + 1) = v26;
    *&v166 = v24;
    v28 = v138;
    sub_26BEE3C08(v23);
    v138 = v28;
    if (v28)
    {
      *&v152 = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F100, &qword_26C01A558);
      v57 = sub_26C00A4FC();
      v56 = v58;
      sub_26BE826C4(v57, v58, v25, v26);

      swift_willThrow();
      sub_26BE00258(v25, v26);
      sub_26BE00258(v165, *(&v165 + 1));
LABEL_63:
      sub_26BF7EEF0(v177);

      return v56;
    }

    sub_26BE00258(v25, v26);
    sub_26BE00258(v165, *(&v165 + 1));
    v29 = v135;
    sub_26BF7F124(v23, v135, type metadata accessor for MLS.MLSMessage);
    sub_26BF7F0BC(v29, v11, type metadata accessor for MLS.MLSMessage.Inner);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_26BF7F05C(v11, type metadata accessor for MLS.MLSMessage.Inner);
      sub_26BE01654();
      swift_allocError();
      v56 = v59;
      v60 = v130;
      sub_26BF7F0BC(v29, v130, type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v60, type metadata accessor for MLS.MLSMessage.Inner);
          v62 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v60, type metadata accessor for MLS.MLSMessage.Inner);
          v62 = 2;
        }

        else
        {
          v62 = *v60;
          sub_26BE00258(*(v60 + 8), *(v60 + 16));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v60, type metadata accessor for MLS.MLSMessage.Inner);
          v62 = 4;
        }

        else
        {
          sub_26BF7F05C(v60, type metadata accessor for MLS.MLSMessage.Inner);
          v62 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v60, type metadata accessor for MLS.MLSMessage.Inner);
        v62 = 3;
      }

      *v56 = v62;
      *(v56 + 1) = 5;
      v56[4] = 0;
      v56[112] = 17;
      swift_willThrow();
      sub_26BF7F05C(v29, type metadata accessor for MLS.MLSMessage);
      goto LABEL_63;
    }

    sub_26BF7F05C(v29, type metadata accessor for MLS.MLSMessage);
    sub_26BF7EEF0(v177);
    v30 = *(v11 + 3);
    v167 = *(v11 + 2);
    v168 = v30;
    v31 = *v11;
    v166 = *(v11 + 1);
    v32 = *(v11 + 7);
    v171 = *(v11 + 6);
    v172 = v32;
    v33 = *(v11 + 5);
    v169 = *(v11 + 4);
    v170 = v33;
    v34 = *(v11 + 10);
    v174 = *(v11 + 9);
    v175 = v34;
    v173 = *(v11 + 8);
    v176 = *(v11 + 22);
    v20 = v139;
    v36 = *(v139 + 16);
    v35 = *(v139 + 24);
    v165 = v31;
    v180 = v139;
    if (v36 >= v35 >> 1)
    {
      sub_26BECBB74((v35 > 1), v36 + 1, 1);
      v20 = v180;
    }

    *(v20 + 16) = v36 + 1;
    v37 = v20 + 184 * v36;
    v38 = v165;
    v39 = v166;
    v40 = v168;
    *(v37 + 64) = v167;
    *(v37 + 80) = v40;
    *(v37 + 32) = v38;
    *(v37 + 48) = v39;
    v41 = v169;
    v42 = v170;
    v43 = v172;
    *(v37 + 128) = v171;
    *(v37 + 144) = v43;
    *(v37 + 96) = v41;
    *(v37 + 112) = v42;
    v44 = v173;
    v45 = v174;
    v46 = v175;
    *(v37 + 208) = v176;
    *(v37 + 176) = v45;
    *(v37 + 192) = v46;
    *(v37 + 160) = v44;
    if (v134 == v19)
    {
      break;
    }

    v22 += 72;
    if (++v19 >= *(v133 + 16))
    {
      goto LABEL_65;
    }
  }

  v139 = v20;
  v164 = MEMORY[0x277D84F90];
  v63 = v132;
  sub_26BECBB54(0, v132, 0);
  v64 = v164;
  do
  {
    sub_26BF7EE94(v21, &v152);
    sub_26BE2DB68(&v152, &v140);
    sub_26BF7EEF0(&v152);
    v164 = v64;
    v66 = *(v64 + 16);
    v65 = *(v64 + 24);
    if (v66 >= v65 >> 1)
    {
      sub_26BECBB54((v65 > 1), v66 + 1, 1);
      v64 = v164;
    }

    *(v64 + 16) = v66 + 1;
    v67 = v64 + 56 * v66;
    v68 = v140;
    v69 = v141;
    v70 = v142;
    *(v67 + 80) = v143;
    *(v67 + 48) = v69;
    *(v67 + 64) = v70;
    *(v67 + 32) = v68;
    v21 += 72;
    --v63;
  }

  while (v63);
  v56 = v129;
  v71 = v138;
  v72 = sub_26BF58738(v128, v64);
  v138 = v71;
  if (v71)
  {

    return v56;
  }

  v73 = v72;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v74 = sub_26C009A5C();
  __swift_project_value_buffer(v74, qword_280478EE8);
  v75 = v139;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v76 = sub_26C009A3C();
  v77 = sub_26C00AA1C();

  if (!os_log_type_enabled(v76, v77))
  {

    swift_bridgeObjectRelease_n();
    v86 = *(v73 + 2);
    if (v86)
    {
      goto LABEL_39;
    }

    goto LABEL_48;
  }

  v78 = swift_slowAlloc();
  v137 = swift_slowAlloc();
  *&v152 = v137;
  *v78 = 136315650;

  v79 = sub_26BE3D034();
  v81 = v80;

  v82 = sub_26BE29740(v79, v81, &v152);

  *(v78 + 4) = v82;
  *(v78 + 12) = 2048;
  v83 = *(v75 + 16);

  *(v78 + 14) = v83;

  *(v78 + 22) = 2048;
  v84 = *(v73 + 2);

  *(v78 + 24) = v84;

  _os_log_impl(&dword_26BDFE000, v76, v77, "%s: generating proposals for %ld adds and %ld removes", v78, 0x20u);
  v85 = v137;
  __swift_destroy_boxed_opaque_existential_1(v137);
  MEMORY[0x26D69A4E0](v85, -1, -1);
  MEMORY[0x26D69A4E0](v78, -1, -1);

  v86 = *(v73 + 2);
  if (!v86)
  {
LABEL_48:

    v56 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

LABEL_39:
  v87 = v86 - 1;
  v56 = MEMORY[0x277D84F90];
  for (i = 32; ; i += 4)
  {
    v89 = *&v73[i];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_26BEED780(0, *(v56 + 2) + 1, 1, v56);
    }

    v91 = *(v56 + 2);
    v90 = *(v56 + 3);
    if (v91 >= v90 >> 1)
    {
      v56 = sub_26BEED780((v90 > 1), v91 + 1, 1, v56);
    }

    LODWORD(v152) = v89;
    sub_26BE71934(&v152);
    *(v56 + 2) = v91 + 1;
    v92 = &v56[184 * v91];
    v93 = v152;
    v94 = v153;
    v95 = v155;
    *(v92 + 4) = v154;
    *(v92 + 5) = v95;
    *(v92 + 2) = v93;
    *(v92 + 3) = v94;
    v96 = v156;
    v97 = v157;
    v98 = v159;
    *(v92 + 8) = v158;
    *(v92 + 9) = v98;
    *(v92 + 6) = v96;
    *(v92 + 7) = v97;
    v99 = v160;
    v100 = v161;
    v101 = v162;
    *(v92 + 26) = v163;
    *(v92 + 11) = v100;
    *(v92 + 12) = v101;
    *(v92 + 10) = v99;
    if (!v87)
    {
      break;
    }

    --v87;
  }

LABEL_49:
  v102 = v139;
  v103 = *(v139 + 16);
  if (v103)
  {
    v104 = v103 - 1;
    for (j = 32; ; j += 184)
    {
      v106 = *(v102 + j);
      v107 = *(v102 + j + 16);
      v108 = *(v102 + j + 48);
      v154 = *(v102 + j + 32);
      v155 = v108;
      v152 = v106;
      v153 = v107;
      v109 = *(v102 + j + 64);
      v110 = *(v102 + j + 80);
      v111 = *(v102 + j + 112);
      v158 = *(v102 + j + 96);
      v159 = v111;
      v156 = v109;
      v157 = v110;
      v112 = *(v102 + j + 128);
      v113 = *(v102 + j + 144);
      v114 = *(v102 + j + 160);
      v163 = *(v102 + j + 176);
      v161 = v113;
      v162 = v114;
      v160 = v112;
      sub_26BE2DFC0(&v152, &v140);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_26BEED780(0, *(v56 + 2) + 1, 1, v56);
      }

      v116 = *(v56 + 2);
      v115 = *(v56 + 3);
      if (v116 >= v115 >> 1)
      {
        v56 = sub_26BEED780((v115 > 1), v116 + 1, 1, v56);
      }

      v148 = v160;
      v149 = v161;
      v150 = v162;
      v151 = v163;
      v144 = v156;
      v145 = v157;
      v146 = v158;
      v147 = v159;
      v140 = v152;
      v141 = v153;
      v142 = v154;
      v143 = v155;
      sub_26BE7FED4(&v140);
      *(v56 + 2) = v116 + 1;
      v117 = &v56[184 * v116];
      v118 = v140;
      v119 = v141;
      v120 = v143;
      *(v117 + 4) = v142;
      *(v117 + 5) = v120;
      *(v117 + 2) = v118;
      *(v117 + 3) = v119;
      v121 = v144;
      v122 = v145;
      v123 = v147;
      *(v117 + 8) = v146;
      *(v117 + 9) = v123;
      *(v117 + 6) = v121;
      *(v117 + 7) = v122;
      v124 = v148;
      v125 = v149;
      v126 = v150;
      *(v117 + 26) = v151;
      *(v117 + 11) = v125;
      *(v117 + 12) = v126;
      *(v117 + 10) = v124;
      if (!v104)
      {
        break;
      }

      --v104;
      v102 = v139;
    }
  }

  return v56;
}

uint64_t sub_26BF63934(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_26BF6395C, 0, 0);
}

uint64_t sub_26BF6395C()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F19C;
  v2 = *(v0 + 16);

  return (sub_26BEA4D20)(v2);
}

uint64_t sub_26BF63A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  v3[35] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v3[36] = swift_task_alloc();
  type metadata accessor for MLS.GroupState(0);
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF63AE8, 0, 0);
}

uint64_t sub_26BF63AE8()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 272);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v19);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    v12 = *(v5 + 16);

    *(v6 + 14) = v12;

    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: replacing %ld members of the group due to expired credentials", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = *(v0 + 264);
  v14 = *(v13 + 152);
  v15 = *(v13 + 24);
  *(v0 + 240) = v14;
  *(v0 + 248) = v15;
  v16 = swift_task_alloc();
  *(v0 + 304) = v16;
  *v16 = v0;
  v16[1] = sub_26BF63D40;
  v17 = *(v0 + 296);

  return sub_26BF37CA4(v17, (v0 + 240), 0);
}

uint64_t sub_26BF63D40()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_26BF6409C;
  }

  else
  {
    v2 = sub_26BF63E54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF63E54()
{
  v15 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v14 = *(v0 + 272);
  v3 = sub_26BF62D64(v2, &v14);
  *(v0 + 320) = v3;
  if (v1)
  {
    sub_26BF7F05C(*(v0 + 296), type metadata accessor for MLS.GroupState);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = v3;
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    *(v0 + 232) = 0;
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 32) = 0u;
    sub_26BE2962C(0, 0x3000000000000000uLL);
    *(v0 + 16) = xmmword_26C00DA50;
    sub_26BE7170C(v0 + 200, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE701EC(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    v9 = v8[5];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    (*(*(v10 - 8) + 56))(&v7[v9], 1, 3, v10);
    *v7 = 0;
    v7[v8[6]] = 0;
    v7[v8[7]] = 0;
    v7[v8[8]] = 0;
    *&v7[v8[9]] = MEMORY[0x277D84F90];
    v11 = swift_task_alloc();
    *(v0 + 328) = v11;
    *v11 = v0;
    v11[1] = sub_26BF64108;
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);

    return sub_26BF54A88(v0 + 120, v12, v6, v0 + 16, v13);
  }
}

uint64_t sub_26BF6409C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF64108()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  sub_26BF7F05C(*(v2 + 288), type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8(v2 + 16);
  if (v0)
  {
    v3 = sub_26BF64334;
  }

  else
  {
    v3 = sub_26BF6427C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF6427C()
{
  v1 = *(v0 + 256);
  sub_26BF7F05C(*(v0 + 296), type metadata accessor for MLS.GroupState);
  *v1 = *(v0 + 120);
  v2 = *(v0 + 152);
  v3 = *(v0 + 184);
  v4 = *(v0 + 136);
  v1[3] = *(v0 + 168);
  v1[4] = v3;
  v1[1] = v4;
  v1[2] = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26BF64334()
{
  sub_26BF7F05C(*(v0 + 296), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF643BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BF643DC, 0, 0);
}

uint64_t sub_26BF643DC()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F1A0;
  v2 = v0[2];
  v3 = v0[3];

  return sub_26BEA7040(v2, v3, v3);
}

uint64_t sub_26BF64494(uint64_t a1, uint64_t a2)
{
  v2[90] = a2;
  v2[89] = a1;
  v2[91] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v2[92] = swift_task_alloc();
  v3 = sub_26C00A4EC();
  v2[93] = v3;
  v2[94] = *(v3 - 8);
  v2[95] = swift_task_alloc();
  v2[96] = type metadata accessor for MLS.GroupState(0);
  v2[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF645B8, 0, 0);
}

uint64_t sub_26BF645B8()
{
  v17 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: downgrading to unencrypted", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 720);
  v11 = *(v10 + 152);
  v12 = *(v10 + 24);
  *(v0 + 696) = v11;
  *(v0 + 704) = v12;
  v13 = swift_task_alloc();
  *(v0 + 784) = v13;
  *v13 = v0;
  v13[1] = sub_26BF647C0;
  v14 = *(v0 + 776);

  return sub_26BF37CA4(v14, (v0 + 696), 0);
}