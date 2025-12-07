uint64_t sub_100083888()
{
  sub_100004304();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_100005224();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1000839AC()
{
  sub_100004304();
  swift_task_alloc();
  sub_100006180();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1000834C4;
  v3 = sub_100004320();

  return v4(v3);
}

uint64_t sub_100083A5C(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_100101A10, &qword_1000C4E18);
  sub_100002EE0(v2);

  return sub_100078C1C(a1);
}

unint64_t sub_100083AE4()
{
  result = qword_100101A18;
  if (!qword_100101A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101A18);
  }

  return result;
}

uint64_t sub_100083B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_100100028, &qword_1000C12A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SidebarView.SidebarError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100083CAC(uint64_t a1)
{
  result = type metadata accessor for RootNavigationDestination();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SidebarView.DataSource(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100083D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100083D6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100083DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100083E0C(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100083EAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a3 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v7 + 80);
  v16 = *(v12 + 80);
  if (v8)
  {
    v17 = *(*(v6 - 8) + 64);
  }

  else
  {
    v17 = *(*(v6 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + ((v15 + 16) & ~v15);
  v19 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_34;
  }

  v20 = ((v16 + v18 + 1) & ~v16) + *(*(v11 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_34:
      if (v10 >= v13)
      {
        v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v31 = sub_10000AB80((v29 + v15 + 8) & ~v15, v8, v6);
          if (v31 >= 2)
          {
            return v31 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v30 = *v29;
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          return (v30 + 1);
        }
      }

      else
      {
        v28 = (a1 + v16 + v18 + 1) & ~v16;

        return sub_10000AB80(v28, v13, v11);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void sub_100084114(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a4 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(v9 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v19;
  }

  v20 = v18 + v19;
  v21 = *(v14 + 80);
  v22 = ((v21 + v18 + v19 + 1) & ~v21) + *(v14 + 64);
  v23 = 8 * v22;
  v24 = a3 >= v16;
  v25 = a3 - v16;
  if (v25 != 0 && v24)
  {
    if (v22 <= 3)
    {
      v26 = ((v25 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v26))
      {
        v7 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v7 = v27;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }
  }

  if (v16 < a2)
  {
    v28 = ~v16 + a2;
    if (v22 < 4)
    {
      v29 = (v28 >> v23) + 1;
      if (v22)
      {
        v30 = v28 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else if (v22 == 2)
        {
          *a1 = v30;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v28;
      v29 = 1;
    }

    switch(v7)
    {
      case 1:
        a1[v22] = v29;
        break;
      case 2:
        *&a1[v22] = v29;
        break;
      case 3:
        goto LABEL_78;
      case 4:
        *&a1[v22] = v29;
        break;
      default:
        return;
    }

    return;
  }

  switch(v7)
  {
    case 1:
      a1[v22] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 2:
      *&a1[v22] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 3:
LABEL_78:
      __break(1u);
      return;
    case 4:
      *&a1[v22] = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v12 < v15)
      {
        v31 = &a1[v21 + 1 + v20] & ~v21;
        v10 = v15;
        v8 = v13;
LABEL_38:

        sub_1000042A8(v31, a2, v10, v8);
        return;
      }

      if (v12 >= a2)
      {
        v35 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v11 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v36 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v36 = (a2 - 1);
          }

          *v35 = v36;
          return;
        }

        a1 = ((v35 + v17 + 8) & ~v17);
        if (v11 >= a2)
        {
          a2 = (a2 + 1);
          v31 = (v35 + v17 + 8) & ~v17;
          goto LABEL_38;
        }

        if (v19 <= 3)
        {
          v37 = ~(-1 << (8 * v19));
        }

        else
        {
          v37 = -1;
        }

        if (v19)
        {
          v33 = v37 & (~v11 + a2);
          if (v19 <= 3)
          {
            v38 = v19;
          }

          else
          {
            v38 = 4;
          }

          bzero(a1, v19);
          switch(v38)
          {
            case 2:
LABEL_71:
              *a1 = v33;
              break;
            case 3:
LABEL_75:
              *a1 = v33;
              a1[2] = BYTE2(v33);
              break;
            case 4:
LABEL_76:
              *a1 = v33;
              break;
            default:
LABEL_50:
              *a1 = v33;
              break;
          }
        }
      }

      else
      {
        if (v20 <= 3)
        {
          v32 = ~(-1 << (8 * v20));
        }

        else
        {
          v32 = -1;
        }

        if (v20)
        {
          v33 = v32 & (~v12 + a2);
          if (v20 <= 3)
          {
            v34 = v20;
          }

          else
          {
            v34 = 4;
          }

          bzero(a1, v20);
          switch(v34)
          {
            case 2:
              goto LABEL_71;
            case 3:
              goto LABEL_75;
            case 4:
              goto LABEL_76;
            default:
              goto LABEL_50;
          }
        }
      }

      return;
  }
}

unint64_t sub_100084548()
{
  result = qword_100101C58;
  if (!qword_100101C58)
  {
    sub_100041CB4(&qword_100101C60, qword_1000C5008);
    sub_100041CB4(&qword_100101750, &qword_1000C4A18);
    sub_100041CB4(&qword_100101780, &qword_1000C4AC8);
    sub_100041CB4(&qword_100101788, &qword_1000C4AD0);
    sub_100081A34();
    swift_getOpaqueTypeConformance2();
    sub_100081C98();
    swift_getOpaqueTypeConformance2();
    sub_100009C48(&qword_100101C68, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101C58);
  }

  return result;
}

unint64_t sub_1000846D0()
{
  result = qword_100101C70;
  if (!qword_100101C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101C70);
  }

  return result;
}

uint64_t sub_100084810(uint64_t a1)
{

  return sub_10000AB80(v1, 1, a1);
}

uint64_t sub_10008483C(uint64_t a1)
{
  v4 = v2 + *(a1 + 32);

  return sub_10000AB80(v4, 1, v1);
}

uint64_t sub_10008485C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000848A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_100090480();
    v8 = sub_10008FDFC(v5, v6, v7);
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_100090480();
      v12 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v9 = v8 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v22[0] = a1;
        v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v12 = *(v22 + v9);
        if (*(v22 + v9) < 0)
        {
          sub_10000573C();
          switch(v15)
          {
            case 1:
LABEL_14:
              v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v16 = v13[1];
              v17 = v13[2];
              v18 = ((v12 & 0xF) << 12) | ((v16 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v19 = v13[1];
              v20 = v13[2];
              v17 = v13[3];
              v18 = ((v12 & 0xF) << 18) | ((v19 & 0x3F) << 12) | ((v20 & 0x3F) << 6);
LABEL_17:
              v12 = v18 & 0xFFFFFFC0 | v17 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v10 = _StringObject.sharedUTF8.getter();
        }

        v11 = *(v10 + v9);
        v12 = *(v10 + v9);
        if (v11 < 0)
        {
          sub_10000573C();
          switch(v14)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v22[0]) = v2 == 0;
  return v12 | ((v2 == 0) << 32);
}

uint64_t sub_100084A40@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_1000042A8(a3, v8, 1, v7);
}

void sub_100084AEC()
{
  sub_1000043AC();
  sub_100006BA8();
  v5 = sub_10002E87C(&qword_100100008, &unk_1000C4690);
  sub_100002EE0(v5);
  sub_100005B90();
  __chkstk_darwin(v6);
  sub_100007B14();
  sub_10009048C();
  v7 = type metadata accessor for TaskPriority();
  v8 = sub_100004718();
  v10 = sub_10000AB80(v8, v9, v7);

  if (v10 == 1)
  {
    sub_1000069B0(v1, &qword_100100008, &unk_1000C4690);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100007A30();
    (*(v11 + 8))(v1, v7);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1000069B0(v3, &qword_100100008, &unk_1000C4690);
    sub_1000060B8();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_1000060B8();
  v13 = swift_allocObject();
  sub_1000070E4(v13);
  swift_task_create();

  sub_1000069B0(v3, &qword_100100008, &unk_1000C4690);

LABEL_9:
  sub_100002EEC();
}

void sub_100084D68()
{
  sub_1000043AC();
  sub_100006BA8();
  v5 = sub_10002E87C(&qword_100100008, &unk_1000C4690);
  sub_100002EE0(v5);
  sub_100005B90();
  __chkstk_darwin(v6);
  sub_100007B14();
  sub_10009048C();
  v7 = type metadata accessor for TaskPriority();
  v8 = sub_100004718();
  v10 = sub_10000AB80(v8, v9, v7);

  if (v10 == 1)
  {
    sub_1000069B0(v1, &qword_100100008, &unk_1000C4690);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100007A30();
    (*(v11 + 8))(v1, v7);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1000069B0(v3, &qword_100100008, &unk_1000C4690);
    sub_1000060B8();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_1000060B8();
  v13 = swift_allocObject();
  sub_1000070E4(v13);
  swift_task_create();

  sub_1000069B0(v3, &qword_100100008, &unk_1000C4690);

LABEL_9:
  sub_100002EEC();
}

void sub_100084FDC(uint64_t a1)
{
  type metadata accessor for WFWorkflowTypeName(0);
  sub_10008D948(&unk_100101F70, type metadata accessor for WFWorkflowTypeName, &unk_1000C0B38);
  v2 = Set.init(minimumCapacity:)();
  v3 = 0;
  v6[1] = v2;
  v4 = *(a1 + 16);
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    v5 = v3 + 1;
    sub_10008DBA8(v6, *(a1 + 8 * v3 + 32));

    v3 = v5;
  }

  __break(1u);
}

uint64_t sub_1000850C0(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_10008DD4C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_100085180(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  sub_10008D948(&qword_100101E90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v9 = Set.init(minimumCapacity:)();
  v20 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19 = a1;
    v15 = a1 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v6, v15, v2);
      sub_10008DE98(v8, v6);
      (*(v11 - 8))(v8, v2);
      v15 += v16;
      --v10;
    }

    while (v10);

    return v20;
  }

  else
  {
    v17 = v9;
  }

  return v17;
}

Class sub_10008585C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ShortcutChiclet.MenuItemModel.ItemVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ButtonRole();
  v80 = *(v7 - 8);
  __chkstk_darwin(v7);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10002E87C(&qword_100101F18, &qword_1000C5388);
  __chkstk_darwin(v74);
  v77 = (&v57 - v9);
  v10 = sub_10002E87C(&qword_100101ED0, &qword_1000C4AE0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v79 = &v57 - v15;
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  v75 = type metadata accessor for ShortcutChiclet.MenuItem();
  v86 = *(v75 - 8);
  __chkstk_darwin(v75);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v21 = Strong;
  sub_10008642C();
  v88 = _swiftEmptyArrayStorage;
  v85 = v22[2];
  if (!v85)
  {

    v25 = 0;
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v78 = v17;
  v65 = v13;
  v57 = v21;
  v71 = v6;
  v23 = 0;
  v24 = 0;
  v84 = v22 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v83 = v86 + 16;
  v82 = v86 + 88;
  v81 = enum case for ShortcutChiclet.MenuItem.item(_:);
  v64 = (v86 + 8);
  v70 = enum case for ShortcutChiclet.MenuItem.divider(_:);
  v69 = (v86 + 96);
  v58 = (v80 + 32);
  v63 = v80 + 8;
  v68 = (v4 + 88);
  v67 = enum case for ShortcutChiclet.MenuItemModel.ItemVariant.button(_:);
  v62 = (v4 + 96);
  v61 = (v4 + 8);
  v60 = enum case for ShortcutChiclet.MenuItemModel.ItemVariant.toggle(_:);
  v72 = v3;
  v66 = _swiftEmptyArrayStorage;
  v73 = v7;
  v25 = v77;
  v26 = v79;
  v27 = v75;
  v21 = v22;
  v76 = v22;
  do
  {
    if (v24 >= v21[2])
    {
      __break(1u);
      goto LABEL_42;
    }

    v28 = v86;
    (*(v86 + 16))(v19, &v84[*(v86 + 72) * v24], v27);
    v29 = (*(v28 + 88))(v19, v27);
    if (v29 != v81)
    {
      if (v29 == v70)
      {
        if (v23)
        {
          v32 = v23;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v66 = v88;
          v26 = v79;
          v21 = v76;
        }

        sub_100002FC4(0, &unk_100101F20, UIMenu_ptr);
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        v89.value.super.isa = 0;
        v89.is_nil = 0;
        isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v33, 0, v89, 1, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v56).super.super.isa;

        v23 = isa;
      }

      else
      {
        (*v64)(v19, v27);
      }

      goto LABEL_32;
    }

    v80 = v23;
    (*v69)(v19, v27);
    v30 = v78;
    ShortcutChiclet.MenuItemModel.role.getter();
    static ButtonRole.destructive.getter();
    sub_1000042A8(v26, 0, 1, v7);
    v31 = *(v74 + 48);
    sub_1000102AC(v30, v25, &qword_100101ED0, &qword_1000C4AE0);
    sub_1000102AC(v26, v25 + v31, &qword_100101ED0, &qword_1000C4AE0);
    if (sub_10000AB80(v25, 1, v7) != 1)
    {
      v35 = v65;
      sub_1000102AC(v25, v65, &qword_100101ED0, &qword_1000C4AE0);
      if (sub_10000AB80(v25 + v31, 1, v7) != 1)
      {
        v36 = v59;
        (*v58)(v59, v25 + v31, v7);
        sub_10008D948(&qword_100101F30, &type metadata accessor for ButtonRole, &protocol conformance descriptor for ButtonRole);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = *v63;
        (*v63)(v36, v7);
        sub_1000069B0(v79, &qword_100101ED0, &qword_1000C4AE0);
        sub_1000069B0(v78, &qword_100101ED0, &qword_1000C4AE0);
        v37(v35, v7);
        sub_1000069B0(v77, &qword_100101ED0, &qword_1000C4AE0);
        goto LABEL_20;
      }

      sub_1000069B0(v26, &qword_100101ED0, &qword_1000C4AE0);
      sub_1000069B0(v78, &qword_100101ED0, &qword_1000C4AE0);
      (*v63)(v35, v7);
LABEL_17:
      sub_1000069B0(v25, &qword_100101F18, &qword_1000C5388);
      goto LABEL_20;
    }

    sub_1000069B0(v26, &qword_100101ED0, &qword_1000C4AE0);
    sub_1000069B0(v30, &qword_100101ED0, &qword_1000C4AE0);
    if (sub_10000AB80(v25 + v31, 1, v7) != 1)
    {
      goto LABEL_17;
    }

    sub_1000069B0(v25, &qword_100101ED0, &qword_1000C4AE0);
LABEL_20:
    v38 = v71;
    dispatch thunk of ShortcutChiclet.MenuItemModel.variant.getter();
    v39 = v72;
    v40 = (*v68)(v38, v72);
    if (v40 == v67)
    {
      (*v61)(v38, v39);
    }

    else
    {
      if (v40 != v60)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*v62)(v38, v39);
      dispatch thunk of LibraryMenuItem.ToggleModel.isSelected.getter();
    }

    sub_100002FC4(0, &qword_100100C60, UIAction_ptr);
    ShortcutChiclet.MenuItemModel.name.getter();
    sub_100002FC4(0, &qword_100100110, UIImage_ptr);
    v41 = ShortcutChiclet.MenuItemModel.symbol.getter();
    sub_100007B58(v41, v42);

    v43 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v44 = v43;
    v45 = v80;
    if (v80)
    {
      v46 = [v80 children];
      sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);
      v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = v47;
      v48 = v44;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = v73;
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v49 = Array._bridgeToObjectiveC()().super.isa;

      v50 = [v45 menuByReplacingChildren:v49];

      v23 = v50;
    }

    else
    {
      v51 = v43;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = v73;
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v23 = 0;
      v66 = v88;
    }

    v21 = v76;
    v25 = v77;
    v26 = v79;
    v27 = v75;
LABEL_32:
    ++v24;
  }

  while (v85 != v24);

  if (v23)
  {
    v25 = v23;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v21 = v57;
    if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_35:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = v88;
      goto LABEL_39;
    }

LABEL_42:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_35;
  }

  v25 = 0;
  v21 = v57;
  v52 = v66;
LABEL_39:
  sub_100002FC4(0, &unk_100101F20, UIMenu_ptr);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v90.value.super.isa = 0;
  v90.is_nil = 0;
  v53 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v54, 0, v90, 0, 0xFFFFFFFFFFFFFFFFLL, v52, v56).super.super.isa;

  return v53;
}

void sub_10008642C()
{
  sub_1000043AC();
  v1 = v0;
  v123 = type metadata accessor for LibraryMenuItem.Attributes();
  sub_100004458();
  v139 = v2;
  __chkstk_darwin(v3);
  sub_100003EF4();
  v122 = v4 - v5;
  __chkstk_darwin(v6);
  sub_100005184();
  v121 = v7;
  v8 = sub_10002E87C(&qword_100101ED0, &qword_1000C4AE0);
  sub_100002EE0(v8);
  sub_100005B90();
  __chkstk_darwin(v9);
  v120 = v101 - v10;
  sub_1000042F8();
  v106 = type metadata accessor for Logger();
  sub_100004458();
  v137 = v11;
  __chkstk_darwin(v12);
  sub_1000039BC();
  v15 = v14 - v13;
  v16 = type metadata accessor for LibraryMenuItem.ItemVariant();
  sub_100004458();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000039BC();
  v125 = (v21 - v20);
  sub_1000042F8();
  v124 = type metadata accessor for ShortcutChiclet.MenuItemModel.ItemVariant();
  sub_100004458();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100003EF4();
  v119 = v25 - v26;
  __chkstk_darwin(v27);
  sub_100005184();
  v140 = v28;
  sub_1000042F8();
  v141 = type metadata accessor for ShortcutChiclet.MenuItem();
  sub_100004458();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_100003EF4();
  v138 = (v32 - v33);
  __chkstk_darwin(v34);
  sub_100005184();
  v132 = v35;
  sub_1000042F8();
  v36 = type metadata accessor for AggregatedEntry();
  sub_100004458();
  v38 = v37;
  __chkstk_darwin(v39);
  sub_1000039BC();
  v42 = v41 - v40;
  *(v41 - v40) = v1;
  (*(v38 + 104))(v41 - v40, enum case for AggregatedEntry.appShortcut(_:), v36);
  v43 = v1;
  sub_100088AC4();
  v45 = v44;
  (*(v38 + 8))(v42, v36);
  v131 = sub_10000D55C(v45);
  if (!v131)
  {
LABEL_31:

    sub_100002EEC();
    return;
  }

  v46 = 0;
  v130 = v45 & 0xC000000000000001;
  v107 = v45 & 0xFFFFFFFFFFFFFF8;
  v110 = enum case for ShortcutChiclet.MenuItem.divider(_:);
  v133 = v30 + 32;
  v134 = (v30 + 104);
  v128 = (v18 + 88);
  v127 = enum case for LibraryMenuItem.ItemVariant.button(_:);
  v109 = enum case for LibraryMenuItem.ItemVariant.toggle(_:);
  v105 = enum case for LibraryMenuItem.ItemVariant.submenu(_:);
  v104 = v18 + 8;
  v103 = WFLogCategoryGeneral;
  v102 = v137 + 8;
  v116 = v18 + 96;
  v101[1] = enum case for ShortcutChiclet.MenuItemModel.ItemVariant.toggle(_:);
  v115 = v23 + 104;
  v114 = (v139 + 8);
  v113 = v23 + 16;
  v108 = enum case for ShortcutChiclet.MenuItemModel.ItemVariant.button(_:);
  v112 = v23 + 8;
  v111 = enum case for ShortcutChiclet.MenuItem.item(_:);
  v47 = _swiftEmptyArrayStorage;
  v118 = v15;
  v117 = v16;
  v48 = v125;
  v49 = v30;
  v126 = v30;
  v129 = v45;
  while (1)
  {
    if (v130)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v46 >= *(v107 + 16))
      {
        goto LABEL_33;
      }
    }

    if (__OFADD__(v46, 1))
    {
      break;
    }

    v139 = v46 + 1;
    if (LibraryMenuItem.hasSeparator.getter())
    {
      (*v134)(v132, v110, v141);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100090474();
        v47 = sub_10008D3E8(v93, v94, v95, v96);
      }

      v51 = *(v47 + 2);
      v50 = *(v47 + 3);
      if (v51 >= v50 >> 1)
      {
        sub_100005E38(v50);
        sub_100090474();
        v47 = sub_10008D3E8(v97, v98, v99, v100);
      }

      *(v47 + 2) = v51 + 1;
      sub_100003A3C();
      (*(v49 + 32))(&v47[v52 + *(v49 + 72) * v51], v132, v141);
    }

    dispatch thunk of LibraryMenuItem.variant.getter();
    v53 = (*v128)(v48, v16);
    if (v53 == v127)
    {
      v54 = sub_100005D2C();
      v55(v54);
      *v140 = *v48;
LABEL_18:
      sub_100006330();
      v58();
      v59 = LibraryMenuItem.title.getter();
      v136 = v60;
      v137 = v59;
      v135 = LibraryMenuItem.symbolName.getter();
      v61 = v121;
      LibraryMenuItem.attributes.getter();
      v62 = v122;
      static LibraryMenuItem.Attributes.destructive.getter();
      sub_100005268();
      sub_10008D948(&qword_100101E50, v63, &protocol conformance descriptor for LibraryMenuItem.Attributes);
      v64 = v123;
      v65 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v66 = *v114;
      (*v114)(v62, v64);
      v66(v61, v64);
      if (v65)
      {
        v67 = v120;
        static ButtonRole.destructive.getter();
        v68 = 0;
      }

      else
      {
        v68 = 1;
        v67 = v120;
      }

      v69 = type metadata accessor for ButtonRole();
      sub_1000042A8(v67, v68, 1, v69);
      sub_100006330();
      v70 = v124;
      v71(v119, v140, v124);
      type metadata accessor for ShortcutChiclet.MenuItemModel();
      swift_allocObject();
      *v138 = ShortcutChiclet.MenuItemModel.init(name:symbol:role:variant:)();
      (*v134)();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v118;
      v16 = v117;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100090474();
        v47 = sub_10008D3E8(v85, v86, v87, v88);
      }

      v48 = v125;
      v74 = *(v47 + 2);
      v73 = *(v47 + 3);
      if (v74 >= v73 >> 1)
      {
        sub_100005E38(v73);
        sub_100090474();
        v47 = sub_10008D3E8(v89, v90, v91, v92);
      }

      sub_100006330();
      v75(v140, v70);
      *(v47 + 2) = v74 + 1;
      sub_100003A3C();
      v78 = &v47[v76 + *(v77 + 72) * v74];
      v49 = v77;
      (*(v77 + 32))(v78, v138, v141);
      goto LABEL_30;
    }

    if (v53 == v109)
    {
      v56 = sub_100005D2C();
      v57(v56);
      *v140 = *v48;
      goto LABEL_18;
    }

    if (v53 != v105)
    {
      goto LABEL_34;
    }

    v79 = sub_100005D2C();
    v80(v79);
    static WFLog.subscript.getter();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Submenus not supported in this model", v83, 2u);
      v49 = v126;
    }

    sub_100006330();
    v84(v15, v106);
LABEL_30:
    ++v46;
    if (v139 == v131)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100086E28()
{
  v0 = type metadata accessor for ShortcutChiclet.MenuItemModel.ItemVariant();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  dispatch thunk of ShortcutChiclet.MenuItemModel.variant.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ShortcutChiclet.MenuItemModel.ItemVariant.button(_:))
  {
    v5 = (*(v1 + 96))(v3, v0);
    (*v3)(v5);
LABEL_5:

    return;
  }

  if (v4 == enum case for ShortcutChiclet.MenuItemModel.ItemVariant.toggle(_:))
  {
    (*(v1 + 96))(v3, v0);
    v6 = dispatch thunk of LibraryMenuItem.ToggleModel.isSelected.modify();
    *v7 = !*v7;
    v6(v8, 0);
    goto LABEL_5;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

id sub_100086FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10008CFF8;
  v17 = &unk_1000F35B0;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000676C8;
  v17 = &unk_1000F3588;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_10000B970(a4, a5);
  sub_10000B970(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

UIMenu sub_10008714C(uint64_t a1)
{
  v67 = type metadata accessor for Logger();
  v73 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for LibraryMenuItem.ItemVariant();
  v62 = *(v79 - 8);
  __chkstk_darwin(v79);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for LibraryMenuItem.Attributes();
  v72 = *(v78 - 8);
  v5 = __chkstk_darwin(v78);
  v77 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v60 - v7;
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = _swiftEmptyArrayStorage;
  v12 = *(a1 + 16);
  v68 = a1;
  if (v12)
  {
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v80 = *(v13 + 56);
    v81 = v14;
    v16 = (v13 - 8);
    do
    {
      v17 = v13;
      v81(v11, v15, v8);
      sub_10000E8F4();
      sub_1000AB100(v11, v18, v19, v20, v21, v22, v23, v24, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v26 = v25;

      (*v16)(v11, v8);
      if (v26)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v15 += v80;
      --v12;
      v13 = v17;
    }

    while (v12);
  }

  v83 = _swiftEmptyArrayStorage;
  v84 = _swiftEmptyArrayStorage;
  sub_100088798();
  v28 = v27;

  v76 = sub_10000D55C(v28);
  v29 = _swiftEmptyArrayStorage;
  if (v76)
  {
    v30 = 0;
    v74 = v28 & 0xC000000000000001;
    v61 = v28 & 0xFFFFFFFFFFFFFF8;
    v71 = (v72 + 8);
    v70 = (v62 + 11);
    HIDWORD(v69) = enum case for LibraryMenuItem.ItemVariant.button(_:);
    v64 = WFLogCategoryGeneral;
    v65 = v62 + 1;
    v63 = (v73 + 8);
    v62 += 12;
    v72 = v28;
    v73 = v4;
    while (1)
    {
      if (v74)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v61 + 16))
        {
          goto LABEL_40;
        }
      }

      if (__OFADD__(v30, 1))
      {
        break;
      }

      v31 = LibraryMenuItem.hasSeparator.getter();
      v82 = v30 + 1;
      if (v31)
      {
        if (v29 >> 62)
        {
          sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);

          v32 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);
          v32 = v29;
        }

        sub_100002FC4(0, &unk_100101F20, UIMenu_ptr);
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        v85.value.super.isa = 0;
        v85.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v33, 0, v85, 1, 0xFFFFFFFFFFFFFFFFLL, v32, v58);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v83 = _swiftEmptyArrayStorage;
        v81 = _swiftEmptyArrayStorage;
      }

      else
      {
        v81 = v29;
      }

      v34 = v75;
      LibraryMenuItem.attributes.getter();
      v35 = v77;
      static LibraryMenuItem.Attributes.destructive.getter();
      sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);
      v36 = v78;
      LODWORD(v80) = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v37 = *v71;
      (*v71)(v35, v36);
      v37(v34, v36);
      LibraryMenuItem.attributes.getter();
      static LibraryMenuItem.Attributes.hidden.getter();
      dispatch thunk of SetAlgebra.isSuperset(of:)();
      v37(v35, v36);
      v37(v34, v36);
      LibraryMenuItem.attributes.getter();
      static LibraryMenuItem.Attributes.disabled.getter();
      dispatch thunk of SetAlgebra.isSuperset(of:)();
      v37(v35, v36);
      v37(v34, v36);
      v38 = v73;
      dispatch thunk of LibraryMenuItem.variant.getter();
      v39 = v79;
      v40 = (*v70)(v38, v79);
      if (v40 == HIDWORD(v69))
      {
        (*v62)(v38, v39);
        v42 = *v38;
        v41 = v38[1];
        sub_100002FC4(0, &qword_100100C60, UIAction_ptr);
        LibraryMenuItem.title.getter();
        sub_100002FC4(0, &qword_100100110, UIImage_ptr);
        v43 = LibraryMenuItem.symbolName.getter();
        sub_100012A98(v43, v44);
        v45 = swift_allocObject();
        v45[2] = v42;
        v45[3] = v41;
        v45[4] = v68;

        v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v47 = v82;
        v29 = v83;
      }

      else
      {
        (*v65)(v38, v39);
        v48 = v66;
        static WFLog.subscript.getter();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Unsupported variant, only buttons can be used here", v51, 2u);
        }

        (*v63)(v48, v67);
        v29 = v81;
        v47 = v82;
      }

      ++v30;
      if (v47 == v76)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
LABEL_32:

    if (!(v29 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);
      v52 = v29;
      goto LABEL_34;
    }
  }

  sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);

  v52 = _bridgeCocoaArray<A>(_:)();

LABEL_34:

  sub_100002FC4(0, &unk_100101F20, UIMenu_ptr);
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v86.value.super.isa = 0;
  v86.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v53, 0, v86, 1, 0xFFFFFFFFFFFFFFFFLL, v52, v58);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v54 = v84;
  if (v84 >> 62)
  {
    sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);

    v55 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);
    v55 = v54;
  }

  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v87.value.super.isa = 0;
  v87.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v56, 0, v87, 0, 0xFFFFFFFFFFFFFFFFLL, v55, v59);
}

id sub_100087D2C()
{
  v0 = sub_1000A01D0();
  if (!v0)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = [objc_allocWithZone(UIPreviewParameters) init];
  [v4 setVisiblePath:v2];
  v5 = objc_allocWithZone(UIColor);
  v6 = sub_10008CCE8(sub_100087F6C, 0);
  [v4 setBackgroundColor:v6];

  sub_100002FC4(0, &qword_100101F08, UITargetedPreview_ptr);
  v7 = v3;
  v8 = sub_1000AA414(v7, v4);

  return v8;
}

id sub_100087E50(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = type metadata accessor for IndexPath();
  sub_100004458();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000039BC();
  v16 = v15 - v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v20 = a6();

  (*(v12 + 8))(v16, v10);

  return v20;
}

id sub_100087F6C(void *a1)
{
  if ([a1 userInterfaceStyle] == 1)
  {
    v1 = objc_allocWithZone(UIColor);

    return [v1 initWithWhite:0.6 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() clearColor];

    return v3;
  }
}

uint64_t sub_100087FF4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = sub_10002E87C(&qword_100100010, &unk_1000C1290);
  sub_100002EE0(v7);
  sub_100005B90();
  __chkstk_darwin(v8);
  sub_100007B14();
  v9 = type metadata accessor for IndexPath();
  sub_100004458();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000039BC();
  v15 = v14 - v13;
  aBlock = [a2 identifier];
  sub_10002E87C(&qword_100101F00, &qword_1000C5380);
  if (swift_dynamicCast())
  {
    sub_100090474();
    sub_1000042A8(v16, v17, v18, v19);
    (*(v11 + 32))(v15, v3, v9);
    sub_10000E8F4();
    sub_1000AB100(v15, v20, v21, v22, v23, v24, v25, v26, aBlock, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    v28 = v27;

    if (v28)
    {
      [a3 setPreferredCommitStyle:0];
      sub_1000060B8();
      v29 = swift_allocObject();
      *(v29 + 16) = v4;
      *(v29 + 24) = v28;
      v42 = sub_100090394;
      v43 = v29;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_100003190;
      v41 = &unk_1000F34E8;
      v30 = _Block_copy(&aBlock);
      v31 = v4;
      v32 = v28;

      [a3 addCompletion:v30];
      _Block_release(v30);
    }

    return (*(v11 + 8))(v15, v9);
  }

  else
  {
    sub_100004718();
    sub_100090474();
    sub_1000042A8(v34, v35, v36, v37);
    return sub_1000069B0(v3, &qword_100100010, &unk_1000C1290);
  }
}

uint64_t sub_100088284(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    WorkflowOpener.openWorkflow(_:)();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10008839C()
{
  sub_1000043AC();
  v1 = v0;
  v2 = type metadata accessor for AggregatedEntry();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  v8 = (v7 - v6);
  v9 = sub_10002E87C(&unk_1000FF9E0, &unk_1000C5B60);
  v10 = sub_100002EE0(v9);
  __chkstk_darwin(v10);
  sub_100003EF4();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  sub_100005184();
  v46 = v15;
  sub_1000042F8();
  v16 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000039BC();
  v22 = v21 - v20;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = v2;
    v40 = v8;
    v41 = v4;
    v43 = v1;
    v44 = *(v1 + 16);
    v45 = Strong;
    if (v44)
    {
      v24 = v18 + 16;
      v47 = *(v18 + 16);
      sub_100003A3C();
      v26 = v1 + v25;
      v27 = *(v18 + 72);
      v29 = v28;
      do
      {
        v47(v22, v26, v16);
        v30 = ShortcutsLibraryItem.workflow.getter();
        (*(v24 - 8))(v22, v16);
        if (v30)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v31 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
          {
            sub_100005E38(v31);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v26 += v27;
        --v29;
      }

      while (v29);
    }

    if (sub_10000D55C(_swiftEmptyArrayStorage) != v44)
    {

      if (v44 == 1)
      {
        sub_10001C700();
        sub_100084A40(v43, v34, v13);
        if (sub_10000AB80(v13, 1, v16) == 1)
        {
          sub_1000069B0(v13, &unk_1000FF9E0, &unk_1000C5B60);
        }

        else
        {
          ShortcutsLibraryItem.autoShortcut.getter();
          v37 = sub_100003BF8();
          v38(v37);
          if (v13)
          {
            *v40 = v13;
            (*(v41 + 104))(v40, enum case for AggregatedEntry.appShortcut(_:), v42);
            v39 = v13;
            sub_100088AC4();

            (*(v41 + 8))(v40, v42);
            goto LABEL_20;
          }
        }
      }

      goto LABEL_20;
    }

    sub_10001C700();
    sub_100084A40(v43, v32, v46);
    if (sub_10000AB80(v46, 1, v16) == 1)
    {
      sub_1000069B0(v46, &unk_1000FF9E0, &unk_1000C5B60);
      v33 = 0;
    }

    else
    {
      ShortcutsLibraryItem.nameIconViewModel.getter();
      v35 = sub_100003BF8();
      v36(v35);
      v33 = dispatch thunk of NameIconView.Model.popoverModel.getter();
    }

    sub_100088798();
  }

LABEL_20:
  sub_100002EEC();
}

void sub_100088798()
{
  sub_1000043AC();
  v29 = v0;
  v27 = v1;
  v3 = v2;
  v4 = type metadata accessor for LibraryEditingAction();
  sub_100004458();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000039BC();
  v10 = v9 - v8;
  v11 = type metadata accessor for LibraryConfiguration();
  sub_100004458();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000039BC();
  v17 = v16 - v15;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = v4;
    sub_100066898();
    if ((v3 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v3 + 32);
    }

    v28 = v19;
    v25 = v3;
    v24 = sub_10000D55C(v3);
    v4 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
    swift_beginAccess();
    (*(v13 + 16))(v17, v29 + v4, v11);
    v3 = LibraryConfiguration.workflowContextualEditingActions.getter();
    (*(v13 + 8))(v17, v11);
    v20 = 0;
    v11 = 0;
    v31 = _swiftEmptyArrayStorage;
    v21 = *(v3 + 16);
    v13 = v6 + 16;
    while (1)
    {
      if (v21 == v20)
      {

        goto LABEL_14;
      }

      if (v20 >= *(v3 + 16))
      {
        break;
      }

      v17 = v24 > 1;
      sub_100003A3C();
      (*(v6 + 16))(v10, v3 + v22 + *(v6 + 72) * v20, v26);
      sub_1000893CC(v10, v29, v17, v28, v25, v27, &v30);
      ++v20;
      (*(v6 + 8))(v10, v26);
      v4 = v30;
      if (v30)
      {
        v17 = &v31;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v23 >> 1)
        {
          sub_100005E38(v23);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    __break(1u);
LABEL_16:
    ;
  }

LABEL_14:
  sub_100002EEC();
}

void sub_100088AC4()
{
  sub_1000043AC();
  v72 = v0;
  v2 = v1;
  v76 = type metadata accessor for LibraryMenuItem.Attributes();
  sub_100003EC8();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v77 = v5 - v4;
  sub_1000042F8();
  type metadata accessor for LibraryMenuItem.ItemVariant();
  sub_100004458();
  v74 = v7;
  v75 = v6;
  __chkstk_darwin(v6);
  sub_1000039BC();
  v69 = (v9 - v8);
  sub_1000042F8();
  type metadata accessor for AppShortcutAdditionMenuItem();
  sub_100004458();
  v70 = v11;
  v71 = v10;
  __chkstk_darwin(v10);
  sub_100003EF4();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v17 = v60 - v16;
  v18 = type metadata accessor for AggregatedEntry();
  sub_100004458();
  v20 = v19;
  v22 = *(v21 + 64);
  v24 = __chkstk_darwin(v23);
  v68 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v60 - v25;
  v79 = _swiftEmptyArrayStorage;
  v27 = *(v20 + 16);
  v73 = v2;
  v27(v60 - v25, v2, v18);
  LODWORD(v2) = (*(v20 + 88))(v26, v18);
  v28 = enum case for AggregatedEntry.appShortcut(_:);
  v61 = v20;
  v62 = v18;
  (*(v20 + 8))(v26, v18);
  v66 = v14;
  v67 = v22;
  v64 = v17;
  v65 = v20 + 16;
  v63 = v27;
  if (v2 == v28)
  {
    static AppShortcutAdditionMenuItem.addToHomeScreen.getter();
    v60[1] = AppShortcutAdditionMenuItem.name.getter();
    v29 = *(v70 + 8);
    v30 = v17;
    v31 = v71;
    v29(v30, v71);
    static AppShortcutAdditionMenuItem.addToHomeScreen.getter();
    v32 = AppShortcutAdditionMenuItem.symbolName.getter();
    v60[2] = v33;
    v60[3] = v32;
    v29(v14, v31);
    sub_100003A00();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = v68;
    v36 = v62;
    v27(v68, v73, v62);
    v37 = v61;
    v38 = (*(v61 + 80) + 24) & ~*(v61 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v34;
    (*(v37 + 32))(v39 + v38, v35, v36);
    v40 = v69;
    *v69 = sub_10008FC98;
    v40[1] = v39;
    v41 = enum case for LibraryMenuItem.ItemVariant.button(_:);
    (*(v74 + 104))(v40, enum case for LibraryMenuItem.ItemVariant.button(_:), v75);
    v78 = _swiftEmptyArrayStorage;
    sub_100005268();
    sub_10008D948(v42, v43, &protocol conformance descriptor for LibraryMenuItem.Attributes);

    sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
    sub_10008D7DC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for LibraryMenuItem();
    swift_allocObject();
    LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v44 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v45 = v36;
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v44 >> 1)
    {
      sub_100005E38(v44);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v41 = enum case for LibraryMenuItem.ItemVariant.button(_:);
    v37 = v61;
    v45 = v62;
  }

  v46 = v64;
  static AppShortcutAdditionMenuItem.addToShortcut.getter();
  v47 = AppShortcutAdditionMenuItem.name.getter();
  v61 = v48;
  v62 = v47;
  v49 = v71;
  v50 = *(v70 + 8);
  v50(v46, v71);
  v51 = v66;
  static AppShortcutAdditionMenuItem.addToShortcut.getter();
  AppShortcutAdditionMenuItem.symbolName.getter();
  v50(v51, v49);
  sub_100003A00();
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = v68;
  v63(v68, v73, v45);
  v54 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v52;
  (*(v37 + 32))(v55 + v54, v53, v45);
  v56 = v69;
  *v69 = sub_10008FBC8;
  v56[1] = v55;
  (*(v74 + 104))(v56, v41, v75);
  v78 = _swiftEmptyArrayStorage;
  sub_100005268();
  sub_10008D948(v57, v58, &protocol conformance descriptor for LibraryMenuItem.Attributes);

  sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
  sub_10008D7DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for LibraryMenuItem();
  swift_allocObject();
  LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v59 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v59 >> 1)
  {
    sub_100005E38(v59);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100002EEC();
}

void *sub_10008918C()
{
  sub_10000E8D4();
  v1 = type metadata accessor for AggregatedEntry();
  sub_100004458();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000039BC();
  v7 = (v6 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = Strong;
  (*(v3 + 16))(v7, v0, v1);
  v10 = sub_1000043C4();
  v12 = v11(v10);
  if (v12 != enum case for AggregatedEntry.userShortcut(_:))
  {
    if (v12 == enum case for AggregatedEntry.appShortcut(_:))
    {
      v20 = sub_1000043C4();
      v21(v20);
      sub_100088AC4();
      v19 = v22;
      goto LABEL_6;
    }

    v23 = sub_1000043C4();
    v24(v23);
    return _swiftEmptyArrayStorage;
  }

  v13 = sub_1000043C4();
  v14(v13);
  v15 = *v7;
  sub_10002E87C(&qword_1001000E0, &qword_1000C12D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000C0DB0;
  *(v16 + 32) = v15;
  v17 = v15;
  sub_100088798();
  v19 = v18;

LABEL_6:

  return v19;
}

uint64_t sub_100089350()
{
  swift_unknownObjectWeakDestroy();
  sub_100003A00();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_1000893CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v138 = a7;
  v126[0] = a6;
  v131 = a5;
  LODWORD(v130) = a3;
  v137 = a2;
  v132 = type metadata accessor for LibraryMenuItem.Attributes();
  v9 = __chkstk_darwin(v132);
  v126[1] = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v133 = v126 - v11;
  v12 = type metadata accessor for LibraryMenuItem.ItemVariant();
  v13 = *(v12 - 8);
  v134 = v12;
  v135 = v13;
  __chkstk_darwin(v12);
  v136 = (v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for LibraryEditingAction();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v126 - v20;
  v129 = LibraryEditingAction.symbolName.getter();
  v23 = v22;
  v24 = *(v16 + 16);
  v24(v21, a1, v15);
  v139 = v16;
  v25 = (*(v16 + 88))(v21, v15);
  if (v25 != enum case for LibraryEditingAction.remove(_:))
  {
    v127 = v15;
    if (v25 == enum case for LibraryEditingAction.newWindow(_:))
    {

      v36 = [objc_opt_self() sharedApplication];
      v37 = [v36 supportsMultipleScenes];

      v35 = 0;
      if (v37)
      {
        v15 = v127;
        if (v130)
        {
          goto LABEL_91;
        }

        v38 = [objc_opt_self() existingSceneSessionForEditingWorkflowReference:a4];
        v128 = v21;
        v39 = String._bridgeToObjectiveC()();
        if (v38)
        {
          v131 = 0xEA00000000006572;
        }

        else
        {
          v131 = 0xEB00000000657261;
        }

        v59 = String._bridgeToObjectiveC()();
        v60 = sub_100005D9C(v39);

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v62 = swift_allocObject();
        *(v62 + 16) = v61;
        *(v62 + 24) = a4;
        v63 = v135;
        v64 = v136;
        *v136 = sub_10008D910;
        v64[1] = v62;
        (*(v63 + 104))(v64, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
        v140 = _swiftEmptyArrayStorage;
        sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);
        v65 = a4;

        sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
        sub_10008D7DC();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for LibraryMenuItem();
        swift_allocObject();
        v35 = LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)();

LABEL_90:
        v15 = v127;
        v21 = v128;
        goto LABEL_91;
      }

LABEL_33:
      v15 = v127;
      goto LABEL_91;
    }

    if (v25 == enum case for LibraryEditingAction.move(_:))
    {
      LibraryEditingAction.title.getter();
      if (!v40)
      {

        v35 = 0;
        goto LABEL_33;
      }

      v41 = v129;
      if (!v23)
      {
        v41 = 0;
      }

      v130 = v41;
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      v44 = v131;
      *(v43 + 16) = v42;
      *(v43 + 24) = v44;
      v45 = v135;
      v46 = v136;
      *v136 = sub_10008D884;
      v46[1] = v43;
      (*(v45 + 104))(v46, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
      v140 = _swiftEmptyArrayStorage;
      sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);

      sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
      sub_10008D7DC();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for LibraryMenuItem();
      swift_allocObject();
      v35 = LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)();
      goto LABEL_16;
    }

    v128 = v21;
    if (v25 == enum case for LibraryEditingAction.duplicate(_:))
    {
      LibraryEditingAction.title.getter();
      if (v47)
      {
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = swift_allocObject();
        v50 = v131;
        *(v49 + 16) = v48;
        *(v49 + 24) = v50;
        v51 = v135;
        v52 = v136;
        *v136 = sub_10008D908;
        v52[1] = v49;
        (*(v51 + 104))(v52, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
        v140 = _swiftEmptyArrayStorage;
        sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);

        sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
        sub_10008D7DC();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for LibraryMenuItem();
        swift_allocObject();
        v35 = LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)();

        goto LABEL_90;
      }

LABEL_89:

      v35 = 0;
      goto LABEL_90;
    }

    v53 = a4;
    if (v25 == enum case for LibraryEditingAction.share(_:))
    {
      if (v130)
      {
        goto LABEL_89;
      }

      v54 = *(v137 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database);
      v55 = [a4 identifier];
      if (!v55)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = String._bridgeToObjectiveC()();
      }

      v56 = [v54 conflictingReferenceForWorkflowID:{v55, v126[0]}];

      if (v56)
      {
      }

      LibraryEditingAction.title.getter();
      if (!v57)
      {
        goto LABEL_89;
      }

      v58 = v129;
      if (!v23)
      {
        v58 = 0;
      }

      v133 = v58;
      if (v56)
      {
        static LibraryMenuItem.Attributes.disabled.getter();
      }

      else
      {
        v140 = _swiftEmptyArrayStorage;
        sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);
        sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
        sub_10008D7DC();
        dispatch thunk of SetAlgebra.init<A>(_:)();
      }

      v92 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v93 = swift_allocObject();
      v93[2] = v92;
      v93[3] = v53;
      v94 = v126[0];
      v93[4] = v126[0];
      v95 = v135;
      v96 = v136;
      *v136 = sub_10008D8BC;
      v96[1] = v93;
      (*(v95 + 104))(v96, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
      type metadata accessor for LibraryMenuItem();
      swift_allocObject();
      v97 = v94;
      v98 = v53;
      goto LABEL_64;
    }

    if (v25 == enum case for LibraryEditingAction.details(_:))
    {
      if (v130)
      {
        goto LABEL_89;
      }

      LibraryEditingAction.title.getter();
      if (!v66)
      {
        goto LABEL_89;
      }

      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v68 = swift_allocObject();
      *(v68 + 16) = v67;
      *(v68 + 24) = v53;
      v69 = sub_10008D8B4;
      goto LABEL_40;
    }

    if (v25 == enum case for LibraryEditingAction.delete(_:))
    {
      LibraryEditingAction.title.getter();
      if (!v73)
      {
        goto LABEL_89;
      }

      static LibraryMenuItem.Attributes.destructive.getter();
      v74 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v75 = swift_allocObject();
      *(v75 + 16) = v74;
      *(v75 + 24) = v131;
      v76 = v135;
      v77 = v136;
      *v136 = sub_10008D848;
      v77[1] = v75;
      (*(v76 + 104))(v77, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
      type metadata accessor for LibraryMenuItem();
      swift_allocObject();

LABEL_64:
      v35 = LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)();
      goto LABEL_90;
    }

    if (v25 == enum case for LibraryEditingAction.run(_:))
    {
      if (sub_10006C300(a4))
      {
        goto LABEL_89;
      }

      sub_10000E8F4();
      type metadata accessor for LibraryDataSource();
      v78 = method lookup function for LibraryDataSource();
      v78();

      v79 = LibraryLayoutMode.rawValue.getter();
      v81 = v80;
      if (v79 == LibraryLayoutMode.rawValue.getter() && v81 == v82)
      {
      }

      else
      {
        v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v84 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      if (v130)
      {
        goto LABEL_89;
      }

      LibraryEditingAction.title.getter();
      if (!v106)
      {
        goto LABEL_89;
      }

      v107 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v53;
      v109 = v53;
      v110 = v135;
      v111 = v136;
      *v136 = sub_10008D840;
      v111[1] = v108;
      (*(v110 + 104))(v111, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
      v140 = _swiftEmptyArrayStorage;
      sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);
      v112 = v109;
    }

    else
    {
      if (v25 != enum case for LibraryEditingAction.stop(_:))
      {
        if (v25 == enum case for LibraryEditingAction.open(_:))
        {
          sub_10000E8F4();
          type metadata accessor for LibraryDataSource();
          v99 = method lookup function for LibraryDataSource();
          v99();

          v100 = LibraryLayoutMode.rawValue.getter();
          v102 = v101;
          if (v100 == LibraryLayoutMode.rawValue.getter() && v102 == v103)
          {
          }

          else
          {
            v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v105 & 1) == 0)
            {
              goto LABEL_89;
            }
          }

          if (v130)
          {
            goto LABEL_89;
          }

          LibraryEditingAction.title.getter();
          if (!v119)
          {
            goto LABEL_89;
          }

          v120 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v121 = swift_allocObject();
          *(v121 + 16) = v120;
          *(v121 + 24) = v53;
          v122 = v135;
          v123 = v136;
          *v136 = sub_10008D918;
          v123[1] = v121;
          (*(v122 + 104))(v123, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
          v140 = _swiftEmptyArrayStorage;
          sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);

          v124 = v53;
          goto LABEL_41;
        }

        if (v25 != enum case for LibraryEditingAction.rename(_:))
        {
          goto LABEL_89;
        }

        if (v130)
        {
          goto LABEL_89;
        }

        LibraryEditingAction.title.getter();
        if (!v113)
        {
          goto LABEL_89;
        }

        v114 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v68 = swift_allocObject();
        *(v68 + 16) = v114;
        *(v68 + 24) = v53;
        v69 = sub_10008D8C8;
LABEL_40:
        v70 = v135;
        v71 = v136;
        *v136 = v69;
        v71[1] = v68;
        (*(v70 + 104))(v71, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
        v140 = _swiftEmptyArrayStorage;
        sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);
        v72 = v53;

LABEL_41:
        sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
        sub_10008D7DC();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for LibraryMenuItem();
        swift_allocObject();
LABEL_42:
        v35 = LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)();
        v21 = v128;
LABEL_16:

        goto LABEL_33;
      }

      if ((sub_10006C300(a4) & 1) == 0)
      {
        goto LABEL_89;
      }

      sub_10000E8F4();
      type metadata accessor for LibraryDataSource();
      v85 = method lookup function for LibraryDataSource();
      v85();

      v86 = LibraryLayoutMode.rawValue.getter();
      v88 = v87;
      if (v86 == LibraryLayoutMode.rawValue.getter() && v88 == v89)
      {
      }

      else
      {
        v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v91 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      if (v130)
      {
        goto LABEL_89;
      }

      LibraryEditingAction.title.getter();
      if (!v115)
      {
        goto LABEL_89;
      }

      v116 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v117 = v135;
      v118 = v136;
      *v136 = sub_10008D7D4;
      v118[1] = v116;
      (*(v117 + 104))(v118, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
      v140 = _swiftEmptyArrayStorage;
      sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);
    }

    sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
    sub_10008D7DC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for LibraryMenuItem();
    swift_allocObject();
    goto LABEL_42;
  }

  v24(v19, v21, v15);
  (*(v139 + 96))(v19, v15);
  v26 = *(v19 + 3);
  v27 = *(v19 + 5);
  if (*(v19 + 1))
  {
    v28 = *(v19 + 4);
    v29 = *(v19 + 2);
    v128 = v21;
    if (!v27)
    {
      v28 = 0;
    }

    v130 = v28;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v32 = v131;
    v31[2] = v30;
    v31[3] = v32;
    v31[4] = v29;
    v31[5] = v26;
    v33 = v135;
    v34 = v136;
    *v136 = sub_10008D878;
    v34[1] = v31;
    (*(v33 + 104))(v34, enum case for LibraryMenuItem.ItemVariant.button(_:), v134);
    v140 = _swiftEmptyArrayStorage;
    sub_10008D948(&qword_100101E50, &type metadata accessor for LibraryMenuItem.Attributes, &protocol conformance descriptor for LibraryMenuItem.Attributes);

    sub_10002E87C(&qword_100101E58, &qword_1000C52F0);
    sub_10008D7DC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for LibraryMenuItem();
    swift_allocObject();
    v21 = v128;
    v35 = LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)();
  }

  else
  {

    v35 = 0;
  }

LABEL_91:
  *v138 = v35;
  return (*(v139 + 8))(v21, v15);
}

void sub_10008A938(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      v7 = objc_opt_self();
      v8 = [v6 window];

      v9 = [v8 windowScene];
      [v7 activateSceneForWorkflowReference:a2 sender:v9];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10008AA28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for LibraryViewController(0);
    sub_10008D948(&qword_1001025E0, type metadata accessor for LibraryViewController, &unk_1000C1370);
    LibraryOperations.duplicateWorkflows(_:completion:)();
  }
}

void sub_10008AADC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      dispatch thunk of LibraryDelegate.renameObject(_:)();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10008AB80(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10002E87C(&qword_100100010, &unk_1000C1290);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong traitCollection];
    v15 = [v14 horizontalSizeClass];

    if (v15 != 1)
    {
      sub_10000E8F4();
      type metadata accessor for LibraryDataSource();
      v16 = method lookup function for LibraryDataSource();
      v17 = v16();

      if ((v17 & 1) == 0)
      {
        if (a3)
        {
          dispatch thunk of PopoverModel.displaySharingPrompt(_:)();
        }

        goto LABEL_4;
      }

      sub_1000AB7D8();

      if (sub_10000AB80(v7, 1, v8) == 1)
      {
        sub_1000069B0(v7, &qword_100100010, &unk_1000C1290);
      }

      else
      {
        (*(v9 + 32))(v11, v7, v8);
        v18 = sub_10000E968();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v20 = [v18 cellForItemAtIndexPath:isa];

        if (v20)
        {
          v21 = v20;
          sub_10008AE7C(a2, v20, v13);

          (*(v9 + 8))(v11, v8);
          return;
        }

        (*(v9 + 8))(v11, v8);
      }
    }

    sub_10008AE7C(a2, 0, v13);
LABEL_4:
  }
}

void sub_10008AE7C(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  __chkstk_darwin(v7);
  v8 = *(v3 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database);
  v9 = [a1 identifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v34 = [v8 conflictingReferenceForWorkflowID:v9];

  if (v34)
  {
  }

  else
  {
    sub_100002FC4(0, &qword_100100158, WFWorkflow_ptr);
    v10 = a1;
    v11 = sub_10004B834(v10, v8);
    sub_100002FC4(0, &unk_100101E70, WFWorkflowFileActivity_ptr);
    v12 = v11;
    if (a2)
    {
      [a2 bounds];
      v17 = a2;
    }

    else
    {
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0;
    }

    v18 = sub_10008C82C(v17, 0, v13, v14, v15, v16);
    v36 = _swiftEmptyArrayStorage;
    if ([objc_opt_self() shortcutFileSharingEnabled])
    {
      v19 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v20 = objc_allocWithZone(type metadata accessor for AddToHomeScreenActivity());
    v21 = v10;
    v22 = AddToHomeScreenActivity.init(reference:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23 = objc_allocWithZone(WFWorkflowActivityViewController);
    v24 = sub_10008CD8C(v11, v36);
    if (a2)
    {
      v25 = a2;
      v26 = v24;
      v27 = [v26 popoverPresentationController];
      if (v27)
      {
        v28 = v27;
        [v27 setSourceView:v25];
      }

      v29 = [v26 popoverPresentationController];

      if (v29)
      {
        [v25 bounds];
        [v29 setSourceRect:?];
      }

      v30 = swift_allocObject();
      *(v30 + 16) = v26;
      *(v30 + 24) = v18;
      aBlock[4] = sub_10008D990;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003190;
      aBlock[3] = &unk_1000F3358;
      v31 = _Block_copy(aBlock);
      v32 = v18;
      v33 = v26;

      [a3 presentViewController:v33 animated:1 completion:v31];

      _Block_release(v31);
    }

    else
    {
      [a3 presentViewController:v24 animated:1 completion:0];
    }
  }
}

void sub_10008B440(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10008B4A0(a2, Strong);
  }
}

void sub_10008B4A0(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database);
  v5 = [a1 identifier];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v8 = [v4 conflictingReferenceForWorkflowID:v5];

  v6 = v8;
  if (!v8)
  {
    sub_100002FC4(0, &qword_100100158, WFWorkflow_ptr);
    v7 = sub_10004B834(a1, v4);
    if (!v7)
    {
      return;
    }

    v9 = v7;
    WFPresentWorkflowSettingsViewController();
    v6 = v9;
  }
}

void sub_10008B600(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database);
    sub_100002FC4(0, &unk_100101E80, WFWorkflowReference_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5 = String._bridgeToObjectiveC()();
    v9 = 0;
    v6 = [v3 removeReferences:isa fromCollectionWithIdentifier:v5 error:&v9];

    if (v6)
    {
      v7 = v9;
    }

    else
    {
      v8 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_10008B744(uint64_t a1, uint64_t a2)
{
  sub_100004410(a1, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v2(v3);
  }
}

double sub_10008B798(uint64_t a1)
{
  v3 = sub_10002E87C(&qword_100100008, &unk_1000C4690);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_1000042A8(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v10[5] = a1;
  sub_100084AEC();

  return result;
}

void sub_10008B8A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      dispatch thunk of LibraryDelegate.run(_:from:input:requestOutput:runViewSource:completionHandler:)();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double sub_10008B964(uint64_t a1)
{
  v1 = sub_10002E87C(&unk_100101EB0, &unk_1000C5330);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      dispatch thunk of LibraryDelegate.runningWorkflow.getter();
      swift_unknownObjectRelease();
      v7 = type metadata accessor for RunningWorkflow();
      if (sub_10000AB80(v3, 1, v7) == 1)
      {

        sub_1000069B0(v3, &unk_100101EB0, &unk_1000C5330);
      }

      else
      {
        v8 = RunningWorkflow.stop.getter();
        v9 = (*(*(v7 - 8) + 8))(v3, v7);
        v8(v9);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10008BAE8()
{
  sub_1000297CC();
  v2 = v1;
  if (sub_10000D55C(v1))
  {
    sub_100066898();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    sub_10008B4A0(v4, v0);
  }

  else
  {
  }
}

uint64_t sub_10008BBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10002E87C(&qword_100100010, &unk_1000C1290);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for IndexPath();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v8;
  v5[14] = v7;

  return _swift_task_switch(sub_10008BD4C, v8, v7);
}

uint64_t sub_10008BD4C()
{
  v1 = sub_10000E968();
  v0[15] = v1;
  sub_10000E8F4();
  type metadata accessor for LibraryDataSource();
  v2 = method lookup function for LibraryDataSource();
  v2();

  v3 = LibraryLayoutMode.rawValue.getter();
  v5 = v4;
  if (v3 == LibraryLayoutMode.rawValue.getter() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
LABEL_35:
      v54 = 0;
LABEL_36:
      v0[16] = v54;
      sub_100003A00();
      v71 = swift_allocObject();
      v0[17] = v71;
      *(v71 + 16) = v54;
      v72 = v54;
      v73 = swift_task_alloc();
      v0[18] = v73;
      v74 = type metadata accessor for LibraryViewController(0);
      v17 = sub_10008D948(&qword_1001025E0, type metadata accessor for LibraryViewController, &unk_1000C1370);
      *v73 = v0;
      v73[1] = sub_10008C434;
      v13 = v0[3];
      v14 = sub_10008DAE0;
      v15 = v71;
      v16 = v74;

      return LibraryOperations.deleteWorkflows(_:alertCustomizationBlock:)(v13, v14, v15, v16, v17);
    }
  }

  v9 = v0[6];
  v10 = v0[3];
  v76 = v1;
  v11 = [v1 indexPathsForVisibleItems];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = sub_100085180(v12);
  v13 = sub_10000D55C(v10);
  v18 = v13;
  v19 = 0;
  v84 = v10 & 0xC000000000000001;
  v20 = v10 & 0xFFFFFFFFFFFFFF8;
  v21 = v10 + 32;
  v79 = (v9 + 32);
  v80 = v9;
  v81 = _swiftEmptyArrayStorage;
  while (v18 != v19)
  {
    if (v84)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v20 + 16))
      {
        goto LABEL_41;
      }

      v13 = *(v21 + 8 * v19);
    }

    v22 = v13;
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v25 = v0[4];
    v24 = v0[5];

    sub_1000AB7D8();

    if (sub_10000AB80(v25, 1, v24) == 1)
    {
      v13 = sub_1000069B0(v0[4], &qword_100100010, &unk_1000C1290);
      ++v19;
    }

    else
    {
      v26 = *v79;
      (*v79)(v0[11], v0[4], v0[5]);
      v27 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_10008D50C(0, *(v81 + 2) + 1, 1, v81);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v32 = sub_100005E38(v28);
        v27 = sub_10008D50C(v32, v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      sub_100003A3C();
      v81 = v27;
      v13 = v26(&v27[v30 + *(v31 + 72) * v29]);
      v19 = v23;
    }
  }

  v77 = *(v81 + 2);
  if (!v77)
  {
LABEL_31:

    goto LABEL_35;
  }

  v33 = 0;
  sub_100003A3C();
  v78 = &v13[v34];
  v35 = v0[6];
  v85 = (v35 + 16);
  v36 = (v35 + 8);
  while (v33 < *(v13 + 2))
  {
    v37 = *(v80 + 72);
    v83 = v33;
    v38 = *v85;
    (*v85)(v0[8], &v78[v37 * v33], v0[5]);
    if (*(v82 + 16))
    {
      sub_10001C7E4();
      sub_10008D948(&qword_100101E90, v39, &protocol conformance descriptor for IndexPath);
      v40 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v41 = ~(-1 << *(v82 + 32));
      while (1)
      {
        v42 = v40 & v41;
        if (((*(v82 + 56 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {
          break;
        }

        v43 = v0[7];
        v44 = v0[5];
        v38(v43, *(v82 + 48) + v42 * v37, v44);
        sub_10001C7E4();
        sub_10008D948(&qword_100101E98, v45, &protocol conformance descriptor for IndexPath);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v47 = *v36;
        (*v36)(v43, v44);
        v40 = v42 + 1;
        if (v46)
        {
          v48 = v0[9];
          v49 = v0[10];
          v50 = v0[8];
          v51 = v0[5];

          v52 = *v79;
          (*v79)(v48, v50, v51);
          (v52)(v49, v48, v51);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v54 = [v76 cellForItemAtIndexPath:isa];

          v55 = v0[10];
          v56 = v0[5];
          if (!v54)
          {
            v47(v0[10], v0[5]);
            goto LABEL_36;
          }

          [v76 bounds];
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v65 = v54;
          [v65 frame];
          v88.origin.x = v66;
          v88.origin.y = v67;
          v88.size.width = v68;
          v88.size.height = v69;
          v87.origin.x = v58;
          v87.origin.y = v60;
          v87.size.width = v62;
          v87.size.height = v64;
          v70 = CGRectContainsRect(v87, v88);

          v47(v55, v56);
          if (v70)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }
    }

    v33 = v83 + 1;
    (*v36)(v0[8], v0[5]);
    v13 = v81;
    if (v83 + 1 == v77)
    {
      goto LABEL_31;
    }
  }

LABEL_42:
  __break(1u);
  return LibraryOperations.deleteWorkflows(_:alertCustomizationBlock:)(v13, v14, v15, v16, v17);
}

uint64_t sub_10008C434()
{
  sub_100004304();
  v1 = *v0;
  v2 = *v0;
  sub_100005224();
  *v3 = v2;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return _swift_task_switch(sub_10008C56C, v5, v4);
}

uint64_t sub_10008C56C()
{
  v1 = *(v0 + 128);

  sub_100003BDC();

  return v2();
}

void sub_10008C62C(void *a1, uint64_t a2)
{
  v3 = [objc_opt_self() sourceWithView:a2];
  [a1 setPresentationSource:v3];
}

void sub_10008C6A8(uint64_t a1, uint64_t a2)
{
  sub_100004410(a1, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v2(v3, ObjectType, v7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10008C744(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a1);
  v5 = *(a4 + 16);
  v6 = objc_allocWithZone(type metadata accessor for ContextualActionEventTracker());
  sub_10008C944(0x6374726F6853794DLL, 0xEB00000000737475, v5);
  v8 = v7;
  sub_10008C7D0();
}

id sub_10008C7D0()
{
  [*(v0 + OBJC_IVAR____TtC9ShortcutsP33_F50140E0B90057F770640AD097868D8228ContextualActionEventTracker_event) track];
  result = *(v0 + OBJC_IVAR____TtC9ShortcutsP33_F50140E0B90057F770640AD097868D8228ContextualActionEventTracker_invalidator);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

id sub_10008C82C(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSourceView:a1 sourceRect:a2 sourceItem:{a3, a4, a5, a6}];

  swift_unknownObjectRelease();
  return v7;
}

id sub_10008C8BC(void *a1, void *a2)
{
  result = [a1 popoverPresentationController];
  if (result)
  {
    v4 = result;
    v5 = [result arrowDirection];

    return [a2 setArrowDirection:v5];
  }

  return result;
}

void sub_10008C944(uint64_t a1, uint64_t a2, unint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC9ShortcutsP33_F50140E0B90057F770640AD097868D8228ContextualActionEventTracker_event;
  v9 = [objc_allocWithZone(WFContextualActionMetricEvent) init];
  *&v3[v8] = v9;
  *&v3[OBJC_IVAR____TtC9ShortcutsP33_F50140E0B90057F770640AD097868D8228ContextualActionEventTracker_invalidator] = 0;
  sub_10008FD14(a1, a2, v9);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    [*&v3[v8] setItemCount:a3];
    v15.receiver = v3;
    v15.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v15, "init");
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 sharedInstance];
    v14 = [v13 addPointerDeviceObserver:v12];

    *&v12[OBJC_IVAR____TtC9ShortcutsP33_F50140E0B90057F770640AD097868D8228ContextualActionEventTracker_invalidator] = v14;
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

id sub_10008CA84()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC9ShortcutsP33_F50140E0B90057F770640AD097868D8228ContextualActionEventTracker_invalidator];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10008CB58(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9ShortcutsP33_F50140E0B90057F770640AD097868D8228ContextualActionEventTracker_event);
  v3 = !sub_10008CBA8(a1);

  return [v2 setHasTrackpad:v3];
}

BOOL sub_10008CBA8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

id sub_10008CCE8(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100038B50;
  v6[3] = &unk_1000F3510;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider:v3];
  _Block_release(v3);

  return v4;
}

id sub_10008CD8C(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002FC4(0, &qword_100100518, UIActivity_ptr);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [v2 initWithWorkflow:a1 applicationActivities:v4.super.isa];

  return v5;
}

uint64_t sub_10008CE1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008CF14;

  return v6(a1);
}

uint64_t sub_10008CF14()
{
  sub_100005BE4();
  sub_100007B24();
  v1 = *v0;
  sub_100005224();
  *v2 = v1;

  sub_100003BDC();

  return v3();
}

id sub_10008CFF8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_10008D048(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1000060D8();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100011894();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10002E87C(&unk_100101EC0, &qword_1000C5340);
    v11 = sub_100019CD8();
    j__malloc_size(v11);
    sub_10000F81C();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void sub_10008D124(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_1000060D8();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100011894();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10002E87C(&qword_100101F50, &qword_1000C53A8);
    v11 = sub_100019CD8();
    j__malloc_size(v11);
    sub_10000F81C();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002E87C(&qword_100101F58, qword_1000C53B0);
    swift_arrayInitWithCopy();
  }
}

void sub_10008D230()
{
  sub_100002FA8();
  if (v4)
  {
    sub_100090464();
    if (v6 != v7)
    {
      sub_100009598();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10000CB1C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_100007C08(v2, v5, &qword_100100C78, &unk_1000C5370);
  sub_10000E8D4();
  type metadata accessor for ShortcutsLibraryItem();
  sub_10000525C();
  sub_100003A3C();
  if (v1)
  {
    sub_10000A838(&type metadata accessor for ShortcutsLibraryItem, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000F1D4();
  }
}

void sub_10008D308(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1000060D8();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100011894();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10002E87C(&qword_100101F38, &unk_1000C5390);
    v11 = sub_100019CD8();
    j__malloc_size(v11);
    sub_10000618C();
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

char *sub_10008D3E8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000071E4(v9, a2, &qword_100101ED8, &qword_1000C5348, &type metadata accessor for ShortcutChiclet.MenuItem);
  v11 = *(type metadata accessor for ShortcutChiclet.MenuItem() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1000072DC(a4 + v12, v9, &v10[v12], &type metadata accessor for ShortcutChiclet.MenuItem);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008D50C(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000071E4(v9, a2, &qword_100101EA0, &qword_1000C5320, &type metadata accessor for IndexPath);
  v11 = *(type metadata accessor for IndexPath() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1000072DC(a4 + v12, v9, &v10[v12], &type metadata accessor for IndexPath);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008D630(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002E87C(&qword_1001000E0, &qword_1000C12D0);
  v4 = sub_100019CD8();
  j__malloc_size(v4);
  sub_10000618C();
  v4[2] = a1;
  v4[3] = (2 * v5) | 1;
  return v4;
}

void *sub_10008D6A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002E87C(&qword_100100BC0, &qword_1000C3EE0);
  v4 = sub_100019CD8();
  j__malloc_size(v4);
  sub_10000618C();
  v4[2] = a1;
  v4[3] = 2 * v5;
  return v4;
}

char *sub_10008D73C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100013378(a3, result);
  }

  return result;
}

unint64_t sub_10008D7DC()
{
  result = qword_100101E60;
  if (!qword_100101E60)
  {
    sub_100041CB4(&qword_100101E58, &qword_1000C52F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101E60);
  }

  return result;
}

uint64_t sub_10008D8D0()
{

  v0 = sub_100005BF0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10008D948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008D998(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100017354(v7);
  *v8 = v9;
  v8[1] = sub_1000510B8;

  return sub_10008BBF0(a1, v3, v4, v6, v5);
}

uint64_t sub_10008DA50()
{
  sub_100004304();
  sub_1000095E8();
  v0 = swift_task_alloc();
  v1 = sub_100017354(v0);
  *v1 = v2;
  v3 = sub_10000F760(v1);

  return v4(v3);
}

uint64_t sub_10008DAE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1000C5250;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10008DB4C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_10000836C(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_10000836C(v3);
    return v4 | 8;
  }
}

BOOL sub_10008DBA8(void *a1, void *a2)
{
  v4 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;
      v16 = a2;
      sub_10008E98C(v16, v7, isUniquelyReferenced_nonNull_native);
      *v20 = v22;
      *a1 = v16;
      return v8 == 0;
    }

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {

      goto LABEL_12;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      break;
    }

    v5 = v7 + 1;
  }

LABEL_12:
  v17 = *(*(v4 + 48) + 8 * v7);
  *a1 = v17;
  v18 = v17;
  return v8 == 0;
}

BOOL sub_10008DD4C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_10008EB5C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_10008DE98(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10008D948(&qword_100101E90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_10008ECC4(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10008D948(&qword_100101E98, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

void sub_10008E160(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002E87C(&unk_100101F60, &qword_1000C3EE8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v27 = v1;
  v28 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_10008DAE8(0, (v26 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    v3 = v28;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_10008E3D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002E87C(&unk_100101EE0, &qword_1000C5368);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_10008DAE8(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_10008E634(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for IndexPath();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10002E87C(&qword_100101EA8, &qword_1000C5328);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v35 = v3 + 32;
  v14 = v6 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_10008DAE8(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_10008D948(&qword_100101E90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_10008E98C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10008E160(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_10008F42C(v7 + 1);
LABEL_10:
      v13 = *v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFWorkflowTypeName(0);
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    sub_10008EF50();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = result;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }
}

void sub_10008EB5C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10008E3D8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10008F67C(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_10008F0A0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_10008ECC4(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10008E634(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_10008F8B0(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10008D948(&qword_100101E90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10008D948(&qword_100101E98, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_10008F1F8();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_10008EF50()
{
  v1 = v0;
  sub_10002E87C(&unk_100101F60, &qword_1000C3EE8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_10008F0A0()
{
  v1 = v0;
  sub_10002E87C(&unk_100101EE0, &qword_1000C5368);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_10008F1F8()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E87C(&qword_100101EA8, &qword_1000C5328);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
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

LABEL_21:
    *v1 = v8;
  }
}

void sub_10008F42C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002E87C(&unk_100101F60, &qword_1000C3EE8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v17 = v16;
        String.hash(into:)();
        v18 = Hasher._finalize()();

        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v5 + 48) + 8 * v22) = v17;
        ++*(v5 + 16);
        v3 = v28;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v27;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_10008F67C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002E87C(&unk_100101EE0, &qword_1000C5368);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v18 = Hasher._finalize()();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v16;
        v27[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_10008F8B0(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for IndexPath();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10002E87C(&qword_100101EA8, &qword_1000C5328);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v33 + 72);
        (*(v33 + 16))(v5, *(v8 + 48) + v19 * (v16 | (v9 << 6)), v34);
        sub_10008D948(&qword_100101E90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v21 = -1 << *(v7 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v7 + 48) + v24 * v19, v5, v34);
        ++*(v7 + 16);
        v8 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

uint64_t sub_10008FBE0()
{
  v1 = type metadata accessor for AggregatedEntry();
  sub_100004458();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_10008FCB0()
{
  v1 = type metadata accessor for AggregatedEntry();
  sub_100002EE0(v1);
  sub_10008C6A8(*(v0 + 16), v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

void sub_10008FD14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setSource:v4];
}

uint64_t sub_10008FD78(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t sub_10008FDFC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10008FE9C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10008FF0C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10008FE9C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_10008DB4C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10008FF0C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return _StringGuts.foreignScalarAlign(_:)();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = _StringObject.sharedUTF8.getter();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

uint64_t sub_100090018(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10009010C;

  return v5(v2 + 32);
}

uint64_t sub_10009010C()
{
  sub_100005BE4();
  sub_100007B24();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100005224();
  *v5 = v4;

  *v3 = *(v2 + 32);
  sub_100003BDC();

  return v6();
}

uint64_t sub_10009020C()
{
  sub_100004304();
  sub_1000095E8();
  v0 = swift_task_alloc();
  v1 = sub_100017354(v0);
  *v1 = v2;
  v3 = sub_10000F760(v1);

  return v4(v3);
}

uint64_t sub_10009029C()
{
  sub_100004304();
  sub_1000095E8();
  v0 = swift_task_alloc();
  v1 = sub_100017354(v0);
  *v1 = v2;
  v3 = sub_10000F760(v1);

  return v4(v3);
}

unint64_t sub_10009032C()
{
  result = qword_100101EF8;
  if (!qword_100101EF8)
  {
    sub_100002FC4(255, &qword_100101EF0, BKSMousePointerDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101EF8);
  }

  return result;
}

uint64_t sub_1000903E4()
{

  v1 = sub_100005BF0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10009048C()
{

  return sub_1000102AC(v1, v0, v2, v3);
}

void sub_1000904AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Shortcuts21SearchStateController_stateStore);
  if (*(v0 + OBJC_IVAR____TtC9Shortcuts21SearchStateController_pendingTraitCollection))
  {
    sub_100090624();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_lockCounter);
    if (v2)
    {
      *(v1 + OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_lockCounter) = v2 - 1;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_10000C560();
      sub_10000C794(v5);
    }
  }
}

void sub_100090558(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Shortcuts21SearchStateController_pendingTraitCollection);
  *(v1 + OBJC_IVAR____TtC9Shortcuts21SearchStateController_pendingTraitCollection) = a1;
  v3 = a1;

  sub_1000904AC();
}

void sub_100090624()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_lockCounter);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_lockCounter) = v3;
  }
}

void sub_100090644()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_lockCounter);
  if (v1)
  {
    *(v0 + OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_lockCounter) = v1 - 1;
  }
}

id sub_10009067C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000906C8()
{
  v0 = sub_10000C5FC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state];

  return v2;
}

void sub_100090728(void *a1)
{
  v3 = sub_10000C5FC();
  if (v3)
  {
    v4 = v3;
    v5 = v3[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state + 16];
    v6 = v3[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state + 17];

    if (a1)
    {
      v7 = sub_1000A1240(a1);
      v9 = v8;
    }

    else
    {

      v7 = 0;
      v9 = 0;
    }

    if (v6)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    sub_10000C654(v7, v9, v10 | v5);
  }

  v11 = v1 + OBJC_IVAR____TtC9Shortcuts16SearchController_viewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(v11 + 8);
    v15 = Strong;
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(a1, ObjectType, v13);
  }
}

void sub_100090864()
{
  v0 = sub_10000C560();
  if (v0)
  {
    v1 = v0;
    [v0 becomeFirstResponder];
  }
}

void sub_100090940(void *a1)
{
  v1 = [a1 searchBar];
  sub_100090728(v1);
}

void sub_1000909F4(void *a1)
{
  v2 = sub_1000A1240(a1);
  sub_10000C654(v2, v3, 257);

  v4 = sub_10000C4E8();
  if (v4)
  {
  }

  else
  {

    sub_100090728(a1);
  }
}

void sub_100090AD8(void *a1)
{
  v2 = sub_10000C4E8();
  if (v2)
  {
  }

  else
  {

    sub_100090728(a1);
  }
}

void sub_100090B9C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Shortcuts16SearchController_state + 16);
  v4 = *(v1 + OBJC_IVAR____TtC9Shortcuts16SearchController_state + 17);
  v5 = sub_1000A1240(a1);
  if (v4)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  sub_10000C654(v5, v6, v7 | v3);

  v8 = sub_10000C4E8();
  if (v8)
  {
  }

  else
  {

    sub_100090728(a1);
  }
}

uint64_t sub_100090CAC(void *a1)
{
  [a1 resignFirstResponder];
  v2 = sub_1000A1240(a1);
  sub_10000C654(v2, v3, 256);
}

void sub_100090D68(void *a1)
{
  sub_10000C654(0, 0xE000000000000000, 0);
  v2 = sub_10000C4E8();
  if (v2)
  {
  }

  else
  {
    sub_10006394C(0, 0xE000000000000000, a1);
    if ([a1 isFirstResponder])
    {

      [a1 resignFirstResponder];
    }

    else
    {

      sub_100090728(a1);
    }
  }
}

__n128 sub_100090E80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_100090E94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100090EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100090F4C()
{
  type metadata accessor for _AssistantIntent();
  sub_100013888();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000039BC();
  OpenNavigationDestinationAction.init()();
  sub_100063C24();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v85 = static _AssistantIntent.Builder.buildExpression(_:)();
  v3 = *(v1 + 8);
  v4 = sub_100006324();
  v3(v4);
  OpenWorkflowAction.init()();
  sub_100063B7C();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v84 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5 = sub_100006324();
  v3(v5);
  CreateWorkflowAction.init()();
  sub_100063B28();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v83 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6 = sub_100006324();
  v3(v6);
  CreateFolderAction.init()();
  sub_100063BD0();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v82 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7 = sub_100006324();
  v3(v7);
  MoveShortcutToFolderAction.init()();
  sub_100063C78();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v81 = static _AssistantIntent.Builder.buildExpression(_:)();
  v8 = sub_100006324();
  v3(v8);
  AddShortcutToHomeScreenAction.init()();
  sub_100063D20();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v80 = static _AssistantIntent.Builder.buildExpression(_:)();
  v9 = sub_100006324();
  v3(v9);
  RenameShortcutAction.init()();
  sub_100063E24();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v79 = static _AssistantIntent.Builder.buildExpression(_:)();
  v10 = sub_100006324();
  v3(v10);
  ChangeShortcutIconAction.init()();
  sub_100063E78();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v78 = static _AssistantIntent.Builder.buildExpression(_:)();
  v11 = sub_100006324();
  v3(v11);
  GetShortcutAttributesAction.init()();
  sub_100063F20();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v77 = static _AssistantIntent.Builder.buildExpression(_:)();
  v12 = sub_100006324();
  v3(v12);
  SetShortcutAttributesAction.init()();
  sub_100017364(v13, v14, v15, v16);
  sub_10006401C();
  v17 = sub_100004528();
  sub_100005C24(v17, v18, v19, v20, v21);
  v76 = static _AssistantIntent.Builder.buildExpression(_:)();
  v22 = sub_100006324();
  v3(v22);
  sub_10000B134(2);
  sub_100017364(v23, v24, v25, v26);
  v27 = sub_100004528();
  sub_100005C24(v27, v28, v29, v30, v31);
  v75 = static _AssistantIntent.Builder.buildExpression(_:)();
  v32 = sub_100006324();
  v3(v32);
  sub_10000B134(1);
  sub_100017364(v33, v34, v35, v36);
  v37 = sub_100004528();
  sub_100005C24(v37, v38, v39, v40, v41);
  v42 = static _AssistantIntent.Builder.buildExpression(_:)();
  v43 = sub_100006324();
  v3(v43);
  sub_10000B134(3);
  sub_100017364(v44, v45, v46, v47);
  v48 = sub_100004528();
  sub_100005C24(v48, v49, v50, v51, v52);
  v53 = static _AssistantIntent.Builder.buildExpression(_:)();
  v54 = sub_100006324();
  v3(v54);
  sub_10000B134(6);
  sub_100017364(v55, v56, v57, v58);
  v59 = sub_100004528();
  sub_100005C24(v59, v60, v61, v62, v63);
  v64 = static _AssistantIntent.Builder.buildExpression(_:)();
  v65 = sub_100006324();
  v3(v65);
  CreateShortcutiCloudLinkAction.init()();
  sub_100064070();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v66 = static _AssistantIntent.Builder.buildExpression(_:)();
  v67 = sub_100006324();
  v3(v67);
  DeleteWorkflowAction.init()();
  sub_100065D18();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v68 = static _AssistantIntent.Builder.buildExpression(_:)();
  v69 = sub_100006324();
  v3(v69);
  SearchShortcutsAction.init()();
  sub_1000640C4();
  sub_100004528();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v70 = static _AssistantIntent.Builder.buildExpression(_:)();
  v71 = sub_100006324();
  v3(v71);
  sub_10002E87C(&qword_1001021E0, &qword_1000C5508);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1000C5480;
  *(v72 + 32) = v85;
  *(v72 + 40) = v84;
  *(v72 + 48) = v83;
  *(v72 + 56) = v82;
  *(v72 + 64) = v81;
  *(v72 + 72) = v80;
  *(v72 + 80) = v79;
  *(v72 + 88) = v78;
  *(v72 + 96) = v77;
  *(v72 + 104) = v76;
  *(v72 + 112) = v75;
  *(v72 + 120) = v42;
  *(v72 + 128) = v53;
  *(v72 + 136) = v64;
  *(v72 + 144) = v66;
  *(v72 + 152) = v68;
  *(v72 + 160) = v70;
  v73 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v73;
}

uint64_t sub_1000916EC(uint64_t a1)
{
  v34 = a1;
  v1 = type metadata accessor for _AssistantIntent.PhraseToken();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002E87C(&qword_100102330, &qword_1000C5918);
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v25 - v4;
  v6 = sub_10002E87C(&qword_100102338, &qword_1000C5920);
  __chkstk_darwin(v6);
  sub_100063C24();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x657461676976614ELL;
  v7._object = 0xEC000000206F7420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v33 = sub_1000979A8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v3 + 8);
  v10 = v27;
  v9(v5, v27);
  v26 = v9;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x206F7420706D754ALL;
  v11._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x6E6F697463657320;
  v12._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v10;
  v9(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x206F74206F47;
  v14._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 544106784;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v17 = v30;
  v16 = v31;
  v18 = v32;
  (*(v31 + 104))(v30, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v32);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v16 + 8))(v17, v18);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v5, v13);
  sub_10002E87C(&unk_100102340, &unk_1000C5928);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000C0D90;
  v22 = v28;
  *(v21 + 32) = v29;
  *(v21 + 40) = v22;
  *(v21 + 48) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_100091BE4(uint64_t a1)
{
  v2 = type metadata accessor for NavigationDestinationEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_10004D580(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return OpenNavigationDestinationAction.target.setter();
}

uint64_t sub_100091CB8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10002E87C(&qword_1001021D8, &qword_1000C5500);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C0D90;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100091D84(uint64_t a1)
{
  v32 = type metadata accessor for _AssistantIntent.PhraseToken();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002E87C(&qword_100102318, &qword_1000C58D8);
  v33 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v24 - v3;
  v5 = sub_10002E87C(&qword_100102320, &qword_1000C58E0);
  __chkstk_darwin(v5);
  sub_100063B7C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x206E65704FLL;
  v6._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v26 = sub_100021754();
  v27 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v33 + 8);
  v33 += 8;
  v25 = v8;
  v9 = v28;
  v8(v4, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x2074696445;
  v10._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 544106784;
  v11._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v13 = v29;
  v12 = v30;
  v14 = v32;
  (*(v30 + 104))(v29, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v32);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v12 + 8))(v13, v14);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v25;
  v25(v4, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001000C9450;
  v17._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v4, v9);
  sub_10002E87C(&qword_100102328, &qword_1000C58E8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000C0D90;
  v21 = v32;
  *(v20 + 32) = v31;
  *(v20 + 40) = v21;
  *(v20 + 48) = v19;
  v22 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v22;
}

void sub_10009226C(id *a1)
{
  v1 = *a1;

  AddShortcutToHomeScreenAction.shortcut.setter(v1);
}

uint64_t sub_1000922F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t a5)
{
  type metadata accessor for _AssistantIntent.Value();
  sub_100013888();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000039BC();
  v13 = v12 - v11;
  swift_getKeyPath();
  a3();
  _AssistantIntent.IntentProjection.subscript.getter();

  a4(v14);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v15 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v9 + 8))(v13, v5);
  sub_10002E87C(&qword_1001021F0, &qword_1000C5538);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000C0C20;
  *(v16 + 32) = v15;
  v17 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_100092458(uint64_t a1)
{
  v16 = a1;
  v1 = sub_10002E87C(&qword_100102300, &qword_1000C5898);
  __chkstk_darwin(v1);
  v2 = sub_10002E87C(&qword_100102308, &qword_1000C58A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  sub_100063B28();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = *(v3 + 8);
  v17(v5, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000019;
  v6._object = 0x80000001000C9410;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  sub_100097A00();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v17;
  v17(v5, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v9._object = 0x80000001000C9430;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v5, v2);
  sub_10002E87C(&qword_100102310, &qword_1000C58A8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C0D90;
  v13 = v18;
  *(v12 + 32) = v19;
  *(v12 + 40) = v13;
  *(v12 + 48) = v11;
  v14 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v14;
}

uint64_t sub_100092838(uint64_t a1)
{
  v16 = a1;
  v1 = sub_10002E87C(&qword_1001022E8, &qword_1000C5858);
  __chkstk_darwin(v1);
  v2 = sub_10002E87C(&qword_1001022F0, &qword_1000C5860);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  sub_100063BD0();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = *(v3 + 8);
  v17(v5, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000017;
  v6._object = 0x80000001000C93B0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  sub_100097A00();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v17;
  v17(v5, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000018;
  v9._object = 0x80000001000C93D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v5, v2);
  sub_10002E87C(&qword_1001022F8, &qword_1000C5868);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C0D90;
  v13 = v18;
  *(v12 + 32) = v19;
  *(v12 + 40) = v13;
  *(v12 + 48) = v11;
  v14 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v14;
}

uint64_t sub_100092BD0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;

  return a5(v5, v6, v7);
}

uint64_t sub_100092C7C(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_1001022C0, &qword_1000C5810);
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v5 = sub_10002E87C(&qword_1001022C8, &qword_1000C5818);
  __chkstk_darwin(v5);
  sub_100063C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x2065766F4DLL;
  v6._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v24 = sub_100097924();
  v27 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 544175136;
  v7._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v28 = sub_1000979A8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = *(v29 + 8);
  v23 = v2;
  v29 += 8;
  v22(v4, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x6F6D20732774654CLL;
  v9._object = 0xEB00000000206576;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544175136;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v2;
  v13 = v22;
  v22(v4, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x20656C6946;
  v14._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x207265646E7520;
  v15._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v4, v23);
  sub_10002E87C(&qword_1001022D0, &qword_1000C5820);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000C0D90;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  *(v18 + 48) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_1000931A0@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = AddShortcutToHomeScreenAction.shortcut.getter(*a2);
  *a1 = result;
  return result;
}

uint64_t sub_1000931D0(void *a1)
{

  return MoveShortcutToFolderAction.shortcuts.setter(v1);
}

uint64_t sub_10009321C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationDestinationEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_10004D580(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MoveShortcutToFolderAction.folder.setter();
}

uint64_t sub_1000932A8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100097924();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100063C78();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1000979A8();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10002E87C(&qword_1001021F0, &qword_1000C5538);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C0D80;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100093498()
{
  v0 = sub_10000F780();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10002E87C(&qword_1001021D8, &qword_1000C5500);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C0D80;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_10009353C(uint64_t a1)
{
  v30 = a1;
  v1 = sub_10002E87C(&qword_1001022A8, &qword_1000C57A8);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = sub_10002E87C(&qword_1001022B0, &qword_1000C57B0);
  __chkstk_darwin(v5);
  sub_100063D20();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 543450177;
  v6._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v23 = sub_100021754();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._object = 0x80000001000C92D0;
  v7._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v28;
  v9 = v29 + 8;
  v24 = *(v29 + 8);
  v24(v4, v28);
  v29 = v9;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  v10._object = 0x80000001000C92F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v24;
  v24(v4, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x80000001000C9310;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v28;
  v12(v4, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0xD000000000000022;
  v16._object = 0x80000001000C9340;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v4, v15);
  sub_10002E87C(&qword_1001022B8, &qword_1000C57B8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000C0D70;
  v20 = v26;
  *(v19 + 32) = v27;
  *(v19 + 40) = v20;
  *(v19 + 48) = v25;
  *(v19 + 56) = v18;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t sub_100093A38@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = AddShortcutToHomeScreenAction.shortcut.getter(*a2);
  *a1 = result;
  return result;
}

void sub_100093A6C(id *a1)
{
  v1 = *a1;

  AddShortcutToHomeScreenAction.shortcut.setter(v1);
}

uint64_t sub_100093B04(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_100102290, &qword_1000C5768);
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v5 = sub_10002E87C(&qword_100102298, &qword_1000C5770);
  __chkstk_darwin(v5);
  sub_100063E24();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x20656D616E6552;
  v6._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v24 = sub_100021754();
  v27 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 544175136;
  v7._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v28 = sub_1000978D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = *(v29 + 8);
  v23 = v2;
  v29 += 8;
  v22(v4, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20656D614ELL;
  v9._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v2;
  v13 = v22;
  v22(v4, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001000C92B0;
  v14._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 544175136;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v4, v23);
  sub_10002E87C(&qword_1001022A0, &qword_1000C5778);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000C0D90;
  v19 = v25;
  *(v18 + 32) = v26;
  *(v18 + 40) = v19;
  *(v18 + 48) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

void sub_10009401C(id *a1)
{
  v1 = *a1;

  AddShortcutToHomeScreenAction.shortcut.setter(v1);
}

uint64_t sub_10009405C@<X0>(uint64_t *a1@<X8>)
{
  result = AddShortcutToHomeScreenAction.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10009408C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100021754();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100063E24();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1000978D0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10002E87C(&qword_1001021F0, &qword_1000C5538);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C0D80;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10009427C(uint64_t a1)
{
  v21 = sub_10002E87C(&qword_100102278, &qword_1000C5700);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = v19 - v2;
  v4 = sub_10002E87C(&qword_100102280, &qword_1000C5708);
  __chkstk_darwin(v4);
  sub_100063E78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001000C9270;
  v5._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100021754();
  v19[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19[0] = *(v23 + 8);
  v22 = v7;
  v23 += 8;
  v8 = v21;
  (v19[0])(v3, v21);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20796669646F4DLL;
  v9._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x6E6F6369207327;
  v10._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v19[0];
  (v19[0])(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000015;
  v12._object = 0x80000001000C9290;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v8);
  sub_10002E87C(&qword_100102288, &qword_1000C5710);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000C0D90;
  v16 = v20;
  *(v15 + 32) = v22;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

void sub_1000946A4(id *a1)
{
  v1 = *a1;

  CreateShortcutiCloudLinkAction.shortcut.setter(v1);
}

uint64_t sub_100094728(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_100102260, &qword_1000C5698);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin(v2);
  v5 = v23 - v4;
  v6 = sub_10002E87C(&qword_100102268, &qword_1000C56A0);
  __chkstk_darwin(v6);
  sub_100063F20();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000C9230;
  v7._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v26 = sub_100065454();
  v23[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x20726F6620;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  sub_100021754();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v28;
  v24 = *(v29 + 8);
  v29 += 8;
  v24(v5, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD00000000000001DLL;
  v11._object = 0x80000001000C9250;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x20726F6620;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 63;
  v13._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v24;
  v24(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x2073692074616857;
  v15._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 2126631;
  v16._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x3F6F742074657320;
  v17._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v5, v28);
  sub_10002E87C(&qword_100102270, &qword_1000C56D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000C0D90;
  v20 = v25;
  *(v19 + 32) = v27;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t sub_100094C60@<X0>(_BYTE *a1@<X8>)
{
  result = SetShortcutAttributesAction.operation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100094CA0@<X0>(uint64_t *a1@<X8>)
{
  result = GetShortcutAttributesAction.shortcut.getter();
  *a1 = result;
  return result;
}

void sub_100094CD0(id *a1)
{
  v1 = *a1;

  GetShortcutAttributesAction.shortcut.setter(v1);
}

uint64_t sub_100094D58(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_100102248, &qword_1000C5608);
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = sub_10002E87C(&qword_100102250, &qword_1000C5610);
  __chkstk_darwin(v6);
  v7 = sub_10006401C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001000C9210;
  v8._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v36 = sub_100065454();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x20726F6620;
  v9._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v35 = sub_100021754();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544175136;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100063F74();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = *(v38 + 8);
  v38 += 8;
  v34(v5, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 544499027;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 2126631;
  v13._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v33 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x676E697474657320;
  v14._object = 0xEC000000206F7420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = v7;
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v37;
  v17 = v34;
  v34(v5, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x20656C67676F54;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 2126631;
  v19._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x676E697474657320;
  v20._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x20656C67676F54;
  v21._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x20726F6620;
  v22._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v5, v37);
  sub_10002E87C(&qword_100102258, &qword_1000C5618);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000C0D70;
  v26 = v31;
  *(v25 + 32) = v32;
  *(v25 + 40) = v26;
  *(v25 + 48) = v30;
  *(v25 + 56) = v24;
  v27 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v27;
}

uint64_t sub_10009547C@<X0>(_BYTE *a1@<X8>)
{
  result = SetShortcutAttributesAction.attribute.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000954C4@<X0>(uint64_t *a1@<X8>)
{
  result = SetShortcutAttributesAction.shortcut.getter();
  *a1 = result;
  return result;
}

void sub_1000954F8(id *a1)
{
  v1 = *a1;

  SetShortcutAttributesAction.shortcut.setter(v1);
}

uint64_t sub_10009554C@<X0>(_BYTE *a1@<X8>)
{
  result = SetShortcutAttributesAction.state.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000955E0(uint64_t a1)
{
  v22 = sub_10002E87C(&qword_100102248, &qword_1000C5608);
  v25 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = v19 - v2;
  v4 = sub_10002E87C(&qword_100102250, &qword_1000C5610);
  __chkstk_darwin(v4);
  sub_10006401C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20776F6853;
  v5._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100021754();
  v19[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23 = " to the share sheet";
  v6._object = 0x80000001000C91D0;
  v6._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = *(v25 + 8);
  v24 = v7;
  v25 += 8;
  v8 = v22;
  v20(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 543450177;
  v9._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._object = 0x80000001000C91F0;
  v10._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v20;
  v20(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20656C62616E45;
  v12._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._object = (v23 | 0x8000000000000000);
  v13._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v3, v8);
  sub_10002E87C(&qword_100102258, &qword_1000C5618);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000C0D90;
  v16 = v21;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v17;
}

uint64_t sub_100095A10()
{
  v0 = sub_10002E87C(&qword_100102248, &qword_1000C5608);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10002E87C(&qword_100102250, &qword_1000C5610);
  __chkstk_darwin(v4);
  sub_10006401C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20776F6853;
  v5._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100021754();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._object = 0x80000001000C9190;
  v6._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 543450177;
  v8._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0xD000000000000013;
  v9._object = 0x80000001000C91B0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656C62616E45;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x72616873206E6920;
  v12._object = 0xEB00000000676E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_10002E87C(&qword_100102258, &qword_1000C5618);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000C0D90;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_100095E40()
{
  v0 = sub_10002E87C(&qword_100102248, &qword_1000C5608);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10002E87C(&qword_100102250, &qword_1000C5610);
  __chkstk_darwin(v4);
  sub_10006401C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20776F6853;
  v5._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100021754();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6D20796D206E6920;
  v6._object = 0xEF72616220756E65;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 543450177;
  v8._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x4D20796D206F7420;
  v9._object = 0xEE00726162206361;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656C62616E45;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x20656874206E6920;
  v12._object = 0xEF72616220706F74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_10002E87C(&qword_100102258, &qword_1000C5618);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000C0D90;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_100096280()
{
  v0 = sub_10002E87C(&qword_100102248, &qword_1000C5608);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10002E87C(&qword_100102250, &qword_1000C5610);
  __chkstk_darwin(v4);
  sub_10006401C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001000C9130;
  v5._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100021754();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6F6C206E65687720;
  v6._object = 0xEC00000064656B63;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 544109906;
  v8._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0xD000000000000016;
  v9._object = 0x80000001000C9150;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656C62616E45;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0xD000000000000018;
  v12._object = 0x80000001000C9170;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_10002E87C(&qword_100102258, &qword_1000C5618);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000C0D90;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_1000966BC()
{
  v0 = sub_10002E87C(&qword_100102230, &qword_1000C55C8);
  v1 = *(v0 - 8);
  v22 = v0;
  v23 = v1;
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = sub_10002E87C(&qword_100102238, &qword_1000C55D0);
  __chkstk_darwin(v4);
  sub_100064070();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v5._object = 0x80000001000C90D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_100021754();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v3, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001000C90F0;
  v8._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v19;
  v19(v3, v7);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000019;
  v11._object = 0x80000001000C9110;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v3, v22);
  sub_10002E87C(&qword_100102240, &qword_1000C55D8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000C0D90;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_100096B24(uint64_t a1)
{
  v28 = a1;
  v1 = sub_10002E87C(&qword_100102218, &qword_1000C5588);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v4 = &v24 - v3;
  v5 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002E87C(&qword_100102220, &qword_1000C5590);
  __chkstk_darwin(v9);
  sub_100065D18();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x206574656C6544;
  v10._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v27 = sub_100097924();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x206D6F726620;
  v11._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  (*(v6 + 104))(v8, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v6 + 8))(v8, v5);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v30;
  v25 = *(v31 + 8);
  v31 += 8;
  v25(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2065766F6D6552;
  v14._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v25;
  v25(v4, v13);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x74206574656C6544;
  v17._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x756374726F687320;
  v18._object = 0xEA00000000007374;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v4, v30);
  sub_10002E87C(&qword_100102228, &qword_1000C5598);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000C0D90;
  v21 = v26;
  *(v20 + 32) = v29;
  *(v20 + 40) = v21;
  *(v20 + 48) = v19;
  v22 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v22;
}

uint64_t sub_100097020(void *a1)
{

  return MoveShortcutToFolderAction.shortcuts.setter(v1);
}

uint64_t sub_1000970A4(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_1001021F8, &qword_1000C5540);
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = type metadata accessor for _AssistantIntent.PhraseToken();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002E87C(&qword_100102200, &qword_1000C5548);
  __chkstk_darwin(v10);
  sub_1000640C4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20686372616553;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  (*(v7 + 104))(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v7 + 8))(v9, v6);
  v12._countAndFlagsBits = 0x736E6F6974636120;
  v12._object = 0xED000020726F6620;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_1000978D0();
  v25 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v29;
  v26 = *(v30 + 8);
  v30 += 8;
  v26(v5, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x80000001000C90B0;
  v15._countAndFlagsBits = 0xD000000000000016;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v26;
  v26(v5, v14);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x20646E6946;
  v18._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v5, v14);
  sub_10002E87C(&qword_100102208, &qword_1000C5550);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000C0D90;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_10009759C@<X0>(uint64_t *a1@<X8>)
{
  result = CreateFolderAction.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000975CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];

  return a5(v5, v6, v7, v8);
}

uint64_t sub_10009767C()
{
  v0 = sub_10000F780();
  v1 = sub_10000F780();
  sub_10002E87C(&qword_1001021D8, &qword_1000C5500);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C0D80;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_100097708()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_100013888();
  __chkstk_darwin(v0);
  sub_1000039BC();
  sub_100063C24();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v1 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v2 = sub_100006324();
  v3(v2);
  sub_10002E87C(&qword_1001021D0, &qword_1000C54F8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C0C20;
  *(v4 + 32) = v1;
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10009782C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10002E87C(&qword_1001021D8, &qword_1000C5500);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000C0C20;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

unint64_t sub_1000978D0()
{
  result = qword_1001021E8;
  if (!qword_1001021E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001021E8);
  }

  return result;
}

unint64_t sub_100097924()
{
  result = qword_100102210;
  if (!qword_100102210)
  {
    sub_100041CB4(&qword_1001007E0, qword_1000C2310);
    sub_100021754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102210);
  }

  return result;
}

unint64_t sub_1000979A8()
{
  result = qword_100100580;
  if (!qword_100100580)
  {
    type metadata accessor for NavigationDestinationEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100580);
  }

  return result;
}

unint64_t sub_100097A00()
{
  result = qword_1001022D8;
  if (!qword_1001022D8)
  {
    sub_100041CB4(&qword_1001022E0, &qword_1000C5850);
    sub_1000978D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001022D8);
  }

  return result;
}

void *sub_100097A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000E8F4();
  sub_1000AB100(a3, v5, v6, v7, v8, v9, v10, v11, v32, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7]);
  v13 = v12;

  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = *(v3 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database);
  v34[0] = 0;
  v15 = [v14 recordWithDescriptor:v13 error:v34];
  v16 = v34[0];
  if (!v15)
  {
    v30 = v34[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return _swiftEmptyArrayStorage;
  }

  v17 = v15;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  v19 = v16;
  if (!v18)
  {

    return _swiftEmptyArrayStorage;
  }

  v20 = [v18 fileRepresentation];
  v21 = [objc_allocWithZone(NSItemProvider) init];
  v22 = [v13 name];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_10009A0E0(v23, v25, v21);
  [v21 registerObject:v20 visibility:3];
  [v21 registerObject:v13 visibility:3];
  v26 = objc_opt_self();
  v27 = [v26 existingSceneSessionForEditingWorkflowReference:v13];
  if (!v27)
  {
    v27 = [v26 userActivityForEditingWorkflow:v13];
    [v21 registerObject:v27 visibility:0];
  }

  v28 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v21];
  [v28 setLocalObject:v13];
  sub_10002E87C(&qword_1001000E0, &qword_1000C12D0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000C0DB0;
  *(v29 + 32) = v28;

  return v29;
}

void sub_100097E9C(uint64_t a1, id a2)
{
  v2 = [a2 items];
  sub_100002FC4(0, &qword_100102428, UIDragItem_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10000D55C(v3);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v9 = [v11 collectionView:a1 itemsForBeginningDragSession:a2 atIndexPath:isa];

      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v6 localObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (!*(&v15 + 1))
    {

      sub_100083220(v16, &unk_100100140, &qword_1000C5DC0);
      return;
    }

    sub_100002FC4(0, &unk_100101E80, WFWorkflowReference_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_100098238()
{
  v0 = sub_1000A01D0();
  if (!v0)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = [objc_allocWithZone(UIDragPreviewParameters) init];
  [v4 setVisiblePath:v2];

  return v4;
}

id sub_1000982DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for IndexPath();
  sub_100004458();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000039BC();
  v14 = v13 - v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = a1;
  v17 = a5();

  (*(v10 + 8))(v14, v8);

  return v17;
}

id sub_1000983E8(uint64_t a1, void *a2)
{
  sub_10002E87C(&unk_100102430, &qword_1000C68E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C0C20;
  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [a2 hasItemsConformingToTypeIdentifiers:isa];

  return v6;
}

id sub_1000984F4(void *a1, void *a2, uint64_t a3)
{
  v105 = a3;
  v6 = type metadata accessor for LibrarySectionOptions();
  sub_100004458();
  v98 = v7;
  __chkstk_darwin(v8);
  sub_1000039BC();
  v94 = v10 - v9;
  v11 = sub_10002E87C(&unk_100102410, &unk_1000C0C90);
  v12 = sub_100002EE0(v11);
  __chkstk_darwin(v12);
  v102 = &v90 - v13;
  sub_1000042F8();
  v97 = type metadata accessor for LibrarySectionOptions.SectionType();
  sub_100004458();
  v95 = v14;
  __chkstk_darwin(v15);
  sub_1000039BC();
  v96 = v17 - v16;
  v18 = sub_10002E87C(&unk_1000FF9E0, &unk_1000C5B60);
  v19 = sub_100002EE0(v18);
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  type metadata accessor for ShortcutsLibraryItem.ItemType();
  sub_100004458();
  v100 = v23;
  v101 = v22;
  __chkstk_darwin(v22);
  sub_1000039BC();
  v99 = v25 - v24;
  sub_1000042F8();
  v107 = type metadata accessor for IndexPath();
  sub_100004458();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_10000F1A8();
  v103 = v29;
  __chkstk_darwin(v30);
  v32 = &v90 - v31;
  v33 = sub_10002E87C(&qword_100100010, &unk_1000C1290);
  v34 = sub_100002EE0(v33);
  __chkstk_darwin(v34);
  sub_10000F1A8();
  v106 = v35;
  v37 = __chkstk_darwin(v36);
  v39 = &v90 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v90 - v41;
  __chkstk_darwin(v40);
  v44 = &v90 - v43;
  v104 = v3;
  if ((sub_1000199B0() & 1) == 0)
  {
    if (![a2 localDragSession])
    {
      v45 = objc_allocWithZone(UICollectionViewDropProposal);
      v46 = 2;
      goto LABEL_9;
    }

    v92 = v6;
    v93 = a1;
    swift_unknownObjectRelease();
    v47 = v44;
    v48 = v44;
    v49 = v27;
    v50 = v107;
    sub_1000042A8(v47, 1, 1, v107);
    v51 = [a2 items];
    sub_100002FC4(0, &qword_100102428, UIDragItem_ptr);
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = sub_10000D55C(v52);
    v54 = v50;
    v55 = v49;
    v56 = v48;

    v57 = 0;
    if (v53 > 1)
    {
      goto LABEL_25;
    }

    sub_10006BA4C(v105, v42);
    sub_10000CB2C(v42);
    if (v61)
    {
      sub_100083220(v42, &qword_100100010, &unk_1000C1290);
      v58 = v92;
    }

    else
    {
      v91 = *(v55 + 32);
      v91(v32, v42, v54);
      sub_10000E8F4();
      sub_10001ADD8();

      v60 = type metadata accessor for ShortcutsLibraryItem();
      sub_100005D40(v21, 1);
      v58 = v92;
      if (v61)
      {
        sub_100003A54();
        v62(v32, v54);
        sub_100083220(v21, &unk_1000FF9E0, &unk_1000C5B60);
      }

      else
      {
        ShortcutsLibraryItem.itemType.getter();
        sub_100003F94();
        (*(v63 + 8))(v21, v60);
        v64 = sub_10000F1F4();
        if (v65(v64) == enum case for ShortcutsLibraryItem.ItemType.emptyState(_:))
        {
          sub_100083220(v56, &qword_100100010, &unk_1000C1290);
          v66 = sub_10000F1F4();
          v67(v66);
          v54 = v107;
          v91(v56, v32, v107);
          sub_1000042A8(v56, 0, 1, v54);
          v57 = 2;
          goto LABEL_25;
        }

        sub_100003A54();
        v54 = v107;
        v68(v32, v107);
        v69 = sub_10000F1F4();
        v70(v69);
      }
    }

    sub_10006BA4C(v105, v39);
    sub_10000CB2C(v39);
    v71 = v103;
    if (v61)
    {
      sub_100083220(v39, &qword_100100010, &unk_1000C1290);
    }

    else
    {
      (*(v55 + 32))(v103, v39, v54);
      sub_10000E8F4();
      IndexPath.section.getter();
      v72 = v102;
      sub_10001AB2C();

      v73 = type metadata accessor for ShortcutsLibrarySection();
      sub_100005D40(v72, 1);
      if (v74)
      {
        sub_100003A54();
        v75(v71, v54);
        sub_100083220(v72, &unk_100102410, &unk_1000C0C90);
        v57 = 1;
        goto LABEL_25;
      }

      v81 = v94;
      ShortcutsLibrarySection.options.getter();
      sub_100003F94();
      (*(v82 + 8))(v72, v73);
      v83 = v96;
      LibrarySectionOptions.sectionType.getter();
      (*(v98 + 8))(v81, v58);
      if ((*(v95 + 88))(v83, v97) == enum case for LibrarySectionOptions.SectionType.appShortcuts(_:))
      {
        v84 = sub_100003BD0();
        v85(v84);
        type metadata accessor for AutoShortcutApp();
        sub_1000044FC();
        (*(v86 + 8))(v83);
        v80 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1 intent:1];
        (*(v55 + 8))(v71, v107);
LABEL_29:
        sub_100083220(v56, &qword_100100010, &unk_1000C1290);
        return v80;
      }

      sub_100003A54();
      v54 = v107;
      v87(v71, v107);
      v88 = sub_100003BD0();
      v89(v88);
    }

    v57 = 1;
LABEL_25:
    v76 = v106;
    sub_10006BA4C(v56, v106);
    sub_10000CB2C(v76);
    v77 = v93;
    if (v61)
    {
      v79.super.isa = 0;
    }

    else
    {
      v78 = v54;
      v79.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v55 + 8))(v76, v78);
    }

    [v77 selectItemAtIndexPath:v79.super.isa animated:0 scrollPosition:0];

    v80 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:3 intent:v57];
    goto LABEL_29;
  }

  v45 = objc_allocWithZone(UICollectionViewDropProposal);
  v46 = 0;
LABEL_9:

  return [v45 initWithDropOperation:v46 intent:1];
}

void sub_100098F48(void *a1, void *a2)
{
  v4 = type metadata accessor for LibrarySectionOptions.SectionType();
  sub_100004458();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000F1A8();
  sub_1000138A0();
  __chkstk_darwin(v8);
  v138 = &v134 - v9;
  v10 = sub_10002E87C(&unk_100102410, &unk_1000C0C90);
  v11 = sub_100002EE0(v10);
  __chkstk_darwin(v11);
  v144 = &v134 - v12;
  sub_1000042F8();
  v143 = type metadata accessor for LibrarySectionOptions();
  sub_100004458();
  v142 = v13;
  __chkstk_darwin(v14);
  sub_10000F1A8();
  sub_1000138A0();
  __chkstk_darwin(v15);
  v141 = &v134 - v16;
  sub_1000042F8();
  v17 = type metadata accessor for IndexPath();
  sub_100004458();
  v146 = v18;
  __chkstk_darwin(v19);
  sub_10000F1A8();
  sub_1000138A0();
  __chkstk_darwin(v20);
  sub_1000138A0();
  __chkstk_darwin(v21);
  v23 = &v134 - v22;
  v24 = sub_10002E87C(&qword_100100010, &unk_1000C1290);
  v25 = sub_100002EE0(v24);
  __chkstk_darwin(v25);
  sub_10000F1A8();
  sub_1000138A0();
  __chkstk_darwin(v26);
  sub_1000138A0();
  v28 = __chkstk_darwin(v27);
  v30 = &v134 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v134 - v32;
  __chkstk_darwin(v31);
  v150 = &v134 - v34;
  v156 = a2;
  v35 = [a2 destinationIndexPath];
  v140 = v4;
  v139 = v6;
  if (v35)
  {
    v36 = v35;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  sub_1000042A8(v33, v37, 1, v17);
  v38 = v33;
  v39 = v150;
  sub_10009A070(v38, v150);
  sub_10006BA4C(v39, v30);
  v157 = v17;
  LODWORD(v39) = sub_10000AB80(v30, 1, v17);
  sub_100083220(v30, &qword_100100010, &unk_1000C1290);
  if (v39 == 1)
  {
    v40 = sub_100005C3C();
    [objc_msgSend(v40 v41)];
    v149 = v42;
    v148 = v43;
    swift_unknownObjectRelease();
    v44 = [a1 numberOfSections];
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    v45 = v44;
    if (!v44)
    {
      goto LABEL_17;
    }

    v46 = 0;
    v47 = (v146 + 8);
    v147 = UICollectionElementKindSectionHeader;
    do
    {
      v48 = [a1 numberOfItemsInSection:v46];
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v50 = *v47;
      (*v47)(v23, v157);
      v51 = [a1 layoutAttributesForItemAtIndexPath:isa];

      if (v51)
      {
        [v51 frame];
        sub_1000079BC();

        if (__OFSUB__(v48, 1))
        {
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
          __break(1u);
LABEL_75:
          __break(1u);
          return;
        }

        v52 = v151;
        IndexPath.init(item:section:)();
        v53 = IndexPath._bridgeToObjectiveC()().super.isa;
        v50(v52, v157);
        v54 = [a1 layoutAttributesForItemAtIndexPath:v53];

        if (v54)
        {
          [v54 frame];
          v56 = v55;
          v58 = v57;
          v60 = v59;
          v62 = v61;

          v63 = v147;
          IndexPath.init(item:section:)();
          v64 = IndexPath._bridgeToObjectiveC()().super.isa;
          v50(v23, v157);
          v65 = [a1 layoutAttributesForSupplementaryElementOfKind:v63 atIndexPath:v64];

          v154 = v58;
          v153 = v60;
          v152 = v62;
          if (v65)
          {
            [v65 frame];
            sub_1000079BC();
          }

          v164.origin.x = sub_10000F7A0();
          MinX = CGRectGetMinX(v164);
          v165.origin.x = sub_10000F7A0();
          MinY = CGRectGetMinY(v165);
          [a1 frame];
          Width = CGRectGetWidth(v166);
          v167.origin.x = v56;
          *&v167.origin.y = v154;
          v167.size.width = v153;
          *&v167.size.height = v152;
          MaxY = CGRectGetMaxY(v167);
          v168.origin.x = sub_10000F7A0();
          v169.size.height = MaxY - CGRectGetMinY(v168) + 12.0;
          v169.origin.x = MinX;
          v169.origin.y = MinY;
          v169.size.width = Width;
          v163.x = v149;
          v163.y = v148;
          if (CGRectContainsPoint(v169, v163))
          {
            [a1 numberOfItemsInSection:v46];
            v70 = v135;
            IndexPath.init(item:section:)();
            v71 = v150;
            sub_100083220(v150, &qword_100100010, &unk_1000C1290);
            sub_1000042A8(v70, 0, 1, v157);
            sub_10009A070(v70, v71);
            break;
          }
        }
      }

      ++v46;
    }

    while (v45 != v46);
  }

LABEL_17:
  v72 = v145;
  sub_10006BA4C(v150, v145);
  v73 = v157;
  sub_100005D40(v72, 1);
  if (v74)
  {
    v75 = sub_100003BD0();
    sub_100083220(v75, v76, &unk_1000C1290);
    v77 = v72;
    v78 = &qword_100100010;
    v79 = &unk_1000C1290;
    goto LABEL_66;
  }

  (*(v146 + 32))(v155, v72, v73);
  v80 = sub_100005C3C();
  v82 = [v80 v81];
  *&v83 = COERCE_DOUBLE(sub_10002E87C(&qword_100102420, &qword_1000C5938));
  v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = sub_10000D55C(v84);
  v153 = *&v83;
  if (v85)
  {
    v86 = v85;
    *&v160[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v86 < 0)
    {
      goto LABEL_74;
    }

    v87 = 0;
    do
    {
      if ((v84 & 0xC000000000000001) != 0)
      {
        v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v88 = *(v84 + 8 * v87 + 32);
        swift_unknownObjectRetain();
      }

      ++v87;
      v89 = [v88 dragItem];
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v86 != v87);

    v90 = *&v160[0];
  }

  else
  {

    v90 = _swiftEmptyArrayStorage;
  }

  v154 = _swiftEmptyArrayStorage;
  v162 = _swiftEmptyArrayStorage;
  v91 = sub_10000D55C(v90);
  v92 = 0;
  while (v91 != v92)
  {
    if ((v90 & 0xC000000000000001) != 0)
    {
      v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v92 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v93 = *(v90 + 8 * v92 + 32);
    }

    v94 = v93;
    if (__OFADD__(v92, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if ([v93 localObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v158 = 0u;
      v159 = 0u;
    }

    v160[0] = v158;
    v160[1] = v159;
    if (!*(&v159 + 1))
    {
      sub_100083220(v160, &unk_100100140, &qword_1000C5DC0);
      goto LABEL_45;
    }

    sub_100002FC4(0, &unk_100101E80, WFWorkflowReference_ptr);
    if ((swift_dynamicCast() & 1) != 0 && v161)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v154 = v162;
      ++v92;
    }

    else
    {
LABEL_45:
      ++v92;
    }
  }

  sub_10000E8F4();
  IndexPath.section.getter();
  v95 = v144;
  sub_10001AB2C();

  type metadata accessor for ShortcutsLibrarySection();
  sub_100005D40(v95, 1);
  if (v74)
  {

    v96 = sub_10001C7FC();
    v97(v96, v157);
    sub_100083220(v150, &qword_100100010, &unk_1000C1290);
    v78 = &unk_100102410;
    v79 = &unk_1000C0C90;
    v77 = v95;
    goto LABEL_66;
  }

  v98 = v137;
  ShortcutsLibrarySection.options.getter();
  sub_100003F94();
  v99 = sub_100003BD0();
  v100(v99);
  v101 = v142;
  v102 = v141;
  v103 = v143;
  (*(v142 + 32))(v141, v98, v143);
  v104 = v138;
  LibrarySectionOptions.sectionType.getter();
  v105 = v139;
  v106 = v140;
  v107 = (*(v139 + 88))(v104, v140);
  v108 = v157;
  if (v107 != enum case for LibrarySectionOptions.SectionType.shortcuts(_:))
  {

    (*(v101 + 8))(v102, v103);
    v113 = sub_10001C7FC();
    v114(v113, v108);
    sub_100083220(v150, &qword_100100010, &unk_1000C1290);
    (*(v105 + 8))(v104, v106);
    return;
  }

  v109 = *(v105 + 8);
  v109(v104, v106);
  v152 = LibrarySectionOptions.collection.getter();
  v110 = IndexPath.item.getter();
  v111 = v136;
  LibrarySectionOptions.sectionType.getter();
  v112 = LibrarySectionOptions.SectionType.count.getter();
  v109(v111, v106);
  if (__OFSUB__(v112, 1))
  {
    goto LABEL_75;
  }

  if (v112 - 1 < v110)
  {
    NSNotFound.getter();
  }

  else
  {
    IndexPath.item.getter();
  }

  LibraryDataSource.shortcutMoveService.getter();

  LOBYTE(v160[0]) = 1;
  sub_10000F1F4();
  dispatch thunk of ShortcutMoveService.move(_:to:of:source:)();
  v151 = 0;

  sub_100010CE4(1, 1, v115, v116, v117, v118, v119, v120, v134, v135, v136, v137);

  v121 = sub_100005C3C();
  v123 = [v121 v122];
  v124 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = sub_10000D55C(v124);
  v126 = 0;
  v154 = (v124 & 0xC000000000000001);
  v127 = (v146 + 8);
  while (v125 != v126)
  {
    if (v154)
    {
      v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v126 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v128 = *(v124 + 8 * v126 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v126, 1))
    {
      goto LABEL_70;
    }

    v129 = [v128 dragItem];
    if (__OFADD__(IndexPath.item.getter(), v126))
    {
      goto LABEL_72;
    }

    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    v130 = IndexPath._bridgeToObjectiveC()().super.isa;
    (*v127)(v23, v157);
    v131 = sub_100005C3C();
    v133 = [v131 v132];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    ++v126;
  }

  (*(v142 + 8))(v141, v143);
  (*v127)(v155, v157);
  v78 = &qword_100100010;
  v79 = &unk_1000C1290;
  v77 = v150;
LABEL_66:
  sub_100083220(v77, v78, v79);
}

void sub_100099F18(int a1, id a2)
{
  if ([a2 localContext])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100002FC4(0, &qword_1000FF9C0, UICollectionViewCell_ptr);
    if (swift_dynamicCast())
    {
      [v2 _setDropTarget:0];
    }
  }

  else
  {
    sub_100083220(v5, &unk_100100140, &qword_1000C5DC0);
  }
}

uint64_t sub_10009A070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_100100010, &unk_1000C1290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10009A0E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setSuggestedName:v4];
}

BOOL sub_10009A158()
{
  type metadata accessor for IndexPath();
  sub_100009E14(&unk_1001025E8, &type metadata accessor for IndexPath);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  return v2 == v1;
}

uint64_t sub_10009A1F4(uint64_t a1, uint64_t a2)
{
  sub_100011DDC();
  v7 = type metadata accessor for LibraryViewController.TableHostingController(0, *((swift_isaMask & v5) + qword_100109F88), *((swift_isaMask & v5) + qword_100109F88 + 8), v6);
  v9.receiver = v2;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, "setContentScrollView:forEdge:", a1, a2);
  sub_100011DDC();
  return PassthroughSubject.send(_:)();
}

void sub_10009A2D8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a1;
  sub_10009A1F4(a3, a4);
}

void sub_10009A34C()
{
  v1 = objc_allocWithZone(v0);
  sub_100007DC8();
  sub_10009A37C();
}

void sub_10009A37C()
{
  sub_1000079FC();
  v3 = v2;
  sub_100011DDC();
  v5 = *((swift_isaMask & v4) + qword_100109F88);
  sub_10000F720();
  v7 = v6;
  sub_100005B90();
  __chkstk_darwin(v8);
  sub_10000A7F8();
  v10 = *(v9 + 16);
  v11 = sub_10002E87C(&unk_1001025D0, &qword_1000C5B48);
  sub_100006640(v11);
  *(v0 + v10) = PassthroughSubject.init()();
  (*(v7 + 16))(v1, v3, v5);
  UIHostingController.init(rootView:)();
  (*(v7 + 8))(v3, v5);
  sub_1000046DC();
}

void sub_10009A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000079FC();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  sub_100011DDC();
  v24 = *((swift_isaMask & v23) + qword_100109F88);
  sub_10000F720();
  v26 = v25;
  sub_100005B90();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v31 = *(v30 + 16);
  v32 = sub_10002E87C(&unk_1001025D0, &qword_1000C5B48);
  sub_100006640(v32);
  *(v18 + v31) = PassthroughSubject.init()();
  sub_100004780();
  v33(v29, v22, v24);
  UIHostingController.init(coder:rootView:)();
  (*(v26 + 8))(v22, v24);
  sub_1000046DC();
}

id sub_10009A648(void *a1)
{
  sub_100011DDC();
  v4 = swift_isaMask & v3;
  v5 = *((swift_isaMask & v3) + qword_100109F88 + 16);
  v6 = sub_10002E87C(&unk_1001025D0, &qword_1000C5B48);
  sub_100006640(v6);
  *&v1[v5] = PassthroughSubject.init()();
  v8 = type metadata accessor for LibraryViewController.TableHostingController(0, *(v4 + qword_100109F88), *(v4 + qword_100109F88 + 8), v7);
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_10009A7A8()
{
  sub_100011DDC();
  v3 = type metadata accessor for LibraryViewController.TableHostingController(0, *((swift_isaMask & v1) + qword_100109F88), *((swift_isaMask & v1) + qword_100109F88 + 8), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10009A8A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  sub_100005BC0();
  swift_beginAccess();
  type metadata accessor for LibraryConfiguration();
  sub_100003EC8();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_10009A91C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  swift_beginAccess();
  v4 = type metadata accessor for LibraryConfiguration();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_100013B1C();
  return (*(v5 + 8))(a1, v4);
}

id sub_10009A9E8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LibraryViewController.LibraryFlowLayout();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10009AA7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryViewController.LibraryFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10009AB60(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10000E8F4();
    type metadata accessor for LibraryDataSource();
    v7 = method lookup function for LibraryDataSource();
    v7();

    v8 = LibraryLayoutMode.rawValue.getter();
    v10 = v9;
    if (v8 == LibraryLayoutMode.rawValue.getter() && v10 == v11)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v14 = [a3 contentScrollViewForEdge:v4];
    [v6 setContentScrollView:v14 forEdge:v4];

    v6 = v14;
LABEL_10:
  }
}

uint64_t sub_10009ACB4()
{
  v0 = sub_10002E87C(&unk_100101EB0, &unk_1000C5330);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  v3 = &v10 - v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    dispatch thunk of LibraryDelegate.runningWorkflow.getter();
    swift_unknownObjectRelease();
    v4 = type metadata accessor for RunningWorkflow();
    if (sub_10000AB80(v3, 1, v4) != 1)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = type metadata accessor for RunningWorkflow();
    sub_1000042A8(v3, 1, 1, v6);
  }

  v5 = 1;
LABEL_6:
  sub_1000069B0(v3, &unk_100101EB0, &unk_1000C5330);
  sub_10000E8F4();
  sub_1000AB898();
  v8 = v7;

  if (v8 > 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

char *sub_10009ADDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = [*&result[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database] sortedVisibleFolders];
    v7 = [v6 descriptors];

    sub_100002FC4(0, &qword_100100098, WFWorkflowCollection_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_10000D55C(v8);
    if (v9)
    {
      v10 = v9;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v29 = v5;
      sub_100002FC4(0, &qword_100100C60, UIAction_ptr);
      v11 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v8 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = sub_1000A1478(v12, &selRef_systemIconName);
        if (v15)
        {
          v16 = v14;
          v17 = v15;
          sub_100002FC4(0, &qword_100100110, UIImage_ptr);
          sub_100007B58(v16, v17);
        }

        ++v11;
        v18 = [v13 name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        *(v20 + 24) = v13;
        preferredElementSize = UIMenuElementSizeSmall;
        v25._rawValue = 0;
        v27 = sub_1000A14D8;
        v28 = v20;
        v26 = 0;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v10 != v11);

      v5 = v29;
    }

    else
    {
    }

    sub_10002E87C(&qword_1001000E0, &qword_1000C12D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000C0DB0;
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);

      v22 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100002FC4(0, &qword_100100C30, UIMenuElement_ptr);
      v22 = _swiftEmptyArrayStorage;
    }

    sub_100002FC4(0, &unk_100101F20, UIMenu_ptr);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    *(v21 + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v30, 1, 0xFFFFFFFFFFFFFFFFLL, v22, v25);
    a1(v21);
  }

  return result;
}

void *sub_10009B1BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    *v7 = a3;
    (*(v5 + 104))(v7, enum case for LibraryWorkflowCreationBehavior.inFolder(_:), v4);
    type metadata accessor for LibraryViewController(0);
    sub_100009E14(&qword_1001025E0, type metadata accessor for LibraryViewController);
    v10 = a3;
    LibraryOperations.createWorkflow(from:withBehavior:)();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double sub_10009B358(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1000A1470, v4);

  return result;
}