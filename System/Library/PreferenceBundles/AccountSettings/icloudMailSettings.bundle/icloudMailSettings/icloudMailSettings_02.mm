uint64_t sub_3CC4C(uint64_t a1)
{
  v2 = sub_3D204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_3CC88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_66D4(&qword_123C20, &qword_DB878);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_6648(a1, a1[3]);
  sub_3D204();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v9 = sub_D6B40();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_67D4(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_3CE04(uint64_t a1)
{
  v2 = sub_3D01C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3CE40(uint64_t a1)
{
  v2 = sub_3D01C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_3CE7C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_3CEA8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_3CEA8(void *a1)
{
  v3 = sub_66D4(&qword_123BF0, &qword_DB6E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_6648(a1, a1[3]);
  sub_3D01C();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_3D070();
    sub_D6B70();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_67D4(a1);
  }

  return v7;
}

unint64_t sub_3D01C()
{
  result = qword_123BF8;
  if (!qword_123BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123BF8);
  }

  return result;
}

unint64_t sub_3D070()
{
  result = qword_123C00;
  if (!qword_123C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C00);
  }

  return result;
}

unint64_t sub_3D100()
{
  result = qword_123C08;
  if (!qword_123C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C08);
  }

  return result;
}

unint64_t sub_3D158()
{
  result = qword_123C10;
  if (!qword_123C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C10);
  }

  return result;
}

unint64_t sub_3D1B0()
{
  result = qword_123C18;
  if (!qword_123C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C18);
  }

  return result;
}

unint64_t sub_3D204()
{
  result = qword_123C28;
  if (!qword_123C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C28);
  }

  return result;
}

unint64_t sub_3D258()
{
  result = qword_123C38;
  if (!qword_123C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C38);
  }

  return result;
}

unint64_t sub_3D2D8()
{
  result = qword_123C40;
  if (!qword_123C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C40);
  }

  return result;
}

unint64_t sub_3D330()
{
  result = qword_123C48;
  if (!qword_123C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C48);
  }

  return result;
}

unint64_t sub_3D388()
{
  result = qword_123C50;
  if (!qword_123C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C50);
  }

  return result;
}

unint64_t sub_3D3E0()
{
  result = qword_123C58;
  if (!qword_123C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C58);
  }

  return result;
}

unint64_t sub_3D438()
{
  result = qword_123C60;
  if (!qword_123C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C60);
  }

  return result;
}

unint64_t sub_3D490()
{
  result = qword_123C68;
  if (!qword_123C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123C68);
  }

  return result;
}

uint64_t sub_3D504()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_3D554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSAliasUpdateAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSAliasUpdateAPIRequest(uint64_t a1)
{
  result = qword_123C98;
  if (!qword_123C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_3D5E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v27 = _swiftEmptyArrayStorage;
    sub_D6A60();
    v4 = (a1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v4[5];
      v24 = v4[4];
      v25 = v6;
      v26 = *(v4 + 12);
      v7 = v4[1];
      v20 = *v4;
      v21 = v7;
      v8 = v4[3];
      v22 = v4[2];
      v23 = v8;
      v9 = v8;
      sub_26A60(&v20, v19);

      v10._rawValue = &off_113278;
      v11 = sub_D6AF0(v10, v9);

      if ((v11 | 4) == 4)
      {
        v12 = *(&v24 + 1);
        if (*(&v24 + 1))
        {
          v13 = v24;

          sub_45294(v19, v13, v12);
        }
      }

      _s11MailRuleRowCMa();
      v14 = swift_allocObject();
      *(v14 + 120) = 0;
      v15 = v25;
      *(v14 + 80) = v24;
      *(v14 + 96) = v15;
      v16 = v26;
      *(v14 + 112) = v26;
      v17 = v21;
      *(v14 + 16) = v20;
      *(v14 + 32) = v17;
      v18 = v23;
      *(v14 + 48) = v22;
      *(v14 + 64) = v18;
      *(v14 + 128) = v16;
      sub_D6A40();
      sub_D6A70();
      sub_D6A80();
      sub_D6A50();
      if (!i)
      {
        break;
      }

      v4 = (v4 + 104);
    }

    return v27;
  }

  return result;
}

uint64_t sub_3D770()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0;
  v18[1] = v0[1];
  v18[2] = v1;
  v18[3] = v2;
  v19 = *(v0 + 8);
  v18[0] = v3;
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_13D84();
  v5 = sub_D4D80();
  v7 = v6;

  v8 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v16 = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:&v16];

  v11 = v16;
  if (v10)
  {
    sub_D6980();
    sub_26628(v5, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v5, v7);

    v16 = 0u;
    v17 = 0u;
  }

  v14[0] = v16;
  v14[1] = v17;
  if (!*(&v17 + 1))
  {
    return 0;
  }

  sub_26430(v14, &v13);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3D96C()
{
  v1 = *(v0 + 16);
  v17[0] = *v0;
  v2 = *(v0 + 32);
  v17[1] = v1;
  v17[2] = v2;
  v18 = *(v0 + 48);
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_46A70();
  v4 = sub_D4D80();
  v6 = v5;

  v7 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v15 = 0;
  v9 = [v7 JSONObjectWithData:isa options:4 error:&v15];

  v10 = v15;
  if (v9)
  {
    sub_D6980();
    sub_26628(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v4, v6);

    v15 = 0u;
    v16 = 0u;
  }

  v13[0] = v15;
  v13[1] = v16;
  if (!*(&v16 + 1))
  {
    return 0;
  }

  sub_26430(v13, &v12);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DB5C()
{
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  type metadata accessor for MailRuleBatchRequest();
  sub_45F94(&qword_124158, type metadata accessor for MailRuleBatchRequest, &unk_E1CAC);
  v1 = sub_D4D80();
  v3 = v2;

  v4 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v12 = 0;
  v6 = [v4 JSONObjectWithData:isa options:4 error:&v12];

  v7 = v12;
  if (v6)
  {
    sub_D6980();
    sub_26628(v1, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v7;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v1, v3);

    v12 = 0u;
    v13 = 0u;
  }

  v10[0] = v12;
  v10[1] = v13;
  if (!*(&v13 + 1))
  {
    return 0;
  }

  sub_26430(v10, &v9);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DD6C(uint64_t a1, uint64_t a2)
{
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_45FE4();
  v3 = sub_D4D80();
  v5 = v4;

  v6 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v14 = 0;
  v8 = [v6 JSONObjectWithData:isa options:4 error:&v14];

  v9 = v14;
  if (v8)
  {
    sub_D6980();
    sub_26628(v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v9;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v3, v5);

    v14 = 0u;
    v15 = 0u;
  }

  v12[0] = v14;
  v12[1] = v15;
  if (!*(&v15 + 1))
  {
    return 0;
  }

  sub_26430(v12, &v11);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_46A1C();
  v4 = sub_D4D80();
  v6 = v5;

  v7 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v15 = 0;
  v9 = [v7 JSONObjectWithData:isa options:4 error:&v15];

  v10 = v15;
  if (v9)
  {
    sub_D6980();
    sub_26628(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v4, v6);

    v15 = 0u;
    v16 = 0u;
  }

  v13[0] = v15;
  v13[1] = v16;
  if (!*(&v16 + 1))
  {
    return 0;
  }

  sub_26430(v13, &v12);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E120()
{
  v1 = v0[1];
  v17 = *v0;
  v2 = v0[2];
  v18 = v1;
  v19[0] = v2;
  *(v19 + 9) = *(v0 + 41);
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_469C8();
  v4 = sub_D4D80();
  v6 = v5;

  v7 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v15 = 0;
  v9 = [v7 JSONObjectWithData:isa options:4 error:&v15];

  v10 = v15;
  if (v9)
  {
    sub_D6980();
    sub_26628(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v4, v6);

    v15 = 0u;
    v16 = 0u;
  }

  v13[0] = v15;
  v13[1] = v16;
  if (!*(&v16 + 1))
  {
    return 0;
  }

  sub_26430(v13, &v12);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E318()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 224);
  v26[13] = *(v0 + 208);
  v26[14] = v2;
  v3 = *(v0 + 128);
  v4 = *(v0 + 160);
  v5 = *(v0 + 176);
  v26[9] = *(v0 + 144);
  v26[10] = v4;
  v26[11] = v5;
  v26[12] = v1;
  v6 = *(v0 + 64);
  v7 = *(v0 + 96);
  v8 = *(v0 + 112);
  v26[5] = *(v0 + 80);
  v26[6] = v7;
  v26[7] = v8;
  v26[8] = v3;
  v9 = *(v0 + 16);
  v26[0] = *v0;
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  v26[1] = v9;
  v26[2] = v10;
  v27 = *(v0 + 240);
  v26[3] = v11;
  v26[4] = v6;
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_46974();
  v13 = sub_D4D80();
  v15 = v14;

  v16 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v24 = 0;
  v18 = [v16 JSONObjectWithData:isa options:4 error:&v24];

  v19 = v24;
  if (v18)
  {
    sub_D6980();
    sub_26628(v13, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = v19;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v13, v15);

    v24 = 0u;
    v25 = 0u;
  }

  v22[0] = v24;
  v22[1] = v25;
  if (!*(&v25 + 1))
  {
    return 0;
  }

  sub_26430(v22, &v21);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E540()
{
  v1 = v0[2];
  v2 = v0[4];
  v18[3] = v0[3];
  v19[0] = v2;
  *(v19 + 9) = *(v0 + 73);
  v3 = v0[1];
  v18[0] = *v0;
  v18[1] = v3;
  v18[2] = v1;
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_468FC();
  v5 = sub_D4D80();
  v7 = v6;

  v8 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v16 = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:&v16];

  v11 = v16;
  if (v10)
  {
    sub_D6980();
    sub_26628(v5, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v5, v7);

    v16 = 0u;
    v17 = 0u;
  }

  v14[0] = v16;
  v14[1] = v17;
  if (!*(&v17 + 1))
  {
    return 0;
  }

  sub_26430(v14, &v13);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E740()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 32);
  v19[3] = *(v0 + 48);
  v19[4] = v1;
  v19[5] = v2;
  v4 = *(v0 + 16);
  v19[0] = *v0;
  v20 = *(v0 + 96);
  v19[1] = v4;
  v19[2] = v3;
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_468A8();
  v6 = sub_D4D80();
  v8 = v7;

  v9 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v17 = 0;
  v11 = [v9 JSONObjectWithData:isa options:4 error:&v17];

  v12 = v17;
  if (v11)
  {
    sub_D6980();
    sub_26628(v6, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = v12;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v6, v8);

    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  if (!*(&v18 + 1))
  {
    return 0;
  }

  sub_26430(v15, &v14);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E944()
{
  v1 = v0[2];
  v2 = v0[4];
  v18[3] = v0[3];
  v19[0] = v2;
  *(v19 + 9) = *(v0 + 73);
  v3 = v0[1];
  v18[0] = *v0;
  v18[1] = v3;
  v18[2] = v1;
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_46830();
  v5 = sub_D4D80();
  v7 = v6;

  v8 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v16 = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:&v16];

  v11 = v16;
  if (v10)
  {
    sub_D6980();
    sub_26628(v5, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v5, v7);

    v16 = 0u;
    v17 = 0u;
  }

  v14[0] = v16;
  v14[1] = v17;
  if (!*(&v17 + 1))
  {
    return 0;
  }

  sub_26430(v14, &v13);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3EB44()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);
  v18[3] = *(v0 + 48);
  v18[4] = v2;
  v3 = *(v0 + 16);
  v18[0] = *v0;
  v19 = *(v0 + 80);
  v18[1] = v3;
  v18[2] = v1;
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_316F4();
  v5 = sub_D4D80();
  v7 = v6;

  v8 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v16 = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:&v16];

  v11 = v16;
  if (v10)
  {
    sub_D6980();
    sub_26628(v5, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v5, v7);

    v16 = 0u;
    v17 = 0u;
  }

  v14[0] = v16;
  v14[1] = v17;
  if (!*(&v17 + 1))
  {
    return 0;
  }

  sub_26430(v14, &v13);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3ED44()
{
  v1 = v0[1];
  v17[0] = *v0;
  v2 = v0[2];
  v17[1] = v1;
  v17[2] = v2;
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  sub_467DC();
  v4 = sub_D4D80();
  v6 = v5;

  v7 = objc_opt_self();
  isa = sub_D4F30().super.isa;
  *&v15 = 0;
  v9 = [v7 JSONObjectWithData:isa options:4 error:&v15];

  v10 = v15;
  if (v9)
  {
    sub_D6980();
    sub_26628(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    sub_D4EA0();

    swift_willThrow();
    sub_26628(v4, v6);

    v15 = 0u;
    v16 = 0u;
  }

  v13[0] = v15;
  v13[1] = v16;
  if (!*(&v16 + 1))
  {
    return 0;
  }

  sub_26430(v13, &v12);
  sub_66D4(&qword_124170, &qword_DBD88);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3EF2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_3EFA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

__n128 sub_3F078@<Q0>(uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v6;
  *(a3 + 64) = v9;
  *(a3 + 80) = v10;
  *(a3 + 96) = v11;
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  *(a3 + 48) = v8;
  return result;
}

double sub_3F12C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_3F1B8()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v6 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_D5320();
  v8 = sub_D68A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "[Rules List] refresh started", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for MailRuleBatchRequest();
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest) = v10;

  *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v22[0] = 0;
  v22[1] = 0;

  sub_D5580();
  v11 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository + 24));
  v12 = *(*v11 + 16);
  v13 = *(*v11 + 24);
  v14 = objc_allocWithZone(type metadata accessor for MSRuleListAPIRequest(0));
  v15 = v12;
  v16 = v13;
  v17 = sub_3247C(v12, v16, 0, 0xF000000000000000);

  v18 = sub_1F444();
  v22[0] = v18;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_66D4(&qword_124138, &qword_DBC48);
  sub_109A8(&qword_124140, &qword_124138, &qword_DBC48, &protocol conformance descriptor for AnyPublisher<A, B>);
  v19 = sub_D55D0();

  v21 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher);
  *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher) = v19;
  if (v21)
  {

    sub_D54C0();
  }

  return result;
}

uint64_t sub_3F564()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v8 = &v34[-v7 - 8];
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v2, qword_137988);
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = v2;
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[Rules List] batch update started", v13, 2u);
    v2 = v33;
  }

  v14 = *(v3 + 8);
  v14(v8, v2);
  sub_3FB30();
  v15 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest);
  if (v15)
  {
    swift_beginAccess();
    v16 = *(v15 + 16);
    if (v16 >> 62)
    {
      if (sub_D6AB0())
      {
        goto LABEL_8;
      }
    }

    else if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_8:
      v17 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository + 24));
      v18 = *(*v17 + 16);
      v19 = *(*v17 + 24);
      v35[3] = type metadata accessor for MailRuleBatchRequest();
      v35[4] = sub_45F94(&qword_124158, type metadata accessor for MailRuleBatchRequest, &unk_E1CAC);
      v35[0] = v15;
      v20 = objc_allocWithZone(type metadata accessor for MSRuleBatchAPIRequest(0));
      sub_FBD4(v35, v34, &qword_121F30, &unk_DC820);
      swift_retain_n();
      v21 = v18;
      v22 = v19;
      v23 = sub_45CC0(v18, v22, v34, &qword_124178, &qword_DBD90, &qword_122470, &qword_DA5B8);

      sub_FC3C(v35, &qword_121F30, &unk_DC820);
      v24 = sub_1F730();

      v35[0] = v24;
      v25 = swift_allocObject();
      swift_weakInit();
      v26 = swift_allocObject();
      *(v26 + 16) = v15;
      *(v26 + 24) = v25;
      swift_allocObject();
      swift_weakInit();

      sub_66D4(&qword_124160, &qword_DBD80);
      sub_109A8(&qword_124168, &qword_124160, &qword_DBD80, &protocol conformance descriptor for AnyPublisher<A, B>);
      v27 = sub_D55D0();

      v28 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher);
      *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher) = v27;
      if (v28)
      {

        sub_D54C0();
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35[0]) = 0;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35[0]) = 0;

  sub_D5580();
  v10(v6, v9, v2);
  v30 = sub_D5320();
  v31 = sub_D68A0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "[Rules List] batch update skipped, batch request is empty", v32, 2u);
  }

  return (v14)(v6, v2);
}

void sub_3FB30()
{
  v25 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest;
  if (!*(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest))
  {
    return;
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v0;
  if (v2 != 1)
  {
    sub_D5570();

    if (v26 >> 62)
    {
      v3 = sub_D6AB0();
      if (v3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      if (v3)
      {
LABEL_19:
        v12 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v13 = sub_D6A20();
            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v12 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_33;
            }

            v13 = *(v26 + 8 * v12 + 32);

            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_29:
              __break(1u);
              break;
            }
          }

          if (*(v13 + 120))
          {
            sub_D6A40();
            sub_D6A70();
            sub_D6A80();
            sub_D6A50();
          }

          else
          {
          }

          ++v12;
        }

        while (v14 != v3);
      }
    }

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      goto LABEL_54;
    }

    v15 = _swiftEmptyArrayStorage[2];
    if (!v15)
    {
LABEL_55:

      return;
    }

LABEL_40:
    v16 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v17 = sub_D6A20();
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v16 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_53;
        }

        v17 = _swiftEmptyArrayStorage[v16 + 4];

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v15 = sub_D6AB0();
          if (!v15)
          {
            goto LABEL_55;
          }

          goto LABEL_40;
        }
      }

      v19 = *(v1 + v25);
      if (v19)
      {
        v21 = v17[2];
        v20 = v17[3];
        v22 = v17[16];
        type metadata accessor for MailRuleBatchRequestUnit();
        v23 = swift_allocObject();
        *(v23 + 16) = 1;
        *(v23 + 24) = v21;
        *(v23 + 32) = v20;
        *(v23 + 40) = v22;
        *(v23 + 48) = 0;
        swift_beginAccess();

        sub_D6790();
        if (*(&dword_10 + (*(v19 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v19 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_D67B0();
        }

        sub_D67D0();
        swift_endAccess();

        v1 = v24;
      }

      else
      {
      }

      ++v16;
      if (v18 == v15)
      {
        goto LABEL_55;
      }
    }
  }

  sub_D5570();

  v3 = v26;
  if (v26 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D6AB0())
  {
    v5 = 0;
    v6 = 10000;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_D6A20();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      if (v5 == 0x346DC5D638865)
      {
        break;
      }

      v8 = *(v1 + v25);
      if (v8)
      {
        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        type metadata accessor for MailRuleBatchRequestUnit();
        v11 = swift_allocObject();
        *(v11 + 16) = 1;
        *(v11 + 24) = v10;
        *(v11 + 32) = v9;
        *(v11 + 40) = v6;
        *(v11 + 48) = 0;
        swift_beginAccess();

        sub_D6790();
        if (*(&dword_10 + (*(v8 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v8 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_D67B0();
        }

        sub_D67D0();
        swift_endAccess();

        v1 = v24;
      }

      else
      {
      }

      ++v5;
      v6 += 10000;
      if (i == v5)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:
}

uint64_t sub_40004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 16);
    v40 = *a1;
    v41 = v13;
    v43 = *(a1 + 32);
    v42 = *(a1 + 40);
    v39 = *(a1 + 24);
    v14 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
    if (sub_3DB5C())
    {
      v15 = sub_D6550();
      v17 = v16;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v18 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v11, v18, v4);

      v19 = sub_D5320();
      v20 = sub_D68B0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = v15;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38 = v12;
        v24 = v23;
        v47 = v23;
        *v22 = 136642819;
        v25 = sub_558F0(v21, v17, &v47);

        *(v22 + 4) = v25;
        v14 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
        _os_log_impl(&dword_0, v19, v20, "[Rules List] params: %{sensitive}s", v22, 0xCu);
        sub_67D4(v24);
        v12 = v38;
      }

      else
      {
      }

      (*(v5 + 8))(v11, v4);
    }

    if (v14[91].isa != -1)
    {
      swift_once();
    }

    v26 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v26, v4);

    v27 = sub_D5320();
    v28 = sub_D68B0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v12;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53[0] = v31;
      *v30 = 136315138;
      v47 = v40;
      v48 = v29;
      v49 = v41;
      v50 = v39 & 1;
      v51 = v43;
      v52 = v42 & 1;
      sub_6780();
      v32 = sub_D6C60();
      v34 = sub_558F0(v32, v33, v53);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v27, v28, "[Rules List] batch update failed: %s", v30, 0xCu);
      sub_67D4(v31);

      v12 = v29;
    }

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v47 = v40;
      v48 = v12;
      v49 = v41;
      v50 = v39 & 1;
      v51 = v43;
      v52 = v42 & 1;
      sub_6780();
      v35 = sub_D6C60();
      v37 = v36;
      swift_getKeyPath();
      swift_getKeyPath();
      v45 = v35;
      v46 = v37;
      return sub_D5580();
    }
  }

  return result;
}

uint64_t sub_404FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v8 = sub_6610(v2, qword_137988);
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_D5320();
    v10 = sub_D68A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "[Rules List] batch update successful", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
    sub_3F1B8();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v14) = 0;

    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v14) = 0;

    sub_D5580();
    v12 = *(v7 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate);

    v12(v13);

    swift_getKeyPath();
    swift_getKeyPath();
    v14 = xmmword_DBAE0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_407A8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  if (v9)
  {
    v10 = *a1;
    v28 = a1[2];
    v29 = v10;
    v11 = a1[4];
    v30 = *(a1 + 40);
    v27 = *(a1 + 6);
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v12 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_D5320();
    v14 = sub_D68B0();

    v15 = os_log_type_enabled(v13, v14);
    v26 = v11;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v25[1] = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v39[0] = v18;
      *v17 = 136315138;
      v33 = v29;
      v34 = v9;
      v35 = v28;
      v36 = v27 & 1;
      v37 = v11;
      v38 = v30 & 1;
      sub_6780();
      v19 = sub_D6C60();
      v21 = sub_558F0(v19, v20, v39);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v13, v14, "[Rules List] refresh failed: %s", v17, 0xCu);
      sub_67D4(v18);
    }

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v33 = v29;
      v34 = v9;
      v35 = v28;
      v36 = v27 & 1;
      v37 = v26;
      v38 = v30 & 1;
      sub_6780();
      v22 = sub_D6C60();
      v24 = v23;
      swift_getKeyPath();
      swift_getKeyPath();
      v31 = v22;
      v32 = v24;
      return sub_D5580();
    }
  }

  return result;
}

uint64_t sub_40ACC(char **a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v9 = sub_6610(v3, qword_137988);
    (*(v4 + 16))(v6, v9, v3);
    v10 = sub_D5320();
    v11 = sub_D68A0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "[Rules List] refresh successful", v12, 2u);
    }

    (*(v4 + 8))(v6, v3);
    sub_40CDC(v7);
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = xmmword_DBAE0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_40CDC(char *a1)
{
  v6[0] = a1;
  v6[1] = &_swiftEmptySetSingleton;

  sub_44720(v6);
  v2 = sub_3D5E0(v6[0]);

  swift_getKeyPath();
  swift_getKeyPath();
  v6[0] = v2;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v6[0] >> 62)
  {
    v3 = sub_D6AB0();
  }

  else
  {
    v3 = *(&dword_10 + (v6[0] & 0xFFFFFFFFFFFFFF8));
  }

  v4 = v3 < *(v1 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_maxRuleCountAllowed);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v6[0]) = v4;

  sub_D5580();
}

uint64_t sub_40E7C(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  swift_bridgeObjectRetain_n();
  v4 = sub_82A1C(v3, v2);
  if (v4 == 7)
  {
    goto LABEL_2;
  }

  v6 = v4;
  v8 = a1[2];
  v7 = a1[3];

  v9 = sub_82A68(v8, v7);
  if (v9 <= 2)
  {
    v56 = v3;
    v57 = v2;
    v12 = "PTION.DESCRIPTOR.TOORCC";
    if (v9 != 1)
    {
      v12 = "PTION.DESCRIPTOR.TO";
    }

    if (v9)
    {
      v10 = 0xD000000000000023;
    }

    else
    {
      v10 = 0xD000000000000025;
    }

    if (v9)
    {
      v11 = v12;
    }

    else
    {
      v11 = "PTION.DESCRIPTOR.CC";
    }
  }

  else if (v9 > 4)
  {
    if (v9 != 5)
    {
LABEL_2:

      return 0;
    }

    v56 = v3;
    v57 = v2;
    v11 = "nged";
    v10 = 0xD000000000000027;
  }

  else
  {
    v56 = v3;
    v57 = v2;
    if (v9 == 3)
    {
      v10 = 0xD000000000000027;
    }

    else
    {
      v10 = 0xD000000000000028;
    }

    if (v9 == 3)
    {
      v11 = "PTION.DESCRIPTOR.SUBJECT";
    }

    else
    {
      v11 = "PTION.ACTION.MOVETOFOLDER";
    }
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass:ObjCClassFromMetadata];
  v64._object = (v11 | 0x8000000000000000);
  v64._countAndFlagsBits = v10;
  sub_D66D0(v64);
  v65._countAndFlagsBits = 2777980912;
  v65._object = 0xA400000000000000;
  sub_D66D0(v65);
  v76._countAndFlagsBits = 2777980912;
  v51._countAndFlagsBits = 0xE000000000000000;
  v66._object = (v11 | 0x8000000000000000);
  v66._countAndFlagsBits = v10;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v16.super.isa = v15;
  v76._object = 0xA400000000000000;
  sub_D4E80(v66, v73, v16, v76, 0, v51);

  v17 = 0xD000000000000029;
  v18 = "PTION.ACTION.MOVETOTRASH";
  v19 = v6;
  v20 = "MAILBOX.DISPLAYNAME.TRASH";
  v21 = 0xD000000000000033;
  if (v6 != 5)
  {
    v21 = 0xD000000000000031;
    v20 = "PTION.DESCRIPTOR.LISTID";
  }

  v22 = "ETOFOLDERANDMARKREAD";
  v23 = 0xD000000000000025;
  if (v6 != 3)
  {
    v23 = 0xD000000000000034;
    v22 = "ETOTRASHANDMARKREAD";
  }

  if (v6 <= 4u)
  {
    v21 = v23;
    v20 = v22;
  }

  v24 = "PTION.ACTION.FORWARDTO";
  v25 = 0xD000000000000028;
  if (v6 != 1)
  {
    v25 = 0xD000000000000026;
    v24 = "PTION.ACTION.MARKREAD";
  }

  if (v6)
  {
    v17 = v25;
    v18 = v24;
  }

  if (v6 <= 2u)
  {
    v26 = v17;
  }

  else
  {
    v26 = v21;
  }

  if (v19 <= 2)
  {
    v27 = v18;
  }

  else
  {
    v27 = v20;
  }

  v54 = v14;
  v55 = ObjCClassFromMetadata;
  v28 = [v14 bundleForClass:ObjCClassFromMetadata];
  v67._object = (v27 | 0x8000000000000000);
  v67._countAndFlagsBits = v26;
  sub_D66D0(v67);
  v68._countAndFlagsBits = 2777980912;
  v68._object = 0xA400000000000000;
  sub_D66D0(v68);
  v77._countAndFlagsBits = 2777980912;
  v52._countAndFlagsBits = 0xE000000000000000;
  v69._object = (v27 | 0x8000000000000000);
  v69._countAndFlagsBits = v26;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v29.super.isa = v28;
  v77._object = 0xA400000000000000;
  v30 = sub_D4E80(v69, v74, v29, v77, 0, v52);
  v32 = v31;

  v33 = sub_DFAC();
  sub_D6960();

  swift_arrayDestroy();
  sub_D6960();

  v58 = v30;
  v59 = v32;
  v53._object = v33;
  sub_D6960();

  v34 = a1[8];
  v35 = a1[9];
  if (!v35 || ((v35 & 0x2000000000000000) != 0 ? (v36 = HIBYTE(v35) & 0xF) : (v36 = v34 & 0xFFFFFFFFFFFFLL), , v36))
  {

    goto LABEL_43;
  }

  v42 = sub_82A1C(v56, v57);
  v43 = v42;
  if (v42 > 3u)
  {
    p_type = (&stru_11EFF0 + 16);
    if (v42 > 5u && v42 != 6)
    {
LABEL_43:
      sub_D54F0();
      if (v59 == 1)
      {
        v37 = 0;
        v38 = 0;
      }

      else
      {

        v37 = v60;
        v38 = v61;
      }

      sub_461BC(v30, v59, v60, v61, v62, v63);
      sub_D54F0();
      if (v59 == 1)
      {
        v39 = 0;
        v40 = 0;
      }

      else
      {

        v39 = v62;
        v40 = v63;
      }

      sub_461BC(v58, v59, v60, v61, v62, v63);
      sub_46210(v34, v35, v37, v38, v39, v40);

      goto LABEL_50;
    }
  }

  else
  {
    p_type = &stru_11EFF0.type;
    if (v42 <= 1u && v42)
    {

LABEL_60:
      v47 = v54;
      v46 = v55;
LABEL_67:

      v49 = [v47 p_type[387]];
      v70._object = 0x80000000000E7CF0;
      v70._countAndFlagsBits = 0xD000000000000019;
      sub_D66D0(v70);
      v71._countAndFlagsBits = 2777980912;
      v71._object = 0xA400000000000000;
      sub_D66D0(v71);
      v78._countAndFlagsBits = 2777980912;
      v53._countAndFlagsBits = 0xE000000000000000;
      v72._object = 0x80000000000E7CF0;
      v72._countAndFlagsBits = 0xD000000000000019;
      v75.value._countAndFlagsBits = 0;
      v75.value._object = 0;
      v50.super.isa = v49;
      v78._object = 0xA400000000000000;
      sub_D4E80(v72, v75, v50, v78, 0, v53);

      goto LABEL_50;
    }
  }

  v45 = sub_D6C20();

  if (v45)
  {
    goto LABEL_60;
  }

  v48 = v43;
  if (v43 <= 2u)
  {
    v47 = v54;
    v46 = v55;
  }

  else if (v43 > 4u)
  {
    v47 = v54;
    v46 = v55;
    if (v48 == 5)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v47 = v54;
    v46 = v55;
  }

  if (sub_D6C20())
  {
    goto LABEL_67;
  }

LABEL_50:
  v41 = sub_D6960();

  return v41;
}

uint64_t sub_41738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = sub_D5120();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D5140();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_66D4(&qword_124180, &qword_DBE28);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v43 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag;
  if (*(v3 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_reSequeceFlag))
  {
LABEL_53:
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = sub_D5560();
    sub_66D4(&qword_123F18, &qword_DBB00);
    sub_109A8(&qword_1241A0, &qword_123F18, &qword_DBB00, &protocol conformance descriptor for [A]);
    sub_D65A0();
    v41(v50, 0);
  }

  v15 = *(v9 + 16);
  v42 = a1;
  v15(v11, a1, v8);
  sub_45F94(&qword_124188, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_D6720();
  sub_45F94(&qword_124190, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v16 = 0;
  v45 = v8;
  v46 = (v6 + 8);
  v49 = a2;
  v44 = a2 - 1;
  v17 = &unk_DBC50;
  while (1)
  {
    v18 = v47;
    sub_D6830();
    sub_45F94(&qword_124198, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v19 = v48;
    v20 = sub_D65B0();
    (*v46)(v18, v19);
    if (v20)
    {
      sub_FC3C(v14, &qword_124180, &qword_DBE28);
      goto LABEL_53;
    }

    v21 = sub_D6850();
    v23 = *v22;
    v21(v50, 0);
    sub_D6840();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if (v50[0] >> 62)
    {
      v24 = sub_D6AB0();
    }

    else
    {
      v24 = *(&dword_10 + (v50[0] & 0xFFFFFFFFFFFFFF8));
    }

    v25 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    if (v24 <= v49)
    {
      sub_D5570();

      if (v50[0] >> 62)
      {
        v32 = sub_D6AB0();
      }

      else
      {
        v32 = *(&dword_10 + (v50[0] & 0xFFFFFFFFFFFFFF8));
      }

      v33 = __OFSUB__(v32, 1);
      v34 = v32 - 1;
      if (v33)
      {
        goto LABEL_58;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      if ((v50[0] & 0xC000000000000001) != 0)
      {
        v35 = sub_D6A20();
      }

      else
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v34 >= *(&dword_10 + (v50[0] & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_61;
        }

        v35 = *(v50[0] + 8 * v34 + 32);
      }

      v36 = *(v35 + 112);

      v16 = v36 + 10000;
      if (__OFADD__(v36, 10000))
      {
        goto LABEL_60;
      }

      goto LABEL_34;
    }

    if (v49 > 0)
    {
      sub_D5570();

      if ((v50[0] & 0xC000000000000001) != 0)
      {
        v27 = sub_D6A20();
      }

      else
      {
        if (*(&dword_10 + (v50[0] & 0xFFFFFFFFFFFFFF8)) < v49)
        {
          goto LABEL_62;
        }

        v27 = *(v50[0] + 8 * v44 + 32);
      }

      v28 = *(v27 + 112);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      if ((v50[0] & 0xC000000000000001) != 0)
      {
        v29 = sub_D6A20();
      }

      else
      {
        if (*(&dword_10 + (v50[0] & 0xFFFFFFFFFFFFFF8)) <= v49)
        {
          goto LABEL_64;
        }

        v29 = *(v50[0] + 8 * v49 + 32);
      }

      v30 = *(v29 + 112);

      v31 = v30 - v28;
      if (__OFSUB__(v30, v28))
      {
        goto LABEL_63;
      }

      if (v31 <= 1)
      {
        *(v3 + v43) = 1;
      }

      else
      {
        v16 = v28 + (v31 >> 1);
        if (__OFADD__(v28, v31 >> 1))
        {
          goto LABEL_66;
        }
      }

LABEL_34:
      v17 = v25;
      goto LABEL_35;
    }

    sub_D5570();

    if ((v50[0] & 0xC000000000000001) != 0)
    {
      v37 = sub_D6A20();
    }

    else
    {
      if (!*(&dword_10 + (v50[0] & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_65;
      }

      v37 = *(v50[0] + 32);
    }

    v38 = *(v37 + 112);

    v16 = v38 / 2;
LABEL_35:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if ((v50[0] & 0xC000000000000001) != 0)
    {
      v39 = sub_D6A20();
      goto LABEL_39;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v23 >= *(&dword_10 + (v50[0] & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_55;
    }

    v39 = *(v50[0] + 8 * v23 + 32);

LABEL_39:

    *(v39 + 128) = v16;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if ((v50[0] & 0xC000000000000001) != 0)
    {
      v40 = sub_D6A20();
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v23 >= *(&dword_10 + (v50[0] & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_57;
      }

      v40 = *(v50[0] + 8 * v23 + 32);
    }

    *(v40 + 120) = 1;
  }

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
  __break(1u);
LABEL_60:
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
  __break(1u);
  return result;
}

uint64_t sub_42044(uint64_t a1)
{
  v54 = a1;
  v1 = sub_D5140();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v49 = v2;
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v3, qword_137988);
  v10 = *(v4 + 16);
  v10(v8, v9, v3);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[Rules List] delete single rule started", v13, 2u);
  }

  v14 = *(v4 + 8);
  v14(v8, v3);
  v15 = sub_D5130();
  if ((v16 & 1) == 0)
  {
    v17 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v18 = v71 >> 62 ? sub_D6AB0() : *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));

    if (v17 < v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      if ((v71 & 0xC000000000000001) != 0)
      {
        v20 = sub_D6A20();
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v17 >= *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_28;
        }

        v20 = *(v71 + 8 * v17 + 32);
      }

      v21 = *(v20 + 80);
      v67 = *(v20 + 64);
      v68 = v21;
      v69 = *(v20 + 96);
      v70 = *(v20 + 112);
      v22 = *(v20 + 32);
      v64 = *(v20 + 16);
      v65 = v22;
      v66 = *(v20 + 48);
      sub_26A60(&v64, &v57);

      v75 = v68;
      v76 = v69;
      v77 = v70;
      v71 = v64;
      v72 = v65;
      v73 = v66;
      v74 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      v61 = v75;
      v62 = v76;
      v63 = v77;
      v57 = v71;
      v58 = v72;
      v59 = v73;
      v60 = v74;

      sub_D5580();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      if ((v57 & 0xC000000000000001) == 0)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          if (v17 < *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
          {
            v23 = *(v57 + 8 * v17 + 32);

            goto LABEL_17;
          }

LABEL_29:
          __break(1u);
          return result;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_26:
      v23 = sub_D6A20();
LABEL_17:

      v24 = *(v23 + 16);
      v25 = *(v23 + 24);

      v26 = sub_6648((v55 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository), *(v55 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository + 24));
      v27 = *(*v26 + 16);
      v28 = *(*v26 + 24);
      *(&v58 + 1) = &type metadata for DeleteMailRuleRequest;
      *&v59 = sub_45FE4();
      *&v57 = v24;
      *(&v57 + 1) = v25;
      v29 = objc_allocWithZone(type metadata accessor for MSRuleDeleteAPI(0));
      sub_FBD4(&v57, v56, &qword_121F30, &unk_DC820);

      v30 = v27;
      v31 = v28;
      v32 = sub_45CC0(v27, v31, v56, &qword_1241B8, &qword_DBE78, &qword_1224A0, &qword_DA5D8);

      sub_FC3C(&v57, &qword_121F30, &unk_DC820);
      v33 = sub_1EB80();

      *&v57 = v33;
      v34 = swift_allocObject();
      v35 = v55;
      swift_weakInit();
      v36 = swift_allocObject();
      v36[2] = v34;
      v36[3] = v24;
      v36[4] = v25;
      v37 = swift_allocObject();
      swift_weakInit();
      v39 = v50;
      v38 = v51;
      v40 = v52;
      (*(v51 + 16))(v50, v54, v52);
      v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = v37;
      (*(v38 + 32))(v42 + v41, v39, v40);
      sub_66D4(&qword_121F38, &qword_D9CA0);
      sub_109A8(&qword_121F40, &qword_121F38, &qword_D9CA0, &protocol conformance descriptor for AnyPublisher<A, B>);
      v43 = sub_D55D0();

      v44 = *(v35 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher);
      *(v35 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_refreshPublisher) = v43;
      if (v44)
      {

        sub_D54C0();
      }

      return result;
    }
  }

  v45 = v53;
  v10(v53, v9, v3);
  v46 = sub_D5320();
  v47 = sub_D68B0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "[Rules List] delete single rule skipped, index out of bounds", v48, 2u);
  }

  return (v14)(v45, v3);
}

uint64_t sub_42864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_D5340();
  v49 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 24);
  v51 = *(a1 + 16);
  v48 = v13;
  v14 = *(a1 + 32);
  LODWORD(a1) = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (v11)
    {
      v18 = sub_3DD6C(a3, a4);
      v19 = v49;
      v47 = v14;
      v46 = a1;
      if (v18)
      {
        v45 = sub_D6550();
        v21 = v20;

        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v22 = sub_6610(v6, qword_137988);
        (*(v19 + 16))(v10, v22, v6);

        v23 = sub_D5320();
        v24 = sub_D68B0();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v44 = v12;
          v26 = v25;
          v27 = swift_slowAlloc();
          *&v53 = v27;
          *v26 = 136642819;
          v28 = sub_558F0(v45, v21, &v53);

          *(v26 + 4) = v28;
          _os_log_impl(&dword_0, v23, v24, "[Rules List] params: %{sensitive}s", v26, 0xCu);
          sub_67D4(v27);
          v19 = v49;

          v12 = v44;
        }

        else
        {
        }

        (*(v19 + 8))(v10, v6);
        v14 = v47;
        LOBYTE(a1) = v46;
      }

      v49 = v17;
      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v32 = sub_6610(v6, qword_137988);
      v33 = v50;
      (*(v19 + 16))(v50, v32, v6);

      v34 = sub_D5320();
      v35 = sub_D68B0();

      if (os_log_type_enabled(v34, v35))
      {
        a1 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v52 = v36;
        *&v53 = v12;
        *a1 = 136315138;
        *(&v53 + 1) = v11;
        *&v54 = v51;
        v45 = v11;
        v37 = v48;
        BYTE8(v54) = v48 & 1;
        *&v55 = v47;
        BYTE8(v55) = v46 & 1;
        sub_6780();
        v38 = sub_D6C60();
        v40 = v12;
        v41 = sub_558F0(v38, v39, &v52);
        v42 = v37;
        v11 = v45;

        *(a1 + 4) = v41;
        v12 = v40;
        _os_log_impl(&dword_0, v34, v35, "[Rules List] delete single rule failed: %s", a1, 0xCu);
        sub_67D4(v36);
        v14 = v47;

        LOBYTE(a1) = v46;

        (*(v19 + 8))(v50, v6);
      }

      else
      {

        (*(v19 + 8))(v33, v6);
        v42 = v48;
      }

      v30 = v42 & 1;
      v31 = a1 & 1;
      v29 = v51;
    }

    else
    {
      v12 = 0;
      v29 = 0;
      v30 = 0;
      v14 = 0;
      v31 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v53 = v12;
    *(&v53 + 1) = v11;
    *&v54 = v29;
    *(&v54 + 1) = v30;
    *&v55 = v14;
    BYTE8(v55) = v31;

    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_42E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Rules List] delete single rule successful", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = sub_D5560();
    sub_66D4(&qword_123F18, &qword_DBB00);
    sub_109A8(&qword_1241A0, &qword_123F18, &qword_DBB00, &protocol conformance descriptor for [A]);
    sub_109A8(&qword_1241A8, &qword_123F18, &qword_DBB00, &protocol conformance descriptor for [A]);
    sub_D6860();
    v13(v19, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if (v19[0] >> 62)
    {
      v14 = sub_D6AB0();
    }

    else
    {
      v14 = *(&dword_10 + (v19[0] & 0xFFFFFFFFFFFFFF8));
    }

    v15 = v14 < *(v12 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_maxRuleCountAllowed);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v19[0]) = v15;

    sub_D5580();
    v16 = *(v12 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_onUpdate);

    v16(v17);
  }

  return result;
}

uint64_t sub_431EC(uint64_t a1)
{
  v2 = sub_D5120();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D5140();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_66D4(&qword_124180, &qword_DBE28);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = *(v7 + 16);
  v27 = a1;
  v13(v9, a1, v6);
  sub_45F94(&qword_124188, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_D6720();
  v28 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest;
  sub_45F94(&qword_124190, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v29 = (v3 + 8);
  while (1)
  {
    sub_D6830();
    sub_45F94(&qword_124198, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v14 = sub_D65B0();
    (*v29)(v5, v2);
    if (v14)
    {
      break;
    }

    v15 = sub_D6850();
    v17 = *v16;
    v15(v31, 0);
    sub_D6840();
    v18 = *(v30 + v28);
    if (v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_D5570();

      if ((v31[0] & 0xC000000000000001) != 0)
      {
        v19 = sub_D6A20();
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (v17 >= *(&dword_10 + (v31[0] & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v19 = *(v31[0] + 8 * v17 + 32);
      }

      v21 = *(v19 + 16);
      v20 = *(v19 + 24);

      type metadata accessor for MailRuleBatchRequestUnit();
      v22 = swift_allocObject();
      *(v22 + 16) = 2;
      *(v22 + 24) = v21;
      *(v22 + 32) = v20;
      *(v22 + 40) = 0;
      *(v22 + 48) = 1;
      swift_beginAccess();
      sub_D6790();
      if (*(&dword_10 + (*(v18 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v18 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_D67B0();
      }

      sub_D67D0();
      swift_endAccess();
    }
  }

  sub_FC3C(v12, &qword_124180, &qword_DBE28);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = sub_D5560();
  sub_66D4(&qword_123F18, &qword_DBB00);
  sub_109A8(&qword_1241A0, &qword_123F18, &qword_DBB00, &protocol conformance descriptor for [A]);
  sub_109A8(&qword_1241A8, &qword_123F18, &qword_DBB00, &protocol conformance descriptor for [A]);
  sub_D6860();
  v23(v31, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (!(v31[0] >> 62))
  {
    v24 = *(&dword_10 + (v31[0] & 0xFFFFFFFFFFFFFF8));
    goto LABEL_14;
  }

LABEL_17:
  v24 = sub_D6AB0();
LABEL_14:

  v25 = v24 < *(v30 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_maxRuleCountAllowed);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31[0]) = v25;

  return sub_D5580();
}

BOOL sub_43830()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_batchRequest);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
    if (v2 >> 62)
    {
      if (sub_D6AB0())
      {
        return 1;
      }
    }

    else if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v5 >> 62)
  {
    v4 = sub_D6AB0();
  }

  else
  {
    v4 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  return v4 != 0;
}

uint64_t sub_4393C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  v0 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));

  if (!v0)
  {
    return 10000;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if (v8 >> 62)
    {
      v1 = sub_D6AB0();
    }

    else
    {
      v1 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    }

    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if (v2)
    {
      __break(1u);
LABEL_18:
      v5 = sub_D6A20();
      goto LABEL_10;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_18;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v3 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_20;
    }

    v5 = *(v8 + 8 * v3 + 32);

LABEL_10:

    v6 = *(v5 + 128);

    result = v6 + 10000;
    if (!__OFADD__(v6, 10000))
    {
      return result;
    }

    __break(1u);
LABEL_13:
    v7 = sub_D6AB0();

    if (!v7)
    {
      return 10000;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_43B34()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__state;
  v2 = sub_66D4(&qword_124208, &unk_E1550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__rules;
  v4 = sub_66D4(&qword_124210, &qword_DBE90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__selectedRuleToEdit;
  v6 = sub_66D4(&qword_124218, &unk_E3CB0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__deleteDisabled;
  v9 = sub_66D4(&qword_121068, &qword_DBEE0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__moveDisabled, v9);
  v10(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__enableAddRule, v9);

  v7(v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__selectedRuleToDelete, v6);
  v11 = OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel__error;
  v12 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings11MSRulesView9ViewModel_repository));

  return v0;
}

uint64_t sub_43DC8()
{
  sub_43B34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s9ViewModelCMa_2(uint64_t a1)
{
  result = qword_123EF8;
  if (!qword_123EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43E74(uint64_t a1)
{
  sub_116AC(319, &qword_123F08, &type metadata for LoadingState);
  if (v1 <= 0x3F)
  {
    sub_6158(319, &qword_123F10, &qword_123F18, &qword_DBB00);
    if (v2 <= 0x3F)
    {
      sub_6158(319, &qword_123F20, &unk_123F28, &unk_E3CC0);
      if (v3 <= 0x3F)
      {
        sub_116AC(319, &qword_120ED8, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_440C4()
{

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_44174@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

double sub_44184@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_44208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_F298(v2, v3);

  return sub_D5580();
}

uint64_t sub_44294@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  return result;
}

uint64_t sub_44314(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_44390@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  return result;
}

uint64_t sub_44410(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

__n128 sub_44484@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v5;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_44544(__int128 *a1, uint64_t *a2)
{
  v3 = a1[5];
  v18[4] = a1[4];
  v18[5] = v3;
  v19 = *(a1 + 12);
  v4 = a1[1];
  v18[0] = *a1;
  v18[1] = v4;
  v5 = a1[3];
  v18[2] = a1[2];
  v18[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v15 = a1[4];
  v16 = v6;
  v17 = *(a1 + 12);
  v7 = a1[1];
  v11 = *a1;
  v12 = v7;
  v8 = a1[3];
  v13 = a1[2];
  v14 = v8;
  sub_FBD4(v18, v10, &unk_123F28, &unk_E3CC0);

  return sub_D5580();
}

unint64_t sub_4461C(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_D66A0();
    v13[0] = sub_D6700();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

Swift::Int sub_44720(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_45BB0(v2);
  }

  v3 = *(v2 + 2);
  v36[0] = (v2 + 32);
  v36[1] = v3;
  result = sub_D6C00(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 13) >= *v12)
          {
            break;
          }

          v13 = v12 - 96;
          v14 = *(v12 + 8);
          v15 = *(v12 + 40);
          v30 = *(v12 + 24);
          v31 = v15;
          v29 = v14;
          v16 = *(v12 + 56);
          v17 = *(v12 + 72);
          v18 = *(v12 + 88);
          v35 = *(v12 + 13);
          v33 = v17;
          v34 = v18;
          v32 = v16;
          v19 = *(v12 - 4);
          *(v12 + 56) = *(v12 - 3);
          v20 = *(v12 - 1);
          *(v12 + 72) = *(v12 - 2);
          *(v12 + 88) = v20;
          *(v12 + 13) = *v12;
          v21 = *(v12 - 5);
          *(v12 + 8) = *(v12 - 6);
          *(v12 + 24) = v21;
          *(v12 + 40) = v19;
          v22 = v29;
          v23 = v31;
          *(v13 + 1) = v30;
          *(v13 + 2) = v23;
          *v13 = v22;
          v24 = v32;
          v25 = v33;
          v26 = v34;
          *v12 = v35;
          *(v13 + 4) = v25;
          *(v13 + 5) = v26;
          *(v13 + 3) = v24;
          v12 -= 104;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 104;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_D67C0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v29 = v7 + 4;
    *(&v29 + 1) = v6;
    sub_448DC(&v29, v28, v36, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_448DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_4517C(v7);
      v7 = result;
    }

    v83 = v7 + 2;
    v84 = v7[2];
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v7[2 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_44F04((*a3 + 104 * *v85), (*a3 + 104 * *v87), (*a3 + 104 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 104 * v6 + 96);
      v10 = 104 * v8;
      v11 = *a3 + 104 * v8;
      v12 = *(v11 + 96);
      v13 = v8 + 2;
      v14 = (v11 + 304);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 13;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 104 * v6 - 104;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v101 = *(v22 + v10 + 64);
            v103 = *(v22 + v10 + 80);
            v105 = *(v22 + v10 + 96);
            v93 = *(v22 + v10);
            v95 = *(v22 + v10 + 16);
            v97 = *(v22 + v10 + 32);
            v99 = *(v22 + v10 + 48);
            result = memmove((v22 + v10), (v22 + v18), 0x68uLL);
            *(v21 + 64) = v101;
            *(v21 + 80) = v103;
            *(v21 + 96) = v105;
            *v21 = v93;
            *(v21 + 16) = v95;
            *(v21 + 32) = v97;
            *(v21 + 48) = v99;
          }

          ++v20;
          v18 -= 104;
          v10 += 104;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_45190(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v36 = v7[2];
    v35 = v7[3];
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_45190((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v37;
    v38 = v7 + 4;
    v39 = &v7[2 * v36 + 4];
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = v7[4];
          v42 = v7[5];
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = &v7[2 * v37];
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = &v38[2 * v40];
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = &v7[2 * v37];
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v38[2 * v40];
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = &v38[2 * v40 - 2];
        v79 = *v78;
        v80 = &v38[2 * v40];
        v81 = v80[1];
        sub_44F04((*a3 + 104 * *v78), (*a3 + 104 * *v80), (*a3 + 104 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > v7[2])
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = v7[2];
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove(&v38[2 * v40], v80 + 2, 16 * (v82 - 1 - v40));
        v7[2] = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = &v38[2 * v37];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = &v7[2 * v37];
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = &v38[2 * v40];
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 104 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 96) >= *(v27 - 8))
    {
LABEL_29:
      ++v6;
      v24 += 104;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 104;
    v102 = *(v27 + 64);
    v104 = *(v27 + 80);
    v106 = *(v27 + 96);
    v94 = *v27;
    v96 = *(v27 + 16);
    v98 = *(v27 + 32);
    v100 = *(v27 + 48);
    v29 = *(v27 - 88);
    *v27 = *(v27 - 104);
    *(v27 + 16) = v29;
    v30 = *(v27 - 72);
    v31 = *(v27 - 56);
    v32 = *(v27 - 40);
    v33 = *(v27 - 24);
    *(v27 + 96) = *(v27 - 8);
    *(v27 + 64) = v32;
    *(v27 + 80) = v33;
    *(v27 + 32) = v30;
    *(v27 + 48) = v31;
    *(v28 + 64) = v102;
    *(v28 + 80) = v104;
    *(v28 + 96) = v106;
    *v28 = v94;
    *(v28 + 16) = v96;
    v27 -= 104;
    *(v28 + 32) = v98;
    *(v28 + 48) = v100;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_44F04(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[104 * v9] <= a4)
    {
      memmove(a4, __dst, 104 * v9);
    }

    v12 = &v4[104 * v9];
    if (v8 < 104)
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

      if (*(v6 + 12) < *(v4 + 12))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 104;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 104;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 104;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x68uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[104 * v11] <= a4)
  {
    memmove(a4, __src, 104 * v11);
  }

  v12 = &v4[104 * v11];
  if (v10 >= 104 && v6 > v7)
  {
LABEL_20:
    v5 -= 104;
    do
    {
      v15 = v5 + 104;
      if (*(v12 - 1) < *(v6 - 1))
      {
        v17 = v6 - 104;
        if (v15 != v6)
        {
          memmove(v5, v6 - 104, 0x68uLL);
        }

        if (v12 <= v4 || (v6 -= 104, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 104);
      if (v15 != v12)
      {
        memmove(v5, v12 - 104, 0x68uLL);
      }

      v5 -= 104;
      v12 -= 104;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 104;
  if (v6 != v4 || v6 >= &v4[104 * v18])
  {
    memmove(v6, v4, 104 * v18);
  }

  return 1;
}

char *sub_45190(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_124150, &qword_DBCE8);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_45294(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_D6CB0();
  sub_D6680();
  v8 = sub_D6CE0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_D6C20() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_45644(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_453E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_66D4(&qword_124148, &qword_DBCE0);
  result = sub_D69F0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_D6CB0();
      sub_D6680();
      result = sub_D6CE0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_45644(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_453E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_457C4();
      goto LABEL_16;
    }

    sub_45920(v8 + 1);
  }

  v10 = *v4;
  sub_D6CB0();
  sub_D6680();
  result = sub_D6CE0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_D6C20();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_D6C40();
  __break(1u);
  return result;
}

void *sub_457C4()
{
  v1 = v0;
  sub_66D4(&qword_124148, &qword_DBCE0);
  v2 = *v0;
  v3 = sub_D69E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

  return result;
}

uint64_t sub_45920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_66D4(&qword_124148, &qword_DBCE0);
  result = sub_D69F0();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_D6CB0();

      sub_D6680();
      result = sub_D6CE0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_45B58(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_D6C20() & 1;
  }
}

uint64_t sub_45BE8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return String.subscript.getter();
}

uint64_t sub_45C34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_45CC0(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v31 = a5;
  v30 = a4;
  v8 = v7;
  v32 = a3;
  v33 = a2;
  v10 = sub_D5060();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_126728;
  *&v8[qword_126728] = 0;
  v15 = &v8[qword_126738];
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 40) = -1;
  *&v8[qword_126740] = 5;
  *&v8[qword_126748] = 0x3FF0000000000000;
  *&v8[qword_126750] = 0x403E000000000000;
  *&v8[qword_126758] = 0;
  v16 = &v8[qword_126760];
  sub_D5050();
  v17 = sub_D5040();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  *v16 = v17;
  v16[1] = v19;
  v20 = *&v8[v14];
  *&v8[v14] = a1;
  v21 = v32;
  v22 = a1;

  v23 = v33;
  *&v8[qword_126730] = v33;
  sub_FBD4(v21, &v36, &qword_121F30, &unk_DC820);
  if (v37)
  {
    sub_38BDC(&v36, v40);
    sub_38BDC(v40, &v36);
    v38 = 0;
    swift_beginAccess();
    v24 = v23;
    sub_324E8(&v36, v15, v30, v31);
    swift_endAccess();
  }

  else
  {
    v25 = v23;
    sub_FC3C(&v36, &qword_121F30, &unk_DC820);
  }

  v26 = sub_66D4(v34, v35);
  v39.receiver = v8;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, "init");
  sub_FC3C(v21, &qword_121F30, &unk_DC820);
  return v27;
}

uint64_t sub_45F34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_45F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_45FE4()
{
  result = qword_1241B0;
  if (!qword_1241B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241B0);
  }

  return result;
}

uint64_t sub_46038()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_46084()
{
  v1 = sub_D5140();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_46148(uint64_t a1)
{
  v3 = *(sub_D5140() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_42E30(a1, v4, v5);
}

void sub_461BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_46210(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v9 = a1;

    return v9;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    a3 = 0xD000000000000010;
    v7 = 0x80000000000E6D30;
  }

  if (a3 != a1 || v7 != a2)
  {
    v14 = sub_D6C20();

    if (v14)
    {
      goto LABEL_15;
    }

    if (a6)
    {
      v20 = a5;
    }

    else
    {
      v20 = 0x73654D20746E6553;
    }

    if (a6)
    {
      v21 = a6;
    }

    else
    {
      v21 = 0xED00007365676173;
    }

    if (v20 == a1 && v21 == a2)
    {

LABEL_27:
      v23 = "MAILBOX.DISPLAYNAME.JUNK";
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
LABEL_28:
      v17 = v25;
      v41._object = (v23 | 0x8000000000000000);
      v41._countAndFlagsBits = 0xD000000000000018;
      sub_D66D0(v41);
      v42._countAndFlagsBits = 2777980912;
      v42._object = 0xA400000000000000;
      sub_D66D0(v42);
      v18._countAndFlagsBits = 2777980912;
      v37._countAndFlagsBits = 0xE000000000000000;
      v19._object = (v23 | 0x8000000000000000);
      v19._countAndFlagsBits = 0xD000000000000018;
      goto LABEL_29;
    }

    v22 = sub_D6C20();

    if (v22)
    {
      goto LABEL_27;
    }

    if (a1 == 1802401098 && a2 == 0xE400000000000000 || (sub_D6C20() & 1) != 0)
    {
      v23 = "MAILBOX.DISPLAYNAME.ARCH";
      type metadata accessor for MAPreferencesViewProvider();
      v28 = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass:v28];
      goto LABEL_28;
    }

    if (a1 == 0x65766968637241 && a2 == 0xE700000000000000 || (sub_D6C20() & 1) != 0)
    {
      v23 = "MAILBOX.DISPLAYNAME.DRAFTS";
      type metadata accessor for MAPreferencesViewProvider();
      v29 = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass:v29];
      goto LABEL_28;
    }

    if (a1 == 0x737466617244 && a2 == 0xE600000000000000 || (v30 = sub_D6C20(), (v30 & 1) != 0))
    {
      v15 = "PTION.DESCRIPTOR.FROM";
      type metadata accessor for MAPreferencesViewProvider();
      v31 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:v31];
      v43._countAndFlagsBits = 0xD00000000000001ALL;
      v43._object = 0x80000000000E7F40;
      sub_D66D0(v43);
      v44._countAndFlagsBits = 2777980912;
      v44._object = 0xA400000000000000;
      sub_D66D0(v44);
      v18._countAndFlagsBits = 2777980912;
      v37._countAndFlagsBits = 0xE000000000000000;
      v19._countAndFlagsBits = 0xD00000000000001ALL;
      goto LABEL_16;
    }

    v38[0] = 47;
    v38[1] = 0xE100000000000000;
    __chkstk_darwin(v30);
    v37._countAndFlagsBits = v38;
    sub_4461C(sub_46784, &v36, v32, v33);
    if (v34)
    {

      return a1;
    }

    v35 = sub_D66B0();

    sub_45BE8(v35, a1, a2);

    v9 = sub_D6670();

    return v9;
  }

LABEL_15:
  v15 = "WARDTOANDMARKREAD";
  type metadata accessor for MAPreferencesViewProvider();
  v16 = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:v16];
  v39._countAndFlagsBits = 0xD000000000000019;
  v39._object = 0x80000000000E7CF0;
  sub_D66D0(v39);
  v40._countAndFlagsBits = 2777980912;
  v40._object = 0xA400000000000000;
  sub_D66D0(v40);
  v18._countAndFlagsBits = 2777980912;
  v37._countAndFlagsBits = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000019;
LABEL_16:
  v19._object = (v15 | 0x8000000000000000);
LABEL_29:
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v26.super.isa = v17;
  v18._object = 0xA400000000000000;
  v27 = sub_D4E80(v19, v45, v26, v18, 0, v37);

  return v27;
}

uint64_t sub_46784(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_D6C20() & 1;
  }
}

unint64_t sub_467DC()
{
  result = qword_1241C0;
  if (!qword_1241C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241C0);
  }

  return result;
}

unint64_t sub_46830()
{
  result = qword_1241C8;
  if (!qword_1241C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241C8);
  }

  return result;
}

unint64_t sub_468A8()
{
  result = qword_1241D8;
  if (!qword_1241D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241D8);
  }

  return result;
}

unint64_t sub_468FC()
{
  result = qword_1241E0;
  if (!qword_1241E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241E0);
  }

  return result;
}

unint64_t sub_46974()
{
  result = qword_1241F0;
  if (!qword_1241F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241F0);
  }

  return result;
}

unint64_t sub_469C8()
{
  result = qword_1241F8;
  if (!qword_1241F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1241F8);
  }

  return result;
}

unint64_t sub_46A1C()
{
  result = qword_124200;
  if (!qword_124200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124200);
  }

  return result;
}

unint64_t sub_46A70()
{
  result = qword_124228;
  if (!qword_124228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124228);
  }

  return result;
}

uint64_t sub_46AC4(_OWORD *a1, uint64_t a2)
{
  sub_2A5C4(a2, v19);
  v3 = sub_38BFC(v19, v19[3]);
  __chkstk_darwin(v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for MSRepositoryDefault();
  v18[3] = v8;
  v18[4] = &off_1188F0;
  v18[0] = v7;
  _s11descr112711V9ViewModelCMa(0);
  v9 = swift_allocObject();
  v10 = sub_38BFC(v18, v8);
  __chkstk_darwin(v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12);
  v14 = *v12;
  sub_15C4C(a1, v17);
  v15 = sub_4A4FC(a1, v14, v9);
  sub_67D4(v18);
  sub_67D4(v19);
  return v15;
}

uint64_t sub_46CA0@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = sub_66D4(&qword_1242E0, &qword_DBF38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = sub_66D4(&qword_1242E8, &qword_DBF40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v17 = v1;
  sub_66D4(&qword_1242F0, &qword_DBF48);
  sub_4AB04();
  sub_D5E60();
  v10 = sub_109A8(&qword_124310, &qword_1242E0, &qword_DBF38, &protocol conformance descriptor for List<A, B>);
  sub_D5F90();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for MSMailImportDetailView(0);
  _s11descr112711V9ViewModelCMa(0);
  sub_4AA88();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v23[0] = v20;
  v23[1] = v21;
  v24[0] = v22[0];
  *(v24 + 9) = *(v22 + 9);
  v11 = v21;

  sub_3C4F8(v23);
  v20 = v11;
  v18 = v2;
  v19 = v10;
  swift_getOpaqueTypeConformance2();
  sub_DFAC();
  v12 = v16;
  sub_D6040();

  (*(v7 + 8))(v9, v6);
  result = sub_66D4(&qword_124318, &unk_DBFA8);
  v14 = (v12 + *(result + 36));
  *v14 = sub_4A36C;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  return result;
}

uint64_t sub_47004(uint64_t a1)
{
  sub_4A044();
  sub_D5B60();
  sub_D5F40();
  sub_66D4(&qword_124308, &unk_DBF50);
  sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_109A8(&qword_124300, &qword_124308, &unk_DBF50, &protocol conformance descriptor for TupleView<A>);
  sub_4ABC8();
  return sub_D63A0();
}

uint64_t sub_47120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v114 = sub_66D4(&qword_124320, &qword_DBFB8);
  __chkstk_darwin(v114);
  v4 = &v102 - v3;
  v5 = type metadata accessor for MSMailImportDetailView(0);
  v106 = *(v5 - 8);
  __chkstk_darwin(v5);
  v107 = v6;
  v108 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_66D4(&qword_121380, &qword_D9040);
  __chkstk_darwin(v7 - 8);
  v9 = &v102 - v8;
  v123 = sub_66D4(&qword_121280, &unk_D8E40);
  __chkstk_darwin(v123);
  v122 = &v102 - v10;
  v113 = sub_66D4(&qword_124328, &qword_DBFC0);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v102 - v11;
  v12 = sub_66D4(&qword_124330, &qword_DBFC8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v102 - v16;
  v17 = sub_66D4(&qword_124338, &qword_DBFD0);
  v18 = __chkstk_darwin(v17 - 8);
  v117 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v102 - v20;
  *v21 = sub_D5B40();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = *(sub_66D4(&qword_124340, &qword_DBFD8) + 44);
  v116 = v21;
  sub_48514(a1, &v21[v22]);
  v109 = v5;
  v23 = *(v5 + 20);
  v110 = a1;
  v24 = a1 + v23;
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  v27 = _s11descr112711V9ViewModelCMa(0);
  sub_4AA88();
  v115 = v25;
  LODWORD(v121) = v26;
  v120 = v27;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v133[0] = v124;
  v133[1] = v125;
  *v134 = v126[0];
  *&v134[9] = *(v126 + 9);
  sub_3C4F8(v133);
  if (v134[0] <= 3u && !v134[0])
  {

LABEL_5:
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = objc_opt_self();
    v31 = [v30 bundleForClass:ObjCClassFromMetadata];
    v124._countAndFlagsBits = 2777980912;
    v124._object = 0xA400000000000000;
    v105 = v15;
    v104 = v4;
    v135._countAndFlagsBits = 0x504D495F504F5453;
    v135._object = 0xEB0000000054524FLL;
    sub_D66D0(v135);
    v136._countAndFlagsBits = 2777980912;
    v136._object = 0xA400000000000000;
    sub_D66D0(v136);
    v99._countAndFlagsBits = 0xE000000000000000;
    v137._countAndFlagsBits = 0x504D495F504F5453;
    v137._object = 0xEB0000000054524FLL;
    v147.value._countAndFlagsBits = 0;
    v147.value._object = 0;
    v32.super.isa = v31;
    v33 = sub_D4E80(v137, v147, v32, v124, 0, v99);
    v35 = v34;

    v124._countAndFlagsBits = v33;
    v124._object = v35;
    sub_D5640();
    v36 = sub_D5660();
    (*(*(v36 - 8) + 56))(v9, 0, 1, v36);
    v37 = v110;
    v38 = v108;
    sub_4AD34(v110, v108);
    v39 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v40 = swift_allocObject();
    sub_4AD9C(v38, v40 + v39);
    v108 = sub_DFAC();
    v41 = v122;
    sub_D6270();
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    countAndFlagsBits = v124._countAndFlagsBits;
    KeyPath = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = countAndFlagsBits;
    v45 = &v41[*(v123 + 36)];
    *v45 = KeyPath;
    v45[1] = sub_10ACC;
    v45[2] = v44;
    v46 = [v30 bundleForClass:ObjCClassFromMetadata];
    v124._countAndFlagsBits = 2777980912;
    v124._object = 0xA400000000000000;
    v138._object = 0x80000000000E8010;
    v138._countAndFlagsBits = 0xD00000000000001ELL;
    sub_D66D0(v138);
    v139._countAndFlagsBits = 2777980912;
    v139._object = 0xA400000000000000;
    sub_D66D0(v139);
    v100._countAndFlagsBits = 0xE000000000000000;
    v140._object = 0x80000000000E8010;
    v140._countAndFlagsBits = 0xD00000000000001ELL;
    v148.value._countAndFlagsBits = 0;
    v148.value._object = 0;
    v47.super.isa = v46;
    v48 = sub_D4E80(v140, v148, v47, v124, 0, v100);
    v50 = v49;

    *&v131[0] = v48;
    *(&v131[0] + 1) = v50;
    v51 = v37 + *(v109 + 24);
    v52 = *v51;
    v53 = *(v51 + 8);
    LOBYTE(v129) = v52;
    v130 = v53;
    sub_66D4(&qword_121378, &qword_DA7F0);
    v54 = sub_D6230();
    v121 = &v102;
    v55 = __chkstk_darwin(v54);
    __chkstk_darwin(v55);
    v120 = sub_66D4(&qword_124358, &qword_DC078);
    v56 = sub_EB50();
    v57 = sub_109A8(&qword_124360, &qword_124358, &qword_DC078, &protocol conformance descriptor for TupleView<A>);
    v58 = v108;
    v59 = v123;
    v60 = v111;
    v61 = v122;
    sub_D6060();

    sub_FC3C(v61, &qword_121280, &unk_D8E40);
    v62 = v112;
    v63 = v113;
    (*(v112 + 16))(v104, v60, v113);
    goto LABEL_8;
  }

  v28 = sub_D6C20();

  if (v28)
  {
    goto LABEL_5;
  }

  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v131[0] = v124;
  v131[1] = v125;
  *v132 = v126[0];
  *&v132[9] = *(v126 + 9);
  sub_3C4F8(v131);
  if (v132[0] < 2u)
  {
    v93 = sub_66D4(&qword_124348, &qword_DBFE0);
    v91 = v118;
    (*(*(v93 - 8) + 56))(v118, 1, 1, v93);
    goto LABEL_10;
  }

  type metadata accessor for MAPreferencesViewProvider();
  v64 = swift_getObjCClassFromMetadata();
  v103 = v64;
  v65 = objc_opt_self();
  v66 = [v65 bundleForClass:v64];
  v105 = v15;
  v124._countAndFlagsBits = 2777980912;
  v124._object = 0xA400000000000000;
  v141._countAndFlagsBits = 0x495F45564F4D4552;
  v141._object = 0xED000054524F504DLL;
  sub_D66D0(v141);
  v142._countAndFlagsBits = 2777980912;
  v142._object = 0xA400000000000000;
  sub_D66D0(v142);
  v104 = v4;
  v99._countAndFlagsBits = 0xE000000000000000;
  v143._countAndFlagsBits = 0x495F45564F4D4552;
  v143._object = 0xED000054524F504DLL;
  v149.value._countAndFlagsBits = 0;
  v149.value._object = 0;
  v67.super.isa = v66;
  v68 = sub_D4E80(v143, v149, v67, v124, 0, v99);
  v70 = v69;

  v124._countAndFlagsBits = v68;
  v124._object = v70;
  sub_D5640();
  v71 = sub_D5660();
  (*(*(v71 - 8) + 56))(v9, 0, 1, v71);
  v72 = v110;
  v73 = v108;
  sub_4AD34(v110, v108);
  v74 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v75 = swift_allocObject();
  sub_4AD9C(v73, v75 + v74);
  v108 = sub_DFAC();
  v76 = v122;
  sub_D6270();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  LOBYTE(v64) = v124._countAndFlagsBits;
  v77 = swift_getKeyPath();
  v78 = swift_allocObject();
  *(v78 + 16) = v64;
  v79 = &v76[*(v123 + 36)];
  *v79 = v77;
  v79[1] = sub_F0D0;
  v79[2] = v78;
  v80 = [v65 bundleForClass:v103];
  v124._countAndFlagsBits = 2777980912;
  v124._object = 0xA400000000000000;
  v144._countAndFlagsBits = 0xD000000000000020;
  v144._object = 0x80000000000E7FE0;
  sub_D66D0(v144);
  v145._countAndFlagsBits = 2777980912;
  v145._object = 0xA400000000000000;
  sub_D66D0(v145);
  v101._countAndFlagsBits = 0xE000000000000000;
  v146._countAndFlagsBits = 0xD000000000000020;
  v146._object = 0x80000000000E7FE0;
  v150.value._countAndFlagsBits = 0;
  v150.value._object = 0;
  v81.super.isa = v80;
  v82 = sub_D4E80(v146, v150, v81, v124, 0, v101);
  v84 = v83;

  v129 = v82;
  v130 = v84;
  v85 = v72 + *(v109 + 28);
  v86 = *v85;
  v87 = *(v85 + 8);
  v127 = v86;
  v128 = v87;
  sub_66D4(&qword_121378, &qword_DA7F0);
  v88 = sub_D6230();
  v121 = &v102;
  v89 = __chkstk_darwin(v88);
  __chkstk_darwin(v89);
  v120 = sub_66D4(&qword_124358, &qword_DC078);
  v56 = sub_EB50();
  v57 = sub_109A8(&qword_124360, &qword_124358, &qword_DC078, &protocol conformance descriptor for TupleView<A>);
  v58 = v108;
  v59 = v123;
  v60 = v111;
  v90 = v122;
  sub_D6060();

  sub_FC3C(v90, &qword_121280, &unk_D8E40);
  v62 = v112;
  v63 = v113;
  (*(v112 + 16))(v104, v60, v113);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  v124._countAndFlagsBits = v59;
  v124._object = &type metadata for String;
  *&v125 = v120;
  *(&v125 + 1) = &type metadata for Text;
  *&v126[0] = v56;
  *(&v126[0] + 1) = v58;
  *&v126[1] = v57;
  v15 = v105;
  *(&v126[1] + 1) = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v91 = v118;
  sub_D5BF0();
  (*(v62 + 8))(v60, v63);
  v92 = sub_66D4(&qword_124348, &qword_DBFE0);
  (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
LABEL_10:
  v94 = v116;
  v95 = v117;
  sub_FBD4(v116, v117, &qword_124338, &qword_DBFD0);
  sub_4AC5C(v91, v15);
  v96 = v119;
  sub_FBD4(v95, v119, &qword_124338, &qword_DBFD0);
  v97 = sub_66D4(&qword_124350, &unk_DBFE8);
  sub_4AC5C(v15, v96 + *(v97 + 48));
  sub_4ACCC(v91);
  sub_FC3C(v94, &qword_124338, &qword_DBFD0);
  sub_4ACCC(v15);
  return sub_FC3C(v95, &qword_124338, &qword_DBFD0);
}

uint64_t sub_48514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_66D4(&qword_122218, &qword_DA1B0);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v61 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v55 - v7;
  v9 = (a1 + *(type metadata accessor for MSMailImportDetailView(0) + 20));
  v10 = v9[1];
  v58 = *v9;
  v57 = v10;
  v56 = *(v9 + 16);
  v55 = _s11descr112711V9ViewModelCMa(0);
  sub_4AA88();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v65[0] = v67;
  v65[1] = v68;
  v66[0] = *v69;
  *(v66 + 9) = *&v69[9];
  v11 = v68;

  sub_3C4F8(v65);
  v67 = v11;
  v59 = sub_DFAC();
  v12 = sub_D5F50();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = &v8[*(v4 + 44)];
  v21 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v22 = enum case for Text.TruncationMode.tail(_:);
  v23 = sub_D5EF0();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v8 = v12;
  *(v8 + 1) = v14;
  v8[16] = v16 & 1;
  *(v8 + 3) = v18;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 1;
  v8[48] = 0;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v67 = v62;
  v68 = v63;
  *v69 = v64[0];
  *&v69[9] = *(v64 + 9);
  sub_3C4F8(&v67);
  v24 = v69[0];
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (v24 == 1)
  {
    v27 = "IMPORT_STATUS_COMPLETED";
  }

  else
  {
    if (v24)
    {
      *&v62 = 2777980912;
      *(&v62 + 1) = 0xA400000000000000;
      v72._object = 0x80000000000E7380;
      v72._countAndFlagsBits = 0xD000000000000014;
      sub_D66D0(v72);
      v73._countAndFlagsBits = 2777980912;
      v73._object = 0xA400000000000000;
      sub_D66D0(v73);
      v30 = *(&v62 + 1);
      v29._countAndFlagsBits = v62;
      v54._countAndFlagsBits = 0xE000000000000000;
      v31._object = 0x80000000000E7380;
      v31._countAndFlagsBits = 0xD000000000000014;
      goto LABEL_7;
    }

    v27 = "IMPORT_STATUS_IMPORTING";
  }

  v28 = v27 - 32;
  *&v62 = 2777980912;
  *(&v62 + 1) = 0xA400000000000000;
  v70._object = ((v27 - 32) | 0x8000000000000000);
  v70._countAndFlagsBits = 0xD000000000000017;
  sub_D66D0(v70);
  v71._countAndFlagsBits = 2777980912;
  v71._object = 0xA400000000000000;
  sub_D66D0(v71);
  v30 = *(&v62 + 1);
  v29._countAndFlagsBits = v62;
  v54._countAndFlagsBits = 0xE000000000000000;
  v31._object = (v28 | 0x8000000000000000);
  v31._countAndFlagsBits = 0xD000000000000017;
LABEL_7:
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v32.super.isa = v26;
  v29._object = v30;
  v33 = sub_D4E80(v31, v74, v32, v29, 0, v54);
  v35 = v34;

  *&v62 = v33;
  *(&v62 + 1) = v35;
  v36 = sub_D5F50();
  v38 = v37;
  v40 = v39;
  sub_D61B0();
  v41 = sub_D5F00();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_F16C(v36, v38, v40 & 1);

  v48 = v61;
  sub_FBD4(v8, v61, &qword_122218, &qword_DA1B0);
  v49 = v60;
  sub_FBD4(v48, v60, &qword_122218, &qword_DA1B0);
  v50 = sub_66D4(&qword_124370, &qword_DC0F8);
  v51 = v49 + *(v50 + 48);
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = v49 + *(v50 + 64);
  *v52 = v41;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45 & 1;
  *(v52 + 24) = v47;
  sub_166E0(v41, v43, v45 & 1);

  sub_FC3C(v8, &qword_122218, &qword_DA1B0);
  sub_F16C(v41, v43, v45 & 1);

  return sub_FC3C(v48, &qword_122218, &qword_DA1B0);
}

uint64_t sub_48B10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a1;
  v53 = a2;
  v2 = type metadata accessor for MSMailImportDetailView(0);
  v48 = *(v2 - 8);
  v55 = *(v48 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_121380, &qword_D9040);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_66D4(&qword_121178, &qword_DB0C0);
  v52 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v45 - v12;
  v13 = __chkstk_darwin(v11);
  v49 = &v45 - v14;
  __chkstk_darwin(v13);
  v54 = &v45 - v15;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v58._countAndFlagsBits = 0xD000000000000013;
  v58._object = 0x80000000000E8060;
  sub_D66D0(v58);
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  sub_D66D0(v59);
  v43._countAndFlagsBits = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD000000000000013;
  v60._object = 0x80000000000E8060;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v19.super.isa = v18;
  v20 = sub_D4E80(v60, v64, v19, v57, 0, v43);
  v22 = v21;

  v57._countAndFlagsBits = v20;
  v57._object = v22;
  sub_D5640();
  v23 = sub_D5660();
  v24 = *(v23 - 8);
  v46 = *(v24 + 56);
  v47 = v24 + 56;
  v46(v7, 0, 1, v23);
  sub_4AD34(v56, v4);
  v25 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v26 = swift_allocObject();
  sub_4AD9C(v4, v26 + v25);
  v48 = sub_DFAC();
  sub_D6270();
  v27 = [v17 bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v61._object = 0x80000000000E8080;
  v61._countAndFlagsBits = 0xD000000000000012;
  sub_D66D0(v61);
  v62._countAndFlagsBits = 2777980912;
  v62._object = 0xA400000000000000;
  sub_D66D0(v62);
  v44._countAndFlagsBits = 0xE000000000000000;
  v63._object = 0x80000000000E8080;
  v63._countAndFlagsBits = 0xD000000000000012;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v28.super.isa = v27;
  v29 = sub_D4E80(v63, v65, v28, v57, 0, v44);
  v31 = v30;

  v57._countAndFlagsBits = v29;
  v57._object = v31;
  sub_D5650();
  v46(v7, 0, 1, v23);
  sub_4AD34(v56, v4);
  v32 = swift_allocObject();
  sub_4AD9C(v4, v32 + v25);
  v33 = v49;
  sub_D6270();
  v34 = v52;
  v35 = *(v52 + 16);
  v36 = v50;
  v37 = v54;
  v35(v50, v54, v8);
  v38 = v51;
  v35(v51, v33, v8);
  v39 = v53;
  v35(v53, v36, v8);
  v40 = sub_66D4(&qword_124368, &unk_DC080);
  v35(&v39[*(v40 + 48)], v38, v8);
  v41 = *(v34 + 8);
  v41(v33, v8);
  v41(v37, v8);
  v41(v38, v8);
  return (v41)(v36, v8);
}

uint64_t sub_490D4(uint64_t a1)
{
  v2 = type metadata accessor for MSMailImportDetailView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = (a1 + *(v3 + 32));
  v7 = *v6;
  v8 = *(v6 + 1);
  v12[16] = v7;
  v13 = v8;
  v12[15] = 0;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6220();
  _s11descr112711V9ViewModelCMa(0);
  sub_4AA88();
  sub_D5740();
  sub_4AD34(a1, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AD9C(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  sub_3B5C8(sub_4AF94, v10);
}

uint64_t sub_4926C(uint64_t a1, char a2)
{
  type metadata accessor for MSMailImportDetailView(0);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_492E0@<X0>(uint64_t a2@<X8>)
{
  sub_66D4(&qword_121390, &qword_D9050);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_D8CB0;
  type metadata accessor for MSMailImportDetailView(0);
  _s11descr112711V9ViewModelCMa(0);
  sub_4AA88();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v15[0] = v12;
  v15[1] = v13;
  v16[0] = *v14;
  *(v16 + 9) = *&v14[9];

  sub_3C4F8(v15);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_F7DC();
  *(v3 + 32) = v13;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17._object = 0x80000000000E8030;
  v17._countAndFlagsBits = 0xD000000000000020;
  sub_D66D0(v17);
  v18._countAndFlagsBits = 2777980912;
  v18._object = 0xA400000000000000;
  sub_D66D0(v18);
  v21._countAndFlagsBits = 2777980912;
  v11._countAndFlagsBits = 0xE000000000000000;
  v19._object = 0x80000000000E8030;
  v19._countAndFlagsBits = 0xD000000000000020;
  v20.value._countAndFlagsBits = 0;
  v20.value._object = 0;
  v6.super.isa = v5;
  v21._object = 0xA400000000000000;
  sub_D4E80(v19, v20, v6, v21, 0, v11);

  sub_D6610();

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_49530@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a1;
  v53 = a2;
  v2 = type metadata accessor for MSMailImportDetailView(0);
  v48 = *(v2 - 8);
  v55 = *(v48 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_121380, &qword_D9040);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_66D4(&qword_121178, &qword_DB0C0);
  v52 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v45 - v12;
  v13 = __chkstk_darwin(v11);
  v49 = &v45 - v14;
  __chkstk_darwin(v13);
  v54 = &v45 - v15;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v58._countAndFlagsBits = 0xD000000000000015;
  v58._object = 0x80000000000E80D0;
  sub_D66D0(v58);
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  sub_D66D0(v59);
  v43._countAndFlagsBits = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD000000000000015;
  v60._object = 0x80000000000E80D0;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v19.super.isa = v18;
  v20 = sub_D4E80(v60, v64, v19, v57, 0, v43);
  v22 = v21;

  v57._countAndFlagsBits = v20;
  v57._object = v22;
  sub_D5640();
  v23 = sub_D5660();
  v24 = *(v23 - 8);
  v46 = *(v24 + 56);
  v47 = v24 + 56;
  v46(v7, 0, 1, v23);
  sub_4AD34(v56, v4);
  v25 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v26 = swift_allocObject();
  sub_4AD9C(v4, v26 + v25);
  v48 = sub_DFAC();
  sub_D6270();
  v27 = [v17 bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v61._object = 0x80000000000E80F0;
  v61._countAndFlagsBits = 0xD000000000000014;
  sub_D66D0(v61);
  v62._countAndFlagsBits = 2777980912;
  v62._object = 0xA400000000000000;
  sub_D66D0(v62);
  v44._countAndFlagsBits = 0xE000000000000000;
  v63._object = 0x80000000000E80F0;
  v63._countAndFlagsBits = 0xD000000000000014;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v28.super.isa = v27;
  v29 = sub_D4E80(v63, v65, v28, v57, 0, v44);
  v31 = v30;

  v57._countAndFlagsBits = v29;
  v57._object = v31;
  sub_D5650();
  v46(v7, 0, 1, v23);
  sub_4AD34(v56, v4);
  v32 = swift_allocObject();
  sub_4AD9C(v4, v32 + v25);
  v33 = v49;
  sub_D6270();
  v34 = v52;
  v35 = *(v52 + 16);
  v36 = v50;
  v37 = v54;
  v35(v50, v54, v8);
  v38 = v51;
  v35(v51, v33, v8);
  v39 = v53;
  v35(v53, v36, v8);
  v40 = sub_66D4(&qword_124368, &unk_DC080);
  v35(&v39[*(v40 + 48)], v38, v8);
  v41 = *(v34 + 8);
  v41(v33, v8);
  v41(v37, v8);
  v41(v38, v8);
  return (v41)(v36, v8);
}

uint64_t sub_49AF4(uint64_t a1)
{
  v2 = type metadata accessor for MSMailImportDetailView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = (a1 + *(v3 + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v12[16] = v7;
  v13 = v8;
  v12[15] = 0;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6220();
  _s11descr112711V9ViewModelCMa(0);
  sub_4AA88();
  sub_D5740();
  sub_4AD34(a1, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AD9C(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  sub_3B604(sub_4B300, v10);
}

uint64_t sub_49C8C(uint64_t a1)
{
  v2 = sub_D57E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MSMailImportDetailView(0);
  (*(a1 + *(v6 + 32)))();
  sub_EC34(v5);
  sub_D57D0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_49D80(uint64_t a1, char a2)
{
  type metadata accessor for MSMailImportDetailView(0);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_49DF4@<X0>(uint64_t a2@<X8>)
{
  sub_66D4(&qword_121390, &qword_D9050);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_D8CB0;
  type metadata accessor for MSMailImportDetailView(0);
  _s11descr112711V9ViewModelCMa(0);
  sub_4AA88();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v15[0] = v12;
  v15[1] = v13;
  v16[0] = *v14;
  *(v16 + 9) = *&v14[9];

  sub_3C4F8(v15);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_F7DC();
  *(v3 + 32) = v13;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17._object = 0x80000000000E80A0;
  v17._countAndFlagsBits = 0xD000000000000022;
  sub_D66D0(v17);
  v18._countAndFlagsBits = 2777980912;
  v18._object = 0xA400000000000000;
  sub_D66D0(v18);
  v21._countAndFlagsBits = 2777980912;
  v11._countAndFlagsBits = 0xE000000000000000;
  v19._object = 0x80000000000E80A0;
  v19._countAndFlagsBits = 0xD000000000000022;
  v20.value._countAndFlagsBits = 0;
  v20.value._object = 0;
  v6.super.isa = v5;
  v21._object = 0xA400000000000000;
  sub_D4E80(v19, v20, v6, v21, 0, v11);

  sub_D6610();

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_4A044()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  v20._countAndFlagsBits = 0x4D5F54524F504D49;
  v20._object = 0xEF4C52555F4C4941;
  sub_D66D0(v20);
  v21._countAndFlagsBits = 2777980912;
  v21._object = 0xA400000000000000;
  sub_D66D0(v21);
  v36._countAndFlagsBits = 2777980912;
  v17._countAndFlagsBits = 0xE000000000000000;
  v22._countAndFlagsBits = 0x4D5F54524F504D49;
  v22._object = 0xEF4C52555F4C4941;
  v33.value._countAndFlagsBits = 0;
  v33.value._object = 0;
  v3.super.isa = v2;
  v36._object = 0xA400000000000000;
  v4 = sub_D4E80(v22, v33, v3, v36, 0, v17);
  v6 = v5;

  v7 = [v1 bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v23._object = 0xEA00000000004552;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v37._countAndFlagsBits = 2777980912;
  v18._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v25._object = 0xEA00000000004552;
  v34.value._countAndFlagsBits = 0;
  v34.value._object = 0;
  v8.super.isa = v7;
  v37._object = 0xA400000000000000;
  v9 = sub_D4E80(v25, v34, v8, v37, 0, v18);
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_D66D0(v26);

  v27._countAndFlagsBits = 10333;
  v27._object = 0xE200000000000000;
  sub_D66D0(v27);
  v28._countAndFlagsBits = v4;
  v28._object = v6;
  sub_D66D0(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_D66D0(v29);
  v12 = [v1 bundleForClass:ObjCClassFromMetadata];
  v30._object = 0x80000000000E7FC0;
  v30._countAndFlagsBits = 0xD000000000000012;
  sub_D66D0(v30);
  v31._countAndFlagsBits = 2777980912;
  v31._object = 0xA400000000000000;
  sub_D66D0(v31);
  v38._countAndFlagsBits = 2777980912;
  v19._countAndFlagsBits = 0xE000000000000000;
  v32._object = 0x80000000000E7FC0;
  v32._countAndFlagsBits = 0xD000000000000012;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v13.super.isa = v12;
  v38._object = 0xA400000000000000;
  sub_D4E80(v32, v35, v13, v38, 0, v19);

  sub_66D4(&qword_121390, &qword_D9050);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_D8CB0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_F7DC();
  *(v14 + 32) = 91;
  *(v14 + 40) = 0xE100000000000000;
  v15 = sub_D6610();

  return v15;
}

uint64_t sub_4A36C()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v4 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_D5320();
  v6 = sub_D68A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[Mail Import Detail] page viewed", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_4A4FC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121070, &qword_DAFE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-v8];
  v10 = sub_66D4(&qword_121068, &qword_DBEE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-v12];
  v20 = type metadata accessor for MSRepositoryDefault();
  v21 = &off_1188F0;
  *&v19 = a2;
  v14 = OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel__isDeleting;
  v18[0] = 0;
  sub_D5530();
  (*(v11 + 32))(a3 + v14, v13, v10);
  v15 = OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel__error;
  memset(v18, 0, 41);
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  sub_D5530();
  (*(v7 + 32))(a3 + v15, v9, v6);
  *(a3 + OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v16 = a1[1];
  *v18 = *a1;
  *&v18[16] = v16;
  *&v18[32] = a1[2];
  *&v18[41] = *(a1 + 41);
  sub_D5530();
  swift_endAccess();
  sub_38BDC(&v19, a3 + OBJC_IVAR____TtCV18icloudMailSettings22MSMailImportDetailView9ViewModel_repository);
  return a3;
}

uint64_t sub_4A784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_4A860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MSMailImportDetailView(uint64_t a1)
{
  result = qword_124288;
  if (!qword_124288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4A970(uint64_t a1)
{
  sub_6C10(319);
  if (v1 <= 0x3F)
  {
    sub_4AA24(319);
    if (v2 <= 0x3F)
    {
      sub_39788();
      if (v3 <= 0x3F)
      {
        sub_6CFC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4AA24(uint64_t a1)
{
  if (!qword_124298)
  {
    _s11descr112711V9ViewModelCMa(255);
    sub_4AA88();
    v1 = sub_D5760();
    if (!v2)
    {
      atomic_store(v1, &qword_124298);
    }
  }
}

unint64_t sub_4AA88()
{
  result = qword_1242A0;
  if (!qword_1242A0)
  {
    _s11descr112711V9ViewModelCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1242A0);
  }

  return result;
}

unint64_t sub_4AB04()
{
  result = qword_1242F8;
  if (!qword_1242F8)
  {
    sub_6110(&qword_1242F0, &qword_DBF48);
    sub_109A8(&qword_124300, &qword_124308, &unk_DBF50, &protocol conformance descriptor for TupleView<A>);
    sub_4ABC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1242F8);
  }

  return result;
}

unint64_t sub_4ABC8()
{
  result = qword_121300;
  if (!qword_121300)
  {
    sub_6110(&qword_1212E8, &qword_D8F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121300);
  }

  return result;
}

uint64_t sub_4AC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_124330, &qword_DBFC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4ACCC(uint64_t a1)
{
  v2 = sub_66D4(&qword_124330, &qword_DBFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4AD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSMailImportDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4AD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSMailImportDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4AF04(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MSMailImportDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_4B020()
{
  v1 = type metadata accessor for MSMailImportDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D57E0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_E0C4(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_4B18C()
{
  result = qword_124378;
  if (!qword_124378)
  {
    sub_6110(&qword_124318, &unk_DBFA8);
    sub_6110(&qword_1242E8, &qword_DBF40);
    sub_6110(&qword_1242E0, &qword_DBF38);
    sub_109A8(&qword_124310, &qword_1242E0, &qword_DBF38, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_DFAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124378);
  }

  return result;
}

void *URL.queryParameters.getter()
{
  v0 = sub_D4DF0();
  v51 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_66D4(&qword_124380, &qword_DC100);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_D4E40();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D4E20();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_4B7FC(v5);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_D4E10();
  if (!v10)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v41 = v9;
  v42 = v7;
  v43 = v6;
  v11 = v10;
  v50 = *(v10 + 16);
  if (!v50)
  {
    v13 = &_swiftEmptyDictionarySingleton;
LABEL_29:

    (*(v42 + 8))(v41, v43);
    return v13;
  }

  v12 = 0;
  v49 = v10 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v48 = v51 + 16;
  v46 = (v51 + 8);
  v13 = &_swiftEmptyDictionarySingleton;
  v47 = v2;
  v44 = v10;
  v45 = v0;
  while (v12 < *(v11 + 16))
  {
    (*(v51 + 16))(v2, v49 + *(v51 + 72) * v12, v0);
    v14 = sub_D4DD0();
    v16 = v15;
    v17 = sub_D4DE0();
    if (!v18)
    {
      v30 = sub_4BAD4(v14, v16);
      v32 = v31;

      if (v32)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v13;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_4C694();
          v13 = v52;
        }

        sub_4C4E4(v30, v13);
      }

      v2 = v47;
      (*v46)(v47, v0);
      goto LABEL_8;
    }

    v19 = v18;
    v20 = v17;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v13;
    v23 = sub_4BAD4(v14, v16);
    v24 = v13[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_32;
    }

    v27 = v22;
    if (v13[3] >= v26)
    {
      if (v21)
      {
        v2 = v47;
        if ((v22 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_4C694();
        v2 = v47;
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_4BCCC(v26, v21);
      v28 = sub_4BAD4(v14, v16);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_34;
      }

      v23 = v28;
      v2 = v47;
      if ((v27 & 1) == 0)
      {
LABEL_23:
        v13 = v52;
        v52[(v23 >> 6) + 8] |= 1 << v23;
        v35 = (v13[6] + 16 * v23);
        *v35 = v14;
        v35[1] = v16;
        v36 = (v13[7] + 16 * v23);
        *v36 = v20;
        v36[1] = v19;
        v0 = v45;
        (*v46)(v2, v45);
        v37 = v13[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_33;
        }

        v13[2] = v39;
        goto LABEL_25;
      }
    }

    v13 = v52;
    v34 = (v52[7] + 16 * v23);
    *v34 = v20;
    v34[1] = v19;

    v0 = v45;
    (*v46)(v2, v45);
LABEL_25:
    v11 = v44;
LABEL_8:
    if (v50 == ++v12)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_D6C50();
  __break(1u);
  return result;
}

uint64_t sub_4B7FC(uint64_t a1)
{
  v2 = sub_66D4(&qword_124380, &qword_DC100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URL.baseUrl()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_D4E40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_66D4(&qword_124380, &qword_DC100);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  sub_D4E20();
  v9 = *(v3 + 48);
  if (!v9(v8, 1, v2))
  {
    v11 = sub_D4E00();
    if (*v10)
    {
      *v10 = _swiftEmptyArrayStorage;
    }

    v11(v14, 0);
  }

  if (v9(v8, 1, v2))
  {
    v12 = sub_D4F20();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_D4E30();
    (*(v3 + 8))(v5, v2);
  }

  return sub_4B7FC(v8);
}

unint64_t sub_4BA90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D69B0(*(v2 + 40));

  return sub_4BB4C(a1, v4);
}

unint64_t sub_4BAD4(uint64_t a1, uint64_t a2)
{
  sub_D6CB0();
  sub_D6680();
  v4 = sub_D6CE0();

  return sub_4BC14(a1, a2, v4);
}

unint64_t sub_4BB4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4C80C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_D69C0();
      sub_4C868(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_4BC14(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_D6C20())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_4BCCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_66D4(&qword_124388, qword_DC110);
  v37 = v4;
  result = sub_D6AD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_D6CB0();
      sub_D6680();
      result = sub_D6CE0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_4BF8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_66D4(&qword_122520, &qword_DA638);
  v34 = v4;
  result = sub_D6AD0();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_D6CB0();
      sub_D6680();
      result = sub_D6CE0();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_4C22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_66D4(&qword_1223F8, &qword_DA4F0);
  v33 = v4;
  result = sub_D6AD0();
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_26430(v24, v34);
      }

      else
      {
        sub_263D4(v24, v34);
      }

      sub_D6CB0();
      sub_D6680();
      result = sub_D6CE0();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_26430(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_4C4E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_D69A0() + 1) & ~v5;
    do
    {
      sub_D6CB0();

      sub_D6680();
      v9 = sub_D6CE0();

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

void *sub_4C694()
{
  v1 = v0;
  sub_66D4(&qword_124388, qword_DC110);
  v2 = *v0;
  v3 = sub_D6AC0();
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

void *sub_4C8BC()
{
  v1 = v0;
  sub_66D4(&qword_122520, &qword_DA638);
  v2 = *v0;
  v3 = sub_D6AC0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_4CA24()
{
  v1 = v0;
  sub_66D4(&qword_1223F8, &qword_DA4F0);
  v2 = *v0;
  v3 = sub_D6AC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_263D4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26430(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_4CBC8(uint64_t (*a1)(void), unint64_t a2)
{
  v3 = v2;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_4D9A0() & 1) == 0)
  {
    return a1(0);
  }

  v54 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v58) = 1;

  sub_D5580();
  if (qword_120E38 != -1)
  {
LABEL_25:
    swift_once();
  }

  v55 = a2;
  v10 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[Primary Address] update started", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v6 = v58;
  v53 = v59;
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v3;
  sub_D5570();

  a2 = 0;
  v9 = v58;
  v7 = *(v58 + 2);
  v14 = _swiftEmptyArrayStorage;
LABEL_6:
  v15 = 40 * a2;
  while (v7 != a2)
  {
    if (a2 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_25;
    }

    ++a2;
    v16 = v15 + 40;
    v17 = v9[v15 + 64];
    v15 += 40;
    if (v17)
    {
      v52 = v6;
      v18 = *&v9[v16 - 8];
      v19 = *&v9[v16];
      v21 = *&v9[v16 + 8];
      v20 = *&v9[v16 + 16];
      v22 = v9[v16 + 25];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v14;
      v50 = v21;
      v51 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_11BD0(0, *(v14 + 2) + 1, 1);
        v14 = v58;
      }

      v3 = *(v14 + 2);
      v24 = *(v14 + 3);
      if (v3 >= v24 >> 1)
      {
        sub_11BD0((v24 > 1), v3 + 1, 1);
        v14 = v58;
      }

      *(v14 + 2) = v3 + 1;
      v25 = &v14[40 * v3];
      v26 = v50;
      *(v25 + 4) = v51;
      *(v25 + 5) = v19;
      *(v25 + 6) = v26;
      *(v25 + 7) = v20;
      v25[64] = 1;
      v25[65] = v22;
      v6 = v52;
      goto LABEL_6;
    }
  }

  v28 = *(v14 + 2);
  if (v28)
  {
    v58 = _swiftEmptyArrayStorage;
    sub_11B90(0, v28, 0);
    v29 = v58;
    v30 = (v14 + 56);
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      v58 = v29;
      v34 = *(v29 + 2);
      v33 = *(v29 + 3);

      if (v34 >= v33 >> 1)
      {
        sub_11B90((v33 > 1), v34 + 1, 1);
        v29 = v58;
      }

      *(v29 + 2) = v34 + 1;
      v35 = &v29[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v32;
      v30 += 5;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = _swiftEmptyArrayStorage;
  }

  v36 = sub_6648((v56 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository), *(v56 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository + 24));
  v38 = *(*v36 + 16);
  v37 = *(*v36 + 24);
  v61 = &type metadata for MSPrimaryUpdateAPIRequest.Body;
  v39 = sub_46A1C();
  v40 = v53;
  v58 = v6;
  v59 = v53;
  v62 = v39;
  v60 = v29;
  v41 = objc_allocWithZone(type metadata accessor for MSPrimaryUpdateAPIRequest(0));
  sub_13E28(&v58, v57);
  v42 = v38;
  v43 = v37;

  v44 = sub_45BC4(v38, v43, v57);

  sub_13EF4(&v58);
  v45 = sub_1EB80();

  v58 = v45;
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v47[2] = v6;
  v47[3] = v40;
  v47[4] = v29;
  v47[5] = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = v54;
  *(v48 + 24) = v55;

  sub_66D4(&qword_121F38, &qword_D9CA0);
  sub_14038();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_4D200(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v9 = sub_D5340();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = *a1;
  v16 = *(a1 + 1);
  v17 = *(a1 + 3);
  v56 = *(a1 + 2);
  v52 = v17;
  v18 = *(a1 + 4);
  v54 = v15;
  v55 = v18;
  LODWORD(v19) = a1[40];
  if (v16)
  {
    v20 = sub_3DF44(a2, a3, a4);
    v21 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
    if (v20)
    {
      v22 = sub_D6550();
      v24 = v23;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v25 = sub_6610(v9, qword_137988);
      (*(v10 + 16))(v14, v25, v9);

      v26 = sub_D5320();
      v27 = sub_D68B0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        LODWORD(v51) = v19;
        v19 = v28;
        v29 = swift_slowAlloc();
        v59 = v29;
        *v19 = 136642819;
        v30 = sub_558F0(v22, v24, &v59);
        v31 = v10;
        v32 = v30;

        *(v19 + 4) = v32;
        _os_log_impl(&dword_0, v26, v27, "[Primary Address] params: %{sensitive}s", v19, 0xCu);
        sub_67D4(v29);
        v21 = &OBJC_METACLASS___MailSettingsSpecifierProvider;

        LOBYTE(v19) = v51;

        (*(v31 + 8))(v14, v9);
        v10 = v31;
      }

      else
      {

        (*(v10 + 8))(v14, v9);
      }
    }

    if (v21[91].isa != -1)
    {
      swift_once();
    }

    v33 = sub_6610(v9, qword_137988);
    v34 = v53;
    (*(v10 + 16))(v53, v33, v9);

    v35 = sub_D5320();
    v36 = sub_D68B0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v10;
      v39 = swift_slowAlloc();
      v65[0] = v39;
      *v37 = 136315138;
      v59 = v54;
      v60 = v16;
      v61 = v56;
      LOBYTE(v62) = v52 & 1;
      v63 = v55;
      v64 = v19 & 1;
      sub_6780();
      v40 = sub_D6C60();
      v42 = sub_558F0(v40, v41, v65);
      v51 = v9;
      v43 = v42;

      *(v37 + 4) = v43;
      _os_log_impl(&dword_0, v35, v36, "[Primary Address] update failed: %s", v37, 0xCu);
      sub_67D4(v39);

      (*(v38 + 8))(v53, v51);
    }

    else
    {

      (*(v10 + 8))(v34, v9);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v16)
    {
      v44 = v54;
    }

    else
    {
      v44 = 0;
    }

    if (v16)
    {
      v45 = v56;
    }

    else
    {
      v45 = 0;
    }

    if (v16)
    {
      v46 = v52 & 1;
    }

    else
    {
      v46 = 0;
    }

    if (v16)
    {
      v47 = v55;
    }

    else
    {
      v47 = 0;
    }

    if (v16)
    {
      v48 = v19 & 1;
    }

    else
    {
      v48 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v44;
    v60 = v16;
    v61 = v45;
    v62 = v46;
    v63 = v47;
    v64 = v48;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_4D798(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Primary Address] update successful", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return a2(1);
}

uint64_t sub_4D9A0()
{
  v1 = v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account;
  if (*(v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account + 24);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_D5570();

  if (v2 == v23 && v3 == v24)
  {
  }

  else
  {
    v5 = sub_D6C20();

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  v22 = 0;
  v7 = 0;
  v8 = *(v1 + 48);
  v20 = *(v8 + 16);
  v9 = (v8 + 48);
  v10 = &unk_DC248;
  do
  {
    v21 = v20 != v7;
    if (v20 == v7)
    {
      break;
    }

    if (v7 >= *(v8 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v12 = *(v9 - 2);
    v11 = *(v9 - 1);
    swift_getKeyPath();
    v13 = v10;
    swift_getKeyPath();

    sub_D5570();

    if (v7 >= *(v23 + 16))
    {
      goto LABEL_27;
    }

    v15 = *(v23 + v22 + 48);
    v14 = *(v23 + v22 + 56);

    if (v12 == v15 && v11 == v14)
    {

      v10 = v13;
    }

    else
    {
      v17 = sub_D6C20();

      v10 = v13;
      if ((v17 & 1) == 0)
      {
        return v21;
      }
    }

    if (v7 >= *(v8 + 16))
    {
      goto LABEL_28;
    }

    ++v7;
    v18 = *v9;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    result = v23;
    if (v7 - 1 >= *(v23 + 16))
    {
      goto LABEL_29;
    }

    v9 += 24;
    v19 = *(v23 + v22 + 64);

    v22 += 40;
  }

  while (v18 == v19);
  return v21;
}

uint64_t sub_4DC7C()
{
  sub_67D4((v0 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository));
}

uint64_t sub_4DD0C()
{
  v0 = sub_11220();
  v1 = OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository;

  sub_67D4((v2 + v1));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MSPrimaryAddressViewModel(uint64_t a1)
{
  result = qword_1243C8;
  if (!qword_1243C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4DEA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4DEE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4DF34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4DF7C()
{
  v0 = sub_D5340();
  sub_4DFFC(v0, qword_137988);
  sub_6610(v0, qword_137988);
  return sub_D5330();
}

uint64_t *sub_4DFFC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_4E074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_4E150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MSAddAliasView(uint64_t a1)
{
  result = qword_124700;
  if (!qword_124700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4E260(uint64_t a1)
{
  sub_6C10(319);
  if (v1 <= 0x3F)
  {
    sub_27934();
    if (v2 <= 0x3F)
    {
      sub_4E334();
      if (v3 <= 0x3F)
      {
        sub_4E384(319);
        if (v4 <= 0x3F)
        {
          sub_6CFC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_4E334()
{
  if (!qword_121128)
  {
    v0 = sub_D6240();
    if (!v1)
    {
      atomic_store(v0, &qword_121128);
    }
  }
}

void sub_4E384(uint64_t a1)
{
  if (!qword_124710)
  {
    _s11descr112E21O9ViewModelCMa(255);
    sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
    v1 = sub_D5760();
    if (!v2)
    {
      atomic_store(v1, &qword_124710);
    }
  }
}

id sub_4E434(uint64_t a1)
{
  sub_2A5C4(a1, v15);
  v1 = sub_38BFC(v15, v15[3]);
  __chkstk_darwin(v1);
  v3 = (v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = *v3;
  v6 = type metadata accessor for MSRepositoryDefault();
  v14[3] = v6;
  v14[4] = &off_1188F0;
  v14[0] = v5;
  _s11descr112E21O9ViewModelCMa(0);
  v7 = swift_allocObject();
  v8 = sub_38BFC(v14, v6);
  __chkstk_darwin(v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_52D9C(*v10, v7);
  sub_67D4(v14);
  sub_67D4(v15);
  return v12;
}

uint64_t sub_4E5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v45 = a2;
  v3 = sub_D5B20();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_124780, &qword_DC350);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = sub_66D4(&qword_124778, &qword_DC348);
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_66D4(&qword_124768, &qword_DC338);
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  __chkstk_darwin(v11);
  v35 = &v34 - v13;
  v14 = sub_66D4(&qword_124760, &unk_E38D0);
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v36 = &v34 - v15;
  v47 = a1;
  sub_66D4(&qword_1247A8, &qword_DC360);
  sub_52584();
  sub_D5E60();
  v16 = &v7[*(v5 + 36)];
  *v16 = sub_505BC;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16[2] = 0;
  v16[3] = 0;
  v16[1] = 0;
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v51._countAndFlagsBits = 2777980912;
  v51._object = 0xA400000000000000;
  v57._countAndFlagsBits = 0x41494C415F444441;
  v57._object = 0xE900000000000053;
  sub_D66D0(v57);
  v58._countAndFlagsBits = 2777980912;
  v58._object = 0xA400000000000000;
  sub_D66D0(v58);
  v33._countAndFlagsBits = 0xE000000000000000;
  v59._countAndFlagsBits = 0x41494C415F444441;
  v59._object = 0xE900000000000053;
  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v19.super.isa = v18;
  v20 = sub_D4E80(v59, v60, v19, v51, 0, v33);
  v22 = v21;

  v51._countAndFlagsBits = v20;
  v51._object = v22;
  v23 = sub_524C4();
  v24 = sub_DFAC();
  sub_D6040();

  sub_FC3C(v7, &qword_124780, &qword_DC350);
  v26 = v39;
  v25 = v40;
  v27 = v37;
  (*(v39 + 104))(v37, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v40);
  v51._countAndFlagsBits = v5;
  v51._object = &type metadata for String;
  *&v52 = v23;
  *(&v52 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_D60D0();
  (*(v26 + 8))(v27, v25);
  (*(v38 + 8))(v10, v8);
  v46 = v34;
  sub_66D4(&qword_124770, &qword_DC340);
  v51._countAndFlagsBits = v8;
  v51._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340, &protocol conformance descriptor for TupleToolbarContent<A>);
  v30 = v36;
  v31 = v41;
  sub_D6120();
  (*(v42 + 8))(v29, v31);
  type metadata accessor for MSAddAliasView(0);
  _s11descr112E21O9ViewModelCMa(0);
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v51 = v48;
  v52 = v49;
  v53[0] = v50[0];
  *(v53 + 9) = *(v50 + 9);
  sub_A08AC(&v51._countAndFlagsBits, v45);
  countAndFlagsBits = v51._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v55 = v52;
  v56[0] = v53[0];
  *(v56 + 9) = *(v53 + 9);
  sub_FC3C(&v55, &qword_120EE8, &qword_D8DD0);
  return (*(v43 + 8))(v30, v44);
}

uint64_t sub_4ECDC(uint64_t a1)
{
  sub_66D4(&qword_1247C0, &qword_DC368);
  sub_109A8(&qword_1247B8, &qword_1247C0, &qword_DC368, &protocol conformance descriptor for TupleView<A>);
  return sub_D6390();
}

uint64_t sub_4ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_66D4(&qword_1213E0, &unk_DC500);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_66D4(&qword_1213F0, &qword_D90A8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_66D4(&qword_124808, &qword_DC510);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  *v20 = sub_D5B40();
  *(v20 + 1) = 0x403E000000000000;
  v20[16] = 0;
  v21 = sub_66D4(&qword_124810, &qword_DC518);
  sub_4F0F0(a1, &v20[*(v21 + 44)]);
  *v14 = sub_D5B40();
  *(v14 + 1) = 0x403E000000000000;
  v14[16] = 0;
  v22 = sub_66D4(&qword_121408, &qword_D90C0);
  sub_4F8AC(a1, &v14[*(v22 + 44)]);
  *v8 = sub_D5B40();
  *(v8 + 1) = 0x403E000000000000;
  v8[16] = 0;
  v23 = &v8[*(sub_66D4(&qword_121418, &unk_D90D0) + 44)];
  v28 = v8;
  sub_4FFFC(a1, v23);
  sub_FBD4(v20, v18, &qword_124808, &qword_DC510);
  sub_52B5C(v14, v12);
  v24 = v6;
  sub_FBD4(v8, v6, &qword_1213E0, &unk_DC500);
  v25 = v29;
  sub_FBD4(v18, v29, &qword_124808, &qword_DC510);
  v26 = sub_66D4(&qword_124818, &qword_DC520);
  sub_52B5C(v12, v25 + *(v26 + 48));
  sub_FBD4(v24, v25 + *(v26 + 64), &qword_1213E0, &unk_DC500);
  sub_FC3C(v28, &qword_1213E0, &unk_DC500);
  sub_FC3C(v14, &qword_1213F0, &qword_D90A8);
  sub_FC3C(v20, &qword_124808, &qword_DC510);
  sub_FC3C(v24, &qword_1213E0, &unk_DC500);
  sub_FC3C(v12, &qword_1213F0, &qword_D90A8);
  return sub_FC3C(v18, &qword_124808, &qword_DC510);
}

uint64_t sub_4F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for MSAddAliasView(0);
  v4 = v3 - 8;
  v61 = *(v3 - 8);
  v60 = *(v61 + 64);
  __chkstk_darwin(v3);
  v57 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_66D4(&qword_124820, &qword_DC5B0) - 8;
  v6 = __chkstk_darwin(v58);
  v59 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v50[-v8];
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v72._countAndFlagsBits = 2777980912;
  v72._object = 0xA400000000000000;
  v79._countAndFlagsBits = 0x53534552444441;
  v79._object = 0xE700000000000000;
  sub_D66D0(v79);
  v80._countAndFlagsBits = 2777980912;
  v80._object = 0xA400000000000000;
  sub_D66D0(v80);
  v49._countAndFlagsBits = 0xE000000000000000;
  v81._countAndFlagsBits = 0x53534552444441;
  v81._object = 0xE700000000000000;
  v82.value._countAndFlagsBits = 0;
  v82.value._object = 0;
  v12.super.isa = v11;
  v13 = sub_D4E80(v81, v82, v12, v72, 0, v49);
  v15 = v14;

  v72._countAndFlagsBits = v13;
  v72._object = v15;
  sub_DFAC();
  v55 = sub_D5F50();
  v54 = v16;
  LOBYTE(v13) = v17;
  v19 = v18;
  v20 = (a1 + *(v4 + 32));
  v21 = *v20;
  v22 = v20[1];
  *&v67 = v21;
  *(&v67 + 1) = v22;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  object = v72._object;
  countAndFlagsBits = v72._countAndFlagsBits;
  v23 = v73;
  v63 = sub_D63F0();
  v62 = v24;
  LOBYTE(v72._countAndFlagsBits) = v13 & 1;
  v51 = v13 & 1;
  _s11descr112E21O9ViewModelCMa(0);
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v25 = v68;
  v26 = (a1 + *(v4 + 28));
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v26) = v26[16];
  *v9 = v67;
  *(v9 + 1) = v25;
  v9[32] = v27;
  *(v9 + 5) = v28;
  v9[48] = v26;
  *(v9 + 7) = 0x2E64756F6C636940;
  *(v9 + 8) = 0xEB000000006D6F63;
  v9[72] = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0xE000000000000000;
  v65 = 0u;
  v64 = 0u;
  type metadata accessor for CGRect(0);

  sub_D6200();
  v29 = v74;
  v30 = v73;
  *(v9 + 6) = v72;
  *(v9 + 7) = v30;
  *(v9 + 16) = v29;
  LOBYTE(v64) = 0;
  sub_D6200();
  v31 = v72._object;
  v9[136] = v72._countAndFlagsBits;
  *(v9 + 18) = v31;
  type metadata accessor for iCloudMailTextField(0);
  sub_D5ED0();
  v32 = v57;
  sub_52904(a1, v57);
  v33 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v34 = swift_allocObject();
  sub_5296C(v32, v34 + v33);
  v35 = &v9[*(v58 + 44)];
  *v35 = sub_52D3C;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v36 = v59;
  sub_FBD4(v9, v59, &qword_124820, &qword_DC5B0);
  v37 = v55;
  v38 = v54;
  *&v67 = v55;
  *(&v67 + 1) = v54;
  LOBYTE(v68) = v13 & 1;
  *(&v68 + 1) = *v66;
  DWORD1(v68) = *&v66[3];
  v39 = v19;
  *(&v68 + 1) = v19;
  v40 = countAndFlagsBits;
  v41 = object;
  *&v69 = countAndFlagsBits;
  *(&v69 + 1) = object;
  *&v70 = v23;
  *(&v70 + 1) = v63;
  v71 = v62;
  v42 = v67;
  v43 = v68;
  v44 = v69;
  v45 = v70;
  v46 = v56;
  *(v56 + 64) = v62;
  v46[2] = v44;
  v46[3] = v45;
  *v46 = v42;
  v46[1] = v43;
  v47 = v46 + *(sub_66D4(&qword_124828, &qword_DC5B8) + 48);
  sub_FBD4(v36, v47, &qword_124820, &qword_DC5B0);
  sub_FBD4(&v67, &v72, &qword_121438, &qword_D9118);
  sub_FC3C(v9, &qword_124820, &qword_DC5B0);
  sub_FC3C(v36, &qword_124820, &qword_DC5B0);
  v72._countAndFlagsBits = v37;
  v72._object = v38;
  LOBYTE(v73) = v51;
  *(&v73 + 1) = *v66;
  DWORD1(v73) = *&v66[3];
  *(&v73 + 1) = v39;
  v74 = v40;
  v75 = v41;
  v76 = v23;
  v77 = v63;
  v78 = v62;
  return sub_FC3C(&v72, &qword_121438, &qword_D9118);
}

uint64_t sub_4F72C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_4F7AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_4F830(uint64_t a1)
{
  type metadata accessor for MSAddAliasView(0);
  sub_66D4(&qword_1226F0, &qword_DA770);
  return sub_D56B0();
}

uint64_t sub_4F8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v60 = sub_66D4(&qword_121440, &qword_D9140);
  __chkstk_darwin(v60);
  v4 = &v53 - v3;
  v63 = sub_66D4(&qword_121448, &qword_D9148);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v53 - v5;
  v62 = sub_66D4(&qword_121450, &qword_D9150);
  v61 = *(v62 - 8);
  v6 = __chkstk_darwin(v62);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v53 - v8;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v77._countAndFlagsBits = 2777980912;
  v77._object = 0xA400000000000000;
  v85._countAndFlagsBits = 0x55465F5341494C41;
  v85._object = 0xEE00454D414E4C4CLL;
  sub_D66D0(v85);
  v86._countAndFlagsBits = 2777980912;
  v86._object = 0xA400000000000000;
  sub_D66D0(v86);
  v52._countAndFlagsBits = 0xE000000000000000;
  v87._countAndFlagsBits = 0x55465F5341494C41;
  v87._object = 0xEE00454D414E4C4CLL;
  v88.value._countAndFlagsBits = 0;
  v88.value._object = 0;
  v11.super.isa = v10;
  v12 = sub_D4E80(v87, v88, v11, v77, 0, v52);
  v14 = v13;

  v77._countAndFlagsBits = v12;
  v77._object = v14;
  sub_DFAC();
  v56 = sub_D5F50();
  v55 = v15;
  LOBYTE(v12) = v16;
  v57 = v17;
  v18 = (a1 + *(type metadata accessor for MSAddAliasView(0) + 24));
  v19 = *v18;
  v20 = v18[1];
  *&v72 = v19;
  *(&v72 + 1) = v20;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v77._countAndFlagsBits;
  object = v77._object;
  v21 = v78;
  v68 = sub_D63F0();
  v66 = v22;
  v67 = v12 & 1;
  LOBYTE(v77._countAndFlagsBits) = v12 & 1;
  _s11descr112E21O9ViewModelCMa(0);
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
  v23 = sub_D5740();
  v24 = *(v23 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_placeholderName);
  v25 = *(v23 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_placeholderName + 8);

  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  *&v72 = v24;
  *(&v72 + 1) = v25;
  sub_D6410();
  KeyPath = swift_getKeyPath();
  v27 = sub_D65F0();
  v28 = v60;
  v29 = &v4[*(v60 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v29[2] = v30;
  v31 = sub_FDA8();
  v32 = v58;
  sub_D6050();
  sub_FC3C(v4, &qword_121440, &qword_D9140);
  v77._countAndFlagsBits = v28;
  v77._object = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v70;
  v34 = v63;
  sub_D6080();
  (*(v64 + 8))(v32, v34);
  v35 = v61;
  v36 = *(v61 + 16);
  v37 = v59;
  v38 = v62;
  v36(v59, v33, v62);
  v39 = v56;
  v40 = v55;
  *&v72 = v56;
  *(&v72 + 1) = v55;
  LOBYTE(v73) = v67;
  *(&v73 + 1) = *v71;
  DWORD1(v73) = *&v71[3];
  v41 = v57;
  v42 = countAndFlagsBits;
  *(&v73 + 1) = v57;
  *&v74 = countAndFlagsBits;
  *(&v74 + 1) = object;
  *&v75 = v21;
  *(&v75 + 1) = v68;
  v76 = v66;
  v43 = v72;
  v44 = v73;
  v45 = v74;
  v46 = v75;
  v47 = v65;
  *(v65 + 64) = v66;
  *(v47 + 2) = v45;
  *(v47 + 3) = v46;
  *v47 = v43;
  *(v47 + 1) = v44;
  v48 = v47;
  v49 = sub_66D4(&qword_121478, &qword_D91B8);
  v36(&v48[*(v49 + 48)], v37, v38);
  sub_FBD4(&v72, &v77, &qword_121438, &qword_D9118);
  v50 = *(v35 + 8);
  v50(v70, v38);
  v50(v37, v38);
  v77._countAndFlagsBits = v39;
  v77._object = v40;
  LOBYTE(v78) = v67;
  *(&v78 + 1) = *v71;
  HIDWORD(v78) = *&v71[3];
  v79 = v41;
  v80 = v42;
  v81 = object;
  v82 = v21;
  v83 = v68;
  v84 = v66;
  return sub_FC3C(&v77, &qword_121438, &qword_D9118);
}

uint64_t sub_4FFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_66D4(&qword_121420, &qword_DA840);
  v52 = *(v53 - 8);
  v4 = __chkstk_darwin(v53);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = &v47 - v6;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  v65._countAndFlagsBits = 2777980912;
  v65._object = 0xA400000000000000;
  v73._countAndFlagsBits = 0x4C4542414CLL;
  v73._object = 0xE500000000000000;
  sub_D66D0(v73);
  v74._countAndFlagsBits = 2777980912;
  v74._object = 0xA400000000000000;
  sub_D66D0(v74);
  v45._countAndFlagsBits = 0xE000000000000000;
  v75._countAndFlagsBits = 0x4C4542414CLL;
  v75._object = 0xE500000000000000;
  v79.value._countAndFlagsBits = 0;
  v79.value._object = 0;
  v10.super.isa = v9;
  v11 = sub_D4E80(v75, v79, v10, v65, 0, v45);
  v13 = v12;

  v65._countAndFlagsBits = v11;
  v65._object = v13;
  sub_DFAC();
  v49 = sub_D5F50();
  v15 = v14;
  v17 = v16;
  v50 = v18;
  v19 = (a1 + *(type metadata accessor for MSAddAliasView(0) + 24));
  v20 = *v19;
  v21 = v19[1];
  *&v60 = v20;
  *(&v60 + 1) = v21;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v65._countAndFlagsBits;
  object = v65._object;
  v22 = v66;
  v56 = sub_D63F0();
  v54 = v23;
  v55 = v17 & 1;
  LOBYTE(v65._countAndFlagsBits) = v17 & 1;
  v24 = [v8 bundleForClass:ObjCClassFromMetadata];
  v65._countAndFlagsBits = 2777980912;
  v65._object = 0xA400000000000000;
  v76._countAndFlagsBits = 0x4C414E4F4954504FLL;
  v76._object = 0xE800000000000000;
  sub_D66D0(v76);
  v77._countAndFlagsBits = 2777980912;
  v77._object = 0xA400000000000000;
  sub_D66D0(v77);
  v46._countAndFlagsBits = 0xE000000000000000;
  v78._countAndFlagsBits = 0x4C414E4F4954504FLL;
  v78._object = 0xE800000000000000;
  v80.value._countAndFlagsBits = 0;
  v80.value._object = 0;
  v25.super.isa = v24;
  v26 = sub_D4E80(v78, v80, v25, v65, 0, v46);
  v28 = v27;

  _s11descr112E21O9ViewModelCMa(0);
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  *&v60 = v26;
  *(&v60 + 1) = v28;
  v29 = v58;
  sub_D6410();
  v30 = v52;
  v31 = *(v52 + 16);
  v32 = v51;
  v33 = v29;
  v34 = v53;
  v31(v51, v33, v53);
  v35 = v49;
  *&v60 = v49;
  *(&v60 + 1) = v15;
  LOBYTE(v61) = v55;
  *(&v61 + 1) = *v59;
  DWORD1(v61) = *&v59[3];
  v36 = v50;
  v37 = countAndFlagsBits;
  *(&v61 + 1) = v50;
  *&v62 = countAndFlagsBits;
  *(&v62 + 1) = object;
  *&v63 = v22;
  *(&v63 + 1) = v56;
  v64 = v54;
  v38 = v60;
  v39 = v61;
  v40 = v62;
  v41 = v63;
  *(a2 + 64) = v54;
  *(a2 + 32) = v40;
  *(a2 + 48) = v41;
  *a2 = v38;
  *(a2 + 16) = v39;
  v42 = sub_66D4(&qword_121430, &qword_D9110);
  v31((a2 + *(v42 + 48)), v32, v34);
  sub_FBD4(&v60, &v65, &qword_121438, &qword_D9118);
  v43 = *(v30 + 8);
  v43(v58, v34);
  v43(v32, v34);
  v65._countAndFlagsBits = v35;
  v65._object = v15;
  LOBYTE(v66) = v55;
  *(&v66 + 1) = *v59;
  HIDWORD(v66) = *&v59[3];
  v67 = v36;
  v68 = v37;
  v69 = object;
  v70 = v22;
  v71 = v56;
  v72 = v54;
  return sub_FC3C(&v65, &qword_121438, &qword_D9118);
}

uint64_t sub_505BC()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v4 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_D5320();
  v6 = sub_D68A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[Add Alias] page viewed", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_50748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_66D4(&qword_1247C8, &qword_DC3C0);
  __chkstk_darwin(v19);
  v17 = &v17 - v3;
  v18 = sub_66D4(&qword_1247D0, &qword_DC3C8);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - v5;
  v7 = sub_D5C80();
  __chkstk_darwin(v7 - 8);
  v8 = sub_66D4(&qword_1247D8, &unk_DC3D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  sub_D5C60();
  v22 = a1;
  sub_66D4(&qword_1247E0, &unk_E2C60);
  sub_52748(&qword_1247E8, &qword_1247E0, &unk_E2C60, sub_52658);
  sub_D5920();
  sub_D5C70();
  v21 = a1;
  sub_66D4(&qword_121220, &unk_E0EB0);
  sub_E8DC();
  sub_D5920();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_D5BC0();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_50A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_66D4(&qword_121280, &unk_D8E40);
  __chkstk_darwin(v30);
  v4 = &v29 - v3;
  v29 = sub_66D4(&qword_124800, &qword_DC4F8);
  __chkstk_darwin(v29);
  v6 = &v29 - v5;
  v7 = type metadata accessor for MSAddAliasView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_66D4(&qword_1247F8, &qword_DC3E0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = *(a1 + *(v7 + 36));
  sub_52904(a1, v10);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_5296C(v10, v16 + v15);
  if (v14 == 1)
  {
    sub_D5190();
    _s11descr112E21O9ViewModelCMa(0);
    sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v17 = v32;
    KeyPath = swift_getKeyPath();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v20 = &v13[*(v11 + 36)];
    *v20 = KeyPath;
    v20[1] = sub_10ACC;
    v20[2] = v19;
    v21 = &qword_1247F8;
    v22 = &qword_DC3E0;
    sub_FBD4(v13, v6, &qword_1247F8, &qword_DC3E0);
    swift_storeEnumTagMultiPayload();
    sub_52658();
    sub_EB50();
    sub_D5BF0();
    v23 = v13;
  }

  else
  {
    sub_D6260();
    _s11descr112E21O9ViewModelCMa(0);
    sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v24 = v33;
    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v27 = &v4[*(v30 + 36)];
    *v27 = v25;
    v27[1] = sub_10ACC;
    v27[2] = v26;
    v21 = &qword_121280;
    v22 = &unk_D8E40;
    sub_FBD4(v4, v6, &qword_121280, &unk_D8E40);
    swift_storeEnumTagMultiPayload();
    sub_52658();
    sub_EB50();
    sub_D5BF0();
    v23 = v4;
  }

  return sub_FC3C(v23, v21, v22);
}

uint64_t sub_51004(uint64_t a1)
{
  v15 = sub_D5B10();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_D57E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD4(a1, v7, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_D68C0();
    v12 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_D57D0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_51280@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._countAndFlagsBits = 0x4C45434E4143;
  v10._object = 0xE600000000000000;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._countAndFlagsBits = 0x4C45434E4143;
  v12._object = 0xE600000000000000;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, 0, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_5139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_66D4(&qword_121178, &qword_DB0C0);
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v55 = &v49 - v4;
  v68 = sub_66D4(&qword_121280, &unk_D8E40);
  v5 = __chkstk_darwin(v68);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v49 - v7;
  v66 = sub_66D4(&qword_121288, &unk_E0ED0);
  __chkstk_darwin(v66);
  v67 = &v49 - v8;
  v9 = type metadata accessor for MSAddAliasView(0);
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v61 = v10;
  v62 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_D5160();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_66D4(&qword_121258, &unk_D8E30);
  v12 = __chkstk_darwin(v64);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v49 - v14;
  v72 = sub_66D4(&qword_121248, &unk_E0EC0);
  __chkstk_darwin(v72);
  v65 = &v49 - v15;
  v69 = sub_66D4(&qword_121290, &qword_D8E50);
  __chkstk_darwin(v69);
  v70 = &v49 - v16;
  v71 = sub_66D4(&qword_121238, &unk_D8E20);
  v17 = *(v71 - 8);
  __chkstk_darwin(v71);
  v19 = &v49 - v18;
  v59 = v9;
  v63 = a1;
  _s11descr112E21O9ViewModelCMa(0);
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if ((v74 & 1) != 0 || (sub_D5740(), swift_getKeyPath(), swift_getKeyPath(), sub_D5570(), , , , v74 == 1))
  {
    sub_D5780();
    v20 = v71;
    (*(v17 + 16))(v70, v19, v71);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_52748(&qword_121240, &qword_121248, &unk_E0EC0, sub_EA20);
    sub_D5BF0();
    return (*(v17 + 8))(v19, v20);
  }

  else
  {
    v22 = v62;
    v23 = *(v63 + *(v59 + 36));
    sub_52904(v63, v62);
    v24 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    if (v23 == 1)
    {
      v25 = swift_allocObject();
      sub_5296C(v22, v25 + v24);
      v26 = v50;
      sub_D5150();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v28 = v74;
      v27 = v75;

      v29 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v29 = v28 & 0xFFFFFFFFFFFFLL;
      }

      v30 = v29 == 0;
      KeyPath = swift_getKeyPath();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      v33 = v49;
      (*(v51 + 32))(v49, v26, v52);
      v34 = (v33 + *(v64 + 36));
      *v34 = KeyPath;
      v34[1] = sub_10ACC;
      v34[2] = v32;
      v35 = &qword_121258;
      v36 = &unk_D8E30;
      v37 = v53;
      sub_FEA4(v33, v53, &qword_121258, &unk_D8E30);
      sub_FBD4(v37, v67, &qword_121258, &unk_D8E30);
      swift_storeEnumTagMultiPayload();
      sub_EA20();
      sub_EB50();
      v38 = v65;
    }

    else
    {
      v39 = swift_allocObject();
      sub_5296C(v22, v39 + v24);
      v40 = v55;
      sub_D6260();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v42 = v74;
      v41 = v75;

      v43 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v43 = v42 & 0xFFFFFFFFFFFFLL;
      }

      v44 = v43 == 0;
      v45 = swift_getKeyPath();
      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      v47 = v54;
      (*(v56 + 32))(v54, v40, v57);
      v48 = (v47 + *(v68 + 36));
      *v48 = v45;
      v48[1] = sub_F0D0;
      v48[2] = v46;
      v35 = &qword_121280;
      v36 = &unk_D8E40;
      v37 = v58;
      sub_FEA4(v47, v58, &qword_121280, &unk_D8E40);
      sub_FBD4(v37, v67, &qword_121280, &unk_D8E40);
      swift_storeEnumTagMultiPayload();
      sub_EA20();
      sub_EB50();
      v38 = v65;
    }

    sub_D5BF0();
    sub_FC3C(v37, v35, v36);
    sub_FBD4(v38, v70, &qword_121248, &unk_E0EC0);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_52748(&qword_121240, &qword_121248, &unk_E0EC0, sub_EA20);
    sub_D5BF0();
    return sub_FC3C(v38, &qword_121248, &unk_E0EC0);
  }
}

uint64_t sub_51ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MSAddAliasView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  _s11descr112E21O9ViewModelCMa(0);
  sub_527CC(&unk_124718, _s11descr112E21O9ViewModelCMa, &unk_E59B8);
  sub_D5740();
  sub_52904(a1, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_5296C(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_BCFF4(a3, v9);
}

uint64_t sub_52054(uint64_t a1)
{
  v2 = sub_D57E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MSAddAliasView(0);
  (*(a1 + *(v6 + 32)))(1);
  sub_EC34(v5);
  sub_D57D0();
  return (*(v3 + 8))(v5, v2);
}

double sub_5214C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_521DC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_52274()
{
  sub_66D4(&qword_124758, &qword_DC330);
  sub_6110(&qword_124760, &unk_E38D0);
  sub_6110(&qword_121178, &qword_DB0C0);
  sub_6110(&qword_124768, &qword_DC338);
  sub_6110(&qword_124770, &qword_DC340);
  sub_6110(&qword_124778, &qword_DC348);
  sub_6110(&qword_124780, &qword_DC350);
  sub_524C4();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  return sub_D5850();
}

unint64_t sub_524C4()
{
  result = qword_124788;
  if (!qword_124788)
  {
    sub_6110(&qword_124780, &qword_DC350);
    sub_109A8(&qword_124790, &qword_124798, &qword_DC358, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124788);
  }

  return result;
}

unint64_t sub_52584()
{
  result = qword_1247B0;
  if (!qword_1247B0)
  {
    sub_6110(&qword_1247A8, &qword_DC360);
    sub_109A8(&qword_1247B8, &qword_1247C0, &qword_DC368, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1247B0);
  }

  return result;
}

unint64_t sub_52658()
{
  result = qword_1247F0;
  if (!qword_1247F0)
  {
    sub_6110(&qword_1247F8, &qword_DC3E0);
    sub_527CC(&qword_121218, &type metadata accessor for CloseButton, &protocol conformance descriptor for CloseButton);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1247F0);
  }

  return result;
}

uint64_t sub_52748(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    a4();
    sub_EB50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_527CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_52904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAddAliasView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5296C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAddAliasView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_52B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_1213F0, &qword_D90A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_52BE4()
{
  v1 = type metadata accessor for MSAddAliasView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D57E0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_E0C4(*(v0 + v3 + *(v1 + 28)), *(v0 + v3 + *(v1 + 28) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_52D3C()
{
  v1 = *(type metadata accessor for MSAddAliasView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_4F830(v2);
}

id sub_52D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_124830, &qword_E1560);
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v33 - v5;
  v6 = sub_66D4(&qword_121070, &qword_DAFE0);
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v35 = &v33 - v7;
  v34 = sub_66D4(&qword_121068, &qword_DBEE0);
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v33 - v9;
  v11 = sub_66D4(&qword_121948, &unk_DC5C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v44 = type metadata accessor for MSRepositoryDefault();
  v45 = &off_1188F0;
  v43[0] = a1;
  v15 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__fullName;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_D5530();
  v16 = *(v12 + 32);
  v16(a2 + v15, v14, v11);
  v17 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__emailId;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_D5530();
  v16(a2 + v17, v14, v11);
  v18 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__label;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_D5530();
  v16(a2 + v18, v14, v11);
  v19 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__isAdding;
  LOBYTE(v41) = 0;
  sub_D5530();
  v20 = *(v8 + 32);
  v21 = v34;
  v20(a2 + v19, v10, v34);
  v22 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__error;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  v23 = v35;
  sub_D5530();
  (*(v36 + 32))(a2 + v22, v23, v37);
  v24 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__isFetchingRules;
  LOBYTE(v41) = 1;
  sub_D5530();
  v20(a2 + v24, v10, v21);
  *(a2 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_rules) = _swiftEmptyArrayStorage;
  v25 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__validationMessage;
  v41 = 0uLL;
  sub_66D4(&qword_124838, &qword_E1490);
  v26 = v38;
  sub_D5530();
  (*(v39 + 32))(a2 + v25, v26, v40);
  *(a2 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  sub_2A5C4(v43, a2 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository);
  result = [*(*sub_6648(v43 v44) + 24)];
  if (result)
  {
    v28 = result;
    v29 = sub_D65F0();
    v31 = v30;

    v32 = (a2 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_placeholderName);
    *v32 = v29;
    v32[1] = v31;
    sub_BD844();
    sub_67D4(v43);
    return a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_532EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSAliasDeleteAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSAliasDeleteAPIRequest(uint64_t a1)
{
  result = qword_124878;
  if (!qword_124878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_53378@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for MSInternalSettingsView(0) + 28);
  *(a2 + v8) = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_D5320();
  v11 = sub_D68A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "[MSInternalSettingsView] init()", v12, 2u);
  }

  (*(v5 + 8))(v7, v4);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(a2 + 32) = result;
    result = [result aa_primaryAppleAccount];
    if (result)
    {
      *(a2 + 24) = result;
      v14 = swift_allocObject();
      result = sub_38BDC(a1, v14 + 16);
      *a2 = sub_53E18;
      *(a2 + 8) = v14;
      *(a2 + 16) = 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MSInternalSettingsView(uint64_t a1)
{
  result = qword_124A98;
  if (!qword_124A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_53628(uint64_t a1)
{
  sub_2A5C4(a1, v15);
  v1 = sub_38BFC(v15, v15[3]);
  __chkstk_darwin(v1);
  v3 = (v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = *v3;
  v6 = type metadata accessor for MSRepositoryDefault();
  v14[3] = v6;
  v14[4] = &off_1188F0;
  v14[0] = v5;
  _s11descr112329O9ViewModelCMa();
  v7 = swift_allocObject();
  v8 = sub_38BFC(v14, v6);
  __chkstk_darwin(v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v7[5] = v6;
  v7[6] = &off_1188F0;
  v7[2] = v12;
  sub_67D4(v14);
  sub_67D4(v15);
  return v7;
}

uint64_t sub_537E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_D5B20();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_124B08, &qword_DC6E8);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = sub_66D4(&qword_124B00, &qword_DC6E0);
  v10 = *(v9 - 8);
  v18 = v9;
  v19 = v10;
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v22 = a1;
  sub_D52D0();
  sub_54248(&qword_124B28, &type metadata accessor for MAInternalSettingsView, &protocol conformance descriptor for MAInternalSettingsView);
  sub_D5E60();
  v13 = &v8[*(v6 + 36)];
  *v13 = sub_53B60;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0;
  sub_D5B50();
  v14 = sub_54188();
  sub_D6030();

  sub_54290(v8);
  v15 = v20;
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v20);
  v23 = v6;
  v24 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v18;
  sub_D60D0();
  (*(v3 + 8))(v5, v15);
  return (*(v19 + 8))(v12, v16);
}

uint64_t sub_53B0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  v3 = v1;

  return MAInternalSettingsView.init(appleAccount:accountStore:)(v2, v3);
}

uint64_t sub_53B60()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v4 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_D5320();
  v6 = sub_D68A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[Internal Settings] page viewed", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_53CEC()
{
  sub_66D4(&qword_124AF8, &qword_DC6D8);
  sub_6110(&qword_124B00, &qword_DC6E0);
  sub_6110(&qword_124B08, &qword_DC6E8);
  sub_54188();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_D5850();
}

uint64_t sub_53DE0()
{
  sub_67D4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_53E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_66D4(&qword_121090, &unk_D8CC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_53F04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_66D4(&qword_121090, &unk_D8CC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_53FB4(uint64_t a1)
{
  sub_54088(319);
  if (v1 <= 0x3F)
  {
    sub_5411C(319, &qword_124AB8, ACAccount_ptr);
    if (v2 <= 0x3F)
    {
      sub_5411C(319, &unk_124AC0, ACAccountStore_ptr);
      if (v3 <= 0x3F)
      {
        sub_6C10(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_54088(uint64_t a1)
{
  if (!qword_124AA8)
  {
    _s11descr112329O9ViewModelCMa();
    sub_54248(&qword_124AB0, _s11descr112329O9ViewModelCMa, &unk_D9B04);
    v1 = sub_D5760();
    if (!v2)
    {
      atomic_store(v1, &qword_124AA8);
    }
  }
}

uint64_t sub_5411C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_54188()
{
  result = qword_124B10;
  if (!qword_124B10)
  {
    sub_6110(&qword_124B08, &qword_DC6E8);
    sub_109A8(&qword_124B18, &qword_124B20, &qword_DC6F0, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124B10);
  }

  return result;
}

uint64_t sub_54248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_54290(uint64_t a1)
{
  v2 = sub_66D4(&qword_124B08, &qword_DC6E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_5433C()
{
  result = sub_D65C0();
  qword_1379A0 = result;
  return result;
}

void sub_54374()
{
  v1 = [*(v0 + 24) aa_primaryEmail];
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(MCCSecretAgentController);

    v4 = [v3 init];
    v5 = swift_allocObject();
    *(v5 + 16) = sub_56684;
    *(v5 + 24) = v0;
    v7[4] = sub_566FC;
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_5F7FC;
    v7[3] = &unk_1169F0;
    v6 = _Block_copy(v7);

    [v4 getIsSecureEmailEnabledForEmail:v2 completion:v6];
    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}