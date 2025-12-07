uint64_t sub_100188294(uint64_t a1)
{
  v2 = *(v1 + 264);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to query SE peer identities: %@", v5, 0xCu);
    sub_100075768(v6, &unk_100503F70, &unk_10040B2E0);
  }

  v9 = *(v1 + 240);
  v8 = *(v1 + 248);

  *(v1 + 280) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();
  sub_10006A2D0(v9, v8);

  v10 = *(v1 + 8);

  return v10(20);
}

uint64_t sub_100188440(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
  v6 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryRequiredPref;
  v8 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v9 = *(*(v8 - 8) + 8);
  v9(v2 + v7, v8);
  v10 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__cachedLocalIdentity;
  v11 = sub_100068FC4(&qword_100504F78, &qword_10040C508);
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  v9(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__didRecoverTLK, v8);
  v9(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce, v8);
  v9(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__disableKeySync, v8);
  v12 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__lastTrustedPeerIdentifiers;
  v13 = sub_100068FC4(&qword_100504EE8, &qword_10040C430);
  (*(*(v13 - 8) + 8))(v2 + v12, v13);
  v14 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__lastDSIDCanSync;
  v15 = sub_100068FC4(&qword_100504F98, &unk_10040C540);
  (*(*(v15 - 8) + 8))(v2 + v14, v15);

  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_100188710(uint64_t a1, uint64_t a2)
{
  sub_100188440(a1, a2);

  return _swift_defaultActor_deallocate(v2);
}

uint64_t type metadata accessor for SEKeySyncManager(uint64_t a1)
{
  result = qword_100504E00;
  if (!qword_100504E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100188790(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    sub_100188B9C(319, &qword_100504E10, &type metadata for Int, &type metadata accessor for UserDefaultBacked);
    if (v3 <= 0x3F)
    {
      sub_100188B9C(319, &qword_100506E70, &type metadata for Bool, &type metadata accessor for UserDefaultBacked);
      if (v4 <= 0x3F)
      {
        sub_100188A24(319);
        if (v5 <= 0x3F)
        {
          sub_100188B38(319);
          if (v6 <= 0x3F)
          {
            sub_100188B9C(319, qword_100504E38, &type metadata for Data, &type metadata accessor for UserDefaultBackedOptional);
            if (v7 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100188A24(uint64_t a1)
{
  if (!qword_100504E18)
  {
    type metadata accessor for SESPeerIdentityData(255);
    sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
    sub_100188AF0(&qword_100504E28, type metadata accessor for SESPeerIdentityData, &unk_10040DF5C);
    v1 = type metadata accessor for UserDefaultBackedCodableOptional();
    if (!v2)
    {
      atomic_store(v1, &qword_100504E18);
    }
  }
}

uint64_t sub_100188AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100188B38(uint64_t a1)
{
  if (!qword_100504E30)
  {
    sub_1000692D8(&qword_100502458, &qword_10040C1F0);
    v1 = type metadata accessor for UserDefaultBackedOptional();
    if (!v2)
    {
      atomic_store(v1, &qword_100504E30);
    }
  }
}

void sub_100188B9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100188BEC(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100188C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100188CB0, 0, 0);
}

uint64_t sub_100188CB0()
{
  v5 = v0;
  v1 = *(v0 + 16);
  (*(v0 + 24))(&v4);
  *(v1 + 16) = v4;
  OS_dispatch_semaphore.signal()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100188D34()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100188E0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100188E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100188ED8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100188F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100188F7C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100188F94(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100188FC4()
{
  result = qword_100504EC0;
  if (!qword_100504EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504EC0);
  }

  return result;
}

uint64_t sub_100189038()
{
  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100189104;
  v2 = *(v0 + 16);

  return sub_10015F214(v2);
}

uint64_t sub_100189104()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001891F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10018DFB8;

  return v6(a1);
}

uint64_t sub_1001892F0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001893E8;

  return v6(a1);
}

uint64_t sub_1001893E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unsigned __int8 *sub_1001894E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_10018CE90();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100189A78(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100189A78(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100189AF8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100189AF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1001AC648(v9, 0), v12 = sub_100189C50(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100189C50(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100189E70(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100189E70(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100189E70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100189EEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10018B888(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

char *sub_100189FB8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_10018A070(void *a1, uint64_t *a2)
{
  result = [a1 currentTLK];
  if (!result)
  {
    return result;
  }

  v4 = *a2;
  v5 = *(*a2 + 16);
  v41 = v4;

  v39 = v5;
  if (!v5)
  {
LABEL_65:

    return 1;
  }

  v6 = 0;
  v7 = (v41 + 48);
  while (1)
  {
    if (v6 >= *(v41 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v11 = *v7;
    v10 = v7[1];
    v13 = v7[2];
    v12 = v7[3];
    v15 = v7[4];
    v14 = v7[5];
    sub_100069E2C(v8, v9);
    v44 = v10;
    sub_100069E2C(v11, v10);
    v45 = v13;
    v46 = v12;
    sub_100069E2C(v13, v12);
    sub_100069E2C(v15, v14);
    v16 = [a1 currentTLK];
    if (!v16)
    {
      v19 = 0;
      v21 = 0xF000000000000000;
      if (v9 >> 60 == 15)
      {
LABEL_66:
        sub_100069E2C(v8, v9);

        sub_10006A2D0(v19, v21);
        sub_10006A178(v8, v9);
        sub_10006A178(v11, v10);
        sub_10006A178(v45, v46);
        sub_10006A178(v15, v14);
        return 0;
      }

      goto LABEL_13;
    }

    v42 = v15;
    v43 = v14;
    v17 = v16;
    v18 = [v16 tlkUUID];

    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v21 >> 60 == 15)
    {
      v15 = v42;
      v14 = v43;
      if (v9 >> 60 == 15)
      {
        goto LABEL_66;
      }

      goto LABEL_13;
    }

    if (v9 >> 60 == 15)
    {
      v15 = v42;
      v14 = v43;
LABEL_13:
      sub_100069E2C(v8, v9);
      sub_10006A2D0(v19, v21);
      v22 = v8;
      v23 = v9;
LABEL_14:
      sub_10006A2D0(v22, v23);
      sub_10006A178(v8, v9);
      sub_10006A178(v11, v10);
      sub_10006A178(v45, v46);
      sub_10006A178(v15, v14);
      goto LABEL_15;
    }

    v24 = v21 >> 62;
    v25 = v9 >> 62;
    v15 = v42;
    v14 = v43;
    if (v21 >> 62 == 3)
    {
      v26 = 0;
      if (!v19 && v21 == 0xC000000000000000 && v9 >> 62 == 3)
      {
        v26 = 0;
        if (!v8 && v9 == 0xC000000000000000)
        {
          sub_100069E2C(0, 0xC000000000000000);
          sub_10006A2D0(0, 0xC000000000000000);
          v8 = 0;
          v19 = 0;
          goto LABEL_68;
        }
      }

LABEL_34:
      if (v25 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        v26 = BYTE6(v21);
        if (v25 <= 1)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }

      LODWORD(v26) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_75;
      }

      v26 = v26;
      goto LABEL_34;
    }

    if (v24 == 2)
    {
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_76;
      }

      goto LABEL_34;
    }

    v26 = 0;
    if (v25 <= 1)
    {
LABEL_35:
      if (v25)
      {
        LODWORD(v30) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_74;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(v9);
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v25 != 2)
    {
      break;
    }

    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_73;
    }

LABEL_42:
    if (v26 != v30)
    {
      goto LABEL_48;
    }

    if (v26 < 1)
    {
      goto LABEL_67;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v33 = *(v19 + 16);
        v38 = *(v19 + 24);
        sub_100069E2C(v8, v9);
        sub_100069E2C(v8, v9);
        sub_10006A2BC(v19, v21);
        v34 = __DataStorage._bytes.getter();
        if (v34)
        {
          v35 = __DataStorage._offset.getter();
          if (__OFSUB__(v33, v35))
          {
            goto LABEL_79;
          }

          v34 += v33 - v35;
        }

        if (__OFSUB__(v38, v33))
        {
          goto LABEL_78;
        }

        goto LABEL_60;
      }

      memset(v48, 0, 14);
      sub_100069E2C(v8, v9);
      sub_100069E2C(v8, v9);
      sub_10006A2BC(v19, v21);
    }

    else
    {
      if (v24)
      {
        if (v19 >> 32 < v19)
        {
          goto LABEL_77;
        }

        sub_100069E2C(v8, v9);
        sub_100069E2C(v8, v9);
        sub_10006A2BC(v19, v21);
        v34 = __DataStorage._bytes.getter();
        if (v34)
        {
          v36 = __DataStorage._offset.getter();
          if (__OFSUB__(v19, v36))
          {
            goto LABEL_80;
          }

          v34 += v19 - v36;
        }

LABEL_60:
        __DataStorage._length.getter();
        sub_10019F024(v34, v8, v9, v48);
        sub_10006A178(v8, v9);
        sub_10006A2D0(v19, v21);
        sub_10006A2D0(v8, v9);
        v37 = v48[0];
        goto LABEL_63;
      }

      v48[0] = v19;
      LOWORD(v48[1]) = v21;
      BYTE2(v48[1]) = BYTE2(v21);
      BYTE3(v48[1]) = BYTE3(v21);
      BYTE4(v48[1]) = BYTE4(v21);
      BYTE5(v48[1]) = BYTE5(v21);
      sub_100069E2C(v8, v9);
      sub_100069E2C(v8, v9);
      sub_10006A2BC(v19, v21);
    }

    sub_10019F024(v48, v8, v9, &v47);
    sub_10006A178(v8, v9);
    sub_10006A2D0(v19, v21);
    sub_10006A2D0(v8, v9);
    v37 = v47;
LABEL_63:
    sub_10006A2D0(v19, v21);
    sub_10006A178(v8, v9);
    sub_10006A178(v11, v44);
    sub_10006A178(v45, v46);
    sub_10006A178(v42, v43);
    if (v37)
    {
      goto LABEL_69;
    }

LABEL_15:
    ++v6;
    v7 += 9;
    if (v39 == v6)
    {
      goto LABEL_65;
    }
  }

  if (v26)
  {
LABEL_48:
    sub_100069E2C(v8, v9);
    sub_10006A2D0(v8, v9);
    v22 = v19;
    v23 = v21;
    goto LABEL_14;
  }

LABEL_67:
  sub_100069E2C(v8, v9);
  sub_10006A2D0(v8, v9);
LABEL_68:
  sub_10006A2D0(v19, v21);
  sub_10006A178(v8, v9);
  sub_10006A178(v11, v10);
  sub_10006A178(v45, v46);
  sub_10006A178(v42, v43);
LABEL_69:

  return 0;
}

uint64_t sub_10018A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[45] = type metadata accessor for SESTLKShareData(0);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_10018A7C0, v3, 0);
}

uint64_t sub_10018A7C0()
{
  v28 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = [*(v0 + 336) tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v6 = sub_10033322C(sub_10018CEE4, v5, v4);
  *(v0 + 384) = v6;

  if (v6 >> 62)
  {
    goto LABEL_11;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 392) = v7;
  if (v7)
  {
    while (1)
    {
      *(v0 + 400) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
      v8 = *(v0 + 384);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_11:
      v19 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 392) = v19;
      if (!v19)
      {
        goto LABEL_12;
      }
    }

    v9 = *(v8 + 32);
LABEL_7:
    v10 = v9;
    *(v0 + 408) = v9;
    *(v0 + 416) = 1;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v11 = [v10 shareData];
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_100188AF0(&qword_100504F40, type metadata accessor for SESTLKShareData, &unk_10040DF84);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v16 = *(v0 + 368);
    v15 = *(v0 + 376);
    sub_10006A178(v12, v14);

    sub_10018CF04(v16, v15, type metadata accessor for SESTLKShareData);
    v17 = swift_task_alloc();
    *(v0 + 424) = v17;
    *v17 = v0;
    v17[1] = sub_10018AE44;

    return sub_10016C130();
  }

  else
  {
LABEL_12:
    v20 = *(v0 + 328);

    sub_10018C898(v20, v0 + 224);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    sub_10018CF6C(v20);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 328);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1002FFA0C(*v23, *(v23 + 8), &v27);
      _os_log_impl(&_mh_execute_header, v21, v22, "No eligible shares for view %s", v24, 0xCu);
      sub_1000752F4(v25);
    }

    v26 = *(v0 + 8);

    return v26(0);
  }
}

uint64_t sub_10018AE44(uint64_t a1)
{
  v3 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
    v4 = v3[44];

    v5 = sub_10018B7B8;
    v6 = v4;
  }

  else
  {
    v6 = v3[44];
    v5 = sub_10018AF6C;
  }

  return _swift_task_switch(v5, v6, 0);
}

id sub_10018AF6C()
{
  v42 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 376);
  v3 = v2 + *(*(v0 + 360) + 24);
  sub_1001A66F8(*(v0 + 432), *v3, *(v3 + 8), v2);
  v40 = v1;
  if (!v1)
  {
    v16 = *(v0 + 408);

    v17 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 408);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v20;
      *v22 = v20;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v18, v19, "KeySyncManager: Successfully imported TLK from %@", v21, 0xCu);
      sub_100075768(v22, &unk_100503F70, &unk_10040B2E0);
    }

    v24 = *(v0 + 432);
    v25 = *(v0 + 408);
    v26 = *(v0 + 376);

    v27 = objc_opt_self();
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(v0 + 304) = 0x726F706D496B6C74;
    *(v0 + 312) = 0xEB00000000646574;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 1;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_10004DC20(v27, isa);

    sub_10018CE30(v26, type metadata accessor for SESTLKShareData);
    goto LABEL_9;
  }

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v41);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to import TLK - %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v11 = *(v0 + 432);
  v12 = *(v0 + 408);
  v13 = *(v0 + 376);
  sub_100180988(15, 0);

  result = sub_10018CE30(v13, type metadata accessor for SESTLKShareData);
  v15 = *(v0 + 416);
  if (v15 == *(v0 + 392))
  {

LABEL_9:

    v30 = *(v0 + 8);

    return v30(v40 == 0);
  }

  v31 = *(v0 + 384);
  if ((v31 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v15 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      __break(1u);
      return result;
    }

    result = *(v31 + 8 * v15 + 32);
  }

  v32 = result;
  *(v0 + 408) = result;
  *(v0 + 416) = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v33 = [v32 shareData];
  v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  sub_100188AF0(&qword_100504F40, type metadata accessor for SESTLKShareData, &unk_10040DF84);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v38 = *(v0 + 368);
  v37 = *(v0 + 376);
  sub_10006A178(v34, v36);

  sub_10018CF04(v38, v37, type metadata accessor for SESTLKShareData);
  v39 = swift_task_alloc();
  *(v0 + 424) = v39;
  *v39 = v0;
  v39[1] = sub_10018AE44;

  return sub_10016C130();
}

uint64_t sub_10018B7B8(uint64_t a1)
{
  v2 = v1[54];
  v3 = v1[51];
  v4 = v1[47];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v2;

  sub_10018CE30(v4, type metadata accessor for SESTLKShareData);

  v6 = v1[1];

  return v6(0);
}

uint64_t sub_10018B888(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100189E70(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100189E70(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100189E70(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10018BCF4(void *a1, void *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);

  v35 = v3;
  if (!v3)
  {
LABEL_64:

    return 0;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
    }

    v39[0] = *(v2 + v5);
    v6 = *(v2 + v5 + 16);
    v7 = *(v2 + v5 + 32);
    v8 = *(v2 + v5 + 48);
    v40 = *(v2 + v5 + 64);
    v39[3] = v8;
    v39[1] = v6;
    v39[2] = v7;
    v9 = *(&v39[0] + 1);
    v10 = *&v39[0];
    sub_10018C628(v39, v38);
    sub_100069E2C(v10, v9);
    v11 = [a1 currentTLK];
    if (!v11)
    {
      if (v9 >> 60 == 15)
      {
        sub_10018C684(v39);
LABEL_66:

        sub_10006A2D0(v10, v9);
        return 1;
      }

      v14 = 0;
      v16 = 0xF000000000000000;
LABEL_11:
      sub_10018C684(v39);
      goto LABEL_12;
    }

    v12 = v11;
    v13 = [v11 tlkUUID];

    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v9 >> 60 == 15)
    {
      sub_10018C684(v39);
      if (v16 >> 60 == 15)
      {
        goto LABEL_66;
      }

LABEL_12:
      sub_10006A2D0(v10, v9);
      v17 = v14;
      v18 = v16;
LABEL_13:
      sub_10006A2D0(v17, v18);
      goto LABEL_14;
    }

    if (v16 >> 60 == 15)
    {
      goto LABEL_11;
    }

    v19 = v9 >> 62;
    v20 = v16 >> 62;
    if (v9 >> 62 == 3)
    {
      v21 = 0;
      if (!v10 && v9 == 0xC000000000000000 && v16 >> 62 == 3)
      {
        v21 = 0;
        if (!v14 && v16 == 0xC000000000000000)
        {
          sub_100069E2C(0, 0xC000000000000000);
          sub_10006A2BC(0, 0xC000000000000000);
          sub_10006A2D0(0, 0xC000000000000000);
          sub_10018C684(v39);
          sub_10006A2D0(0, 0xC000000000000000);
          sub_10006A178(0, 0xC000000000000000);
          v10 = 0;
          goto LABEL_68;
        }
      }

LABEL_33:
      if (v20 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        v21 = BYTE6(v9);
        if (v20 <= 1)
        {
          goto LABEL_34;
        }

        goto LABEL_39;
      }

      LODWORD(v21) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_74;
      }

      v21 = v21;
      goto LABEL_33;
    }

    if (v19 == 2)
    {
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (v24)
      {
        goto LABEL_75;
      }

      goto LABEL_33;
    }

    v21 = 0;
    if (v20 <= 1)
    {
LABEL_34:
      if (v20)
      {
        LODWORD(v25) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_73;
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v16);
      }

      goto LABEL_41;
    }

LABEL_39:
    if (v20 != 2)
    {
      break;
    }

    v27 = *(v14 + 16);
    v26 = *(v14 + 24);
    v24 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v24)
    {
      goto LABEL_72;
    }

LABEL_41:
    if (v21 != v25)
    {
      goto LABEL_47;
    }

    if (v21 < 1)
    {
      goto LABEL_67;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v28 = *(v10 + 16);
        v34 = *(v10 + 24);
        sub_100069E2C(v10, v9);
        sub_10006A2BC(v14, v16);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v30 = __DataStorage._offset.getter();
          if (__OFSUB__(v28, v30))
          {
            goto LABEL_78;
          }

          v29 += v28 - v30;
        }

        if (__OFSUB__(v34, v28))
        {
          goto LABEL_77;
        }

        goto LABEL_59;
      }

      *&v38[6] = 0;
      *v38 = 0;
      sub_100069E2C(v10, v9);
      sub_10006A2BC(v14, v16);
    }

    else
    {
      if (v19)
      {
        if (v10 >> 32 < v10)
        {
          goto LABEL_76;
        }

        sub_100069E2C(v10, v9);
        sub_10006A2BC(v14, v16);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v31 = __DataStorage._offset.getter();
          if (__OFSUB__(v10, v31))
          {
            goto LABEL_79;
          }

          v29 += v10 - v31;
        }

LABEL_59:
        __DataStorage._length.getter();
        sub_10019F024(v29, v14, v16, v38);
        sub_10018C684(v39);
        sub_10006A2D0(v14, v16);
        sub_10006A178(v10, v9);
        sub_10006A2D0(v14, v16);
        v32 = v38[0];
        goto LABEL_62;
      }

      *v38 = v10;
      *&v38[8] = v9;
      v38[10] = BYTE2(v9);
      v38[11] = BYTE3(v9);
      v38[12] = BYTE4(v9);
      v38[13] = BYTE5(v9);
      sub_100069E2C(v10, v9);
      sub_10006A2BC(v14, v16);
    }

    sub_10019F024(v38, v14, v16, &v37);
    sub_10018C684(v39);
    sub_10006A2D0(v14, v16);
    sub_10006A178(v10, v9);
    sub_10006A2D0(v14, v16);
    v32 = v37;
LABEL_62:
    sub_10006A2D0(v10, v9);
    if (v32)
    {
      goto LABEL_69;
    }

LABEL_14:
    ++v4;
    v5 += 72;
    if (v35 == v4)
    {
      goto LABEL_64;
    }
  }

  if (v21)
  {
LABEL_47:
    sub_100069E2C(v10, v9);
    sub_10006A2BC(v14, v16);
    sub_10006A2D0(v14, v16);
    sub_10018C684(v39);
    sub_10006A2D0(v14, v16);
    sub_10006A178(v10, v9);
    v17 = v10;
    v18 = v9;
    goto LABEL_13;
  }

LABEL_67:
  sub_100069E2C(v10, v9);
  sub_10006A2BC(v14, v16);
  sub_10006A2D0(v14, v16);
  sub_10018C684(v39);
  sub_10006A2D0(v14, v16);
  sub_10006A178(v10, v9);
LABEL_68:
  sub_10006A2D0(v10, v9);
LABEL_69:

  return 1;
}

uint64_t sub_10018C318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100068FC4(&qword_100504FB8, &qword_10040C598);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  result = sub_10013044C(0xD000000000000018, 0x8000000100464E20);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = v8;
    v11 = 0x4354502D4553;
    *(inited + 32) = 0x4354502D4553;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = result;
    *(inited + 56) = v8;
    *(inited + 64) = 1;
    if (a1 == 0x4354502D4553 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = 0xE600000000000000;

      sub_100069E2C(v9, v10);
      v13 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v13 = 0;
    }

    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
    *(a3 + 32) = v13;
  }

  return result;
}

uint64_t sub_10018C518(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1001872B0(a1, v4, v5, v6, v7);
}

uint64_t sub_10018C5DC(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_10018C6D8()
{
  result = qword_100504ED8;
  if (!qword_100504ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504ED8);
  }

  return result;
}

uint64_t sub_10018C72C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_100069E2C(v4, v3);
  result = sub_10006A2D0(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_10018C8D0()
{
  v1 = type metadata accessor for SESPeerIdentityData(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  sub_10006A178(*(v0 + v3), *(v0 + v3 + 8));
  sub_10006A178(*(v5 + 16), *(v5 + 24));
  sub_10006A178(*(v5 + 32), *(v5 + 40));
  sub_10006A178(*(v5 + 48), *(v5 + 56));
  v6 = *(v1 + 32);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + *(v1 + 36);
  v10 = type metadata accessor for CreationMetadata(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    (*(v8 + 8))(v9 + *(v10 + 20), v7);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_10006A178(*(v0 + v11), *(v0 + v11 + 8));

  return _swift_deallocObject(v0, ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10018CB20(uint64_t a1)
{
  v3 = *(type metadata accessor for SESPeerIdentityData(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v12 = v1[2];
  v5 = v1[4];
  v11 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_10018485C(a1, v12, v11, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_10018CC94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_1001891F8(a1, v4);
}

uint64_t sub_10018CD4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018CD84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_1001854EC();
}

uint64_t sub_10018CE30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10018CE90()
{
  result = qword_100504F30;
  if (!qword_100504F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504F30);
  }

  return result;
}

uint64_t sub_10018CF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018D04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018D0EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100189018(a1, v4, v5, v6);
}

uint64_t sub_10018D1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_100161B88();
}

uint64_t sub_10018D290(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10012E598;

  return sub_1001863D8(a1, a2, v2);
}

uint64_t sub_10018D33C()
{
  swift_unknownObjectRelease();

  sub_10006A178(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10018D38C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100186968(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10018D44C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018D484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C288C;

  return sub_1001892F0(a1, v4);
}

void sub_10018D53C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {

    sub_100069E2C(a3, a4);

    v8 = a6;
  }
}

void sub_10018D59C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {

    sub_10006A178(a3, a4);
  }
}

uint64_t sub_10018D5FC(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10018D658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1001607B4(a1, v4, v5, v6, v7);
}

uint64_t sub_10018D71C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018D754()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_10015D4A8();
}

uint64_t sub_10018D810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018D830()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018D868()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10018D8B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_10015F01C(a1, v4, v5, v7, v6);
}

uint64_t sub_10018D970()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10018D9B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_10015EE24(a1, v4, v5, v6, v7, v8);
}

_DWORD *sub_10018DA80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015E1CC();
  *a1 = result;
  return result;
}

uint64_t sub_10018DAA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10018DAF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000C288C;

  return sub_100188C8C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10018DBCC()
{
  result = qword_100504FE8;
  if (!qword_100504FE8)
  {
    sub_10009393C(255, &qword_100504FE0, NSDictionary_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504FE8);
  }

  return result;
}

__n128 sub_10018DC90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10018DCA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10018DCEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SEKeySyncManager.SyncTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SEKeySyncManager.SyncTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10018DE94()
{
  result = qword_100504FF8;
  if (!qword_100504FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504FF8);
  }

  return result;
}

unint64_t sub_10018DEEC()
{
  result = qword_100505000;
  if (!qword_100505000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505000);
  }

  return result;
}

id sub_10018DFC0()
{
  result = [objc_allocWithZone(type metadata accessor for SESBootScopedStorage()) init];
  qword_10051B348 = result;
  return result;
}

id sub_10018E04C()
{
  v1 = [objc_opt_self() getBootUUID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = &v0[OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID];
  *v6 = v3;
  v6[1] = v5;
  v7 = &v0[OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite];
  *v7 = 0xD000000000000014;
  *(v7 + 1) = 0x8000000100461170;
  v8 = &v0[OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey];
  *v8 = 1684632949;
  *(v8 + 1) = 0xE400000000000000;
  v9 = &v0[OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey];
  *v9 = 0x65756C6176;
  *(v9 + 1) = 0xE500000000000000;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SESBootScopedStorage();
  return objc_msgSendSuper2(&v11, "init");
}

id sub_10018E298()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESBootScopedStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10018E36C(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UUID.uuidString.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10019F3C0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000937D4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10018E674(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = sub_10018E884(*a1, v7);
  v10 = v9;
  if (v7 == 1)
  {
    v11 = v6 | a2;
  }

  else
  {
    v11 = a2;
  }

  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6 | a2;
  }

  if (v7)
  {
    v13 = v7 == 1;
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    v14 = v7 != 1;
  }

  else
  {
    v14 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  v15 = sub_10018E884(v12, v13);
  v17 = v16;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_1002FFA0C(*(a3 + qword_1005048B8), *(a3 + qword_1005048B8 + 8), &v24);
    *(v20 + 12) = 2080;
    v21 = sub_1002FFA0C(v8, v10, &v24);

    *(v20 + 14) = v21;
    *(v20 + 22) = 2080;
    v22 = sub_1002FFA0C(v15, v17, &v24);

    *(v20 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "runTask scheduling for %s from %s to %s", v20, 0x20u);
    swift_arrayDestroy();
    v14 = v14;
  }

  else
  {
  }

  return v14;
}

uint64_t sub_10018E884(uint64_t a1, char a2)
{
  if (!a2)
  {
    v2 = 0x656C756465686373;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v2 = 0x6572676F72506E69;
LABEL_5:
    v5 = v2;
    sub_1001937D0();
    v3._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v3);

    return v5;
  }

  return 0x6576697463616E69;
}

uint64_t sub_10018E968()
{
  v1 = v0[4];
  v2 = qword_1005048C0;
  v3 = qword_1005048B8;
  v0[5] = qword_1005048B0;
  v0[6] = v3;
  v4 = *(v1 + v2);
  v0[7] = v4;
  os_unfair_lock_lock(v4 + 7);
  sub_1001937A0(&v4[4], v0 + 3);
  v0[8] = 0;
  os_unfair_lock_unlock((v0[7] + 28));
  v5 = v0[3];
  v0[2] = v5;
  if (v5)
  {
    v9 = (*(v0[4] + 16) + **(v0[4] + 16));
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_10018EB24;

    return v9(v0 + 2);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10018EB24()
{

  return _swift_task_switch(sub_10018EC20, 0, 0);
}

void sub_10018EC20()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4] + v0[6];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1002FFA0C(*v3, *(v3 + 8), &v13);
    _os_log_impl(&_mh_execute_header, v1, v2, "Handler completed for %s", v4, 0xCu);
    sub_1000752F4(v5);
  }

  v6 = v0[7];
  v7 = v0[8];
  os_unfair_lock_lock(v6 + 7);
  sub_1001937A0(&v6[4], v0 + 3);
  if (v7)
  {
    v8 = (v0[7] + 28);

    os_unfair_lock_unlock(v8);
  }

  else
  {
    v0[8] = 0;
    os_unfair_lock_unlock((v0[7] + 28));
    v9 = v0[3];
    v0[2] = v9;
    if (v9)
    {
      v12 = (*(v0[4] + 16) + **(v0[4] + 16));
      v10 = swift_task_alloc();
      v0[9] = v10;
      *v10 = v0;
      v10[1] = sub_10018EB24;

      v12(v0 + 2);
    }

    else
    {
      v11 = v0[1];

      v11();
    }
  }
}

uint64_t sub_10018EE9C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = sub_10018E884(*a1, v5);
  v8 = v7;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v9, v10))
  {

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    *a1 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  v15 = v6;
  v11 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  *v11 = 136315394;
  *(v11 + 4) = sub_1002FFA0C(*(a2 + qword_1005048B8), *(a2 + qword_1005048B8 + 8), &v16);
  *(v11 + 12) = 2080;
  v12 = sub_1002FFA0C(v15, v8, &v16);

  *(v11 + 14) = v12;
  _os_log_impl(&_mh_execute_header, v9, v10, "runTask running for %s in state %s", v11, 0x16u);
  swift_arrayDestroy();

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v5 != 1)
  {
    return 0;
  }

  *a1 = 0;
  if (v4)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

LABEL_9:
  *(a1 + 8) = v13;
  return v4;
}

id sub_10018F070()
{
  result = [objc_allocWithZone(type metadata accessor for SECNotificationListener()) init];
  qword_10051B350 = result;
  return result;
}

char *sub_10018F18C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v1 - 8);
  v64 = v1;
  __chkstk_darwin(v1);
  v62 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchTimeInterval();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v52 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for Logger();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  v48 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue;
  sub_10006928C();
  static DispatchQoS.default.getter();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v57 = v13;
  v15 = v48;
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = v49;
  *&v49[v15] = v16;
  *&v17[OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask] = 0;
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v47 = 0x8000000100465290;
  v18 = v58;
  v51 = sub_1000958E4(v58, qword_100505050);
  v19 = v56;
  v50 = *(v56 + 16);
  v20 = v55;
  v50(v55, v51, v18);
  v21 = *&v17[v15];
  v22 = v52;
  *v52 = 1;
  v24 = v53;
  v23 = v54;
  (*(v53 + 104))(v22, enum case for DispatchTimeInterval.seconds(_:), v54);
  sub_100068FC4(&qword_1005051F0, &qword_10040CA40);
  v25 = swift_allocObject();
  v26 = &v25[*(*v25 + 136)];
  *v26 = 0;
  v26[8] = 1;
  *(v25 + 2) = 0xD000000000000017;
  *(v25 + 3) = v47;
  *(v25 + 4) = v21;
  (*(v24 + 32))(&v25[qword_100509D18], v22, v23);
  v27 = &v25[qword_100509D20];
  *v27 = sub_100191FF0;
  v27[1] = 0;
  v28 = *(v19 + 32);
  v28(&v25[qword_100509D28], v20, v18);
  *&v17[OBJC_IVAR____TtC10seserviced23SECNotificationListener_coealescer] = v25;
  v29 = ObjectType;
  v67.receiver = v17;
  v67.super_class = ObjectType;
  v30 = v21;
  v31 = objc_msgSendSuper2(&v67, "init");
  v50(v20, v51, v18);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  sub_100068FC4(&qword_1005051F8, &qword_10040CA58);
  v33 = swift_allocObject();
  v34 = qword_1005048C0;
  sub_100068FC4(&qword_100505200, &qword_10040CA60);
  v35 = swift_allocObject();
  *(v35 + 28) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = 2;
  *(v33 + v34) = v35;
  v36 = (v33 + qword_1005048B8);
  *v36 = 0xD000000000000017;
  v36[1] = 0x800000010040C800;
  v28((v33 + qword_1005048B0), v20, v18);
  *(v33 + 16) = &unk_10040CA50;
  *(v33 + 24) = v32;
  *&v31[OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask] = v33;
  v37 = v31;

  v38 = *&v37[OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue];
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  aBlock[4] = sub_1001936E0;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C9B38;
  v40 = _Block_copy(aBlock);
  v41 = v37;
  v42 = v38;
  v43 = v57;
  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v44 = v62;
  v45 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v63 + 8))(v44, v45);
  (*(v60 + 8))(v43, v61);

  return v41;
}

void sub_10018FA78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_100505050);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received notification %ld", v10, 0xCu);
  }

  if (a1)
  {
    sub_100192058();
    v11 = *(v2 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask);
    if (v11)
    {
      v12 = *(v11 + qword_1005048C0);

      os_unfair_lock_lock((v12 + 28));
      v13 = sub_10018E674((v12 + 16), a1, v11);
      os_unfair_lock_unlock((v12 + 28));
      if (v13)
      {
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v11;

        sub_1001F9BE8(0, 0, v6, &unk_10040CA88, v15);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10018FCEC(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C288C;

  return sub_1001923D8(v2);
}

void sub_10018FD80(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100505050);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting SECNotificationListener", v8, 2u);
  }

  sub_100192058();
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 registerDelegate:a1 forEvent:v10];

  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 registerDelegate:a1 forEvent:v12];

  v14 = String._bridgeToObjectiveC()();
  [v9 registerDelegate:a1 forEvent:v14];

  v15 = String._bridgeToObjectiveC()();
  [v9 registerDelegate:a1 forEvent:v15];

  v16 = String._bridgeToObjectiveC()();
  [v9 registerDelegate:a1 forEvent:v16];

  v17 = String._bridgeToObjectiveC()();
  [v9 registerDelegate:a1 forEvent:v17];

  if (v11)
  {
    if (v13)
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }

LABEL_11:
    v19 = *(a1 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask);
    if (v19)
    {
      v20 = *(v19 + qword_1005048C0);

      os_unfair_lock_lock((v20 + 28));
      v21 = sub_10018E674((v20 + 16), v18, v19);
      os_unfair_lock_unlock((v20 + 28));
      if (v21)
      {
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = 0;
        v23[4] = v19;

        sub_1001F9BE8(0, 0, v4, &unk_10040CA70, v23);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (v13)
  {
    v18 = 2;
    goto LABEL_11;
  }

  v27 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v27, v24, "No pending notifications", v25, 2u);
  }

  v26 = v27;
}

void sub_100190238(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_100505050);
    swift_errorRetain();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v6 = 138412546;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2080;
      swift_beginAccess();

      sub_10018E36C(v10);

      v11 = Array.description.getter();
      v13 = v12;

      v14 = sub_1002FFA0C(v11, v13, &v26);

      *(v6 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error %@ encountered while deleting credentials %s", v6, 0x16u);
      sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v8);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_100505050);

    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      swift_beginAccess();

      sub_10018E36C(v20);

      v21 = Array.description.getter();
      v23 = v22;

      v24 = sub_1002FFA0C(v21, v23, &v26);

      *(v18 + 4) = v24;
      *(v18 + 12) = 1024;
      *(v18 + 14) = a1 & 1;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Credentials %s deleted %{BOOL}d", v18, 0x12u);
      sub_1000752F4(v19);
    }

    else
    {
    }
  }
}

void sub_100190660(uint64_t a1, unint64_t a2)
{

  v4 = sub_1001933B0(a1, a2);
  if (v5)
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_100505050);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1002FFA0C(a1, a2, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "Ignoring unexpected darwin event %s", v8, 0xCu);
      sub_1000752F4(v9);
    }
  }

  else
  {
    sub_1001907F8(v4);
  }
}

uint64_t sub_1001907F8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1001935D0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C9A98;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_100190B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1001922C0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C9A20;
  v15 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);
}

void sub_100190DF4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-1] - v7;
  if (a1 == 0xD000000000000019 && 0x8000000100465250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = XPC_EVENT_KEY_NAME.getter();
    string = xpc_dictionary_get_string(a3, v9);
    if (string)
    {
      v11 = string;
      v12 = String.utf8CString.getter();
      LODWORD(v11) = strcmp(v11, (v12 + 32));

      if (!v11)
      {
        if (qword_100501A28 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1000958E4(v13, qword_100505050);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v30[0] = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465270, v30);
          _os_log_impl(&_mh_execute_header, v14, v15, "Handling SE Content Change upon receiving %s event", v16, 0xCu);
          sub_1000752F4(v17);
        }

        if (qword_100501A20 != -1)
        {
          swift_once();
        }

        v18 = (qword_10051B350 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate);
        swift_beginAccess();
        v19 = v18[3];
        if (v19)
        {
          v20 = *sub_1000752B0(v18, v19);
          v21 = type metadata accessor for TaskPriority();
          (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
          v22 = swift_allocObject();
          v22[2] = 0;
          v22[3] = 0;
          v22[4] = v20;
          v23 = v20;
          sub_1001F9BE8(0, 0, v8, &unk_10040CA30, v22);
        }
      }
    }
  }

  else
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000958E4(v24, qword_100505050);

    v29 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1002FFA0C(a1, a2, v30);
      _os_log_impl(&_mh_execute_header, v29, v25, "Ignoring stream %s", v26, 0xCu);
      sub_1000752F4(v27);
    }

    else
    {
      v28 = v29;
    }
  }
}

BOOL sub_10019131C(void *a1, uint64_t *a2)
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

void *sub_10019134C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100191378@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100191464@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10024F2A4();

  *a2 = v3;
  return result;
}

unint64_t sub_100191558()
{
  result = qword_100505170;
  if (!qword_100505170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505170);
  }

  return result;
}

unint64_t sub_1001915B0()
{
  result = qword_100505178;
  if (!qword_100505178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505178);
  }

  return result;
}

unint64_t sub_100191608()
{
  result = qword_100505180;
  if (!qword_100505180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505180);
  }

  return result;
}

unint64_t sub_100191660()
{
  result = qword_100505188;
  if (!qword_100505188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505188);
  }

  return result;
}

uint64_t sub_1001916B4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100505050);
  sub_1000958E4(v2, qword_100505050);
  return Logger.init(subsystem:category:)();
}

void sub_100191734(void (*a1)(void, void))
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v36 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2[4];
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13, v15);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    v37 = v4;
    v38 = v3;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v36[1] = v19;
    if (v23)
    {
      v24 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_1002FFA0C(v2[2], v2[3], aBlock);
      *(v24 + 12) = 2080;
      v25 = *(v2 + *(*v2 + 136) + 8);

      if (v25)
      {
        v26 = 1819047278;
      }

      else
      {
        v26 = 0x676E6974696177;
      }

      if (v25)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = 0xE700000000000000;
      }

      v28 = sub_1002FFA0C(v26, v27, aBlock);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Notify for client %s in state %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = v2 + *(*v2 + 136);
    if (v29[8] == 1)
    {
      *v29 = v45;
      v29[8] = 0;
      static DispatchTime.now()();
      DispatchTime.advanced(by:)();
      v45 = *(v39 + 8);
      v30 = v9;
      v31 = v40;
      (v45)(v30, v40);
      aBlock[4] = sub_1001935F8;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C9AC0;
      v32 = _Block_copy(aBlock);

      v33 = v41;
      static DispatchQoS.unspecified.getter();
      v46 = _swiftEmptyArrayStorage;
      sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v34 = v43;
      v35 = v38;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v32);
      (*(v37 + 8))(v34, v35);
      (*(v42 + 8))(v33, v44);
      (v45)(v12, v31);
    }

    else
    {
      *v29 |= v45;
      v29[8] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100191D70()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[4];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1002FFA0C(v1[2], v1[3], &v16);
      _os_log_impl(&_mh_execute_header, v9, v10, "Firing %s", v11, 0xCu);
      sub_1000752F4(v12);
    }

    v13 = v1 + *(*v1 + 136);
    if ((v13[8] & 1) == 0)
    {
      v16 = *v13;
      result = (*(v1 + qword_100509D20))(&v16);
      *v13 = 0;
      v13[8] = 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100191FF0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_100501A20 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  sub_10018FA78(v1);
}

uint64_t sub_100192058()
{
  v0 = type metadata accessor for SECDefaultAppReconciler(0);
  __chkstk_darwin(v0);
  v2 = (&v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = [objc_allocWithZone(type metadata accessor for TCCContext()) init];
  *v2 = v3;
  v4 = v3;
  Logger.init(subsystem:category:)();
  sub_100278B3C();
  type metadata accessor for SECSettingsPaneReconciler(0);
  v5 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v5 + 16) = v4;
  *(v5 + 24) = sub_100328518();
  sub_1001B2A18();
  swift_setDeallocating();

  v6 = OBJC_IVAR____TtC10seserviced25SECSettingsPaneReconciler_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  swift_deallocClassInstance();
  return sub_100192224(v2);
}

uint64_t sub_100192224(uint64_t a1)
{
  v2 = type metadata accessor for SECDefaultAppReconciler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192280()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001922CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001922E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100192324(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10012E598;

  return sub_100218BFC();
}

uint64_t sub_1001923F8()
{
  v21 = v0;
  v1 = v0[12];
  v2 = swift_allocObject();
  v0[13] = v2;
  *(v2 + 16) = &_swiftEmptySetSingleton;
  if (v1)
  {
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_1001927F8;

    return sub_10032AD34();
  }

  else if ((v1 & 2) != 0)
  {
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_100192C5C;

    return sub_10032B4E4();
  }

  else
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_100505050);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      swift_beginAccess();

      sub_10018E36C(v8);

      v9 = Array.description.getter();
      v11 = v10;

      v12 = sub_1002FFA0C(v9, v11, &v20);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "All credentials to MFD %s", v6, 0xCu);
      sub_1000752F4(v7);
    }

    else
    {
    }

    v16 = v0[13];
    swift_beginAccess();
    v17 = v0[13];
    if (*(*(v16 + 16) + 16))
    {
      type metadata accessor for SECServer();

      sub_100143E08(v18, 0, sub_10019385C, v17);
    }

    else
    {
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1001927F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_100193010;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_100192920;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100192920()
{
  v18 = v0;
  sub_1002A3450(*(v0 + 128));
  if ((*(v0 + 96) & 2) != 0)
  {
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    *(v0 + 136) = v11;
    *v11 = v0;
    v11[1] = sub_100192C5C;

    return sub_10032B4E4();
  }

  else
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000958E4(v1, qword_100505050);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      swift_beginAccess();

      sub_10018E36C(v6);

      v7 = Array.description.getter();
      v9 = v8;

      v10 = sub_1002FFA0C(v7, v9, &v17);

      *(v4 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "All credentials to MFD %s", v4, 0xCu);
      sub_1000752F4(v5);
    }

    else
    {
    }

    v13 = *(v0 + 104);
    swift_beginAccess();
    v14 = *(v0 + 104);
    if (*(*(v13 + 16) + 16))
    {
      type metadata accessor for SECServer();

      sub_100143E08(v15, 0, sub_10019385C, v14);
    }

    else
    {
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100192C5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1001931E0;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_100192D84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100192D84()
{
  v17 = v0;
  sub_1002A3450(v0[19]);
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_100505050);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    swift_beginAccess();

    sub_10018E36C(v6);

    v7 = Array.description.getter();
    v9 = v8;

    v10 = sub_1002FFA0C(v7, v9, &v16);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "All credentials to MFD %s", v4, 0xCu);
    sub_1000752F4(v5);
  }

  else
  {
  }

  v11 = v0[13];
  swift_beginAccess();
  v12 = v0[13];
  if (*(*(v11 + 16) + 16))
  {
    type metadata accessor for SECServer();

    sub_100143E08(v13, 0, sub_10019385C, v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100193010(uint64_t a1, uint64_t a2)
{
  v14 = v2;
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100505050);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %s encountered when handling pending notifications", v6, 0xCu);
    sub_1000752F4(v7);
  }

  else
  {
  }

  v11 = *(v2 + 8);

  return v11();
}

uint64_t sub_1001931E0(uint64_t a1, uint64_t a2)
{
  v14 = v2;
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100505050);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %s encountered when handling pending notifications", v6, 0xCu);
    sub_1000752F4(v7);
  }

  else
  {
  }

  v11 = *(v2 + 8);

  return v11();
}

uint64_t sub_1001933B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002CLL && 0x8000000100465300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 1;
LABEL_5:

    return v4;
  }

  if (a1 == 0xD00000000000001CLL && 0x8000000100465330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000002ELL && 0x8000000100465350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000002FLL && 0x8000000100465380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 8;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000030 && 0x80000001004653B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000002FLL && 0x80000001004653F0 == a2)
  {
    v4 = 32;
    goto LABEL_5;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100193598()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10019360C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10012E598;

  return sub_10018FCEC(a1);
}

uint64_t sub_1001936A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001936EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_10018E948(a1, v4, v5, v6);
}

uint64_t sub_1001937A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018EE9C(a1, v2);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001937D0()
{
  result = qword_100505208;
  if (!qword_100505208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505208);
  }

  return result;
}

uint64_t sub_100193824()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100193864()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001938A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000C288C;

  return sub_10018E948(a1, v4, v5, v6);
}

uint64_t sub_100193978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

void sub_1001939C8(int a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v54) = a1;
  v5 = type metadata accessor for UUID();
  v53 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v7);
  v52 = v48 - v8;
  v9 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v9 - 8);
  v50 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v48 - v12;
  __chkstk_darwin(v14);
  v16 = v48 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B7F0;
  *v20 = qword_10051B7F0;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v23 = *(v3 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning);
  v24 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
  v25 = Logger.logObject.getter();
  if (v23 == 1)
  {
    v48[1] = v24;
    v51 = a2;
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Queuing SE request", v27, 2u);
    }

    if ((v54 & 1) == 0 || (v28 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier, swift_beginAccess(), sub_1000938D4(v3 + v28, v16, &unk_10050BE80, &unk_10040B360), v54 = *(v53 + 48), v29 = v54(v16, 1, v5), sub_100075768(v16, &unk_10050BE80, &unk_10040B360), v29 == 1))
    {
LABEL_9:
      v30 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v3 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_10:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_100197634();
        return;
      }

LABEL_29:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_10;
    }

    v33 = *(v51 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
    if (v33)
    {
      v34 = v53;
      (*(v53 + 16))(v13, v33 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v5);
      v35 = 0;
      v36 = v52;
    }

    else
    {
      v35 = 1;
      v36 = v52;
      v34 = v53;
    }

    (*(v34 + 56))(v13, v35, 1, v5);
    v37 = *(v7 + 48);
    sub_1000938D4(v13, v36, &unk_10050BE80, &unk_10040B360);
    sub_1000938D4(v3 + v28, v36 + v37, &unk_10050BE80, &unk_10040B360);
    v38 = v54;
    if (v54(v36, 1, v5) == 1)
    {
      sub_100075768(v13, &unk_10050BE80, &unk_10040B360);
      if (v38(v36 + v37, 1, v5) == 1)
      {
        sub_100075768(v36, &unk_10050BE80, &unk_10040B360);
        goto LABEL_9;
      }
    }

    else
    {
      v39 = v50;
      sub_1000938D4(v36, v50, &unk_10050BE80, &unk_10040B360);
      if (v38(v36 + v37, 1, v5) != 1)
      {
        v43 = v53;
        v44 = v36 + v37;
        v45 = v49;
        (*(v53 + 32))(v49, v44, v5);
        sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v47 = *(v43 + 8);
        v47(v45, v5);
        sub_100075768(v13, &unk_10050BE80, &unk_10040B360);
        v47(v39, v5);
        sub_100075768(v36, &unk_10050BE80, &unk_10040B360);
        if (v46)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      sub_100075768(v13, &unk_10050BE80, &unk_10040B360);
      (*(v53 + 8))(v39, v5);
    }

    sub_100075768(v36, &qword_1005031D0, &unk_100413B20);
LABEL_23:
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "SE is busy for another client", v42, 2u);
    }

    (*(v51 + 32))(3, 1);
    return;
  }

  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v25, v31, "Not running", v32, 2u);
  }
}

void sub_1001941C0()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = OBJC_IVAR____TtC10seserviced5DSKSE_isRunning;
    v18 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning);
    v19 = Logger.logObject.getter();
    if (v18)
    {
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "DSKSE is already running", v21, 2u);
      }
    }

    else
    {
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v19, v22, "Starting DSKSE", v23, 2u);
      }

      *(v1 + v17) = 1;
      sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
      (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.userInitiated(_:), v6);
      DispatchQoS.init(qosClass:relativePriority:)();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1001A1F6C(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_100068FC4(&unk_100501E60, &qword_100408C30);
      sub_1001A1FB4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
      v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v25 = objc_allocWithZone(SESTimer);
      aBlock[4] = sub_1001A2018;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C9D70;
      v26 = _Block_copy(aBlock);

      v27 = sub_1003AE50C(v25, v24, v26);

      _Block_release(v26);

      v19 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
      *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer) = v27;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100194774(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v72 = *(v4 - 8);
  __chkstk_darwin(v4);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v6);
  v65 = &v58 - v7;
  v8 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v8 - 8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v58 - v11;
  __chkstk_darwin(v12);
  v66 = &v58 - v13;
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B7F0;
  *v20 = qword_10051B7F0;
  v22 = *(v18 + 104);
  v71 = enum case for DispatchPredicate.onQueue(_:);
  v70 = v22;
  v22(v20);
  v68 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v69 = *(v18 + 8);
  v69(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning) != 1)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_12:

      return;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not running";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

    goto LABEL_12;
  }

  if (a1)
  {

    sub_1001990A4(v23);

    v62 = (v2 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
    if (!*(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle))
    {
      return;
    }

    v24 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
    swift_beginAccess();
    v59 = v24;
    sub_1000938D4(v2 + v24, v16, &unk_10050BE80, &unk_10040B360);
    v60 = *(v72 + 48);
    v25 = v60(v16, 1, v4);
    v61 = v4;
    v26 = v25;
    sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
    if (v26 == 1)
    {
      v4 = v61;
      goto LABEL_14;
    }

    v44 = v72;
    v45 = a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v46 = v66;
    v47 = v61;
    (*(v72 + 16))(v66, v45, v61);
    (*(v44 + 56))(v46, 0, 1, v47);
    v48 = *(v6 + 48);
    v49 = v65;
    sub_1000938D4(v46, v65, &unk_10050BE80, &unk_10040B360);
    v50 = v2 + v59;
    v59 = v48;
    sub_1000938D4(v50, v49 + v48, &unk_10050BE80, &unk_10040B360);
    v51 = v60(v49, 1, v47);
    v52 = v72;
    if (v51 == 1)
    {
      sub_100075768(v46, &unk_10050BE80, &unk_10040B360);
      v4 = v61;
      if (v60((v49 + v59), 1, v61) == 1)
      {
        sub_100075768(v49, &unk_10050BE80, &unk_10040B360);
        goto LABEL_14;
      }

      goto LABEL_30;
    }

    v53 = v64;
    sub_1000938D4(v49, v64, &unk_10050BE80, &unk_10040B360);
    v54 = v59;
    if (v60((v49 + v59), 1, v61) == 1)
    {
      sub_100075768(v66, &unk_10050BE80, &unk_10040B360);
      (*(v52 + 8))(v53, v61);
LABEL_30:
      sub_100075768(v49, &qword_1005031D0, &unk_100413B20);
LABEL_31:
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_12;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Not releasing SE because the client is not the owner";
      goto LABEL_11;
    }

    v55 = v63;
    v56 = v61;
    (*(v52 + 32))(v63, v49 + v54, v61);
    sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v60) = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = *(v52 + 8);
    v57(v55, v56);
    sub_100075768(v66, &unk_10050BE80, &unk_10040B360);
    v57(v64, v56);
    sub_100075768(v49, &unk_10050BE80, &unk_10040B360);
    v4 = v56;
    if ((v60 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v62 = (v2 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
    if (!*(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle))
    {
      return;
    }
  }

LABEL_14:
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Releasing the SE", v33, 2u);
  }

  v34 = v68;
  *v20 = v68;
  v70(v20, v71, v17);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v69(v20, v17);
  v36 = v72;
  if ((v34 & 1) == 0)
  {
    goto LABEL_36;
  }

  v37 = *(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
  if (v37)
  {
    v38 = v37;
    if (sub_1003AE7DC(v38))
    {
      sub_1003AE754(v38);
    }
  }

  v39 = *v62;
  *v62 = 0;

  v40 = *(v36 + 56);
  v41 = v67;
  v40(v67, 1, 1, v4);
  v42 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
  swift_beginAccess();
  sub_1001A15AC(v41, v2 + v42);
  swift_endAccess();
  v40(v41, 1, 1, v4);
  v43 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
  swift_beginAccess();
  sub_1001A15AC(v41, v2 + v43);
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 0;
  if (*(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) == 1)
  {
    *(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) = 0;
    sub_1003375E0(0xD000000000000041, 0x8000000100465520, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
  }

  sub_100197634();
}

uint64_t sub_1001950D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000754F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100075D50(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100075D50(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100075D50(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100075D50(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

void sub_10019539C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100505428, &qword_10040CCB8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_10008C908(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10019557C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100092ECC(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_100075D50(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_100075D50(v35, v24);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_100075D50(v24, (v2[7] + 32 * v10));
    ++v2[2];
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

uint64_t sub_100195868(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1000754F0(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CFString(0);
    v15 = v14;
    swift_dynamicCast();
    sub_100075D50((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_100075D50(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_100075D50(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v7[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v7[v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~v7[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_100075D50(v31, (v2[7] + 32 * v10));
    ++v2[2];
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

uint64_t sub_100195B30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100075D50(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100075D50(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
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
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100075D50(v30, (v2[7] + 32 * v10));
    ++v2[2];
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

uint64_t sub_100195DE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000754F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_100075D50(v33, v32);
    sub_100068FC4(&qword_100505408, &qword_10040CC98);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100075D50(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100075D50(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100075D50(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

void sub_1001960E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100505420, &qword_10040CCB0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 8;
  if (v3 == &type metadata for String)
  {

    v23 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v8)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v29);
      ++v23;
      if (v7)
      {
        while (1)
        {
          v7 &= v7 - 1;
          v30.super.super.isa = UInt16._bridgeToObjectiveC()().super.super.isa;
          v31.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
          v32 = sub_10008D0F4(v30.super.super.isa);
          if (v33)
          {
            v24 = v2[6];
            v25 = *(v24 + 8 * v32);
            *(v24 + 8 * v32) = v30;
            v26 = v32;

            v27 = v2[7];
            v28 = *(v27 + 8 * v26);
            *(v27 + 8 * v26) = v31;

            v23 = v29;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v34 = v2[2];
            if (v34 >= v2[3])
            {
              goto LABEL_40;
            }

            *(v9 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
            *(v2[6] + 8 * v32) = v30;
            *(v2[7] + 8 * v32) = v31;
            v2[2] = v34 + 1;
            v23 = v29;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v29 = v23;
        }
      }
    }
  }

  else
  {

    v10 = 0;
    while (v7)
    {
LABEL_16:
      v13.super.super.isa = UInt16._bridgeToObjectiveC()().super.super.isa;
      v14.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
      v15 = NSObject._rawHashValue(seed:)(v2[5]);
      v16 = -1 << *(v2 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~v9[v17 >> 6]) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = v9[v18];
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~v9[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(v2[6] + 8 * v11) = v13;
      *(v2[7] + 8 * v11) = v14;
      ++v2[2];
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

unint64_t sub_100196414(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_100196530(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 16 * v6);
    sub_100069E2C(v10, *(&v10 + 1));
    v8 = a1(&v10);
    sub_10006A178(v10, *(&v10 + 1));
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1001965F0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

unint64_t sub_100196708(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1001A1648(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100196798(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001A1634(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100196824()
{
  type metadata accessor for DSKSE(0);
  swift_allocObject();
  result = sub_100196864();
  qword_10051B358 = result;
  return result;
}

uint64_t sub_100196864()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning) = 0;
  v1 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 0;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6[4] = sub_1001A2020;
  v6[5] = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100193978;
  v6[3] = &unk_1004C9D98;
  v4 = _Block_copy(v6);

  os_state_add_handler();
  _Block_release(v4);
  return v0;
}

unint64_t sub_100196A50()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress);
  v66 = &type metadata for Bool;
  LOBYTE(v65) = v6;
  sub_100075D50(&v65, &v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = _swiftEmptyDictionarySingleton;
  sub_100315178(&v63, 0xD00000000000001CLL, 0x8000000100465470, isUniquelyReferenced_nonNull_native);
  v8 = v62;
  v9 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning);
  v66 = &type metadata for Bool;
  LOBYTE(v65) = v9;
  sub_100075D50(&v65, &v63);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v8;
  sub_100315178(&v63, 0x6E696E6E75527369, 0xE900000000000067, v10);
  v11 = v62;
  v12 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
  swift_beginAccess();
  v13 = *(v3 + 48);
  v14 = v13(v1 + v12, 1, v2);
  v56 = v1;
  if (v14)
  {
    v66 = &type metadata for String;
  }

  else
  {
    (*(v3 + 16))(v5, v1 + v12, v2);
    v16 = UUID.uuidString.getter();
    v15 = v17;
    (*(v3 + 8))(v5, v2);
    v66 = &type metadata for String;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  v15 = 0xE400000000000000;
  v16 = 1701736302;
LABEL_5:
  *&v65 = v16;
  *(&v65 + 1) = v15;
  sub_100075D50(&v65, &v63);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v11;
  sub_100315178(&v63, 0xD000000000000019, 0x8000000100465490, v18);
  v19 = v61[0];
  v20 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
  v21 = v56;
  swift_beginAccess();
  if (v13(v21 + v20, 1, v2))
  {
    v22 = &type metadata for String;
    v66 = &type metadata for String;
    v23 = 0xE400000000000000;
    v24 = 1701736302;
    v25 = v21;
  }

  else
  {
    (*(v3 + 16))(v5, v21 + v20, v2);
    v24 = UUID.uuidString.getter();
    v23 = v26;
    (*(v3 + 8))(v5, v2);
    v22 = &type metadata for String;
    v66 = &type metadata for String;
    v25 = v21;
    if (!v23)
    {
      v23 = 0xE400000000000000;
      v24 = 1701736302;
    }
  }

  *&v65 = v24;
  *(&v65 + 1) = v23;
  sub_100075D50(&v65, &v63);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = v19;
  sub_100315178(&v63, 0x65644972656E776FLL, 0xEF7265696669746ELL, v27);
  v28 = v60[0];
  v29 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
  swift_beginAccess();
  result = *(v25 + v29);
  if (result >> 62)
  {
    goto LABEL_29;
  }

  v31 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v32 = _swiftEmptyArrayStorage;
    if (!v31)
    {
      break;
    }

    *&v65 = _swiftEmptyArrayStorage;
    v33 = result;

    result = sub_10019F4C4(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      __break(1u);
      return result;
    }

    v55 = v28;
    v22 = 0;
    v25 = 0;
    v32 = v65;
    v34 = v33;
    v57 = v33 & 0xFFFFFFFFFFFFFF8;
    v58 = v33 & 0xC000000000000001;
    v35 = v33;
    while (1)
    {
      v36 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v58)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v57 + 16))
        {
          goto LABEL_28;
        }

        v37 = *(v34 + 8 * v22 + 32);
      }

      v59 = v37;
      sub_10019E7A0(&v59, &v63);

      v28 = v63;
      *&v65 = v32;
      v39 = v32[2];
      v38 = v32[3];
      if (v39 >= v38 >> 1)
      {
        result = sub_10019F4C4((v38 > 1), v39 + 1, 1);
        v32 = v65;
      }

      v32[2] = v39 + 1;
      v32[v39 + 4] = v28;
      ++v22;
      v34 = v35;
      if (v36 == v31)
      {

        v25 = v56;
        v22 = &type metadata for String;
        v28 = v55;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v54 = result;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    result = v54;
  }

LABEL_23:
  v66 = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *&v65 = v32;
  sub_100075D50(&v65, &v63);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v28;
  sub_100315178(&v63, 0xD000000000000013, 0x80000001004654C0, v40);
  v41 = v59;
  v42 = *(v25 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle) != 0;
  v66 = &type metadata for Bool;
  LOBYTE(v65) = v42;
  sub_100075D50(&v65, &v63);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v41;
  sub_100315178(&v63, 0xD000000000000013, 0x80000001004654E0, v43);
  v44 = v59;
  v45 = *(v25 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
  if (v45)
  {
    v46 = sub_1003AE7DC(v45);
    v64 = &type metadata for Bool;
    LOBYTE(v63) = v46;
    sub_100075D50(&v63, &v65);
  }

  else
  {
    v66 = v22;
    *&v65 = 1701736302;
    *(&v65 + 1) = 0xE400000000000000;
  }

  sub_100075D50(&v65, &v63);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v44;
  sub_100315178(&v63, 0x72656D69546573, 0xE700000000000000, v47);
  v48 = v59;
  LOBYTE(v65) = *(v25 + OBJC_IVAR____TtC10seserviced5DSKSE_state);
  v49 = String.init<A>(describing:)();
  v66 = v22;
  *&v65 = v49;
  *(&v65 + 1) = v50;
  sub_100075D50(&v65, &v63);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v48;
  sub_100315178(&v63, 0x6574617473, 0xE500000000000000, v51);
  sub_1001950D4(v59);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v53 = sub_100015DA0("dskse.state", isa);

  return v53;
}

void sub_100197184(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Releasing SE by timer", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
  *(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle) = 0;

  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
  swift_beginAccess();
  sub_1001A15AC(v4, a1 + v11);
  swift_endAccess();
  v10(v4, 1, 1, v9);
  v12 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
  swift_beginAccess();
  sub_1001A15AC(v4, a1 + v12);
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 0;
  if (*(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) == 1)
  {
    *(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) = 0;
    sub_1003375E0(0xD000000000000041, 0x8000000100465520, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
  }
}

void sub_1001973A8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC10seserviced5DSKSE_isRunning;
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning);
    v10 = Logger.logObject.getter();
    if (v9 == 1)
    {
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Stopping DSKSE", v12, 2u);
      }

      v13 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
      swift_beginAccess();
      *(v1 + v13) = _swiftEmptyArrayStorage;

      sub_100194774(0);
      v14 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
      *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer) = 0;

      *(v1 + v8) = 0;
    }

    else
    {
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, v15, "DSKSE is not running", v16, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100197634()
{
  v1 = v0;
  v139 = type metadata accessor for UUID();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v3 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v136);
  v5 = &v120 - v4;
  v6 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v6 - 8);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v138 = &v120 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_225;
  }

LABEL_2:
  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v18 = *(v12 + 8);
  v12 += 8;
  v18(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_227:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }

    goto LABEL_5;
  }

  v12 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
  swift_beginAccess();
  v19 = *(v1 + v12);
  if (v19 >> 62)
  {
    goto LABEL_227;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

LABEL_5:
  v129 = v8;
  v8 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;

  v11 = Logger.logObject.getter();
  LOBYTE(v20) = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v20))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    v21 = *(v1 + v12);
    if (v21 >> 62)
    {
      goto LABEL_231;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    *(v17 + 4) = v22;

    _os_log_impl(&_mh_execute_header, v11, v20, "Trying to process a queued request (pending %ld)", v17, 0xCu);
  }

  else
  {
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_state) <= 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_state))
    {
      goto LABEL_37;
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Requesting SE for a queued request", v25, 2u);
    }

LABEL_14:

    sub_1001992D4();
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_state) == 2)
  {
    goto LABEL_204;
  }

  v26 = *(v1 + v12);
  v124 = v3;
  v121 = v8;
  if (v26 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;

  v134 = v27;
  v135 = v1;
  swift_beginAccess();
  if (!v14)
  {
LABEL_203:

LABEL_204:
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "No candidate request found for current state", v109, 2u);
    }

    return;
  }

  v1 = 0;
  v132 = v26 & 0xFFFFFFFFFFFFFF8;
  v133 = v26 & 0xC000000000000001;
  v128 = (v137 + 16);
  v131 = v137 + 56;
  v12 = v137 + 48;
  v123 = (v137 + 32);
  v126 = v137 + 8;
  v11 = &unk_10050BE80;
  v8 = &unk_10040B360;
  v130 = v14;
  v127 = v26;
  v122 = v137 + 48;
  while (!v133)
  {
    if (v1 >= *(v132 + 16))
    {
LABEL_224:
      __break(1u);
LABEL_225:
      swift_once();
      goto LABEL_2;
    }

    v17 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_36;
    }

LABEL_26:
    v29 = *(v28 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
    v137 = v28;
    if (v29)
    {
      (*v128)(v138, v29 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v139);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v32 = v138;
    v31 = v139;
    (*v131)(v138, v30, 1, v139);
    v14 = *(v136 + 48);
    sub_1000938D4(v32, v5, &unk_10050BE80, &unk_10040B360);
    sub_1000938D4(v135 + v134, &v5[v14], &unk_10050BE80, &unk_10040B360);
    v3 = *v12;
    if ((*v12)(v5, 1, v31) != 1)
    {
      v33 = v139;
      v34 = v129;
      sub_1000938D4(v5, v129, &unk_10050BE80, &unk_10040B360);
      if ((v3)(&v5[v14], 1, v33) == 1)
      {
        sub_100075768(v138, &unk_10050BE80, &unk_10040B360);
        (*v126)(v34, v33);
        goto LABEL_21;
      }

      v3 = v124;
      (*v123)(v124, &v5[v14], v33);
      sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v125) = dispatch thunk of static Equatable.== infix(_:_:)();
      v14 = v5;
      v35 = *v126;
      (*v126)(v3, v33);
      sub_100075768(v138, &unk_10050BE80, &unk_10040B360);
      v35(v34, v33);
      v12 = v122;
      sub_100075768(v5, &unk_10050BE80, &unk_10040B360);

      if ((v125 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_210:
      v23 = Logger.logObject.getter();
      v110 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&_mh_execute_header, v23, v110, "Processing queued request for owner", v111, 2u);
      }

      goto LABEL_14;
    }

    sub_100075768(v138, &unk_10050BE80, &unk_10040B360);
    if ((v3)(&v5[v14], 1, v139) == 1)
    {
      sub_100075768(v5, &unk_10050BE80, &unk_10040B360);

      goto LABEL_210;
    }

LABEL_21:
    sub_100075768(v5, &qword_1005031D0, &unk_100413B20);

LABEL_22:
    ++v1;
    if (v17 == v130)
    {
      goto LABEL_203;
    }
  }

  v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v17 = v1 + 1;
  if (!__OFADD__(v1, 1))
  {
    goto LABEL_26;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v36 = *(v1 + v12);
  if (v36 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
LABEL_207:

    return;
  }

  v20 = 0;
  v132 = v36 & 0xC000000000000001;
  v131 = v36 & 0xFFFFFFFFFFFFFF8;
  v130 = (v36 + 4);
  v128 = v36;
  v129 = v11;
  v135 = v1;
  v121 = v8;
  while (2)
  {
    if (v132)
    {
      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v37 = __OFADD__(v20++, 1);
      if (v37)
      {
        goto LABEL_229;
      }
    }

    else
    {
      if (v20 >= *(v131 + 16))
      {
        goto LABEL_230;
      }

      v134 = *(v130 + 8 * v20);

      v37 = __OFADD__(v20++, 1);
      if (v37)
      {
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        v22 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_8;
      }
    }

    v133 = v20;
    v38 = OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    v11 = v134;
    v17 = &qword_100502438;
    v12 = &qword_100409990;
    sub_1000938D4(v134 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, v147, &qword_100502438, &qword_100409990);
    if (!v148)
    {

      sub_100075768(v147, &qword_100502438, &qword_100409990);
      goto LABEL_42;
    }

    sub_100075768(v147, &qword_100502438, &qword_100409990);
    v127 = v38;
    sub_1000938D4(v11 + v38, v147, &qword_100502438, &qword_100409990);
    if (!v148)
    {
      __break(1u);
      goto LABEL_258;
    }

    v139 = *sub_1000752B0(v147, v148);
    v39 = [objc_opt_self() sessionManager];
    v40 = [v39 getActiveDCKSessions];

    sub_10009393C(0, &qword_100505370, off_1004BE540);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = v11;
    if (!(v11 >> 62))
    {
      v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_50;
      }

LABEL_41:

      sub_1000752F4(v147);
LABEL_42:
      v20 = v133;
      if (v133 == v129)
      {
        goto LABEL_207;
      }

      continue;
    }

    break;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_41;
  }

LABEL_50:
  v1 = 0;
  v137 = v11 & 0xFFFFFFFFFFFFFF8;
  v138 = v11 & 0xC000000000000001;
  v136 = v8;
  while (2)
  {
    if (v138)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v137 + 16))
      {
        goto LABEL_223;
      }

      v43 = *(v14 + 8 * v1 + 32);
    }

    v3 = v43;
    v5 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v44 = [v43 activeEndpoint];
    if (!v44)
    {
      v12 = 0;
      v41 = *(v139 + 16);
      v17 = *(v139 + 24);
      v42 = 0xF000000000000000;
LABEL_52:
      sub_100069E2C(v41, v17);

      if (v17 >> 60 == 15)
      {

        sub_10006A2D0(v12, v42);
        goto LABEL_217;
      }

LABEL_53:
      sub_10006A2D0(v12, v42);
      sub_10006A2D0(v41, v17);
LABEL_54:
      ++v1;
      if (v5 == v8)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  v45 = v14;
  v11 = v44;
  v46 = [v44 publicKeyIdentifier];

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v47;

  v41 = *(v139 + 16);
  v17 = *(v139 + 24);
  if (v42 >> 60 == 15)
  {
    v14 = v45;
    v8 = v136;
    goto LABEL_52;
  }

  v14 = v45;
  if (v17 >> 60 == 15)
  {
    sub_100069E2C(*(v139 + 16), *(v139 + 24));

    v8 = v136;
    goto LABEL_53;
  }

  v48 = v42 >> 62;
  v11 = v17 >> 62;
  if (v42 >> 62 != 3)
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v51 = *(v12 + 16);
        v50 = *(v12 + 24);
        v37 = __OFSUB__(v50, v51);
        v49 = v50 - v51;
        if (v37)
        {
          goto LABEL_237;
        }

        goto LABEL_81;
      }

      v49 = 0;
      if (v11 <= 1)
      {
        goto LABEL_82;
      }

      goto LABEL_87;
    }

    if (v48)
    {
      LODWORD(v49) = HIDWORD(v12) - v12;
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_236;
      }

      v49 = v49;
      goto LABEL_81;
    }

    v49 = BYTE6(v42);
    if (v11 > 1)
    {
      goto LABEL_87;
    }

LABEL_82:
    if (v11)
    {
      LODWORD(v52) = HIDWORD(v41) - v41;
      if (__OFSUB__(HIDWORD(v41), v41))
      {
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
      }

      v52 = v52;
    }

    else
    {
      v52 = BYTE6(v17);
    }

LABEL_89:
    if (v49 != v52)
    {
      goto LABEL_101;
    }

    if (v49 < 1)
    {
      goto LABEL_213;
    }

    if (v48 > 1)
    {
      if (v48 != 2)
      {
        memset(__s1, 0, 14);
        if (v11)
        {
          if (v11 != 2)
          {
            v126 = v41;
            v125 = (v41 >> 32) - v41;
            if (v41 >> 32 < v41)
            {
              goto LABEL_242;
            }

            sub_100069E2C(v41, v17);
            sub_100069E2C(v41, v17);
            sub_10006A2BC(v12, v42);
            v79 = __DataStorage._bytes.getter();
            if (!v79)
            {
              goto LABEL_272;
            }

            v80 = v79;
            v81 = __DataStorage._offset.getter();
            if (__OFSUB__(v126, v81))
            {
              goto LABEL_247;
            }

            v58 = (v126 - v81 + v80);
            v59 = __DataStorage._length.getter();
            if (!v58)
            {
              goto LABEL_273;
            }

            goto LABEL_137;
          }

          v64 = *(v41 + 24);
          v126 = *(v41 + 16);
          v125 = v64;
          sub_100069E2C(v41, v17);
          sub_100069E2C(v41, v17);
          sub_10006A2BC(v12, v42);
          v65 = __DataStorage._bytes.getter();
          if (v65)
          {
            v66 = v65;
            v67 = __DataStorage._offset.getter();
            v68 = v126;
            if (__OFSUB__(v126, v67))
            {
              goto LABEL_252;
            }

            v124 = (v126 - v67 + v66);
          }

          else
          {
            v124 = 0;
            v68 = v126;
          }

          v97 = v125 - v68;
          if (__OFSUB__(v125, v68))
          {
            goto LABEL_244;
          }

          v98 = __DataStorage._length.getter();
          v83 = v124;
          if (!v124)
          {
            goto LABEL_260;
          }

LABEL_158:
          if (v98 >= v97)
          {
            v82 = v97;
          }

          else
          {
            v82 = v98;
          }

LABEL_161:
          v11 = memcmp(__s1, v83, v82);

          sub_10006A178(v41, v17);
          sub_10006A2D0(v12, v42);
          sub_10006A2D0(v41, v17);
          sub_10006A2D0(v12, v42);
          v14 = v45;
LABEL_162:
          v8 = v136;
          if (!v11)
          {
            goto LABEL_216;
          }

          goto LABEL_54;
        }

LABEL_115:
        __s2 = v41;
        v141 = v17;
        v142 = BYTE2(v17);
        v143 = BYTE3(v17);
        v144 = BYTE4(v17);
        v145 = BYTE5(v17);
        sub_100069E2C(v41, v17);
        sub_100069E2C(v41, v17);
        sub_10006A2BC(v12, v42);
        v11 = memcmp(__s1, &__s2, BYTE6(v17));

        sub_10006A178(v41, v17);
        sub_10006A2D0(v12, v42);
        sub_10006A2D0(v41, v17);
        sub_10006A2D0(v12, v42);
        goto LABEL_162;
      }

      v126 = *(v12 + 16);
      sub_100069E2C(v41, v17);
      sub_100069E2C(v41, v17);
      sub_10006A2BC(v12, v42);
      v60 = __DataStorage._bytes.getter();
      if (v60)
      {
        v125 = v60;
        v61 = __DataStorage._offset.getter();
        if (__OFSUB__(v126, v61))
        {
          goto LABEL_239;
        }

        v126 = v126 - v61 + v125;
      }

      else
      {
        v126 = 0;
      }

      __DataStorage._length.getter();
      if (v11 != 2)
      {
        if (v11 == 1)
        {
          v125 = (v41 >> 32) - v41;
          if (v41 >> 32 < v41)
          {
            goto LABEL_245;
          }

          v69 = __DataStorage._bytes.getter();
          if (v69)
          {
            v124 = v69;
            v70 = __DataStorage._offset.getter();
            if (__OFSUB__(v41, v70))
            {
              goto LABEL_255;
            }

            v71 = &v124[v41 - v70];
          }

          else
          {
            v71 = 0;
          }

          v102 = __DataStorage._length.getter();
          v103 = v125;
          if (v102 < v125)
          {
            v103 = v102;
          }

          v89 = v126;
          if (!v126)
          {
            goto LABEL_264;
          }

          if (!v71)
          {
            goto LABEL_263;
          }

LABEL_192:
          v14 = v45;
          v8 = v136;
          if (v89 == v71)
          {
            goto LABEL_214;
          }

          v95 = v103;
          v96 = v71;
LABEL_194:
          v11 = memcmp(v89, v96, v95);

          sub_10006A2D0(v41, v17);
          sub_10006A178(v41, v17);
          sub_10006A2D0(v12, v42);
          sub_10006A2D0(v12, v42);
          if (!v11)
          {
            goto LABEL_216;
          }

          goto LABEL_54;
        }

        v89 = v126;
        v14 = v45;
        __s1[0] = v41;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        v8 = v136;
        if (!v126)
        {
          goto LABEL_259;
        }

LABEL_150:
        v95 = BYTE6(v17);
        v96 = __s1;
        goto LABEL_194;
      }

      v84 = *(v41 + 24);
      v125 = *(v41 + 16);
      v124 = v84;
      v85 = __DataStorage._bytes.getter();
      if (v85)
      {
        v86 = v85;
        v87 = __DataStorage._offset.getter();
        v88 = v125;
        if (__OFSUB__(v125, v87))
        {
          goto LABEL_253;
        }

        v123 = (v125 - v87 + v86);
      }

      else
      {
        v123 = 0;
        v88 = v125;
      }

      v99 = &v124[-v88];
      if (__OFSUB__(v124, v88))
      {
        goto LABEL_248;
      }

      v100 = __DataStorage._length.getter();
      if (v100 >= v99)
      {
        v101 = v99;
      }

      else
      {
        v101 = v100;
      }

      v89 = v126;
      if (!v126)
      {
        goto LABEL_266;
      }

      v96 = v123;
      if (!v123)
      {
        goto LABEL_265;
      }
    }

    else
    {
      if (!v48)
      {
        __s1[0] = v12;
        LOWORD(__s1[1]) = v42;
        BYTE2(__s1[1]) = BYTE2(v42);
        BYTE3(__s1[1]) = BYTE3(v42);
        BYTE4(__s1[1]) = BYTE4(v42);
        BYTE5(__s1[1]) = BYTE5(v42);
        if (v11)
        {
          if (v11 == 1)
          {
            v126 = v41;
            v125 = (v41 >> 32) - v41;
            if (v41 >> 32 < v41)
            {
              goto LABEL_241;
            }

            sub_100069E2C(v41, v17);
            sub_100069E2C(v41, v17);
            sub_10006A2BC(v12, v42);
            v55 = __DataStorage._bytes.getter();
            if (!v55)
            {
              goto LABEL_262;
            }

            v56 = v55;
            v57 = __DataStorage._offset.getter();
            if (__OFSUB__(v126, v57))
            {
              goto LABEL_246;
            }

            v58 = (v126 - v57 + v56);
            v59 = __DataStorage._length.getter();
            if (!v58)
            {
              goto LABEL_261;
            }

LABEL_137:
            if (v59 >= v125)
            {
              v82 = v125;
            }

            else
            {
              v82 = v59;
            }

            v83 = v58;
            goto LABEL_161;
          }

          v74 = *(v41 + 24);
          v126 = *(v41 + 16);
          v125 = v74;
          sub_100069E2C(v41, v17);
          sub_100069E2C(v41, v17);
          sub_10006A2BC(v12, v42);
          v75 = __DataStorage._bytes.getter();
          if (v75)
          {
            v76 = v75;
            v77 = __DataStorage._offset.getter();
            v78 = v126;
            if (__OFSUB__(v126, v77))
            {
              goto LABEL_251;
            }

            v124 = (v126 - v77 + v76);
          }

          else
          {
            v124 = 0;
            v78 = v126;
          }

          v97 = v125 - v78;
          if (__OFSUB__(v125, v78))
          {
            goto LABEL_243;
          }

          v98 = __DataStorage._length.getter();
          v83 = v124;
          if (!v124)
          {
            goto LABEL_274;
          }

          goto LABEL_158;
        }

        goto LABEL_115;
      }

      v126 = v12;
      if (v12 > v12 >> 32)
      {
        goto LABEL_238;
      }

      sub_100069E2C(v41, v17);
      sub_100069E2C(v41, v17);
      sub_10006A2BC(v12, v42);
      v62 = __DataStorage._bytes.getter();
      if (v62)
      {
        v125 = v62;
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v126, v63))
        {
          goto LABEL_240;
        }

        v126 = v126 - v63 + v125;
      }

      else
      {
        v126 = 0;
      }

      __DataStorage._length.getter();
      if (v11 != 2)
      {
        if (v11 == 1)
        {
          v125 = (v41 >> 32) - v41;
          if (v41 >> 32 < v41)
          {
            goto LABEL_249;
          }

          v72 = __DataStorage._bytes.getter();
          if (v72)
          {
            v124 = v72;
            v73 = __DataStorage._offset.getter();
            if (__OFSUB__(v41, v73))
            {
              goto LABEL_256;
            }

            v71 = &v124[v41 - v73];
          }

          else
          {
            v71 = 0;
          }

          v106 = __DataStorage._length.getter();
          v103 = v125;
          if (v106 < v125)
          {
            v103 = v106;
          }

          v89 = v126;
          if (!v126)
          {
            goto LABEL_269;
          }

          if (!v71)
          {
            goto LABEL_268;
          }

          goto LABEL_192;
        }

        v89 = v126;
        v14 = v45;
        __s1[0] = v41;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        v8 = v136;
        if (!v126)
        {
          goto LABEL_267;
        }

        goto LABEL_150;
      }

      v90 = *(v41 + 24);
      v125 = *(v41 + 16);
      v124 = v90;
      v91 = __DataStorage._bytes.getter();
      if (v91)
      {
        v92 = v91;
        v93 = __DataStorage._offset.getter();
        v94 = v125;
        if (__OFSUB__(v125, v93))
        {
          goto LABEL_254;
        }

        v123 = (v125 - v93 + v92);
      }

      else
      {
        v123 = 0;
        v94 = v125;
      }

      v104 = &v124[-v94];
      if (__OFSUB__(v124, v94))
      {
        goto LABEL_250;
      }

      v105 = __DataStorage._length.getter();
      if (v105 >= v104)
      {
        v101 = v104;
      }

      else
      {
        v101 = v105;
      }

      v89 = v126;
      if (!v126)
      {
        goto LABEL_271;
      }

      v96 = v123;
      if (!v123)
      {
        goto LABEL_270;
      }
    }

    v14 = v45;
    v8 = v136;
    if (v89 == v96)
    {
      goto LABEL_214;
    }

    v95 = v101;
    goto LABEL_194;
  }

  v49 = 0;
  if (!v12 && v42 == 0xC000000000000000 && v17 >> 62 == 3)
  {
    v49 = 0;
    if (!v41 && v17 == 0xC000000000000000)
    {
      sub_100069E2C(0, 0xC000000000000000);
      sub_100069E2C(0, 0xC000000000000000);
      sub_10006A2BC(0, 0xC000000000000000);

      sub_10006A2D0(0, 0xC000000000000000);
      sub_10006A178(0, 0xC000000000000000);
      sub_10006A2D0(0, 0xC000000000000000);
      v12 = 0;
      goto LABEL_215;
    }
  }

LABEL_81:
  if (v11 <= 1)
  {
    goto LABEL_82;
  }

LABEL_87:
  if (v11 == 2)
  {
    v54 = *(v41 + 16);
    v53 = *(v41 + 24);
    v37 = __OFSUB__(v53, v54);
    v52 = v53 - v54;
    if (v37)
    {
      goto LABEL_235;
    }

    goto LABEL_89;
  }

  if (v49)
  {
LABEL_101:
    sub_100069E2C(*(v139 + 16), *(v139 + 24));
    sub_100069E2C(v41, v17);
    sub_10006A2BC(v12, v42);

    sub_10006A2D0(v41, v17);
    sub_10006A178(v41, v17);
    sub_10006A2D0(v12, v42);
    sub_10006A2D0(v12, v42);
    v8 = v136;
    goto LABEL_54;
  }

LABEL_213:
  sub_100069E2C(*(v139 + 16), *(v139 + 24));
  sub_100069E2C(v41, v17);
  sub_10006A2BC(v12, v42);
LABEL_214:

  sub_10006A2D0(v41, v17);
  sub_10006A178(v41, v17);
  sub_10006A2D0(v12, v42);
LABEL_215:
  sub_10006A2D0(v12, v42);
LABEL_216:

LABEL_217:
  sub_1000752F4(v147);
  v112 = v134;

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v147[0] = v116;
    *v115 = 136315138;
    v117 = *(v112 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
    v118 = *(v112 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

    v119 = sub_1002FFA0C(v117, v118, v147);

    *(v115 + 4) = v119;
    _os_log_impl(&_mh_execute_header, v113, v114, "Requesting handoff token for %s", v115, 0xCu);
    sub_1000752F4(v116);
  }

  sub_1000938D4(v112 + v127, v147, &qword_100502438, &qword_100409990);
  if (v148)
  {
    sub_1000752B0(v147, v148);
    sub_1002DF844();

    sub_1000752F4(v147);
    return;
  }

LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __DataStorage._length.getter();
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __DataStorage._length.getter();
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
}

uint64_t sub_1001990A4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (!a1)
    {
      v14 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
      swift_beginAccess();
      *(v1 + v14) = _swiftEmptyArrayStorage;
    }

    v10 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
    swift_beginAccess();

    v9 = sub_1001A1C34((v1 + v10), a1);
    v11 = *(v1 + v10);
    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= v9)
      {
LABEL_7:
        sub_1001A2834(v9, v12, type metadata accessor for SERequest);
        swift_endAccess();
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  v15 = v9;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  v9 = v15;
  if (v12 >= v15)
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_1001992D4()
{
  v233 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v233);
  v235 = &v221 - v0;
  v1 = type metadata accessor for UUID();
  v248 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v221 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v237 = &v221 - v5;
  v6 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v6 - 8);
  v8 = &v221 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v232 = &v221 - v10;
  __chkstk_darwin(v11);
  v234 = &v221 - v12;
  __chkstk_darwin(v13);
  v238 = &v221 - v14;
  __chkstk_darwin(v15);
  v236 = &v221 - v16;
  __chkstk_darwin(v17);
  v19 = &v221 - v18;
  __chkstk_darwin(v20);
  v22 = &v221 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v221 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_243;
  }

LABEL_2:
  v27 = qword_10051B7F0;
  *v26 = qword_10051B7F0;
  v29 = v24 + 104;
  v28 = *(v24 + 13);
  LODWORD(v242) = enum case for DispatchPredicate.onQueue(_:);
  v241 = v28;
  (v28)(v26);
  v30 = v27;
  v31 = _dispatchPreconditionTest(_:)();
  v32 = v23;
  v23 = v31;
  v34 = *(v24 + 1);
  v33 = (v24 + 8);
  v244 = v32;
  v240 = v34;
  v34(v26);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_245:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_28;
  }

  v239 = v26;
  v243 = v30;
  v26 = v245;
  v35 = *(v245 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
  if (v35)
  {
    v231 = v33;
    v230 = v29;
    v228 = v8;
    v227 = v3;
    v36 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
    v229 = v35;
    v37 = v35;
    v246 = v36;
    v247 = v37;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Already have an SE handle", v40, 2u);
    }

    v41 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
    v42 = v245;
    swift_beginAccess();
    sub_1000938D4(v42 + v41, v22, &unk_10050BE80, &unk_10040B360);
    v43 = v248 + 48;
    v44 = *(v248 + 48);
    v45 = v1;
    v46 = v44(v22, 1, v1);
    sub_100075768(v22, &unk_10050BE80, &unk_10040B360);
    if (v46 == 1 || (v47 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier, swift_beginAccess(), sub_1000938D4(v245 + v47, v19, &unk_10050BE80, &unk_10040B360), LODWORD(v47) = v44(v19, 1, v45), v48 = v245, sub_100075768(v19, &unk_10050BE80, &unk_10040B360), v47 == 1) || *(v48 + OBJC_IVAR____TtC10seserviced5DSKSE_state) != 3)
    {
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Have SE handle with bad state", v69, 2u);
      }

      sub_100194774(0);
      sub_100197634();
    }

    else
    {
      v224 = v44;
      v225 = v43;
      v226 = v45;
      v49 = sub_10019B758();
      if (v49)
      {
        v50 = v49;
        swift_retain_n();
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          __s1[0] = v54;
          *v53 = 136315138;
          v56 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
          v55 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

          v57 = sub_1002FFA0C(v56, v55, __s1);

          *(v53 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "Got request for %s", v53, 0xCu);
          sub_1000752F4(v54);
        }

        v58 = v226;
        v59 = v244;
        if (*(v50 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8))
        {
LABEL_13:
          v60 = v243;
          v61 = v239;
          *v239 = v243;
          (v241)(v61, v242, v59);
          v62 = v60;
          LOBYTE(v60) = _dispatchPreconditionTest(_:)();
          v240(v61, v59);
          if (v60)
          {
            v63 = *(v245 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
            if (v63)
            {
              v64 = v63;
              if (sub_1003AE7DC(v64))
              {
                sub_1003AE754(v64);
              }
            }

            v65 = *(v50 + 32);
            v66 = v247;

            v65(v229, 0);

            if (*(v50 + 24))
            {
              sub_100194774(0);
            }

            else
            {
              sub_10019CE50(*(v50 + 16));
            }

            goto LABEL_237;
          }

LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
        }

        v153 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks);
        if ((v153 & 1) == 0)
        {
          if ((v153 & 2) == 0)
          {
            goto LABEL_13;
          }

          v154 = v50 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
          if ((*(v50 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber + 8) & 1) == 0)
          {
            v155 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
            if (v155)
            {
              if (*v154 == *(v155 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber))
              {
                goto LABEL_13;
              }
            }
          }

          v75 = Logger.logObject.getter();
          v156 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v75, v156))
          {
            v157 = -1;
            v158 = swift_slowAlloc();
            *v158 = 134218240;
            v159 = *v154;
            if (*(v154 + 8))
            {
              v159 = -1;
            }

            *(v158 + 4) = v159;
            *(v158 + 12) = 2048;
            v160 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
            if (v160)
            {
              v157 = *(v160 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber);
            }

            *(v158 + 14) = v157;
            v161 = v158;

            _os_log_impl(&_mh_execute_header, v75, v156, "Got different sequence numbers request %ld current %ld", v161, 0x16u);

            goto LABEL_220;
          }

LABEL_219:

LABEL_220:
          sub_100197634();

LABEL_238:

          return;
        }

        v162 = OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier;
        v163 = v236;
        sub_1000938D4(v50 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier, v236, &unk_10050BE80, &unk_10040B360);
        if (v224(v163, 1, v58) == 1)
        {
          sub_100075768(v163, &unk_10050BE80, &unk_10040B360);
          goto LABEL_228;
        }

        v230 = v162;
        v179 = v248;
        v180 = *(v248 + 32);
        v181 = v237;
        v223 = v248 + 32;
        v222 = v180;
        v180(v237, v163, v58);
        v182 = *(v179 + 16);
        v183 = v238;
        v182(v238, v181, v58);
        v184 = *(v179 + 56);
        v185 = 1;
        v184(v183, 0, 1, v58);
        v186 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
        if (v186)
        {
          v187 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v188 = v182;
          v189 = v234;
          v188(v234, v186 + v187, v58);
          v185 = 0;
        }

        else
        {
          v189 = v234;
        }

        v184(v189, v185, 1, v58);
        v190 = *(v233 + 48);
        v191 = v238;
        v192 = v235;
        sub_1000938D4(v238, v235, &unk_10050BE80, &unk_10040B360);
        v236 = v190;
        sub_1000938D4(v189, v192 + v190, &unk_10050BE80, &unk_10040B360);
        v193 = v224;
        if (v224(v192, 1, v58) == 1)
        {
          sub_100075768(v189, &unk_10050BE80, &unk_10040B360);
          sub_100075768(v191, &unk_10050BE80, &unk_10040B360);
          (*(v248 + 8))(v237, v58);
          if (v193(v192 + v236, 1, v58) == 1)
          {
            sub_100075768(v192, &unk_10050BE80, &unk_10040B360);
            v59 = v244;
            goto LABEL_13;
          }
        }

        else
        {
          v194 = v232;
          sub_1000938D4(v192, v232, &unk_10050BE80, &unk_10040B360);
          v195 = v236;
          if (v193(v192 + v236, 1, v58) != 1)
          {
            v219 = v227;
            v222(v227, v192 + v195, v58);
            sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            LODWORD(v236) = dispatch thunk of static Equatable.== infix(_:_:)();
            v220 = *(v248 + 8);
            v220(v219, v58);
            sub_100075768(v189, &unk_10050BE80, &unk_10040B360);
            sub_100075768(v238, &unk_10050BE80, &unk_10040B360);
            v220(v237, v58);
            v220(v194, v58);
            sub_100075768(v235, &unk_10050BE80, &unk_10040B360);
            v59 = v244;
            v162 = v230;
            if (v236)
            {
              goto LABEL_13;
            }

LABEL_228:

            v197 = v50;
            v198 = Logger.logObject.getter();
            v199 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v198, v199))
            {
              v200 = v58;
              v201 = 1819047278;
              v202 = swift_slowAlloc();
              v256 = swift_slowAlloc();
              *v202 = 136315394;
              v203 = v197;
              v204 = v228;
              sub_1000938D4(v197 + v162, v228, &unk_10050BE80, &unk_10040B360);
              if (v224(v204, 1, v200) == 1)
              {
                sub_100075768(v204, &unk_10050BE80, &unk_10040B360);
                v205 = 0xE400000000000000;
                v206 = 1819047278;
              }

              else
              {
                v207 = UUID.uuidString.getter();
                v205 = v208;
                (*(v248 + 8))(v204, v200);
                v206 = v207;
              }

              v209 = sub_1002FFA0C(v206, v205, &v256);

              *(v202 + 4) = v209;
              *(v202 + 12) = 2080;
              v210 = *(v203 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
              if (v210)
              {
                v211 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
                swift_beginAccess();
                v212 = v248;
                v213 = v210 + v211;
                v214 = v227;
                v215 = v226;
                (*(v248 + 16))(v227, v213, v226);
                v201 = UUID.uuidString.getter();
                v217 = v216;
                (*(v212 + 8))(v214, v215);
              }

              else
              {
                v217 = 0xE400000000000000;
              }

              v66 = v247;
              v218 = sub_1002FFA0C(v201, v217, &v256);

              *(v202 + 14) = v218;
              _os_log_impl(&_mh_execute_header, v198, v199, "Got different connection identifiers request %s current %s", v202, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v66 = v247;
            }

LABEL_237:
            sub_100197634();

            goto LABEL_238;
          }

          sub_100075768(v189, &unk_10050BE80, &unk_10040B360);
          sub_100075768(v238, &unk_10050BE80, &unk_10040B360);
          v196 = *(v248 + 8);
          v196(v237, v58);
          v196(v194, v58);
        }

        sub_100075768(v192, &qword_1005031D0, &unk_100413B20);
        v162 = v230;
        goto LABEL_228;
      }
    }

    return;
  }

  LODWORD(v240) = arc4random();
  v233 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
  v70 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v23))
  {
    v71 = swift_slowAlloc();
    *v71 = 67109120;
    *(v71 + 4) = v240;
    _os_log_impl(&_mh_execute_header, v70, v23, "Requesting SE identifier %u", v71, 8u);
  }

  v72 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
  swift_beginAccess();
  v29 = *(v26 + v72);
  if (v29 >> 62)
  {
    goto LABEL_245;
  }

  v19 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:

  if (!v19)
  {
LABEL_190:

    v152 = v245;
    goto LABEL_213;
  }

  v22 = 0;
  v1 = v29 & 0xC000000000000001;
  v8 = (v29 & 0xFFFFFFFFFFFFFF8);
  v24 = v29 + 32;
  v239 = v29;
  v237 = v19;
  v236 = v29 & 0xC000000000000001;
  v235 = (v29 & 0xFFFFFFFFFFFFFF8);
  v234 = v29 + 32;
  while (1)
  {
    while (1)
    {
      if (v1)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v74 = __OFADD__(v22++, 1);
        if (v74)
        {
          goto LABEL_241;
        }
      }

      else
      {
        if (v22 >= *(v8 + 2))
        {
          goto LABEL_242;
        }

        v73 = *&v24[8 * v22];

        v74 = __OFADD__(v22++, 1);
        if (v74)
        {
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          swift_once();
          goto LABEL_2;
        }
      }

      v23 = OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
      v3 = &qword_100502438;
      v26 = &qword_100409990;
      sub_1000938D4(v73 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, aBlock, &qword_100502438, &qword_100409990);
      if (v258)
      {
        break;
      }

      sub_100075768(aBlock, &qword_100502438, &qword_100409990);
      if (v22 == v19)
      {
        goto LABEL_190;
      }
    }

    v241 = v22;
    sub_100075768(aBlock, &qword_100502438, &qword_100409990);
    v242 = v73;
    v238 = v23;
    sub_1000938D4(v73 + v23, aBlock, &qword_100502438, &qword_100409990);
    if (!v258)
    {
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __DataStorage._length.getter();
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __DataStorage._length.getter();
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
      return;
    }

    v248 = *sub_1000752B0(aBlock, v258);
    v75 = [objc_opt_self() sessionManager];
    v23 = [v75 getActiveDCKSessions];

    sub_10009393C(0, &qword_100505370, off_1004BE540);
    v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v76 >> 62)
    {
      break;
    }

    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v77)
    {
      goto LABEL_38;
    }

LABEL_30:

    sub_1000752F4(aBlock);
    v19 = v237;
    v22 = v241;
    v1 = v236;
    v8 = v235;
    v24 = v234;
    if (v241 == v237)
    {
      goto LABEL_190;
    }
  }

  v77 = _CocoaArrayWrapper.endIndex.getter();
  if (!v77)
  {
    goto LABEL_30;
  }

LABEL_38:
  v26 = 0;
  v246 = v76 & 0xFFFFFFFFFFFFFF8;
  v247 = (v76 & 0xC000000000000001);
  v244 = v76;
  while (2)
  {
    if (v247)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *(v246 + 16))
      {
        goto LABEL_218;
      }

      v80 = *(v76 + 8 * v26 + 32);
    }

    v81 = v80;
    v82 = (v26 + 1);
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    v83 = [v80 activeEndpoint];
    if (!v83)
    {
      v78 = 0;
      v75 = *(v248 + 16);
      v79 = *(v248 + 24);
      v3 = 0xF000000000000000;
LABEL_40:
      sub_100069E2C(v75, v79);

      if (v79 >> 60 == 15)
      {

        sub_10006A2D0(v78, v3);
        goto LABEL_209;
      }

LABEL_41:
      sub_10006A2D0(v78, v3);
      sub_10006A2D0(v75, v79);
LABEL_42:
      ++v26;
      if (v82 == v77)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  v84 = v83;
  v23 = [v83 publicKeyIdentifier];

  v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v85;

  v75 = *(v248 + 16);
  v79 = *(v248 + 24);
  if (v3 >> 60 == 15)
  {
    goto LABEL_40;
  }

  if (v79 >> 60 == 15)
  {
    sub_100069E2C(v75, v79);

    goto LABEL_41;
  }

  v86 = v3 >> 62;
  v87 = v79 >> 62;
  if (v3 >> 62 != 3)
  {
    if (v86 > 1)
    {
      if (v86 != 2)
      {
        v88 = 0;
        if (v87 <= 1)
        {
LABEL_69:
          if (v87)
          {
            LODWORD(v91) = HIDWORD(v75) - v75;
            if (__OFSUB__(HIDWORD(v75), v75))
            {
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
              goto LABEL_253;
            }

            v91 = v91;
          }

          else
          {
            v91 = BYTE6(v79);
          }

          goto LABEL_76;
        }

LABEL_74:
        if (v87 != 2)
        {
          if (!v88)
          {
LABEL_203:
            sub_100069E2C(v75, v79);
            sub_100069E2C(v75, v79);
            sub_10006A2BC(v78, v3);

            sub_10006A2D0(v75, v79);
            sub_10006A178(v75, v79);
            sub_10006A2D0(v78, v3);
            goto LABEL_207;
          }

LABEL_88:
          sub_100069E2C(v75, v79);
          sub_100069E2C(v75, v79);
          sub_10006A2BC(v78, v3);

          sub_10006A2D0(v75, v79);
          sub_10006A178(v75, v79);
          sub_10006A2D0(v78, v3);
          sub_10006A2D0(v78, v3);
          v76 = v244;
          goto LABEL_42;
        }

        v93 = *(v75 + 16);
        v92 = *(v75 + 24);
        v74 = __OFSUB__(v92, v93);
        v91 = v92 - v93;
        if (v74)
        {
          goto LABEL_247;
        }

LABEL_76:
        if (v88 == v91)
        {
          if (v88 < 1)
          {
            goto LABEL_203;
          }

          if (v86 > 1)
          {
            if (v86 != 2)
            {
              memset(__s1, 0, 14);
              if (v87)
              {
                if (v87 != 2)
                {
                  v232 = v75;
                  v231 = (v75 >> 32) - v75;
                  if (v75 >> 32 < v75)
                  {
                    goto LABEL_255;
                  }

                  sub_100069E2C(v75, v79);
                  sub_100069E2C(v75, v79);
                  sub_10006A2BC(v78, v3);
                  v121 = __DataStorage._bytes.getter();
                  if (!v121)
                  {
                    goto LABEL_285;
                  }

                  v122 = v121;
                  v123 = __DataStorage._offset.getter();
                  if (__OFSUB__(v232, v123))
                  {
                    goto LABEL_260;
                  }

                  v124 = (v232 - v123 + v122);
                  v98 = __DataStorage._length.getter();
                  v99 = v124;
                  v76 = v244;
                  if (!v99)
                  {
                    goto LABEL_286;
                  }

                  goto LABEL_124;
                }

                v104 = *(v75 + 16);
                v232 = *(v75 + 24);
                sub_100069E2C(v75, v79);
                sub_100069E2C(v75, v79);
                sub_10006A2BC(v78, v3);
                v105 = __DataStorage._bytes.getter();
                if (v105)
                {
                  v230 = v104;
                  v106 = v105;
                  v107 = __DataStorage._offset.getter();
                  v108 = v230;
                  if (__OFSUB__(v230, v107))
                  {
                    goto LABEL_265;
                  }

                  v231 = v230 + v106 - v107;
                  v109 = v232;
                }

                else
                {
                  v231 = 0;
                  v109 = v232;
                  v108 = v104;
                }

                v143 = v109 - v108;
                if (__OFSUB__(v109, v108))
                {
                  goto LABEL_257;
                }

                v144 = __DataStorage._length.getter();
                v110 = v231;
                if (!v231)
                {
                  goto LABEL_273;
                }

                goto LABEL_145;
              }

LABEL_102:
              v249 = v75;
              v250 = v79;
              v251 = BYTE2(v79);
              v252 = BYTE3(v79);
              v253 = BYTE4(v79);
              v254 = BYTE5(v79);
              sub_100069E2C(v75, v79);
              sub_100069E2C(v75, v79);
              sub_10006A2BC(v78, v3);
              v110 = &v249;
              v111 = BYTE6(v79);
              goto LABEL_148;
            }

            v232 = *(v78 + 16);
            sub_100069E2C(v75, v79);
            sub_100069E2C(v75, v79);
            sub_10006A2BC(v78, v3);
            v100 = __DataStorage._bytes.getter();
            if (v100)
            {
              v231 = v100;
              v101 = __DataStorage._offset.getter();
              if (__OFSUB__(v232, v101))
              {
                goto LABEL_251;
              }

              v232 = v232 - v101 + v231;
            }

            else
            {
              v232 = 0;
            }

            __DataStorage._length.getter();
            if (v87 == 2)
            {
              v128 = *(v75 + 24);
              v231 = *(v75 + 16);
              v230 = v128;
              v129 = __DataStorage._bytes.getter();
              if (v129)
              {
                v130 = v129;
                v131 = __DataStorage._offset.getter();
                v132 = v231;
                if (__OFSUB__(v231, v131))
                {
                  goto LABEL_266;
                }

                v133 = v231 - v131 + v130;
              }

              else
              {
                v133 = 0;
                v132 = v231;
              }

              v231 = v133;
              v145 = v230 - v132;
              if (__OFSUB__(v230, v132))
              {
                goto LABEL_261;
              }

              v146 = __DataStorage._length.getter();
              if (v146 >= v145)
              {
                v147 = v145;
              }

              else
              {
                v147 = v146;
              }

              v134 = v232;
              if (!v232)
              {
                goto LABEL_279;
              }

              v76 = v244;
              v142 = v231;
              if (!v231)
              {
                goto LABEL_278;
              }

              goto LABEL_177;
            }

            if (v87 == 1)
            {
              v231 = (v75 >> 32) - v75;
              if (v75 >> 32 < v75)
              {
                goto LABEL_258;
              }

              v112 = __DataStorage._bytes.getter();
              if (v112)
              {
                v230 = v112;
                v113 = __DataStorage._offset.getter();
                if (__OFSUB__(v75, v113))
                {
                  goto LABEL_268;
                }

                v230 = (v230 + v75 - v113);
              }

              else
              {
                v230 = 0;
              }

              v76 = v244;
              v148 = __DataStorage._length.getter();
              v147 = v231;
              if (v148 < v231)
              {
                v147 = v148;
              }

              v134 = v232;
              if (!v232)
              {
                goto LABEL_277;
              }

              v142 = v230;
              if (!v230)
              {
                goto LABEL_276;
              }

LABEL_177:
              if (v134 == v142)
              {

                sub_10006A2D0(v75, v79);
                sub_10006A178(v75, v79);
                sub_10006A2D0(v78, v3);
                goto LABEL_207;
              }

              v141 = v147;
              goto LABEL_179;
            }

            v134 = v232;
            __s1[0] = v75;
            LOWORD(__s1[1]) = v79;
            BYTE2(__s1[1]) = BYTE2(v79);
            BYTE3(__s1[1]) = BYTE3(v79);
            BYTE4(__s1[1]) = BYTE4(v79);
            BYTE5(__s1[1]) = BYTE5(v79);
            v76 = v244;
            if (!v232)
            {
              goto LABEL_272;
            }
          }

          else
          {
            if (!v86)
            {
              __s1[0] = v78;
              LOWORD(__s1[1]) = v3;
              BYTE2(__s1[1]) = BYTE2(v3);
              BYTE3(__s1[1]) = BYTE3(v3);
              BYTE4(__s1[1]) = BYTE4(v3);
              BYTE5(__s1[1]) = BYTE5(v3);
              if (v87)
              {
                if (v87 == 1)
                {
                  v232 = v75;
                  v231 = (v75 >> 32) - v75;
                  if (v75 >> 32 < v75)
                  {
                    goto LABEL_254;
                  }

                  sub_100069E2C(v75, v79);
                  sub_100069E2C(v75, v79);
                  sub_10006A2BC(v78, v3);
                  v94 = __DataStorage._bytes.getter();
                  if (!v94)
                  {
                    goto LABEL_275;
                  }

                  v95 = v94;
                  v96 = __DataStorage._offset.getter();
                  if (__OFSUB__(v232, v96))
                  {
                    goto LABEL_259;
                  }

                  v97 = (v232 - v96 + v95);
                  v98 = __DataStorage._length.getter();
                  v99 = v97;
                  v76 = v244;
                  if (!v99)
                  {
                    goto LABEL_274;
                  }

LABEL_124:
                  if (v98 >= v231)
                  {
                    v125 = v231;
                  }

                  else
                  {
                    v125 = v98;
                  }

                  v23 = memcmp(__s1, v99, v125);

                  sub_10006A178(v75, v79);
                  sub_10006A2D0(v78, v3);
                  v126 = v75;
                  v127 = v79;
LABEL_180:
                  sub_10006A2D0(v126, v127);
                  sub_10006A2D0(v78, v3);
                  if (!v23)
                  {
                    goto LABEL_208;
                  }

                  goto LABEL_42;
                }

                v116 = *(v75 + 24);
                v232 = *(v75 + 16);
                v231 = v116;
                sub_100069E2C(v75, v79);
                sub_100069E2C(v75, v79);
                sub_10006A2BC(v78, v3);
                v117 = __DataStorage._bytes.getter();
                if (v117)
                {
                  v118 = v117;
                  v119 = __DataStorage._offset.getter();
                  v120 = v232;
                  if (__OFSUB__(v232, v119))
                  {
                    goto LABEL_264;
                  }

                  v230 = (v232 - v119 + v118);
                }

                else
                {
                  v230 = 0;
                  v120 = v232;
                }

                v143 = v231 - v120;
                if (__OFSUB__(v231, v120))
                {
                  goto LABEL_256;
                }

                v144 = __DataStorage._length.getter();
                v110 = v230;
                if (!v230)
                {
                  goto LABEL_287;
                }

LABEL_145:
                if (v144 >= v143)
                {
                  v111 = v143;
                }

                else
                {
                  v111 = v144;
                }

LABEL_148:
                v23 = memcmp(__s1, v110, v111);

                sub_10006A178(v75, v79);
                sub_10006A2D0(v78, v3);
                sub_10006A2D0(v75, v79);
                sub_10006A2D0(v78, v3);
                v76 = v244;
                if (!v23)
                {
                  goto LABEL_208;
                }

                goto LABEL_42;
              }

              goto LABEL_102;
            }

            v232 = v78;
            if (v78 > v78 >> 32)
            {
              goto LABEL_250;
            }

            sub_100069E2C(v75, v79);
            sub_100069E2C(v75, v79);
            sub_10006A2BC(v78, v3);
            v102 = __DataStorage._bytes.getter();
            if (v102)
            {
              v231 = v102;
              v103 = __DataStorage._offset.getter();
              if (__OFSUB__(v232, v103))
              {
                goto LABEL_252;
              }

              v232 = v232 - v103 + v231;
            }

            else
            {
              v232 = 0;
            }

            __DataStorage._length.getter();
            if (v87 == 2)
            {
              v135 = *(v75 + 24);
              v231 = *(v75 + 16);
              v230 = v135;
              v136 = __DataStorage._bytes.getter();
              if (v136)
              {
                v137 = v136;
                v138 = __DataStorage._offset.getter();
                v139 = v231;
                if (__OFSUB__(v231, v138))
                {
                  goto LABEL_267;
                }

                v140 = v231 - v138 + v137;
              }

              else
              {
                v140 = 0;
                v139 = v231;
              }

              v231 = v140;
              v149 = v230 - v139;
              if (__OFSUB__(v230, v139))
              {
                goto LABEL_263;
              }

              v150 = __DataStorage._length.getter();
              if (v150 >= v149)
              {
                v147 = v149;
              }

              else
              {
                v147 = v150;
              }

              v134 = v232;
              if (!v232)
              {
                goto LABEL_284;
              }

              v76 = v244;
              v142 = v231;
              if (!v231)
              {
                goto LABEL_283;
              }

              goto LABEL_177;
            }

            if (v87 == 1)
            {
              v231 = (v75 >> 32) - v75;
              if (v75 >> 32 < v75)
              {
                goto LABEL_262;
              }

              v114 = __DataStorage._bytes.getter();
              if (v114)
              {
                v230 = v114;
                v115 = __DataStorage._offset.getter();
                if (__OFSUB__(v75, v115))
                {
                  goto LABEL_269;
                }

                v230 = (v230 + v75 - v115);
              }

              else
              {
                v230 = 0;
              }

              v76 = v244;
              v151 = __DataStorage._length.getter();
              v147 = v231;
              if (v151 < v231)
              {
                v147 = v151;
              }

              v134 = v232;
              if (!v232)
              {
                goto LABEL_282;
              }

              v142 = v230;
              if (!v230)
              {
                goto LABEL_281;
              }

              goto LABEL_177;
            }

            v134 = v232;
            __s1[0] = v75;
            LOWORD(__s1[1]) = v79;
            BYTE2(__s1[1]) = BYTE2(v79);
            BYTE3(__s1[1]) = BYTE3(v79);
            BYTE4(__s1[1]) = BYTE4(v79);
            BYTE5(__s1[1]) = BYTE5(v79);
            v76 = v244;
            if (!v232)
            {
              goto LABEL_280;
            }
          }

          v141 = BYTE6(v79);
          v142 = __s1;
LABEL_179:
          v23 = memcmp(v134, v142, v141);

          sub_10006A2D0(v75, v79);
          sub_10006A178(v75, v79);
          v126 = v78;
          v127 = v3;
          goto LABEL_180;
        }

        goto LABEL_88;
      }

      v90 = *(v78 + 16);
      v89 = *(v78 + 24);
      v74 = __OFSUB__(v89, v90);
      v88 = v89 - v90;
      if (v74)
      {
        goto LABEL_249;
      }
    }

    else
    {
      if (!v86)
      {
        v88 = BYTE6(v3);
        if (v87 <= 1)
        {
          goto LABEL_69;
        }

        goto LABEL_74;
      }

      LODWORD(v88) = HIDWORD(v78) - v78;
      if (__OFSUB__(HIDWORD(v78), v78))
      {
        goto LABEL_248;
      }

      v88 = v88;
    }

LABEL_68:
    if (v87 <= 1)
    {
      goto LABEL_69;
    }

    goto LABEL_74;
  }

  v88 = 0;
  if (v78)
  {
    goto LABEL_68;
  }

  if (v3 != 0xC000000000000000)
  {
    goto LABEL_68;
  }

  if (v79 >> 62 != 3)
  {
    goto LABEL_68;
  }

  v88 = 0;
  if (v75 || v79 != 0xC000000000000000)
  {
    goto LABEL_68;
  }

  sub_100069E2C(0, 0xC000000000000000);
  sub_100069E2C(0, 0xC000000000000000);
  sub_10006A2BC(0, 0xC000000000000000);

  sub_10006A2D0(0, 0xC000000000000000);
  sub_10006A178(0, 0xC000000000000000);
  sub_10006A2D0(0, 0xC000000000000000);
  v78 = 0;
LABEL_207:
  sub_10006A2D0(v78, v3);
LABEL_208:

LABEL_209:
  sub_1000752F4(aBlock);
  v164 = v242;

  v152 = v245;
  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    aBlock[0] = v168;
    *v167 = 136315138;
    v169 = *(v164 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
    v170 = *(v164 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

    v171 = sub_1002FFA0C(v169, v170, aBlock);

    *(v167 + 4) = v171;
    _os_log_impl(&_mh_execute_header, v165, v166, "Requesting handoff token for %s", v167, 0xCu);
    sub_1000752F4(v168);
    v152 = v245;
  }

  sub_1000938D4(v164 + v238, aBlock, &qword_100502438, &qword_100409990);
  if (!v258)
  {
    goto LABEL_271;
  }

  sub_1000752B0(aBlock, v258);
  sub_1002DF844();

  sub_1000752F4(aBlock);
LABEL_213:
  *(v152 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 1;
  v172 = swift_allocObject();
  *(v172 + 16) = v152;
  *(v172 + 24) = v240;
  v173 = objc_opt_self();

  v174 = String._bridgeToObjectiveC()();
  v175 = swift_allocObject();
  v176 = v243;
  v175[2] = v243;
  v175[3] = sub_10019F28C;
  v175[4] = v172;
  v259 = sub_10019F2DC;
  v260 = v175;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BBFA0;
  v258 = &unk_1004C9D48;
  v177 = _Block_copy(aBlock);
  v178 = v176;

  sub_1003AF710(v173, v174, v177);
  _Block_release(v177);
}