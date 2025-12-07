uint64_t sub_22B957164(void *a1, uint64_t a2, void *a3, void *a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = sub_22BA0FD8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v63 = &type metadata for FileManagerProvider;
  v64 = &off_283F53B48;
  v62[0] = a3;
  v15 = a3;
  [a1 setStatusValue_];
  v16 = [a4 recordID];
  v17 = [v16 zoneID];

  v18 = [v17 zoneName];
  if (!v18)
  {
    sub_22BA0FFFC();
    v18 = sub_22BA0FFCC();
  }

  [a1 setZoneName_];

  sub_22BA106BC();
  v19 = sub_22BA0FFCC();

  [a1 setRecordType_];

  v20 = [a4 recordID];
  v21 = [v20 recordName];

  if (!v21)
  {
    sub_22BA0FFFC();
    v21 = sub_22BA0FFCC();
  }

  [a1 setRecordName_];

  v22 = [a4 modificationDate];
  if (v22)
  {
    v23 = v22;
    sub_22BA0FD5C();

    v24 = sub_22BA0FCFC();
    (*(v9 + 8))(v14, v8);
  }

  else
  {
    v24 = 0;
  }

  [a1 setDateRead_];

  v25 = [a4 modificationDate];
  if (v25)
  {
    v26 = v25;
    sub_22BA0FD5C();

    v27 = sub_22BA0FCFC();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v27 = 0;
  }

  [a1 setModificationDate_];

  v28 = [a4 recordChangeTag];
  [a1 setChangeTag_];

  v29 = sub_22B9358B4(v62, v63);
  v30 = sub_22B955688(*v29, a4);
  sub_22B9527A8(v30);
  if (v31)
  {
    v32 = sub_22BA0FFCC();
  }

  else
  {
    v32 = 0;
  }

  [a1 setGuid_];

  sub_22B952CD4(v30);
  if (v33)
  {
    v34 = sub_22BA0FFCC();
  }

  else
  {
    v34 = 0;
  }

  [a1 setParentID_];

  v35 = objc_opt_self();
  v36 = sub_22BA0FF5C();

  v61 = 0;
  v37 = [v35 dataWithPropertyList:v36 format:200 options:0 error:&v61];

  v38 = v61;
  if (v37)
  {
    v39 = sub_22BA0FCAC();
    v41 = v40;

    v42 = [a1 data];
    if (!v42)
    {
      type metadata accessor for RemoteRecordData();
      v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [a1 setData_];
      v42 = v43;
    }

    v44 = [a1 data];
    if (v44)
    {
      v45 = v44;
      v46 = sub_22BA0FC8C();
      [v45 setData_];
      sub_22B9359BC(v39, v41);
    }

    else
    {
      sub_22B9359BC(v39, v41);
    }
  }

  else
  {
    v47 = v38;
    v48 = sub_22BA0FB6C();

    swift_willThrow();
    sub_22B975FD8(4, v48, 0, 0);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v49 = sub_22BA0FEFC();
    sub_22B936CA8(v49, qword_28141AD40);
    v50 = a4;
    v51 = v48;
    v52 = sub_22BA0FEDC();
    v53 = sub_22BA1044C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412546;
      *(v54 + 4) = v50;
      *v55 = v50;
      *(v54 + 12) = 2112;
      v56 = v50;
      v57 = v48;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 14) = v58;
      v55[1] = v58;
      _os_log_impl(&dword_22B92A000, v52, v53, "Failed to serialize binary data for record %@ with: %@", v54, 0x16u);
      sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v55, -1, -1);
      MEMORY[0x23189ADD0](v54, -1, -1);
    }

    else
    {
    }
  }

  return sub_22B936C4C(v62);
}

uint64_t sub_22B957874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D4F80, &qword_22BA13E68);
    v3 = sub_22BA108BC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_22B958068(v6 + 40 * v4, v19);
      result = sub_22BA1084C();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_22B958068(*(v3 + 48) + 40 * i, v18);
        v11 = MEMORY[0x231899EC0](v18, v19);
        result = sub_22B9580C4(v18);
        if (v11)
        {
          sub_22B9580C4(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_22B9579D4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_22BA1080C())
    {
LABEL_3:
      sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
      v3 = sub_22BA108BC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_22BA1080C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x231899FA0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_22BA1071C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_22BA1072C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_22BA1071C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_22BA1072C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_22B957CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
    v3 = sub_22BA108BC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22BA10D3C();

      sub_22BA1008C();
      result = sub_22BA10D6C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_22BA10C6C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t *sub_22B957E80(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22B957F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B957FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncFiles.FileMove(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B95800C(uint64_t a1)
{
  v2 = type metadata accessor for SyncFiles.FileMove(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22B958118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_22BA10C3C();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_22BA0FB5C();

  v11 = [v10 userInfo];
  v12 = sub_22BA0FF6C();

  v58 = v10;
  sub_22B958B58();
  type metadata accessor for CKError(0);
  v13 = v10;
  if (swift_dynamicCast())
  {

    v14 = v56;
    v15 = [v13 userInfo];
    v16 = sub_22BA0FF6C();

    v17 = sub_22BA0FFFC();
    if (*(v16 + 16))
    {
      v19 = sub_22B990A58(v17, v18);
      v21 = v20;

      if (v21)
      {
        sub_22B936B20(*(v16 + 56) + 32 * v19, &v58);

        type metadata accessor for CKUnderlyingError(0);
        if (swift_dynamicCast())
        {
          v22 = v56;
          v56 = [v13 code];
          v58 = sub_22BA10C1C();
          v59 = v23;
          MEMORY[0x231899730](47, 0xE100000000000000);
          v56 = v22;
          sub_22B958BA4(&qword_281414CA0, type metadata accessor for CKUnderlyingError, &unk_22BA12A20);
          sub_22BA0FB2C();
          v55[0] = v55[1];
          v24 = sub_22BA10C1C();
          MEMORY[0x231899730](v24);

          v26 = v58;
          v25 = v59;
          v58 = v22;
          sub_22BA0FB2C();
          v27 = stringForCKUnderlyingErrorCode();
          v28 = sub_22BA0FFFC();
          v30 = v29;

LABEL_17:
          v45 = [v13 domain];
          v46 = sub_22BA0FFFC();
          v48 = v47;

          v58 = v46;
          v59 = v48;
          MEMORY[0x231899730](10272, 0xE200000000000000);
          MEMORY[0x231899730](v26, v25);

          MEMORY[0x231899730](2112041, 0xE300000000000000);
          MEMORY[0x231899730](v28, v30);

          goto LABEL_18;
        }

LABEL_16:
        v58 = [v13 code];
        v26 = sub_22BA10C1C();
        v25 = v43;
        v58 = v14;
        sub_22B958BA4(&unk_281414CE8, type metadata accessor for CKError, &unk_22BA12B20);
        sub_22BA0FB2C();
        v27 = stringForCKErrorCode();
        v28 = sub_22BA0FFFC();
        v30 = v44;
        goto LABEL_17;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  v31 = sub_22BA0FFFC();
  if (!*(v12 + 16))
  {

    goto LABEL_19;
  }

  v33 = sub_22B990A58(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_22B936B20(*(v12 + 56) + 32 * v33, &v58);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v49 = [v13 domain];
    v50 = sub_22BA0FFFC();
    v52 = v51;

    v58 = v50;
    v59 = v52;
    MEMORY[0x231899730](10272, 0xE200000000000000);
    v56 = [v13 code];
    v53 = sub_22BA10C1C();
    MEMORY[0x231899730](v53);

    MEMORY[0x231899730](41, 0xE100000000000000);

    return v58;
  }

  v37 = v56;
  v36 = v57;
  v38 = [v13 domain];
  v39 = sub_22BA0FFFC();
  v41 = v40;

  v58 = v39;
  v59 = v41;
  MEMORY[0x231899730](10272, 0xE200000000000000);
  v56 = [v13 code];
  v42 = sub_22BA10C1C();
  MEMORY[0x231899730](v42);

  MEMORY[0x231899730](2112041, 0xE300000000000000);
  MEMORY[0x231899730](v37, v36);
LABEL_18:

  return v58;
}

id sub_22B9587B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_22BA10C3C();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_22BA0FB5C();

  v11 = [v10 userInfo];
  v12 = sub_22BA0FF6C();

  v13 = sub_22BA0FFFC();
  if (!*(v12 + 16))
  {

    goto LABEL_9;
  }

  v15 = sub_22B990A58(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_22B936B20(*(v12 + 56) + 32 * v15, &v30);

  sub_22B958B58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v30 = [v10 code];
    v21 = sub_22BA10C1C();
    goto LABEL_11;
  }

  v18 = v29;
  v29 = [v10 code];
  v30 = sub_22BA10C1C();
  v31 = v19;
  MEMORY[0x231899730](47, 0xE100000000000000);
  v29 = [v18 code];
  v20 = sub_22BA10C1C();
  MEMORY[0x231899730](v20);

  v21 = v30;
  v22 = v31;
LABEL_11:
  v30 = v21;
  v31 = v22;
  MEMORY[0x231899730](8250, 0xE200000000000000);
  v23 = [v10 domain];
  v24 = sub_22BA0FFFC();
  v26 = v25;

  MEMORY[0x231899730](v24, v26);

  return v30;
}

void sub_22B958AE0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v1 = sub_22BA0FFCC();
  v2 = [v0 initWithDomain:v1 code:0 userInfo:0];

  qword_28141ACC0 = v2;
}

unint64_t sub_22B958B58()
{
  result = qword_281414A88;
  if (!qword_281414A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414A88);
  }

  return result;
}

uint64_t sub_22B958BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_22B958C00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B958C14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22B958C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B958CD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B959648(a1, a2);
}

uint64_t sub_22B958DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  return MEMORY[0x2822009F8](sub_22B958DC8, 0, 0);
}

uint64_t sub_22B958DC8()
{
  v1 = *sub_22B9358B4((*(v0 + 120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B958E44, v1, 0);
}

uint64_t sub_22B958E44()
{
  v1 = IMDMessageRecordCalculateLocalCloudKitStatistics();
  if (v1)
  {
    v2 = v1;
    *(v0 + 136) = sub_22BA0FF6C();

    v3 = [objc_opt_self() sharedInstance];
    v4 = sub_22BA0FF5C();
    [v3 setValue:v4 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19D00]];

    v5 = sub_22B958F7C;
  }

  else
  {
    v5 = sub_22B9592DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B958F7C()
{
  v24 = v0;
  v1 = *(v0 + 136);
  if (!*(v1 + 16))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1044C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B92A000, v3, v4, "Fetched empty statistics from IMDPersistence, that shouldn't occur.", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }
  }

  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *(v0 + 56) = sub_22BA0FFFC();
  *(v0 + 64) = v8;
  sub_22BA1086C();
  *(v0 + 80) = sub_22B9349C8(&qword_27D8D4F90, &unk_22BA13F50);
  *(v0 + 56) = v6;
  sub_22B936C98((v0 + 56), (v0 + 88));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v1;
  sub_22B9BB21C((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_22B9580C4(v0 + 16);
  sub_22B9358B4((v7 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v7 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v10 = off_283F58AB0;
  type metadata accessor for CloudState();

  v10(v11);

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v12 = sub_22BA0FEFC();
  sub_22B936CA8(v12, qword_28141AD40);
  v13 = sub_22BA0FEDC();
  v14 = sub_22BA1046C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;

    v17 = sub_22BA0FF7C();
    v19 = v18;

    v20 = sub_22B99153C(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_22B92A000, v13, v14, "Setting the following sync statistics on our CloudKit state: %s", v15, 0xCu);
    sub_22B936C4C(v16);
    MEMORY[0x23189ADD0](v16, -1, -1);
    MEMORY[0x23189ADD0](v15, -1, -1);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B9592DC()
{
  v24 = v0;
  v1 = sub_22B9BBEF0(MEMORY[0x277D84F90]);
  if (!*(v1 + 16))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1044C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B92A000, v3, v4, "Fetched empty statistics from IMDPersistence, that shouldn't occur.", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }
  }

  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *(v0 + 56) = sub_22BA0FFFC();
  *(v0 + 64) = v8;
  sub_22BA1086C();
  *(v0 + 80) = sub_22B9349C8(&qword_27D8D4F90, &unk_22BA13F50);
  *(v0 + 56) = v6;
  sub_22B936C98((v0 + 56), (v0 + 88));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v1;
  sub_22B9BB21C((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_22B9580C4(v0 + 16);
  sub_22B9358B4((v7 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v7 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v10 = off_283F58AB0;
  type metadata accessor for CloudState();

  v10(v11);

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v12 = sub_22BA0FEFC();
  sub_22B936CA8(v12, qword_28141AD40);
  v13 = sub_22BA0FEDC();
  v14 = sub_22BA1046C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;

    v17 = sub_22BA0FF7C();
    v19 = v18;

    v20 = sub_22B99153C(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_22B92A000, v13, v14, "Setting the following sync statistics on our CloudKit state: %s", v15, 0xCu);
    sub_22B936C4C(v16);
    MEMORY[0x23189ADD0](v16, -1, -1);
    MEMORY[0x23189ADD0](v15, -1, -1);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B959648(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return MEMORY[0x2822009F8](sub_22B959668, 0, 0);
}

uint64_t sub_22B959668()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  v0[28] = v1;
  v0[29] = sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Preparing sync statistics", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = _s17MessagesCloudSync0C11CoordinatorC28readServerCountsFromDefaultsSDySSSDySSs5Int64VGGyFZ_0();
  v0[30] = v5;
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_22B9597D0;
  v8 = v0[26];
  v7 = v0[27];

  return sub_22B958DA8(v8, v7, v5);
}

uint64_t sub_22B9597D0()
{

  return MEMORY[0x2822009F8](sub_22B9598CC, 0, 0);
}

uint64_t sub_22B9598CC()
{
  v15 = v0;
  sub_22B9E2BA4(*(v0 + 240), v0 + 16);
  if ((*(v0 + 96) & 1) == 0)
  {
    v1 = sub_22BA0FEDC();
    v2 = sub_22BA1046C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 136315138;
      v5 = *(v0 + 16);
      *(v0 + 120) = *(v0 + 32);
      v6 = *(v0 + 64);
      *(v0 + 136) = *(v0 + 48);
      *(v0 + 152) = v6;
      *(v0 + 168) = *(v0 + 80);
      v14 = v4;
      *(v0 + 104) = v5;
      v7 = sub_22BA1005C();
      v9 = sub_22B99153C(v7, v8, &v14);

      *(v3 + 4) = v9;
      _os_log_impl(&dword_22B92A000, v1, v2, "Has server counts: %s", v3, 0xCu);
      sub_22B936C4C(v4);
      MEMORY[0x23189ADD0](v4, -1, -1);
      MEMORY[0x23189ADD0](v3, -1, -1);
    }
  }

  v10 = *(v0 + 208);
  v11 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore;
  *(v0 + 256) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore;
  v12 = *sub_22B9358B4((v10 + v11), *(v10 + v11 + 24));

  return MEMORY[0x2822009F8](sub_22B959A68, v12, 0);
}

uint64_t sub_22B959A68()
{
  *(v0 + 264) = sub_22B9A3088();
  *(v0 + 272) = v1;
  if (v2)
  {
    v3 = sub_22B959AE4;
  }

  else
  {
    v3 = sub_22B959BC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B959AE4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 96))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    goto LABEL_12;
  }

  v10 = *(v3 + 48);
  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v3 + 64);
  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = *(v3 + 80);
  v8 = __OFADD__(v13, v14);
  v5 = v13 + v14;
  if (v8)
  {
LABEL_15:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_8:
  *(v3 + 288) = v5;
  v15 = (*(v3 + 208) + *(v3 + 256));
  a2 = *sub_22B9358B4(v15, v15[3]);
  a1 = sub_22B95A048;
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B959BC0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 96))
  {
    v4 = *(v3 + 272);
    goto LABEL_10;
  }

  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = *(v3 + 48);
  v7 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = *(v3 + 64);
  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = *(v3 + 80);
  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  *(v3 + 280) = v14;
  if (v7)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = *(v3 + 272);
  if (v4 < v14)
  {
    if (v14 + 0x4000000000000000 >= 0)
    {
      v15 = (*(v3 + 208) + *(v3 + 256));
      a2 = *sub_22B9358B4(v15, v15[3]);
      v16 = sub_22B959E14;
      goto LABEL_23;
    }

LABEL_34:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

LABEL_10:
  v17 = *(v3 + 264);
  *(v3 + 296) = v17;
  *(v3 + 304) = v4;
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  sub_22B936CA8(*(v3 + 224), qword_28141AD28);
  v18 = sub_22BA0FEDC();
  v19 = sub_22BA1046C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = v17;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v4;
    _os_log_impl(&dword_22B92A000, v18, v19, "Starting sync (totalProcessed: %lld, totalDownloads: %lld)", v20, 0x16u);
    MEMORY[0x23189ADD0](v20, -1, -1);
  }

  if (*(v3 + 96))
  {
    goto LABEL_21;
  }

  v21 = *(v3 + 32);
  v22 = *(v3 + 16);
  v7 = __OFADD__(v22, v21);
  v23 = v22 + v21;
  if (v7)
  {
    goto LABEL_30;
  }

  v24 = *(v3 + 48);
  v7 = __OFADD__(v23, v24);
  v25 = v23 + v24;
  if (v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v26 = *(v3 + 64);
  v7 = __OFADD__(v25, v26);
  v27 = v25 + v26;
  if (v7)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v28 = *(v3 + 80);
  v7 = __OFADD__(v27, v28);
  v29 = v27 + v28;
  if (v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v29 < 1)
  {
LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  v30 = 1;
LABEL_22:
  *(v3 + 97) = v30;
  a2 = *(*(v3 + 208) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v3 + 312) = a2;
  v16 = sub_22B95A270;
LABEL_23:
  a1 = v16;
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B959E14()
{
  sub_22B9E45D8(*(v0 + 264), 2 * *(v0 + 280), 0);

  return MEMORY[0x2822009F8](sub_22B959E88, 0, 0);
}

uint64_t sub_22B959E88()
{
  v1 = *(v0 + 264);
  v2 = 2 * *(v0 + 280);
  *(v0 + 296) = v1;
  *(v0 + 304) = v2;
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  sub_22B936CA8(*(v0 + 224), qword_28141AD28);
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = v1;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v2;
    _os_log_impl(&dword_22B92A000, v3, v4, "Starting sync (totalProcessed: %lld, totalDownloads: %lld)", v5, 0x16u);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  if (*(v0 + 96))
  {
    goto LABEL_12;
  }

  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v0 + 48);
  v11 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v0 + 64);
  v11 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = *(v0 + 80);
  v11 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v11)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  if (v18 >= 1)
  {
    v19 = 1;
    goto LABEL_13;
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  *(v0 + 97) = v19;
  v7 = *(*(v0 + 208) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 312) = v7;
  v6 = sub_22B95A270;
  v8 = 0;

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22B95A048()
{
  sub_22B9E45D8(0, 2 * *(v0 + 288), 0);

  return MEMORY[0x2822009F8](sub_22B95A0BC, 0, 0);
}

uint64_t sub_22B95A0BC()
{
  v1 = 2 * *(v0 + 288);
  *(v0 + 296) = 0;
  *(v0 + 304) = v1;
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  sub_22B936CA8(*(v0 + 224), qword_28141AD28);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134218240;
    *(v4 + 4) = 0;
    *(v4 + 12) = 2048;
    *(v4 + 14) = v1;
    _os_log_impl(&dword_22B92A000, v2, v3, "Starting sync (totalProcessed: %lld, totalDownloads: %lld)", v4, 0x16u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  if (*(v0 + 96))
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v0 + 48);
  v10 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(v0 + 64);
  v10 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(v0 + 80);
  v10 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v10)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  if (v17 >= 1)
  {
    v18 = 1;
    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  *(v0 + 97) = v18;
  v6 = *(*(v0 + 208) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 312) = v6;
  v5 = sub_22B95A270;
  v7 = 0;

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22B95A270()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 97);
  v4 = *(v0 + 296);
  swift_beginAccess();
  *(v1 + 120) = v4;
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  v5 = *(v0 + 8);

  return v5(0, 0);
}

uint64_t type metadata accessor for ItemRecord(uint64_t a1)
{
  result = qword_281416190;
  if (!qword_281416190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B95A3A0(uint64_t a1)
{
  result = type metadata accessor for MessageRecord(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActionRecord(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22B95A56C()
{
  sub_22BA10D3C();
  sub_22BA10D5C();
  return sub_22BA10D6C();
}

uint64_t sub_22B95A5E4(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA10D5C();
  return sub_22BA10D6C();
}

uint64_t sub_22B95A628@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B95C3CC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22B95A6C8()
{
  result = qword_27D8D4F98;
  if (!qword_27D8D4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F98);
  }

  return result;
}

uint64_t sub_22B95A71C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6570795467736DLL;
  }

  else
  {
    v2 = 0x65707954627553;
  }

  if (*a2)
  {
    v3 = 0x6570795467736DLL;
  }

  else
  {
    v3 = 0x65707954627553;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22BA10C6C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22B95A7A4()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B95A81C(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B95A878(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B95A8EC@<X0>(char *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22B95A94C(uint64_t *a1@<X8>)
{
  v2 = 0x65707954627553;
  if (*v1)
  {
    v2 = 0x6570795467736DLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_22B95A984()
{
  if (*v0)
  {
    return 0x6570795467736DLL;
  }

  else
  {
    return 0x65707954627553;
  }
}

uint64_t sub_22B95A9B8@<X0>(char *a3@<X8>)
{
  v4 = sub_22BA10AAC();

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

uint64_t sub_22B95AA28(uint64_t a1)
{
  v2 = sub_22B93641C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B95AA64(uint64_t a1)
{
  v2 = sub_22B93641C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B95AAA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for ActionRecord(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v46 = &v44 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v44 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - v12;
  v13 = type metadata accessor for MessageRecord(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = sub_22B9349C8(&qword_27D8D4B80, &qword_22BA12C30);
  v52 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for ItemRecord(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v54 = a1;
  sub_22B9358B4(a1, v25);
  sub_22B93641C();
  v26 = v53;
  sub_22BA10D8C();
  if (!v26)
  {
    v28 = v18;
    v44 = v16;
    v45 = v24;
    v29 = v50;
    v30 = v51;
    v53 = v22;
    LOBYTE(v55[0]) = 0;
    v31 = sub_22BA10ACC();
    v33 = v32;
    LOBYTE(v55[0]) = 1;
    sub_22B936470();
    sub_22BA10B3C();
    if (v33)
    {
      if (v31 == 0x4D65707954627553 && v33 == 0xEA00000000006773)
      {

LABEL_8:
        v56 = 0;
        v35 = v54;
        goto LABEL_9;
      }

      v34 = sub_22BA10C6C();

      if (v34)
      {
        goto LABEL_8;
      }
    }

    if (v56 > 2u)
    {
      v47 = v19;
      if (v56 > 4u)
      {
        v38 = v49;
        v36 = v54;
        if (v56 == 5)
        {
          sub_22B935B38(v54, v55);
          v40 = v48;
          sub_22B9C5BA4(v55, v48);
          (*(v52 + 8))(v21, v47);
          v39 = v45;
          sub_22B95BD3C(v40, v45, type metadata accessor for ActionRecord);
        }

        else
        {
          sub_22B935B38(v54, v55);
          v42 = v46;
          sub_22B9C5BA4(v55, v46);
          (*(v52 + 8))(v21, v47);
          v39 = v45;
          sub_22B95BD3C(v42, v45, type metadata accessor for ActionRecord);
        }
      }

      else
      {
        v38 = v49;
        v36 = v54;
        if (v56 == 3)
        {
          sub_22B935B38(v54, v55);
          sub_22B9C5BA4(v55, v29);
          (*(v52 + 8))(v21, v47);
          v39 = v45;
          sub_22B95BD3C(v29, v45, type metadata accessor for ActionRecord);
        }

        else
        {
          sub_22B935B38(v54, v55);
          sub_22B9C5BA4(v55, v30);
          (*(v52 + 8))(v21, v47);
          v39 = v45;
          sub_22B95BD3C(v30, v45, type metadata accessor for ActionRecord);
        }
      }

      goto LABEL_19;
    }

    v35 = v54;
    if (v56)
    {
      v36 = v54;
      if (v56 != 1)
      {
        sub_22B935B38(v54, v55);
        v41 = v47;
        sub_22B9C5BA4(v55, v47);
        (*(v52 + 8))(v21, v19);
        v39 = v45;
        sub_22B95BD3C(v41, v45, type metadata accessor for ActionRecord);
        goto LABEL_18;
      }

      sub_22B935B38(v54, v55);
      v37 = v44;
      sub_22B931DCC(v55, v44);
      (*(v52 + 8))(v21, v19);
LABEL_17:
      v39 = v45;
      sub_22B95BD3C(v37, v45, type metadata accessor for MessageRecord);
LABEL_18:
      v38 = v49;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      sub_22B95BD3C(v39, v38, type metadata accessor for ItemRecord);
      v27 = v36;
      return sub_22B936C4C(v27);
    }

LABEL_9:
    v36 = v35;
    sub_22B935B38(v35, v55);
    v37 = v28;
    sub_22B931DCC(v55, v28);
    (*(v52 + 8))(v21, v19);
    goto LABEL_17;
  }

  v27 = v54;
  return sub_22B936C4C(v27);
}

uint64_t sub_22B95B21C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ItemRecord(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B95BDA4(v2, v6);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    a1[3] = type metadata accessor for ActionRecord(0);
    v7 = sub_22B95BE08(&qword_27D8D4FA0, type metadata accessor for ActionRecord, &unk_22BA192F4);
    v8 = type metadata accessor for ActionRecord;
  }

  else
  {
    a1[3] = type metadata accessor for MessageRecord(0);
    v7 = sub_22B95BE08(&qword_281415D40, type metadata accessor for MessageRecord, &unk_22BA127B4);
    v8 = type metadata accessor for MessageRecord;
  }

  v9 = v8;
  a1[4] = v7;
  v10 = sub_22B957E80(a1);
  return sub_22B95BD3C(v6, v10, v9);
}

uint64_t sub_22B95B39C()
{
  sub_22B95B21C(v4);
  v0 = v5;
  v1 = v6;
  sub_22B9358B4(v4, v5);
  v2 = (*(v1 + 24))(v0, v1);
  sub_22B936C4C(v4);
  return v2;
}

uint64_t sub_22B95B418()
{
  sub_22B95B21C(v4);
  v0 = v5;
  v1 = v6;
  sub_22B9358B4(v4, v5);
  v2 = (*(v1 + 48))(v0, v1);
  sub_22B936C4C(v4);
  return v2;
}

uint64_t sub_22B95B494()
{
  sub_22B95B21C(v4);
  v0 = v5;
  v1 = v6;
  sub_22B9358B4(v4, v5);
  v2 = (*(v1 + 56))(v0, v1);
  sub_22B936C4C(v4);
  return v2;
}

uint64_t sub_22B95B530()
{
  sub_22B95B21C(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_22B9358B4(v0 + 2, v1);
  v5 = (*(v2 + 104) + **(v2 + 104));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22B95B660;

  return v5(v1, v2);
}

uint64_t sub_22B95B660(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_22B95B7F4;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_22B95B788;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B95B788()
{
  v1 = *(v0 + 80);
  sub_22B936C4C((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_22B95B7F4()
{
  sub_22B936C4C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B95B858(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22B95B878, 0, 0);
}

uint64_t sub_22B95B878()
{
  sub_22B95B21C(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_22B9358B4(v0 + 2, v1);
  v6 = (*(v2 + 112) + **(v2 + 112));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22B95B9B0;
  v4 = v0[7];

  return v6(v4, v1, v2);
}

uint64_t sub_22B95B9B0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22B95BB28;
  }

  else
  {
    v2 = sub_22B95BAC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B95BAC4()
{
  sub_22B936C4C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B95BB28()
{
  sub_22B936C4C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B95BBA4(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D4FA8, &unk_22BA14760);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22B9358B4(a1, a1[3]);
  sub_22B93641C();
  sub_22BA10D9C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22B95BCB8(uint64_t a1)
{
  *(a1 + 8) = sub_22B95BE08(&qword_2814161A8, type metadata accessor for ItemRecord, &unk_22BA14068);
  result = sub_22B95BE08(&qword_2814161B0, type metadata accessor for ItemRecord, &unk_22BA14040);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B95BD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B95BDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B95BE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B95BE50(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (qword_2814161B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_28141ADF8;
    if (*(qword_28141ADF8 + 16) && (v5 = sub_22B990A58(v3, a2), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      result = swift_endAccess();
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = qword_28141ADF8;
      qword_28141ADF8 = 0x8000000000000000;
      v9 = v7 + 1;
    }

    else
    {
      swift_endAccess();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = qword_28141ADF8;
      qword_28141ADF8 = 0x8000000000000000;
      v9 = 0;
    }

    sub_22B9BABE4(v9, v3, a2, isUniquelyReferenced_nonNull_native);
    qword_28141ADF8 = v10;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22B95BFAC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22BA0FA0C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B95C06C, 0, 0);
}

uint64_t sub_22B95C06C()
{
  v1 = qword_28141ADC8;
  v0[6] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[7] = qword_28141ADD0;
    v0[8] = *(v2 + 32);
    v0[9] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x177D000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v4 = sub_22BA1029C();

    return MEMORY[0x2822009F8](sub_22B95C1C0, v4, v3);
  }

  else
  {
    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_22B95C1C0()
{
  *(v0 + 80) = (*(v0 + 64))(*(v0 + 16)) & 1;

  return MEMORY[0x2822009F8](sub_22B95C23C, 0, 0);
}

uint64_t sub_22B95C23C()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    if (qword_281414F10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = [v4 guid];
    v6 = [v4 cloudKitRecordID];
    IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit();

    v7 = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
    sub_22BA0FFCC();
    sub_22BA0F9FC();
    v8 = sub_22BA0F9EC();
    (*(v2 + 8))(v1, v3);
    [v7 postNotification_];
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 80);

  return v9(v10);
}

uint64_t sub_22B95C3CC(char a1)
{
  if ((a1 & 0xF8) != 0)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

unint64_t sub_22B95C3F8()
{
  result = qword_281414DE8[0];
  if (!qword_281414DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281414DE8);
  }

  return result;
}

unint64_t sub_22B95C470()
{
  result = qword_27D8D4FB0;
  if (!qword_27D8D4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FB0);
  }

  return result;
}

unint64_t sub_22B95C4C8()
{
  result = qword_27D8D4FB8;
  if (!qword_27D8D4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FB8);
  }

  return result;
}

unint64_t sub_22B95C520()
{
  result = qword_2814161C0;
  if (!qword_2814161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814161C0);
  }

  return result;
}

unint64_t sub_22B95C578()
{
  result = qword_2814161C8;
  if (!qword_2814161C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814161C8);
  }

  return result;
}

uint64_t sub_22B95C5E8()
{
  sub_22BA0F9BC();
  swift_allocObject();
  result = sub_22BA0F9AC();
  qword_28141AD60 = result;
  return result;
}

uint64_t sub_22B95C628(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B95D6B4(a1, a2);
}

uint64_t sub_22B95C6DC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (v16 < result)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_22B95C7E8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_22B95C8F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x70756F724778616DLL;
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    if (a1 != 7)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000016;
    if (a1 != 4)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B95CA28(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D4FC0, &qword_22BA143E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22B9358B4(a1, a1[3]);
  sub_22B95DFE8();
  sub_22BA10D9C();
  v8[15] = 0;
  sub_22BA10BDC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_22BA10BDC();
  v8[13] = 2;
  sub_22BA10BDC();
  v8[12] = 3;
  sub_22BA10BDC();
  v8[11] = 4;
  sub_22BA10BDC();
  v8[10] = 5;
  sub_22BA10BDC();
  v8[9] = 6;
  sub_22BA10BDC();
  v8[8] = 7;
  sub_22BA10BDC();
  v8[7] = 8;
  sub_22BA10BDC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22B95CC90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22B95E03C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22B95CCC4(uint64_t a1)
{
  v2 = sub_22B95DFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B95CD00(uint64_t a1)
{
  v2 = sub_22B95DFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22B95CD3C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22B95E320(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

void *sub_22B95CDA8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_22B95D2F0(v12, v7, v5, a3);
  result = MEMORY[0x23189ADD0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_22B95CF18(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v17 = result;
  v18 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    if (*(*(v3 + 56) + 8 * v13) >= 2)
    {
      sub_22B936ACC();

      if (*(sub_22BA1075C() + 16) < 3uLL)
      {
      }

      else
      {

        v14 = sub_22BA1011C();

        v3 = a3;

        if ((v14 & 1) == 0)
        {
          *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v18++, 1))
          {
            __break(1u);
            return sub_22B936140(v17, a2, v18, v3);
          }
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22B936140(v17, a2, v18, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22B95D104(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v17 = result;
  v18 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    if (*(*(v3 + 56) + 8 * v13) >= 2)
    {
      sub_22B936ACC();

      if (*(sub_22BA1075C() + 16) < 3uLL)
      {
      }

      else
      {

        v14 = sub_22BA1011C();

        v3 = a3;

        if (v14)
        {
          *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v18++, 1))
          {
            __break(1u);
            return sub_22B936140(v17, a2, v18, v3);
          }
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22B936140(v17, a2, v18, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_22B95D2F0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_22B95D378@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22B95CDA8(a1, sub_22B95D104, sub_22B95D104);
  result = sub_22B95CDA8(a1, sub_22B95CF18, sub_22B95CF18);
  v6 = result;
  if (*(result + 16))
  {
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(result + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(result + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v7;
LABEL_11:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(result + 56) + ((v13 << 9) | (8 * v14)));
      v16 = __OFADD__(v8, v15);
      v8 += v15;
      if (v16)
      {
        __break(1u);
LABEL_14:
        v17 = *(result + 16);
        if (v17)
        {
          v18 = v8 / v17;
          if (!v4[2])
          {
            goto LABEL_41;
          }

LABEL_16:
          v19 = 0;
          v20 = 0;
          v21 = 1 << *(v4 + 32);
          v22 = -1;
          if (v21 < 64)
          {
            v22 = ~(-1 << v21);
          }

          v23 = v22 & v4[8];
          v24 = (v21 + 63) >> 6;
          do
          {
            if (!v23)
            {
              while (1)
              {
                v25 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
                  goto LABEL_55;
                }

                if (v25 >= v24)
                {
                  goto LABEL_28;
                }

                v23 = v4[v25 + 8];
                ++v19;
                if (v23)
                {
                  v19 = v25;
                  goto LABEL_25;
                }
              }
            }

            v25 = v19;
LABEL_25:
            v26 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v27 = *(v4[7] + ((v25 << 9) | (8 * v26)));
            v16 = __OFADD__(v20, v27);
            v20 += v27;
          }

          while (!v16);
          __break(1u);
LABEL_28:
          v28 = v4[2];
          if (!v28)
          {
            goto LABEL_57;
          }

          v29 = v20 / v28;
          v30 = v18 + v20 / v28;
          if (!__OFADD__(v18, v20 / v28))
          {
            goto LABEL_30;
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return result;
      }
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_14;
      }

      v11 = *(result + 64 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v18 = 0;
  if (v4[2])
  {
    goto LABEL_16;
  }

LABEL_41:
  v29 = 0;
  v30 = v18;
LABEL_30:
  v53 = v18;
  if (*(result + 16))
  {

    v32 = sub_22B95C6DC(v31);
    v34 = v33;

    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v32;
    }

    if (*(v6 + 16))
    {

      v37 = sub_22B95C7E8(v36);
      v39 = v38;

      if (v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = v37;
      }

      if (!v4[2])
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    }
  }

  else
  {
LABEL_43:
    v35 = 0;
  }

  v40 = 0;
  if (!v4[2])
  {
LABEL_39:
    v41 = 0;
    goto LABEL_52;
  }

LABEL_45:

  v43 = sub_22B95C6DC(v42);
  v45 = v44;

  if (v45)
  {
    v41 = 0;
  }

  else
  {
    v41 = v43;
  }

  if (v4[2])
  {

    v47 = sub_22B95C7E8(v46);
    v49 = v48;

    if (v49)
    {
      v47 = 0;
    }

    goto LABEL_53;
  }

LABEL_52:
  v47 = 0;
LABEL_53:
  v50 = v30 / 2;
  v51 = *(v6 + 16);

  v52 = v4[2];

  *a2 = v35;
  a2[1] = v40;
  a2[2] = v41;
  a2[3] = v47;
  a2[4] = v51;
  a2[5] = v52;
  a2[6] = v53;
  a2[7] = v29;
  a2[8] = v50;
  return result;
}

uint64_t sub_22B95D6B4(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  sub_22BA1003C();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B95D744, 0, 0);
}

uint64_t sub_22B95D744()
{
  v40 = v0;
  type metadata accessor for CloudState();
  if (!sub_22BA0876C())
  {
    if (qword_281414B68 != -1)
    {
      swift_once();
    }

    v1 = qword_28141ACF0;
    v2 = sub_22BA1039C();
    v3 = sub_22BA0FFCC();
    [v1 setObject:v2 forKey:v3];

    v4 = sub_22B972028();
    if (v4)
    {
      sub_22B95D378(v4, (v0 + 16));

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v5 = sub_22BA0FEFC();
      sub_22B936CA8(v5, qword_28141AD40);
      v6 = sub_22BA0FEDC();
      v7 = sub_22BA1046C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v39[0] = v9;
        *v8 = 136315138;
        v10 = *(v0 + 64);
        *(v0 + 264) = *(v0 + 48);
        *(v0 + 280) = v10;
        *(v0 + 296) = *(v0 + 80);
        v11 = *(v0 + 32);
        *(v0 + 232) = *(v0 + 16);
        *(v0 + 248) = v11;
        v12 = sub_22BA1005C();
        v14 = sub_22B99153C(v12, v13, v39);

        *(v8 + 4) = v14;
        _os_log_impl(&dword_22B92A000, v6, v7, "Posting duplicates telemetry with value: %s", v8, 0xCu);
        sub_22B936C4C(v9);
        MEMORY[0x23189ADD0](v9, -1, -1);
        MEMORY[0x23189ADD0](v8, -1, -1);
      }

      if (qword_281414F00 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      v16 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 48);
      *(v0 + 136) = v16;
      *(v0 + 152) = *(v0 + 80);
      *(v0 + 88) = v15;
      sub_22B95DE9C();
      v17 = sub_22BA0F99C();
      *(v0 + 328) = v17;
      *(v0 + 336) = v18;
      v19 = v17;
      v20 = v18;
      sub_22BA1002C();
      v21 = sub_22BA1000C();
      *(v0 + 344) = v22;
      if (v22)
      {
        v23 = v21;
        v24 = v22;
        v25 = swift_task_alloc();
        *(v0 + 352) = v25;
        *v25 = v0;
        v25[1] = sub_22B95DD04;
        v27 = *(v0 + 304);
        v26 = *(v0 + 312);
        v46 = 97;
        v45 = 47;
        v44 = 2;
        v43 = 21;
        v42 = "performStep(context:)";

        return sub_22B9E81AC(v27, v26, v23, v24, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ReportDiagnosticTelemetryStep.swift", 121, 2);
      }

      v29 = sub_22BA0FEDC();
      v30 = sub_22BA1044C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39[0] = v32;
        *v31 = 136315138;
        v33 = *(v0 + 64);
        *(v0 + 192) = *(v0 + 48);
        *(v0 + 208) = v33;
        *(v0 + 224) = *(v0 + 80);
        v34 = *(v0 + 32);
        *(v0 + 160) = *(v0 + 16);
        *(v0 + 176) = v34;
        v35 = sub_22BA1005C();
        v37 = sub_22B99153C(v35, v36, v39);

        *(v31 + 4) = v37;
        _os_log_impl(&dword_22B92A000, v29, v30, "Failed to get json string for statistics: %s", v31, 0xCu);
        sub_22B936C4C(v32);
        MEMORY[0x23189ADD0](v32, -1, -1);
        MEMORY[0x23189ADD0](v31, -1, -1);
      }

      sub_22B9359BC(v19, v20);
    }
  }

  v38 = *(v0 + 8);

  return v38(0, 0);
}

uint64_t sub_22B95DD04()
{

  return MEMORY[0x2822009F8](sub_22B95DE1C, 0, 0);
}

uint64_t sub_22B95DE1C()
{
  v1 = v0[41];
  v2 = v0[42];
  sub_22B972AB4();
  sub_22B9359BC(v1, v2);

  v3 = v0[1];

  return v3(0, 0);
}

unint64_t sub_22B95DE9C()
{
  result = qword_281415558;
  if (!qword_281415558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415558);
  }

  return result;
}

uint64_t sub_22B95DEF0(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_22B95DF58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B95DF7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B95DF9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_22B95DFE8()
{
  result = qword_281415570;
  if (!qword_281415570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415570);
  }

  return result;
}

uint64_t sub_22B95E03C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000022BA1C8E0 == a2;
  if (v3 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BA1C900 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022BA1C920 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70756F724778616DLL && a2 == 0xED0000746E756F43 || (sub_22BA10C6C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022BA1C940 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BA1C960 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BA1C980 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1C9A0 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BA1C9C0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22B95E320@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D4FC8, &qword_22BA143F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22B95DFE8();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(a1);
  }

  v34 = 0;
  v9 = sub_22BA10B2C();
  v33 = 1;
  v10 = sub_22BA10B2C();
  v32 = 2;
  v11 = sub_22BA10B2C();
  v31 = 3;
  v25 = sub_22BA10B2C();
  v30 = 4;
  v24 = sub_22BA10B2C();
  v29 = 5;
  v23 = sub_22BA10B2C();
  v28 = 6;
  v22 = sub_22BA10B2C();
  v27 = 7;
  v21 = sub_22BA10B2C();
  v26 = 8;
  v20 = sub_22BA10B2C();
  (*(v6 + 8))(v8, v5);
  result = sub_22B936C4C(a1);
  *a2 = v9;
  a2[1] = v10;
  v14 = v24;
  v13 = v25;
  a2[2] = v11;
  a2[3] = v13;
  v16 = v22;
  v15 = v23;
  a2[4] = v14;
  a2[5] = v15;
  v17 = v20;
  v18 = v21;
  a2[6] = v16;
  a2[7] = v18;
  a2[8] = v17;
  return result;
}

uint64_t getEnumTagSinglePayload for DuplicateStatistics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DuplicateStatistics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B95E718()
{
  result = qword_27D8D4FD0;
  if (!qword_27D8D4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FD0);
  }

  return result;
}

unint64_t sub_22B95E770()
{
  result = qword_281415560;
  if (!qword_281415560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415560);
  }

  return result;
}

unint64_t sub_22B95E7C8()
{
  result = qword_281415568;
  if (!qword_281415568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415568);
  }

  return result;
}

uint64_t type metadata accessor for DatabaseRecord(uint64_t a1)
{
  result = qword_281415AA0;
  if (!qword_281415AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B95E878(uint64_t a1)
{
  result = type metadata accessor for ChatLockRecord(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ChatRecord(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ItemRecord(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AttachmentRecord(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for RecoverableMessageRecord(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for MessageUpdateRecord(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for UnknownRecord(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_22B95E950(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1684632935;
    v5 = 0x615465676E616863;
    if (a1 != 2)
    {
      v5 = 0x614E64726F636572;
    }

    if (a1)
    {
      v4 = 6518387;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F697461657263;
    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x795464726F636572;
    if (a1 != 4)
    {
      v2 = 0x656D614E656E6F7ALL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B95EA88()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B3760(v3, v1);
  return sub_22BA10D6C();
}

uint64_t sub_22B95EAD8(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  sub_22B9B3760(v4, v2);
  return sub_22BA10D6C();
}

unint64_t sub_22B95EB1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B960AD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22B95EB4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B95E950(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22B95EB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B960AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B95EBCC(uint64_t a1)
{
  v2 = sub_22B9358F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B95EC08(uint64_t a1)
{
  v2 = sub_22B9358F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B95EC44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  updated = type metadata accessor for MessageUpdateRecord(0);
  MEMORY[0x28223BE20](updated - 8);
  v60 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecoverableMessageRecord(0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttachmentRecord(0);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ItemRecord(0);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChatRecord(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChatLockRecord(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for DatabaseRecord(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[3];
  v63 = a1;
  sub_22B9358B4(a1, v23);
  sub_22B9358F8();
  v24 = v61;
  sub_22BA10D8C();
  if (!v24)
  {
    v52 = v16;
    v53 = v13;
    v26 = v59;
    v27 = v60;
    v28 = v58;
    v54 = v22;
    v61 = v20;
    LOBYTE(v62[0]) = 3;
    v29 = v19;
    v30 = sub_22BA10B1C();
    v32 = v31;
    LOBYTE(v62[0]) = 4;
    v33 = sub_22BA10B1C();
    v35 = v34;

    v51 = v33;
    v36 = sub_22B9C2E30(v33, v35);
    if (v36 > 3)
    {
      if (v36 <= 5)
      {
        v51 = v29;
        if (v36 == 4)
        {

          v37 = v63;
          sub_22B935B38(v63, v62);
          v40 = v56;
          sub_22B9651F8(v62, v56);
          (*(v28 + 8))(v51, v17);
          v39 = v54;
          sub_22B960BEC(v40, v54, type metadata accessor for RecoverableMessageRecord);
          v41 = v57;
        }

        else
        {

          v37 = v63;
          sub_22B935B38(v63, v62);
          sub_22B9809D8(v62, v27);
          v41 = v57;
          (*(v28 + 8))(v51, v17);
          v39 = v54;
          sub_22B960BEC(v27, v54, type metadata accessor for MessageUpdateRecord);
        }

        goto LABEL_14;
      }

      (*(v28 + 8))(v29, v17);
      v43 = v54;
      *v54 = v30;
      v43[1] = v32;
      v43[2] = v51;
      v43[3] = v35;
      v44 = type metadata accessor for UnknownRecord(0);
      *(v43 + 2) = 0u;
      *(v43 + 3) = 0u;
      *(v43 + 4) = 0u;
      *(v43 + 5) = 0u;
      v45 = v44[10];
      v46 = sub_22BA0FD8C();
      v47 = *(*(v46 - 8) + 56);
      v47(v43 + v45, 1, 1, v46);
      v39 = v43;
      v47(v43 + v44[11], 1, 1, v46);
      v48 = (v43 + v44[12]);
      *v48 = 0;
      v48[1] = 0;
      v37 = v63;
    }

    else
    {
      v51 = v29;
      v37 = v63;
      if (v36 > 1)
      {
        if (v36 == 2)
        {

          sub_22B935B38(v37, v62);
          v42 = v55;
          sub_22B95AAA0(v62, v55);
          (*(v28 + 8))(v51, v17);
          v39 = v54;
          sub_22B960BEC(v42, v54, type metadata accessor for ItemRecord);
        }

        else
        {

          sub_22B935B38(v37, v62);
          sub_22BA0DC9C(v62, v26);
          (*(v28 + 8))(v51, v17);
          v39 = v54;
          sub_22B960BEC(v26, v54, type metadata accessor for AttachmentRecord);
        }
      }

      else
      {
        if (v36)
        {

          sub_22B935B38(v37, v62);
          v50 = v53;
          sub_22B989BF8(v62, v53);
          (*(v28 + 8))(v51, v17);
          v39 = v54;
          sub_22B960BEC(v50, v54, type metadata accessor for ChatRecord);
          v41 = v57;
          goto LABEL_14;
        }

        sub_22B935B38(v37, v62);
        v38 = v52;
        sub_22B960F04(v62, v52);
        (*(v28 + 8))(v51, v17);
        v39 = v54;
        sub_22B960BEC(v38, v54, type metadata accessor for ChatLockRecord);
      }
    }

    v41 = v57;
LABEL_14:
    swift_storeEnumTagMultiPayload();
    sub_22B960BEC(v39, v41, type metadata accessor for DatabaseRecord);
    v25 = v37;
    return sub_22B936C4C(v25);
  }

  v25 = v63;
  return sub_22B936C4C(v25);
}

uint64_t sub_22B95F48C(void *a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_22B9349C8(&qword_27D8D5018, &qword_22BA14750);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v30 - v4;
  v5 = sub_22B9349C8(&qword_27D8D5020, &qword_22BA14758);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = sub_22B9349C8(&qword_27D8D4FA8, &unk_22BA14760);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ChatRecord(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChatLockRecord(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DatabaseRecord(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B960B88(v2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_22B960D44(v20, type metadata accessor for DatabaseRecord);
        sub_22B9358B4(v35, v35[3]);
        sub_22B93641C();
        sub_22BA10D9C();
        return (*(v9 + 8))(v11, v8);
      }

      sub_22B960BEC(v20, v14, type metadata accessor for ChatRecord);
      sub_22B98B2F8(v35);
      v23 = type metadata accessor for ChatRecord;
      v24 = v14;
    }

    else
    {
      sub_22B960BEC(v20, v17, type metadata accessor for ChatLockRecord);
      sub_22B96150C(v35);
      v23 = type metadata accessor for ChatLockRecord;
      v24 = v17;
    }

    return sub_22B960D44(v24, v23);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_22B960D44(v20, type metadata accessor for DatabaseRecord);
      sub_22B9358B4(v35, v35[3]);
      sub_22B960C9C();
      v25 = v30;
      sub_22BA10D9C();
      return (*(v33 + 8))(v25, v34);
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v26 = sub_22BA0FEFC();
    sub_22B936CA8(v26, qword_28141AD40);
    v27 = sub_22BA0FEDC();
    v28 = sub_22BA1044C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B92A000, v27, v28, "Tried to encode unknown database record.", v29, 2u);
      MEMORY[0x23189ADD0](v29, -1, -1);
    }
  }

  else if (EnumCaseMultiPayload != 3)
  {
    sub_22B960D44(v20, type metadata accessor for DatabaseRecord);
    sub_22B9358B4(v35, v35[3]);
    sub_22B960CF0();
    sub_22BA10D9C();
    return (*(v31 + 8))(v7, v32);
  }

  return sub_22B960D44(v20, type metadata accessor for DatabaseRecord);
}

uint64_t sub_22B95FA40@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v38 = type metadata accessor for UnknownRecord(0);
  MEMORY[0x28223BE20](v38);
  v39 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for MessageUpdateRecord(0);
  MEMORY[0x28223BE20](updated);
  v37 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for RecoverableMessageRecord(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttachmentRecord(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ItemRecord(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChatRecord(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChatLockRecord(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DatabaseRecord(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B960B88(v40, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v20 = type metadata accessor for MessageUpdateRecord;
        v25 = v37;
        sub_22B960BEC(v18, v37, type metadata accessor for MessageUpdateRecord);
        v26 = v41;
        v41[3] = updated;
        v27 = &unk_281415528;
        v28 = type metadata accessor for MessageUpdateRecord;
        v29 = &unk_22BA16844;
      }

      else
      {
        v20 = type metadata accessor for UnknownRecord;
        v25 = v39;
        sub_22B960BEC(v18, v39, type metadata accessor for UnknownRecord);
        v26 = v41;
        v41[3] = v38;
        v27 = &unk_27D8D5000;
        v28 = type metadata accessor for UnknownRecord;
        v29 = &unk_22BA19A98;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v20 = type metadata accessor for AttachmentRecord;
        sub_22B960BEC(v18, v6, type metadata accessor for AttachmentRecord);
        v21 = v41;
        v41[3] = v4;
        v21[4] = sub_22B960C54(&qword_2814159B0, type metadata accessor for AttachmentRecord, &unk_22BA1B564);
        v22 = sub_22B957E80(v21);
        v23 = v6;
LABEL_15:
        v32 = v20;
        return sub_22B960BEC(v23, v22, v32);
      }

      v20 = type metadata accessor for RecoverableMessageRecord;
      v25 = v35;
      sub_22B960BEC(v18, v35, type metadata accessor for RecoverableMessageRecord);
      v26 = v41;
      v41[3] = v34;
      v27 = &unk_27D8D5008;
      v28 = type metadata accessor for RecoverableMessageRecord;
      v29 = &unk_22BA14FCC;
    }

    v26[4] = sub_22B960C54(v27, v28, v29);
    v22 = sub_22B957E80(v26);
    v23 = v25;
    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = type metadata accessor for ChatLockRecord;
    sub_22B960BEC(v18, v15, type metadata accessor for ChatLockRecord);
    v30 = v41;
    v41[3] = v13;
    v30[4] = sub_22B960C54(&qword_27D8D5010, type metadata accessor for ChatLockRecord, &unk_22BA147E8);
    v22 = sub_22B957E80(v30);
    v23 = v15;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v20 = type metadata accessor for ChatRecord;
    sub_22B960BEC(v18, v12, type metadata accessor for ChatRecord);
    v24 = v41;
    v41[3] = v10;
    v24[4] = sub_22B960C54(&qword_281416388, type metadata accessor for ChatRecord, &unk_22BA16D28);
    v22 = sub_22B957E80(v24);
    v23 = v12;
    goto LABEL_15;
  }

  sub_22B960BEC(v18, v9, type metadata accessor for ItemRecord);
  v31 = v41;
  v41[3] = v7;
  v31[4] = sub_22B960C54(&qword_2814161A0, type metadata accessor for ItemRecord, &unk_22BA140A0);
  v22 = sub_22B957E80(v31);
  v23 = v9;
  v32 = type metadata accessor for ItemRecord;
  return sub_22B960BEC(v23, v22, v32);
}

uint64_t sub_22B960088()
{
  sub_22B95FA40(v0 + 2);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_22B9358B4(v0 + 2, v0[5]);
    v6 = (*(v2 + 104) + **(v2 + 104));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22B960204;

    return v6(v1, v2);
  }

  else
  {
    sub_22B960B20((v0 + 2));
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_22B960204(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_22B95B7F4;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_22B96032C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B96032C()
{
  sub_22B936C4C((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 80) & 1;

  return v1(v2);
}

uint64_t sub_22B960398()
{
  sub_22B95FA40(v3);
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    sub_22B9358B4(v3, v4);
    v0 = (*(v1 + 24))(v0, v1);
    sub_22B936C4C(v3);
  }

  else
  {
    sub_22B960B20(v3);
  }

  return v0;
}

uint64_t sub_22B96042C()
{
  sub_22B95FA40(v3);
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    sub_22B9358B4(v3, v4);
    v0 = (*(v1 + 48))(v0, v1);
    sub_22B936C4C(v3);
  }

  else
  {
    sub_22B960B20(v3);
  }

  return v0;
}

uint64_t sub_22B9604C0()
{
  sub_22B95FA40(v3);
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    sub_22B9358B4(v3, v4);
    v0 = (*(v1 + 56))(v0, v1);
    sub_22B936C4C(v3);
  }

  else
  {
    sub_22B960B20(v3);
  }

  return v0;
}

uint64_t sub_22B960554()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22B960068();
}

uint64_t sub_22B9605E0(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_22B960710(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22B960730, 0, 0);
}

uint64_t sub_22B960730()
{
  sub_22B95FA40(v0 + 2);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_22B9358B4(v0 + 2, v0[5]);
    v7 = (*(v2 + 112) + **(v2 + 112));
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_22B95B9B0;
    v4 = v0[7];

    return v7(v4, v1, v2);
  }

  else
  {
    sub_22B960B20((v0 + 2));
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B9608E0(uint64_t a1)
{
  *(a1 + 8) = sub_22B960C54(&qword_281415AB0, type metadata accessor for DatabaseRecord, &unk_22BA14710);
  result = sub_22B960C54(&qword_27D8D4FD8, type metadata accessor for DatabaseRecord, &unk_22BA14534);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22B960968()
{
  result = qword_27D8D4FE0;
  if (!qword_27D8D4FE0)
  {
    sub_22B948760(&qword_27D8D4FE8, qword_22BA145E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FE0);
  }

  return result;
}

unint64_t sub_22B9609D0()
{
  result = qword_27D8D4FF0;
  if (!qword_27D8D4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FF0);
  }

  return result;
}

unint64_t sub_22B960A28()
{
  result = qword_281415AB8;
  if (!qword_281415AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415AB8);
  }

  return result;
}

unint64_t sub_22B960A80()
{
  result = qword_281415AC0;
  if (!qword_281415AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415AC0);
  }

  return result;
}

unint64_t sub_22B960AD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B960B20(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D4FF8, &qword_22BA14748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B960B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B960BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B960C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B960C9C()
{
  result = qword_281415550;
  if (!qword_281415550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415550);
  }

  return result;
}

unint64_t sub_22B960CF0()
{
  result = qword_27D8D5028;
  if (!qword_27D8D5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5028);
  }

  return result;
}

uint64_t sub_22B960D44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ChatLockRecord(uint64_t a1)
{
  result = qword_281415B70;
  if (!qword_281415B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B960E18(uint64_t a1)
{
  sub_22B960EB4();
  if (v1 <= 0x3F)
  {
    sub_22B934C68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B960EB4()
{
  if (!qword_281414C40)
  {
    v0 = sub_22BA1074C();
    if (!v1)
    {
      atomic_store(v0, &qword_281414C40);
    }
  }
}

uint64_t sub_22B960F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v40 - v7;
  v9 = sub_22B9349C8(&qword_27D8D5040, &qword_22BA14808);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for ChatLockRecord(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v47 = a1;
  sub_22B9358B4(a1, v15);
  sub_22B961AD0();
  v16 = v11;
  v17 = v46;
  sub_22BA10D8C();
  if (v17)
  {
    return sub_22B936C4C(v47);
  }

  v18 = v8;
  v42 = v6;
  v46 = v14;
  v56 = 0;
  v19 = v44;
  v20 = v45;
  v21 = sub_22BA10ACC();
  v23 = v46;
  *v46 = v21;
  v23[1] = v24;
  v55 = 1;
  v23[2] = sub_22BA10ACC();
  v23[3] = v25;
  v54 = 2;
  v23[4] = sub_22BA10ACC();
  v23[5] = v26;
  v53 = 3;
  v23[6] = sub_22BA10ACC();
  v23[7] = v27;
  v52 = 4;
  v23[8] = sub_22BA10ACC();
  v23[9] = v28;
  v51 = 5;
  v23[10] = sub_22BA10ACC();
  v23[11] = v29;
  sub_22BA0FD8C();
  v50 = 6;
  v40[1] = sub_22B961C4C(&unk_281416C00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_22BA10AFC();
  v41 = 0;
  sub_22B935A74(v18, v23 + v12[10]);
  v49 = 7;
  v31 = v41;
  v30 = v42;
  sub_22BA10AFC();
  v41 = v31;
  if (v31)
  {
    (*(v19 + 8))(v16, v20);
    v32 = 0;
    v33 = v46;
  }

  else
  {
    v33 = v46;
    sub_22B935A74(v30, v46 + v12[11]);
    v48 = 8;
    v34 = v41;
    v35 = sub_22BA10ACC();
    v41 = v34;
    if (!v34)
    {
      v37 = v35;
      v38 = v36;
      (*(v19 + 8))(v16, v20);
      v39 = (v33 + v12[12]);
      *v39 = v37;
      v39[1] = v38;
      sub_22B961B8C(v33, v43);
      sub_22B936C4C(v47);
      return sub_22B961BF0(v33);
    }

    (*(v19 + 8))(v16, v20);
    v32 = 1;
  }

  sub_22B936C4C(v47);

  result = sub_22B961B24(v33 + v12[10]);
  if (v32)
  {
    return sub_22B961B24(v33 + v12[11]);
  }

  return result;
}

uint64_t sub_22B96150C(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5050, &qword_22BA14810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22B9358B4(a1, a1[3]);
  sub_22B961AD0();
  sub_22BA10D9C();
  v8[31] = 0;
  sub_22BA10B7C();
  if (!v1)
  {
    v8[30] = 1;
    sub_22BA10B7C();
    v8[29] = 2;
    sub_22BA10B7C();
    v8[28] = 3;
    sub_22BA10B7C();
    v8[27] = 4;
    sub_22BA10B7C();
    v8[26] = 5;
    sub_22BA10B7C();
    type metadata accessor for ChatLockRecord(0);
    v8[25] = 6;
    sub_22BA0FD8C();
    sub_22B961C4C(&qword_27D8D5058, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22BA10BAC();
    v8[24] = 7;
    sub_22BA10BAC();
    v8[15] = 8;
    sub_22BA10B7C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22B96180C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1684632935;
    v5 = 0x615465676E616863;
    if (a1 != 2)
    {
      v5 = 0x614E64726F636572;
    }

    if (a1)
    {
      v4 = 0x65636976726573;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F697461657263;
    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x795464726F636572;
    if (a1 != 4)
    {
      v2 = 0x656D614E656E6F7ALL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B961948@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22B961DAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22B961970(uint64_t a1)
{
  v2 = sub_22B961AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9619AC(uint64_t a1)
{
  v2 = sub_22B961AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B961A4C(uint64_t a1)
{
  *(a1 + 8) = sub_22B961C4C(&qword_27D8D5030, type metadata accessor for ChatLockRecord, &unk_22BA147AC);
  result = sub_22B961C4C(&qword_27D8D5038, type metadata accessor for ChatLockRecord, &unk_22BA14784);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22B961AD0()
{
  result = qword_27D8D5048;
  if (!qword_27D8D5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5048);
  }

  return result;
}

uint64_t sub_22B961B24(uint64_t a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B961B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatLockRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B961BF0(uint64_t a1)
{
  v2 = type metadata accessor for ChatLockRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B961C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B961CA8()
{
  result = qword_27D8D5060;
  if (!qword_27D8D5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5060);
  }

  return result;
}

unint64_t sub_22B961D00()
{
  result = qword_27D8D5068;
  if (!qword_27D8D5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5068);
  }

  return result;
}

unint64_t sub_22B961D58()
{
  result = qword_27D8D5070;
  if (!qword_27D8D5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5070);
  }

  return result;
}

uint64_t sub_22B961DAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615465676E616863 && a2 == 0xE900000000000067 || (sub_22BA10C6C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL || (sub_22BA10C6C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x795464726F636572 && a2 == 0xEA00000000006570 || (sub_22BA10C6C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_22BA10C6C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1BAE0 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1BB00 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22B9620AC()
{
  v0 = [swift_getObjCClassFromMetadata() processInfo];
  v1 = [v0 environment];

  v2 = sub_22BA0FF6C();
  if (*(v2 + 16) && (v3 = sub_22B990A58(0x49545345545F5349, 0xEF434E59535F474ELL), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 49 && v6 == 0xE100000000000000)
    {

      return 1;
    }

    else
    {
      v9 = sub_22BA10C6C();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22B9621E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return (sub_22B962298)(a1, a2);
}

uint64_t sub_22B9622B8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isUnderFirstDataProtectionLock];

  if (v2)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1044C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, v4, v5, "Under first data protection lock could not proceed with sync", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }

    sub_22B944A5C();
    swift_allocError();
    *v7 = xmmword_22BA14930;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    v0[3] = sub_22B936CA8(v10, qword_28141AD40);
    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1046C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B92A000, v11, v12, "Not under first data protection lock, proceeding to reload store if necessary", v13, 2u);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    v14 = v0[2];

    v15 = *(v14 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase + 8);
    ObjectType = swift_getObjectType();
    v18 = (*(v15 + 16) + **(v15 + 16));
    v17 = swift_task_alloc();
    v0[4] = v17;
    *v17 = v0;
    v17[1] = sub_22B9625F0;

    return v18(ObjectType, v15);
  }
}

uint64_t sub_22B9625F0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B96272C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3(0, 0);
  }
}

uint64_t sub_22B96272C(uint64_t a1)
{
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1044C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Could not load sync store cannot continue sync.", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  swift_willThrow();
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_22B962808(unsigned __int8 a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B962924(uint64_t a1, unsigned __int8 a2)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B962A3C(uint64_t a1, unsigned __int8 a2)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B962B88()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 sub_22B962C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22B962C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B962CAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B962D1C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x536C616974696E69;
    v6 = 0x6369646F69726570;
    if (a1 != 2)
    {
      v6 = 0x795370756B636162;
    }

    if (a1)
    {
      v5 = 0x6C6C69666B636162;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74696E4972657375;
    v2 = 0x7274656D656C6574;
    if (a1 != 7)
    {
      v2 = 0x7361685074736574;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 4)
    {
      v3 = 0x6C6E4F746E756F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B962E88()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B3A48(v3, v1);
  return sub_22BA10D6C();
}

uint64_t sub_22B962ED8(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  sub_22B9B3A48(v4, v2);
  return sub_22BA10D6C();
}

unint64_t sub_22B962F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B964CB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22B962F4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B962D1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22B962F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B964CB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B962FCC(uint64_t a1)
{
  v2 = sub_22B9642A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B963008(uint64_t a1)
{
  v2 = sub_22B9642A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B963058(uint64_t a1)
{
  sub_22BA1008C();
}

unint64_t sub_22B963164@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B964D04(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22B963194(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73736572676F7270;
  v5 = 0xEB0000000073746ELL;
  v6 = 0x656D686361747461;
  v7 = 0x800000022BA1BBF0;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0x556567617373656DLL;
    v7 = 0xEE00736574616470;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7374616863;
  if (v2 != 1)
  {
    v10 = 0x736567617373656DLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_22B963268()
{
  v1 = *v0;
  v2 = 0x73736572676F7270;
  v3 = 0x656D686361747461;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x556567617373656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7374616863;
  if (v1 != 1)
  {
    v5 = 0x736567617373656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_22B963338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B964D04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B96336C(uint64_t a1)
{
  v2 = sub_22B9642FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9633A8(uint64_t a1)
{
  v2 = sub_22B9642FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9633E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = sub_22B9349C8(&qword_27D8D5078, &qword_22BA14AC8);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v46 - v3;
  v4 = sub_22B9349C8(&qword_27D8D5080, &qword_22BA14AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = sub_22B9349C8(&qword_27D8D5088, &qword_22BA14AD8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v17 = a1[3];
  v77 = a1;
  sub_22B9358B4(a1, v17);
  sub_22B9642A8();
  v18 = v58;
  sub_22BA10D8C();
  if (v18)
  {
    return sub_22B936C4C(v77);
  }

  v52 = v10;
  v51 = v7;
  v58 = 0;
  v53 = v14;
  v19 = *(v57 + 56);
  v20 = v56;
  v19(v12, 1, 1, v56);
  v21 = byte_283F511F8;
  LOBYTE(v65[0]) = byte_283F511F8;
  if ((sub_22BA10B5C() & 1) == 0)
  {
    v21 = byte_283F511F9;
    LOBYTE(v65[0]) = byte_283F511F9;
    if ((sub_22BA10B5C() & 1) == 0)
    {
      v21 = byte_283F511FA;
      LOBYTE(v65[0]) = byte_283F511FA;
      if ((sub_22BA10B5C() & 1) == 0)
      {
        v21 = byte_283F511FB;
        LOBYTE(v65[0]) = byte_283F511FB;
        if ((sub_22BA10B5C() & 1) == 0)
        {
          v21 = byte_283F511FC;
          LOBYTE(v65[0]) = byte_283F511FC;
          if ((sub_22BA10B5C() & 1) == 0)
          {
            v21 = byte_283F511FD;
            LOBYTE(v65[0]) = byte_283F511FD;
            if ((sub_22BA10B5C() & 1) == 0)
            {
              v21 = byte_283F511FE;
              LOBYTE(v65[0]) = byte_283F511FE;
              if ((sub_22BA10B5C() & 1) == 0)
              {
                v21 = byte_283F511FF;
                LOBYTE(v65[0]) = byte_283F511FF;
                if ((sub_22BA10B5C() & 1) == 0)
                {
                  v21 = byte_283F51200;
                  LOBYTE(v65[0]) = byte_283F51200;
                  if ((sub_22BA10B5C() & 1) == 0)
                  {
                    v50 = v12;
                    goto LABEL_17;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v22 = byte_22BA14E6E[v21];
  LOBYTE(v65[0]) = v21;
  sub_22B9642FC();
  v23 = v52;
  v24 = v58;
  sub_22BA10ABC();
  if (v24)
  {
    v25 = v12;
LABEL_13:
    sub_22B964350(v25);
    (*(v53 + 8))(v16, v13);
    return sub_22B936C4C(v77);
  }

  v49 = v22;
  v58 = 0;
  sub_22B964350(v12);
  v19(v23, 0, 1, v20);
  sub_22B9643B8(v23, v12);
  v27 = v51;
  sub_22B964428(v12, v51);
  v28 = v57;
  v29 = (*(v57 + 48))(v27, 1, v20);
  v50 = v12;
  if (v29 == 1)
  {
    sub_22B964350(v27);
LABEL_17:
    v30 = MEMORY[0x277D84F90];
    v52 = sub_22B9BB998(MEMORY[0x277D84F90]);
    v31 = sub_22B9BB998(v30);
    v32 = sub_22B9BB998(v30);
    v51 = sub_22B9BB998(v30);
    v33 = sub_22B9BB998(v30);
    v34 = 9;
    v35 = v55;
    v36 = v53;
    goto LABEL_18;
  }

  v43 = v54;
  (*(v28 + 32))(v54, v27, v20);
  sub_22B9349C8(&qword_27D8D5090, &qword_22BA14AE0);
  LOBYTE(v59) = 1;
  sub_22B9647A8(&qword_27D8D5098, sub_22B964700, sub_22B964754, MEMORY[0x277D83528]);
  v44 = v58;
  sub_22BA10B3C();
  if (v44)
  {
    (*(v28 + 8))(v43, v20);
    v25 = v50;
    goto LABEL_13;
  }

  v52 = v65[0];
  LOBYTE(v59) = 2;
  sub_22BA10B3C();
  v36 = v53;
  v48 = v65[0];
  LOBYTE(v59) = 3;
  v58 = 0;
  sub_22BA10B3C();
  v47 = v65[0];
  LOBYTE(v59) = 4;
  v45 = v56;
  sub_22BA10B3C();
  v51 = v65[0];
  LOBYTE(v59) = 5;
  sub_22BA10B3C();
  v58 = 0;
  v33 = v65[0];
  (*(v28 + 8))(v43, v45);
  v35 = v55;
  v34 = v49;
  v31 = v48;
  v32 = v47;
LABEL_18:
  sub_22B964350(v50);
  (*(v36 + 8))(v16, v13);
  LOBYTE(v59) = v34;
  DWORD1(v59) = *&v76[3];
  *(&v59 + 1) = *v76;
  *&v60 = 0;
  *(&v59 + 1) = 0;
  BYTE8(v60) = 0;
  *(&v60 + 9) = *v75;
  HIDWORD(v60) = *&v75[3];
  v37 = v52;
  *&v61 = v52;
  *(&v61 + 1) = v31;
  v38 = v51;
  *&v62 = v32;
  *(&v62 + 1) = v51;
  v39 = v31;
  v40 = MEMORY[0x277D84F90];
  *&v63 = v33;
  *(&v63 + 1) = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  *(v35 + 80) = MEMORY[0x277D84F90];
  v41 = v62;
  *(v35 + 32) = v61;
  *(v35 + 48) = v41;
  *(v35 + 64) = v63;
  v42 = v60;
  *v35 = v59;
  *(v35 + 16) = v42;
  sub_22B964698(&v59, v65);
  sub_22B936C4C(v77);
  LOBYTE(v65[0]) = v34;
  *(v65 + 1) = *v76;
  HIDWORD(v65[0]) = *&v76[3];
  v65[1] = 0;
  v65[2] = 0;
  v66 = 0;
  *v67 = *v75;
  *&v67[3] = *&v75[3];
  v68 = v37;
  v69 = v39;
  v70 = v32;
  v71 = v38;
  v72 = v33;
  v73 = v40;
  v74 = v40;
  return sub_22B9646D0(v65);
}

uint64_t sub_22B963E54(void *a1)
{
  v25 = sub_22B9349C8(&qword_27D8D50B0, &qword_22BA14AE8);
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v21 - v3;
  v5 = sub_22B9349C8(&qword_27D8D50B8, &qword_22BA14AF0);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = *v1;
  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[7];
  v23 = v1[6];
  v24 = v9;
  v21 = v1[8];
  v22 = v11;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9642A8();

  sub_22BA10D9C();
  v12 = byte_22BA14E77[v8];
  v13 = v25;
  LOBYTE(v31) = v12;
  sub_22B9642FC();
  v29 = v5;
  sub_22BA10B6C();
  v31 = v10;
  v30 = 1;
  sub_22B9349C8(&qword_27D8D5090, &qword_22BA14AE0);
  sub_22B9647A8(&qword_281414C68, sub_22B964838, sub_22B96488C, MEMORY[0x277D83508]);
  v14 = v4;
  v15 = v27;
  sub_22BA10BEC();
  if (v15)
  {

    (*(v28 + 8))(v4, v13);
    return (*(v26 + 8))(v7, v29);
  }

  else
  {
    v17 = v23;
    v27 = v7;
    v18 = v28;

    v31 = v24;
    v30 = 2;
    sub_22BA10BEC();
    v31 = v17;
    v30 = 3;
    v19 = v13;
    sub_22BA10BEC();
    v20 = v26;
    v31 = v22;
    v30 = 4;
    sub_22BA10BEC();
    v31 = v21;
    v30 = 5;
    sub_22BA10BEC();
    (*(v18 + 8))(v14, v19);
    return (*(v20 + 8))(v27, v29);
  }
}

unint64_t sub_22B9642A8()
{
  result = qword_281416A20;
  if (!qword_281416A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A20);
  }

  return result;
}

unint64_t sub_22B9642FC()
{
  result = qword_281416A48;
  if (!qword_281416A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A48);
  }

  return result;
}

uint64_t sub_22B964350(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5080, &qword_22BA14AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B9643B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5080, &qword_22BA14AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B964428(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5080, &qword_22BA14AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B964498(char a1)
{
  v2 = v1[3];
  v15[2] = v1[2];
  v15[3] = v2;
  v15[4] = v1[4];
  v16 = *(v1 + 10);
  v3 = v1[1];
  v15[0] = *v1;
  v15[1] = v3;
  if ((a1 - 1) > 4u)
  {
    v5 = MEMORY[0x277D84F90];

    return sub_22B9BB998(v5);
  }

  else
  {
    swift_getKeyPath();
    v9 = v1[2];
    v10 = v1[3];
    v11 = v1[4];
    v12 = *(v1 + 10);
    v7 = *v1;
    v8 = v1[1];
    sub_22B964698(v15, v13);

    swift_getAtKeyPath();

    v13[2] = v9;
    v13[3] = v10;
    v13[4] = v11;
    v14 = v12;
    v13[0] = v7;
    v13[1] = v8;
    sub_22B9646D0(v13);
    return v6;
  }
}

uint64_t sub_22B9645B8()
{
  sub_22BA0F9BC();
  swift_allocObject();
  result = sub_22BA0F9AC();
  qword_281416A60 = result;
  return result;
}

uint64_t sub_22B9645F8(uint64_t a1, char a2)
{
  swift_beginAccess();
  if ((a2 - 1) >= 5u)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_setAtWritableKeyPath();
  }

  return swift_endAccess();
}

unint64_t sub_22B964700()
{
  result = qword_27D8D50A0;
  if (!qword_27D8D50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50A0);
  }

  return result;
}

unint64_t sub_22B964754()
{
  result = qword_27D8D50A8;
  if (!qword_27D8D50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50A8);
  }

  return result;
}

uint64_t sub_22B9647A8(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(&qword_27D8D5090, &qword_22BA14AE0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B964838()
{
  result = qword_281416678[0];
  if (!qword_281416678[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281416678);
  }

  return result;
}

unint64_t sub_22B96488C()
{
  result = qword_281416648;
  if (!qword_281416648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416648);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncStatsCollector.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncStatsCollector.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B964A44()
{
  result = qword_27D8D50C0;
  if (!qword_27D8D50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50C0);
  }

  return result;
}

unint64_t sub_22B964A9C()
{
  result = qword_27D8D50C8;
  if (!qword_27D8D50C8)
  {
    sub_22B948760(&qword_27D8D50D0, qword_22BA14C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50C8);
  }

  return result;
}

unint64_t sub_22B964B04()
{
  result = qword_27D8D50D8;
  if (!qword_27D8D50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50D8);
  }

  return result;
}

unint64_t sub_22B964B5C()
{
  result = qword_281416A38;
  if (!qword_281416A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A38);
  }

  return result;
}

unint64_t sub_22B964BB4()
{
  result = qword_281416A40;
  if (!qword_281416A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A40);
  }

  return result;
}

unint64_t sub_22B964C0C()
{
  result = qword_281416A28;
  if (!qword_281416A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A28);
  }

  return result;
}

unint64_t sub_22B964C64()
{
  result = qword_281416A30;
  if (!qword_281416A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A30);
  }

  return result;
}

unint64_t sub_22B964CB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22B964D04(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B964D50()
{
  type metadata accessor for ImportContextFactory();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28141AD90 = v0;
  return result;
}

uint64_t sub_22B964D8C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

id sub_22B964DE0(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22BA0FBBC();
  v6[0] = 0;
  LODWORD(a2) = [a2 removeItemAtURL:v3 error:v6];

  if (a2)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_22BA0FB6C();

  return swift_willThrow();
}

id sub_22B964EA4(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22BA0FBBC();
  v5 = sub_22BA0FBBC();
  v8[0] = 0;
  LODWORD(a3) = [a3 moveItemAtURL:v4 toURL:v5 error:v8];

  if (a3)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_22BA0FB6C();

  return swift_willThrow();
}

id sub_22B964F88(uint64_t a1, char a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22BA0FBBC();
  v8[0] = 0;
  LODWORD(a3) = [a3 createDirectoryAtURL:v5 withIntermediateDirectories:a2 & 1 attributes:0 error:v8];

  if (a3)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_22BA0FB6C();

  return swift_willThrow();
}

uint64_t type metadata accessor for RecoverableMessageRecord(uint64_t a1)
{
  result = qword_2814150B8;
  if (!qword_2814150B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B9650DC(uint64_t a1)
{
  sub_22B9651AC(319, &qword_281414C40, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22B934C68(319);
    if (v2 <= 0x3F)
    {
      sub_22B9651AC(319, &unk_281416C20, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B9651AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22BA1074C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_22B9651F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_22B9349C8(&qword_27D8D50F0, &qword_22BA14FE8);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v57 - v4;
  v5 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v66 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for RecoverableMessageRecord(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v68 = a1;
  sub_22B9358B4(a1, v19);
  sub_22B9358F8();
  v20 = v67;
  sub_22BA10D8C();
  if (v20)
  {
    return sub_22B936C4C(v68);
  }

  v21 = v12;
  v67 = v16;
  LOBYTE(v69) = 0;
  *v18 = sub_22BA10ACC();
  v18[1] = v23;
  LOBYTE(v69) = 1;
  v24 = sub_22BA10ACC();
  v25 = v66;
  v18[2] = v24;
  v18[3] = v26;
  LOBYTE(v69) = 2;
  v59 = 0;
  v18[4] = sub_22BA10ACC();
  v18[5] = v27;
  LOBYTE(v69) = 3;
  v18[6] = sub_22BA10ACC();
  v18[7] = v28;
  LOBYTE(v69) = 4;
  v18[8] = sub_22BA10ACC();
  v18[9] = v29;
  LOBYTE(v69) = 5;
  v30 = sub_22BA10ACC();
  v60 = 0;
  v18[10] = v30;
  v18[11] = v31;
  v32 = sub_22BA0FD8C();
  LOBYTE(v69) = 6;
  v33 = sub_22B9660FC(&unk_281416C00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v34 = v21;
  v35 = v32;
  v58 = v34;
  v59 = v33;
  v36 = v60;
  sub_22BA10AFC();
  v37 = v36;
  if (v36)
  {
    (*(v25 + 8))(v15, v13);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v60 = v36;
    v42 = v67;
    goto LABEL_8;
  }

  sub_22B935A74(v58, v18 + v67[10]);
  LOBYTE(v69) = 7;
  v41 = v10;
  sub_22BA10AFC();
  v60 = 0;
  v42 = v67;
  sub_22B935A74(v41, v18 + v67[11]);
  LOBYTE(v69) = 8;
  v43 = v60;
  v44 = sub_22BA10ACC();
  v60 = v43;
  if (v43)
  {
    (*(v66 + 8))(v15, v13);
    v39 = 0;
    v40 = 0;
    v38 = 1;
    goto LABEL_8;
  }

  v58 = 0;
  v59 = v13;
  v46 = (v18 + v42[12]);
  *v46 = v44;
  v46[1] = v45;
  sub_22B9358B4(v68, v68[3]);
  sub_22B960CF0();
  v47 = v60;
  sub_22BA10D8C();
  v60 = v47;
  if (!v47)
  {
    LOBYTE(v69) = 0;
    v48 = sub_22BA10B0C();
    v60 = 0;
    v50 = v49;
    v39 = 1;
    v51 = 1;
    if ((v50 & 1) == 0)
    {
      result = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v52 = result;
      sub_22BA0FD5C();

      v51 = 0;
    }

    v53 = v62;
    (*(*(v35 - 8) + 56))(v62, v51, 1, v35);
    sub_22B935A74(v53, v18 + v67[13]);
    LOBYTE(v69) = 1;
    if (sub_22BA10B5C())
    {
      v70 = 1;
      sub_22B9363C8();
      v54 = v60;
      sub_22BA10AFC();
      v60 = v54;
      if (v54)
      {
        (*(v63 + 8))(v65, v64);
        (*(v66 + 8))(v15, v59);
        v38 = 1;
        v40 = 1;
        goto LABEL_22;
      }

      (*(v63 + 8))(v65, v64);
      (*(v66 + 8))(v15, v59);
      v55 = v67[14];
      v56 = v69;
    }

    else
    {
      (*(v63 + 8))(v65, v64);
      (*(v66 + 8))(v15, v59);
      v55 = v67[14];
      v56 = xmmword_22BA14F50;
    }

    *(v18 + v55) = v56;
    sub_22B966144(v18, v61);
    sub_22B936C4C(v68);
    return sub_22B9661A8(v18);
  }

  (*(v66 + 8))(v15, v59);
  v40 = 0;
  v38 = 1;
  v39 = 1;
LABEL_22:
  v42 = v67;
  v37 = v58;
LABEL_8:
  sub_22B936C4C(v68);

  if (v37)
  {
    if (v38)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = sub_22B961B24(v18 + v42[10]);
    if (v38)
    {
LABEL_10:
      result = sub_22B961B24(v18 + v42[11]);
      if ((v39 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  if (!v39)
  {
LABEL_11:
    if (v40)
    {
      return sub_22B961B24(v18 + v42[13]);
    }

    return result;
  }

LABEL_15:

  if (v40)
  {
    return sub_22B961B24(v18 + v42[13]);
  }

  return result;
}

uint64_t sub_22B965B60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79646F4274726170;
  }

  else
  {
    v3 = 0x61446574656C6564;
  }

  if (v2)
  {
    v4 = 0xEA00000000006574;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x79646F4274726170;
  }

  else
  {
    v5 = 0x61446574656C6564;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006574;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B965C0C()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B965C94(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B965D08(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B965D8C@<X0>(char *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22B965DEC(uint64_t *a1@<X8>)
{
  v2 = 0x61446574656C6564;
  if (*v1)
  {
    v2 = 0x79646F4274726170;
  }

  v3 = 0xEA00000000006574;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22B965E30()
{
  if (*v0)
  {
    return 0x79646F4274726170;
  }

  else
  {
    return 0x61446574656C6564;
  }
}

uint64_t sub_22B965E70@<X0>(char *a3@<X8>)
{
  v4 = sub_22BA10AAC();

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

uint64_t sub_22B965ED4(uint64_t a1)
{
  v2 = sub_22B960CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B965F10(uint64_t a1)
{
  v2 = sub_22B960CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B965F64(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5020, &qword_22BA14758);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22B9358B4(a1, a1[3]);
  sub_22B960CF0();
  sub_22BA10D9C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22B966078(uint64_t a1)
{
  *(a1 + 8) = sub_22B9660FC(&qword_27D8D50E0, type metadata accessor for RecoverableMessageRecord, &unk_22BA14FA4);
  result = sub_22B9660FC(&qword_27D8D50E8, type metadata accessor for RecoverableMessageRecord, &unk_22BA14F7C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B9660FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B966144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoverableMessageRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9661A8(uint64_t a1)
{
  v2 = type metadata accessor for RecoverableMessageRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B966218()
{
  result = qword_27D8D50F8;
  if (!qword_27D8D50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50F8);
  }

  return result;
}

unint64_t sub_22B966270()
{
  result = qword_27D8D5100;
  if (!qword_27D8D5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5100);
  }

  return result;
}

unint64_t sub_22B9662C8()
{
  result = qword_27D8D5108;
  if (!qword_27D8D5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5108);
  }

  return result;
}

id sub_22B96631C(void *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v83 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v65 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v65 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v16 = type metadata accessor for MessageRecord(0);
  v17 = (a1 + v16[24]);
  v19 = *v17;
  v18 = v17[1];
  v80 = v18;
  v72 = v19;
  if (v18)
  {
    sub_22B9349C8(&qword_27D8D5110, &unk_22BA15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = 0x6E6F737265505A46;
    *(inited + 40) = 0xEA00000000004449;
    *(inited + 48) = v19;
    *(inited + 56) = v18;

    v21 = sub_22B9BB884(inited);
    swift_setDeallocating();
    sub_22B967A40(inited + 32);
    sub_22B98BF80(v21);

    v78 = sub_22BA0FF5C();
  }

  else
  {
    v78 = 0;
  }

  sub_22B94498C(a1 + v16[14], v15);
  v22 = sub_22BA0FD8C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v15, 1, v22);
  v82 = 0;
  if (v25 != 1)
  {
    v82 = sub_22BA0FCFC();
    (*(v23 + 8))(v15, v22);
  }

  sub_22B94498C(a1 + v16[15], v13);
  if (v24(v13, 1, v22) == 1)
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_22BA0FCFC();
    (*(v23 + 8))(v13, v22);
  }

  sub_22B94498C(a1 + v16[16], v10);
  if (v24(v10, 1, v22) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_22BA0FCFC();
    (*(v23 + 8))(v10, v22);
  }

  sub_22B94498C(a1 + v16[17], v7);
  result = v24(v7, 1, v22);
  if (result == 1)
  {
    v76 = 0;
  }

  else
  {
    v76 = sub_22BA0FCFC();
    result = (*(v23 + 8))(v7, v22);
  }

  if (*(a1 + v16[22] + 8))
  {
    result = sub_22BA0FFCC();
    v28 = result;
  }

  else
  {
    v28 = 0;
  }

  v81 = 0;
  v29 = (a1 + v16[18]);
  if (v29[1] != 1)
  {
    v30 = v29[3];
    if (v30 >> 60 != 15)
    {
      v31 = v29[2];
      sub_22B936A50(v31, v29[3]);
      v81 = sub_22BA0FC8C();
      result = sub_22B9359A8(v31, v30);
    }
  }

  v32 = a1 + v16[19];
  if (v32[8])
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v73 = v33;
  if (a1[1])
  {
    v75 = sub_22BA0FFCC();
  }

  else
  {
    v75 = 0;
  }

  v34 = v83;
  if (a1[3])
  {
    v74 = sub_22BA0FFCC();
    if (v80)
    {
LABEL_30:
      v80 = sub_22BA0FFCC();
      goto LABEL_33;
    }
  }

  else
  {
    v74 = 0;
    if (v80)
    {
      goto LABEL_30;
    }
  }

  v80 = 0;
LABEL_33:
  v35 = a1 + v16[26];
  v71 = *v35;
  v70 = v35[8];
  if (*(a1 + v16[28] + 8))
  {
    v83 = sub_22BA0FFCC();
  }

  else
  {
    v83 = 0;
  }

  v72 = v26;
  if (*(a1 + v16[29] + 8) >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_22BA0FC8C();
  }

  if (*(a1 + v16[30] + 8))
  {
    v37 = sub_22BA0FFCC();
  }

  else
  {
    v37 = 0;
  }

  sub_22B94498C(a1 + v16[31], v34);
  result = v24(v34, 1, v22);
  if (result == 1)
  {
    v38 = 0;
  }

  else
  {
    v39 = v34;
    v38 = sub_22BA0FCFC();
    result = (*(v23 + 8))(v39, v22);
  }

  v40 = a1 + v16[20];
  if (v40[8])
  {
    v41 = 0;
  }

  else
  {
    v41 = *v40;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (HIDWORD(v41))
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v42 = a1 + v16[23];
  v43 = *v42;
  v44 = v42[8];
  v45 = *(a1 + v16[35] + 8);
  v69 = a1;
  if (v45)
  {
    v46 = sub_22BA0FFCC();
  }

  else
  {
    v46 = 0;
  }

  v68 = v46;
  if (v44)
  {
    v43 = 0;
  }

  if (v70)
  {
    v47 = 0;
  }

  else
  {
    v47 = v71;
  }

  v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v64 = v46;
  v63 = v43;
  LODWORD(v62) = v41;
  v61 = v38;
  v67 = v37;
  v60 = v37;
  v66 = v36;
  v59 = v36;
  v58 = v47;
  v49 = v80;
  v50 = v74;
  v51 = v75;
  v79 = v38;
  v52 = v81;
  v54 = v77;
  v53 = v78;
  v55 = v82;
  v56 = v72;
  v57 = v76;
  v73 = [v48 initWithSenderInfo:v78 time:v82 timeRead:v77 timeDelivered:v72 timePlayed:v76 subject:v28 body:0 bodyData:v81 attributes:0 fileTransferGUIDs:0 flags:v73 guid:v75 messageID:0 account:0 accountID:0 service:v74 handle:v80 roomName:0 unformattedID:0 countryCode:0 expireState:v58 balloonBundleID:v83 payloadData:v59 expressiveSendStyleID:v60 timeExpressiveSendPlayed:v61 bizIntent:0 locale:0 biaReferenceID:0 errorType:v62 threadIdentifier:0 syndicationRanges:0 syncedSyndicationRanges:0 partCount:v63 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:0 cloudKitChatID:v64];

  sub_22B93697C(v69);
  return v73;
}

void sub_22B966A88(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v14 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v115 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v113 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v113 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v113 - v23;
  if (a1)
  {
    v113 = a5;
    v114 = a6;
    v25 = a1;
    v119 = a3;
    v116 = a4;
    sub_22B9B26C0(a1, v24);
    v26 = sub_22BA0FD8C();
    v27 = *(*(v26 - 8) + 48);
    v117 = *(v26 - 8);
    v118 = v27;
    v28 = 0;
    if (v27(v24, 1, v26) != 1)
    {
      v28 = sub_22BA0FCFC();
      (*(v117 + 8))(v24, v26);
    }

    [v7 setTimeExpressiveSendPlayed_];

    a4 = v116;
    sub_22B9B26CC(a1, v22);
    if (v118(v22, 1, v26) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_22BA0FCFC();
      (*(v117 + 8))(v22, v26);
    }

    [v7 setTimePlayed_];

    sub_22B9B26D8(a1, v19);
    if (v118(v19, 1, v26) == 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_22BA0FCFC();
      (*(v117 + 8))(v19, v26);
    }

    [v7 setTimeRead_];

    v40 = [v25 baloonBundleId];
    [v7 setBalloonBundleID_];

    v41 = [v25 expressiveSendId];
    [v7 setExpressiveSendStyleID_];

    v42 = [v25 messageBodyData];
    if (v42)
    {
      v43 = v42;
      v44 = sub_22BA0FCAC();
      v46 = v45;

      v47 = sub_22BA0FC8C();
      sub_22B9359BC(v44, v46);
    }

    else
    {

      v47 = 0;
    }

    [v7 setBodyData_];

    v48 = [v25 messageSubject];
    [v7 setSubject_];

    v49 = v25;
    v50 = [v49 messageSummaryInfo];
    if (v50)
    {
      v51 = v50;
      v52 = sub_22BA0FCAC();
      v54 = v53;

      v55 = sub_22BA0FC8C();
      sub_22B9359BC(v52, v54);
    }

    else
    {
      v55 = 0;
    }

    v56 = JWDecodeDictionary();

    if (v56)
    {
      v57 = sub_22BA0FF6C();

      sub_22B98963C(v57);
      v59 = v58;

      if (v59)
      {
        sub_22B98C248(v59);

        v59 = sub_22BA0FF5C();
      }

      a4 = v116;
    }

    else
    {

      v59 = 0;
    }

    [v7 setMessageSummaryInfo_];

    v60 = [v49 payloadData];
    if (v60)
    {
      v61 = v60;
      v62 = sub_22BA0FCAC();
      v64 = v63;

      v65 = sub_22BA0FC8C();
      sub_22B9359BC(v62, v64);
    }

    else
    {

      v65 = 0;
    }

    [v7 setPayloadData_];

    v66 = v115;
    v67 = a1;
    v33 = v119;
    sub_22B9B26E4(v67, v115);
    if (v118(v66, 1, v26) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = sub_22BA0FCFC();
      (*(v117 + 8))(v66, v26);
    }

    v38 = v113;
    a6 = v114;
    [v7 setTimeDelivered_];

    v69 = [v49 expireState];
    [v7 setExpireState_];
    if (a2)
    {
LABEL_33:
      v70 = [a2 threadIdentifier];
      [v7 setThreadIdentifier_];

      if (!v33)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v30 = sub_22BA0FEFC();
    sub_22B936CA8(v30, qword_28141AD10);

    v31 = sub_22BA0FEDC();
    v32 = sub_22BA1044C();

    v33 = a3;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = a5;
      v37 = v35;
      v120 = v35;
      *v34 = 136315138;
      v38 = v36;
      *(v34 + 4) = sub_22B99153C(v36, a6, &v120);
      _os_log_impl(&dword_22B92A000, v31, v32, "No Proto for IMMessageItem %s", v34, 0xCu);
      sub_22B936C4C(v37);
      MEMORY[0x23189ADD0](v37, -1, -1);
      MEMORY[0x23189ADD0](v34, -1, -1);

      if (a2)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v38 = a5;

      if (a2)
      {
        goto LABEL_33;
      }
    }
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v76 = sub_22BA0FEFC();
  sub_22B936CA8(v76, qword_28141AD10);

  v77 = sub_22BA0FEDC();
  v78 = sub_22BA1042C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v120 = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_22B99153C(v38, a6, &v120);
    _os_log_impl(&dword_22B92A000, v77, v78, "No Proto2 for IMMessageItem %s", v79, 0xCu);
    sub_22B936C4C(v80);
    MEMORY[0x23189ADD0](v80, -1, -1);
    MEMORY[0x23189ADD0](v79, -1, -1);
  }

  if (!v33)
  {
LABEL_34:
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v71 = sub_22BA0FEFC();
    sub_22B936CA8(v71, qword_28141AD10);

    v72 = sub_22BA0FEDC();
    v73 = sub_22BA1042C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v120 = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_22B99153C(v38, a6, &v120);
      _os_log_impl(&dword_22B92A000, v72, v73, "No Proto3 for IMMessageItem %s", v74, 0xCu);
      sub_22B936C4C(v75);
      MEMORY[0x23189ADD0](v75, -1, -1);
      MEMORY[0x23189ADD0](v74, -1, -1);
    }

    if (!a4)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_46:
  v81 = v33;
  [v7 setCMMState_];
  v82 = [v81 cmmAssetOffset];

  [v7 setCMMAssetOffset_];
  if (!a4)
  {
    return;
  }

LABEL_47:
  v83 = a4;
  if ([v83 hasActualService])
  {
    v84 = [v83 actualService];
    [v7 setService_];
  }

  if ([v83 hasScheduleType] && (objc_msgSend(v83, sel_hasScheduleState) & 1) != 0)
  {
    if ([v83 hasScheduleType])
    {
      v85 = [v83 scheduleType];

      v86 = v85;
    }

    else
    {

      v86 = 0;
    }

    [v7 setScheduleType_];
    if ([v83 hasScheduleState])
    {
      v87 = [v83 scheduleState];

      v88 = v87;
    }

    else
    {

      v88 = 0;
    }

    [v7 setScheduleState_];
  }

  else
  {
  }

  if ([v83 hasActualParentChatId])
  {
    v89 = [v83 actualParentChatId];
    if (v89)
    {
      v90 = v89;
      v91 = sub_22BA0FFFC();
      v93 = v92;
      v94 = [v7 cloudKitChatID];
      if (v94)
      {
        v95 = v94;
        v96 = sub_22BA0FFFC();
        v98 = v97;

        if (v91 == v96 && v93 == v98)
        {

          return;
        }

        v99 = sub_22BA10C6C();

        if (v99)
        {

          return;
        }
      }

      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v100 = sub_22BA0FEFC();
      sub_22B936CA8(v100, qword_28141AD10);

      v101 = v7;
      v102 = sub_22BA0FEDC();
      v103 = sub_22BA1042C();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v120 = v105;
        *v104 = 136315394;
        v106 = sub_22B99153C(v91, v93, &v120);

        *(v104 + 4) = v106;
        *(v104 + 12) = 2080;
        v107 = [v101 cloudKitChatID];
        if (v107)
        {
          v108 = v107;
          v109 = sub_22BA0FFFC();
          v111 = v110;
        }

        else
        {
          v111 = 0xE300000000000000;
          v109 = 7104878;
        }

        v112 = sub_22B99153C(v109, v111, &v120);

        *(v104 + 14) = v112;
        _os_log_impl(&dword_22B92A000, v102, v103, "Taking %s from proto4 over %s", v104, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v105, -1, -1);
        MEMORY[0x23189ADD0](v104, -1, -1);
      }

      else
      {
      }

      [v101 setCloudKitChatID_];
    }
  }
}

id sub_22B967888(uint64_t a1)
{
  v2 = type metadata accessor for MessageRecord(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B9679F4();
  sub_22B936918(a1, v5);
  v6 = sub_22B96631C(v5);
  v7 = a1 + *(v3 + 144);
  v8 = *v7;
  if (*v7 == 1)
  {
    return v6;
  }

  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v19 = v11;
  v20 = v8;
  v12 = v9;
  v13 = v10;
  result = [v6 guid];
  if (result)
  {
    v15 = result;
    v16 = sub_22BA0FFFC();
    v18 = v17;

    sub_22B966A88(v8, v9, v10, v11, v16, v18);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B9679F4()
{
  result = qword_281414B90;
  if (!qword_281414B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B90);
  }

  return result;
}

uint64_t sub_22B967A40(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5118, &qword_22BA16E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B967AB8()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B967B1C(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B967B68@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_22B967BE8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22BA10AAC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_22B967C40(uint64_t a1)
{
  v2 = sub_22B968C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B967C7C(uint64_t a1)
{
  v2 = sub_22B968C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B967CB8()
{
  sub_22BA0FA9C();
  swift_allocObject();
  result = sub_22BA0FA8C();
  qword_28141ADD8 = result;
  return result;
}

uint64_t sub_22B967CF8()
{
  sub_22BA0FADC();
  swift_allocObject();
  v0 = sub_22BA0FACC();
  result = sub_22BA0FAAC();
  qword_27D8DE1D0 = v0;
  return result;
}

uint64_t sub_22B967D44(void *a1, uint64_t a2)
{
  v5 = sub_22B9349C8(&qword_27D8D5138, &qword_22BA15218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22B968C40();
  sub_22BA10D9C();
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v29 = v8;
    v30 = v6;
    v31 = v5;
    v33 = v2;
    v40 = MEMORY[0x277D84F90];
    sub_22B968140(0, v9, 0);
    v10 = v40;
    v11 = (a2 + 72);
    while (1)
    {
      v32 = v10;
      v12 = *(v11 - 5);
      v13 = *(v11 - 4);
      v14 = *(v11 - 3);
      v15 = *(v11 - 2);
      v17 = *(v11 - 1);
      v16 = *v11;
      v18 = qword_27D8D4980;

      if (v18 != -1)
      {
        swift_once();
      }

      v34 = v12;
      v35 = v13;
      v36 = v14;
      v37 = v15;
      v38 = v17;
      v39 = v16;
      sub_22B968CE8();
      v19 = v33;
      v20 = sub_22BA0FABC();
      if (v19)
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      v33 = 0;

      v10 = v32;
      v40 = v32;
      v25 = *(v32 + 16);
      v24 = *(v32 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22B968140((v24 > 1), v25 + 1, 1);
        v10 = v40;
      }

      v11 += 6;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      if (!--v9)
      {
        v6 = v30;
        v5 = v31;
        v8 = v29;
        goto LABEL_11;
      }
    }

    (*(v30 + 8))(v29, v31);
  }

  else
  {
LABEL_11:
    v34 = v10;
    sub_22B9349C8(&qword_27D8D5128, &qword_22BA15208);
    sub_22B968D3C(&qword_27D8D5148, sub_22B968DB4, MEMORY[0x277D83948]);
    sub_22BA10BEC();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_22B96806C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22B9688AC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_22B9680C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B968180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B9680E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B968358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B968100(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B968464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B968120(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B968570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B968140(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B968690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B968160(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B96879C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B968180(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22B9349C8(&qword_27D8D5180, &unk_22BA15390);
  v10 = *(type metadata accessor for DatabaseRecord(0) - 8);
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

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DatabaseRecord(0) - 8);
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

char *sub_22B968358(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5160, &qword_22BA15228);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B968464(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B968570(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5130, &qword_22BA15210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B968690(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5158, &qword_22BA15220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B96879C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22B9688AC(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5120, &qword_22BA15200);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  sub_22B9358B4(a1, a1[3]);
  sub_22B968C40();
  sub_22BA10D8C();
  if (v1)
  {
    goto LABEL_3;
  }

  sub_22B9349C8(&qword_27D8D5128, &qword_22BA15208);
  sub_22B968D3C(&unk_281414C30, sub_22B9363C8, MEMORY[0x277D83978]);
  sub_22BA10AFC();
  if (v29)
  {
    v8 = v29;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);
  if (!v9)
  {

    (*(v4 + 8))(v6, v3);
    v4 = MEMORY[0x277D84F90];
LABEL_3:
    sub_22B936C4C(a1);
    return v4;
  }

  v23 = v6;
  v24 = v4;
  v25 = v3;
  v26 = a1;
  v33 = MEMORY[0x277D84F90];
  result = sub_22B968120(0, v9, 0);
  v10 = 0;
  v4 = v33;
  v11 = (v8 + 40);
  v27 = v9;
  v28 = v8;
  while (v10 < *(v8 + 16))
  {
    v13 = *(v11 - 1);
    v12 = *v11;
    sub_22B936A50(v13, *v11);
    if (qword_2814158B8 != -1)
    {
      swift_once();
    }

    sub_22B968C94();
    sub_22BA0FA7C();
    result = sub_22B9359BC(v13, v12);
    v15 = v29;
    v14 = v30;
    v16 = v31;
    v17 = v32;
    v33 = v4;
    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    if (v19 >= v18 >> 1)
    {
      v21 = v32;
      v22 = v31;
      result = sub_22B968120((v18 > 1), v19 + 1, 1);
      v17 = v21;
      v16 = v22;
      v4 = v33;
    }

    ++v10;
    *(v4 + 16) = v19 + 1;
    v20 = v4 + 48 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v14;
    *(v20 + 48) = v16;
    *(v20 + 64) = v17;
    v11 += 2;
    v8 = v28;
    if (v27 == v10)
    {
      (*(v24 + 8))(v23, v25);

      a1 = v26;
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B968C40()
{
  result = qword_2814158D0;
  if (!qword_2814158D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158D0);
  }

  return result;
}

unint64_t sub_22B968C94()
{
  result = qword_281415E58;
  if (!qword_281415E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E58);
  }

  return result;
}

unint64_t sub_22B968CE8()
{
  result = qword_27D8D5140;
  if (!qword_27D8D5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5140);
  }

  return result;
}

uint64_t sub_22B968D3C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(&qword_27D8D5128, &qword_22BA15208);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B968DB4()
{
  result = qword_27D8D5150;
  if (!qword_27D8D5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5150);
  }

  return result;
}

unint64_t sub_22B968E1C()
{
  result = qword_27D8D5178;
  if (!qword_27D8D5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5178);
  }

  return result;
}

unint64_t sub_22B968E74()
{
  result = qword_2814158C0;
  if (!qword_2814158C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158C0);
  }

  return result;
}

unint64_t sub_22B968ECC()
{
  result = qword_2814158C8;
  if (!qword_2814158C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158C8);
  }

  return result;
}

uint64_t sub_22B968F20()
{
  type metadata accessor for RecordStoreRegistry();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_28141AE28 = result;
  return result;
}

uint64_t sub_22B968F70@<X0>(void *a1@<X8>)
{
  v2 = sub_22BA0FDCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_28141AE20;
  if (qword_28141AE20)
  {
    v8 = qword_28141AE08;
    if (qword_28141AE08)
    {
      v41 = a1;
      v39 = v4;
      v9 = qword_281414B60;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain_n();
      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_281414B68;
      v11 = qword_28141ACE8;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = qword_28141ACF0;
      v40 = type metadata accessor for CloudState();
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = v12;
      v13[6] = v7;
      v13[7] = v8;
      v14 = v12;
      v15 = sub_22BA0FFCC();
      v38 = v14;
      v16 = [v14 stringForKey_];

      if (v16)
      {
        v17 = sub_22BA0FFFC();
        v19 = v18;
      }

      else
      {
        sub_22BA0FDBC();
        v32 = sub_22BA0FD9C();
        v33 = v3;
        v17 = v32;
        v19 = v34;
        (*(v33 + 8))(v6, v39);

        v35 = sub_22BA0FFCC();
        v16 = sub_22BA0FFCC();
        [v38 setObject:v35 forKey:v16];
      }

      v13[4] = v17;
      v13[5] = v19;
      v36 = v41;
      v41[3] = v40;
      v36[4] = &off_283F589F0;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      *v36 = v13;
    }

    else
    {
      v26 = qword_281414D30;
      swift_unknownObjectRetain();
      if (v26 != -1)
      {
        swift_once();
      }

      v27 = sub_22BA0FEFC();
      sub_22B936CA8(v27, qword_28141AD40);
      v28 = sub_22BA0FEDC();
      v29 = sub_22BA1044C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_22B92A000, v28, v29, "No syncStateManager found for cloudState", v30, 2u);
        MEMORY[0x23189ADD0](v30, -1, -1);
      }

      sub_22B96F460();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v20 = sub_22BA0FEFC();
    sub_22B936CA8(v20, qword_28141AD40);
    v21 = sub_22BA0FEDC();
    v22 = sub_22BA1044C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22B92A000, v21, v22, "No syncTokenStore found for cloudState", v23, 2u);
      MEMORY[0x23189ADD0](v23, -1, -1);
    }

    sub_22B96F460();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  return result;
}

__n128 sub_22B969400@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 1952540739;
  *(&v11 + 1) = 0xE400000000000000;
  LOBYTE(v12) = 0;
  *(&v12 + 1) = 0x6F5465676E616863;
  v13 = 0xEB000000006E656BLL;
  v14.n128_u64[0] = &unk_283F51378;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 1952540739;
  v18[1] = 0xE400000000000000;
  v19 = 0;
  v20 = 0x6F5465676E616863;
  v21 = 0xEB000000006E656BLL;
  v22 = 0;
  v23 = &unk_283F51378;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B9695D0@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0x3174616843;
  *(&v11 + 1) = 0xE500000000000000;
  LOBYTE(v12) = 1;
  *(&v12 + 1) = 0xD000000000000010;
  v13 = 0x800000022BA1CCA0;
  v14.n128_u64[0] = &unk_283F513A8;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0x3174616843;
  v18[1] = 0xE500000000000000;
  v19 = 1;
  v20 = 0xD000000000000010;
  v21 = 0x800000022BA1CCA0;
  v22 = 0;
  v23 = &unk_283F513A8;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B9697A8@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 1952540739;
  *(&v11 + 1) = 0xE400000000000000;
  LOBYTE(v12) = 0;
  *(&v12 + 1) = 0xD000000000000018;
  *&v13 = 0x800000022BA1CA80;
  *(&v13 + 1) = &unk_283F513D8;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 1952540739;
  v18[1] = 0xE400000000000000;
  v19 = 0;
  v20 = 0xD000000000000018;
  v21 = 0x800000022BA1CA80;
  v22 = &unk_283F513D8;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96997C@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0x6567617373654DLL;
  *(&v11 + 1) = 0xE700000000000000;
  LOBYTE(v12) = 2;
  *(&v12 + 1) = 0xD000000000000013;
  v13 = 0x800000022BA1C4C0;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0x6567617373654DLL;
  v18[1] = 0xE700000000000000;
  v19 = 2;
  v20 = 0xD000000000000013;
  v21 = 0x800000022BA1C4C0;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B969B54@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  strcpy(&v11, "ChatBotMessage");
  HIBYTE(v11) = -18;
  LOBYTE(v12) = 7;
  *(&v12 + 1) = 0xD000000000000019;
  v13 = 0x800000022BA1CC80;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  strcpy(v18, "ChatBotMessage");
  v18[15] = -18;
  v18[16] = 7;
  v19 = 0xD000000000000019;
  v20 = 0x800000022BA1CC80;
  v21 = 0;
  v22 = 0;
  v23 = a1 & 1;
  v24 = 0;
  v25 = 1;
  v27 = 0;
  v28 = 0;
  v26 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B969D38@<Q0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for OSActivity();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v8 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v9 = swift_unknownObjectRetain();
  os_activity_scope_enter(v9, (v8 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v14[104] = 1;
  *&v15 = 0x656D686361747441;
  *(&v15 + 1) = 0xEA0000000000746ELL;
  LOBYTE(v16) = 3;
  *(&v16 + 1) = 0xD000000000000019;
  *&v17 = 0x800000022BA1CAC0;
  *(&v17 + 1) = a2;
  v18.n128_u64[0] = a3;
  v18.n128_u8[8] = a1 & 1;
  *&v19 = 0;
  BYTE8(v19) = 1;
  v21 = 0;
  v20 = v8;
  v22[0] = 0x656D686361747441;
  v22[1] = 0xEA0000000000746ELL;
  v23 = 3;
  v24 = 0xD000000000000019;
  v25 = 0x800000022BA1CAC0;
  v26 = a2;
  v27 = a3;
  v28 = a1 & 1;
  v29 = 0;
  v30 = 1;
  v32 = 0;
  v33 = 0;
  v31 = v8;
  sub_22B951748(&v15, v14);
  sub_22B96F8A4(v22);
  a4[3] = &type metadata for SyncZoneInfo;
  a4[4] = &off_283F57268;
  v10 = swift_allocObject();
  *a4 = v10;
  v11 = v20;
  *(v10 + 80) = v19;
  *(v10 + 96) = v11;
  *(v10 + 112) = v21;
  v12 = v16;
  *(v10 + 16) = v15;
  *(v10 + 32) = v12;
  result = v18;
  *(v10 + 48) = v17;
  *(v10 + 64) = result;
  return result;
}

__n128 sub_22B969F24@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0xD000000000000011;
  *(&v11 + 1) = 0x800000022BA1CC40;
  LOBYTE(v12) = 8;
  *(&v12 + 1) = 0xD00000000000001CLL;
  *&v13 = 0x800000022BA1CC60;
  *(&v13 + 1) = &unk_283F51538;
  v14.n128_u64[0] = &unk_283F51598;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0xD000000000000011;
  v18[1] = 0x800000022BA1CC40;
  v19 = 8;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000022BA1CC60;
  v22 = &unk_283F51538;
  v23 = &unk_283F51598;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96A10C@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0x73657461647055;
  *(&v11 + 1) = 0xE700000000000000;
  LOBYTE(v12) = 4;
  *(&v12 + 1) = 0xD000000000000011;
  v13 = 0x800000022BA1CC20;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0x73657461647055;
  v18[1] = 0xE700000000000000;
  v19 = 4;
  v20 = 0xD000000000000011;
  v21 = 0x800000022BA1CC20;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96A2E4@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0xD000000000000012;
  *(&v11 + 1) = 0x800000022BA1CBE0;
  LOBYTE(v12) = 5;
  *(&v12 + 1) = 0xD00000000000001DLL;
  v13 = 0x800000022BA1CC00;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0xD000000000000012;
  v18[1] = 0x800000022BA1CBE0;
  v19 = 5;
  v20 = 0xD00000000000001DLL;
  v21 = 0x800000022BA1CC00;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96A4BC@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0xD000000000000019;
  *(&v11 + 1) = 0x800000022BA1CB90;
  LOBYTE(v12) = 9;
  *(&v12 + 1) = 0xD000000000000024;
  v13 = 0x800000022BA1CBB0;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0xD000000000000019;
  v18[1] = 0x800000022BA1CB90;
  v19 = 9;
  v20 = 0xD000000000000024;
  v21 = 0x800000022BA1CBB0;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96A694@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0xD000000000000010;
  *(&v11 + 1) = 0x800000022BA1CB50;
  LOBYTE(v12) = 6;
  *(&v12 + 1) = 0xD00000000000001BLL;
  v13 = 0x800000022BA1CB70;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0xD000000000000010;
  v18[1] = 0x800000022BA1CB50;
  v19 = 6;
  v20 = 0xD00000000000001BLL;
  v21 = 0x800000022BA1CB70;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

uint64_t sub_22B96A870@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  if (v3 > 4)
  {
    if (*a1 <= 6u)
    {
      if (v3 == 5)
      {
        return sub_22B96BDB4(a3);
      }

      else
      {
        v23 = 6;
        v19 = sub_22BA0FFCC();
        IMBagIntValueWithDefault();

        sub_22B9DBA9C();
        sub_22B96C910(&v23, 12, 13, v20, a2 & 1, a3);
        return swift_unknownObjectRelease();
      }
    }

    else if (v3 == 7)
    {
      return sub_22B96C35C(a2 & 1, a3);
    }

    else if (v3 == 8)
    {
      return sub_22B96C6D8(a2 & 1, a3);
    }

    else
    {
      sub_22B96F460();
      swift_allocError();
      *v14 = 2;
      return swift_willThrow();
    }
  }

  else
  {
    if (*a1 <= 1u)
    {
      if (!*a1)
      {
        return sub_22B96AA6C(a3);
      }

      v21 = 1;
      v7 = sub_22B9DBCF0();
      v8 = &v21;
      v9 = a2 & 1;
      v10 = a3;
      v11 = 2;
      v12 = 3;
    }

    else
    {
      if (v3 == 2)
      {
        return sub_22B96B890(a2 & 1, a3);
      }

      if (v3 != 3)
      {
        return sub_22B96C070(a2 & 1, a3);
      }

      v22 = 3;
      sub_22B9DB944();
      v7 = v6;
      v8 = &v22;
      v9 = a2 & 1;
      v10 = a3;
      v11 = 6;
      v12 = 7;
    }

    sub_22B96C910(v8, v11, v12, v7, v9, v10);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_22B96AA6C@<X0>(uint64_t *a1@<X8>)
{
  sub_22B969400(0, v82);
  sub_22B9695D0(0, v81);
  sub_22B96997C(0, v80);
  sub_22B969B54(0, v79);
  sub_22B969D38(0, &unk_283F51498, &unk_283F514F8, v78);
  sub_22B969F24(0, v77);
  sub_22B96A10C(1, v76);
  sub_22B96A2E4(0, v75);
  sub_22B96A4BC(0, v74);
  sub_22B96A694(0, v73);
  if (qword_281416508 != -1)
  {
    swift_once();
  }

  v2 = [qword_28141AE28 recordStoreFor_];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [qword_28141AE28 recordStoreFor_];
  if (!v4)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    sub_22B96F460();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [qword_28141AE28 recordStoreFor_];
  if (!v6)
  {
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v7 = v6;
  v8 = qword_28141AE08;
  if (!qword_28141AE08 || !qword_28141AE30)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v66 = qword_28141AE30;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22B9DB620();
  v64 = v9;
  sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22BA153A0;
  if (qword_28141AE18)
  {
    v11 = qword_28141AE18;
  }

  else
  {
    type metadata accessor for NoOpPreReqVerifier();
    v11 = swift_allocObject();
  }

  v14 = qword_28141AE10;
  *(v10 + 56) = &type metadata for SyncPreReqsVerifierStep;
  *(v10 + 64) = &off_283F587B8;
  v15 = swift_allocObject();
  *(v10 + 32) = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  *(v10 + 96) = &type metadata for PrepareDatabaseStep;
  *(v10 + 104) = &off_283F53910;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22BA13E30;
  *(v16 + 32) = v3;
  *(v16 + 40) = v5;
  *(v16 + 48) = v7;
  *(v10 + 136) = &type metadata for LocalStateManagementStep;
  *(v10 + 144) = &off_283F52D68;
  v17 = swift_allocObject();
  *(v10 + 112) = v17;
  v17[1] = vdupq_n_s64(1uLL);
  v17[2].i8[0] = 0;
  v17[2].i64[1] = 0;
  v17[3].i64[0] = 0;
  v17[3].i64[1] = v16;
  v17[4].i64[0] = v8;
  sub_22B9349C8(&qword_27D8D5198, &qword_22BA15440);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22BA153B0;
  sub_22B935B38(v82, v18 + 32);
  sub_22B935B38(v81, v18 + 72);
  sub_22B935B38(v80, v18 + 112);
  sub_22B935B38(v78, v18 + 152);
  sub_22B935B38(v76, v18 + 192);
  sub_22B935B38(v75, v18 + 232);
  sub_22B935B38(v73, v18 + 272);
  sub_22B935B38(v79, v18 + 312);
  sub_22B935B38(v77, v18 + 352);
  sub_22B935B38(v74, v18 + 392);
  *(v10 + 176) = &type metadata for RecordZonesPrepStep;
  *(v10 + 184) = &off_283F55950;
  v19 = swift_allocObject();
  *(v10 + 152) = v19;
  *(v19 + 16) = 0x6D6F44616964654DLL;
  *(v19 + 24) = 0xEB000000006E6961;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  *(v19 + 56) = v18;
  *(v19 + 64) = v66;
  *(v10 + 216) = &type metadata for PrepareStatisticsStep;
  *(v10 + 224) = &off_283F53228;
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22BA13420;
  sub_22B935B38(v82, &v70);
  type metadata accessor for CloudState();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v14) = sub_22BA0876C();
  Current = CFAbsoluteTimeGetCurrent();
  type metadata accessor for DuplicateCountReadHandler();
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v22 + 112) = MEMORY[0x277D84F98];
  *(v20 + 56) = &type metadata for RecordZoneReader;
  *(v20 + 64) = &off_283F55540;
  v23 = swift_allocObject();
  *(v20 + 32) = v23;
  *(v23 + 88) = &type metadata for SyncStoreReadHandler;
  *(v23 + 96) = &off_283F55648;
  v24 = swift_allocObject();
  *(v23 + 64) = v24;
  *(v24 + 16) = Current;
  *(v24 + 24) = 0;
  *(v24 + 32) = (v14 & 1) == 0;
  *(v24 + 40) = v22;
  *(v23 + 16) = 1;
  sub_22B92DFEC(&v70, v23 + 24);
  *(v23 + 104) = 0;
  *(v23 + 112) = 1;
  *(v23 + 113) = 256;
  *(v23 + 115) = 1;
  *(v23 + 120) = 0;
  *(v23 + 128) = 0;
  v25 = MEMORY[0x277D84F98];
  sub_22B935B38(v81, &v70);
  v26 = CFAbsoluteTimeGetCurrent();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v27 + 112) = v25;
  *(v20 + 96) = &type metadata for RecordZoneReader;
  *(v20 + 104) = &off_283F55540;
  v28 = swift_allocObject();
  *(v20 + 72) = v28;
  *(v28 + 88) = &type metadata for SyncStoreReadHandler;
  *(v28 + 96) = &off_283F55648;
  v29 = swift_allocObject();
  *(v28 + 64) = v29;
  *(v29 + 16) = v26;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = v27;
  *(v28 + 16) = 1;
  sub_22B92DFEC(&v70, v28 + 24);
  *(v28 + 104) = 0;
  *(v28 + 112) = 1;
  *(v28 + 113) = 256;
  *(v28 + 115) = 1;
  *(v28 + 120) = 0;
  *(v28 + 128) = 0;
  if (qword_2814158A8 != -1)
  {
    swift_once();
  }

  v30 = qword_28141ADA8;
  *(v20 + 136) = &type metadata for ImportStep;
  *(v20 + 144) = &off_283F52E58;
  v31 = swift_allocObject();
  *(v20 + 112) = v31;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = &unk_283F515D8;
  *(v31 + 48) = v30;
  *(v10 + 256) = &type metadata for MultiStepSyncStep;
  *(v10 + 264) = &off_283F54C78;
  v32 = swift_allocObject();
  *(v10 + 232) = v32;
  *(v32 + 16) = 0;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 24) = v20;
  *(v32 + 48) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22BA153C0;
  sub_22B935B38(v80, &v70);
  v65 = v30;
  swift_retain_n();
  v34 = CFAbsoluteTimeGetCurrent();
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v35 + 112) = v25;
  v68 = &type metadata for SyncStoreReadHandler;
  v69 = &off_283F55648;
  v36 = swift_allocObject();
  *&v67 = v36;
  *(v36 + 16) = v34;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 40) = v35;
  v37 = sub_22BA0FFCC();
  v38 = IMBagIntValueWithDefault();

  *(v33 + 56) = &type metadata for RecordZoneReader;
  *(v33 + 64) = &off_283F55540;
  v39 = swift_allocObject();
  *(v33 + 32) = v39;
  *(v39 + 16) = 0;
  sub_22B92DFEC(&v70, v39 + 24);
  sub_22B92DFEC(&v67, v39 + 64);
  *(v39 + 104) = v38;
  *(v39 + 112) = 0;
  *(v39 + 113) = 257;
  *(v39 + 115) = 1;
  *(v39 + 120) = 0;
  *(v39 + 128) = 0;
  v71 = &type metadata for RecordZoneReader;
  v72 = &off_283F55540;
  v40 = swift_allocObject();
  *&v70 = v40;
  sub_22B935B38(v79, v40 + 24);
  v41 = CFAbsoluteTimeGetCurrent();
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v42 + 112) = MEMORY[0x277D84F98];
  *(v40 + 88) = &type metadata for SyncStoreReadHandler;
  *(v40 + 96) = &off_283F55648;
  v43 = swift_allocObject();
  *(v40 + 64) = v43;
  *(v43 + 16) = v41;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 40) = v42;
  v44 = sub_22BA0FFCC();
  v45 = IMBagIntValueWithDefault();

  *(v40 + 16) = 0;
  *(v40 + 104) = v45;
  *(v40 + 112) = 0;
  *(v40 + 113) = 257;
  *(v40 + 115) = 1;
  *(v40 + 120) = 0;
  *(v40 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v70, v33 + 72);
  }

  else
  {
    *(v33 + 96) = &type metadata for NoOpSyncStep;
    *(v33 + 104) = &off_283F54C38;
    *(v33 + 72) = 0;
    *(v33 + 80) = 0;
    *(v33 + 88) = 0;
  }

  sub_22B936C4C(&v70);
  sub_22B935B38(v78, &v70);
  v46 = CFAbsoluteTimeGetCurrent();
  v47 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v47 + 112) = MEMORY[0x277D84F98];
  v68 = &type metadata for SyncStoreReadHandler;
  v69 = &off_283F55648;
  v48 = swift_allocObject();
  *&v67 = v48;
  *(v48 + 16) = v46;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 40) = v47;
  v49 = sub_22BA0FFCC();
  v50 = IMBagIntValueWithDefault();

  *(v33 + 136) = &type metadata for RecordZoneReader;
  *(v33 + 144) = &off_283F55540;
  v51 = swift_allocObject();
  *(v33 + 112) = v51;
  *(v51 + 16) = 0;
  sub_22B92DFEC(&v70, v51 + 24);
  sub_22B92DFEC(&v67, v51 + 64);
  *(v51 + 104) = v50;
  *(v51 + 112) = 0;
  *(v51 + 113) = 257;
  *(v51 + 115) = 1;
  *(v51 + 120) = 0;
  *(v51 + 128) = 0;
  v71 = &type metadata for RecordZoneReader;
  v72 = &off_283F55540;
  v52 = swift_allocObject();
  *&v70 = v52;
  sub_22B935B38(v77, v52 + 24);
  v53 = CFAbsoluteTimeGetCurrent();
  v54 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v54 + 112) = MEMORY[0x277D84F98];
  *(v52 + 88) = &type metadata for SyncStoreReadHandler;
  *(v52 + 96) = &off_283F55648;
  v55 = swift_allocObject();
  *(v52 + 64) = v55;
  *(v55 + 16) = v53;
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 40) = v54;
  v56 = sub_22BA0FFCC();
  v57 = IMBagIntValueWithDefault();

  *(v52 + 16) = 0;
  *(v52 + 104) = v57;
  *(v52 + 112) = 0;
  *(v52 + 113) = 257;
  *(v52 + 115) = 1;
  *(v52 + 120) = 0;
  *(v52 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v70, v33 + 152);
  }

  else
  {
    *(v33 + 176) = &type metadata for NoOpSyncStep;
    *(v33 + 184) = &off_283F54C38;
    *(v33 + 152) = 0;
    *(v33 + 160) = 0;
    *(v33 + 168) = 0;
  }

  sub_22B936C4C(&v70);
  *(v33 + 216) = &type metadata for ImportStep;
  *(v33 + 224) = &off_283F52E58;
  v58 = swift_allocObject();
  *(v33 + 192) = v58;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  *(v58 + 40) = &unk_283F51600;
  *(v58 + 48) = v65;
  *(v10 + 296) = &type metadata for MultiStepSyncStep;
  *(v10 + 304) = &off_283F54C78;
  v59 = swift_allocObject();
  *(v10 + 272) = v59;
  *(v59 + 16) = 0;
  *(v59 + 32) = 0;
  *(v59 + 40) = 0;
  *(v59 + 24) = v33;
  *(v59 + 48) = 1;
  *(v10 + 336) = &type metadata for ReportDiagnosticTelemetryStep;
  *(v10 + 344) = &off_283F53510;
  *(v10 + 312) = 0;
  *(v10 + 320) = 0;
  *(v10 + 328) = 0;
  if (qword_28141AE10)
  {
    v60 = qword_28141AE10;
  }

  else
  {
    v60 = [objc_allocWithZone(NoOpBackupController) init];
  }

  *(v10 + 376) = &type metadata for SyncCompleteStep;
  *(v10 + 384) = &off_283F563A0;
  v61 = swift_allocObject();
  *(v10 + 352) = v61;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 40) = v60;
  v71 = &type metadata for CloudKitSyncRetryStrategy;
  v72 = &off_283F54398;
  v62 = type metadata accessor for SyncJob();
  v63 = swift_allocObject();
  sub_22B943D3C(&v70, &type metadata for CloudKitSyncRetryStrategy);
  *(v63 + 56) = &type metadata for CloudKitSyncRetryStrategy;
  *(v63 + 64) = &off_283F54398;
  *(v63 + 24) = v66;
  *(v63 + 72) = 1;
  *(v63 + 80) = v64;
  *(v63 + 88) = v10;
  *(v63 + 96) = 0x1000000;
  *(v63 + 16) = 0;
  *(v63 + 100) = 1;
  *(v63 + 104) = 0;
  *(v63 + 112) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22B936C4C(&v70);
  a1[3] = v62;
  a1[4] = &off_283F54680;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *a1 = v63;
LABEL_14:
  sub_22B936C4C(v73);
  sub_22B936C4C(v74);
  sub_22B936C4C(v75);
  sub_22B936C4C(v76);
  sub_22B936C4C(v77);
  sub_22B936C4C(v78);
  sub_22B936C4C(v79);
  sub_22B936C4C(v80);
  sub_22B936C4C(v81);
  return sub_22B936C4C(v82);
}