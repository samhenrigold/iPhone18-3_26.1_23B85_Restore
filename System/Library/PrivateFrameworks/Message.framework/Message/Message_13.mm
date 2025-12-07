uint64_t _s8ActivityV4DiffV4KindOMa(uint64_t a1)
{
  v2 = qword_1EB6DBD80;
  if (!qword_1EB6DBD80)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B06B9620()
{
  v2 = qword_1EB6DB818;
  if (!qword_1EB6DB818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16A0, &qword_1B0E99898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06B96A8()
{
  v2 = qword_1EB6DBFF8;
  if (!qword_1EB6DBFF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06B9720()
{
  v2 = qword_1EB6DB820;
  if (!qword_1EB6DB820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16B0, &qword_1B0E998A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB820);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06B97A8(uint64_t a1)
{
  v3 = sub_1B0E43108();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1B06B9850(void *a1, void *a2)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16C8, &qword_1B0E998C0);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(a1, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16B8, &qword_1B0E998B0);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
    return a2;
  }

  *a2 = *a1;
  v22 = a2 + *(v28 + 48);
  v23 = a1 + *(v28 + 48);
  v24 = _s8ActivityV4DiffV4KindOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        *v22 = *v23;
        v11 = type metadata accessor for ConnectionStatus.Error(0);
        v12 = &v22[*(v11 + 20)];
        v13 = &v23[*(v11 + 20)];
        v14 = type metadata accessor for ConnectionStatus.Error.Details(0);
        v15 = *(v14 - 8);
        if ((*(v15 + 48))(v13, 1))
        {
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
          memcpy(v12, v13, *(*(v6 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(v12, v13, *(v15 + 64));
          }

          else
          {
            v5 = sub_1B0E441D8();
            (*(*(v5 - 8) + 32))(v12, v13);
            swift_storeEnumTagMultiPayload();
          }

          (*(v15 + 56))(v12, 0, 1, v14);
        }

        v7 = &v22[*(v11 + 24)];
        v8 = &v23[*(v11 + 24)];
        *v7 = *v8;
        v7[8] = v8[8];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v22, v23, *(*(v24 - 8) + 64));
      }

      goto LABEL_20;
    }

    v16 = sub_1B0E43108();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v23, 1))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(v22, v23, *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))(v22, v23, v16);
      (*(v17 + 56))(v22, 0, 1, v16);
    }
  }

  else
  {
    *v22 = *v23;
    *(v22 + 10) = *(v23 + 10);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
    __dst = &v22[*(v2 + 48)];
    __src = &v23[*(v2 + 48)];
    v20 = sub_1B0E43108();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(__src, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v21 + 32))(__dst, __src, v20);
      (*(v21 + 56))(__dst, 0, 1, v20);
    }
  }

  swift_storeEnumTagMultiPayload();
LABEL_20:
  (*(v29 + 56))(a2, 0, 1, v28);
  return a2;
}

_OWORD *sub_1B06B9E3C(_OWORD *a1, _OWORD *a2)
{
  v23 = _s8ActivityV4DiffV4KindOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      *a2 = *a1;
      *(a2 + 10) = *(a1 + 10);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
      v17 = a2 + *(v2 + 48);
      v18 = a1 + *(v2 + 48);
      v19 = sub_1B0E43108();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v18, 1))
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
        memcpy(v17, v18, *(*(v3 - 8) + 64));
      }

      else
      {
        (*(v20 + 32))(v17, v18, v19);
        (*(v20 + 56))(v17, 0, 1, v19);
      }

      goto LABEL_8;
    case 2:
      v15 = sub_1B0E43108();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a1, 1))
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
        memcpy(a2, a1, *(*(v4 - 8) + 64));
      }

      else
      {
        (*(v16 + 32))(a2, a1, v15);
        (*(v16 + 56))(a2, 0, 1, v15);
      }

LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a2;
    case 3:
      *a2 = *a1;
      v10 = type metadata accessor for ConnectionStatus.Error(0);
      __dst = a2 + *(v10 + 20);
      __src = a1 + *(v10 + 20);
      v13 = type metadata accessor for ConnectionStatus.Error.Details(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(__src, 1))
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(__dst, __src, *(v14 + 64));
        }

        else
        {
          v5 = sub_1B0E441D8();
          (*(*(v5 - 8) + 32))(__dst, __src);
          swift_storeEnumTagMultiPayload();
        }

        (*(v14 + 56))(__dst, 0, 1, v13);
      }

      v7 = a2 + *(v10 + 24);
      v8 = a1 + *(v10 + 24);
      *v7 = *v8;
      v7[8] = v8[8];
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a2, a1, *(*(v23 - 8) + 64));
      break;
  }

  return a2;
}

_OWORD *sub_1B06BA32C(char *a1, _OWORD *a2)
{
  _s8ActivityV4DiffV4KindOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      *a2 = *a1;
      *(a2 + 10) = *(a1 + 10);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
      v23 = a2 + *(v2 + 48);
      v24 = &a1[*(v2 + 48)];
      v25 = sub_1B0E43108();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v24, 1))
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
        memcpy(v23, v24, *(*(v3 - 8) + 64));
      }

      else
      {
        (*(v26 + 16))(v23, v24, v25);
        (*(v26 + 56))(v23, 0, 1, v25);
      }

      goto LABEL_8;
    case 1:
      v22 = *a1;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *a2 = v22;
      swift_storeEnumTagMultiPayload();
      return a2;
    case 2:
      v20 = sub_1B0E43108();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(a1, 1))
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
        memcpy(a2, a1, *(*(v4 - 8) + 64));
      }

      else
      {
        (*(v21 + 16))(a2, a1, v20);
        (*(v21 + 56))(a2, 0, 1, v20);
      }

LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a2;
  }

  *a2 = *a1;
  v15 = type metadata accessor for ConnectionStatus.Error(0);
  __dst = (a2 + *(v15 + 20));
  __src = &a1[*(v15 + 20)];
  v18 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(__src, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14)
    {
      if (v14 == 1)
      {
        *__dst = *__src;
        v12 = *(__src + 1);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __dst[1] = v12;
        __dst[2] = *(__src + 2);
        v13 = *(__src + 3);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __dst[3] = v13;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        *__dst = *__src;
        if (v14 == 2)
        {
          v11 = *(__src + 1);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[1] = v11;
        }

        else
        {
          v10 = *(__src + 1);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[1] = v10;
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v5 = sub_1B0E441D8();
      (*(*(v5 - 8) + 16))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    (*(v19 + 56))(__dst, 0, 1, v18);
  }

  v7 = a2 + *(v15 + 24);
  v8 = &a1[*(v15 + 24)];
  *v7 = *v8;
  v7[8] = v8[8];
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1B06BA8E4()
{
  v1 = *(_s8ActivityV4DiffV4KindOMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B06A9508(v2);
}

void *sub_1B06BA948(void *a1)
{
  _s8ActivityV4DiffV4KindOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        goto LABEL_21;
      case 2:
        v6 = sub_1B0E43108();
        v7 = *(v6 - 8);
        if (!(*(v7 + 48))(a1, 1))
        {
          (*(v7 + 8))(a1, v6);
        }

        return a1;
      case 3:
        v4 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
        v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v5 - 8) + 48))(v4, 1))
        {
          v3 = swift_getEnumCaseMultiPayload();
          switch(v3)
          {
            case 0:
              v1 = sub_1B0E441D8();
              (*(*(v1 - 8) + 8))(v4);
              return a1;
            case 1:

              return a1;
            case 2:
            case 3:
LABEL_21:

              break;
          }
        }

        break;
    }
  }

  else
  {
    v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
    v9 = sub_1B0E43108();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1))
    {
      (*(v10 + 8))(v8, v9);
    }
  }

  return a1;
}

void *sub_1B06BAC30(void *a1)
{
  if (*a1)
  {
    MEMORY[0x1E69E5920](*a1);
    MEMORY[0x1E69E5920](a1[1]);
  }

  return a1;
}

unint64_t sub_1B06BAC8C()
{
  v2 = qword_1EB6E16E8;
  if (!qword_1EB6E16E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16E0, &qword_1B0E998D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E16E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06BAD14()
{
  v2 = qword_1EB6DACC0;
  if (!qword_1EB6DACC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DACC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06BAD78()
{
  v2 = qword_1EB6E16F8;
  if (!qword_1EB6E16F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16F0, &qword_1B0E998E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E16F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s18EmailActivityStateO7RunningVMa(uint64_t a1)
{
  v2 = qword_1EB6DC9C8;
  if (!qword_1EB6DC9C8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t _s18EmailActivityStateOMa(uint64_t a1)
{
  v2 = qword_1EB6DC9B8;
  if (!qword_1EB6DC9B8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

_BYTE *sub_1B06BAF3C(_BYTE *a1, _BYTE *a2)
{
  v20 = _s18EmailActivityStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *a1;
      v9 = type metadata accessor for ConnectionStatus.Error(0);
      v10 = &a2[*(v9 + 20)];
      __src = &a1[*(v9 + 20)];
      v12 = type metadata accessor for ConnectionStatus.Error.Details(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(__src, 1))
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
        memcpy(v10, __src, *(*(v5 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v10, __src, *(v13 + 64));
        }

        else
        {
          v4 = sub_1B0E441D8();
          (*(*(v4 - 8) + 32))(v10, __src);
          swift_storeEnumTagMultiPayload();
        }

        (*(v13 + 56))(v10, 0, 1, v12);
      }

      v6 = &a2[*(v9 + 24)];
      v7 = &a1[*(v9 + 24)];
      *v6 = *v7;
      v6[8] = v7[8];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v20 - 8) + 64));
    }
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    *(a2 + 3) = *(a1 + 3);
    v2 = _s18EmailActivityStateO7RunningVMa(0);
    __dst = &a2[*(v2 + 24)];
    v15 = &a1[*(v2 + 24)];
    v16 = sub_1B0E43108();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(__dst, v15, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))(__dst, v15, v16);
      (*(v17 + 56))(__dst, 0, 1, v16);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

_BYTE *sub_1B06BB304(_BYTE *a1, _BYTE *a2)
{
  *a2 = *a1;
  v8 = type metadata accessor for ConnectionStatus.Error(0);
  v9 = *(v8 + 20);
  v11 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&a1[v9], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    memcpy(&a2[v9], &a1[v9], *(*(v3 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a2[v9], &a1[v9], *(v12 + 64));
    }

    else
    {
      v2 = sub_1B0E441D8();
      (*(*(v2 - 8) + 32))();
      swift_storeEnumTagMultiPayload();
    }

    (*(v12 + 56))(&a2[v9], 0, 1, v11);
  }

  result = a2;
  v5 = &a2[*(v8 + 24)];
  v6 = &a1[*(v8 + 24)];
  *v5 = *v6;
  v5[8] = v6[8];
  return result;
}

_BYTE *sub_1B06BB524(_BYTE *a1, _BYTE *a2)
{
  *a2 = *a1;
  v14 = type metadata accessor for ConnectionStatus.Error(0);
  v15 = *(v14 + 20);
  v17 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&a1[v15], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    memcpy(&a2[v15], &a1[v15], *(*(v3 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v10 = &a2[v15];
        *&a2[v15] = *&a1[v15];
        v9 = *&a1[v15 + 8];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v10[1] = v9;
        v10[2] = *&a1[v15 + 16];
        v11 = *&a1[v15 + 24];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v10[3] = v11;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        *&a2[v15] = *&a1[v15];
        if (EnumCaseMultiPayload == 2)
        {
          v8 = *&a1[v15 + 8];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *&a2[v15 + 8] = v8;
        }

        else
        {
          v7 = *&a1[v15 + 8];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *&a2[v15 + 8] = v7;
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v2 = sub_1B0E441D8();
      (*(*(v2 - 8) + 16))();
      swift_storeEnumTagMultiPayload();
    }

    (*(v18 + 56))(&a2[v15], 0, 1, v17);
  }

  result = a2;
  v5 = *(v14 + 24);
  v6 = &a2[v5];
  *v6 = *&a1[v5];
  v6[8] = a1[v5 + 8];
  return result;
}

uint64_t sub_1B06BB840(uint64_t a1)
{
  v4 = *(type metadata accessor for ConnectionStatus.Error(0) + 20);
  v6 = type metadata accessor for ConnectionStatus.Error.Details(0);
  if (!(*(*(v6 - 8) + 48))(a1 + v4, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }

      else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
      }
    }

    else
    {
      v1 = sub_1B0E441D8();
      (*(*(v1 - 8) + 8))(a1 + v4);
    }
  }

  return a1;
}

uint64_t sub_1B06BB9BC(uint64_t a1)
{
  _s18EmailActivityStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v4 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
      v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
      if (!(*(*(v5 - 8) + 48))(v4, 1))
      {
        v3 = swift_getEnumCaseMultiPayload();
        if (v3)
        {
          if (v3 == 1)
          {
          }

          else if (v3 == 2 || v3 == 3)
          {
          }
        }

        else
        {
          v1 = sub_1B0E441D8();
          (*(*(v1 - 8) + 8))(v4);
        }
      }
    }
  }

  else
  {
    v6 = a1 + *(_s18EmailActivityStateO7RunningVMa(0) + 24);
    v7 = sub_1B0E43108();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1))
    {
      (*(v8 + 8))(v6, v7);
    }
  }

  return a1;
}

uint64_t sub_1B06BBBE8(uint64_t a1)
{
  v2 = *(_s18EmailActivityStateO7RunningVMa(0) + 24);
  v4 = sub_1B0E43108();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_1B06BBCB8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v5 = *(_s18EmailActivityStateO7RunningVMa(0) + 24);
  v7 = sub_1B0E43108();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1 + v5, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy((a2 + v5), (a1 + v5), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(a2 + v5, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1B06BBE40(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v5 = *(_s18EmailActivityStateO7RunningVMa(0) + 24);
  v7 = sub_1B0E43108();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1 + v5, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy((a2 + v5), (a1 + v5), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))();
    (*(v8 + 56))(a2 + v5, 0, 1, v7);
  }

  return a2;
}

void *sub_1B06BBFC8(void *a1)
{
  v13 = _s8ActivityV4DiffV4KindOMa(0);
  if ((*(*(v13 - 8) + 48))(a1, 1))
  {
    return a1;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        goto LABEL_22;
      case 2:
        v6 = sub_1B0E43108();
        v7 = *(v6 - 8);
        if (!(*(v7 + 48))(a1, 1))
        {
          (*(v7 + 8))(a1, v6);
        }

        return a1;
      case 3:
        v4 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
        v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v5 - 8) + 48))(v4, 1))
        {
          v3 = swift_getEnumCaseMultiPayload();
          switch(v3)
          {
            case 0:
              v1 = sub_1B0E441D8();
              (*(*(v1 - 8) + 8))(v4);
              return a1;
            case 1:

              return a1;
            case 2:
            case 3:
LABEL_22:

              break;
          }
        }

        break;
    }
  }

  else
  {
    v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
    v9 = sub_1B0E43108();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1))
    {
      (*(v10 + 8))(v8, v9);
    }
  }

  return a1;
}

void *sub_1B06BC2F4(const void *a1, void *a2)
{
  v6 = sub_1B0E43108();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t _s8ActivityV4DiffV6UpdateOMa(uint64_t a1)
{
  v2 = qword_1EB6DBD68;
  if (!qword_1EB6DBD68)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B06BC490()
{
  v2 = qword_1EB6DAA40;
  if (!qword_1EB6DAA40)
  {
    type metadata accessor for EMActivityFetchState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06BC510(uint64_t a1)
{
  v4 = sub_1B0E43108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_1B06BC63C()
{
  v2 = qword_1EB6DECF8;
  if (!qword_1EB6DECF8)
  {
    sub_1B0E43108();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DECF8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B06BC6BC(const void *a1, void *a2)
{
  v7 = sub_1B0E43108();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1B06BC8E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    MEMORY[0x1E69E5928](result);
    return MEMORY[0x1E69E5928](a2);
  }

  return result;
}

uint64_t sub_1B06BC934(uint64_t result, uint64_t a2)
{
  if (result)
  {
    MEMORY[0x1E69E5920](result);
    return MEMORY[0x1E69E5920](a2);
  }

  return result;
}

void *sub_1B06BC984(const void *a1, void *a2)
{
  v6 = sub_1B0E43108();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_1B06BCAAC(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1B0E466C8();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1B0E466C8();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

char *sub_1B06BCC28(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t sub_1B06BCD50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1B06BCD98()
{
  v2 = qword_1EB6DED50;
  if (!qword_1EB6DED50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06BCE10()
{
  v2 = qword_1EB6DB198;
  if (!qword_1EB6DB198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1728, &qword_1B0E99910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB198);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B06BCE98(const void *a1, void *a2)
{
  updated = _s8ActivityV4DiffV6UpdateOMa(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(updated - 8) + 64));
  }

  return a2;
}

void *sub_1B06BCF60(const void *a1, void *a2)
{
  updated = _s8ActivityV4DiffV6UpdateOMa(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(updated - 8) + 64));
  }

  return a2;
}

uint64_t sub_1B06BD028(uint64_t a1)
{
  _s8ActivityV4DiffV6UpdateOMa(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = sub_1B0E43108();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_1B06BD0C8(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_1B06BD108()
{
  v2 = qword_1EB6DAB00;
  if (!qword_1EB6DAB00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06BD16C()
{
  v2 = qword_1EB6DA5D8;
  if (!qword_1EB6DA5D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06BD220(uint64_t a1)
{
  v4 = sub_1B06BD300();
  if (v1 <= 0x3F)
  {
    v4 = _s8ActivityVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1B06BD300()
{
  v2 = qword_1EB6DA970;
  if (!qword_1EB6DA970)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA970);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06BD3B4(uint64_t a1)
{
  v5 = sub_1B06BD4B8(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1B06BD568(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_1B0E43108();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1B06BD4B8(uint64_t a1)
{
  v5 = qword_1EB6DB738;
  if (!qword_1EB6DB738)
  {
    type metadata accessor for Activity.MailboxStatus(255);
    sub_1B0417568();
    v4 = sub_1B0E44708();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB738);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B06BD568(uint64_t a1)
{
  v5 = qword_1EB6DAD28;
  if (!qword_1EB6DAD28)
  {
    sub_1B0417568();
    v4 = sub_1B0E45588();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DAD28);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B06BD690(uint64_t a1)
{
  v6 = sub_1B06BD7AC(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_1B06BD868(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_1B06BD904(319);
      if (v3 <= 0x3F)
      {
        v6 = type metadata accessor for ConnectionStatus.Error(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1B06BD7AC(uint64_t a1)
{
  v5 = qword_1EB6DBD78;
  if (!qword_1EB6DBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2990, &qword_1B0E9B060);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v5 = TupleTypeMetadata2;
    if (!v1)
    {
      v2 = TupleTypeMetadata2;
      atomic_store(TupleTypeMetadata2, &qword_1EB6DBD78);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B06BD868(uint64_t a1)
{
  v5 = qword_1EB6DB1A0;
  if (!qword_1EB6DB1A0)
  {
    _s8ActivityV4DiffV6UpdateOMa(255);
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB1A0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B06BD904(uint64_t a1)
{
  v5 = qword_1EB6DECE8;
  if (!qword_1EB6DECE8)
  {
    v4 = sub_1B04376A0(a1);
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DECE8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B06BD990(void *a1, uint64_t *a2)
{
  v4 = *a2;

  *a1 = v4;
  return *a1 + 16;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 10);
  *(a1 + 10) = result;
  return result;
}

uint64_t sub_1B06BD9E4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[26])
    {
      v5 = *a1 + 252;
    }

    else
    {
      v4 = -1;
      if ((*a1 & 0xFE) != 0)
      {
        v4 = (*a1 + 2147483646) & 0x7FFFFFFF;
      }

      v2 = v4 - 2;
      if (v4 - 2 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B06BDB14(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 26);
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1B06BDD70(uint64_t a1)
{
  State = sub_1B06BDE5C(319);
  if (v1 <= 0x3F)
  {
    State = type metadata accessor for EMActivityFetchState(319);
    if (v2 <= 0x3F)
    {
      State = sub_1B0E43108();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return State;
}

unint64_t sub_1B06BDE5C(uint64_t a1)
{
  v5 = qword_1EB6DC9D8;
  if (!qword_1EB6DC9D8)
  {
    v4 = sub_1B0E45D88();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DC9D8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B06BDEF0(uint64_t a1)
{
  v5 = _s18EmailActivityStateO7RunningVMa(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1B06BDFDC();
    if (v2 <= 0x3F)
    {
      v5 = type metadata accessor for ConnectionStatus.Error(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_1B06BDFDC()
{
  v2 = qword_1EB6DADC8;
  if (!qword_1EB6DADC8)
  {
    v0 = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EB6DADC8);
    return v0;
  }

  return v2;
}

unint64_t sub_1B06BE078(uint64_t a1)
{
  State = sub_1B06BDE5C(319);
  if (v1 <= 0x3F)
  {
    State = type metadata accessor for EMActivityFetchState(319);
    if (v2 <= 0x3F)
    {
      State = sub_1B04376A0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return State;
}

uint64_t sub_1B06BE190(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B06BE2D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B06BE4B8()
{
  v2 = qword_1EB6E1760;
  if (!qword_1EB6E1760)
  {
    type metadata accessor for Activity.MailboxStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06BE538()
{
  v2 = qword_1EB6E1768;
  if (!qword_1EB6E1768)
  {
    _s8ActivityV4DiffV4KindOMa(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1768);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B06BE5B8(void *a1)
{
  _s8ActivityV4DiffV4KindOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        goto LABEL_21;
      case 2:
        v17 = sub_1B0E43108();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(a1, 1))
        {
          (*(v18 + 8))(a1, v17);
        }

        break;
      case 3:
        v15 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
        v16 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v16 - 8) + 48))(v15, 1))
        {
          v14 = swift_getEnumCaseMultiPayload();
          switch(v14)
          {
            case 0:
              v1 = sub_1B0E441D8();
              (*(*(v1 - 8) + 8))(v15);
              goto LABEL_22;
            case 1:

              goto LABEL_22;
            case 2:
            case 3:
LABEL_21:

              break;
          }
        }

        break;
    }
  }

  else
  {
    v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
    v20 = sub_1B0E43108();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v19, 1))
    {
      (*(v21 + 8))(v19, v20);
    }
  }

LABEL_22:
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1770, &qword_1B0E99B28) + 48);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13)
  {
    switch(v13)
    {
      case 1:
        goto LABEL_42;
      case 2:
        v7 = sub_1B0E43108();
        v8 = *(v7 - 8);
        if (!(*(v8 + 48))(v12, 1))
        {
          (*(v8 + 8))(v12, v7);
        }

        return a1;
      case 3:
        v5 = &v12[*(type metadata accessor for ConnectionStatus.Error(0) + 20)];
        v6 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v6 - 8) + 48))(v5, 1))
        {
          v4 = swift_getEnumCaseMultiPayload();
          switch(v4)
          {
            case 0:
              v2 = sub_1B0E441D8();
              (*(*(v2 - 8) + 8))(v5);
              return a1;
            case 1:

              return a1;
            case 2:
            case 3:
LABEL_42:

              break;
          }
        }

        break;
    }
  }

  else
  {
    v9 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48)];
    v10 = sub_1B0E43108();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v9, 1))
    {
      (*(v11 + 8))(v9, v10);
    }
  }

  return a1;
}

unint64_t sub_1B06BEB80()
{
  v2 = qword_1EB6E1778;
  if (!qword_1EB6E1778)
  {
    _s8ActivityV4DiffV6UpdateOMa(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1778);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06BEC00(uint64_t a1)
{
  _s8ActivityV4DiffV6UpdateOMa(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = sub_1B0E43108();
    (*(*(v1 - 8) + 8))(a1);
  }

  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1780, &qword_1B0E99B30) + 48);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

_BYTE *sub_1B06BECF8(_BYTE *a1, _BYTE *a2)
{
  v25 = _s18EmailActivityStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *a1;
      v14 = type metadata accessor for ConnectionStatus.Error(0);
      __dst = &a2[*(v14 + 20)];
      __src = &a1[*(v14 + 20)];
      v17 = type metadata accessor for ConnectionStatus.Error.Details(0);
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(__src, 1))
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
        memcpy(__dst, __src, *(*(v5 - 8) + 64));
      }

      else
      {
        v13 = swift_getEnumCaseMultiPayload();
        if (v13)
        {
          if (v13 == 1)
          {
            *__dst = *__src;
            v11 = __src[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v11;
            __dst[2] = __src[2];
            v12 = __src[3];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[3] = v12;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            *__dst = *__src;
            if (v13 == 2)
            {
              v10 = __src[1];
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              __dst[1] = v10;
            }

            else
            {
              v9 = __src[1];
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              __dst[1] = v9;
            }

            swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          v4 = sub_1B0E441D8();
          (*(*(v4 - 8) + 16))(__dst, __src);
          swift_storeEnumTagMultiPayload();
        }

        (*(v18 + 56))(__dst, 0, 1, v17);
      }

      v6 = &a2[*(v14 + 24)];
      v7 = &a1[*(v14 + 24)];
      *v6 = *v7;
      v6[8] = v7[8];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v25 - 8) + 64));
    }
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    *(a2 + 3) = *(a1 + 3);
    v2 = _s18EmailActivityStateO7RunningVMa(0);
    v19 = &a2[*(v2 + 24)];
    v20 = &a1[*(v2 + 24)];
    v21 = sub_1B0E43108();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v20, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(v19, v20, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v22 + 16))(v19, v20, v21);
      (*(v22 + 56))(v19, 0, 1, v21);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1B06BF18C(uint64_t a1)
{
  _s18EmailActivityStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
      v14 = type metadata accessor for ConnectionStatus.Error.Details(0);
      if (!(*(*(v14 - 8) + 48))(v13, 1))
      {
        v12 = swift_getEnumCaseMultiPayload();
        if (v12)
        {
          if (v12 == 1)
          {
          }

          else if (v12 == 2 || v12 == 3)
          {
          }
        }

        else
        {
          v1 = sub_1B0E441D8();
          (*(*(v1 - 8) + 8))(v13);
        }
      }
    }
  }

  else
  {
    v15 = a1 + *(_s18EmailActivityStateO7RunningVMa(0) + 24);
    v16 = sub_1B0E43108();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v15, 1))
    {
      (*(v17 + 8))(v15, v16);
    }
  }

  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1718, &qword_1B0E99900) + 48);
  v11 = swift_getEnumCaseMultiPayload();
  if (v11)
  {
    if (v11 == 2)
    {
      v5 = v10 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
      v6 = type metadata accessor for ConnectionStatus.Error.Details(0);
      if (!(*(*(v6 - 8) + 48))(v5, 1))
      {
        v4 = swift_getEnumCaseMultiPayload();
        if (v4)
        {
          if (v4 == 1)
          {
          }

          else if (v4 == 2 || v4 == 3)
          {
          }
        }

        else
        {
          v2 = sub_1B0E441D8();
          (*(*(v2 - 8) + 8))(v5);
        }
      }
    }
  }

  else
  {
    v7 = v10 + *(_s18EmailActivityStateO7RunningVMa(0) + 24);
    v8 = sub_1B0E43108();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v7, 1))
    {
      (*(v9 + 8))(v7, v8);
    }
  }

  return a1;
}

uint64_t sub_1B06BF5DC()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DBA10);
  __swift_project_value_buffer(v1, qword_1EB6DBA10);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B06BF680()
{
  if (qword_1EB6DBA00 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DBA10);
}

uint64_t sub_1B06BF6EC()
{
  result = sub_1B0E44838();
  qword_1EB6DC038 = result;
  qword_1EB6DC040 = v1;
  return result;
}

uint64_t *sub_1B06BF730()
{
  if (qword_1EB6DC028 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DC038;
}

uint64_t sub_1B06BF800()
{
  v2 = (v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_didSetCriteria);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1B06BF8D0(char a1)
{
  v3 = (v1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_didSetCriteria);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B06BF944()
{
  v2 = (v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B06BF9AC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B06BFA58()
{
  v2 = (v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B06BFABC(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B06BFB9C()
{
  v2 = *(v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_accountProvider);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B06BFBDC()
{
  sub_1B06D4BE8(0);
  sub_1B0E45988();
  sub_1B06D6240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B06D62C0();
  return sub_1B0E460A8();
}

uint64_t sub_1B06BFC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E8090];
  v1 = sub_1B0E459C8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1B06BFD5C()
{
  v2 = *(v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1B06BFDA4(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccountsProvider_];
  swift_unknownObjectRelease();
  return v2;
}

char *sub_1B06BFDF4(uint64_t a1)
{
  v21 = a1;
  v25 = 0;
  v24 = 0;
  v17 = 0;
  v7 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v7 - v7;
  v8 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v15 = &v7 - v8;
  v9 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v7 - v9;
  v24 = v2;
  v25 = v1;
  v1[OBJC_IVAR___MFBackFillMessageBodyScheduler_didSetCriteria] = 0;
  *&v25[OBJC_IVAR___MFBackFillMessageBodyScheduler_activity] = v3;
  v11 = v25;
  v10 = OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID;
  sub_1B06BFA2C();
  *&v11[v10] = v4;
  v19 = v25;
  v18 = OBJC_IVAR___MFBackFillMessageBodyScheduler_queue;
  sub_1B06CCC58();
  v12 = sub_1B0E44838();
  v13 = v5;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v16);
  *&v19[v18] = sub_1B0E45A08();
  v20 = v25;
  swift_unknownObjectRetain();
  *&v20[OBJC_IVAR___MFBackFillMessageBodyScheduler_accountProvider] = v21;
  v23.receiver = v25;
  v23.super_class = MFBackFillMessageBodyScheduler;
  v22 = objc_msgSendSuper2(&v23, sel_init);
  MEMORY[0x1E69E5928](v22);
  v25 = v22;
  sub_1B06C0098();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v25);
  return v22;
}

uint64_t sub_1B06C0098()
{
  v42 = 0;
  v57 = 0;
  v31 = 0;
  v39 = sub_1B0E439A8();
  v33 = v39;
  v34 = *(v39 - 8);
  v38 = v34;
  v35 = v34;
  v36 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v0 = &v8 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v0;
  v57 = v1;
  v2 = sub_1B06BF680();
  (*(v38 + 16))(v0, v2, v39);
  v44 = sub_1B0E43988();
  v40 = v44;
  v43 = sub_1B0E45908();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v45 = sub_1B0E46A48();
  if (os_log_type_enabled(v44, v43))
  {
    v3 = v31;
    v22 = sub_1B0E45D78();
    v18 = v22;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v20 = 0;
    v23 = sub_1B03949A8(0, v19, v19);
    v21 = v23;
    v24 = sub_1B03949A8(v20, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v49 = v22;
    v48 = v23;
    v47 = v24;
    v25 = 0;
    v26 = &v49;
    sub_1B0394A48(0, &v49);
    sub_1B0394A48(v25, v26);
    v46 = v45;
    v27 = &v8;
    MEMORY[0x1EEE9AC00](&v8);
    v28 = &v8 - 6;
    *(&v8 - 4) = v4;
    *(&v8 - 3) = &v48;
    *(&v8 - 2) = &v47;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
    sub_1B06D3AB0();
    sub_1B0E45018();
    v30 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B0389000, v40, v41, "Registering.", v18, 2u);
      v16 = 0;
      sub_1B03998A8(v21, 0, v19);
      sub_1B03998A8(v24, v16, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v17 = v30;
    }
  }

  else
  {

    v17 = v31;
  }

  (*(v35 + 8))(v37, v33);
  v5 = sub_1B06BF730();
  v10 = *v5;
  v15 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = *MEMORY[0x1E69E9C50];
  swift_unknownObjectRetain();
  v9 = swift_allocObject();
  v8 = v9 + 16;
  v6 = v32;
  swift_unknownObjectWeakInit();

  v55 = sub_1B06CCCBC;
  v56 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = 0;
  v53 = sub_1B06C276C;
  v54 = &block_descriptor;
  v13 = _Block_copy(&aBlock);

  v12 = sub_1B0E44BC8();

  v11 = (v12 + 32);

  xpc_activity_register(v11, v14, v13);
  swift_unknownObjectRelease();
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_1B06C0744(_xpc_activity_s *a1, uint64_t a2)
{
  v57 = a1;
  v56 = a2;
  v50 = sub_1B03FB774;
  v51 = sub_1B03B0DF8;
  v52 = sub_1B0398F5C;
  v53 = sub_1B0398F5C;
  v54 = sub_1B0399260;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v55 = 0;
  v58 = sub_1B0E439A8();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v19 - v61;
  v73 = v2;
  v72 = v3 + 16;
  state = xpc_activity_get_state(v2);
  v71 = state;
  if (state)
  {
    if (state == 2)
    {
      v46 = v56 + 16;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        p_Strong = &Strong;
        v45 = Strong;
        MEMORY[0x1E69E5928](Strong);
        sub_1B06D4E94(p_Strong);
        swift_endAccess();
        sub_1B06C1B7C(v57);
        return MEMORY[0x1E69E5920](v45);
      }

      else
      {
        sub_1B06D4E94(&Strong);
        return swift_endAccess();
      }
    }

    else
    {
      v5 = v62;
      v6 = sub_1B06BF680();
      (*(v59 + 16))(v5, v6, v58);
      v33 = 7;
      v34 = swift_allocObject();
      *(v34 + 16) = state;
      v42 = sub_1B0E43988();
      v43 = sub_1B0E458E8();
      v31 = 17;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = 8;
      v32 = 32;
      v7 = swift_allocObject();
      v8 = v34;
      v35 = v7;
      *(v7 + 16) = v50;
      *(v7 + 24) = v8;
      v9 = swift_allocObject();
      v10 = v35;
      v39 = v9;
      *(v9 + 16) = v51;
      *(v9 + 24) = v10;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v38 = sub_1B0E46A48();
      v40 = v11;

      v12 = v36;
      v13 = v40;
      *v40 = v52;
      v13[1] = v12;

      v14 = v37;
      v15 = v40;
      v40[2] = v53;
      v15[3] = v14;

      v16 = v39;
      v17 = v40;
      v40[4] = v54;
      v17[5] = v16;
      sub_1B0394964();

      if (os_log_type_enabled(v42, v43))
      {
        v18 = v55;
        v24 = sub_1B0E45D78();
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v23 = 0;
        v25 = sub_1B03949A8(0, v22, v22);
        v26 = sub_1B03949A8(v23, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v27 = &v70;
        v70 = v24;
        v28 = &v69;
        v69 = v25;
        v29 = &v68;
        v68 = v26;
        sub_1B0394A48(0, &v70);
        sub_1B0394A48(1, v27);
        v66 = v52;
        v67 = v36;
        sub_1B03949FC(&v66, v27, v28, v29);
        v30 = v18;
        if (v18)
        {

          __break(1u);
        }

        else
        {
          v66 = v53;
          v67 = v37;
          sub_1B03949FC(&v66, &v70, &v69, &v68);
          v21 = 0;
          v66 = v54;
          v67 = v39;
          sub_1B03949FC(&v66, &v70, &v69, &v68);
          _os_log_impl(&dword_1B0389000, v42, v43, "Unexpected activity state: %ld.", v24, 0xCu);
          v20 = 0;
          sub_1B03998A8(v25, 0, v22);
          sub_1B03998A8(v26, v20, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v42);
      return (*(v59 + 8))(v62, v58);
    }
  }

  else
  {
    v49 = v56 + 16;
    swift_beginAccess();
    v64 = swift_unknownObjectWeakLoadStrong();
    if (v64)
    {
      v47 = &v64;
      v48 = v64;
      MEMORY[0x1E69E5928](v64);
      sub_1B06D4E94(v47);
      swift_endAccess();
      sub_1B06C0F78(v57);
      return MEMORY[0x1E69E5920](v48);
    }

    else
    {
      sub_1B06D4E94(&v64);
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B06C0F78(_xpc_activity_s *a1)
{
  v88 = a1;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v87 = 0;
  v99 = 0;
  v89 = sub_1B0E439A8();
  v90 = *(v89 - 8);
  v91 = v90;
  v92 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v94 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = &v25 - v94;
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v25 - v94;
  v112 = v3;
  v111 = v1;
  v96 = xpc_activity_copy_criteria(v3);
  v110 = v96;
  v98 = sub_1B06C2C1C();
  v109 = v98;
  if ([v97 didSetCriteria])
  {
    swift_unknownObjectRetain();
    if (v96)
    {
      v85 = v96;
      v82 = v96;
      v99 = v96;
      v4 = xpc_equal(v98, v96);
      v83 = !v4;
      v108 = !v4;
      swift_unknownObjectRelease();
      v84 = v83;
    }

    else
    {
      v108 = 1;
      v84 = 1;
    }

    v86 = v84;
  }

  else
  {
    v108 = 1;
    v86 = 1;
  }

  if (v86)
  {
    v5 = v95;
    v6 = sub_1B06BF680();
    (*(v91 + 16))(v5, v6, v89);
    swift_unknownObjectRetain();
    v70 = 7;
    v71 = swift_allocObject();
    *(v71 + 16) = v98;
    v81 = sub_1B0E43988();
    v64 = v81;
    v80 = sub_1B0E45908();
    v65 = v80;
    v66 = 17;
    v74 = swift_allocObject();
    v67 = v74;
    *(v74 + 16) = 34;
    v75 = swift_allocObject();
    v68 = v75;
    *(v75 + 16) = 8;
    v69 = 32;
    v7 = swift_allocObject();
    v8 = v71;
    v72 = v7;
    *(v7 + 16) = sub_1B06D46CC;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v72;
    v78 = v9;
    v73 = v9;
    *(v9 + 16) = sub_1B039BCF8;
    *(v9 + 24) = v10;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v76 = sub_1B0E46A48();
    v77 = v11;

    v12 = v74;
    v13 = v77;
    *v77 = sub_1B0398F5C;
    v13[1] = v12;

    v14 = v75;
    v15 = v77;
    v77[2] = sub_1B0398F5C;
    v15[3] = v14;

    v16 = v77;
    v17 = v78;
    v77[4] = sub_1B039BCEC;
    v16[5] = v17;
    sub_1B0394964();

    if (os_log_type_enabled(v81, v80))
    {
      v18 = v87;
      v57 = sub_1B0E45D78();
      v54 = v57;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v58 = sub_1B03949A8(0, v55, v55);
      v56 = v58;
      v60 = 1;
      v59 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v104[0] = v57;
      v103 = v58;
      v102 = v59;
      v61 = v104;
      sub_1B0394A48(2, v104);
      sub_1B0394A48(v60, v61);
      v100 = sub_1B0398F5C;
      v101 = v67;
      sub_1B03949FC(&v100, v61, &v103, &v102);
      v62 = v18;
      v63 = v18;
      if (v18)
      {
        v52 = 0;

        __break(1u);
      }

      else
      {
        v100 = sub_1B0398F5C;
        v101 = v68;
        sub_1B03949FC(&v100, v104, &v103, &v102);
        v50 = 0;
        v51 = 0;
        v100 = sub_1B039BCEC;
        v101 = v73;
        sub_1B03949FC(&v100, v104, &v103, &v102);
        v48 = 0;
        v49 = 0;
        _os_log_impl(&dword_1B0389000, v64, v65, "Checking in: Updating criteria to %{public}s", v54, 0xCu);
        sub_1B03998A8(v56, 0, v55);
        sub_1B03998A8(v59, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v53 = v48;
      }
    }

    else
    {
      v19 = v87;

      v53 = v19;
    }

    v46 = v53;

    (*(v91 + 8))(v95, v89);
    xpc_activity_set_criteria(v88, v98);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v46;
  }

  else
  {
    v20 = v93;
    v21 = sub_1B06BF680();
    (*(v91 + 16))(v20, v21, v89);
    v44 = sub_1B0E43988();
    v41 = v44;
    v43 = sub_1B0E45908();
    v42 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v45 = sub_1B0E46A48();
    if (os_log_type_enabled(v44, v43))
    {
      v22 = v87;
      v32 = sub_1B0E45D78();
      v28 = v32;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v30 = 0;
      v33 = sub_1B03949A8(0, v29, v29);
      v31 = v33;
      v34 = sub_1B03949A8(v30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v107 = v32;
      v106 = v33;
      v105 = v34;
      v35 = 0;
      v36 = &v107;
      sub_1B0394A48(0, &v107);
      sub_1B0394A48(v35, v36);
      v104[2] = v45;
      v37 = &v25;
      MEMORY[0x1EEE9AC00](&v25);
      v38 = &v25 - 6;
      *(&v25 - 4) = v23;
      *(&v25 - 3) = &v106;
      *(&v25 - 2) = &v105;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v40 = v22;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v41, v42, "Checked in.", v28, 2u);
        v26 = 0;
        sub_1B03998A8(v31, 0, v29);
        sub_1B03998A8(v34, v26, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v27 = v40;
      }
    }

    else
    {

      v27 = v87;
    }

    v25 = v27;

    (*(v91 + 8))(v93, v89);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v25;
  }
}

uint64_t sub_1B06C1B7C(uint64_t a1)
{
  v83 = a1;
  v78 = 0;
  v109 = 0;
  v108 = 0;
  v73 = 0;
  v102 = 0;
  v74 = sub_1B0E44238();
  v75 = *(v74 - 8);
  v76 = v75;
  MEMORY[0x1EEE9AC00](0);
  v77 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1B0E44288();
  v80 = *(v79 - 8);
  v81 = v80;
  MEMORY[0x1EEE9AC00](v78);
  v82 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1B0E439A8();
  v85 = *(v84 - 8);
  v86 = v85;
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v89 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = &v20 - v89;
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v20 - v89;
  v109 = v5;
  v108 = v1;
  if (xpc_activity_set_state(v5, 4))
  {
    v6 = v90;
    v7 = sub_1B06BF680();
    (*(v86 + 16))(v6, v7, v84);
    v70 = sub_1B0E43988();
    v67 = v70;
    v69 = sub_1B0E45908();
    v68 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v71 = sub_1B0E46A48();
    if (os_log_type_enabled(v70, v69))
    {
      v8 = v73;
      v58 = sub_1B0E45D78();
      v54 = v58;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v56 = 0;
      v59 = sub_1B03949A8(0, v55, v55);
      v57 = v59;
      v60 = sub_1B03949A8(v56, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v94 = v58;
      v93 = v59;
      v92 = v60;
      v61 = 0;
      v62 = &v94;
      sub_1B0394A48(0, &v94);
      sub_1B0394A48(v61, v62);
      v91 = v71;
      v63 = &v20;
      MEMORY[0x1EEE9AC00](&v20);
      v64 = &v20 - 6;
      *(&v20 - 4) = v9;
      *(&v20 - 3) = &v93;
      *(&v20 - 2) = &v92;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v66 = v8;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v67, v68, "Run", v54, 2u);
        v52 = 0;
        sub_1B03998A8(v57, 0, v55);
        sub_1B03998A8(v60, v52, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v53 = v66;
      }
    }

    else
    {

      v53 = v73;
    }

    v50 = v53;

    (*(v86 + 8))(v90, v84);
    v46 = 0;
    _s8ActivityCMa(0);
    v41 = &v72[OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID];
    v45 = 32;
    v42 = v103;
    swift_beginAccess();
    v43 = *v41;
    swift_endAccess();
    swift_unknownObjectRetain();
    v10 = v72;
    v44 = 0x1FB85B000uLL;
    v11 = [v72 0x1FB85B978];
    v49 = sub_1B06C30C8(v43, v83, v72, v11);
    v102 = v49;
    v48 = [v72 (v44 + 2424)];
    v12 = v72;

    v13 = swift_allocObject();
    v14 = v49;
    *(v13 + 16) = v72;
    *(v13 + 24) = v14;
    v100 = sub_1B06D4D4C;
    v101 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v96 = 1107296256;
    v97 = 0;
    v98 = sub_1B038C908;
    v99 = &block_descriptor_24;
    v47 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](v46, v82, v77, v47);
    (*(v76 + 8))(v77, v74);
    (*(v81 + 8))(v82, v79);
    _Block_release(v47);

    sub_1B06C300C(v72);
    return v50;
  }

  else
  {
    v15 = v88;
    v16 = sub_1B06BF680();
    (*(v86 + 16))(v15, v16, v84);
    v39 = sub_1B0E43988();
    v36 = v39;
    v38 = sub_1B0E458E8();
    v37 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v40 = sub_1B0E46A48();
    if (os_log_type_enabled(v39, v38))
    {
      v17 = v73;
      v27 = sub_1B0E45D78();
      v23 = v27;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v25 = 0;
      v28 = sub_1B03949A8(0, v24, v24);
      v26 = v28;
      v29 = sub_1B03949A8(v25, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v107 = v27;
      v106 = v28;
      v105 = v29;
      v30 = 0;
      v31 = &v107;
      sub_1B0394A48(0, &v107);
      sub_1B0394A48(v30, v31);
      v104 = v40;
      v32 = &v20;
      MEMORY[0x1EEE9AC00](&v20);
      v33 = &v20 - 6;
      *(&v20 - 4) = v18;
      *(&v20 - 3) = &v106;
      *(&v20 - 2) = &v105;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v35 = v17;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v36, v37, "Unable to set state to CONTINUE.", v23, 2u);
        v21 = 0;
        sub_1B03998A8(v26, 0, v24);
        sub_1B03998A8(v29, v21, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v22 = v35;
      }
    }

    else
    {

      v22 = v73;
    }

    v20 = v22;

    (*(v86 + 8))(v88, v84);
    return v20;
  }
}

uint64_t sub_1B06C276C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  swift_unknownObjectRetain();
  v3(a2);
  swift_unknownObjectRelease();
}

uint64_t sub_1B06C27D4()
{
  v36 = 0;
  v44 = 0;
  v26 = 0;
  v33 = sub_1B0E439A8();
  v27 = v33;
  v28 = *(v33 - 8);
  v32 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v0 = &v7 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v44 = v1;
  v2 = sub_1B06BF680();
  (*(v32 + 16))(v0, v2, v33);
  v38 = sub_1B0E43988();
  v34 = v38;
  v37 = sub_1B0E45908();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v39 = sub_1B0E46A48();
  if (os_log_type_enabled(v38, v37))
  {
    v3 = v26;
    v17 = sub_1B0E45D78();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v15 = 0;
    v18 = sub_1B03949A8(0, v14, v14);
    v16 = v18;
    v19 = sub_1B03949A8(v15, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v43 = v17;
    v42 = v18;
    v41 = v19;
    v20 = 0;
    v21 = &v43;
    sub_1B0394A48(0, &v43);
    sub_1B0394A48(v20, v21);
    v40 = v39;
    v22 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v23 = &v7 - 6;
    *(&v7 - 4) = v4;
    *(&v7 - 3) = &v42;
    *(&v7 - 2) = &v41;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
    sub_1B06D3AB0();
    sub_1B0E45018();
    v25 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B0389000, v34, v35, "Un-registering.", v13, 2u);
      v11 = 0;
      sub_1B03998A8(v16, 0, v14);
      sub_1B03998A8(v19, v11, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v29 + 8))(v31, v27);
  v5 = sub_1B06BF730();
  v7 = *v5;
  v10 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0E44BC8();

  v8 = (v9 + 32);

  xpc_activity_unregister(v8);
  swift_unknownObjectRelease();
}

xpc_object_t sub_1B06C2C1C()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 1);
  v5 = MEMORY[0x1E69E9CC0];
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C68], *MEMORY[0x1E69E9CD8]);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C98], *v5);
  if (*MEMORY[0x1E69E9C90])
  {
    xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C90], *MEMORY[0x1E69E9CD8]);
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
    xpc_dictionary_set_int64(empty, key, *MEMORY[0x1E69E9CD8]);
  }

  xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 0);
  if (*MEMORY[0x1E69E9DB0])
  {
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9DB0], 1);
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
    xpc_dictionary_set_BOOL(empty, v3, 1);
  }

  if (*MEMORY[0x1E69E9D10])
  {
    xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9D10], 104857600);
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
    xpc_dictionary_set_int64(empty, v2, 104857600);
  }

  if (*MEMORY[0x1E69E9D48])
  {
    xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9D48], 0x100000);
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
    xpc_dictionary_set_int64(empty, v1, 0x100000);
  }

  return empty;
}

uint64_t sub_1B06C2F5C()
{
  v3 = xpc_copy_clean_description();
  if (!v3)
  {
    return sub_1B0E44838();
  }

  v1 = sub_1B0E44D88();
  sub_1B06D3A58(v3);
  return v1;
}

uint64_t sub_1B06C300C(uint64_t a1)
{
  swift_beginAccess();
  swift_endAccess();
  sub_1B06CCCC4();
  v5 = v1;
  v4 = (a1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID);
  swift_beginAccess();
  *v4 = v5;
  return swift_endAccess();
}

uint64_t sub_1B06C3174(uint64_t a1)
{
  v83 = a1;
  v66 = sub_1B06D4DBC;
  v67 = sub_1B06D4E08;
  v68 = sub_1B06D4DC4;
  v69 = sub_1B06D4E08;
  v70 = sub_1B0398F5C;
  v71 = sub_1B0398F5C;
  v72 = sub_1B0399348;
  v73 = sub_1B0398F5C;
  v74 = sub_1B0398F5C;
  v75 = sub_1B0399348;
  v100 = 0;
  v99 = 0;
  v76 = 0;
  v77 = 0;
  v78 = sub_1B0E439A8();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v82 = v31 - v81;
  v88 = sub_1B0E44468();
  v86 = *(v88 - 8);
  v87 = v88 - 8;
  v84 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85);
  v89 = (v31 - v84);
  v100 = v1;
  v99 = v2;
  MEMORY[0x1E69E5928](v2);
  v3 = [v85 queue];
  v4 = v86;
  *v89 = v3;
  (*(v4 + 104))();
  v90 = sub_1B0E44488();
  (*(v86 + 8))(v89, v88);
  result = v90;
  if (v90)
  {
    MEMORY[0x1E69E5920](v85);
    v63 = &v85[OBJC_IVAR___MFBackFillMessageBodyScheduler_activity];
    v64 = v98;
    swift_beginAccess();
    v65 = *v63;

    swift_endAccess();
    v97 = v65;
    v62 = v65 == 0;
    v61 = v62;
    sub_1B0391AD4(&v97);
    if (v61)
    {
      v6 = v83;

      v59 = &v85[OBJC_IVAR___MFBackFillMessageBodyScheduler_activity];
      v60 = &v91;
      swift_beginAccess();
      *v59 = v6;

      swift_endAccess();
      return sub_1B06C5700();
    }

    else
    {
      v7 = v82;
      v8 = sub_1B06BF680();
      (*(v79 + 16))(v7, v8, v78);

      MEMORY[0x1E69E5928](v85);
      v45 = 7;
      v46 = swift_allocObject();
      *(v46 + 16) = v85;
      v57 = sub_1B0E43988();
      v58 = sub_1B0E458E8();
      v42 = 17;
      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      v49 = swift_allocObject();
      v43 = 2;
      *(v49 + 16) = 2;
      v44 = 32;
      v9 = swift_allocObject();
      v10 = v83;
      v41 = v9;
      *(v9 + 16) = v66;
      *(v9 + 24) = v10;
      v11 = swift_allocObject();
      v12 = v41;
      v50 = v11;
      *(v11 + 16) = v67;
      *(v11 + 24) = v12;
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      v52 = swift_allocObject();
      *(v52 + 16) = v43;
      v13 = swift_allocObject();
      v14 = v46;
      v47 = v13;
      *(v13 + 16) = v68;
      *(v13 + 24) = v14;
      v15 = swift_allocObject();
      v16 = v47;
      v54 = v15;
      *(v15 + 16) = v69;
      *(v15 + 24) = v16;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v53 = sub_1B0E46A48();
      v55 = v17;

      v18 = v48;
      v19 = v55;
      *v55 = v70;
      v19[1] = v18;

      v20 = v49;
      v21 = v55;
      v55[2] = v71;
      v21[3] = v20;

      v22 = v50;
      v23 = v55;
      v55[4] = v72;
      v23[5] = v22;

      v24 = v51;
      v25 = v55;
      v55[6] = v73;
      v25[7] = v24;

      v26 = v52;
      v27 = v55;
      v55[8] = v74;
      v27[9] = v26;

      v28 = v54;
      v29 = v55;
      v55[10] = v75;
      v29[11] = v28;
      sub_1B0394964();

      if (os_log_type_enabled(v57, v58))
      {
        v30 = v76;
        v34 = sub_1B0E45D78();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v33 = 0;
        v35 = sub_1B03949A8(0, v32, v32);
        v36 = sub_1B03949A8(v33, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v37 = &v96;
        v96 = v34;
        v38 = &v95;
        v95 = v35;
        v39 = &v94;
        v94 = v36;
        sub_1B0394A48(0, &v96);
        sub_1B0394A48(2, v37);
        v92 = v70;
        v93 = v48;
        sub_1B03949FC(&v92, v37, v38, v39);
        v40 = v30;
        if (v30)
        {

          __break(1u);
        }

        else
        {
          v92 = v71;
          v93 = v49;
          sub_1B03949FC(&v92, &v96, &v95, &v94);
          v31[4] = 0;
          v92 = v72;
          v93 = v50;
          sub_1B03949FC(&v92, &v96, &v95, &v94);
          v31[3] = 0;
          v92 = v73;
          v93 = v51;
          sub_1B03949FC(&v92, &v96, &v95, &v94);
          v31[2] = 0;
          v92 = v74;
          v93 = v52;
          sub_1B03949FC(&v92, &v96, &v95, &v94);
          v31[1] = 0;
          v92 = v75;
          v93 = v54;
          sub_1B03949FC(&v92, &v96, &v95, &v94);
          _os_log_impl(&dword_1B0389000, v57, v58, "Received new activity '%hx', but already have an existing one %hx.", v34, 0xAu);
          v31[0] = 0;
          sub_1B03998A8(v35, 0, v32);
          sub_1B03998A8(v36, v31[0], MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v57);
      (*(v79 + 8))(v82, v78);
      return sub_1B06C3EFC(3u);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06C3DFC(uint64_t a1)
{
  v4 = (a1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
  swift_beginAccess();
  v5 = *v4;

  swift_endAccess();
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v2 = *(v3 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_id);

  return v2;
}

uint64_t sub_1B06C3EFC(unsigned int a1)
{
  v156 = a1;
  v127 = sub_1B06D4DBC;
  v128 = sub_1B06D4E08;
  v129 = sub_1B06D4E8C;
  v130 = sub_1B039BCF8;
  v131 = sub_1B0398F5C;
  v132 = sub_1B0398F5C;
  v133 = sub_1B0399348;
  v134 = sub_1B0398F5C;
  v135 = sub_1B0398F5C;
  v136 = sub_1B039BCEC;
  v137 = sub_1B06D4DBC;
  v138 = sub_1B06D4E08;
  v139 = sub_1B06D4E8C;
  v140 = sub_1B039BCF8;
  v141 = sub_1B0398F5C;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0399348;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B039BCEC;
  v179 = 0;
  v178 = 0;
  v147 = 0;
  v148 = 0;
  v149 = sub_1B0E439A8();
  v150 = *(v149 - 8);
  v151 = v149 - 8;
  v152 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v153 = &p_Strong - v152;
  v154 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v155 = &p_Strong - v154;
  v161 = sub_1B0E44468();
  v159 = *(v161 - 8);
  v160 = v161 - 8;
  v157 = (*(v159 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v156);
  v162 = (&p_Strong - v157);
  v179 = v4;
  v178 = v1;

  v158 = *(v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v158);
  v5 = v159;
  *v162 = v158;
  (*(v5 + 104))();
  v163 = sub_1B0E44488();
  (*(v159 + 8))(v162, v161);
  result = v163;
  if (v163)
  {

    v124 = &v177;
    swift_beginAccess();
    v125 = *(v126 + 48);
    result = swift_endAccess();
    if ((v125 & 1) == 0)
    {
      v122 = v176;
      v123 = 0;
      swift_beginAccess();
      *(v126 + 48) = 1;
      swift_endAccess();
      swift_beginAccess();
      if (*(v126 + 40))
      {
        v121 = *(v126 + 40);
        swift_unknownObjectRetain();
        swift_endAccess();
        swift_getObjectType();
        sub_1B0E45A98();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
      }

      v118 = v175;
      swift_beginAccess();
      *(v126 + 40) = 0;
      swift_unknownObjectRelease();
      swift_endAccess();
      v119 = *(v126 + 24);
      swift_unknownObjectRetain();
      sub_1B06CCCF4(v156);
      v120 = xpc_activity_set_completion_status();
      swift_unknownObjectRelease();
      if (v120)
      {
        v31 = v153;
        v32 = sub_1B06BF680();
        (*(v150 + 16))(v31, v32, v149);

        v72 = 17;
        v74 = 7;
        v75 = swift_allocObject();
        *(v75 + 16) = v156;
        v86 = sub_1B0E43988();
        v87 = sub_1B0E45908();
        v77 = swift_allocObject();
        *(v77 + 16) = 0;
        v78 = swift_allocObject();
        *(v78 + 16) = 2;
        v73 = 32;
        v33 = swift_allocObject();
        v34 = v126;
        v71 = v33;
        *(v33 + 16) = v127;
        *(v33 + 24) = v34;
        v35 = swift_allocObject();
        v36 = v71;
        v79 = v35;
        *(v35 + 16) = v128;
        *(v35 + 24) = v36;
        v80 = swift_allocObject();
        *(v80 + 16) = 34;
        v81 = swift_allocObject();
        *(v81 + 16) = 8;
        v37 = swift_allocObject();
        v38 = v75;
        v76 = v37;
        *(v37 + 16) = v129;
        *(v37 + 24) = v38;
        v39 = swift_allocObject();
        v40 = v76;
        v83 = v39;
        *(v39 + 16) = v130;
        *(v39 + 24) = v40;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v82 = sub_1B0E46A48();
        v84 = v41;

        v42 = v77;
        v43 = v84;
        *v84 = v131;
        v43[1] = v42;

        v44 = v78;
        v45 = v84;
        v84[2] = v132;
        v45[3] = v44;

        v46 = v79;
        v47 = v84;
        v84[4] = v133;
        v47[5] = v46;

        v48 = v80;
        v49 = v84;
        v84[6] = v134;
        v49[7] = v48;

        v50 = v81;
        v51 = v84;
        v84[8] = v135;
        v51[9] = v50;

        v52 = v83;
        v53 = v84;
        v84[10] = v136;
        v53[11] = v52;
        sub_1B0394964();

        if (os_log_type_enabled(v86, v87))
        {
          v54 = v147;
          v63 = sub_1B0E45D78();
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v64 = sub_1B03949A8(0, v62, v62);
          v65 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v67 = &v173;
          v173 = v63;
          v68 = &v172;
          v172 = v64;
          v69 = &v171;
          v171 = v65;
          v66 = 2;
          sub_1B0394A48(2, &v173);
          sub_1B0394A48(v66, v67);
          v169 = v131;
          v170 = v77;
          sub_1B03949FC(&v169, v67, v68, v69);
          v70 = v54;
          if (v54)
          {

            __break(1u);
          }

          else
          {
            v169 = v132;
            v170 = v78;
            sub_1B03949FC(&v169, &v173, &v172, &v171);
            v61 = 0;
            v169 = v133;
            v170 = v79;
            sub_1B03949FC(&v169, &v173, &v172, &v171);
            v60 = 0;
            v169 = v134;
            v170 = v80;
            sub_1B03949FC(&v169, &v173, &v172, &v171);
            v59 = 0;
            v169 = v135;
            v170 = v81;
            sub_1B03949FC(&v169, &v173, &v172, &v171);
            v58 = 0;
            v169 = v136;
            v170 = v83;
            sub_1B03949FC(&v169, &v173, &v172, &v171);
            _os_log_impl(&dword_1B0389000, v86, v87, "%hx: Completed with status: %{public}s", v63, 0x10u);
            sub_1B03998A8(v64, 0, v62);
            sub_1B03998A8(v65, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v86);
        (*(v150 + 8))(v153, v149);
      }

      else
      {
        v7 = v155;
        v8 = sub_1B06BF680();
        (*(v150 + 16))(v7, v8, v149);

        v102 = 17;
        v104 = 7;
        v105 = swift_allocObject();
        *(v105 + 16) = v156;
        v116 = sub_1B0E43988();
        v117 = sub_1B0E458E8();
        v107 = swift_allocObject();
        *(v107 + 16) = 0;
        v108 = swift_allocObject();
        *(v108 + 16) = 2;
        v103 = 32;
        v9 = swift_allocObject();
        v10 = v126;
        v101 = v9;
        *(v9 + 16) = v137;
        *(v9 + 24) = v10;
        v11 = swift_allocObject();
        v12 = v101;
        v109 = v11;
        *(v11 + 16) = v138;
        *(v11 + 24) = v12;
        v110 = swift_allocObject();
        *(v110 + 16) = 34;
        v111 = swift_allocObject();
        *(v111 + 16) = 8;
        v13 = swift_allocObject();
        v14 = v105;
        v106 = v13;
        *(v13 + 16) = v139;
        *(v13 + 24) = v14;
        v15 = swift_allocObject();
        v16 = v106;
        v113 = v15;
        *(v15 + 16) = v140;
        *(v15 + 24) = v16;
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v112 = sub_1B0E46A48();
        v114 = v17;

        v18 = v107;
        v19 = v114;
        *v114 = v141;
        v19[1] = v18;

        v20 = v108;
        v21 = v114;
        v114[2] = v142;
        v21[3] = v20;

        v22 = v109;
        v23 = v114;
        v114[4] = v143;
        v23[5] = v22;

        v24 = v110;
        v25 = v114;
        v114[6] = v144;
        v25[7] = v24;

        v26 = v111;
        v27 = v114;
        v114[8] = v145;
        v27[9] = v26;

        v28 = v113;
        v29 = v114;
        v114[10] = v146;
        v29[11] = v28;
        sub_1B0394964();

        if (os_log_type_enabled(v116, v117))
        {
          v30 = v147;
          v93 = sub_1B0E45D78();
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v94 = sub_1B03949A8(0, v92, v92);
          v95 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v97 = &v168;
          v168 = v93;
          v98 = &v167;
          v167 = v94;
          v99 = &v166;
          v166 = v95;
          v96 = 2;
          sub_1B0394A48(2, &v168);
          sub_1B0394A48(v96, v97);
          v164 = v141;
          v165 = v107;
          sub_1B03949FC(&v164, v97, v98, v99);
          v100 = v30;
          if (v30)
          {

            __break(1u);
          }

          else
          {
            v164 = v142;
            v165 = v108;
            sub_1B03949FC(&v164, &v168, &v167, &v166);
            v91 = 0;
            v164 = v143;
            v165 = v109;
            sub_1B03949FC(&v164, &v168, &v167, &v166);
            v90 = 0;
            v164 = v144;
            v165 = v110;
            sub_1B03949FC(&v164, &v168, &v167, &v166);
            v89 = 0;
            v164 = v145;
            v165 = v111;
            sub_1B03949FC(&v164, &v168, &v167, &v166);
            v88 = 0;
            v164 = v146;
            v165 = v113;
            sub_1B03949FC(&v164, &v168, &v167, &v166);
            _os_log_impl(&dword_1B0389000, v116, v117, "%hx: Failed to set completion status to %{public}s", v93, 0x10u);
            sub_1B03998A8(v94, 0, v92);
            sub_1B03998A8(v95, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v116);
        (*(v150 + 8))(v155, v149);
      }

      v57 = v126 + 16;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        p_Strong = &Strong;
        v56 = Strong;
        MEMORY[0x1E69E5928](Strong);
        sub_1B06D4E94(p_Strong);
        swift_endAccess();
        sub_1B06C5CA4(v126);
        return MEMORY[0x1E69E5920](v56);
      }

      else
      {
        sub_1B06D4E94(&Strong);
        return swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06C5700()
{
  v35 = sub_1B06D4DBC;
  v38 = sub_1B06D4E08;
  v40 = sub_1B0398F5C;
  v42 = sub_1B0398F5C;
  v45 = sub_1B0399348;
  v56 = 0;
  v27 = 0;
  v32 = sub_1B0E439A8();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v28 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v0 = v17 - v28;
  v29 = v17 - v28;
  v56 = v1;
  v2 = sub_1B06BF680();
  (*(v30 + 16))(v0, v2, v32);

  v3 = sub_1B0E43988();
  v4 = v33;
  v49 = v3;
  v50 = sub_1B0E458E8();
  v34 = 17;
  v37 = 7;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 2;
  v36 = 32;
  v5 = swift_allocObject();
  v39 = v5;
  *(v5 + 16) = v35;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v7 = v39;
  v46 = v6;
  *(v6 + 16) = v38;
  *(v6 + 24) = v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v44 = sub_1B0E46A48();
  v47 = v8;

  v9 = v41;
  v10 = v47;
  *v47 = v40;
  v10[1] = v9;

  v11 = v43;
  v12 = v47;
  v47[2] = v42;
  v12[3] = v11;

  v13 = v46;
  v14 = v47;
  v47[4] = v45;
  v14[5] = v13;
  sub_1B0394964();

  if (os_log_type_enabled(v49, v50))
  {
    v15 = v27;
    v20 = sub_1B0E45D78();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v19 = 0;
    v21 = sub_1B03949A8(0, v18, v18);
    v22 = sub_1B03949A8(v19, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v23 = &v55;
    v55 = v20;
    v24 = &v54;
    v54 = v21;
    v25 = &v53;
    v53 = v22;
    sub_1B0394A48(0, &v55);
    sub_1B0394A48(1, v23);
    v51 = v40;
    v52 = v41;
    sub_1B03949FC(&v51, v23, v24, v25);
    v26 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v51 = v42;
      v52 = v43;
      sub_1B03949FC(&v51, &v55, &v54, &v53);
      v17[1] = 0;
      v51 = v45;
      v52 = v46;
      sub_1B03949FC(&v51, &v55, &v54, &v53);
      _os_log_impl(&dword_1B0389000, v49, v50, "%hx: Running.", v20, 6u);
      v17[0] = 0;
      sub_1B03998A8(v21, 0, v18);
      sub_1B03998A8(v22, v17[0], MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v49);
  (*(v30 + 8))(v29, v32);
  sub_1B06CAF08();
  return sub_1B06CC24C();
}

uint64_t sub_1B06C5CA4(uint64_t a1)
{
  v100 = a1;
  v99 = 0;
  v88 = sub_1B06D4DBC;
  v89 = sub_1B06D4E08;
  v90 = sub_1B0398F5C;
  v91 = sub_1B0398F5C;
  v92 = sub_1B0399348;
  v93 = sub_1B06D4DBC;
  v94 = sub_1B06D4E08;
  v95 = sub_1B0398F5C;
  v96 = sub_1B0398F5C;
  v97 = sub_1B0399348;
  v124 = 0;
  v123 = 0;
  v98 = 0;
  v101 = sub_1B0E439A8();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100);
  v105 = &v34 - v104;
  v106 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v107 = &v34 - v106;
  v124 = v4;
  v123 = v1;
  v108 = (v1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
  v109 = v122;
  swift_beginAccess();
  v110 = *v108;

  swift_endAccess();
  if (v110)
  {
    v86 = v110;
    v85 = v110;
  }

  else
  {
    v85 = 0;
  }

  v83 = v85;

  v84 = sub_1B0E46B58();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v84)
  {
    v5 = v107;
    v69 = (v87 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
    v70 = &v116;
    swift_beginAccess();
    *v69 = 0;

    swift_endAccess();
    v6 = sub_1B06BF680();
    (*(v102 + 16))(v5, v6, v101);

    v81 = sub_1B0E43988();
    v82 = sub_1B0E45908();
    v71 = 17;
    v73 = 7;
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    v76 = swift_allocObject();
    *(v76 + 16) = 2;
    v72 = 32;
    v7 = swift_allocObject();
    v8 = v100;
    v74 = v7;
    *(v7 + 16) = v93;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v74;
    v78 = v9;
    *(v9 + 16) = v94;
    *(v9 + 24) = v10;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v77 = sub_1B0E46A48();
    v79 = v11;

    v12 = v75;
    v13 = v79;
    *v79 = v95;
    v13[1] = v12;

    v14 = v76;
    v15 = v79;
    v79[2] = v96;
    v15[3] = v14;

    v16 = v78;
    v17 = v79;
    v79[4] = v97;
    v17[5] = v16;
    sub_1B0394964();

    if (os_log_type_enabled(v81, v82))
    {
      v18 = v98;
      v62 = sub_1B0E45D78();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v61 = 0;
      v63 = sub_1B03949A8(0, v60, v60);
      v64 = sub_1B03949A8(v61, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v65 = &v115;
      v115 = v62;
      v66 = &v114;
      v114 = v63;
      v67 = &v113;
      v113 = v64;
      sub_1B0394A48(0, &v115);
      sub_1B0394A48(1, v65);
      v111 = v95;
      v112 = v75;
      sub_1B03949FC(&v111, v65, v66, v67);
      v68 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v111 = v96;
        v112 = v76;
        sub_1B03949FC(&v111, &v115, &v114, &v113);
        v59 = 0;
        v111 = v97;
        v112 = v78;
        sub_1B03949FC(&v111, &v115, &v114, &v113);
        _os_log_impl(&dword_1B0389000, v81, v82, "Activity '%hx' did complete.", v62, 6u);
        v58 = 0;
        sub_1B03998A8(v63, 0, v60);
        sub_1B03998A8(v64, v58, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v81);
    return (*(v102 + 8))(v107, v101);
  }

  else
  {
    v20 = v105;
    v21 = sub_1B06BF680();
    (*(v102 + 16))(v20, v21, v101);

    v56 = sub_1B0E43988();
    v57 = sub_1B0E458E8();
    v46 = 17;
    v48 = 7;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 2;
    v47 = 32;
    v22 = swift_allocObject();
    v23 = v100;
    v49 = v22;
    *(v22 + 16) = v88;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v49;
    v53 = v24;
    *(v24 + 16) = v89;
    *(v24 + 24) = v25;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v52 = sub_1B0E46A48();
    v54 = v26;

    v27 = v50;
    v28 = v54;
    *v54 = v90;
    v28[1] = v27;

    v29 = v51;
    v30 = v54;
    v54[2] = v91;
    v30[3] = v29;

    v31 = v53;
    v32 = v54;
    v54[4] = v92;
    v32[5] = v31;
    sub_1B0394964();

    if (os_log_type_enabled(v56, v57))
    {
      v33 = v98;
      v39 = sub_1B0E45D78();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v38 = 0;
      v40 = sub_1B03949A8(0, v37, v37);
      v41 = sub_1B03949A8(v38, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v42 = &v121;
      v121 = v39;
      v43 = &v120;
      v120 = v40;
      v44 = &v119;
      v119 = v41;
      sub_1B0394A48(0, &v121);
      sub_1B0394A48(1, v42);
      v117 = v90;
      v118 = v50;
      sub_1B03949FC(&v117, v42, v43, v44);
      v45 = v33;
      if (v33)
      {

        __break(1u);
      }

      else
      {
        v117 = v91;
        v118 = v51;
        sub_1B03949FC(&v117, &v121, &v120, &v119);
        v36 = 0;
        v117 = v92;
        v118 = v53;
        sub_1B03949FC(&v117, &v121, &v120, &v119);
        _os_log_impl(&dword_1B0389000, v56, v57, "Activity '%hx' did complete, but we no longer have a reference to it.", v39, 6u);
        v35 = 0;
        sub_1B03998A8(v40, 0, v37);
        sub_1B03998A8(v41, v35, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v56);
    return (*(v102 + 8))(v105, v101);
  }
}

uint64_t sub_1B06C6AA4(uint64_t a1, uint64_t a2)
{
  sub_1B0E46A48();
  *v2 = "complete";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "pendingWork";
  *(v2 + 32) = 11;
  *(v2 + 40) = 2;
  *(v2 + 48) = "noWork";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  *(v2 + 72) = "error";
  *(v2 + 80) = 5;
  *(v2 + 88) = 2;
  *(v2 + 96) = "deallocated";
  *(v2 + 104) = 11;
  *(v2 + 112) = 2;
  sub_1B0394964();
  v6 = sub_1B0E467E8();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_12:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_12;
    case 2:
      v5 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_12;
    case 4:
      v5 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_1B06C6F14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B06C6AA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B06C6F4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B06C6CB4(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B06C6F80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B06C6FE8(uint64_t a1)
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

uint64_t sub_1B06C70B0(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v11 = a2;
  v6 = *(a2 - 8);
  v7 = a2 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v4 - v4;
  (*(v6 + 16))(v2);
  v10 = sub_1B08D932C(v5, v8);
  (*(v6 + 8))(v9, v8);
  return v10;
}

uint64_t sub_1B06C71A4()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request__deferred);

  return v2;
}

uint64_t sub_1B06C71E4()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request__deferred);

  sub_1B03E1B3C(sub_1B06C728C, 0, v2, MEMORY[0x1E69E6370], MEMORY[0x1E69E6370]);

  return v3 & 1;
}

uint64_t sub_1B06C72B0(char a1)
{
  v7 = a1 & 1;
  v6 = v1;
  v4 = *(v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request__deferred);

  v5[16] = a1;
  sub_1B03E1B3C(sub_1B06D4F44, v5, v4, MEMORY[0x1E69E6370], MEMORY[0x1E69E7CA8] + 8);
}

char *sub_1B06C73E0(uint64_t a1, __int16 a2)
{
  ObjectType = swift_getObjectType();
  v12 = a1;
  v11 = a2;
  v13 = v2;
  swift_weakInit();
  v4 = OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request__deferred;
  v10 = 0;
  *&v2[v4] = sub_1B06C70B0(&v10, MEMORY[0x1E69E6370]);

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
  *&v13[OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activityID] = *(a1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_id);
  *&v13[OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_id] = a2;
  v9.receiver = v13;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x1E69E5928](v8);
  v13 = v8;

  MEMORY[0x1E69E5920](v13);
  return v8;
}

BOOL sub_1B06C763C()
{
  v4[4] = 0;
  v3 = sub_1B06C71E4();
  (MEMORY[0x1E69E5928])();
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    swift_endAccess();
    v4[0] = Strong;
    sub_1B0391AD4(v4);
    v2 = Strong == 0;
  }

  (MEMORY[0x1E69E5920])();
  return v2;
}

id sub_1B06C7778()
{
  v16 = 0;
  v8 = sub_1B06D4F70;
  ObjectType = swift_getObjectType();
  v35 = 0;
  v32 = 0;
  v10 = 0;
  v11 = sub_1B0E44238();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &v2 - v14;
  v17 = sub_1B0E44288();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v2 - v20;
  v35 = v0;
  v22 = v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activity;
  v23 = v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v6 = Strong;
    v5 = Strong;
    v32 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
    MEMORY[0x1E69E5928](v4);

    v30 = v8;
    v31 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = 0;
    v28 = sub_1B038C908;
    v29 = &block_descriptor_180;
    v3 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v21, v15, v3);
    (*(v12 + 8))(v15, v11);
    (*(v18 + 8))(v21, v17);
    _Block_release(v3);

    MEMORY[0x1E69E5920](v4);
  }

  v33.receiver = v7;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_dealloc);
}

void sub_1B06C7AD8(void *a1, int a2)
{
  v328 = a2;
  v327 = a1;
  v316 = a2;
  v318 = 0;
  v361 = 0;
  v360 = 0;
  v359 = 0;
  v317 = 0;
  v353 = 0;
  v347 = 0;
  v342 = 0;
  v319 = sub_1B0E439A8();
  v320 = *(v319 - 8);
  v321 = v320;
  v323 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](0);
  v325 = (v323 + 15) & 0xFFFFFFFFFFFFFFF0;
  v322 = &v120 - v325;
  MEMORY[0x1EEE9AC00](v3);
  v324 = &v120 - v325;
  MEMORY[0x1EEE9AC00](v4);
  v326 = &v120 - v325;
  v332 = sub_1B0E44468();
  v329 = *(v332 - 8);
  v331 = v329;
  MEMORY[0x1EEE9AC00](v327);
  v333 = (&v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v361 = v6;
  v360 = v7;
  v359 = v2;

  v330 = *(v2 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  v8 = v330;
  v9 = v331;
  *v333 = v330;
  (*(v9 + 104))();
  v334 = sub_1B0E44488();
  (*(v331 + 8))(v333, v332);
  if (v334)
  {

    v10 = v327;
    if (!v327)
    {
      v313 = v317;
      goto LABEL_15;
    }

    v314 = v327;
    v11 = v317;
    v307 = v327;
    v347 = v327;
    v305 = &v344;
    swift_beginAccess();
    v306 = *(v315 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v343 = v306;
    v12 = v307;
    v308 = &v120;
    MEMORY[0x1EEE9AC00](&v120);
    v310 = &v120 - 4;
    *(&v120 - 2) = v13;
    v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
    v309 = v311;
    sub_1B06D5010();
    sub_1B0E456F8();
    v312 = v11;
    if (!v11)
    {

      sub_1B039E440(&v343);
      v304 = v345;
      if ((v346 & 1) == 0)
      {
        v303 = v304;
        v14 = v326;
        v267 = v304;
        v342 = v304;
        v15 = sub_1B06BF680();
        (*(v321 + 16))(v14, v15, v319);

        v280 = 17;
        v285 = 7;
        v16 = swift_allocObject();
        v17 = v307;
        v276 = v16;
        *(v16 + 16) = v316;
        v18 = v17;
        v286 = swift_allocObject();
        *(v286 + 16) = v307;
        v302 = sub_1B0E43988();
        v268 = v302;
        v301 = sub_1B0E45908();
        v269 = v301;
        v289 = swift_allocObject();
        v270 = v289;
        v279 = 0;
        *(v289 + 16) = 0;
        v290 = swift_allocObject();
        v271 = v290;
        v282 = 2;
        *(v290 + 16) = 2;
        v284 = 32;
        v19 = swift_allocObject();
        v20 = v315;
        v272 = v19;
        *(v19 + 16) = sub_1B06D4DBC;
        *(v19 + 24) = v20;
        v21 = swift_allocObject();
        v22 = v272;
        v291 = v21;
        v273 = v21;
        *(v21 + 16) = sub_1B06D4E08;
        *(v21 + 24) = v22;
        v292 = swift_allocObject();
        v274 = v292;
        *(v292 + 16) = 34;
        v293 = swift_allocObject();
        v275 = v293;
        *(v293 + 16) = 8;
        v23 = swift_allocObject();
        v24 = v276;
        v277 = v23;
        *(v23 + 16) = sub_1B06D4E8C;
        *(v23 + 24) = v24;
        v25 = swift_allocObject();
        v26 = v277;
        v294 = v25;
        v278 = v25;
        *(v25 + 16) = sub_1B039BCF8;
        *(v25 + 24) = v26;
        v295 = swift_allocObject();
        v281 = v295;
        *(v295 + 16) = v279;
        v296 = swift_allocObject();
        v283 = v296;
        *(v296 + 16) = v282;
        v27 = swift_allocObject();
        v28 = v286;
        v287 = v27;
        *(v27 + 16) = sub_1B06D4FDC;
        *(v27 + 24) = v28;
        v29 = swift_allocObject();
        v30 = v287;
        v299 = v29;
        v288 = v29;
        *(v29 + 16) = sub_1B06D4E08;
        *(v29 + 24) = v30;
        v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v297 = sub_1B0E46A48();
        v298 = v31;

        v32 = v289;
        v33 = v298;
        *v298 = sub_1B0398F5C;
        v33[1] = v32;

        v34 = v290;
        v35 = v298;
        v298[2] = sub_1B0398F5C;
        v35[3] = v34;

        v36 = v291;
        v37 = v298;
        v298[4] = sub_1B0399348;
        v37[5] = v36;

        v38 = v292;
        v39 = v298;
        v298[6] = sub_1B0398F5C;
        v39[7] = v38;

        v40 = v293;
        v41 = v298;
        v298[8] = sub_1B0398F5C;
        v41[9] = v40;

        v42 = v294;
        v43 = v298;
        v298[10] = sub_1B039BCEC;
        v43[11] = v42;

        v44 = v295;
        v45 = v298;
        v298[12] = sub_1B0398F5C;
        v45[13] = v44;

        v46 = v296;
        v47 = v298;
        v298[14] = sub_1B0398F5C;
        v47[15] = v46;

        v48 = v298;
        v49 = v299;
        v298[16] = sub_1B0399348;
        v48[17] = v49;
        sub_1B0394964();

        if (os_log_type_enabled(v302, v301))
        {
          v51 = v312;
          v261 = sub_1B0E45D78();
          v258 = v261;
          v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v262 = sub_1B03949A8(0, v259, v259);
          v260 = v262;
          v263 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v339 = v261;
          v338 = v262;
          v337 = v263;
          v264 = &v339;
          sub_1B0394A48(2, &v339);
          sub_1B0394A48(3, v264);
          v335 = sub_1B0398F5C;
          v336 = v270;
          sub_1B03949FC(&v335, v264, &v338, &v337);
          v265 = v51;
          v266 = v51;
          if (v51)
          {
            v256 = 0;

            __break(1u);
          }

          else
          {
            v335 = sub_1B0398F5C;
            v336 = v271;
            sub_1B03949FC(&v335, &v339, &v338, &v337);
            v254 = 0;
            v255 = 0;
            v335 = sub_1B0399348;
            v336 = v273;
            sub_1B03949FC(&v335, &v339, &v338, &v337);
            v252 = 0;
            v253 = 0;
            v335 = sub_1B0398F5C;
            v336 = v274;
            sub_1B03949FC(&v335, &v339, &v338, &v337);
            v250 = 0;
            v251 = 0;
            v335 = sub_1B0398F5C;
            v336 = v275;
            sub_1B03949FC(&v335, &v339, &v338, &v337);
            v248 = 0;
            v249 = 0;
            v335 = sub_1B039BCEC;
            v336 = v278;
            sub_1B03949FC(&v335, &v339, &v338, &v337);
            v246 = 0;
            v247 = 0;
            v335 = sub_1B0398F5C;
            v336 = v281;
            sub_1B03949FC(&v335, &v339, &v338, &v337);
            v244 = 0;
            v245 = 0;
            v335 = sub_1B0398F5C;
            v336 = v283;
            sub_1B03949FC(&v335, &v339, &v338, &v337);
            v242 = 0;
            v243 = 0;
            v335 = sub_1B0399348;
            v336 = v288;
            sub_1B03949FC(&v335, &v339, &v338, &v337);
            v240 = 0;
            v241 = 0;
            _os_log_impl(&dword_1B0389000, v268, v269, "%hx: Received '%{public}s' from request #%hu.", v258, 0x14u);
            sub_1B03998A8(v260, 0, v259);
            sub_1B03998A8(v263, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v257 = v240;
          }
        }

        else
        {
          v52 = v312;

          v257 = v52;
        }

        v238 = v257;

        (*(v321 + 8))(v326, v319);
        v237 = &v341;
        swift_beginAccess();
        v236 = &v340;
        v53 = sub_1B0E45398();
        v54 = v236;
        *(v55 + 8) = v316;
        v53(v54, 0);
        swift_endAccess();

        v239 = v238;
LABEL_29:
        sub_1B06CDF74();
        return;
      }

      v313 = v312;
LABEL_15:
      v235 = v313;
      v56 = v327;
      if (v327)
      {
        v234 = v327;
        v57 = v324;
        v198 = v327;
        v353 = v327;
        v58 = sub_1B06BF680();
        (*(v321 + 16))(v57, v58, v319);

        v211 = 17;
        v216 = 7;
        v59 = swift_allocObject();
        v60 = v198;
        v207 = v59;
        *(v59 + 16) = v316;
        v61 = v60;
        v217 = swift_allocObject();
        *(v217 + 16) = v198;
        v233 = sub_1B0E43988();
        v199 = v233;
        v232 = sub_1B0E45908();
        v200 = v232;
        v220 = swift_allocObject();
        v201 = v220;
        v210 = 0;
        *(v220 + 16) = 0;
        v221 = swift_allocObject();
        v202 = v221;
        v213 = 2;
        *(v221 + 16) = 2;
        v215 = 32;
        v62 = swift_allocObject();
        v63 = v315;
        v203 = v62;
        *(v62 + 16) = sub_1B06D4DBC;
        *(v62 + 24) = v63;
        v64 = swift_allocObject();
        v65 = v203;
        v222 = v64;
        v204 = v64;
        *(v64 + 16) = sub_1B06D4E08;
        *(v64 + 24) = v65;
        v223 = swift_allocObject();
        v205 = v223;
        *(v223 + 16) = 34;
        v224 = swift_allocObject();
        v206 = v224;
        *(v224 + 16) = 8;
        v66 = swift_allocObject();
        v67 = v207;
        v208 = v66;
        *(v66 + 16) = sub_1B06D4E8C;
        *(v66 + 24) = v67;
        v68 = swift_allocObject();
        v69 = v208;
        v225 = v68;
        v209 = v68;
        *(v68 + 16) = sub_1B039BCF8;
        *(v68 + 24) = v69;
        v226 = swift_allocObject();
        v212 = v226;
        *(v226 + 16) = v210;
        v227 = swift_allocObject();
        v214 = v227;
        *(v227 + 16) = v213;
        v70 = swift_allocObject();
        v71 = v217;
        v218 = v70;
        *(v70 + 16) = sub_1B06D4FDC;
        *(v70 + 24) = v71;
        v72 = swift_allocObject();
        v73 = v218;
        v230 = v72;
        v219 = v72;
        *(v72 + 16) = sub_1B06D4E08;
        *(v72 + 24) = v73;
        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v228 = sub_1B0E46A48();
        v229 = v74;

        v75 = v220;
        v76 = v229;
        *v229 = sub_1B0398F5C;
        v76[1] = v75;

        v77 = v221;
        v78 = v229;
        v229[2] = sub_1B0398F5C;
        v78[3] = v77;

        v79 = v222;
        v80 = v229;
        v229[4] = sub_1B0399348;
        v80[5] = v79;

        v81 = v223;
        v82 = v229;
        v229[6] = sub_1B0398F5C;
        v82[7] = v81;

        v83 = v224;
        v84 = v229;
        v229[8] = sub_1B0398F5C;
        v84[9] = v83;

        v85 = v225;
        v86 = v229;
        v229[10] = sub_1B039BCEC;
        v86[11] = v85;

        v87 = v226;
        v88 = v229;
        v229[12] = sub_1B0398F5C;
        v88[13] = v87;

        v89 = v227;
        v90 = v229;
        v229[14] = sub_1B0398F5C;
        v90[15] = v89;

        v91 = v229;
        v92 = v230;
        v229[16] = sub_1B0399348;
        v91[17] = v92;
        sub_1B0394964();

        if (os_log_type_enabled(v233, v232))
        {
          v93 = v235;
          v192 = sub_1B0E45D78();
          v189 = v192;
          v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v193 = sub_1B03949A8(0, v190, v190);
          v191 = v193;
          v194 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v352 = v192;
          v351 = v193;
          v350 = v194;
          v195 = &v352;
          sub_1B0394A48(2, &v352);
          sub_1B0394A48(3, v195);
          v348 = sub_1B0398F5C;
          v349 = v201;
          sub_1B03949FC(&v348, v195, &v351, &v350);
          v196 = v93;
          v197 = v93;
          if (v93)
          {
            v187 = 0;

            __break(1u);
          }

          else
          {
            v348 = sub_1B0398F5C;
            v349 = v202;
            sub_1B03949FC(&v348, &v352, &v351, &v350);
            v185 = 0;
            v186 = 0;
            v348 = sub_1B0399348;
            v349 = v204;
            sub_1B03949FC(&v348, &v352, &v351, &v350);
            v183 = 0;
            v184 = 0;
            v348 = sub_1B0398F5C;
            v349 = v205;
            sub_1B03949FC(&v348, &v352, &v351, &v350);
            v181 = 0;
            v182 = 0;
            v348 = sub_1B0398F5C;
            v349 = v206;
            sub_1B03949FC(&v348, &v352, &v351, &v350);
            v179 = 0;
            v180 = 0;
            v348 = sub_1B039BCEC;
            v349 = v209;
            sub_1B03949FC(&v348, &v352, &v351, &v350);
            v177 = 0;
            v178 = 0;
            v348 = sub_1B0398F5C;
            v349 = v212;
            sub_1B03949FC(&v348, &v352, &v351, &v350);
            v175 = 0;
            v176 = 0;
            v348 = sub_1B0398F5C;
            v349 = v214;
            sub_1B03949FC(&v348, &v352, &v351, &v350);
            v173 = 0;
            v174 = 0;
            v348 = sub_1B0399348;
            v349 = v219;
            sub_1B03949FC(&v348, &v352, &v351, &v350);
            v171 = 0;
            v172 = 0;
            _os_log_impl(&dword_1B0389000, v199, v200, "%hx: Received '%{public}s' from unknown request #%hu.", v189, 0x14u);
            sub_1B03998A8(v191, 0, v190);
            sub_1B03998A8(v194, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v188 = v171;
          }
        }

        else
        {
          v94 = v235;

          v188 = v94;
        }

        v169 = v188;

        (*(v321 + 8))(v324, v319);
        v170 = v169;
      }

      else
      {
        v95 = v322;
        v96 = sub_1B06BF680();
        (*(v321 + 16))(v95, v96, v319);

        v150 = 17;
        v154 = 7;
        v155 = swift_allocObject();
        *(v155 + 16) = v316;
        v168 = sub_1B0E43988();
        v144 = v168;
        v167 = sub_1B0E458E8();
        v145 = v167;
        v158 = swift_allocObject();
        v146 = v158;
        *(v158 + 16) = 0;
        v159 = swift_allocObject();
        v147 = v159;
        *(v159 + 16) = 2;
        v153 = 32;
        v97 = swift_allocObject();
        v98 = v315;
        v148 = v97;
        *(v97 + 16) = sub_1B06D4DBC;
        *(v97 + 24) = v98;
        v99 = swift_allocObject();
        v100 = v148;
        v160 = v99;
        v149 = v99;
        *(v99 + 16) = sub_1B06D4E08;
        *(v99 + 24) = v100;
        v161 = swift_allocObject();
        v151 = v161;
        *(v161 + 16) = 34;
        v162 = swift_allocObject();
        v152 = v162;
        *(v162 + 16) = 8;
        v101 = swift_allocObject();
        v102 = v155;
        v156 = v101;
        *(v101 + 16) = sub_1B06D4E8C;
        *(v101 + 24) = v102;
        v103 = swift_allocObject();
        v104 = v156;
        v165 = v103;
        v157 = v103;
        *(v103 + 16) = sub_1B039BCF8;
        *(v103 + 24) = v104;
        v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v163 = sub_1B0E46A48();
        v164 = v105;

        v106 = v158;
        v107 = v164;
        *v164 = sub_1B0398F5C;
        v107[1] = v106;

        v108 = v159;
        v109 = v164;
        v164[2] = sub_1B0398F5C;
        v109[3] = v108;

        v110 = v160;
        v111 = v164;
        v164[4] = sub_1B0399348;
        v111[5] = v110;

        v112 = v161;
        v113 = v164;
        v164[6] = sub_1B0398F5C;
        v113[7] = v112;

        v114 = v162;
        v115 = v164;
        v164[8] = sub_1B0398F5C;
        v115[9] = v114;

        v116 = v164;
        v117 = v165;
        v164[10] = sub_1B039BCEC;
        v116[11] = v117;
        sub_1B0394964();

        if (os_log_type_enabled(v168, v167))
        {
          v118 = v235;
          v137 = sub_1B0E45D78();
          v134 = v137;
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v138 = sub_1B03949A8(0, v135, v135);
          v136 = v138;
          v139 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v358 = v137;
          v357 = v138;
          v356 = v139;
          v140 = 2;
          v141 = &v358;
          sub_1B0394A48(2, &v358);
          sub_1B0394A48(v140, v141);
          v354 = sub_1B0398F5C;
          v355 = v146;
          sub_1B03949FC(&v354, v141, &v357, &v356);
          v142 = v118;
          v143 = v118;
          if (v118)
          {
            v132 = 0;

            __break(1u);
          }

          else
          {
            v354 = sub_1B0398F5C;
            v355 = v147;
            sub_1B03949FC(&v354, &v358, &v357, &v356);
            v130 = 0;
            v131 = 0;
            v354 = sub_1B0399348;
            v355 = v149;
            sub_1B03949FC(&v354, &v358, &v357, &v356);
            v128 = 0;
            v129 = 0;
            v354 = sub_1B0398F5C;
            v355 = v151;
            sub_1B03949FC(&v354, &v358, &v357, &v356);
            v126 = 0;
            v127 = 0;
            v354 = sub_1B0398F5C;
            v355 = v152;
            sub_1B03949FC(&v354, &v358, &v357, &v356);
            v124 = 0;
            v125 = 0;
            v354 = sub_1B039BCEC;
            v355 = v157;
            sub_1B03949FC(&v354, &v358, &v357, &v356);
            v122 = 0;
            v123 = 0;
            _os_log_impl(&dword_1B0389000, v144, v145, "%hx: Received '%{public}s' without request.", v134, 0x10u);
            sub_1B03998A8(v136, 0, v135);
            sub_1B03998A8(v139, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v133 = v122;
          }
        }

        else
        {
          v119 = v235;

          v133 = v119;
        }

        v121 = v133;

        (*(v321 + 8))(v322, v319);
        v170 = v121;
      }

      v239 = v170;
      goto LABEL_29;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B06C9C1C()
{
  v9[2] = 0;
  v9[0] = sub_1B0E46A28();
  v9[1] = v0;
  v1 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v1);

  v8 = *(v6 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activityID);
  sub_1B06D5098();
  sub_1B041AF18();
  v7[0] = sub_1B0E44E98();
  v7[1] = v2;
  sub_1B0E46A08();
  sub_1B03B1198(v7);
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v9);
  return sub_1B0E44C88();
}

uint64_t sub_1B06C9DEC(unsigned int a1)
{
  v20 = a1;
  v26 = 0;
  v13 = sub_1B06D5110;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v14 = 0;
  v15 = sub_1B0E44238();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v8 - v18;
  v21 = sub_1B0E44288();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v8 - v24;
  v42 = v2;
  v41 = v1;
  v27 = sub_1B06CA158(v2);
  v40 = v27;
  v28 = v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activity;
  v29 = &v39;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v11 = Strong;
    v10 = Strong;
    v38 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
    MEMORY[0x1E69E5928](v9);

    MEMORY[0x1E69E5928](v12);
    v4 = swift_allocObject();
    v5 = v12;
    v6 = v27;
    v7 = v13;
    *(v4 + 16) = v10;
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    v36 = v7;
    v37 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = 0;
    v34 = sub_1B038C908;
    v35 = &block_descriptor_329;
    v8 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v25, v19, v8);
    (*(v16 + 8))(v19, v15);
    (*(v22 + 8))(v25, v21);
    _Block_release(v8);

    MEMORY[0x1E69E5920](v9);
  }

  return result;
}

uint64_t sub_1B06CA158(int a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 1;
    }

    else if (a1 == 2)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B06CA20C(uint64_t a1, void *a2, int a3)
{
  MEMORY[0x1E69E5928](a2);
  sub_1B06C7AD8(a2, a3);
  return MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B06CA38C()
{
  v1 = 0;
  result = sub_1B06C70B0(&v1, MEMORY[0x1E69E75F8]);
  qword_1EB6DA6D8 = result;
  return result;
}

uint64_t *sub_1B06CA3C4()
{
  if (qword_1EB6DA6D0 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DA6D8;
}

uint64_t sub_1B06CA424()
{
  v1 = *sub_1B06CA3C4();

  return v1;
}

uint64_t sub_1B06CA454()
{
  v1 = *sub_1B06CA3C4();

  sub_1B03E1B3C(sub_1B06CA4EC, 0, v1, MEMORY[0x1E69E75F8], &unk_1F26A2268);

  return v2;
}

void sub_1B06CA4EC(_WORD *a1@<X0>, _WORD *a2@<X8>)
{
  ++*a1;
  sub_1B06CA370();
  *a2 = v2;
}

uint64_t sub_1B06CA53C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B06CA594(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B06CA614()
{
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B06CA640()
{
  v2 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B06CA698()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B06CA6E8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_1B06CA748()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_unknownObjectRetain();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B06CA798(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  *(v1 + 40) = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06CA7F8()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B06CA848(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_1B06CA894()
{
  swift_beginAccess();
  v2 = *(v0 + 49);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B06CA8E4(char a1)
{
  swift_beginAccess();
  *(v1 + 49) = a1;
  return swift_endAccess();
}

uint64_t sub_1B06CA930@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_startDate;
  swift_beginAccess();
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B06CA9BC(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1B0E43108();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_startDate;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1B06CAAFC()
{
  v2 = (v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B06CAB58(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B06CABC4()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06CAC00(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 32) = sub_1B06CA640();
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 49) = 0;
  sub_1B0E430F8();
  v6 = OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime;
  *(v4 + v6) = static MonotonicTime.now()();
  *(v4 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_id) = a1;
  MEMORY[0x1E69E5928](a3);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a3);
  swift_endAccess();
  swift_unknownObjectRetain();
  *(v4 + 24) = a2;
  MEMORY[0x1E69E5928](a4);
  *(v4 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue) = a4;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  swift_unknownObjectRelease();
  return v11;
}

void *sub_1B06CAD70()
{
  swift_beginAccess();
  if (*(v0 + 40))
  {
    swift_unknownObjectRetain();
    swift_endAccess();
    swift_getObjectType();
    sub_1B0E45A98();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  MEMORY[0x1B272C2D0](v4 + 16);
  swift_unknownObjectRelease();
  sub_1B039E440((v4 + 32));
  sub_1B03FD360((v4 + 40));
  v3 = v4 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_startDate;
  v1 = sub_1B0E43108();
  (*(*(v1 - 8) + 8))(v3);
  MEMORY[0x1E69E5920](*(v4 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue));
  return v4;
}

void sub_1B06CAF08()
{
  v125 = sub_1B06D4DBC;
  v126 = sub_1B06D4E08;
  v127 = sub_1B03FB774;
  v128 = sub_1B06D5270;
  v129 = sub_1B0398F5C;
  v130 = sub_1B0398F5C;
  v131 = sub_1B0399348;
  v132 = sub_1B0398F5C;
  v133 = sub_1B0398F5C;
  v134 = sub_1B06D527C;
  v165 = 0;
  v163[0] = 0;
  v163[1] = 0;
  v160 = 0;
  v159 = 0;
  v154 = 0;
  v135 = 0;
  v136 = 0;
  v137 = sub_1B0E439A8();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v141 = &v29 - v140;
  v146 = sub_1B0E44468();
  v144 = *(v146 - 8);
  v145 = v146 - 8;
  v142 = (*(v144 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v146);
  v147 = (&v29 - v142);
  v165 = v0;

  v143 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v143);
  v1 = v144;
  *v147 = v143;
  (*(v1 + 104))();
  v148 = sub_1B0E44488();
  (*(v144 + 8))(v147, v146);
  if (v148)
  {
    v2 = v124;

    v120 = sub_1B0E46A48();
    v121 = v164;
    swift_beginAccess();
    *(v2 + 32) = v120;

    swift_endAccess();
    v162 = sub_1B06CCDFC();
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1808, &qword_1B0E99B80);
    sub_1B06D5184();
    sub_1B0E45798();
    for (i = v135; ; i = v30)
    {
      v118 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1818, &qword_1B0E99B88);
      sub_1B0E46518();
      v119 = v161;
      if (!v161)
      {
        break;
      }

      v117 = v119;
      v116 = v119;
      v160 = v119;
      _s7RequestCMa();

      v3 = sub_1B06CA454();
      v113 = sub_1B06C739C(v124, v3);
      v159 = v113;
      MEMORY[0x1E69E5928](v113);
      v114 = v158;
      sub_1B06CCF34(v113, 5, v158);
      v115 = v157;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
      sub_1B0E452E8();
      swift_endAccess();
      v156 = v116;
      v155 = v116;
      if (v116)
      {
        v112 = v155;
      }

      else
      {
        v112 = 0;
      }

      v4 = v141;
      v94 = v112;
      v154 = v112;
      v5 = sub_1B06BF680();
      (*(v138 + 16))(v4, v5, v137);

      v98 = 7;
      v99 = swift_allocObject();
      *(v99 + 16) = v94;
      v110 = sub_1B0E43988();
      v111 = sub_1B0E45908();
      v96 = 17;
      v101 = swift_allocObject();
      *(v101 + 16) = 0;
      v102 = swift_allocObject();
      *(v102 + 16) = 2;
      v97 = 32;
      v6 = swift_allocObject();
      v7 = v124;
      v95 = v6;
      *(v6 + 16) = v125;
      *(v6 + 24) = v7;
      v8 = swift_allocObject();
      v9 = v95;
      v103 = v8;
      *(v8 + 16) = v126;
      *(v8 + 24) = v9;
      v104 = swift_allocObject();
      *(v104 + 16) = 0;
      v105 = swift_allocObject();
      *(v105 + 16) = 8;
      v10 = swift_allocObject();
      v11 = v99;
      v100 = v10;
      *(v10 + 16) = v127;
      *(v10 + 24) = v11;
      v12 = swift_allocObject();
      v13 = v100;
      v107 = v12;
      *(v12 + 16) = v128;
      *(v12 + 24) = v13;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v106 = sub_1B0E46A48();
      v108 = v14;

      v15 = v101;
      v16 = v108;
      *v108 = v129;
      v16[1] = v15;

      v17 = v102;
      v18 = v108;
      v108[2] = v130;
      v18[3] = v17;

      v19 = v103;
      v20 = v108;
      v108[4] = v131;
      v20[5] = v19;

      v21 = v104;
      v22 = v108;
      v108[6] = v132;
      v22[7] = v21;

      v23 = v105;
      v24 = v108;
      v108[8] = v133;
      v24[9] = v23;

      v25 = v107;
      v26 = v108;
      v108[10] = v134;
      v26[11] = v25;
      sub_1B0394964();

      if (os_log_type_enabled(v110, v111))
      {
        v27 = v118;
        v81 = sub_1B0E45D78();
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v80 = 0;
        v82 = sub_1B03949A8(0, v79, v79);
        v83 = sub_1B03949A8(v80, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v84 = &v153;
        v153 = v81;
        v85 = &v152;
        v152 = v82;
        v86 = &v151;
        v151 = v83;
        sub_1B0394A48(0, &v153);
        sub_1B0394A48(2, v84);
        v149 = v129;
        v150 = v101;
        sub_1B03949FC(&v149, v84, v85, v86);
        v87 = v27;
        v88 = v101;
        v89 = v102;
        v90 = v103;
        v91 = v104;
        v92 = v105;
        v93 = v107;
        if (v27)
        {
          v72 = v88;
          v73 = v89;
          v74 = v90;
          v75 = v91;
          v76 = v92;
          v77 = v93;
          v35 = v93;
          v34 = v92;
          v33 = v91;
          v32 = v90;
          v31 = v89;

          __break(1u);
        }

        else
        {
          v149 = v130;
          v150 = v102;
          sub_1B03949FC(&v149, &v153, &v152, &v151);
          v65 = 0;
          v66 = v101;
          v67 = v102;
          v68 = v103;
          v69 = v104;
          v70 = v105;
          v71 = v107;
          v149 = v131;
          v150 = v103;
          sub_1B03949FC(&v149, &v153, &v152, &v151);
          v58 = 0;
          v59 = v101;
          v60 = v102;
          v61 = v103;
          v62 = v104;
          v63 = v105;
          v64 = v107;
          v149 = v132;
          v150 = v104;
          sub_1B03949FC(&v149, &v153, &v152, &v151);
          v51 = 0;
          v52 = v101;
          v53 = v102;
          v54 = v103;
          v55 = v104;
          v56 = v105;
          v57 = v107;
          v149 = v133;
          v150 = v105;
          sub_1B03949FC(&v149, &v153, &v152, &v151);
          v44 = 0;
          v45 = v101;
          v46 = v102;
          v47 = v103;
          v48 = v104;
          v49 = v105;
          v50 = v107;
          v149 = v134;
          v150 = v107;
          sub_1B03949FC(&v149, &v153, &v152, &v151);
          v37 = 0;
          v38 = v101;
          v39 = v102;
          v40 = v103;
          v41 = v104;
          v42 = v105;
          v43 = v107;
          _os_log_impl(&dword_1B0389000, v110, v111, "%hx: Starting back-filling messages on task manager %lx.", v81, 0x10u);
          v36 = 0;
          sub_1B03998A8(v82, 0, v79);
          sub_1B03998A8(v83, v36, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v78 = v37;
        }
      }

      else
      {
        v28 = v118;

        v78 = v28;
      }

      v30 = v78;
      MEMORY[0x1E69E5920](v110);
      (*(v138 + 8))(v141, v137);
      swift_getObjectType();
      MEMORY[0x1E69E5928](v113);
      [v116 startBackFillingMessageBodyDownloadWithRequest_];
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v113);
      swift_unknownObjectRelease();
    }

    sub_1B039E440(v163);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B06CC24C()
{
  v29 = sub_1B06D5370;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v54 = 0;
  v30 = sub_1B0E443F8();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = v10 - v33;
  v35 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v36 = v10 - v35;
  v37 = sub_1B0E44208();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v41 = (v10 - v40);
  v42 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v43 = (v10 - v42);
  v77 = v10 - v42;
  v44 = sub_1B0E44238();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v48 = v10 - v47;
  v49 = sub_1B0E44288();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v53 = v10 - v52;
  v55 = sub_1B0E45A38();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v59 = v10 - v58;
  v64 = sub_1B0E44468();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v60 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v65 = (v10 - v60);
  v76 = v0;

  v61 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v61);
  v5 = v62;
  *v65 = v61;
  (*(v5 + 104))();
  v66 = sub_1B0E44488();
  (*(v62 + 8))(v65, v64);
  result = v66;
  if (v66)
  {

    swift_beginAccess();
    if (*(v28 + 40))
    {
      v27 = *(v28 + 40);
      swift_unknownObjectRetain();
      swift_endAccess();
      swift_getObjectType();
      sub_1B0E45A98();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_endAccess();
    }

    v10[0] = 0;
    v10[2] = sub_1B0421E38();
    v10[1] = sub_1B0E46A48();
    sub_1B06D52F0();
    sub_1B0E46028();
    v11 = *(v28 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
    MEMORY[0x1E69E5928](v11);
    v7 = sub_1B0E45A48();
    v26 = v7;
    MEMORY[0x1E69E5920](v11);
    (*(v56 + 8))(v59, v55);
    v75 = v7;
    ObjectType = swift_getObjectType();
    v16 = swift_allocObject();
    v12 = v16 + 16;

    v13 = v28;
    swift_weakInit();

    v73 = v29;
    v74 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v69 = 1107296256;
    v70 = 0;
    v71 = sub_1B038C908;
    v72 = &block_descriptor_369;
    v15 = _Block_copy(&aBlock);
    sub_1B06D284C(ObjectType);
    sub_1B06D2870(ObjectType);
    sub_1B0E45A58();
    (*(v45 + 8))(v48, v44);
    (*(v50 + 8))(v53, v49);
    _Block_release(v15);

    v8 = v38;
    *v43 = 2;
    v17 = MEMORY[0x1E69E7F48];
    v19 = *(v8 + 104);
    v18 = v8 + 104;
    v19();
    v20 = swift_getObjectType();
    sub_1B0E443D8();
    sub_1B0E443E8();
    v22 = *(v31 + 8);
    v21 = v31 + 8;
    v22(v34, v30);
    v9 = v19;
    *v41 = 1;
    v9();
    MEMORY[0x1B2727D90](v36, v43, v41, v20);
    v25 = *(v38 + 8);
    v24 = v38 + 8;
    v25(v41, v37);
    v22(v36, v30);
    swift_unknownObjectRetain();
    v23 = v67;
    swift_beginAccess();
    *(v28 + 40) = v26;
    swift_unknownObjectRelease();
    swift_endAccess();
    sub_1B06D2914(v26);
    v25(v43, v37);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B06CCC58()
{
  v2 = qword_1EB6DEED0;
  if (!qword_1EB6DEED0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DEED0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B06CCCF4(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

BOOL sub_1B06CCDAC()
{
  activity = *(v0 + 24);
  swift_unknownObjectRetain();
  should_defer = xpc_activity_should_defer(activity);
  swift_unknownObjectRelease();
  return should_defer;
}

uint64_t sub_1B06CCDFC()
{
  v7 = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1B06D4E94(&Strong);
    swift_endAccess();
    v2 = sub_1B06CCF8C();
    MEMORY[0x1E69E5920](v1);
    v3 = v2;
  }

  else
  {
    sub_1B06D4E94(&Strong);
    swift_endAccess();
    v3 = 0;
  }

  v4 = v3;
  if (v3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1828, &unk_1B0E99B90);
  return sub_1B0E46A48();
}

uint64_t sub_1B06CCF34@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  result = MEMORY[0x1E69E5920](a1);
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1B06CCF8C()
{
  v91 = sub_1B06D53E8;
  v69 = sub_1B06CDC58;
  v70 = sub_1B06D5520;
  v71 = sub_1B03B0DF8;
  v72 = sub_1B06D5528;
  v73 = sub_1B03B0DF8;
  v74 = sub_1B0398F5C;
  v75 = sub_1B0398F5C;
  v76 = sub_1B0399260;
  v77 = sub_1B0398F5C;
  v78 = sub_1B0398F5C;
  v79 = sub_1B0399260;
  v102 = 0;
  v101 = 0;
  v99 = 0;
  v81 = sub_1B0E439A8();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v80);
  v85 = &v29 - v84;
  v102 = v1;
  v87 = [v1 accountProvider];
  swift_getObjectType();
  v86 = [v87 mailAccounts];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1830, qword_1B0E99BA0);
  v88 = sub_1B0E451B8();
  v101 = v88;
  MEMORY[0x1E69E5920](v86);
  swift_unknownObjectRelease();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v100[1] = v88;
  KeyPath = swift_getKeyPath();

  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1838, &qword_1B0E99BE0);
  sub_1B06D5410();
  v2 = sub_1B0E46398();
  v92 = 0;
  v93 = v2;
  v65 = v2;

  v100[0] = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1828, &unk_1B0E99B90);
  sub_1B06D5498();
  v3 = sub_1B0E44F58();
  v67 = 0;
  v68 = v3;
  v4 = v85;
  v44 = v3;
  sub_1B039E440(v100);
  v99 = v44;
  v5 = sub_1B06BF680();
  (*(v82 + 16))(v4, v5, v81);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v45 = 24;
  v51 = 7;
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v52 = swift_allocObject();
  *(v52 + 16) = v88;
  v63 = sub_1B0E43988();
  v64 = sub_1B0E45908();
  v48 = 17;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v55 = swift_allocObject();
  v49 = 8;
  *(v55 + 16) = 8;
  v50 = 32;
  v6 = swift_allocObject();
  v7 = v46;
  v47 = v6;
  *(v6 + 16) = v70;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v47;
  v56 = v8;
  *(v8 + 16) = v71;
  *(v8 + 24) = v9;
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  v58 = swift_allocObject();
  *(v58 + 16) = v49;
  v10 = swift_allocObject();
  v11 = v52;
  v53 = v10;
  *(v10 + 16) = v72;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v53;
  v60 = v12;
  *(v12 + 16) = v73;
  *(v12 + 24) = v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v59 = sub_1B0E46A48();
  v61 = v14;

  v15 = v54;
  v16 = v61;
  *v61 = v74;
  v16[1] = v15;

  v17 = v55;
  v18 = v61;
  v61[2] = v75;
  v18[3] = v17;

  v19 = v56;
  v20 = v61;
  v61[4] = v76;
  v20[5] = v19;

  v21 = v57;
  v22 = v61;
  v61[6] = v77;
  v22[7] = v21;

  v23 = v58;
  v24 = v61;
  v61[8] = v78;
  v24[9] = v23;

  v25 = v60;
  v26 = v61;
  v61[10] = v79;
  v26[11] = v25;
  sub_1B0394964();

  if (os_log_type_enabled(v63, v64))
  {
    v27 = v67;
    v37 = sub_1B0E45D78();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v36 = 0;
    v38 = sub_1B03949A8(0, v35, v35);
    v39 = sub_1B03949A8(v36, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v40 = &v98;
    v98 = v37;
    v41 = &v97;
    v97 = v38;
    v42 = &v96;
    v96 = v39;
    sub_1B0394A48(0, &v98);
    sub_1B0394A48(2, v40);
    v94 = v74;
    v95 = v54;
    sub_1B03949FC(&v94, v40, v41, v42);
    v43 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v94 = v75;
      v95 = v55;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      v34 = 0;
      v94 = v76;
      v95 = v56;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      v33 = 0;
      v94 = v77;
      v95 = v57;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      v32 = 0;
      v94 = v78;
      v95 = v58;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      v31 = 0;
      v94 = v79;
      v95 = v60;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      _os_log_impl(&dword_1B0389000, v63, v64, "Found %ld task managers for %ld accounts.", v37, 0x16u);
      v30 = 0;
      sub_1B03998A8(v38, 0, v35);
      sub_1B03998A8(v39, v30, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v63);
  (*(v82 + 8))(v85, v81);

  return v44;
}

uint64_t sub_1B06CDB80@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 isActive];
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06CDBE4(void *a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  swift_getAtKeyPath();
  swift_unknownObjectRelease();

  return v3 & 1;
}

void *sub_1B06CDC58@<X0>(void *a2@<X8>)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
  }

  else
  {
    result = swift_unknownObjectRelease();
    v3 = 0;
  }

  if (v3)
  {
    *a2 = [v3 taskManager];
    return MEMORY[0x1E69E5920](v3);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B06CDDC0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v14 = a1;
  v13 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  MEMORY[0x1E69E5928](Strong);
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a2);
  v11 = Strong;
  v12 = a2;
  if (!Strong)
  {
    if (!v12)
    {
      sub_1B06D4E94(&v11);
      v4 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_1B06BD0C8(&v11, &v10);
  if (!v12)
  {
    MEMORY[0x1E69E5920](v10);
LABEL_8:
    sub_1B06D61B0(&v11);
    v4 = 0;
    goto LABEL_7;
  }

  v9 = v10;
  v8 = v12;
  v3 = sub_1B0E45CD8();
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  sub_1B06D4E94(&v11);
  v4 = v3;
LABEL_7:
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](Strong);
  return v4 & 1;
}

uint64_t sub_1B06CDF74()
{
  v221 = "Fatal error";
  v222 = "Double value cannot be converted to Int because it is either infinite or NaN";
  v223 = "Swift/IntegerTypes.swift";
  v224 = "Double value cannot be converted to Int because the result would be less than Int.min";
  v225 = "Double value cannot be converted to Int because the result would be greater than Int.max";
  v226 = sub_1B06D4DBC;
  v227 = sub_1B06D4E08;
  v228 = sub_1B06D5530;
  v229 = sub_1B03B0DF8;
  v230 = sub_1B06D5538;
  v231 = sub_1B03B0DF8;
  v232 = sub_1B03FB774;
  v233 = sub_1B03B0DF8;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B0399348;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v239 = sub_1B0399260;
  v240 = sub_1B0398F5C;
  v241 = sub_1B0398F5C;
  v242 = sub_1B0399260;
  v243 = sub_1B0398F5C;
  v244 = sub_1B0398F5C;
  v245 = sub_1B0399260;
  v246 = sub_1B06D4DBC;
  v247 = sub_1B06D4E08;
  v248 = sub_1B06D5530;
  v249 = sub_1B03B0DF8;
  v250 = sub_1B06D5538;
  v251 = sub_1B03B0DF8;
  v252 = sub_1B03FB774;
  v253 = sub_1B03B0DF8;
  v254 = sub_1B06D5540;
  v255 = sub_1B039BCF8;
  v256 = sub_1B0398F5C;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0399348;
  v259 = sub_1B0398F5C;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0399260;
  v262 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0399260;
  v265 = sub_1B0398F5C;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0399260;
  v268 = sub_1B0398F5C;
  v269 = sub_1B0398F5C;
  v270 = sub_1B039BCEC;
  v312 = 0;
  v309 = 0;
  v305 = 0;
  v271 = 0;
  v294 = 0;
  v279 = 0;
  v272 = sub_1B0E439A8();
  v273 = *(v272 - 8);
  v274 = v272 - 8;
  v275 = (v273[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v276 = v108 - v275;
  v277 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v278 = v108 - v277;
  v280 = sub_1B0E43108();
  v281 = *(v280 - 8);
  v282 = v280 - 8;
  v283 = (*(v281 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v279);
  v284 = v108 - v283;
  v285 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v286 = v108 - v285;
  v291 = sub_1B0E44468();
  v289 = *(v291 - 8);
  v290 = v291 - 8;
  v287 = (*(v289 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v291);
  v292 = (v108 - v287);
  v312 = v0;

  v288 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v288);
  v5 = v289;
  *v292 = v288;
  (*(v5 + 104))();
  v293 = sub_1B0E44488();
  (*(v289 + 8))(v292, v291);
  result = v293;
  if (v293)
  {

    v218 = v311;
    swift_beginAccess();
    v219 = *(v220 + 48);
    result = swift_endAccess();
    if ((v219 & 1) == 0)
    {
      v215 = v310;
      swift_beginAccess();
      v216 = *(v220 + 32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v217 = sub_1B06D1520(v216);
      if (v217 == 5)
      {

        v212 = static MonotonicTime.now()();
        v309 = v212;
        v209 = (v220 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime);
        v210 = v308;
        swift_beginAccess();
        v211 = *v209;
        swift_endAccess();
        result = MonotonicTime.seconds(since:)(v211, v212);
        if (v7 > 5.0)
        {
          v200 = (v220 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime);
          v201 = v307;
          v202 = 0;
          swift_beginAccess();
          *v200 = v212;
          swift_endAccess();
          sub_1B0E430E8();
          v203 = v220 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_startDate;
          v204 = v306;
          swift_beginAccess();
          (*(v281 + 16))(v284, v203, v280);
          swift_endAccess();
          sub_1B0E43048();
          v207 = v8;
          v206 = *(v281 + 8);
          v205 = v281 + 8;
          v206(v284, v280);
          v206(v286, v280);
          v208 = floor(v207 / 60.0);
          if (((*&v208 >> 52) & 0x7FFLL) == 0x7FF)
          {
            sub_1B0E465A8();
            __break(1u);
          }

          if (v208 <= -9.22337204e18)
          {
            sub_1B0E465A8();
            __break(1u);
          }

          if (v208 >= 9.22337204e18)
          {
            sub_1B0E465A8();
            __break(1u);
          }

          v9 = v278;
          v173 = v208;
          v305 = v208;
          v10 = sub_1B06BF680();
          v171 = v273[2];
          v172 = v273 + 2;
          v171(v9, v10, v272);

          v180 = 7;
          v181 = swift_allocObject();
          *(v181 + 16) = v173;
          v198 = sub_1B0E43988();
          v199 = sub_1B0E45908();
          v177 = 17;
          v183 = swift_allocObject();
          *(v183 + 16) = 0;
          v184 = swift_allocObject();
          *(v184 + 16) = 2;
          v179 = 32;
          v11 = swift_allocObject();
          v12 = v220;
          v174 = v11;
          *(v11 + 16) = v226;
          *(v11 + 24) = v12;
          v13 = swift_allocObject();
          v14 = v174;
          v185 = v13;
          *(v13 + 16) = v227;
          *(v13 + 24) = v14;
          v186 = swift_allocObject();
          *(v186 + 16) = 0;
          v187 = swift_allocObject();
          v178 = 8;
          *(v187 + 16) = 8;
          v15 = swift_allocObject();
          v16 = v220;
          v175 = v15;
          *(v15 + 16) = v228;
          *(v15 + 24) = v16;
          v17 = swift_allocObject();
          v18 = v175;
          v188 = v17;
          *(v17 + 16) = v229;
          *(v17 + 24) = v18;
          v189 = swift_allocObject();
          *(v189 + 16) = 0;
          v190 = swift_allocObject();
          *(v190 + 16) = v178;
          v19 = swift_allocObject();
          v20 = v220;
          v176 = v19;
          *(v19 + 16) = v230;
          *(v19 + 24) = v20;
          v21 = swift_allocObject();
          v22 = v176;
          v191 = v21;
          *(v21 + 16) = v231;
          *(v21 + 24) = v22;
          v192 = swift_allocObject();
          *(v192 + 16) = 0;
          v193 = swift_allocObject();
          *(v193 + 16) = v178;
          v23 = swift_allocObject();
          v24 = v181;
          v182 = v23;
          *(v23 + 16) = v232;
          *(v23 + 24) = v24;
          v25 = swift_allocObject();
          v26 = v182;
          v195 = v25;
          *(v25 + 16) = v233;
          *(v25 + 24) = v26;
          v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v194 = sub_1B0E46A48();
          v196 = v27;

          v28 = v183;
          v29 = v196;
          *v196 = v234;
          v29[1] = v28;

          v30 = v184;
          v31 = v196;
          v196[2] = v235;
          v31[3] = v30;

          v32 = v185;
          v33 = v196;
          v196[4] = v236;
          v33[5] = v32;

          v34 = v186;
          v35 = v196;
          v196[6] = v237;
          v35[7] = v34;

          v36 = v187;
          v37 = v196;
          v196[8] = v238;
          v37[9] = v36;

          v38 = v188;
          v39 = v196;
          v196[10] = v239;
          v39[11] = v38;

          v40 = v189;
          v41 = v196;
          v196[12] = v240;
          v41[13] = v40;

          v42 = v190;
          v43 = v196;
          v196[14] = v241;
          v43[15] = v42;

          v44 = v191;
          v45 = v196;
          v196[16] = v242;
          v45[17] = v44;

          v46 = v192;
          v47 = v196;
          v196[18] = v243;
          v47[19] = v46;

          v48 = v193;
          v49 = v196;
          v196[20] = v244;
          v49[21] = v48;

          v50 = v195;
          v51 = v196;
          v196[22] = v245;
          v51[23] = v50;
          sub_1B0394964();

          if (os_log_type_enabled(v198, v199))
          {
            v52 = v271;
            v164 = sub_1B0E45D78();
            v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v163 = 0;
            v165 = sub_1B03949A8(0, v162, v162);
            v166 = sub_1B03949A8(v163, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v167 = &v299;
            v299 = v164;
            v168 = &v298;
            v298 = v165;
            v169 = &v297;
            v297 = v166;
            sub_1B0394A48(0, &v299);
            sub_1B0394A48(4, v167);
            v295 = v234;
            v296 = v183;
            sub_1B03949FC(&v295, v167, v168, v169);
            v170 = v52;
            if (v52)
            {

              __break(1u);
            }

            else
            {
              v295 = v235;
              v296 = v184;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v160 = 0;
              v295 = v236;
              v296 = v185;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v159 = 0;
              v295 = v237;
              v296 = v186;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v158 = 0;
              v295 = v238;
              v296 = v187;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v157 = 0;
              v295 = v239;
              v296 = v188;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v156 = 0;
              v295 = v240;
              v296 = v189;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v155 = 0;
              v295 = v241;
              v296 = v190;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v154 = 0;
              v295 = v242;
              v296 = v191;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v153 = 0;
              v295 = v243;
              v296 = v192;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v152 = 0;
              v295 = v244;
              v296 = v193;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v151 = 0;
              v295 = v245;
              v296 = v195;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v150 = 0;
              _os_log_impl(&dword_1B0389000, v198, v199, "%hx: %ld out of %ld are still running after %ld minute(s).", v164, 0x24u);
              v149 = 0;
              sub_1B03998A8(v165, 0, v162);
              sub_1B03998A8(v166, v149, MEMORY[0x1E69E7CA0] + 8);
              sub_1B0E45D58();

              v161 = v150;
            }
          }

          else
          {
            v53 = v271;

            v161 = v53;
          }

          v146 = v161;
          MEMORY[0x1E69E5920](v198);
          v147 = v273[1];
          v148 = v273 + 1;
          result = v147(v278, v272);
          if (v173 > 5)
          {
            v54 = v276;
            v55 = sub_1B06BF680();
            v171(v54, v55, v272);

            v125 = 7;
            v120 = swift_allocObject();
            *(v120 + 16) = v173;

            v144 = sub_1B0E43988();
            v145 = sub_1B0E458E8();
            v122 = 17;
            v127 = swift_allocObject();
            *(v127 + 16) = 0;
            v128 = swift_allocObject();
            *(v128 + 16) = 2;
            v124 = 32;
            v56 = swift_allocObject();
            v57 = v220;
            v117 = v56;
            *(v56 + 16) = v246;
            *(v56 + 24) = v57;
            v58 = swift_allocObject();
            v59 = v117;
            v129 = v58;
            *(v58 + 16) = v247;
            *(v58 + 24) = v59;
            v130 = swift_allocObject();
            *(v130 + 16) = 0;
            v131 = swift_allocObject();
            v123 = 8;
            *(v131 + 16) = 8;
            v60 = swift_allocObject();
            v61 = v220;
            v118 = v60;
            *(v60 + 16) = v248;
            *(v60 + 24) = v61;
            v62 = swift_allocObject();
            v63 = v118;
            v132 = v62;
            *(v62 + 16) = v249;
            *(v62 + 24) = v63;
            v133 = swift_allocObject();
            *(v133 + 16) = 0;
            v134 = swift_allocObject();
            *(v134 + 16) = v123;
            v64 = swift_allocObject();
            v65 = v220;
            v119 = v64;
            *(v64 + 16) = v250;
            *(v64 + 24) = v65;
            v66 = swift_allocObject();
            v67 = v119;
            v135 = v66;
            *(v66 + 16) = v251;
            *(v66 + 24) = v67;
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            v137 = swift_allocObject();
            *(v137 + 16) = v123;
            v68 = swift_allocObject();
            v69 = v120;
            v121 = v68;
            *(v68 + 16) = v252;
            *(v68 + 24) = v69;
            v70 = swift_allocObject();
            v71 = v121;
            v138 = v70;
            *(v70 + 16) = v253;
            *(v70 + 24) = v71;
            v139 = swift_allocObject();
            *(v139 + 16) = 32;
            v140 = swift_allocObject();
            *(v140 + 16) = v123;
            v72 = swift_allocObject();
            v73 = v220;
            v126 = v72;
            *(v72 + 16) = v254;
            *(v72 + 24) = v73;
            v74 = swift_allocObject();
            v75 = v126;
            v142 = v74;
            *(v74 + 16) = v255;
            *(v74 + 24) = v75;
            v141 = sub_1B0E46A48();
            v143 = v76;

            v77 = v127;
            v78 = v143;
            *v143 = v256;
            v78[1] = v77;

            v79 = v128;
            v80 = v143;
            v143[2] = v257;
            v80[3] = v79;

            v81 = v129;
            v82 = v143;
            v143[4] = v258;
            v82[5] = v81;

            v83 = v130;
            v84 = v143;
            v143[6] = v259;
            v84[7] = v83;

            v85 = v131;
            v86 = v143;
            v143[8] = v260;
            v86[9] = v85;

            v87 = v132;
            v88 = v143;
            v143[10] = v261;
            v88[11] = v87;

            v89 = v133;
            v90 = v143;
            v143[12] = v262;
            v90[13] = v89;

            v91 = v134;
            v92 = v143;
            v143[14] = v263;
            v92[15] = v91;

            v93 = v135;
            v94 = v143;
            v143[16] = v264;
            v94[17] = v93;

            v95 = v136;
            v96 = v143;
            v143[18] = v265;
            v96[19] = v95;

            v97 = v137;
            v98 = v143;
            v143[20] = v266;
            v98[21] = v97;

            v99 = v138;
            v100 = v143;
            v143[22] = v267;
            v100[23] = v99;

            v101 = v139;
            v102 = v143;
            v143[24] = v268;
            v102[25] = v101;

            v103 = v140;
            v104 = v143;
            v143[26] = v269;
            v104[27] = v103;

            v105 = v142;
            v106 = v143;
            v143[28] = v270;
            v106[29] = v105;
            sub_1B0394964();

            if (os_log_type_enabled(v144, v145))
            {
              v107 = v146;
              v110 = sub_1B0E45D78();
              v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
              v111 = sub_1B03949A8(0, v109, v109);
              v112 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
              v113 = &v304;
              v304 = v110;
              v114 = &v303;
              v303 = v111;
              v115 = &v302;
              v302 = v112;
              sub_1B0394A48(2, &v304);
              sub_1B0394A48(5, v113);
              v300 = v256;
              v301 = v127;
              sub_1B03949FC(&v300, v113, v114, v115);
              v116 = v107;
              if (v107)
              {

                __break(1u);
              }

              else
              {
                v300 = v257;
                v301 = v128;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[13] = 0;
                v300 = v258;
                v301 = v129;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[12] = 0;
                v300 = v259;
                v301 = v130;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[11] = 0;
                v300 = v260;
                v301 = v131;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[10] = 0;
                v300 = v261;
                v301 = v132;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[9] = 0;
                v300 = v262;
                v301 = v133;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[8] = 0;
                v300 = v263;
                v301 = v134;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[7] = 0;
                v300 = v264;
                v301 = v135;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[6] = 0;
                v300 = v265;
                v301 = v136;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[5] = 0;
                v300 = v266;
                v301 = v137;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[4] = 0;
                v300 = v267;
                v301 = v138;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[3] = 0;
                v300 = v268;
                v301 = v139;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[2] = 0;
                v300 = v269;
                v301 = v140;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v108[1] = 0;
                v300 = v270;
                v301 = v142;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                _os_log_impl(&dword_1B0389000, v144, v145, "%hx: %ld out of %ld are still running after %ld minute(s): %s", v110, 0x2Eu);
                sub_1B03998A8(v111, 0, v109);
                sub_1B03998A8(v112, 1, MEMORY[0x1E69E7CA0] + 8);
                sub_1B0E45D58();
              }
            }

            else
            {
            }

            MEMORY[0x1E69E5920](v144);
            return v147(v276, v272);
          }
        }
      }

      else
      {
        v214 = v217;
        v213 = v217;
        v294 = v217;

        return sub_1B06C3EFC(v213);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06D0B94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v4 = sub_1B06D0C04(v3);

  return v4;
}

uint64_t sub_1B06D0C04(uint64_t a1)
{
  v3[2] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
  sub_1B06D5548();
  sub_1B0E44FD8();
  sub_1B039E440(v3);
  return v3[1];
}

uint64_t sub_1B06D0CD0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v4 = sub_1B06D0D40(v3);

  return v4;
}

uint64_t sub_1B06D0D40(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E452A8();

  return v2;
}

uint64_t sub_1B06D0D98(uint64_t a1)
{
  v29[2] = a1;
  v29[0] = sub_1B0E46A28();
  v29[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1840, &qword_1B0E99BE8);
  sub_1B03F1A20(sub_1B06D1108, 0, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v12, &v25);
  sub_1B06D4E94(&Strong);
  v22 = v25;
  v23 = v26;
  if (v26)
  {
    v27 = v22;
    v28 = v23;
  }

  else
  {
    v27 = sub_1B0E44838();
    v28 = v4;
  }

  v21[0] = v27;
  v21[1] = v28;
  v10 = MEMORY[0x1E69E6158];
  sub_1B0E46A08();
  sub_1B03B1198(v21);
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  v16 = *(a1 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1848, &unk_1B0E99BF0);
  sub_1B03F1A20(sub_1B06D1318, 0, v6, MEMORY[0x1E69E73E0], v10, v12, &v17);
  v14 = v17;
  v15 = v18;
  if (v18)
  {
    v19 = v14;
    v20 = v15;
  }

  else
  {
    v19 = sub_1B0E44838();
    v20 = v7;
  }

  v13[0] = v19;
  v13[1] = v20;
  sub_1B0E46A08();
  sub_1B03B1198(v13);
  v8 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v8);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v29);
  return sub_1B0E44C88();
}

uint64_t sub_1B06D1108@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = 0;
  v11 = *a1;
  v10[0] = sub_1B0E46A28();
  v10[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  sub_1B0E469F8();
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  sub_1B06C71E4();
  sub_1B0E469F8();
  v6 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v6);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v10);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1B06D1318@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B06C6CB4(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B06D135C(uint64_t a1)
{
  swift_beginAccess();
  v6 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v10 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
  v1 = sub_1B06D5010();
  v3 = sub_1B039CA88(sub_1B06D14DC, 0, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v8);
  sub_1B039E440(&v10);
  v9 = v3;
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v4 = sub_1B0E448E8();

  sub_1B039E440(&v9);
  return v4;
}

uint64_t sub_1B06D14DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B06D0D98(a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B06D1520(uint64_t a1)
{
  v7[1] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
  sub_1B06D5548();
  v3 = sub_1B0E44F58();
  sub_1B039E440(v7);
  v5 = sub_1B0E452A8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0E452A8();

  if (v5 == v4)
  {
    return sub_1B06D1A08(v3);
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1B06D168C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B06D16F8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = sub_1B0E452A8();

  if (v3 < 0)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
  sub_1B06D55D0();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1858, &qword_1B0E99C00);
    result = sub_1B0E46518();
    if (v4)
    {
      break;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E453A8();

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B06D56EC();
    if (Strong)
    {
      sub_1B06C7744();
      MEMORY[0x1E69E5920](Strong);
    }
  }

  return result;
}

uint64_t sub_1B06D18F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B06D1940();
  *a1 = result;
  return result;
}

uint64_t sub_1B06D1940()
{
  v5 = v0;
  if (*(v0 + 8) == 5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v2 = Strong == 0;
    sub_1B06D4E94(&Strong);
    if (v2)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    return *(v0 + 8);
  }
}

uint64_t sub_1B06D1A08(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1860, &qword_1B0E99C08);
  sub_1B06D5714();
  if (sub_1B0E45748())
  {
    v4 = 0;
  }

  else
  {
    sub_1B06D579C();
    sub_1B06D5824();
    if (sub_1B0E450A8())
    {
      if (sub_1B0E44F48())
      {
        v4 = 0;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B06D58A0();
        v2 = sub_1B0E46398();
        v4 = sub_1B06D1A08(v2);
      }
    }

    else if (sub_1B0E450A8())
    {
      if (sub_1B0E44F48())
      {
        v4 = 1;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B06D58A0();
        v3 = sub_1B0E46398();
        v4 = sub_1B06D1A08(v3);
      }
    }

    else
    {
      if (sub_1B0E450A8())
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v4 = v5;
    }
  }

  return v4;
}

void sub_1B06D1D24(void *a1, uint64_t a2)
{
  v7[2] = a1;
  v7[1] = a2;
  v7[0] = swift_unknownObjectWeakLoadStrong();
  v4 = v7[0] != 0;
  sub_1B06D4E94(v7);
  if (v4 && *(a2 + 8) == 5)
  {
    if (__OFADD__(*a1, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a1;
    }
  }
}

uint64_t sub_1B06D2028(uint64_t a1)
{
  v2[4] = a1 + 16;
  swift_beginAccess();
  v2[0] = swift_weakLoadStrong();
  if (v2[0])
  {

    sub_1B0391AD4(v2);
    swift_endAccess();
    sub_1B06D20D8();
  }

  else
  {
    sub_1B0391AD4(v2);
    return swift_endAccess();
  }
}

uint64_t sub_1B06D20D8()
{
  v40 = sub_1B06D4DBC;
  v41 = sub_1B06D4E08;
  v42 = sub_1B0398F5C;
  v43 = sub_1B0398F5C;
  v44 = sub_1B0399348;
  v64 = 0;
  v45 = 0;
  v46 = 0;
  v47 = sub_1B0E439A8();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v51 = v17 - v50;
  v56 = sub_1B0E44468();
  v54 = *(v56 - 8);
  v55 = v56 - 8;
  v52 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v57 = (v17 - v52);
  v64 = v0;

  v53 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v53);
  v1 = v54;
  *v57 = v53;
  (*(v1 + 104))();
  v58 = sub_1B0E44488();
  (*(v54 + 8))(v57, v56);
  result = v58;
  if (v58)
  {
    v3 = v51;

    v4 = sub_1B06BF680();
    (*(v48 + 16))(v3, v4, v47);

    v37 = sub_1B0E43988();
    v38 = sub_1B0E458D8();
    v27 = 17;
    v29 = 7;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = 2;
    v28 = 32;
    v5 = swift_allocObject();
    v6 = v39;
    v30 = v5;
    *(v5 + 16) = v40;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v30;
    v34 = v7;
    *(v7 + 16) = v41;
    *(v7 + 24) = v8;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v33 = sub_1B0E46A48();
    v35 = v9;

    v10 = v31;
    v11 = v35;
    *v35 = v42;
    v11[1] = v10;

    v12 = v32;
    v13 = v35;
    v35[2] = v43;
    v13[3] = v12;

    v14 = v34;
    v15 = v35;
    v35[4] = v44;
    v15[5] = v14;
    sub_1B0394964();

    if (os_log_type_enabled(v37, v38))
    {
      v16 = v45;
      v20 = sub_1B0E45D78();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v19 = 0;
      v21 = sub_1B03949A8(0, v18, v18);
      v22 = sub_1B03949A8(v19, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v23 = &v63;
      v63 = v20;
      v24 = &v62;
      v62 = v21;
      v25 = &v61;
      v61 = v22;
      sub_1B0394A48(0, &v63);
      sub_1B0394A48(1, v23);
      v59 = v42;
      v60 = v31;
      sub_1B03949FC(&v59, v23, v24, v25);
      v26 = v16;
      if (v16)
      {

        __break(1u);
      }

      else
      {
        v59 = v43;
        v60 = v32;
        sub_1B03949FC(&v59, &v63, &v62, &v61);
        v17[1] = 0;
        v59 = v44;
        v60 = v34;
        sub_1B03949FC(&v59, &v63, &v62, &v61);
        _os_log_impl(&dword_1B0389000, v37, v38, "%hx: Timer fired", v20, 6u);
        v17[0] = 0;
        sub_1B03998A8(v21, 0, v18);
        sub_1B03998A8(v22, v17[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v37);
    (*(v48 + 8))(v51, v47);
    if (sub_1B06CCDAC())
    {
      sub_1B06D2954();
    }

    return sub_1B06CDF74();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06D2870(uint64_t a1)
{
  sub_1B039B834(0);
  sub_1B0E44238();
  sub_1B039B924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039B9A4();
  return sub_1B0E460A8();
}

void sub_1B06D2954()
{
  v100 = sub_1B06D4DBC;
  v101 = sub_1B06D4E08;
  v102 = sub_1B0398F5C;
  v103 = sub_1B0398F5C;
  v104 = sub_1B0399348;
  v105 = sub_1B06D4DBC;
  v106 = sub_1B06D4E08;
  v107 = sub_1B0398F5C;
  v108 = sub_1B0398F5C;
  v109 = sub_1B0399348;
  v143 = 0;
  v139[0] = 0;
  v139[1] = 0;
  v136 = 0;
  v110 = 0;
  v111 = 0;
  v112 = sub_1B0E439A8();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v116 = v35 - v115;
  v117 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v118 = v35 - v117;
  v123 = sub_1B0E44468();
  v121 = *(v123 - 8);
  v122 = v123 - 8;
  v119 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v123);
  v124 = (v35 - v119);
  v143 = v0;

  v120 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v120);
  v3 = v121;
  *v124 = v120;
  (*(v3 + 104))();
  v125 = sub_1B0E44488();
  (*(v121 + 8))(v124, v123);
  if (v125)
  {

    v97 = v142;
    swift_beginAccess();
    v98 = *(v99 + 49);
    swift_endAccess();
    if (v98)
    {
      v4 = v118;
      v5 = sub_1B06BF680();
      (*(v113 + 16))(v4, v5, v112);

      v95 = sub_1B0E43988();
      v96 = sub_1B0E45908();
      v85 = 17;
      v87 = 7;
      v89 = swift_allocObject();
      *(v89 + 16) = 0;
      v90 = swift_allocObject();
      *(v90 + 16) = 2;
      v86 = 32;
      v6 = swift_allocObject();
      v7 = v99;
      v88 = v6;
      *(v6 + 16) = v105;
      *(v6 + 24) = v7;
      v8 = swift_allocObject();
      v9 = v88;
      v92 = v8;
      *(v8 + 16) = v106;
      *(v8 + 24) = v9;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v91 = sub_1B0E46A48();
      v93 = v10;

      v11 = v89;
      v12 = v93;
      *v93 = v107;
      v12[1] = v11;

      v13 = v90;
      v14 = v93;
      v93[2] = v108;
      v14[3] = v13;

      v15 = v92;
      v16 = v93;
      v93[4] = v109;
      v16[5] = v15;
      sub_1B0394964();

      if (os_log_type_enabled(v95, v96))
      {
        v17 = v110;
        v78 = sub_1B0E45D78();
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v77 = 0;
        v79 = sub_1B03949A8(0, v76, v76);
        v80 = sub_1B03949A8(v77, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v81 = &v130;
        v130 = v78;
        v82 = &v129;
        v129 = v79;
        v83 = &v128;
        v128 = v80;
        sub_1B0394A48(0, &v130);
        sub_1B0394A48(1, v81);
        v126 = v107;
        v127 = v89;
        sub_1B03949FC(&v126, v81, v82, v83);
        v84 = v17;
        if (v17)
        {

          __break(1u);
        }

        else
        {
          v126 = v108;
          v127 = v90;
          sub_1B03949FC(&v126, &v130, &v129, &v128);
          v74 = 0;
          v126 = v109;
          v127 = v92;
          sub_1B03949FC(&v126, &v130, &v129, &v128);
          v73 = 0;
          _os_log_impl(&dword_1B0389000, v95, v96, "%hx: Still waiting for work to be deferred.", v78, 6u);
          v72 = 0;
          sub_1B03998A8(v79, 0, v76);
          sub_1B03998A8(v80, v72, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v75 = v73;
        }
      }

      else
      {
        v18 = v110;

        v75 = v18;
      }

      v70 = v75;
      MEMORY[0x1E69E5920](v95);
      (*(v113 + 8))(v118, v112);
      v71 = v70;
    }

    else
    {
      v19 = v116;
      v20 = sub_1B06BF680();
      (*(v113 + 16))(v19, v20, v112);

      v68 = sub_1B0E43988();
      v69 = sub_1B0E45908();
      v58 = 17;
      v60 = 7;
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = 2;
      v59 = 32;
      v21 = swift_allocObject();
      v22 = v99;
      v61 = v21;
      *(v21 + 16) = v100;
      *(v21 + 24) = v22;
      v23 = swift_allocObject();
      v24 = v61;
      v65 = v23;
      *(v23 + 16) = v101;
      *(v23 + 24) = v24;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v64 = sub_1B0E46A48();
      v66 = v25;

      v26 = v62;
      v27 = v66;
      *v66 = v102;
      v27[1] = v26;

      v28 = v63;
      v29 = v66;
      v66[2] = v103;
      v29[3] = v28;

      v30 = v65;
      v31 = v66;
      v66[4] = v104;
      v31[5] = v30;
      sub_1B0394964();

      if (os_log_type_enabled(v68, v69))
      {
        v32 = v110;
        v51 = sub_1B0E45D78();
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v50 = 0;
        v52 = sub_1B03949A8(0, v49, v49);
        v53 = sub_1B03949A8(v50, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v54 = &v135;
        v135 = v51;
        v55 = &v134;
        v134 = v52;
        v56 = &v133;
        v133 = v53;
        sub_1B0394A48(0, &v135);
        sub_1B0394A48(1, v54);
        v131 = v102;
        v132 = v62;
        sub_1B03949FC(&v131, v54, v55, v56);
        v57 = v32;
        if (v32)
        {

          __break(1u);
        }

        else
        {
          v131 = v103;
          v132 = v63;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v47 = 0;
          v131 = v104;
          v132 = v65;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v46 = 0;
          _os_log_impl(&dword_1B0389000, v68, v69, "%hx: Work needs to be deferred.", v51, 6u);
          v45 = 0;
          sub_1B03998A8(v52, 0, v49);
          sub_1B03998A8(v53, v45, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v48 = v46;
        }
      }

      else
      {
        v33 = v110;

        v48 = v33;
      }

      v44 = v48;
      MEMORY[0x1E69E5920](v68);
      (*(v113 + 8))(v116, v112);
      v43 = v141;
      swift_beginAccess();
      *(v99 + 49) = 1;
      swift_endAccess();
      v71 = v44;
    }

    v34 = v99;
    v41 = v71;
    v38 = v140;
    swift_beginAccess();
    v39 = *(v34 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B06D16F8(v39);

    v138 = sub_1B06CCDFC();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1808, &qword_1B0E99B80);
    sub_1B06D5184();
    sub_1B0E45798();
    for (i = v41; ; i = v36)
    {
      v36 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1818, &qword_1B0E99B88);
      sub_1B0E46518();
      v37 = v137;
      if (!v137)
      {
        break;
      }

      v35[1] = v37;
      v35[0] = v37;
      v136 = v37;
      swift_getObjectType();
      [v35[0] stopBackFillingMessageBodyDownload];
      swift_unknownObjectRelease();
    }

    sub_1B039E440(v139);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B06D3AB0()
{
  v2 = qword_1EB6DADD0;
  if (!qword_1EB6DADD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E17D0, &unk_1B0E99B60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06D3B70(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1B0E455B8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1B0E466C8();
  __break(1u);
LABEL_12:
  result = sub_1B0E465A8();
  __break(1u);
  return result;
}

uint64_t sub_1B06D3E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v15 = sub_1B06D61F8;
        v16 = &v37;
        sub_1B06D3B70(sub_1B06D6214, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_1B0E465A8();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_1B0E465A8();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_1B0E465A8();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_1B0E465A8();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_1B0E465A8();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_1B0E465A8();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_1B0E465A8();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_1B0E465A8();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_1B0E465A8();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_1B0E465A8();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_1B0E465A8();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_1B0E466C8();
    __break(1u);
  }

  result = sub_1B0E465A8();
  __break(1u);
  return result;
}

uint64_t sub_1B06D46D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1B0E465A8();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1B0E465A8();
                __break(1u);
              }

              sub_1B0E465A8();
              __break(1u);
            }

            sub_1B0E465A8();
            __break(1u);
          }

          sub_1B0E465A8();
          __break(1u);
        }

        sub_1B0E465A8();
        __break(1u);
      }

      sub_1B0E465A8();
      __break(1u);
    }

    sub_1B0E465A8();
    __break(1u);
  }

  result = sub_1B0E465A8();
  __break(1u);
  return result;
}

uint64_t sub_1B06D4BE8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1B0E45988();
      v1 = sub_1B0E45278();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0E45988();
    return v2;
  }

  return result;
}

uint64_t _s8ActivityCMa(uint64_t a1)
{
  v2 = qword_1EB6DA678;
  if (!qword_1EB6DA678)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B06D4DCC@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1B06D4E14()
{
  v2 = qword_1EB6DA340;
  if (!qword_1EB6DA340)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D4EC8()
{
  v2 = qword_1EB6DA690;
  if (!qword_1EB6DA690)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA690);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B06D5010()
{
  v2 = qword_1EB6DAE78;
  if (!qword_1EB6DAE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1800, &unk_1B0E99B70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5098()
{
  v2 = qword_1EB6DA350;
  if (!qword_1EB6DA350)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA350);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_327(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B06D5184()
{
  v2 = qword_1EB6DB000;
  if (!qword_1EB6DB000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1808, &qword_1B0E99B80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06D5234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B06D527C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B0694390();
  v5 = MEMORY[0x1E69E6810];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B06D52F0()
{
  v2 = qword_1EB6DAA70;
  if (!qword_1EB6DAA70)
  {
    sub_1B0E45A38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA70);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_367(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B06D5410()
{
  v2 = qword_1EB6DAE20;
  if (!qword_1EB6DAE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1838, &qword_1B0E99BE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5498()
{
  v2 = qword_1EB6DAE28;
  if (!qword_1EB6DAE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1838, &qword_1B0E99BE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5548()
{
  v2 = qword_1EB6DAE88;
  if (!qword_1EB6DAE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1800, &unk_1B0E99B70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D55D0()
{
  v2 = qword_1EB6DACC8;
  if (!qword_1EB6DACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1850, &unk_1B0E9B040);
    sub_1B06D5674();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5674()
{
  v2 = qword_1EB6DEE40;
  if (!qword_1EB6DEE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5714()
{
  v2 = qword_1EB6DAE68;
  if (!qword_1EB6DAE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1860, &qword_1B0E99C08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D579C()
{
  v2 = qword_1EB6DAE70;
  if (!qword_1EB6DAE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1860, &qword_1B0E99C08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5824()
{
  v2 = qword_1EB6DA698;
  if (!qword_1EB6DA698)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D58A0()
{
  v2 = qword_1EB6DAE60;
  if (!qword_1EB6DAE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1860, &qword_1B0E99C08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFBackFillMessageBodyScheduler()
{
  v2 = qword_1EB6E1870;
  if (!qword_1EB6E1870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E1870);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B06D598C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B06D5AF4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1B06D5D34(uint64_t a1)
{
  updated = sub_1B0E43108();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B06D5EA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFA && *(a1 + 9))
    {
      v5 = *a1 + 250;
    }

    else
    {
      v2 = *(a1 + 8) - 5;
      if (v2 < 0)
      {
        v2 = -1;
      }

      v3 = v2 - 1;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B06D5FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFA)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 251;
    if (a3 >= 0xFB)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_1B06D61B0(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1B06D6240()
{
  v2 = qword_1EB6DEEE0;
  if (!qword_1EB6DEEE0)
  {
    sub_1B0E45988();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEEE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D62C0()
{
  v2 = qword_1EB6DEEF0;
  if (!qword_1EB6DEEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1888, &unk_1B0EEDC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEEF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_1B06D63E4()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06D642C()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B06D6494(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06D6514()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_mailboxPersistence);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06D655C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B06D65C4(uint64_t a1)
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

uint64_t sub_1B06D6644()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1B06D66D0(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v40 = a2;
  v3 = v2;
  v4 = v41;
  v20 = v3;
  ObjectType = swift_getObjectType();
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v37 = 0;
  v31 = sub_1B0E459C8();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v17 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = &v16 - v17;
  v23 = sub_1B0E45988();
  v18 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v16 - v18;
  v5 = sub_1B0E44288();
  v19 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v16 - v19;
  v45 = v4;
  v44 = v6;
  v46 = v20;
  *&v20[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token] = v7;
  swift_weakInit();
  v21 = v46;
  MEMORY[0x1E69E5928](v4);
  v8 = v40;
  *&v21[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_queue] = v4;
  v22 = v46;
  MEMORY[0x1E69E5928](v8);
  *&v22[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_mailboxPersistence] = v40;
  v38 = v46;
  v28 = sub_1B06CCC58();
  v24 = sub_1B0E45A18();
  v26 = v9;
  v10 = sub_1B0E44838();
  v25 = v11;
  v32 = MEMORY[0x1B2726DB0](v24, v26, v10);
  v33 = v12;

  sub_1B0E44268();
  v27 = sub_1B0E46A48();
  sub_1B06D6240();
  sub_1B0E46028();
  (*(v29 + 104))(v36, *MEMORY[0x1E69E8098], v31);
  v13 = sub_1B0E45A08();
  v14 = ObjectType;
  *&v38[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue] = v13;
  v43.receiver = v46;
  v43.super_class = v14;
  v42 = objc_msgSendSuper2(&v43, sel_init);
  MEMORY[0x1E69E5928](v42);
  v46 = v42;
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v41);
  MEMORY[0x1E69E5920](v46);
  return v42;
}

id sub_1B06D6A54()
{
  v3.super_class = swift_getObjectType();
  v7 = v0;
  v4 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token);
  swift_beginAccess();
  v5 = *v4;
  swift_unknownObjectRetain();
  swift_endAccess();
  if (v5)
  {
    v2 = [objc_opt_self() defaultCenter];
    swift_unknownObjectRetain();
    swift_getObjectType();
    [v2 removeObserver_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v2);
    swift_unknownObjectRelease();
  }

  v6 = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_1B06D6C54(uint64_t a1)
{
  v61 = a1;
  v56 = 0;
  v89 = 0;
  v88 = 0;
  v52 = sub_1B0E44238();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x1EEE9AC00](0);
  v55 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1B0E44288();
  v58 = *(v57 - 8);
  v59 = v58;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B0E44468();
  v62 = *(v65 - 8);
  v64 = v62;
  MEMORY[0x1EEE9AC00](v61);
  v66 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = v5;
  v88 = v1;
  v6 = v1;
  v63 = *&v1[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_queue];
  v7 = v63;
  v8 = v64;
  *v66 = v63;
  (*(v8 + 104))();
  v67 = sub_1B0E44488();
  (*(v64 + 8))(v66, v65);
  if (v67)
  {

    v48 = &v51[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token];
    v49 = v87;
    swift_beginAccess();
    v50 = *v48;
    swift_unknownObjectRetain();
    swift_endAccess();
    v86 = v50;
    v47 = v50 == 0;
    v46 = v47;
    sub_1B03FD360(&v86);
    if (v46)
    {

      v40 = &v51[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_persistenceAdaptor];
      v41 = v85;
      v43 = 0;
      swift_beginAccess();
      swift_weakAssign();

      swift_endAccess();
      v42 = [objc_opt_self() defaultCenter];
      v44 = *MEMORY[0x1E699B390];
      v9 = v44;
      v45 = v44;
      v83[0] = v43;
      v83[1] = v43;
      v83[2] = v43;
      v84 = v43;
      if (v43)
      {
        v34 = v84;
        v37 = v83;
        __swift_project_boxed_opaque_existential_0(v83, v84);
        v32 = *(v34 - 8);
        v33 = v32;
        v36 = &v18;
        v10 = MEMORY[0x1EEE9AC00](&v18);
        v35 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v33 + 16))(v10);
        v38 = sub_1B0E46A58();
        (*(v33 + 8))(v35, v34);
        __swift_destroy_boxed_opaque_existential_0(v37);
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v21 = v39;
      v25 = 24;
      v26 = 7;
      v19 = swift_allocObject();
      v18 = v19 + 16;
      v12 = v51;
      swift_unknownObjectWeakInit();

      v81 = sub_1B06D78A0;
      v82 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v77 = 1107296256;
      v28 = 0;
      v78 = 0;
      v79 = sub_1B06D8164;
      v80 = &block_descriptor_0;
      v20 = _Block_copy(&aBlock);

      v29 = 0;
      v23 = [v42 addObserverForName:v45 object:v21 queue:? usingBlock:?];
      _Block_release(v20);
      swift_unknownObjectRelease();

      v22 = &v51[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token];
      v24 = v75;
      swift_beginAccess();
      *v22 = v23;
      swift_unknownObjectRelease();
      swift_endAccess();
      v31 = *&v51[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue];
      v13 = v31;
      v14 = v51;
      v15 = swift_allocObject();
      v16 = v27;
      v17 = v28;
      *(v15 + 16) = v51;
      v73 = sub_1B06D82BC;
      v74 = v15;
      v68 = MEMORY[0x1E69E9820];
      v69 = v16;
      v70 = v17;
      v71 = sub_1B038C908;
      v72 = &block_descriptor_6;
      v30 = _Block_copy(&v68);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](v29, v60, v55, v30);
      (*(v54 + 8))(v55, v52);
      (*(v59 + 8))(v60, v57);
      _Block_release(v30);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B06D75A0(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v9 = sub_1B06D8700;
  v34 = 0;
  v33 = 0;
  v10 = 0;
  v11 = sub_1B0E44238();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &p_Strong - v14;
  v19 = sub_1B0E44288();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &p_Strong - v22;
  v34 = v2;
  v24 = v3 + 16;
  v33 = v3 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v6 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1B06D4E94(p_Strong);
    swift_endAccess();
    v8 = *(v6 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue);
    MEMORY[0x1E69E5928](v8);
    MEMORY[0x1E69E5920](v6);

    v30 = v9;
    v31 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = 0;
    v28 = sub_1B038C908;
    v29 = &block_descriptor_16;
    v7 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v23, v15, v7);
    (*(v12 + 8))(v15, v11);
    (*(v20 + 8))(v23, v19);
    _Block_release(v7);

    return MEMORY[0x1E69E5920](v8);
  }

  else
  {
    sub_1B06D4E94(&Strong);
    return swift_endAccess();
  }
}

uint64_t sub_1B06D78A8(uint64_t a1)
{
  v3[4] = a1 + 16;
  swift_beginAccess();
  v3[0] = swift_unknownObjectWeakLoadStrong();
  if (v3[0])
  {
    v2 = v3[0];
    MEMORY[0x1E69E5928](v3[0]);
    sub_1B06D4E94(v3);
    swift_endAccess();
    sub_1B06D7968();
    return MEMORY[0x1E69E5920](v2);
  }

  else
  {
    sub_1B06D4E94(v3);
    return swift_endAccess();
  }
}

uint64_t sub_1B06D7968()
{
  v34 = sub_1B06D83A8;
  v35 = sub_1B06D853C;
  v69 = 0;
  v68 = 0;
  v65 = 0;
  v36 = 0;
  v63 = 0;
  v42 = 0;
  v37 = sub_1B0E44238();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v41 = &v7 - v40;
  v43 = sub_1B0E44288();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v47 = &v7 - v46;
  v52 = sub_1B0E44468();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v53 = (&v7 - v48);
  v69 = v0;
  MEMORY[0x1E69E5928](v0);
  v49 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue);
  MEMORY[0x1E69E5928](v49);
  v1 = v50;
  *v53 = v49;
  (*(v1 + 104))();
  v54 = sub_1B0E44488();
  (*(v50 + 8))(v53, v52);
  result = v54;
  if (v54)
  {
    MEMORY[0x1E69E5920](v33);
    v29 = [objc_opt_self() sharedInstance];
    v31 = [v29 visibleMailboxObjectIDs];
    v28 = sub_1B06BD108();
    v30 = sub_1B0E451B8();
    v68 = v30;
    MEMORY[0x1E69E5920](v29);
    MEMORY[0x1E69E5920](v31);
    v32 = *(v33 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_mailboxPersistence);
    MEMORY[0x1E69E5928](v32);
    if (v32)
    {
      v27 = v32;
      v22 = v32;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = &v55;
      v55 = v30;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18C0, &qword_1B0E99EB8);
      v19 = sub_1B06D8548();
      sub_1B06D85C8();
      v20 = sub_1B0E45598();
      v21 = sub_1B0E453E8();

      v24 = [v22 mailboxDatabaseIDsForMailboxObjectIDs:v21 createIfNecessary:0];
      MEMORY[0x1E69E5920](v21);
      MEMORY[0x1E69E5920](v22);
      v23 = sub_1B039A494();
      sub_1B06D8328();
      v25 = sub_1B0E453F8();
      MEMORY[0x1E69E5920](v24);
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v66 = v26;
    if (v26)
    {
      v67 = v66;
    }

    else
    {
      v14 = 0;
      v15 = sub_1B039A494();
      v16 = sub_1B0E46A48();
      sub_1B06D8328();
      v67 = sub_1B0E45438();
      if (v66)
      {
        sub_1B039E440(&v66);
      }
    }

    v3 = v36;
    v11 = v67;
    v65 = v67;
    v64 = v67;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18B8, &qword_1B0E99EB0);
    sub_1B06D83F0();
    result = sub_1B0E44F58();
    v13 = result;
    if (!v3)
    {
      v10 = v13;
      v63 = v13;
      v9 = *(v33 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_queue);
      MEMORY[0x1E69E5928](v9);
      MEMORY[0x1E69E5928](v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v4 = swift_allocObject();
      v5 = v35;
      v6 = v10;
      *(v4 + 16) = v33;
      *(v4 + 24) = v6;
      v61 = v5;
      v62 = v4;
      aBlock = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v58 = 0;
      v59 = sub_1B038C908;
      v60 = &block_descriptor_12;
      v8 = _Block_copy(&aBlock);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](0, v47, v41, v8);
      (*(v38 + 8))(v41, v37);
      (*(v44 + 8))(v47, v43);
      _Block_release(v8);

      MEMORY[0x1E69E5920](v9);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B06D8164(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v12 = a2;
  v11 = sub_1B0E42A08();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v4 - v6;
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);

  MEMORY[0x1E69E5928](v12);
  sub_1B0E429D8();
  v7(v10);
  (*(v8 + 8))(v10, v11);
  MEMORY[0x1E69E5920](v12);
}

unint64_t sub_1B06D8328()
{
  v2 = qword_1EB6DA5A8;
  if (!qword_1EB6DA5A8)
  {
    sub_1B039A494();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D83F0()
{
  v2 = qword_1EB6DACE8;
  if (!qword_1EB6DACE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18B8, &qword_1B0E99EB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06D8478(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = a2;
  swift_beginAccess();
  v4[0] = swift_weakLoadStrong();
  if (v4[0])
  {

    sub_1B0391AD4(v4);
    swift_endAccess();
    sub_1B09B014C(a2);
  }

  else
  {
    sub_1B0391AD4(v4);
    return swift_endAccess();
  }
}

unint64_t sub_1B06D8548()
{
  v2 = qword_1EB6DAAF8;
  if (!qword_1EB6DAAF8)
  {
    sub_1B06BD108();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D85C8()
{
  v2 = qword_1EB6DAFC0;
  if (!qword_1EB6DAFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18C0, &qword_1B0E99EB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06D876C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v53 = a1;
  v50 = a2;
  v31 = "Fatal error";
  v32 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v33 = "Message/Configuration.swift";
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v36 = 0;
  v51 = sub_1B0E439A8();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v34 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v14 - v34;
  v35 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18C8, &qword_1B0E99EE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v56 = &v14 - v35;
  v57 = type metadata accessor for ConnectionConfiguration(v3);
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v37 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v14 - v37;
  v39 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v14 - v39;
  v62 = &v14 - v39;
  v41 = type metadata accessor for Configuration(v6);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v45 = (&v14 - v44);
  v46 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v47 = (&v14 - v46);
  v61 = &v14 - v46;
  v60 = v9;
  v59 = v10;
  MEMORY[0x1E69E5928](v9);
  (*(v48 + 16))(v52, v50, v51);
  sub_1B06D8DD4(v53, v52, v56);
  if ((*(v54 + 48))(v56, 1, v57) == 1)
  {
    sub_1B06D94D8(v56);
    (*(v48 + 8))(v50, v51);
    MEMORY[0x1E69E5920](v53);
    return (*(v42 + 56))(v30, 1, 1, v41);
  }

  else
  {
    sub_1B06D95C4(v56, v40);
    v28 = sub_1B06D96CC(v12);
    v58 = v28;
    MEMORY[0x1E69E5928](v53);
    v29 = [v53 identifier];
    if (v29)
    {
      v27 = v29;
      v22 = v29;
      v23 = sub_1B0E44AD8();
      v24 = v13;
      MEMORY[0x1E69E5920](v22);
      v25 = v23;
      v26 = v24;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v21 = v26;
    v20 = v25;
    MEMORY[0x1E69E5920](v53);
    if (v21)
    {
      v18 = v20;
      v19 = v21;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v14 = v19;
    v15 = v18;
    sub_1B06D9758(v40, v38);
    v17 = 1;
    v16 = 0;
    Configuration.init(logName:connection:mailboxFilter:fetchedMessageMetadata:)(v15, v14, v38, v28, 0, v45);
    sub_1B06D98D8(v45, v47);
    sub_1B06D9A6C(v40);
    sub_1B06D9B1C(v47, v30);
    (*(v42 + 56))(v30, v16, v17, v41);
    (*(v48 + 8))(v50, v51);
    MEMORY[0x1E69E5920](v53);
    return sub_1B06D9D34(v47);
  }
}

uint64_t sub_1B06D8DD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v43 = a1;
  v50 = a2;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18D0, &qword_1B0E99EE8);
  v44 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v18 - v44;
  v45 = 0;
  v62 = sub_1B0E43BC8();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v46 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v18 - v46;
  v48 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v18 - v48;
  v71 = &v18 - v48;
  v51 = type metadata accessor for ConnectionConfiguration(v7);
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v55 = *(v52 + 64);
  v54 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v56 = &v18 - v54;
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v54);
  v58 = &v18 - v57;
  v70 = &v18 - v57;
  v69 = a1;
  v68 = v8;
  sub_1B06D9E08(v9);
  if ((*(v59 + 48))(v61, 1, v62) == 1)
  {
    sub_1B06DA5D4(v61);
LABEL_13:
    v17 = sub_1B0E439A8();
    (*(*(v17 - 8) + 8))(v50);
    MEMORY[0x1E69E5920](v43);
    return (*(v52 + 56))(v42, 1, 1, v51);
  }

  (*(v59 + 32))(v49, v61, v62);
  v41 = sub_1B0A61548();
  if ((v41 & 0xFC) == 0xFC)
  {
    (*(v59 + 8))(v49, v62);
    goto LABEL_13;
  }

  v40 = v41;
  v38 = v41;
  v67 = v41;
  MEMORY[0x1E69E5928](v43);
  v10 = [v43 sourceApplicationBundleIdentifier];
  v39 = v10;
  if (v10)
  {
    v37 = v39;
    v32 = v39;
    v33 = sub_1B0E44AD8();
    v34 = v11;
    MEMORY[0x1E69E5920](v32);
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  v65 = v35;
  v66 = v36;
  MEMORY[0x1E69E5920](v43);
  v31 = [v43 networkAccountIdentifier];
  if (v31)
  {
    v28 = v31;
    v23 = v31;
    v24 = sub_1B0E44AD8();
    v25 = v12;
    MEMORY[0x1E69E5920](v23);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v19 = v27;
  v18 = v26;
  v63 = v26;
  v64 = v27;
  (*(v59 + 16))(v47, v49, v62);
  v13 = sub_1B0394868();
  v22 = 0;
  v21 = 1;
  v20 = 0;
  ConnectionConfiguration.init(transportLayerSecurity:transportLayerSecurityOptions:endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:sourceApplicationBundleIdentifier:sourceApplicationKind:networkAccountIdentifier:)(v38, v47, v13 & 1, 0, v30, v29, 0, v56, v18, v19);
  v14 = sub_1B06D95C4(v56, v58);
  (*(v59 + 8))(v49, v62, v14);
  sub_1B06D9758(v58, v42);
  (*(v52 + 56))(v42, v20, v21, v51);
  v15 = sub_1B0E439A8();
  (*(*(v15 - 8) + 8))(v50);
  MEMORY[0x1E69E5920](v43);
  return sub_1B06D9A6C(v58);
}

uint64_t sub_1B06D94D8(uint64_t a1)
{
  v4 = type metadata accessor for ConnectionConfiguration(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_1B0E43BC8();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

__n128 sub_1B06D95C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43BC8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for ConnectionConfiguration(0);
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  *(a2 + v3[8]) = *(a1 + v3[8]);
  *(a2 + v3[9]) = *(a1 + v3[9]) & 1;
  result = *(a1 + v3[10]);
  *(a2 + v3[10]) = result;
  return result;
}

BOOL sub_1B06D96CC(uint64_t a1)
{
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v3[3] = &unk_1F26A3990;
  v3[4] = sub_1B06E3170();
  v2 = sub_1B0E434A8();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return (v2 & 1) == 0;
}

uint64_t sub_1B06D9758(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43BC8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v11 = type metadata accessor for ConnectionConfiguration(0);
  *(a2 + v11[5]) = *(a1 + v11[5]);
  v6 = v11[6];
  v7 = *(a1 + v6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + v6) = v7;
  *(a2 + v11[7]) = *(a1 + v11[7]);
  v3 = v11[8];
  v9 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v10 = *(a1 + v3 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v9 + 8) = v10;
  *(a2 + v11[9]) = *(a1 + v11[9]);
  v4 = v11[10];
  v13 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v14 = *(a1 + v4 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v13 + 8) = v14;
  return result;
}

__n128 sub_1B06D98D8(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v7 = type metadata accessor for Configuration(0);
  v5 = v7[5];
  v2 = sub_1B0E43BC8();
  v6 = a2 + v5;
  (*(*(v2 - 8) + 32))();
  v3 = type metadata accessor for ConnectionConfiguration(0);
  v6[v3[5]] = *(a1 + v5 + v3[5]);
  *&v6[v3[6]] = *(a1 + v5 + v3[6]);
  v6[v3[7]] = *(a1 + v5 + v3[7]);
  *&v6[v3[8]] = *(a1 + v5 + v3[8]);
  v6[v3[9]] = *(a1 + v5 + v3[9]) & 1;
  result = *(a1 + v5 + v3[10]);
  *&v6[v3[10]] = result;
  *(a2 + v7[6]) = *(a1 + v7[6]) & 1;
  *(a2 + v7[7]) = *(a1 + v7[7]) & 1;
  return result;
}

uint64_t sub_1B06D9A6C(uint64_t a1)
{
  v1 = sub_1B0E43BC8();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for ConnectionConfiguration(0);

  return a1;
}

void *sub_1B06D9B1C(void *a1, void *a2)
{
  *a2 = *a1;
  v6 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v6;
  v17 = type metadata accessor for Configuration(0);
  v7 = v17[5];
  v2 = sub_1B0E43BC8();
  v13 = a2 + v7;
  (*(*(v2 - 8) + 16))();
  v10 = type metadata accessor for ConnectionConfiguration(0);
  v13[v10[5]] = *(a1 + v7 + v10[5]);
  v8 = v10[6];
  v9 = *(a1 + v7 + v8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v13[v8] = v9;
  v13[v10[7]] = *(a1 + v7 + v10[7]);
  v3 = v10[8];
  v11 = a2 + v7 + v3;
  *&v13[v3] = *(a1 + v7 + v3);
  v12 = *(a1 + v7 + v3 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v11 + 1) = v12;
  v13[v10[9]] = *(a1 + v7 + v10[9]);
  v4 = v10[10];
  v15 = a2 + v7 + v4;
  *&v13[v4] = *(a1 + v7 + v4);
  v16 = *(a1 + v7 + v4 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v15 + 1) = v16;
  *(a2 + v17[6]) = *(a1 + v17[6]);
  *(a2 + v17[7]) = *(a1 + v17[7]);
  return result;
}

uint64_t sub_1B06D9D34(uint64_t a1)
{

  type metadata accessor for Configuration(0);
  v1 = sub_1B0E43BC8();
  (*(*(v1 - 8) + 8))();
  type metadata accessor for ConnectionConfiguration(0);

  return a1;
}

uint64_t sub_1B06D9E08@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v54 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18D8, &unk_1B0E99EF0);
  v41 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v13 - v41;
  v43 = sub_1B0E43BB8();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v47 = &v13 - v46;
  v61 = &v13 - v46;
  v48 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v13 - v48;
  v50 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v13 - v50;
  v60 = &v13 - v50;
  v59 = v6;
  MEMORY[0x1E69E5928](v6);
  v53 = [v52 hostname];
  if (v53)
  {
    v39 = v53;
    v34 = v53;
    v35 = sub_1B0E44AD8();
    v36 = v7;
    MEMORY[0x1E69E5920](v34);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v32 = v38;
  v33 = v37;
  if (v38)
  {
    v30 = v33;
    v31 = v32;
    v27 = v32;
    v28 = v33;
    v57 = v33;
    v58 = v32;
    MEMORY[0x1E69E5920](v52);
    MEMORY[0x1E69E5928](v52);
    v29 = [v52 portNumber];
    MEMORY[0x1E69E5920](v52);
    if (v29 <= 0xFFFF)
    {
      v55 = v29;
      v56 = 0;
    }

    else
    {
      v55 = 0;
      v56 = 1;
    }

    v26 = v55;
    if ((v56 & 1) == 0)
    {
      v25 = v26;
      v23 = v26;
      v54 = v26;
      v8 = sub_1B0A61548();
      v24 = v8;
      if ((v8 & 0xFC) == 0xFC)
      {
        goto LABEL_26;
      }

      v22 = v24;
      v21 = (v24 >> 6) & 3;
      if (v21)
      {
        if (v21 == 1)
        {
          if (v23)
          {
LABEL_26:
            sub_1B0E43B98();
            if ((*(v44 + 48))(v42, 1, v43) == 1)
            {
              sub_1B06E31EC(v42);
              v9 = sub_1B0E43BC8();
              (*(*(v9 - 8) + 56))(v40, 1);
            }

            v20 = *(v44 + 32);
            v19 = v44 + 32;
            v20(v47, v42, v43);
            (*(v44 + 16))(v49, v47, v43);
            v20(v51, v49, v43);
            (*(v44 + 8))(v47, v43);
            goto LABEL_29;
          }

          sub_1B0E43B88();
          (*(v44 + 32))(v51, v49, v43);
LABEL_29:
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E0, &qword_1B0ED0CD0);
          v14 = v40 + *(v11 + 48);
          sub_1B0E43B68();
          (*(v44 + 16))(v14, v51, v43);
          v15 = *MEMORY[0x1E6977B08];
          v18 = sub_1B0E43BC8();
          v16 = *(v18 - 8);
          v17 = v18 - 8;
          (*(v16 + 104))(v40, v15);
          (*(v16 + 56))(v40, 0, 1, v18);
          return (*(v44 + 8))(v51, v43);
        }

        if (v23)
        {
          goto LABEL_26;
        }
      }

      else if (v23)
      {
        goto LABEL_26;
      }

      sub_1B0E43B78();
      (*(v44 + 32))(v51, v49, v43);
      goto LABEL_29;
    }
  }

  else
  {
    MEMORY[0x1E69E5920](v52);
  }

  v12 = sub_1B0E43BC8();
  return (*(*(v12 - 8) + 56))(v40, 1);
}

uint64_t sub_1B06DA5D4(uint64_t a1)
{
  v3 = sub_1B0E43BC8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1B06DA67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v519 = a5;
  v643 = a1;
  v630 = a2;
  v631 = a3;
  v632 = a4;
  v520 = sub_1B039BBE8;
  v521 = sub_1B0394C30;
  v522 = sub_1B0394C24;
  v523 = sub_1B039BA2C;
  v524 = sub_1B039BA88;
  v525 = sub_1B039BB94;
  v526 = sub_1B0394C24;
  v527 = sub_1B039BBA0;
  v528 = sub_1B039BC08;
  v529 = sub_1B0398F5C;
  v530 = sub_1B0398F5C;
  v531 = sub_1B0399178;
  v532 = sub_1B0398F5C;
  v533 = sub_1B0398F5C;
  v534 = sub_1B039BA94;
  v535 = sub_1B0398F5C;
  v536 = sub_1B0398F5C;
  v537 = sub_1B0399178;
  v538 = sub_1B0398F5C;
  v539 = sub_1B0398F5C;
  v540 = sub_1B03991EC;
  v541 = sub_1B039BBE8;
  v542 = sub_1B06E34F4;
  v543 = sub_1B06E3508;
  v544 = sub_1B06E3510;
  v545 = sub_1B0394C24;
  v546 = sub_1B039BA2C;
  v547 = sub_1B039BA88;
  v548 = sub_1B0394C24;
  v549 = sub_1B039BBA0;
  v550 = sub_1B039BC08;
  v551 = sub_1B06E34EC;
  v552 = sub_1B03B0DF8;
  v553 = 0x786F626C69616DLL;
  v554 = sub_1B06BA324;
  v555 = sub_1B06E34FC;
  v556 = sub_1B039BCF8;
  v557 = sub_1B06BA324;
  v558 = sub_1B06E34FC;
  v559 = sub_1B039BCF8;
  v560 = sub_1B06BA324;
  v561 = sub_1B06E34FC;
  v562 = sub_1B039BCF8;
  v563 = sub_1B0398F5C;
  v564 = sub_1B0398F5C;
  v565 = sub_1B0399178;
  v566 = sub_1B0398F5C;
  v567 = sub_1B0398F5C;
  v568 = sub_1B039BA94;
  v569 = sub_1B0398F5C;
  v570 = sub_1B0398F5C;
  v571 = sub_1B0399178;
  v572 = sub_1B0398F5C;
  v573 = sub_1B0398F5C;
  v574 = sub_1B03991EC;
  v575 = sub_1B0398F5C;
  v576 = sub_1B0398F5C;
  v577 = sub_1B0399260;
  v578 = sub_1B0398F5C;
  v579 = sub_1B0398F5C;
  v580 = sub_1B03993BC;
  v581 = sub_1B0398F5C;
  v582 = sub_1B0398F5C;
  v583 = sub_1B039BCEC;
  v584 = sub_1B0398F5C;
  v585 = sub_1B0398F5C;
  v586 = sub_1B03993BC;
  v587 = sub_1B0398F5C;
  v588 = sub_1B0398F5C;
  v589 = sub_1B039BCEC;
  v590 = sub_1B0398F5C;
  v591 = sub_1B0398F5C;
  v592 = sub_1B03993BC;
  v593 = sub_1B0398F5C;
  v594 = sub_1B0398F5C;
  v595 = sub_1B039BCEC;
  v596 = "Fatal error";
  v597 = "Not enough bits to represent the passed value";
  v598 = "Swift/Integers.swift";
  v599 = "Not enough bits to represent a signed value";
  v600 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v601 = "Message/Configuration.swift";
  v602 = sub_1B039BBE8;
  v603 = sub_1B0394C24;
  v604 = sub_1B039BA2C;
  v605 = sub_1B039BA88;
  v606 = sub_1B0394C24;
  v607 = sub_1B039BBA0;
  v608 = sub_1B039BC08;
  v609 = sub_1B0398F5C;
  v610 = sub_1B0398F5C;
  v611 = sub_1B0399178;
  v612 = sub_1B0398F5C;
  v613 = sub_1B0398F5C;
  v614 = sub_1B039BA94;
  v615 = sub_1B0398F5C;
  v616 = sub_1B0398F5C;
  v617 = sub_1B0399178;
  v618 = sub_1B0398F5C;
  v619 = sub_1B0398F5C;
  v620 = sub_1B03991EC;
  v676 = 0;
  v677 = 0;
  v675 = 0;
  v674 = 0;
  v673 = 0;
  v672 = 0;
  v621 = 0;
  v657 = 0;
  v658 = 0;
  v654 = 0;
  v655 = 0;
  v622 = 0;
  v623 = _s6LoggerVMa(0);
  v624 = (*(*(v623 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v625 = &v233 - v624;
  v626 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v627 = &v233 - v626;
  v628 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v629 = &v233 - v628;
  v634 = sub_1B0E439A8();
  v635 = *(v634 - 8);
  v636 = v634 - 8;
  v640 = *(v635 + 64);
  v637 = (v640 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v633);
  v638 = &v233 - v637;
  v639 = (v640 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v641 = &v233 - v639;
  v642 = (v640 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v644 = &v233 - v642;
  v676 = v643;
  v677 = v11;
  v675 = v12;
  v674 = v13;
  v673 = v14;
  v645 = sub_1B06DE748(v14, v13, v12);
  v672 = v645;
  v671 = v645;
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E3294();
  if (sub_1B0E45748())
  {
    (*(v635 + 16))(v638, v632, v634);
    sub_1B0394784(v632, v629);
    sub_1B0394784(v629, v627);
    sub_1B03F4FD0(v629, v625);
    v185 = (v627 + *(v623 + 20));
    v256 = *v185;
    v257 = *(v185 + 1);
    sub_1B039480C(v627);
    v255 = 24;
    v267 = 7;
    v186 = swift_allocObject();
    v187 = v257;
    v260 = v186;
    *(v186 + 16) = v256;
    *(v186 + 20) = v187;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v188 = swift_allocObject();
    v189 = v257;
    v258 = v188;
    *(v188 + 16) = v256;
    *(v188 + 20) = v189;

    v266 = 32;
    v190 = swift_allocObject();
    v191 = v258;
    v268 = v190;
    *(v190 + 16) = v520;
    *(v190 + 24) = v191;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v625);
    v285 = sub_1B0E43988();
    v286 = sub_1B0E458D8();
    v264 = 17;
    v270 = swift_allocObject();
    v262 = 16;
    *(v270 + 16) = 16;
    v271 = swift_allocObject();
    v265 = 4;
    *(v271 + 16) = 4;
    v192 = swift_allocObject();
    v259 = v192;
    *(v192 + 16) = v521;
    *(v192 + 24) = 0;
    v193 = swift_allocObject();
    v194 = v259;
    v272 = v193;
    *(v193 + 16) = v522;
    *(v193 + 24) = v194;
    v273 = swift_allocObject();
    *(v273 + 16) = 0;
    v274 = swift_allocObject();
    *(v274 + 16) = 1;
    v195 = swift_allocObject();
    v196 = v260;
    v261 = v195;
    *(v195 + 16) = v523;
    *(v195 + 24) = v196;
    v197 = swift_allocObject();
    v198 = v261;
    v275 = v197;
    *(v197 + 16) = v524;
    *(v197 + 24) = v198;
    v276 = swift_allocObject();
    *(v276 + 16) = v262;
    v277 = swift_allocObject();
    *(v277 + 16) = v265;
    v199 = swift_allocObject();
    v263 = v199;
    *(v199 + 16) = v525;
    *(v199 + 24) = 0;
    v200 = swift_allocObject();
    v201 = v263;
    v278 = v200;
    *(v200 + 16) = v526;
    *(v200 + 24) = v201;
    v279 = swift_allocObject();
    *(v279 + 16) = 0;
    v280 = swift_allocObject();
    *(v280 + 16) = v265;
    v202 = swift_allocObject();
    v203 = v268;
    v269 = v202;
    *(v202 + 16) = v527;
    *(v202 + 24) = v203;
    v204 = swift_allocObject();
    v205 = v269;
    v282 = v204;
    *(v204 + 16) = v528;
    *(v204 + 24) = v205;
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v281 = sub_1B0E46A48();
    v283 = v206;

    v207 = v270;
    v208 = v283;
    *v283 = v529;
    v208[1] = v207;

    v209 = v271;
    v210 = v283;
    v283[2] = v530;
    v210[3] = v209;

    v211 = v272;
    v212 = v283;
    v283[4] = v531;
    v212[5] = v211;

    v213 = v273;
    v214 = v283;
    v283[6] = v532;
    v214[7] = v213;

    v215 = v274;
    v216 = v283;
    v283[8] = v533;
    v216[9] = v215;

    v217 = v275;
    v218 = v283;
    v283[10] = v534;
    v218[11] = v217;

    v219 = v276;
    v220 = v283;
    v283[12] = v535;
    v220[13] = v219;

    v221 = v277;
    v222 = v283;
    v283[14] = v536;
    v222[15] = v221;

    v223 = v278;
    v224 = v283;
    v283[16] = v537;
    v224[17] = v223;

    v225 = v279;
    v226 = v283;
    v283[18] = v538;
    v226[19] = v225;

    v227 = v280;
    v228 = v283;
    v283[20] = v539;
    v228[21] = v227;

    v229 = v282;
    v230 = v283;
    v283[22] = v540;
    v230[23] = v229;
    sub_1B0394964();

    if (os_log_type_enabled(v285, v286))
    {
      v231 = v621;
      v248 = sub_1B0E45D78();
      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v247 = 0;
      v249 = sub_1B03949A8(0, v246, v246);
      v250 = sub_1B03949A8(v247, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v251 = &v669;
      v669 = v248;
      v252 = &v668;
      v668 = v249;
      v253 = &v667;
      v667 = v250;
      sub_1B0394A48(0, &v669);
      sub_1B0394A48(4, v251);
      v665 = v529;
      v666 = v270;
      sub_1B03949FC(&v665, v251, v252, v253);
      v254 = v231;
      if (v231)
      {

        __break(1u);
      }

      else
      {
        v665 = v530;
        v666 = v271;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v245 = 0;
        v665 = v531;
        v666 = v272;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v244 = 0;
        v665 = v532;
        v666 = v273;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v243 = 0;
        v665 = v533;
        v666 = v274;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v242 = 0;
        v665 = v534;
        v666 = v275;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v241 = 0;
        v665 = v535;
        v666 = v276;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v240 = 0;
        v665 = v536;
        v666 = v277;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v239 = 0;
        v665 = v537;
        v666 = v278;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v238 = 0;
        v665 = v538;
        v666 = v279;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v237 = 0;
        v665 = v539;
        v666 = v280;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v236 = 0;
        v665 = v540;
        v666 = v282;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        _os_log_impl(&dword_1B0389000, v285, v286, "[%.*hhx-%.*X] APNS: Not registering.", v248, 0x17u);
        v235 = 0;
        sub_1B03998A8(v249, 0, v246);
        sub_1B03998A8(v250, v235, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v285);
    (*(v635 + 8))(v638, v634);
    v234 = v670;
    memset(v670, 0, sizeof(v670));

    memcpy(__dst, v234, sizeof(__dst));
  }

  else
  {
    v447 = *(v635 + 16);
    v448 = v635 + 16;
    v447(v644, v632, v634);
    sub_1B0394784(v632, v629);
    sub_1B0394784(v629, v627);
    sub_1B03F4FD0(v629, v625);
    v15 = (v627 + *(v623 + 20));
    v449 = *v15;
    v450 = *(v15 + 1);
    sub_1B039480C(v627);
    v472 = 24;
    v478 = 7;
    v16 = swift_allocObject();
    v17 = v450;
    v456 = v16;
    *(v16 + 16) = v449;
    *(v16 + 20) = v17;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v18 = swift_allocObject();
    v19 = v450;
    v451 = v18;
    *(v18 + 16) = v449;
    *(v18 + 20) = v19;

    v477 = 32;
    v20 = swift_allocObject();
    v21 = v451;
    v461 = v20;
    *(v20 + 16) = v541;
    *(v20 + 24) = v21;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v625);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v463 = swift_allocObject();
    *(v463 + 16) = v645;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v452 = swift_allocObject();
    *(v452 + 16) = v645;

    v22 = swift_allocObject();
    v23 = v452;
    v466 = v22;
    *(v22 + 16) = v542;
    *(v22 + 24) = v23;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v453 = swift_allocObject();
    *(v453 + 16) = v645;

    v24 = swift_allocObject();
    v25 = v453;
    v469 = v24;
    *(v24 + 16) = v543;
    *(v24 + 24) = v25;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v454 = swift_allocObject();
    *(v454 + 16) = v645;

    v26 = swift_allocObject();
    v27 = v454;
    v479 = v26;
    *(v26 + 16) = v544;
    *(v26 + 24) = v27;

    v517 = sub_1B0E43988();
    v518 = sub_1B0E45908();
    v475 = 17;
    v481 = swift_allocObject();
    v458 = 16;
    *(v481 + 16) = 16;
    v482 = swift_allocObject();
    v460 = 4;
    *(v482 + 16) = 4;
    v28 = swift_allocObject();
    v455 = v28;
    *(v28 + 16) = v521;
    *(v28 + 24) = 0;
    v29 = swift_allocObject();
    v30 = v455;
    v483 = v29;
    *(v29 + 16) = v545;
    *(v29 + 24) = v30;
    v484 = swift_allocObject();
    *(v484 + 16) = 0;
    v485 = swift_allocObject();
    *(v485 + 16) = 1;
    v31 = swift_allocObject();
    v32 = v456;
    v457 = v31;
    *(v31 + 16) = v546;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v457;
    v486 = v33;
    *(v33 + 16) = v547;
    *(v33 + 24) = v34;
    v487 = swift_allocObject();
    *(v487 + 16) = v458;
    v488 = swift_allocObject();
    *(v488 + 16) = v460;
    v35 = swift_allocObject();
    v459 = v35;
    *(v35 + 16) = v525;
    *(v35 + 24) = 0;
    v36 = swift_allocObject();
    v37 = v459;
    v489 = v36;
    *(v36 + 16) = v548;
    *(v36 + 24) = v37;
    v490 = swift_allocObject();
    *(v490 + 16) = 0;
    v491 = swift_allocObject();
    *(v491 + 16) = v460;
    v38 = swift_allocObject();
    v39 = v461;
    v462 = v38;
    *(v38 + 16) = v549;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v462;
    v492 = v40;
    *(v40 + 16) = v550;
    *(v40 + 24) = v41;
    v493 = swift_allocObject();
    *(v493 + 16) = 0;
    v494 = swift_allocObject();
    v476 = 8;
    *(v494 + 16) = 8;
    v42 = swift_allocObject();
    v43 = v463;
    v464 = v42;
    *(v42 + 16) = v551;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v464;
    v495 = v44;
    *(v44 + 16) = v552;
    *(v44 + 24) = v45;
    v496 = swift_allocObject();
    v471 = 112;
    *(v496 + 16) = 112;
    v497 = swift_allocObject();
    *(v497 + 16) = v476;
    v465 = swift_allocObject();
    *(v465 + 16) = v553;
    v46 = swift_allocObject();
    v47 = v465;
    v498 = v46;
    *(v46 + 16) = v554;
    *(v46 + 24) = v47;
    v499 = swift_allocObject();
    v474 = 37;
    *(v499 + 16) = 37;
    v500 = swift_allocObject();
    *(v500 + 16) = v476;
    v48 = swift_allocObject();
    v49 = v466;
    v467 = v48;
    *(v48 + 16) = v555;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v467;
    v501 = v50;
    *(v50 + 16) = v556;
    *(v50 + 24) = v51;
    v502 = swift_allocObject();
    *(v502 + 16) = v471;
    v503 = swift_allocObject();
    *(v503 + 16) = v476;
    v468 = swift_allocObject();
    *(v468 + 16) = v553;
    v52 = swift_allocObject();
    v53 = v468;
    v504 = v52;
    *(v52 + 16) = v557;
    *(v52 + 24) = v53;
    v505 = swift_allocObject();
    *(v505 + 16) = v474;
    v506 = swift_allocObject();
    *(v506 + 16) = v476;
    v54 = swift_allocObject();
    v55 = v469;
    v470 = v54;
    *(v54 + 16) = v558;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v470;
    v507 = v56;
    *(v56 + 16) = v559;
    *(v56 + 24) = v57;
    v508 = swift_allocObject();
    *(v508 + 16) = v471;
    v509 = swift_allocObject();
    *(v509 + 16) = v476;
    v473 = swift_allocObject();
    *(v473 + 16) = v553;
    v58 = swift_allocObject();
    v59 = v473;
    v510 = v58;
    *(v58 + 16) = v560;
    *(v58 + 24) = v59;
    v511 = swift_allocObject();
    *(v511 + 16) = v474;
    v512 = swift_allocObject();
    *(v512 + 16) = v476;
    v60 = swift_allocObject();
    v61 = v479;
    v480 = v60;
    *(v60 + 16) = v561;
    *(v60 + 24) = v61;
    v62 = swift_allocObject();
    v63 = v480;
    v514 = v62;
    *(v62 + 16) = v562;
    *(v62 + 24) = v63;
    v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v513 = sub_1B0E46A48();
    v515 = v64;

    v65 = v481;
    v66 = v515;
    *v515 = v563;
    v66[1] = v65;

    v67 = v482;
    v68 = v515;
    v515[2] = v564;
    v68[3] = v67;

    v69 = v483;
    v70 = v515;
    v515[4] = v565;
    v70[5] = v69;

    v71 = v484;
    v72 = v515;
    v515[6] = v566;
    v72[7] = v71;

    v73 = v485;
    v74 = v515;
    v515[8] = v567;
    v74[9] = v73;

    v75 = v486;
    v76 = v515;
    v515[10] = v568;
    v76[11] = v75;

    v77 = v487;
    v78 = v515;
    v515[12] = v569;
    v78[13] = v77;

    v79 = v488;
    v80 = v515;
    v515[14] = v570;
    v80[15] = v79;

    v81 = v489;
    v82 = v515;
    v515[16] = v571;
    v82[17] = v81;

    v83 = v490;
    v84 = v515;
    v515[18] = v572;
    v84[19] = v83;

    v85 = v491;
    v86 = v515;
    v515[20] = v573;
    v86[21] = v85;

    v87 = v492;
    v88 = v515;
    v515[22] = v574;
    v88[23] = v87;

    v89 = v493;
    v90 = v515;
    v515[24] = v575;
    v90[25] = v89;

    v91 = v494;
    v92 = v515;
    v515[26] = v576;
    v92[27] = v91;

    v93 = v495;
    v94 = v515;
    v515[28] = v577;
    v94[29] = v93;

    v95 = v496;
    v96 = v515;
    v515[30] = v578;
    v96[31] = v95;

    v97 = v497;
    v98 = v515;
    v515[32] = v579;
    v98[33] = v97;

    v99 = v498;
    v100 = v515;
    v515[34] = v580;
    v100[35] = v99;

    v101 = v499;
    v102 = v515;
    v515[36] = v581;
    v102[37] = v101;

    v103 = v500;
    v104 = v515;
    v515[38] = v582;
    v104[39] = v103;

    v105 = v501;
    v106 = v515;
    v515[40] = v583;
    v106[41] = v105;

    v107 = v502;
    v108 = v515;
    v515[42] = v584;
    v108[43] = v107;

    v109 = v503;
    v110 = v515;
    v515[44] = v585;
    v110[45] = v109;

    v111 = v504;
    v112 = v515;
    v515[46] = v586;
    v112[47] = v111;

    v113 = v505;
    v114 = v515;
    v515[48] = v587;
    v114[49] = v113;

    v115 = v506;
    v116 = v515;
    v515[50] = v588;
    v116[51] = v115;

    v117 = v507;
    v118 = v515;
    v515[52] = v589;
    v118[53] = v117;

    v119 = v508;
    v120 = v515;
    v515[54] = v590;
    v120[55] = v119;

    v121 = v509;
    v122 = v515;
    v515[56] = v591;
    v122[57] = v121;

    v123 = v510;
    v124 = v515;
    v515[58] = v592;
    v124[59] = v123;

    v125 = v511;
    v126 = v515;
    v515[60] = v593;
    v126[61] = v125;

    v127 = v512;
    v128 = v515;
    v515[62] = v594;
    v128[63] = v127;

    v129 = v514;
    v130 = v515;
    v515[64] = v595;
    v130[65] = v129;
    sub_1B0394964();

    if (os_log_type_enabled(v517, v518))
    {
      v131 = v621;
      v440 = sub_1B0E45D78();
      v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v441 = sub_1B03949A8(0, v439, v439);
      v442 = sub_1B03949A8(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v443 = &v651;
      v651 = v440;
      v444 = &v650;
      v650 = v441;
      v445 = &v649;
      v649 = v442;
      sub_1B0394A48(3, &v651);
      sub_1B0394A48(11, v443);
      v647 = v563;
      v648 = v481;
      sub_1B03949FC(&v647, v443, v444, v445);
      v446 = v131;
      if (v131)
      {

        __break(1u);
      }

      else
      {
        v647 = v564;
        v648 = v482;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v437 = 0;
        v647 = v565;
        v648 = v483;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v436 = 0;
        v647 = v566;
        v648 = v484;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v435 = 0;
        v647 = v567;
        v648 = v485;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v434 = 0;
        v647 = v568;
        v648 = v486;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v433 = 0;
        v647 = v569;
        v648 = v487;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v432 = 0;
        v647 = v570;
        v648 = v488;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v431 = 0;
        v647 = v571;
        v648 = v489;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v430 = 0;
        v647 = v572;
        v648 = v490;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v429 = 0;
        v647 = v573;
        v648 = v491;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v428 = 0;
        v647 = v574;
        v648 = v492;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v427 = 0;
        v647 = v575;
        v648 = v493;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v426 = 0;
        v647 = v576;
        v648 = v494;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v425 = 0;
        v647 = v577;
        v648 = v495;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v424 = 0;
        v647 = v578;
        v648 = v496;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v423 = 0;
        v647 = v579;
        v648 = v497;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v422 = 0;
        v647 = v580;
        v648 = v498;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v421 = 0;
        v647 = v581;
        v648 = v499;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v420 = 0;
        v647 = v582;
        v648 = v500;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v419 = 0;
        v647 = v583;
        v648 = v501;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v418 = 0;
        v647 = v584;
        v648 = v502;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v417 = 0;
        v647 = v585;
        v648 = v503;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v416 = 0;
        v647 = v586;
        v648 = v504;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v415 = 0;
        v647 = v587;
        v648 = v505;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v414 = 0;
        v647 = v588;
        v648 = v506;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v413 = 0;
        v647 = v589;
        v648 = v507;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v412 = 0;
        v647 = v590;
        v648 = v508;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v411 = 0;
        v647 = v591;
        v648 = v509;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v410 = 0;
        v647 = v592;
        v648 = v510;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v409 = 0;
        v647 = v593;
        v648 = v511;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v408 = 0;
        v647 = v594;
        v648 = v512;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v407 = 0;
        v647 = v595;
        v648 = v514;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v406 = 0;
        _os_log_impl(&dword_1B0389000, v517, v518, "[%.*hhx-%.*X] APNS: %ld mailbox(es) {'%{sensitive,mask.mailbox}s', '%{sensitive,mask.mailbox}s', '%{sensitive,mask.mailbox}s'}", v440, 0x5Du);
        sub_1B03998A8(v441, 0, v439);
        sub_1B03998A8(v442, 3, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v438 = v406;
      }
    }

    else
    {
      v132 = v621;

      v438 = v132;
    }

    v402 = v438;
    MEMORY[0x1E69E5920](v517);
    v403 = *(v635 + 8);
    v404 = v635 + 8;
    v403(v644, v634);
    v405 = [objc_opt_self() sharedManager];
    if (v405)
    {
      v401 = v405;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v399 = v401;
    swift_getObjectType();
    v400 = [v399 copyDeviceToken];
    if (v400)
    {
      v398 = v400;
      v393 = v400;
      v394 = sub_1B0E42F38();
      v395 = v133;
      MEMORY[0x1E69E5920](v393);
      v396 = v394;
      v397 = v395;
    }

    else
    {
      v396 = 0;
      v397 = 0xF000000000000000;
    }

    v391 = v397;
    v392 = v396;
    if ((v397 & 0xF000000000000000) == 0xF000000000000000)
    {
      swift_unknownObjectRelease();
      v388 = 0;
    }

    else
    {
      v389 = v392;
      v390 = v391;
      v385 = v391;
      v386 = v392;
      v387 = sub_1B0E42F18();
      sub_1B0391D50(v386, v385);
      swift_unknownObjectRelease();
      v388 = v387;
    }

    v384 = v388;
    if (v388)
    {
      v383 = v384;
      v377 = v384;
      v378 = [v384 ef_hexString];
      v379 = sub_1B0E44AD8();
      v380 = v134;
      MEMORY[0x1E69E5920](v377);
      MEMORY[0x1E69E5920](v378);
      v381 = v379;
      v382 = v380;
    }

    else
    {
      v381 = 0;
      v382 = 0;
    }

    v375 = v382;
    v376 = v381;
    if (v382)
    {
      v373 = v376;
      v374 = v375;
      v370 = v375;
      v371 = v376;
      v657 = v376;
      v658 = v375;
      v372 = MFUserAgent();
      if (v372)
      {
        v369 = v372;
      }

      else
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v367 = v369;
      swift_getObjectType();
      v368 = [v367 isMaild];
      swift_unknownObjectRelease();
      if (v368)
      {
        v362 = *MEMORY[0x1E69B17F0];
        MEMORY[0x1E69E5928](v362);
        v363 = sub_1B0E44AD8();
        v364 = v135;
        MEMORY[0x1E69E5920](v362);
        v365 = v363;
        v366 = v364;
      }

      else
      {
        v360 = [objc_opt_self() mainBundle];
        v361 = [v360 bundleIdentifier];
        if (v361)
        {
          v359 = v361;
          v354 = v361;
          v355 = sub_1B0E44AD8();
          v356 = v136;
          MEMORY[0x1E69E5920](v354);
          v357 = v355;
          v358 = v356;
        }

        else
        {
          v357 = 0;
          v358 = 0;
        }

        v353 = v358;
        v352 = v357;
        MEMORY[0x1E69E5920](v360);
        v365 = v352;
        v366 = v353;
      }

      v350 = v366;
      v351 = v365;
      if (v366)
      {
        v348 = v351;
        v349 = v350;
        v345 = v350;
        v346 = v351;
        v654 = v351;
        v655 = v350;
        [v633 apsVersion];
        sub_1B041A044();
        v347 = v137;
        if (v137 < 0xFFFFFFFF80000000)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        if (v347 > 0x7FFFFFFF)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v340 = v347;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v341 = v678;
        PushRegistrationInfo.init(apsVersion:accountID:deviceToken:subtopic:mailboxes:)(v340, v643, v630, v371, v370, v346, v345, v645, v678);
        v342 = v652;
        v344 = 64;
        memcpy(v652, v341, sizeof(v652));
        v343 = v653;
        memcpy(v653, v652, sizeof(v653));
        memcpy(__dst, v653, sizeof(__dst));
      }

      else
      {
        v339 = v656;
        memset(v656, 0, sizeof(v656));

        memcpy(__dst, v339, sizeof(__dst));
      }
    }

    else
    {
      v447(v641, v632, v634);
      sub_1B0394784(v632, v629);
      sub_1B0394784(v629, v627);
      sub_1B03F4FD0(v629, v625);
      v138 = (v627 + *(v623 + 20));
      v309 = *v138;
      v310 = *(v138 + 1);
      sub_1B039480C(v627);
      v308 = 24;
      v320 = 7;
      v139 = swift_allocObject();
      v140 = v310;
      v313 = v139;
      *(v139 + 16) = v309;
      *(v139 + 20) = v140;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v141 = swift_allocObject();
      v142 = v310;
      v311 = v141;
      *(v141 + 16) = v309;
      *(v141 + 20) = v142;

      v319 = 32;
      v143 = swift_allocObject();
      v144 = v311;
      v321 = v143;
      *(v143 + 16) = v602;
      *(v143 + 24) = v144;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v625);
      v337 = sub_1B0E43988();
      v338 = sub_1B0E458E8();
      v317 = 17;
      v323 = swift_allocObject();
      v315 = 16;
      *(v323 + 16) = 16;
      v324 = swift_allocObject();
      v318 = 4;
      *(v324 + 16) = 4;
      v145 = swift_allocObject();
      v312 = v145;
      *(v145 + 16) = v521;
      *(v145 + 24) = 0;
      v146 = swift_allocObject();
      v147 = v312;
      v325 = v146;
      *(v146 + 16) = v603;
      *(v146 + 24) = v147;
      v326 = swift_allocObject();
      *(v326 + 16) = 0;
      v327 = swift_allocObject();
      *(v327 + 16) = 1;
      v148 = swift_allocObject();
      v149 = v313;
      v314 = v148;
      *(v148 + 16) = v604;
      *(v148 + 24) = v149;
      v150 = swift_allocObject();
      v151 = v314;
      v328 = v150;
      *(v150 + 16) = v605;
      *(v150 + 24) = v151;
      v329 = swift_allocObject();
      *(v329 + 16) = v315;
      v330 = swift_allocObject();
      *(v330 + 16) = v318;
      v152 = swift_allocObject();
      v316 = v152;
      *(v152 + 16) = v525;
      *(v152 + 24) = 0;
      v153 = swift_allocObject();
      v154 = v316;
      v331 = v153;
      *(v153 + 16) = v606;
      *(v153 + 24) = v154;
      v332 = swift_allocObject();
      *(v332 + 16) = 0;
      v333 = swift_allocObject();
      *(v333 + 16) = v318;
      v155 = swift_allocObject();
      v156 = v321;
      v322 = v155;
      *(v155 + 16) = v607;
      *(v155 + 24) = v156;
      v157 = swift_allocObject();
      v158 = v322;
      v335 = v157;
      *(v157 + 16) = v608;
      *(v157 + 24) = v158;
      v334 = sub_1B0E46A48();
      v336 = v159;

      v160 = v323;
      v161 = v336;
      *v336 = v609;
      v161[1] = v160;

      v162 = v324;
      v163 = v336;
      v336[2] = v610;
      v163[3] = v162;

      v164 = v325;
      v165 = v336;
      v336[4] = v611;
      v165[5] = v164;

      v166 = v326;
      v167 = v336;
      v336[6] = v612;
      v167[7] = v166;

      v168 = v327;
      v169 = v336;
      v336[8] = v613;
      v169[9] = v168;

      v170 = v328;
      v171 = v336;
      v336[10] = v614;
      v171[11] = v170;

      v172 = v329;
      v173 = v336;
      v336[12] = v615;
      v173[13] = v172;

      v174 = v330;
      v175 = v336;
      v336[14] = v616;
      v175[15] = v174;

      v176 = v331;
      v177 = v336;
      v336[16] = v617;
      v177[17] = v176;

      v178 = v332;
      v179 = v336;
      v336[18] = v618;
      v179[19] = v178;

      v180 = v333;
      v181 = v336;
      v336[20] = v619;
      v181[21] = v180;

      v182 = v335;
      v183 = v336;
      v336[22] = v620;
      v183[23] = v182;
      sub_1B0394964();

      if (os_log_type_enabled(v337, v338))
      {
        v184 = v402;
        v301 = sub_1B0E45D78();
        v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v300 = 0;
        v302 = sub_1B03949A8(0, v299, v299);
        v303 = sub_1B03949A8(v300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v304 = &v663;
        v663 = v301;
        v305 = &v662;
        v662 = v302;
        v306 = &v661;
        v661 = v303;
        sub_1B0394A48(0, &v663);
        sub_1B0394A48(4, v304);
        v659 = v609;
        v660 = v323;
        sub_1B03949FC(&v659, v304, v305, v306);
        v307 = v184;
        if (v184)
        {

          __break(1u);
        }

        else
        {
          v659 = v610;
          v660 = v324;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v298 = 0;
          v659 = v611;
          v660 = v325;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v297 = 0;
          v659 = v612;
          v660 = v326;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v296 = 0;
          v659 = v613;
          v660 = v327;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v295 = 0;
          v659 = v614;
          v660 = v328;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v294 = 0;
          v659 = v615;
          v660 = v329;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v293 = 0;
          v659 = v616;
          v660 = v330;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v292 = 0;
          v659 = v617;
          v660 = v331;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v291 = 0;
          v659 = v618;
          v660 = v332;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v290 = 0;
          v659 = v619;
          v660 = v333;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v289 = 0;
          v659 = v620;
          v660 = v335;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          _os_log_impl(&dword_1B0389000, v337, v338, "[%.*hhx-%.*X] APNS: no device token", v301, 0x17u);
          v288 = 0;
          sub_1B03998A8(v302, 0, v299);
          sub_1B03998A8(v303, v288, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v337);
      v403(v641, v634);
      v287 = v664;
      memset(v664, 0, sizeof(v664));

      memcpy(__dst, v287, sizeof(__dst));
    }
  }

  return memcpy(v519, __dst, 0x40uLL);
}