void sub_1000ED0B0()
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v2 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_8;
  }

  v4 = sub_1000F5A28(0xD000000000000010, 0x800000010034CC50);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    memset(v27, 0, sizeof(v27));
    v28 = -1;
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);
    v6 = 7002;
    goto LABEL_9;
  }

  sub_1000DC884(*(v3 + 56) + 40 * v4, v27);
  sub_100065074(v27, v25, qword_10039EEE0, &qword_1002C23D8);
  if (v26 > 1u)
  {
    if (v26 == 2)
    {
      sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

      v10 = v25[0];
      v9 = v25[1];
      v22 = 0u;
      v23 = 0u;
      v24 = 3;
      swift_beginAccess();
      sub_10002D0A4(&v22, 0xD000000000000010, 0x800000010034CC50);
      swift_endAccess();
      v10(&v22, v0);
      if (!v1)
      {
        v11 = type metadata accessor for MonitorAnalytics(0);
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }

        *&v22 = 0xD000000000000010;
        *(&v22 + 1) = 0x800000010034CC50;
        v12._countAndFlagsBits = 0x646E65706564203ALL;
        v12._object = 0xEB00000000746E65;
        String.append(_:)(v12);
        sub_100020384(7004, v22, *(&v22 + 1), 0);
        swift_willThrow();
      }

      *&v22 = v10;
      *(&v22 + 1) = v9;
      v24 = 2;
      swift_beginAccess();

      sub_10002D0A4(&v22, 0xD000000000000010, 0x800000010034CC50);
      swift_endAccess();
LABEL_17:
      swift_willThrow();
LABEL_19:

      goto LABEL_11;
    }

    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    v6 = 7003;
LABEL_9:
    v7 = 0xD000000000000010;
    v8 = 0x800000010034CC50;
LABEL_10:
    sub_100020384(v6, v7, v8, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v26)
  {
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    (v25[0])(&v22, v13);
    if (v1)
    {
      goto LABEL_19;
    }

    v11 = type metadata accessor for MonitorAnalytics(0);
    if (swift_dynamicCast())
    {
LABEL_25:
      *(&v23 + 1) = v11;
      *&v22 = v21;
      v24 = 0;
      swift_beginAccess();

      sub_10002D0A4(&v22, 0xD000000000000010, 0x800000010034CC50);
      swift_endAccess();

      goto LABEL_11;
    }

    *&v22 = 0xD000000000000010;
    *(&v22 + 1) = 0x800000010034CC50;
    v20._countAndFlagsBits = 0x657065646E69203ALL;
    v20._object = 0xED0000746E65646ELL;
    String.append(_:)(v20);
    sub_100020384(7004, v22, *(&v22 + 1), 0);
    goto LABEL_17;
  }

  type metadata accessor for MonitorAnalytics(0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    sub_10000959C(v25);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(v25);
  *&v22 = 0xD000000000000010;
  *(&v22 + 1) = 0x800000010034CC50;
  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15 = *(v0 + v2);
  if (*(v15 + 16))
  {

    v16 = sub_1000F5A28(0xD000000000000010, 0x800000010034CC50);
    if (v17)
    {
      v18 = v16;
      sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v15 + 56) + 40 * v18, v25);

      v19._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v19);

      sub_1000F3008(v25);
      v8 = *(&v22 + 1);
      v7 = v22;
      v6 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000ED6B4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v9 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_8;
  }

  v11 = sub_1000F5A28(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v13 = 7002;
    goto LABEL_9;
  }

  sub_1000DC884(*(v10 + 56) + 40 * v11, v34);
  sub_100065074(v34, v32, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v17 = v32[0];
      v16 = v32[1];
      v29 = 0u;
      v30 = 0u;
      v31 = 3;
      swift_beginAccess();
      sub_10002D0A4(&v29, a1, a2);
      swift_endAccess();
      v17(&v29, v4);
      if (!v5)
      {
        v19 = v36(0);
        if (swift_dynamicCast())
        {
          goto LABEL_23;
        }

        *&v29 = a1;
        *(&v29 + 1) = a2;
        v27._countAndFlagsBits = 0x646E65706564203ALL;
        v27._object = 0xEB00000000746E65;
        String.append(_:)(v27);
        sub_100020384(7004, v29, *(&v29 + 1), 0);
        swift_willThrow();
      }

      *&v29 = v17;
      *(&v29 + 1) = v16;
      v31 = 2;
      swift_beginAccess();

      sub_10002D0A4(&v29, a1, a2);
      swift_endAccess();
      goto LABEL_26;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v13 = 7003;
LABEL_9:
    v14 = a1;
    v15 = a3;
LABEL_10:
    sub_100020384(v13, v14, v15, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    (v32[0])(&v29, v18);
    if (v5)
    {
LABEL_27:

      goto LABEL_11;
    }

    v19 = v36(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v29 = a1;
      *(&v29 + 1) = a2;
      v20._countAndFlagsBits = 0x657065646E69203ALL;
      v20._object = 0xED0000746E65646ELL;
      String.append(_:)(v20);
      sub_100020384(7004, v29, *(&v29 + 1), 0);
LABEL_26:
      swift_willThrow();
      goto LABEL_27;
    }

LABEL_23:
    *(&v30 + 1) = v19;
    *&v29 = v28;
    v31 = 0;
    swift_beginAccess();

    sub_10002D0A4(&v29, a1, a2);
    swift_endAccess();

    goto LABEL_11;
  }

  v36(0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_10000959C(v32);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(v32);
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v21._countAndFlagsBits = 8250;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22 = *(v4 + v9);
  if (*(v22 + 16))
  {

    v23 = sub_1000F5A28(a1, a2);
    if (v24)
    {
      v25 = v23;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v22 + 56) + 40 * v25, v32);

      v26._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v26);

      sub_1000F3008(v32);
      v15 = *(&v29 + 1);
      v14 = v29;
      v13 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EDC24(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0x7065654B656D6954, 0xEA00000000007265);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0x7065654B656D6954;
    v10 = 0xEA00000000007265;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0x7065654B656D6954, 0xEA00000000007265);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2DF8, &qword_1002C6EC0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0x7065654B656D6954, 0xEA00000000007265);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3160, &qword_1002C71B8);
        *&v24 = 0x7065654B656D6954;
        *(&v24 + 1) = 0xEA00000000007265;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0x7065654B656D6954, 0xEA00000000007265);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    (v28)(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2DF8, &qword_1002C6EC0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0x7065654B656D6954, 0xEA00000000007265);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3160, &qword_1002C71B8);
        *&v24 = 0x7065654B656D6954;
        *(&v24 + 1) = 0xEA00000000007265;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DF8, &qword_1002C6EC0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0x7065654B656D6954;
  v29 = 0xEA00000000007265;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0x7065654B656D6954, 0xEA00000000007265);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EE288()
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v2 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_8;
  }

  v4 = sub_1000F5A28(0xD000000000000011, 0x800000010034CC70);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    memset(v27, 0, sizeof(v27));
    v28 = -1;
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);
    v6 = 7002;
    goto LABEL_9;
  }

  sub_1000DC884(*(v3 + 56) + 40 * v4, v27);
  sub_100065074(v27, v25, qword_10039EEE0, &qword_1002C23D8);
  if (v26 > 1u)
  {
    if (v26 == 2)
    {
      sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

      v10 = v25[0];
      v9 = v25[1];
      v22 = 0u;
      v23 = 0u;
      v24 = 3;
      swift_beginAccess();
      sub_10002D0A4(&v22, 0xD000000000000011, 0x800000010034CC70);
      swift_endAccess();
      v10(&v22, v0);
      if (!v1)
      {
        v11 = type metadata accessor for SecurityAnalytics(0);
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }

        *&v22 = 0xD000000000000011;
        *(&v22 + 1) = 0x800000010034CC70;
        v12._countAndFlagsBits = 0x646E65706564203ALL;
        v12._object = 0xEB00000000746E65;
        String.append(_:)(v12);
        sub_100020384(7004, v22, *(&v22 + 1), 0);
        swift_willThrow();
      }

      *&v22 = v10;
      *(&v22 + 1) = v9;
      v24 = 2;
      swift_beginAccess();

      sub_10002D0A4(&v22, 0xD000000000000011, 0x800000010034CC70);
      swift_endAccess();
LABEL_17:
      swift_willThrow();
LABEL_19:

      goto LABEL_11;
    }

    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    v6 = 7003;
LABEL_9:
    v7 = 0xD000000000000011;
    v8 = 0x800000010034CC70;
LABEL_10:
    sub_100020384(v6, v7, v8, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v26)
  {
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    (v25[0])(&v22, v13);
    if (v1)
    {
      goto LABEL_19;
    }

    v11 = type metadata accessor for SecurityAnalytics(0);
    if (swift_dynamicCast())
    {
LABEL_25:
      *(&v23 + 1) = v11;
      *&v22 = v21;
      v24 = 0;
      swift_beginAccess();

      sub_10002D0A4(&v22, 0xD000000000000011, 0x800000010034CC70);
      swift_endAccess();

      goto LABEL_11;
    }

    *&v22 = 0xD000000000000011;
    *(&v22 + 1) = 0x800000010034CC70;
    v20._countAndFlagsBits = 0x657065646E69203ALL;
    v20._object = 0xED0000746E65646ELL;
    String.append(_:)(v20);
    sub_100020384(7004, v22, *(&v22 + 1), 0);
    goto LABEL_17;
  }

  type metadata accessor for SecurityAnalytics(0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

    sub_10000959C(v25);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(v25);
  *&v22 = 0xD000000000000011;
  *(&v22 + 1) = 0x800000010034CC70;
  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15 = *(v0 + v2);
  if (*(v15 + 16))
  {

    v16 = sub_1000F5A28(0xD000000000000011, 0x800000010034CC70);
    if (v17)
    {
      v18 = v16;
      sub_10000BD44(v27, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v15 + 56) + 40 * v18, v25);

      v19._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v19);

      sub_1000F3008(v25);
      v8 = *(&v22 + 1);
      v7 = v22;
      v6 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EE7EC(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000022, 0x800000010034CEF0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000022;
    v10 = 0x800000010034CEF0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000022, 0x800000010034CEF0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D78, &qword_1002C6E38);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000022, 0x800000010034CEF0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3138, &qword_1002C7190);
        *&v24 = 0xD000000000000022;
        *(&v24 + 1) = 0x800000010034CEF0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000022, 0x800000010034CEF0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D78, &qword_1002C6E38);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000022, 0x800000010034CEF0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3138, &qword_1002C7190);
        *&v24 = 0xD000000000000022;
        *(&v24 + 1) = 0x800000010034CEF0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D78, &qword_1002C6E38);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000022;
  v29 = 0x800000010034CEF0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000022, 0x800000010034CEF0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EEE50(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD000000000000019, 0x800000010034CED0);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v31, 0, sizeof(v31));
    v32 = -1;
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
LABEL_9:
    v9 = 0xD000000000000019;
    v10 = 0x800000010034CED0;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v31);
  sub_100065074(v31, &v28, qword_10039EEE0, &qword_1002C23D8);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      v11 = v28;
      v12 = v29;
      v24 = 0u;
      v25 = 0u;
      LOBYTE(v26) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CED0);
      swift_endAccess();
      v33 = v12;
      v11(v27, v1);
      if (!v2)
      {
        v13 = sub_100004074(&qword_1003A2D80, &qword_1002C6E40);
        if (swift_dynamicCast())
        {
          sub_100029790(&v24, a1);
          *(&v25 + 1) = v13;
          *&v24 = swift_allocObject();
          sub_10000CCE4(a1, v24 + 16);
          LOBYTE(v26) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CED0);
          swift_endAccess();

          goto LABEL_11;
        }

        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3130, &qword_1002C7188);
        *&v24 = 0xD000000000000019;
        *(&v24 + 1) = 0x800000010034CED0;
        v22._countAndFlagsBits = 0x646E65706564203ALL;
        v22._object = 0xEB00000000746E65;
        String.append(_:)(v22);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }

      *&v24 = v11;
      *(&v24 + 1) = v33;
      LOBYTE(v26) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CED0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
    goto LABEL_9;
  }

  if (v30)
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    v28(v27, v14);
    if (!v2)
    {
      v15 = sub_100004074(&qword_1003A2D80, &qword_1002C6E40);
      if (swift_dynamicCast())
      {
        sub_100029790(&v24, a1);
        *(&v25 + 1) = v15;
        *&v24 = swift_allocObject();
        sub_10000CCE4(a1, v24 + 16);
        LOBYTE(v26) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v24, 0xD000000000000019, 0x800000010034CED0);
        swift_endAccess();
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        sub_10000BD44(&v24, &qword_1003A3130, &qword_1002C7188);
        *&v24 = 0xD000000000000019;
        *(&v24 + 1) = 0x800000010034CED0;
        v23._countAndFlagsBits = 0x657065646E69203ALL;
        v23._object = 0xED0000746E65646ELL;
        String.append(_:)(v23);
        sub_100020384(7004, v24, *(&v24 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D80, &qword_1002C6E40);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v24, a1);
    sub_10000959C(&v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v28);
  v28 = 0xD000000000000019;
  v29 = 0x800000010034CED0;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v1 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_1000F5A28(0xD000000000000019, 0x800000010034CED0);
    if (v19)
    {
      v20 = v18;
      sub_10000BD44(v31, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v20, &v24);

      v21._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v21);

      sub_1000F3008(&v24);
      v9 = v28;
      v10 = v29;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EF4B4(uint64_t a1@<X8>)
{
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034D630);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v33, 0, sizeof(v33));
    v34 = -1;
    sub_10000BD44(v33, qword_10039EEE0, &qword_1002C23D8);
    v9 = 7002;
LABEL_9:
    v10 = 0xD00000000000001FLL;
    v11 = 0x800000010034D630;
LABEL_10:
    sub_100020384(v9, v10, v11, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v5 + 56) + 40 * v6, v33);
  sub_100065074(v33, &v30, qword_10039EEE0, &qword_1002C23D8);
  if (v32 > 1u)
  {
    if (v32 == 2)
    {
      sub_10000BD44(v33, qword_10039EEE0, &qword_1002C23D8);

      v12 = v30;
      v13 = v31;
      v27 = 0u;
      *v28 = 0u;
      v28[16] = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034D630);
      swift_endAccess();
      v35 = v13;
      v12(v29, v1);
      if (!v2)
      {
        v14 = sub_100004074(&qword_1003A30B0, &qword_1002C70F8);
        if (swift_dynamicCast())
        {
          v15 = *v28;
          *a1 = v27;
          *(a1 + 16) = v15;
          *(a1 + 32) = *&v28[16];
          *&v28[8] = v14;
          *&v27 = swift_allocObject();
          sub_100065074(a1, v27 + 16, &qword_1003A30B0, &qword_1002C70F8);
          v28[16] = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034D630);
          swift_endAccess();

          goto LABEL_11;
        }

        v27 = 0uLL;
        *v28 = 0;
        *&v28[8] = xmmword_1002C4E40;
        sub_10000BD44(&v27, &qword_1003A3110, &qword_1002C7168);
        *&v27 = 0xD00000000000001FLL;
        *(&v27 + 1) = 0x800000010034D630;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v12;
      *(&v27 + 1) = v35;
      v28[16] = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034D630);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v33, qword_10039EEE0, &qword_1002C23D8);

    v9 = 7003;
    goto LABEL_9;
  }

  if (v32)
  {
    sub_10000BD44(v33, qword_10039EEE0, &qword_1002C23D8);

    v30(v29, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A30B0, &qword_1002C70F8);
      if (swift_dynamicCast())
      {
        v18 = *v28;
        *a1 = v27;
        *(a1 + 16) = v18;
        *(a1 + 32) = *&v28[16];
        *&v28[8] = v17;
        *&v27 = swift_allocObject();
        sub_100065074(a1, v27 + 16, &qword_1003A30B0, &qword_1002C70F8);
        v28[16] = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034D630);
        swift_endAccess();
      }

      else
      {
        v27 = 0uLL;
        *v28 = 0;
        *&v28[8] = xmmword_1002C4E40;
        sub_10000BD44(&v27, &qword_1003A3110, &qword_1002C7168);
        *&v27 = 0xD00000000000001FLL;
        *(&v27 + 1) = 0x800000010034D630;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A30B0, &qword_1002C70F8);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v33, qword_10039EEE0, &qword_1002C23D8);

    v8 = *v28;
    *a1 = v27;
    *(a1 + 16) = v8;
    *(a1 + 32) = *&v28[16];
    sub_10000959C(&v30);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v30);
  v30 = 0xD00000000000001FLL;
  v31 = 0x800000010034D630;
  v19._countAndFlagsBits = 8250;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20 = *(v1 + v4);
  if (*(v20 + 16))
  {

    v21 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034D630);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v33, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v20 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v10 = v30;
      v11 = v31;
      v9 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000EFB54()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2F50);
  sub_10000403C(v0, qword_1003A2F50);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000EFBB0()
{
  v0 = type metadata accessor for Settings(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.default.getter(v2);
  type metadata accessor for Depot(0);
  swift_allocObject();
  v3 = sub_1000DA1BC(v2);
  type metadata accessor for Primer();
  v4 = swift_allocObject();
  sub_100004074(&qword_10039D800, &qword_1002BDC58);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v4 + 40) = v5;
  *(v4 + 16) = 0;
  *(v4 + 24) = v3;
  type metadata accessor for Provider();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v4 + 32) = v6;
  static Primer.shared = v4;
}

uint64_t static Primer.shared.getter()
{
  if (qword_10039D5E0 != -1)
  {
    swift_once();
  }
}

uint64_t Primer.description.getter()
{
  _StringGuts.grow(_:)(34);

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x800000010034D2F0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  v3 = *(v0 + 24) + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
  v4 = type metadata accessor for Settings(0);
  v5 = *(v3 + *(v4 + 68)) == 0;
  if (*(v3 + *(v4 + 68)))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0x695B72656D697250;
}

uint64_t Primer.storageSetting.getter()
{

  sub_1000E3850(v3);

  v0 = *sub_10000BE18(v3, v3[3]) + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting;
  v1 = *v0;
  sub_1000EFF2C(*v0, *(v0 + 8), *(v0 + 16));
  sub_10000959C(v3);
  return v1;
}

double sub_1000EFF2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t Primer.__allocating_init(settings:)(uint64_t a1)
{
  v2 = type metadata accessor for Settings(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v28[-1] - v6;
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A2F50);
  sub_1000DD24C(a1, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, v28);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    *(v15 + 56) = v2;
    v16 = sub_10000BE5C((v15 + 32));
    sub_1000DD24C(v7, v16);
    v17 = showFunction(signature:_:)(0x7465732874696E69, 0xEF293A73676E6974, v15);
    v19 = v18;

    sub_1000F02C0(v7);
    v20 = sub_100008F6C(v17, v19, v28);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000F02C0(v7);
  }

  sub_1000DD24C(a1, v5);
  type metadata accessor for Depot(0);
  swift_allocObject();
  v21 = sub_1000DA1BC(v5);
  swift_beginAccess();
  v22 = atomic_fetch_add_explicit(dword_1003A6D68, 1u, memory_order_relaxed) + 1;
  swift_endAccess();
  type metadata accessor for Primer();
  v23 = swift_allocObject();
  sub_100004074(&qword_10039D800, &qword_1002BDC58);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = 0;
  *(v23 + 40) = v24;
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  type metadata accessor for Provider();
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v23 + 32) = v25;

  sub_1000F02C0(a1);
  return v23;
}

uint64_t sub_1000F02C0(uint64_t a1)
{
  v2 = type metadata accessor for Settings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t Primer.configuration.getter()
{
  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002C7060;
  *(v1 + 32) = 0xD00000000000001ALL;
  *(v1 + 40) = 0x800000010034D310;
  v2 = *(v0 + 24) + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
  v3 = type metadata accessor for Settings(0);
  *(v1 + 48) = *(v2 + v3[6]);
  *(v1 + 72) = &type metadata for Bool;
  *(v1 + 80) = 0xD000000000000020;
  *(v1 + 88) = 0x800000010034D330;
  *(v1 + 96) = *(v2 + v3[7]);
  *(v1 + 120) = &type metadata for Double;
  *(v1 + 128) = 0xD00000000000001BLL;
  *(v1 + 136) = 0x800000010034D360;
  *(v1 + 144) = *(v2 + v3[8]);
  *(v1 + 168) = &type metadata for Int;
  *(v1 + 176) = 0xD000000000000018;
  *(v1 + 184) = 0x800000010034D380;
  *(v1 + 192) = *(v2 + v3[9]);
  *(v1 + 216) = &type metadata for Int;
  *(v1 + 224) = 0xD000000000000029;
  *(v1 + 232) = 0x800000010034D3A0;
  *(v1 + 240) = *(v2 + v3[10]);
  *(v1 + 264) = &type metadata for Double;
  *(v1 + 272) = 0xD000000000000025;
  *(v1 + 280) = 0x800000010034D3D0;
  *(v1 + 288) = *(v2 + v3[11]);
  *(v1 + 312) = &type metadata for Double;
  *(v1 + 320) = 0xD000000000000025;
  *(v1 + 328) = 0x800000010034D400;
  *(v1 + 336) = *(v2 + v3[12]);
  *(v1 + 360) = &type metadata for Double;
  *(v1 + 368) = 0xD000000000000027;
  *(v1 + 376) = 0x800000010034D430;
  v4 = *(v2 + v3[13]);
  v5 = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  *(v1 + 384) = v4;
  *(v1 + 408) = v5;
  *(v1 + 416) = 0xD000000000000025;
  *(v1 + 424) = 0x800000010034D460;
  *(v1 + 432) = *(v2 + v3[14]);
  *(v1 + 456) = v5;
  *(v1 + 464) = 0xD00000000000001ALL;
  *(v1 + 472) = 0x800000010034D490;
  *(v1 + 480) = *(v2 + v3[15]);
  *(v1 + 504) = &type metadata for Bool;
  *(v1 + 512) = 0xD000000000000013;
  *(v1 + 520) = 0x800000010034D4B0;
  v6 = *(v2 + v3[16]);
  *(v1 + 552) = &type metadata for Bool;
  *(v1 + 528) = v6;
  *(v1 + 560) = 0x2E726F74696E6F4DLL;
  *(v1 + 568) = 0xEF64656C62616E45;
  v7 = *(v2 + v3[17]);
  *(v1 + 600) = &type metadata for Bool;
  *(v1 + 576) = v7;
  *(v1 + 608) = 0xD00000000000003CLL;
  *(v1 + 616) = 0x800000010034D4D0;
  v8 = *(v2 + v3[18]);
  *(v1 + 648) = &type metadata for Bool;
  *(v1 + 624) = v8;
  *(v1 + 656) = 0xD00000000000001DLL;
  *(v1 + 664) = 0x800000010034D510;
  v9 = *(v2 + v3[19]);
  *(v1 + 696) = &type metadata for Double;
  *(v1 + 672) = v9;
  *(v1 + 704) = 0xD00000000000002ALL;
  *(v1 + 712) = 0x800000010034D530;
  v10 = *(v2 + v3[20]);
  *(v1 + 744) = &type metadata for Int;
  *(v1 + 720) = v10;
  *(v1 + 752) = 0xD00000000000001DLL;
  *(v1 + 760) = 0x800000010034D560;
  v11 = *(v2 + v3[21]);
  *(v1 + 792) = &type metadata for Double;
  *(v1 + 768) = v11;

  v12 = sub_100182BA0(v1);
  swift_setDeallocating();
  sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  sub_1000E3850(v40);

  v13 = sub_10000BE18(v40, v41);
  v14 = type metadata accessor for URL();
  v39 = v14;
  v15 = sub_10000BE5C(&v38);
  v16 = *(*(v14 - 8) + 16);
  v16(v15, *v13 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v14);
  sub_100019D3C(&v38, v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10017F944(v37, 0x552E726576726553, 0xEA00000000006C72, isUniquelyReferenced_nonNull_native);
  v18 = sub_10000BE18(v40, v41);
  v39 = v14;
  v19 = sub_10000BE5C(&v38);
  v16(v19, *v18 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v14);
  sub_100019D3C(&v38, v37);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_10017F944(v37, 0xD000000000000017, 0x800000010034D580, v20);
  v21 = sub_10000BE18(v40, v41);
  v39 = v14;
  v22 = sub_10000BE5C(&v38);
  v16(v22, *v21 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v14);
  sub_100019D3C(&v38, v37);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_10017F944(v37, 0xD00000000000001ALL, 0x800000010034D5A0, v23);
  v24 = sub_10000BE18(v40, v41);
  v39 = v14;
  v25 = sub_10000BE5C(&v38);
  v16(v25, *v24 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v14);
  sub_100019D3C(&v38, v37);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_10017F944(v37, 0xD000000000000015, 0x800000010034D5C0, v26);
  sub_10000959C(v40);
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000403C(v27, qword_1003A2F50);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40[0] = v31;
    *v30 = 136315138;

    v32 = Dictionary.description.getter();
    v34 = v33;

    v35 = sub_100008F6C(v32, v34, v40);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Primer.configuration: %s", v30, 0xCu);
    sub_10000959C(v31);
  }

  return v12;
}

uint64_t Primer.getProvider()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  a1[3] = type metadata accessor for Provider();
  a1[4] = &off_100383D78;
  *a1 = v3;
}

uint64_t Primer.makeSecureChannel(owner:)@<X0>(uint64_t *x8_0@<X8>)
{

  sub_1000EBD84(v7);

  if (!v3)
  {
    v6 = sub_10000BE18(v7, v7[3]);
    sub_100139720((*v6 + 216), x8_0);
    return sub_10000959C(v7);
  }

  return result;
}

uint64_t Primer.getMPOCMonitorManagerPublic()@<X0>(uint64_t *a1@<X8>)
{

  sub_1000E31EC(v8);

  if (!v1)
  {
    v4 = v9;
    v5 = v10;
    v6 = sub_10000BE18(v8, v9);
    a1[3] = v4;
    a1[4] = *(v5 + 8);
    v7 = sub_10000BE5C(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
    return sub_10000959C(v8);
  }

  return result;
}

Swift::Void __swiftcall Primer.attach(isPOS:)(Swift::Bool isPOS)
{
  v2 = v1;
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2F50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = Primer.description.getter();
    v10 = sub_100008F6C(v8, v9, v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002C1660;
    *(v11 + 56) = &type metadata for Bool;
    *(v11 + 32) = isPOS;
    v12 = showFunction(signature:_:)(0x6928686361747461, 0xEE00293A534F5073, v11);
    v14 = v13;

    v15 = sub_100008F6C(v12, v14, v17);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v2 + 40);
  os_unfair_lock_lock((v16 + 24));
  sub_1000F0FDC((v16 + 16), isPOS, v2);

  os_unfair_lock_unlock((v16 + 24));
}

void sub_1000F0FDC(void *a1, char a2, uint64_t a3)
{
  v7 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v84 - v8;
  v10 = &unk_10039D000;
  v89 = *a1;
  if (!v89 && (a2 & 1) != 0 && (v11 = *(a3 + 24) + OBJC_IVAR____TtC14softposreaderd5Depot_settings, *(v11 + *(type metadata accessor for Settings(0) + 68)) == 1))
  {
    static TaskPriority.low.getter();
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;
    sub_10013C974(0, 0, v9, &unk_1002C7160, v14);

    sub_1000EA3F4(v87);
    v85 = a1;
    if (v3)
    {

      if (qword_10039D5D8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000403C(v46, qword_1003A2F50);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v87[0] = v50;
        *v49 = 136315138;
        v51 = Primer.description.getter();
        v53 = sub_100008F6C(v51, v52, v87);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "%s: Missing TimeTokenManager instance", v49, 0xCu);
        sub_10000959C(v50);
        v10 = &unk_10039D000;
      }
    }

    else
    {

      sub_10000BE18(v87, v88);
      sub_100148128();
      sub_10000959C(v87);
      if (qword_10039D5D8 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_10000403C(v76, qword_1003A2F50);

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v87[0] = v80;
        *v79 = 136315138;
        v81 = Primer.description.getter();
        v83 = sub_100008F6C(v81, v82, v87);

        *(v79 + 4) = v83;
        v10 = &unk_10039D000;
        _os_log_impl(&_mh_execute_header, v77, v78, "%s: TimeTokenManager started", v79, 0xCu);
        sub_10000959C(v80);
      }
    }

    sub_1000E31EC(v87);

    v54 = sub_10000BE18(v87, v88);
    sub_1000AE1FC(v54, v55, v56);
    sub_10000959C(v87);
    if (v10[187] != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000403C(v57, qword_1003A2F50);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v87[0] = v61;
      *v60 = 136315138;
      v62 = Primer.description.getter();
      v64 = sub_100008F6C(v62, v63, v87);

      *(v60 + 4) = v64;
      v10 = &unk_10039D000;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s: Background MPOC monitoring started", v60, 0xCu);
      sub_10000959C(v61);
    }

    if (v10[187] != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000403C(v65, qword_1003A2F50);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v87[0] = v69;
      *v68 = 136315138;
      v70 = Primer.description.getter();
      v72 = sub_100008F6C(v70, v71, v87);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "%s: Start certificate background renewal", v68, 0xCu);
      sub_10000959C(v69);
    }

    a1 = v85;

    sub_1000E7D9C(v87);

    v73 = sub_10000BE18(v87, v88);
    sub_100045E20(v73, v74, v75);
    sub_10000959C(v87);
  }

  else
  {
    if (qword_10039D5D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A2F50);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v86 = v3;
      v19 = a1;
      v20 = v18;
      v21 = swift_slowAlloc();
      v87[0] = v21;
      *v20 = 136315138;
      v22 = Primer.description.getter();
      v24 = sub_100008F6C(v22, v23, v87);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: Background MPOC monitoring is disabled", v20, 0xCu);
      sub_10000959C(v21);

      a1 = v19;
    }
  }

  v25 = v89 + 1;
  if (v89 == -1)
  {
    __break(1u);
    goto LABEL_53;
  }

  *a1 = v25;
  if (qword_10039D708 != -1)
  {
LABEL_53:
    swift_once();
  }

  v26 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v26 + 104) > 0 || *(v26 + 112) == 1)
  {
    [*(v26 + 88) wait];
  }

  v27 = *(v26 + 96);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
    goto LABEL_55;
  }

  *(v26 + 96) = v29;
  [*(v26 + 88) unlock];
  v30 = *(v26 + 80);
  [*(v26 + 88) lock];
  v31 = *(v26 + 96);
  v28 = __OFSUB__(v31, 1);
  v32 = v31 - 1;
  if (v28)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v26 + 96) = v32;
  if (!v32)
  {
    [*(v26 + 88) broadcast];
  }

  [*(v26 + 88) unlock];
  v28 = __OFADD__(v30, 1);
  v33 = v30 + 1;
  if (v28)
  {
    goto LABEL_56;
  }

  [*(v26 + 88) lock];
  v34 = *(v26 + 104);
  v28 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v28)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v26 + 104) = v35;
  while (*(v26 + 96) > 0 || *(v26 + 112) == 1)
  {
    [*(v26 + 88) wait];
  }

  v36 = *(v26 + 104);
  v28 = __OFSUB__(v36, 1);
  v37 = v36 - 1;
  if (!v28)
  {
    *(v26 + 104) = v37;
    *(v26 + 112) = 1;
    [*(v26 + 88) unlock];
    *(v26 + 80) = v33;
    [*(v26 + 88) lock];
    *(v26 + 112) = 0;
    [*(v26 + 88) broadcast];
    [*(v26 + 88) unlock];
    if (qword_10039D5D8 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_29:
  v38 = type metadata accessor for Logger();
  sub_10000403C(v38, qword_1003A2F50);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v87[0] = v42;
    *v41 = 136315394;
    v43 = Primer.description.getter();
    v45 = sub_100008F6C(v43, v44, v87);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s: Client attached. currentAttachCount: (%lu)", v41, 0x16u);
    sub_10000959C(v42);
  }
}

uint64_t sub_1000F1D10()
{
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A2F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Primer.attach() Validating SE pairing", v4, 2u);
  }

  type metadata accessor for StatusInspector();
  swift_initStackObject();
  sub_100090FC8();
  v6 = v5;
  if ((sub_100091684() & 1) == 0 && *(v6 + 34) == 1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1000EF4B4(v0 + 160);

      v7 = *(v0 + 184);
      if (v7)
      {
        v8 = *(v0 + 192);
        sub_100022438(v0 + 160, *(v0 + 184));
        (*(v8 + 88))(1, v7, v8);
      }
    }

    else
    {
      *(v0 + 192) = 0;
      *(v0 + 160) = 0u;
      *(v0 + 176) = 0u;
    }

    sub_10000BD44(v0 + 160, &qword_1003A30B0, &qword_1002C70F8);
  }

  if (*(v6 + 32) == 1)
  {
    *(v6 + 32) = 0;
    v9 = sub_100091050();
    if (v9)
    {
      v10 = v9;
      *(v0 + 144) = sub_100091444;
      *(v0 + 152) = 0;
      *(v0 + 112) = _NSConcreteStackBlock;
      *(v0 + 120) = 1107296256;
      *(v0 + 128) = sub_100003974;
      *(v0 + 136) = &unk_100383AB8;
      v11 = _Block_copy((v0 + 112));
      [v10 endSessionWithCompletion:v11];
      _Block_release(v11);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

Swift::Void __swiftcall Primer.detach(isPOS:)(Swift::Bool isPOS)
{
  v2 = v1;
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2F50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = Primer.description.getter();
    v10 = sub_100008F6C(v8, v9, v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002C1660;
    *(v11 + 56) = &type metadata for Bool;
    *(v11 + 32) = isPOS;
    v12 = showFunction(signature:_:)(0x6928686361746564, 0xEE00293A534F5073, v11);
    v14 = v13;

    v15 = sub_100008F6C(v12, v14, v18);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v2 + 40);
  __chkstk_darwin(v16);
  os_unfair_lock_lock((v17 + 24));
  sub_1000F2FB0((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));
}

void sub_1000F22B0(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A2F50);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v67 = a3;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v68[0] = v11;
    *v10 = 136315394;
    v12 = Primer.description.getter();
    v14 = sub_100008F6C(v12, v13, v68);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: Detaching client. currentAttachCount: (%lu)", v10, 0x16u);
    sub_10000959C(v11);
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_41;
  }

  *a1 = v6 - 1;
  if (qword_10039D708 != -1)
  {
LABEL_41:
    swift_once();
  }

  v15 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v15 + 104) > 0 || *(v15 + 112) == 1)
  {
    [*(v15 + 88) wait];
  }

  v16 = *(v15 + 96);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v15 + 96) = v18;
  [*(v15 + 88) unlock];
  v19 = *(v15 + 80);
  [*(v15 + 88) lock];
  v20 = *(v15 + 96);
  v17 = __OFSUB__(v20, 1);
  v21 = v20 - 1;
  if (v17)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v15 + 96) = v21;
  if (!v21)
  {
    [*(v15 + 88) broadcast];
  }

  [*(v15 + 88) unlock];
  v17 = __OFSUB__(v19, 1);
  v22 = v19 - 1;
  if (v17)
  {
    goto LABEL_44;
  }

  [*(v15 + 88) lock];
  v23 = *(v15 + 104);
  v17 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v17)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v15 + 104) = v24;
  while (*(v15 + 96) > 0 || *(v15 + 112) == 1)
  {
    [*(v15 + 88) wait];
  }

  v25 = *(v15 + 104);
  v17 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (!v17)
  {
    *(v15 + 104) = v26;
    *(v15 + 112) = 1;
    [*(v15 + 88) unlock];
    *(v15 + 80) = v22;
    [*(v15 + 88) lock];
    *(v15 + 112) = 0;
    [*(v15 + 88) broadcast];
    [*(v15 + 88) unlock];
    if (v6 == 1 && (v67 & 1) != 0 && (v27 = *(a2 + 24) + OBJC_IVAR____TtC14softposreaderd5Depot_settings, *(v27 + *(type metadata accessor for Settings(0) + 68)) == 1))
    {

      v28 = v70;
      sub_1000E31EC(v68);
      if (v28)
      {

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v68[0] = v32;
          *v31 = 136315138;
          v33 = Primer.description.getter();
          v35 = sub_100008F6C(v33, v34, v68);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "%s: Missing MPOCMonitorManager instance", v31, 0xCu);
          sub_10000959C(v32);
        }
      }

      else
      {

        v44 = sub_10000BE18(v68, v69);
        sub_1000AEF24(v44, v45, v46);
        sub_10000959C(v68);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v68[0] = v50;
          *v49 = 136315138;
          v51 = Primer.description.getter();
          v53 = sub_100008F6C(v51, v52, v68);

          *(v49 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v47, v48, "%s: Background MPOC monitoring stopped", v49, 0xCu);
          sub_10000959C(v50);
        }
      }

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v68[0] = v57;
        *v56 = 136315138;
        v58 = Primer.description.getter();
        v60 = sub_100008F6C(v58, v59, v68);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "%s: Stop certificate background renewal", v56, 0xCu);
        sub_10000959C(v57);
      }

      sub_1000E7D9C(v68);

      sub_10000BE18(v68, v69);

      dispatch thunk of DispatchWorkItem.cancel()();

      sub_10000959C(v68);

      sub_1000EA3F4(v68);

      v61 = sub_10000BE18(v68, v69);
      sub_100149100(v61, v62, v63);
      sub_10000959C(v68);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_32;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68[0] = v39;
      *v38 = 136315138;
      v64 = Primer.description.getter();
      v66 = sub_100008F6C(v64, v65, v68);

      *(v38 + 4) = v66;
      v43 = "%s: TimeTokenManager stopped";
    }

    else
    {

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v36, v37))
      {
LABEL_32:

        return;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68[0] = v39;
      *v38 = 136315138;
      v40 = Primer.description.getter();
      v42 = sub_100008F6C(v40, v41, v68);

      *(v38 + 4) = v42;
      v43 = "%s: Background MPOC monitoring is disabled";
    }

    _os_log_impl(&_mh_execute_header, v36, v37, v43, v38, 0xCu);
    sub_10000959C(v39);

    goto LABEL_32;
  }

LABEL_46:
  __break(1u);
}

uint64_t Primer.deinit()
{

  return v0;
}

uint64_t Primer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000F2DDC@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 32);
  a1[3] = type metadata accessor for Provider();
  a1[4] = &off_100383D78;
  *a1 = v3;
}

uint64_t sub_1000F2E30@<X0>(uint64_t *x8_0@<X8>)
{

  sub_1000EBD84(v7);

  if (!v3)
  {
    v6 = sub_10000BE18(v7, v7[3]);
    sub_100139720((*v6 + 216), x8_0);
    return sub_10000959C(v7);
  }

  return result;
}

uint64_t sub_1000F2EC8@<X0>(uint64_t *a1@<X8>)
{

  sub_1000E31EC(v8);

  if (!v1)
  {
    v4 = v9;
    v5 = v10;
    v6 = sub_10000BE18(v8, v9);
    a1[3] = v4;
    a1[4] = *(v5 + 8);
    v7 = sub_10000BE5C(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
    return sub_10000959C(v8);
  }

  return result;
}

uint64_t sub_1000F2FD0()
{
  sub_10000959C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000F305C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F3094()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F30D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000375E8;

  return sub_1000F1CF0(a1, v4, v5, v6);
}

uint64_t sub_1000F3188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F31A0()
{
  if (*(v0 + 40))
  {
    sub_10000959C((v0 + 16));
  }

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1000F3248@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000F5D0C(a1, a2, &String.hash(into:), sub_1000F6058), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000BDA4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1000F32D4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000F5F5C(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_10000BDA4(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void static Settings.default.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BackendSetting(0);
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Settings(0);
  v4 = __chkstk_darwin(v3);
  v5 = __chkstk_darwin(v4);
  v7 = &v19 - v6;
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  sub_1000F39E0(0xD000000000000017, 0x800000010034A1A0);
  sub_1000F5958(v9, a1);
  if (qword_10039D5E8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A3178);
  sub_1000F3C28(a1, v7, type metadata accessor for Settings);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = Settings.description.getter();
    v17 = v16;
    sub_1000F3C90(v7, type metadata accessor for Settings);
    v18 = sub_100008F6C(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "using settings: %s", v13, 0xCu);
    sub_10000959C(v14);
  }

  else
  {

    sub_1000F3C90(v7, type metadata accessor for Settings);
  }
}

uint64_t type metadata accessor for Settings(uint64_t a1)
{
  result = qword_1003A31E8;
  if (!qword_1003A31E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F3984()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3178);
  sub_10000403C(v0, qword_1003A3178);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

void sub_1000F39E0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = [v4 dictionaryRepresentation];

    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  if (qword_10039D5E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A3178);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    if (v6)
    {
      v12 = Dictionary.description.getter();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_100008F6C(v12, v14, &v16);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "user default: %s", v10, 0xCu);
    sub_10000959C(v11);
  }

  v17.value._rawValue = v6;
  Settings.init(dictionary:)(v17);
}

uint64_t sub_1000F3C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F3C90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Settings.description.getter()
{
  _StringGuts.grow(_:)(501);
  v1._countAndFlagsBits = 0x3D646E656B636162;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = sub_1000D87C0();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6761726F7473202CLL;
  v3._object = 0xEA00000000003D65;
  String.append(_:)(v3);
  v4 = type metadata accessor for Settings(0);
  v5._countAndFlagsBits = StorageSetting.description.getter(*(v0 + v4[5]), *(v0 + v4[5] + 8), *(v0 + v4[5] + 16));
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x646F72507369202CLL;
  v6._object = 0xEF3D6E6F69746375;
  String.append(_:)(v6);
  if (*(v0 + v4[6]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v4[6]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v10._object = 0x800000010034D650;
  String.append(_:)(v10);
  Double.write<A>(to:)();
  v11._countAndFlagsBits = 0xD000000000000025;
  v11._object = 0x800000010034D670;
  String.append(_:)(v11);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v13._object = 0x800000010034D6A0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000022;
  v15._object = 0x800000010034D6C0;
  String.append(_:)(v15);
  Double.write<A>(to:)();
  v16._object = 0x800000010034D6F0;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v16);
  Double.write<A>(to:)();
  v17._object = 0x800000010034D710;
  v17._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v17);
  Double.write<A>(to:)();
  v18._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0x800000010034D730;
  String.append(_:)(v18);
  v19._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v19);

  v20._object = 0x800000010034D750;
  v20._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0xD000000000000015;
  v22._object = 0x800000010034D770;
  String.append(_:)(v22);
  if (*(v0 + v4[15]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v0 + v4[15]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);

  v26._object = 0x800000010034D790;
  v26._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v26);
  if (*(v0 + v4[16]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v0 + v4[16]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  v29 = v28;
  String.append(_:)(*&v27);

  v30._countAndFlagsBits = 0xD000000000000011;
  v30._object = 0x800000010034D7B0;
  String.append(_:)(v30);
  if (*(v0 + v4[17]))
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (*(v0 + v4[17]))
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  v33 = v32;
  String.append(_:)(*&v31);

  v34._countAndFlagsBits = 0xD00000000000002ALL;
  v34._object = 0x800000010034D7D0;
  String.append(_:)(v34);
  if (*(v0 + v4[18]))
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (*(v0 + v4[18]))
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  v37 = v36;
  String.append(_:)(*&v35);

  v38._countAndFlagsBits = 0xD000000000000017;
  v38._object = 0x800000010034D800;
  String.append(_:)(v38);
  Double.write<A>(to:)();
  v39._object = 0x800000010034D820;
  v39._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v39);
  v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0xD00000000000001FLL;
  v41._object = 0x800000010034D840;
  String.append(_:)(v41);
  Double.write<A>(to:)();
  v42._countAndFlagsBits = 8200236;
  v42._object = 0xE300000000000000;
  String.append(_:)(v42);
  return 0;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Settings.init(dictionary:)(Swift::OpaquePointer_optional dictionary)
{
  v3 = v2;
  rawValue = dictionary.value._rawValue;
  v110 = v1;
  v5 = type metadata accessor for BackendSetting(0);
  v6 = __chkstk_darwin(v5 - 8);
  v111 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v93 - v8;
  if (qword_10039D5E8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A3178);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {

    if (rawValue)
    {
      goto LABEL_7;
    }

LABEL_12:
    v22 = 0uLL;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    goto LABEL_13;
  }

  v109 = v2;
  v13 = swift_slowAlloc();
  *&v118 = swift_slowAlloc();
  *v13 = 136315394;
  *(v13 + 4) = sub_100008F6C(0x73676E6974746553, 0xE800000000000000, &v118);
  *(v13 + 12) = 2080;
  sub_100004074(&qword_1003A6740, &unk_1002C2930);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002C1660;
  *(v14 + 56) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
  v15 = rawValue;
  if (!rawValue)
  {
    v15 = sub_100182BA0(_swiftEmptyArrayStorage);
  }

  *(v14 + 32) = v15;

  v16 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034D880, v14);
  v18 = v17;

  v19 = sub_100008F6C(v16, v18, &v118);

  *(v13 + 14) = v19;
  _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v13, 0x16u);
  swift_arrayDestroy();

  v3 = v109;
  if (!rawValue)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (!rawValue[2])
  {
LABEL_24:
    v25 = 0uLL;
    v116 = 0u;
    v117 = 0u;
    if (rawValue[2])
    {

      v26 = sub_1000F5D0C(0xD000000000000017, 0x800000010034D580, &String.hash(into:), sub_1000F6058);
      if (v27)
      {
        sub_10000BDA4(rawValue[7] + 32 * v26, &v114);

        sub_100019D3C(&v114, &v118);
        if (!*(&v117 + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v25 = 0uLL;
    }

    v114 = v25;
    v115 = v25;
    if (rawValue[2])
    {

      v28 = sub_1000F5D0C(0xD00000000000001ALL, 0x800000010034D5A0, &String.hash(into:), sub_1000F6058);
      if (v29)
      {
        sub_10000BDA4(rawValue[7] + 32 * v28, &v112);

        sub_100019D3C(&v112, &v118);
        goto LABEL_14;
      }
    }

    v22 = 0uLL;
    v113 = 0u;
    v112 = 0u;
    if (rawValue[2])
    {

      v30 = sub_1000F5D0C(0xD000000000000016, 0x800000010034D860, &String.hash(into:), sub_1000F6058);
      if (v31)
      {
        sub_10000BDA4(rawValue[7] + 32 * v30, &v118);

        if (*(&v113 + 1))
        {
          sub_10009E294(&v112);
        }

LABEL_14:
        if (*(&v115 + 1))
        {
          sub_10009E294(&v114);
        }

        if (!*(&v117 + 1))
        {
LABEL_18:
          sub_1000D9488(&v118, v9);
          if (!v3)
          {
            if (!rawValue)
            {
              goto LABEL_38;
            }

            goto LABEL_20;
          }

LABEL_39:

          return;
        }

LABEL_17:
        sub_10009E294(&v116);
        goto LABEL_18;
      }

      v22 = 0uLL;
    }

LABEL_13:
    v118 = v22;
    v119 = v22;
    goto LABEL_14;
  }

  v20 = sub_1000F5D0C(0x552E726576726553, 0xEA00000000006C72, &String.hash(into:), sub_1000F6058);
  if ((v21 & 1) == 0)
  {

    goto LABEL_24;
  }

  sub_10000BDA4(rawValue[7] + 32 * v20, &v116);

  sub_100019D3C(&v116, &v118);
  sub_1000D9488(&v118, v9);
  if (v3)
  {
    goto LABEL_39;
  }

LABEL_20:
  if (rawValue[2])
  {

    v23 = sub_1000F5D0C(0xD000000000000015, 0x800000010034D5C0, &String.hash(into:), sub_1000F6058);
    if (v24)
    {
      sub_10000BDA4(rawValue[7] + 32 * v23, &v118);

      goto LABEL_40;
    }
  }

LABEL_38:
  v118 = 0u;
  v119 = 0u;
LABEL_40:
  v32 = sub_1000F9194(&v118);
  v107 = v33;
  v108 = v34;
  v109 = v32;
  sub_1000F3C28(v9, v111, type metadata accessor for BackendSetting);
  if (!rawValue)
  {
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v118 = 0u;
    v119 = 0u;
    sub_10009E294(&v118);
    v38 = 0;
    v98 = 0;
    v105 = 0;
    v99 = 0;
    v118 = 0u;
    v119 = 0u;
    v39 = 2;
    v40 = 0.0;
    v41 = 1;
    v96 = 2;
    v100 = 1;
    v102 = 1;
    v42 = 0.0;
    v104 = 1;
    v37 = 2;
    v43 = 0.0;
    v106 = 1;
    v44 = 0.0;
    v103 = 1;
    v45 = 0.0;
    v101 = 1;
    v97 = 2;
    v95 = 2;
    v46 = 0.0;
    v94 = 1;
LABEL_122:
    sub_10009E294(&v118);
    v68 = 1;
    v69 = 0.0;
    goto LABEL_123;
  }

  if (rawValue[2])
  {

    v35 = sub_1000F5D0C(0xD00000000000001ALL, 0x800000010034D310, &String.hash(into:), sub_1000F6058);
    if (v36)
    {
      sub_10000BDA4(rawValue[7] + 32 * v35, &v118);

      if (swift_dynamicCast())
      {
        v37 = v116;
      }

      else
      {
        v37 = 2;
      }

      goto LABEL_50;
    }
  }

  v37 = 2;
LABEL_50:

  sub_1000F3248(0xD000000000000020, 0x800000010034D330, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v47 = swift_dynamicCast();
    v106 = v47 ^ 1;
    if (v47)
    {
      v43 = *&v116;
    }

    else
    {
      v43 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v43 = 0.0;
    v106 = 1;
  }

  sub_1000F3248(0xD00000000000001BLL, 0x800000010034D360, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v48 = swift_dynamicCast();
    v49 = v116;
    if (!v48)
    {
      v49 = 0;
    }

    v105 = v49;
    v50 = v48 ^ 1;
  }

  else
  {
    sub_10009E294(&v118);
    v105 = 0;
    v50 = 1;
  }

  v104 = v50;

  sub_1000F3248(0xD000000000000018, 0x800000010034D380, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v51 = swift_dynamicCast();
    v103 = v51 ^ 1;
    if (v51)
    {
      v44 = v116;
    }

    else
    {
      v44 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v44 = 0.0;
    v103 = 1;
  }

  sub_1000F3248(0xD000000000000029, 0x800000010034D3A0, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v52 = swift_dynamicCast();
    v102 = v52 ^ 1;
    if (v52)
    {
      v42 = *&v116;
    }

    else
    {
      v42 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v42 = 0.0;
    v102 = 1;
  }

  sub_1000F3248(0xD000000000000025, 0x800000010034D3D0, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v53 = swift_dynamicCast();
    v101 = v53 ^ 1;
    if (v53)
    {
      v45 = *&v116;
    }

    else
    {
      v45 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v45 = 0.0;
    v101 = 1;
  }

  sub_1000F3248(0xD000000000000025, 0x800000010034D400, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v54 = swift_dynamicCast();
    v100 = v54 ^ 1;
    if (v54)
    {
      v40 = *&v116;
    }

    else
    {
      v40 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v40 = 0.0;
    v100 = 1;
  }

  sub_1000F3248(0xD000000000000027, 0x800000010034D430, rawValue, &v118);

  if (*(&v119 + 1))
  {
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v55 = swift_dynamicCast();
    v56 = v116;
    if (!v55)
    {
      v56 = 0;
    }

    v99 = v56;
  }

  else
  {
    sub_10009E294(&v118);
    v99 = 0;
  }

  sub_1000F3248(0xD000000000000025, 0x800000010034D460, rawValue, &v118);

  if (*(&v119 + 1))
  {
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v57 = swift_dynamicCast();
    v58 = v116;
    if (!v57)
    {
      v58 = 0;
    }

    v98 = v58;
  }

  else
  {
    sub_10009E294(&v118);
    v98 = 0;
  }

  sub_1000F3248(0xD00000000000001ALL, 0x800000010034D490, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v59 = swift_dynamicCast();
    v60 = v116;
    if (!v59)
    {
      v60 = 2;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v60 = 2;
  }

  v97 = v60;

  sub_1000F3248(0xD000000000000013, 0x800000010034D4B0, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v61 = swift_dynamicCast();
    v62 = v116;
    if (!v61)
    {
      v62 = 2;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v62 = 2;
  }

  v96 = v62;

  sub_1000F3248(0x2E726F74696E6F4DLL, 0xEF64656C62616E45, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v63 = swift_dynamicCast();
    v64 = v116;
    if (!v63)
    {
      v64 = 2;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v64 = 2;
  }

  v95 = v64;

  sub_1000F3248(0xD00000000000003CLL, 0x800000010034D4D0, rawValue, &v118);

  if (*(&v119 + 1))
  {
    if (swift_dynamicCast())
    {
      v39 = v116;
    }

    else
    {
      v39 = 2;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v39 = 2;
  }

  sub_1000F3248(0xD00000000000001DLL, 0x800000010034D510, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v65 = swift_dynamicCast();
    v94 = v65 ^ 1;
    if (v65)
    {
      v46 = *&v116;
    }

    else
    {
      v46 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v118);
    v46 = 0.0;
    v94 = 1;
  }

  sub_1000F3248(0xD00000000000002ALL, 0x800000010034D530, rawValue, &v118);

  if (*(&v119 + 1))
  {
    v66 = swift_dynamicCast();
    if (v66)
    {
      v38 = v116;
    }

    else
    {
      v38 = 0;
    }

    v41 = v66 ^ 1;
  }

  else
  {
    sub_10009E294(&v118);
    v38 = 0;
    v41 = 1;
  }

  sub_1000F3248(0xD00000000000001DLL, 0x800000010034D560, rawValue, &v118);

  if (!*(&v119 + 1))
  {
    goto LABEL_122;
  }

  v67 = swift_dynamicCast();
  v68 = v67 ^ 1;
  if (v67)
  {
    v69 = *&v116;
  }

  else
  {
    v69 = 0.0;
  }

LABEL_123:
  v70 = v110;
  sub_1000F3C28(v111, v110, type metadata accessor for BackendSetting);
  v71 = (v37 == 2) | v37;
  v72 = type metadata accessor for Settings(0);
  v73 = v72;
  *(v70 + v72[6]) = v71 & 1;
  v74 = v70 + v72[5];
  v75 = v108;
  *v74 = v109;
  *(v74 + 8) = v75;
  *(v74 + 16) = v107;
  v76 = fmin(fmax(v42, 120.0), 300.0);
  if (v102)
  {
    v76 = 300.0;
  }

  *(v70 + v72[10]) = v76;
  v77 = fmin(fmax(v45, 120.0), 300.0);
  if (v101)
  {
    v77 = 300.0;
  }

  *(v70 + v72[11]) = v77;
  v78 = fmin(fmax(v40, 120.0), 86400.0);
  if (v100)
  {
    v78 = 86400.0;
  }

  *(v70 + v72[12]) = v78;
  v79 = 3600.0;
  if (v43 <= 3600.0)
  {
    v80 = v43;
  }

  else
  {
    v80 = 3600.0;
  }

  v81 = 5.0;
  if (v43 < 5.0)
  {
    v80 = 5.0;
  }

  if (!v106)
  {
    v79 = v80;
  }

  *(v70 + v72[7]) = v79;
  v82 = 86400;
  if (!v104)
  {
    v82 = v105;
  }

  *(v70 + v72[8]) = v82;
  if ((v103 & 1) == 0)
  {
    v84 = fmin(v44, 151200.0);
    if (v44 <= 12600.0)
    {
      v84 = 12600.0;
    }

    if (v84 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v84 < 9.22337204e18)
    {
      v83 = v84;
      goto LABEL_145;
    }

    __break(1u);
    return;
  }

  v83 = 81900;
LABEL_145:
  v85 = v110;
  *(v110 + v72[9]) = v83;
  v86 = 3600.0;
  if (v46 <= 3600.0)
  {
    v87 = v46;
  }

  else
  {
    v87 = 3600.0;
  }

  if (v46 < 5.0)
  {
    v87 = 5.0;
  }

  if (!v94)
  {
    v86 = v87;
  }

  *(v85 + v72[19]) = v86;
  v88 = 2592000;
  if (v38 >= 2592000)
  {
    v89 = 2592000;
  }

  else
  {
    v89 = v38;
  }

  if (v89 <= 172800)
  {
    v89 = 172800;
  }

  if (!v41)
  {
    v88 = v89;
  }

  *(v85 + v72[20]) = v88;
  if (v69 <= 30.0)
  {
    v90 = v69;
  }

  else
  {
    v90 = 30.0;
  }

  if (v69 >= 5.0)
  {
    v81 = v90;
  }

  if (v68)
  {
    v81 = 30.0;
  }

  *(v85 + v72[21]) = v81;
  v91 = v99;
  if (!v99)
  {
    v91 = _swiftEmptyArrayStorage;
  }

  *(v85 + v72[13]) = v91;
  if (v98)
  {
    v92 = v98;
  }

  else
  {
    v92 = _swiftEmptyArrayStorage;
  }

  sub_1000F3C90(v111, type metadata accessor for BackendSetting);
  sub_1000F3C90(v9, type metadata accessor for BackendSetting);
  *(v85 + v73[14]) = v92;
  *(v85 + v73[15]) = (v97 == 2) | v97 & 1;
  *(v85 + v73[16]) = (v96 == 2) | v96 & 1;
  *(v85 + v73[17]) = (v95 == 2) | v95 & 1;
  *(v85 + v73[18]) = (v39 == 2) | v39 & 1;
}

uint64_t sub_1000F5728@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (result)
      {
        v7 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = result;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = __DataStorage._bytes.getter();
    if (v11)
    {
      v12 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v12))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      result = __DataStorage._length.getter();
      if (result >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = result;
      }

      if (!v8)
      {
        goto LABEL_37;
      }

      if (!v11)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v8;
      if (v11 == v8)
      {
LABEL_27:
        v7 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v11, v15);
      v7 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v6)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v7 = result == 0;
LABEL_30:
      *a4 = v7;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v16 = a2;
  v17 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v18 = result;
  v11 = __DataStorage._bytes.getter();
  if (!v11)
  {
    goto LABEL_21;
  }

  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_34:
    __break(1u);
  }

  v11 += v16 - v19;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v17)
  {
    v15 = v17;
  }

  else
  {
    v15 = result;
  }

  if (!v18)
  {
    goto LABEL_38;
  }

  if (v11)
  {
    result = v18;
    if (v11 == v18)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000F5958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Settings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000F59C0(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_1000F5FEC(a1, v2);
}

unint64_t sub_1000F5A54(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000F5FEC(a1, v2);
}

unint64_t sub_1000F5AC4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000F67E0(a1, v4);
}

unint64_t sub_1000F5B08(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_1000F68A8(v1, v2);
}

unint64_t sub_1000F5B74(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1000F6918(v1, v2);
}

uint64_t sub_1000F5D0C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_1000F5DA0(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100041F9C(&qword_10039FB28, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000F77B0(a1, v2);
}

uint64_t sub_1000F5E50(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t sub_1000F5EEC(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_10017C8D8(v4, v1);
  v2 = Hasher._finalize()();

  return sub_1000F7EA8(v1, v2);
}

unint64_t sub_1000F5F5C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000F81D4(a1, v2);
}

unint64_t sub_1000F5FEC(uint64_t a1, uint64_t a2)
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

unint64_t sub_1000F6058(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000F6110(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x44496769666E6F63;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100345970;
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100345990;
          break;
        case 3:
          break;
        case 4:
          v8 = 0xD000000000000019;
          v7 = 0x80000001003459B0;
          break;
        case 5:
          v8 = 0x79636E6572727563;
          v7 = 0xEC00000065646F43;
          break;
        case 6:
          v8 = 0x696C6C6F50766D65;
          v7 = 0xEE0065707954676ELL;
          break;
        case 7:
          v8 = 0x646F43726F727265;
          v7 = 0xE900000000000065;
          break;
        case 8:
          v8 = 0x646E49726F727265;
          v7 = 0xEF6E6F6974616369;
          break;
        case 9:
          v8 = 0x746361466D726F66;
          goto LABEL_17;
        case 0xA:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100345A10;
          break;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100344F70;
          break;
        case 0xC:
          v8 = 0x44496C656E72656BLL;
          break;
        case 0xD:
          v8 = 0x664F7265626D756ELL;
          v9 = 1918985556;
          goto LABEL_23;
        case 0xE:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345A40;
          break;
        case 0xF:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100345A60;
          break;
        case 0x10:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345A80;
          break;
        case 0x11:
          v8 = 0x5041527472617473;
          v7 = 0xEC00000057535544;
          break;
        case 0x12:
          v8 = 0x6574726F70707573;
          v9 = 1145651556;
LABEL_23:
          v7 = v9 | 0xED00007300000000;
          break;
        case 0x13:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345AB0;
          break;
        case 0x14:
          v8 = 0x7272456B63617274;
LABEL_17:
          v7 = 0xEA0000000000726FLL;
          break;
        case 0x15:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100345AD0;
          break;
        default:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100345950;
          break;
      }

      v10 = 0xE800000000000000;
      v11 = 0x44496769666E6F63;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000100345970;
          if (v8 == 0xD000000000000010)
          {
            goto LABEL_68;
          }

          goto LABEL_69;
        case 2:
          v10 = 0x8000000100345990;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 3:
          goto LABEL_67;
        case 4:
          v10 = 0x80000001003459B0;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 5:
          v13 = 0x79636E6572727563;
          v14 = 1701080899;
          goto LABEL_54;
        case 6:
          v10 = 0xEE0065707954676ELL;
          if (v8 != 0x696C6C6F50766D65)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 7:
          v10 = 0xE900000000000065;
          if (v8 != 0x646F43726F727265)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 8:
          v11 = 0x646E49726F727265;
          v10 = 0xEF6E6F6974616369;
LABEL_67:
          if (v8 == v11)
          {
            goto LABEL_68;
          }

          goto LABEL_69;
        case 9:
          v12 = 0x746361466D726F66;
          goto LABEL_51;
        case 10:
          v10 = 0x8000000100345A10;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 11:
          v10 = 0x8000000100344F70;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 12:
          if (v8 != 0x44496C656E72656BLL)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 13:
          v15 = 0x664F7265626D756ELL;
          v16 = 1918985556;
          goto LABEL_62;
        case 14:
          v10 = 0x8000000100345A40;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 15:
          v10 = 0x8000000100345A60;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 16:
          v10 = 0x8000000100345A80;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 17:
          v13 = 0x5041527472617473;
          v14 = 1465079108;
LABEL_54:
          v10 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v13)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 18:
          v15 = 0x6574726F70707573;
          v16 = 1145651556;
LABEL_62:
          v10 = v16 | 0xED00007300000000;
          if (v8 != v15)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 19:
          v10 = 0x8000000100345AB0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 20:
          v12 = 0x7272456B63617274;
LABEL_51:
          v10 = 0xEA0000000000726FLL;
          if (v8 != v12)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 21:
          v10 = 0x8000000100345AD0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        default:
          v10 = 0x8000000100345950;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_69;
          }

LABEL_68:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_69:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000F67E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000F87E0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001A124(v8);
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

unint64_t sub_1000F68A8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000F6918(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000018;
          v8 = 0x8000000100344F20;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0x7A69536863746142;
          }

          else
          {
            v7 = 0x646F43726F727245;
          }

          v8 = 0xE900000000000065;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x746942746E657645;
        }

        else
        {
          v7 = 0xD000000000000011;
        }

        if (v6 == 1)
        {
          v8 = 0xEB0000000070616DLL;
        }

        else
        {
          v8 = 0x8000000100344F00;
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1701080909;
      }

      v9 = 0xD000000000000018;
      v10 = 0x7A69536863746142;
      if (v5 != 4)
      {
        v10 = 0x646F43726F727245;
      }

      if (v5 != 3)
      {
        v9 = v10;
      }

      v11 = 0xE900000000000065;
      if (v5 == 3)
      {
        v11 = 0x8000000100344F20;
      }

      v12 = 0x746942746E657645;
      if (v5 != 1)
      {
        v12 = 0xD000000000000011;
      }

      v13 = 0xEB0000000070616DLL;
      if (v5 != 1)
      {
        v13 = 0x8000000100344F00;
      }

      if (!v5)
      {
        v12 = 1701080909;
        v13 = 0xE400000000000000;
      }

      v14 = v5 <= 2 ? v12 : v9;
      v15 = v5 <= 2 ? v13 : v11;
      if (v7 == v14 && v8 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000F6B58(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000065;
      v8 = 0x646F43726F727245;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100344F90;
          break;
        case 2:
          break;
        case 3:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100344FB0;
          break;
        case 4:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100344FD0;
          break;
        case 5:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100344FF0;
          break;
        case 6:
          v8 = 0x6F436C61626F6C47;
          v7 = 0xEE0044496769666ELL;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100344D50;
          break;
        case 8:
          v8 = 0x4E73736150534156;
          v7 = 0xEA00000000006D75;
          break;
        case 9:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000100345020;
          break;
        case 0xA:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100345040;
          break;
        case 0xB:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100345060;
          break;
        case 0xC:
          v8 = 0x746361466D726F46;
          goto LABEL_29;
        case 0xD:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345090;
          break;
        case 0xE:
          v7 = 0xE300000000000000;
          v8 = 5396052;
          break;
        case 0xF:
          v8 = 0x646E49726F727245;
          v7 = 0xEF6E6F6974616369;
          break;
        case 0x10:
          v8 = 0xD000000000000013;
          v7 = 0x80000001003450C0;
          break;
        case 0x11:
          v8 = 0xD000000000000012;
          v7 = 0x80000001003450E0;
          break;
        case 0x12:
          v8 = 0x5274756F656D6954;
          v7 = 0xEE00534156646165;
          break;
        case 0x13:
          v8 = 0x7272456B63617254;
LABEL_29:
          v7 = 0xEA0000000000726FLL;
          break;
        case 0x14:
          v8 = 0x43676E6972616554;
          v7 = 0xEC000000746E756FLL;
          break;
        case 0x15:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000100345120;
          break;
        case 0x16:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100345140;
          break;
        case 0x17:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345160;
          break;
        case 0x18:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100345180;
          break;
        case 0x19:
          v8 = 0xD000000000000012;
          v7 = 0x80000001003451A0;
          break;
        case 0x1A:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001003451C0;
          break;
        case 0x1B:
          v8 = 0xD000000000000013;
          v7 = 0x80000001003451E0;
          break;
        case 0x1C:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100345200;
          break;
        default:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100344F70;
          break;
      }

      v9 = 0x646F43726F727245;
      v10 = 0xE900000000000065;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000100344F90;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_88;
          }

          goto LABEL_89;
        case 2:
          goto LABEL_87;
        case 3:
          v10 = 0x8000000100344FB0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 4:
          v10 = 0x8000000100344FD0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 5:
          v10 = 0x8000000100344FF0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 6:
          v12 = 0x6F436C61626F6C47;
          v13 = 0x44496769666ELL;
          goto LABEL_73;
        case 7:
          v10 = 0x8000000100344D50;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 8:
          v10 = 0xEA00000000006D75;
          if (v8 != 0x4E73736150534156)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 9:
          v10 = 0x8000000100345020;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 10:
          v10 = 0x8000000100345040;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 11:
          v10 = 0x8000000100345060;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 12:
          v11 = 0x746361466D726F46;
          goto LABEL_82;
        case 13:
          v10 = 0x8000000100345090;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 14:
          v10 = 0xE300000000000000;
          if (v8 != 5396052)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 15:
          v10 = 0xEF6E6F6974616369;
          if (v8 != 0x646E49726F727245)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 16:
          v10 = 0x80000001003450C0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 17:
          v10 = 0x80000001003450E0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 18:
          v12 = 0x5274756F656D6954;
          v13 = 0x534156646165;
LABEL_73:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v12)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 19:
          v11 = 0x7272456B63617254;
LABEL_82:
          v10 = 0xEA0000000000726FLL;
          if (v8 != v11)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 20:
          v10 = 0xEC000000746E756FLL;
          if (v8 != 0x43676E6972616554)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 21:
          v10 = 0x8000000100345120;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 22:
          v10 = 0x8000000100345140;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 23:
          v10 = 0x8000000100345160;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 24:
          v10 = 0x8000000100345180;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 25:
          v10 = 0x80000001003451A0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 26:
          v10 = 0x80000001003451C0;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 27:
          v10 = 0x80000001003451E0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 28:
          v9 = 0xD000000000000012;
          v10 = 0x8000000100345200;
LABEL_87:
          if (v8 == v9)
          {
            goto LABEL_88;
          }

          goto LABEL_89;
        default:
          v10 = 0x8000000100344F70;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

LABEL_88:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_89:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000F73B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_1000094F4(v17, v16);
          sub_1000F5728(v45, v9, v8, &v44);
          sub_100009548(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1000094F4(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1000094F4(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1000F5728(v34, a1, a2, v45);
        sub_100009548(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_1000094F4(v17, v16);
      sub_1000F5728(v45, v9, v8, &v44);
      sub_100009548(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1000F77B0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100041F9C(&qword_1003A3268, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1000F795C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00006E6F697372;
      v8 = 0x655674656C707041;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100344D70;
          break;
        case 3:
          v8 = 0x7250646564616F4CLL;
          v7 = 0xED0000656C69666FLL;
          break;
        case 4:
          v8 = 0x646F43726F727245;
          v7 = 0xE900000000000065;
          break;
        case 5:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100344DA0;
          break;
        case 6:
          v8 = 0x637465464D414C53;
          v7 = 0xEF73757461745368;
          break;
        case 7:
          v8 = 0x7245726576726553;
          v7 = 0xEF65646F43726F72;
          break;
        case 8:
          v8 = 0x654E6C656E72654BLL;
          v9 = 1684366437;
          goto LABEL_17;
        case 9:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100344DE0;
          break;
        case 0xA:
          v8 = 0x4E656C69666F7250;
          v7 = 0xED00006465646565;
          break;
        case 0xB:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100344E10;
          break;
        case 0xC:
          v8 = 0x5374736575716552;
          v7 = 0xED00007375746174;
          break;
        case 0xD:
          v8 = 0x726F727245464153;
          v9 = 1701080899;
LABEL_17:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100344D50;
          break;
      }

      v10 = 0x655674656C707041;
      v11 = 0xED00006E6F697372;
      switch(a1)
      {
        case 1:
          goto LABEL_41;
        case 2:
          v11 = 0x8000000100344D70;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v12 = 0x7250646564616F4CLL;
          v13 = 0x656C69666FLL;
          goto LABEL_31;
        case 4:
          v11 = 0xE900000000000065;
          if (v8 != 0x646F43726F727245)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v11 = 0x8000000100344DA0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v11 = 0xEF73757461745368;
          if (v8 != 0x637465464D414C53)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v11 = 0xEF65646F43726F72;
          if (v8 != 0x7245726576726553)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v14 = 0x654E6C656E72654BLL;
          v15 = 1684366437;
          goto LABEL_47;
        case 9:
          v11 = 0x8000000100344DE0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0x4E656C69666F7250;
          v11 = 0xED00006465646565;
LABEL_41:
          if (v8 == v10)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 11:
          v11 = 0x8000000100344E10;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v12 = 0x5374736575716552;
          v13 = 0x7375746174;
LABEL_31:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v12)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v14 = 0x726F727245464153;
          v15 = 1701080899;
LABEL_47:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v14)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
          v11 = 0x8000000100344D50;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_43:
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000F7EA8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 <= 3)
      {
        v9 = 0xD000000000000019;
        if (v6 == 2)
        {
          v10 = 0x80000001003463F0;
        }

        else
        {
          v9 = 0x74536D6574737973;
          v10 = 0xEC00000073757461;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0x666E6F4365726F63;
        }

        else
        {
          v11 = 0x736B706163;
        }

        if (v6)
        {
          v12 = 0xEC00000064496769;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v6 <= 1)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (v6 <= 1)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0xD000000000000013;
        }

        else
        {
          v7 = 0xD000000000000018;
        }

        if (v6 == 4)
        {
          v8 = 0x8000000100346420;
        }

        else
        {
          v8 = 0x8000000100346440;
        }
      }

      else if (v6 == 6)
      {
        v7 = 0x6572617764726168;
        v8 = 0xEC00000065707954;
      }

      else if (v6 == 7)
      {
        v7 = 0x4965746174536573;
        v8 = 0xEB000000006F666ELL;
      }

      else
      {
        v7 = 0x6F436C61626F6C67;
        v8 = 0xEE0064496769666ELL;
      }

      v13 = 0x6F436C61626F6C67;
      if (v5 == 7)
      {
        v13 = 0x4965746174536573;
      }

      v14 = 0xEE0064496769666ELL;
      if (v5 == 7)
      {
        v14 = 0xEB000000006F666ELL;
      }

      if (v5 == 6)
      {
        v13 = 0x6572617764726168;
        v14 = 0xEC00000065707954;
      }

      v15 = 0xD000000000000018;
      if (v5 == 4)
      {
        v15 = 0xD000000000000013;
      }

      v16 = 0x8000000100346440;
      if (v5 == 4)
      {
        v16 = 0x8000000100346420;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0xD000000000000019;
      if (v5 == 2)
      {
        v18 = 0x80000001003463F0;
      }

      else
      {
        v17 = 0x74536D6574737973;
        v18 = 0xEC00000073757461;
      }

      if (v5)
      {
        v19 = 0x666E6F4365726F63;
      }

      else
      {
        v19 = 0x736B706163;
      }

      if (v5)
      {
        v20 = 0xEC00000064496769;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_1000F81D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

BOOL _s14softposreaderd8SettingsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1000D9AD4(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Settings(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = (a2 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  if (!v8)
  {
    if (v12)
    {
      return 0;
    }

LABEL_7:
    if (v7 != v10 || v6 != v11)
    {
      v14 = v4;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_34;
  }

  if (v8 == 1)
  {
    if (v12 != 1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v7 | v6)
  {
    if (v7 ^ 1 | v6)
    {
      if (v12 != 2)
      {
        return 0;
      }

      if (v10 != 2 || v11 != 0)
      {
        return 0;
      }
    }

    else
    {
      if (v12 != 2)
      {
        return 0;
      }

      if (v10 != 1 || v11 != 0)
      {
        return 0;
      }
    }
  }

  else if (v12 != 2 || (v11 | v10) != 0)
  {
    return 0;
  }

LABEL_34:
  if (*(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]))
  {
    v19 = v4;
    if ((sub_10015140C(*(a1 + v4[13]), *(a2 + v4[13])) & 1) != 0 && (sub_10015140C(*(a1 + v19[14]), *(a2 + v19[14])) & 1) != 0 && *(a1 + v19[15]) == *(a2 + v19[15]) && *(a1 + v19[16]) == *(a2 + v19[16]) && *(a1 + v19[17]) == *(a2 + v19[17]) && *(a1 + v19[18]) == *(a2 + v19[18]) && *(a1 + v19[19]) == *(a2 + v19[19]) && *(a1 + v19[20]) == *(a2 + v19[20]))
    {
      return *(a1 + v19[21]) == *(a2 + v19[21]);
    }
  }

  return 0;
}

uint64_t sub_1000F852C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BackendSetting(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000F85FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BackendSetting(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

void sub_1000F86B4(uint64_t a1)
{
  type metadata accessor for BackendSetting(319);
  if (v1 <= 0x3F)
  {
    sub_1000F8790();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F8790()
{
  if (!qword_1003A31F8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003A31F8);
    }
  }
}

uint64_t static StorageSetting.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 2 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 0;
}

uint64_t StorageSetting.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = 0x7261726F706D6574;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = 0x6E6F697461636F6CLL;
LABEL_5:
    v6 = v3;
    String.append(_:)(*&a1);
    return v6;
  }

  if (a1 ^ 1 | a2)
  {
    v5 = 0x656C6974616C6F76;
  }

  else
  {
    v5 = 0x7261726F706D6574;
  }

  if (a1 | a2)
  {
    return v5;
  }

  else
  {
    return 0x3A746C7561666564;
  }
}

unint64_t sub_1000F8A04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1000F8AF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v9 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(v4 | v5))
    {
      return v9 == 2 && (v8 | v7) == 0;
    }

    if (v4 ^ 1 | v5)
    {
      if (v9 != 2 || v7 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 2 || v7 != 1)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }
  }

  else if (!v9)
  {
LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1000F8BA8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1000F8BC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000F8C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1000F8C50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000F8C78(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

unint64_t sub_1000F8CE4(uint64_t a1, unint64_t a2)
{
  sub_1000F8A04(58, 0xE100000000000000, a1, a2);
  if (v4)
  {
    v5 = Substring.init(_:)();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    result = 15;
  }

  else
  {
    v5 = String.subscript.getter();
    v7 = v13;
    v9 = v14;
    v11 = v15;

    result = String.index(after:)();
  }

  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v16 >= result >> 14)
  {
    v17 = String.subscript.getter();
    v19 = v18;
    v21 = v20;
    v38[1] = v11;

    v41 = v9;
    v39 = 47;
    v40 = 0xE100000000000000;
    __chkstk_darwin(v22);
    v37[2] = &v39;
    v23 = sub_100187974(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002956C, v37, v17, v19, v21, v38);
    v24 = v5;
    v25 = v41;
    if (sub_1000F8C78(0x746C7561666564, 0xE700000000000000, v24, v7, v41, v11))
    {

      swift_bridgeObjectRelease_n();
      return 0;
    }

    if (sub_1000F8C78(0x7261726F706D6574, 0xE900000000000079, v24, v7, v25, v11))
    {
      swift_bridgeObjectRelease_n();
      v26 = *(v23 + 2);
      if (v26 != 1)
      {
        if (!v26)
        {

          return 1;
        }

        v30 = "invalid location name";
        v31 = 0xD000000000000016;
LABEL_21:
        v32 = (v30 | 0x8000000000000000);
LABEL_23:
        sub_100020384(7001, v31, v32, 0);
        return swift_willThrow();
      }
    }

    else
    {
      if (sub_1000F8C78(0x656C6974616C6F76, 0xE800000000000000, v24, v7, v25, v11))
      {

        swift_bridgeObjectRelease_n();
        return 2;
      }

      v27 = sub_1000F8C78(0x6E6F697461636F6CLL, 0xE800000000000000, v24, v7, v25, v11);

      if ((v27 & 1) == 0)
      {

        v39 = 0;
        v40 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v39 = 0xD000000000000014;
        v40 = 0x800000010034D8C0;
        v33 = static String._fromSubstring(_:)();
        v35 = v34;

        v36._countAndFlagsBits = v33;
        v36._object = v35;
        String.append(_:)(v36);

        v31 = v39;
        v32 = v40;
        goto LABEL_23;
      }

      v28 = *(v23 + 2);
      if (v28 != 1)
      {
        if (!v28)
        {

          return 0;
        }

        v30 = "unsupported scheme: ";
        v31 = 0xD000000000000015;
        goto LABEL_21;
      }
    }

    v29 = static String._fromSubstring(_:)();

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1000F9194(uint64_t a1)
{
  v3 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v3 - 8);
  v5 = (&v17 - v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 24))
  {
    v5 = 0;
LABEL_16:
    sub_10000BD44(a1, &qword_10039E248, &qword_1002C23D0);
    return v5;
  }

  sub_100022380(a1, &v19);
  if (v21)
  {
    v10 = swift_dynamicCast();
    (*(v7 + 56))(v5, v10 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      v5 = v9;
      v11 = URL.absoluteString.getter();
      v13 = sub_1000F8CE4(v11, v12);
      if (!v1)
      {
        v5 = v13;
      }

      (*(v7 + 8))(v9, v6);
      goto LABEL_16;
    }
  }

  else
  {
    sub_10000BD44(&v19, &qword_10039E248, &qword_1002C23D0);
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  sub_10000BD44(v5, &qword_1003A03D0, &unk_1002C3D50);
  sub_100022380(a1, &v19);
  if (v21)
  {
    if (swift_dynamicCast())
    {
      v14 = sub_1000F8CE4(v17, v18);
      if (!v1)
      {
        v5 = v14;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_10000BD44(&v19, &qword_10039E248, &qword_1002C23D0);
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v17 = v19;
  v18 = v20;
  v15._object = 0x800000010034D8A0;
  v5 = &v17;
  v15._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v15);
  result = sub_100022380(a1, &v19);
  if (v21)
  {
    _print_unlocked<A, B>(_:_:)();
    sub_10000959C(&v19);
    sub_100020384(7001, v17, v18, 0);
    swift_willThrow();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F9548()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3270);
  sub_10000403C(v0, qword_1003A3270);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000F95A4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10039D5F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A3270);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v25);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x64616552656B616DLL, 0xEC00000029287265, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v25);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_10011362C(v13);
  if (!v1)
  {
    v15 = result;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_100008F6C(v19, v20, &v25);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = showFunction(signature:_:)(0x64616552656B616DLL, 0xEC00000029287265, _swiftEmptyArrayStorage);
      v24 = sub_100008F6C(v22, v23, &v25);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s: done", v18, 0x16u);
      swift_arrayDestroy();
    }

    result = type metadata accessor for Reader();
    a1[3] = result;
    a1[4] = &off_100384000;
    *a1 = v15;
  }

  return result;
}

uint64_t sub_1000F98FC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10039D5F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A3270);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v25);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034D960, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v25);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000628DC(v13);
  if (!v1)
  {
    v15 = result;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_100008F6C(v19, v20, &v25);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034D960, _swiftEmptyArrayStorage);
      v24 = sub_100008F6C(v22, v23, &v25);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s: done", v18, 0x16u);
      swift_arrayDestroy();
    }

    result = type metadata accessor for Configurator();
    a1[3] = result;
    a1[4] = &off_100381560;
    *a1 = v15;
  }

  return result;
}

uint64_t sub_1000F9C4C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10039D5F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A3270);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v25);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x696E6F4D656B616DLL, 0xED00002928726F74, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v25);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000C3DF4(v13);
  if (!v1)
  {
    v15 = result;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_100008F6C(v19, v20, &v25);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = showFunction(signature:_:)(0x696E6F4D656B616DLL, 0xED00002928726F74, _swiftEmptyArrayStorage);
      v24 = sub_100008F6C(v22, v23, &v25);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s: done", v18, 0x16u);
      swift_arrayDestroy();
    }

    result = type metadata accessor for Monitor();
    a1[3] = result;
    a1[4] = &off_100382EB8;
    *a1 = v15;
  }

  return result;
}

uint64_t sub_1000F9FAC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10039D5F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A3270);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v25);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000013, 0x800000010034D940, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v25);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000D6150(v13);
  if (!v1)
  {
    v15 = result;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_100008F6C(v19, v20, &v25);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = showFunction(signature:_:)(0xD000000000000013, 0x800000010034D940, _swiftEmptyArrayStorage);
      v24 = sub_100008F6C(v22, v23, &v25);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s: done", v18, 0x16u);
      swift_arrayDestroy();
    }

    result = type metadata accessor for DefaultPINController();
    a1[3] = result;
    a1[4] = &off_100383118;
    *a1 = v15;
  }

  return result;
}

uint64_t sub_1000FA2FC()
{

  return swift_deallocClassInstance();
}

char *sub_1000FA3E8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TLV();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v43 - v7;
  v9 = type metadata accessor for TLVTag();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static TLV.decode(from:)();
  v46 = v8;
  v47 = v6;
  v54 = v13;
  static TLVTag.fileControlInformationTemplate.getter();
  sub_100004074(&qword_1003A2700, &qword_1002C16D0);
  sub_1000CCFF4();
  v14 = Collection<>.filter(tag:)();
  (*(v10 + 8))(v12, v9);

  v16 = *(v14 + 16);
  if (v16)
  {
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v19 = *(v17 + 64);
    v43[1] = v14;
    v20 = v14 + ((v19 + 32) & ~v19);
    v50 = *(v17 + 56);
    v51 = v18;
    v49 = (v17 + 16);
    v21 = _swiftEmptyArrayStorage;
    v48 = (v17 - 8);
    *&v15 = 136446210;
    v44 = v15;
    v23 = v46;
    v22 = v47;
    v45 = v17;
    do
    {
      v53 = v16;
      v51(v23, v20, v2);
      v33 = TLV.value.getter();
      v35 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10004D810(0, *(v21 + 2) + 1, 1, v21);
      }

      v37 = *(v21 + 2);
      v36 = *(v21 + 3);
      if (v37 >= v36 >> 1)
      {
        v21 = sub_10004D810((v36 > 1), v37 + 1, 1, v21);
      }

      *(v21 + 2) = v37 + 1;
      v52 = v21;
      v38 = &v21[16 * v37];
      *(v38 + 4) = v33;
      *(v38 + 5) = v35;
      if (qword_10039D5F8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000403C(v39, qword_1003A3348);
      (*v49)(v22, v23, v2);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v54 = v25;
        *v24 = v44;
        v26 = TLV.value.getter();
        v27 = v2;
        v29 = v28;
        v30 = Data.hexString()();
        v31 = v29;
        v2 = v27;
        v22 = v47;
        sub_100009548(v26, v31);
        (*v48)(v22, v2);
        v32 = sub_100008F6C(v30._countAndFlagsBits, v30._object, &v54);

        *(v24 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v40, v41, "PPSE Response: %{public}s", v24, 0xCu);
        sub_10000959C(v25);
        v23 = v46;
      }

      else
      {

        (*v48)(v22, v2);
      }

      v20 += v50;
      v21 = v52;
      v16 = v53 - 1;
    }

    while (v53 != 1);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v21;
}

uint64_t sub_1000FA9C0(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v4 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_27;
  }

  v4 = HIDWORD(result) - result;
LABEL_11:
  v7 = static TLVTag.TAG_DF8129_LENGTH.getter();
  if (v4 != v7)
  {
    if (qword_10039D5F8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000403C(v8, qword_1003A3348);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_100008F6C(0xD000000000000017, 0x800000010034D9B0, &v18);
      *(v11 + 12) = 2048;
      *(v11 + 14) = static TLVTag.TAG_DF8129_LENGTH.getter();
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - OPS length is not %ld", v11, 0x16u);
      sub_10000959C(v12);
    }

    v13 = 0;
    return v13 | ((v4 != v7) << 8);
  }

  if (v3 > 1)
  {
    v14 = 0;
    if (v3 == 2)
    {
      v14 = *(v2 + 16);
    }
  }

  else if (v3)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  v15 = static TLVTag.OFFSET_OPS_STATUS.getter();
  v16 = __OFADD__(v14, v15);
  result = v14 + v15;
  if (!v16)
  {
    v17 = Data._Representation.subscript.getter();
    v13 = static TLVTag.OPS_STATUS_MASK.getter() & v17;
    return v13 | ((v4 != v7) << 8);
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000FABDC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return Data._Representation.subscript.getter();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000FAC48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = a2 >> 32;
    }

    else
    {
      v6 = BYTE6(a3);
    }

    if (v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 >= result && v6 >= v7)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FACA8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3348);
  sub_10000403C(v0, qword_1003A3348);
  sub_100023B24();
  return static SPRLogger.reader.getter();
}

uint64_t sub_1000FAD04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0xF000000000000000;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v1 + 16 * v2 + 32);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      *(a1 + 1) = v4;
      return sub_1000094F4(v4, *(&v4 + 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FAD88(uint64_t a1, unint64_t a2)
{
  result = sub_10011AA24(a1, a2);
  if ((result & 0x100) != 0 || !result)
  {
    if (qword_10039D5F8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_18;
    }

LABEL_15:
    LODWORD(v8) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v8 = v8;
    goto LABEL_18;
  }

  if (v7 == 2)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = __OFSUB__(v14, v15);
    v8 = v14 - v15;
    if (v16)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_18:
  v17 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  v3 = result;
  v2 = v17 / 5;
  if (v17 / 5 >= result)
  {
    goto LABEL_24;
  }

  if (qword_10039D5F8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A3348);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v3;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v19, v20, "%ld errors reported but only %ld described", v21, 0x16u);
    }

LABEL_24:
    if (v17 >= 5)
    {
      break;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  v22 = v2 - 1;
  v13 = _swiftEmptyArrayStorage;
  v23 = 6;
  while (1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v25 = *(a1 + 16);
        v24 = *(a1 + 24);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }
    }

    else
    {
      v24 = a1 >> 32;
      v25 = a1;
      if (!v7)
      {
        v25 = 0;
        v24 = BYTE6(a2);
      }
    }

    if (v23 - 1 < v25)
    {
      break;
    }

    if (v23 - 1 >= v24)
    {
      goto LABEL_42;
    }

    v26 = Data._Representation.subscript.getter();
    v28 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10004D810(0, *(v13 + 2) + 1, 1, v13);
    }

    v30 = *(v13 + 2);
    v29 = *(v13 + 3);
    if (v30 >= v29 >> 1)
    {
      v13 = sub_10004D810((v29 > 1), v30 + 1, 1, v13);
    }

    *(v13 + 2) = v30 + 1;
    v31 = &v13[16 * v30];
    *(v31 + 4) = v26;
    *(v31 + 5) = v28;
    if (!v22)
    {
      return v13;
    }

    v23 += 5;
    --v22;
    if (v23 == 0x8000000000000003)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_7:
  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A3348);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "empty Track Error", v12, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000FB10C(uint64_t a1)
{
  v61 = type metadata accessor for Data.Endianness();
  v2 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = 0;
  v68 = 0;
  v66 = a1;

  sub_1000FAD04(v64);
  v4 = v65;
  if (v65 >> 60 == 15)
  {
LABEL_2:

    return 0;
  }

  v6 = 0;
  v8 = v64[0];
  v7 = v64[1];
  v54 = "KERNEL_UNKNOWN, ";
  v55 = "ERROR_HCI_TIMEOUT_ERROR";
  v53 = "statusFromOPS(opsData:)";
  v59 = enum case for Data.Endianness.bigEndian(_:);
  v57 = (v2 + 8);
  v58 = (v2 + 104);
  *(&v9 + 1) = 2;
  v62 = xmmword_1002C1660;
  *&v9 = 136446210;
  v56 = v9;
  while (1)
  {
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v64, "Track Error #");
    HIWORD(v64[1]) = -4864;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v63 = v8 + 1;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 8250;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12 = v64[0];
    v13 = v64[1];
    if (v6)
    {
    }

    v69 = v12;
    v70 = v13;
    v14 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      v15 = 0;
      if (v14 == 2)
      {
        v15 = *(v7 + 16);
      }
    }

    else if (v14)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0;
    }

    v16 = Data._Representation.subscript.getter();
    if (v16 > 5)
    {
      if (v16 > 11)
      {
        if (v16 == 12)
        {
          swift_beginAccess();
          v17 = 0x202C495055;
          v20 = 0xE500000000000000;
          goto LABEL_34;
        }

        if (v16 == 14)
        {
          swift_beginAccess();
          v19 = 2020505932;
          goto LABEL_27;
        }
      }

      else
      {
        if (v16 == 6)
        {
          swift_beginAccess();
          v17 = 0x7265766F63736944;
          v20 = 0xEA0000000000202CLL;
          goto LABEL_34;
        }

        if (v16 == 9)
        {
          swift_beginAccess();
          v19 = 1163023696;
LABEL_27:
          v17 = v19 & 0xFFFF0000FFFFFFFFLL | 0x202C00000000;
          v20 = 0xE600000000000000;
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          swift_beginAccess();
          v20 = v55 | 0x8000000000000000;
          v17 = 0xD000000000000010;
          goto LABEL_34;
        }

        swift_beginAccess();
        v17 = 0xD000000000000014;
        v18 = v54;
        goto LABEL_33;
      }

      if (v16 == 2)
      {
        swift_beginAccess();
        v17 = 0x7961502061736956;
        v20 = 0xEE00202C65766157;
        goto LABEL_34;
      }

      if (v16 == 3)
      {
        swift_beginAccess();
        v19 = 1480936769;
        goto LABEL_27;
      }
    }

    swift_beginAccess();
    v17 = 0xD00000000000001ELL;
    v18 = v53;
LABEL_33:
    v20 = v18 | 0x8000000000000000;
LABEL_34:
    String.append(_:)(*&v17);
    result = swift_endAccess();
    v21 = v15 + 4;
    if (__OFADD__(v15, 4))
    {
      goto LABEL_50;
    }

    result = v15 + 3;
    if (v21 < v15 + 3)
    {
      goto LABEL_51;
    }

    v22 = sub_1000FABDC(result, v21, v7, v4);
    v24 = v23;
    v26 = v60;
    v25 = v61;
    (*v58)(v60, v59, v61);
    v27 = Data.toUInt16(endianness:)();
    sub_100009548(v22, v24);
    (*v57)(v26, v25);
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    strcpy(v64, "State: 0x");
    WORD1(v64[1]) = 0;
    HIDWORD(v64[1]) = -385875968;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v28 = swift_allocObject();
    *(v28 + 16) = v62;
    v29 = Data._Representation.subscript.getter();
    *(v28 + 56) = &type metadata for UInt8;
    *(v28 + 64) = &protocol witness table for UInt8;
    *(v28 + 32) = v29;
    v30._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x3A6C6576654C202CLL;
    v31._object = 0xEB00000000783020;
    String.append(_:)(v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v62;
    v33 = Data._Representation.subscript.getter();
    *(v32 + 56) = &type metadata for UInt8;
    *(v32 + 64) = &protocol witness table for UInt8;
    *(v32 + 32) = v33;
    v34._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0x203A65646F43202CLL;
    v35._object = 0xEA00000000007830;
    String.append(_:)(v35);
    v36 = swift_allocObject();
    *(v36 + 16) = v62;
    *(v36 + 56) = &type metadata for UInt16;
    *(v36 + 64) = &protocol witness table for UInt16;
    *(v36 + 32) = v27;
    v37._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v37);

    v38 = v64[0];
    v39 = v64[1];
    swift_beginAccess();
    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);
    swift_endAccess();

    if (qword_10039D5F8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_1003A3348);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64[0] = v45;
      *v44 = v56;
      v46 = v69;
      v47 = v70;

      v48 = sub_100008F6C(v46, v47, v64);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s", v44, 0xCu);
      sub_10000959C(v45);
    }

    switch(v27)
    {
      case 209:

        v49 = "Could not decode Kernel Type, ";
        v50 = 0xD00000000000001DLL;
LABEL_48:
        v51 = sub_1000207FC(4026, v50, (v49 | 0x8000000000000000), 0);
        sub_1000FF3CC(v8, v7, v4);

        return v51;
      case 208:

        v49 = "ERROR_HCI_TRANSMISSION_FAILED";
        v50 = 0xD00000000000001ALL;
        goto LABEL_48;
      case 62:

        v49 = "ERROR_HCI_RECEPTION_FAILED";
        v50 = 0xD000000000000017;
        goto LABEL_48;
    }

    sub_1000FF3CC(v8, v7, v4);
    sub_1000FAD04(v64);
    v8 = v64[0];
    v7 = v64[1];
    v4 = v65;
    v6 = 1;
    if (v65 >> 60 == 15)
    {

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1000FB9D4(uint64_t a1, uint64_t a2)
{
  v2 = &unk_10037E4C0;
  v3 = 12;
  sub_10008AB88();
  while (1)
  {
    v4 = *(v2 - 1);

    if (StringProtocol.contains<A>(_:)())
    {
      break;
    }

    v2 += 4;
    if (!--v3)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1000FBA98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v359 = a4;
  v355 = a3;
  v377 = a2;
  v353 = type metadata accessor for Data.Endianness();
  v352 = *(v353 - 8);
  __chkstk_darwin(v353);
  v351 = &v330[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v378 = type metadata accessor for TLVTag();
  v373 = *(v378 - 8);
  __chkstk_darwin(v378);
  v358 = &v330[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v7 = __chkstk_darwin(v6 - 8);
  v333 = &v330[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v334 = &v330[-v10];
  v11 = __chkstk_darwin(v9);
  v337 = &v330[-v12];
  v13 = __chkstk_darwin(v11);
  v336 = &v330[-v14];
  v15 = __chkstk_darwin(v13);
  v335 = &v330[-v16];
  v17 = __chkstk_darwin(v15);
  v344 = &v330[-v18];
  v19 = __chkstk_darwin(v17);
  v343 = &v330[-v20];
  v21 = __chkstk_darwin(v19);
  v340 = &v330[-v22];
  v23 = __chkstk_darwin(v21);
  v371 = &v330[-v24];
  v25 = __chkstk_darwin(v23);
  v27 = &v330[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v330[-v29];
  v31 = __chkstk_darwin(v28);
  v33 = &v330[-v32];
  v34 = __chkstk_darwin(v31);
  v36 = &v330[-v35];
  v37 = __chkstk_darwin(v34);
  v39 = &v330[-v38];
  v40 = __chkstk_darwin(v37);
  v42 = &v330[-v41];
  v43 = __chkstk_darwin(v40);
  v45 = &v330[-v44];
  __chkstk_darwin(v43);
  v47 = &v330[-v46];
  v388 = xmmword_1002C3C70;
  v387 = xmmword_1002C3C70;
  v386 = xmmword_1002C3C70;
  v385 = xmmword_1002C3C70;
  v48 = static TLV.decode(from:)();
  v372 = v45;
  v367 = v42;
  v368 = v39;
  v369 = v36;
  v370 = v33;
  v356 = v30;
  v364 = v27;
  v357 = 0;
  *&v379 = v48;
  v50 = v358;
  v51 = v48;
  static TLVTag.applicationLabel.getter();
  v52 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
  v377 = sub_1000CCFF4();
  Collection<>.first(tag:)();
  v53 = *(v373 + 8);
  v373 += 8;
  v376 = v53;
  v53(v50, v378);
  v54 = type metadata accessor for TLV();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  v375 = v55 + 48;
  v374 = v56;
  v57 = v56(v47, 1, v54);
  if (v57 == 1)
  {
    sub_10000BD44(v47, &unk_10039E210, &unk_1002C65B0);
    v58 = 0;
    v363 = 0;
  }

  else
  {
    v58 = TLV.stringValue.getter();
    v363 = v59;
    (*(v55 + 8))(v47, v54);
  }

  *&v379 = v51;
  v60 = v358;
  static TLVTag.applicationPreferredName.getter();
  v61 = v372;
  Collection<>.first(tag:)();
  v376(v60, v378);
  if (v374(v61, 1, v54) == 1)
  {
    sub_10000BD44(v61, &unk_10039E210, &unk_1002C65B0);
    v354 = 0;
    v332 = 0;
  }

  else
  {
    v354 = TLV.stringValue.getter();
    v332 = v62;
    (*(v55 + 8))(v61, v54);
  }

  v63 = v51;
  *&v379 = v51;
  static TLVTag.applicationIdentifier.getter();
  v64 = v367;
  Collection<>.first(tag:)();
  v376(v60, v378);
  v65 = v374(v64, 1, v54);
  v361 = v54;
  if (v65 == 1)
  {
    sub_10000BD44(v64, &unk_10039E210, &unk_1002C65B0);
    v366 = 0;
    v372 = 0;
    v341 = v58;
    v66 = v371;
    v67 = v369;
    goto LABEL_25;
  }

  v372 = TLV.hexStringValue.getter();
  v69 = v68;
  (*(v55 + 8))(v64, v54);
  v67 = v369;
  v366 = v69;
  if (v363)
  {
    v341 = v58;
    v66 = v371;
    goto LABEL_25;
  }

  v66 = v371;
  if (!v69)
  {
    v341 = v58;
    goto LABEL_25;
  }

  v70 = sub_1000FB9D4(v372, v69);
  if (v71)
  {
    v341 = v70;
    v363 = v71;
    if (qword_10039D5F8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000403C(v72, qword_1003A3348);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "readResult network set from AID", v75, 2u);
    }

    goto LABEL_25;
  }

  if (qword_10039D5F8 == -1)
  {
    goto LABEL_22;
  }

  while (2)
  {
    swift_once();
LABEL_22:
    v76 = type metadata accessor for Logger();
    sub_10000403C(v76, qword_1003A3348);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "appLabel nil and AID unrecognized", v79, 2u);
      v60 = v358;
    }

    v363 = 0;
    v341 = v58;
LABEL_25:
    *&v379 = v63;
    static TLVTag.thirdPartyData.getter();
    v80 = v368;
    Collection<>.first(tag:)();
    v81 = v80;
    v376(v60, v378);
    v82 = v80;
    v83 = v361;
    v84 = v374(v82, 1, v361);
    v365 = v52;
    if (v84 == 1)
    {
      sub_10000BD44(v81, &unk_10039E210, &unk_1002C65B0);
      if (qword_10039D5F8 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_10000403C(v85, qword_1003A3348);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "thirdPartyData absent so formFactor from cardInterfaceCapabilities", v88, 2u);
      }

      *&v379 = v63;
      static TLVTag.cardInterfaceCapabilities.getter();
      Collection<>.first(tag:)();
      v376(v60, v378);
      v83 = v361;
      if (v374(v67, 1, v361) == 1)
      {
        sub_10000BD44(v67, &unk_10039E210, &unk_1002C65B0);
        v349 = 0;
        v348 = 0;
      }

      else
      {
        v349 = TLV.hexStringValue.getter();
        v348 = v90;
        (*(v55 + 8))(v67, v83);
      }
    }

    else
    {
      v349 = TLV.hexStringValue.getter();
      v348 = v89;
      (*(v55 + 8))(v81, v83);
    }

    *&v379 = v63;
    static TLVTag.outcomeParameterSet.getter();
    v67 = v370;
    Collection<>.first(tag:)();
    v376(v60, v378);
    v91 = v374(v67, 1, v83);
    v360 = v55;
    if (v91 == 1)
    {
      sub_10000BD44(v67, &unk_10039E210, &unk_1002C65B0);
      v92 = 0;
      v93 = 0xF000000000000000;
    }

    else
    {
      v94 = v83;
      v92 = TLV.value.getter();
      v93 = v95;
      (*(v55 + 8))(v67, v94);
    }

    sub_10001A074(v388, *(&v388 + 1));
    *&v388 = v92;
    *(&v388 + 1) = v93;
    v55 = v355;
    if (v93 >> 60 == 15)
    {
      v346 = 0;
      LODWORD(v370) = 0;
      v362 = 255;
      goto LABEL_49;
    }

    sub_1000094F4(v92, v93);
    v96 = sub_1000FA9C0(v92, v93);
    v52 = 0;
    if ((v96 & 0x100) != 0)
    {
      v97 = 0;
    }

    else
    {
      v97 = v96;
    }

    LODWORD(v370) = v97;
    v98 = v93 >> 62;
    if ((v93 >> 62) > 1)
    {
      if (v98 == 2)
      {
        v52 = *(v92 + 16);
      }
    }

    else if (v98)
    {
      v52 = v92;
    }

    if (!__OFADD__(v52, static TLVTag.OFFSET_OPS_CVM.getter()))
    {
      v99 = Data._Representation.subscript.getter();
      v100 = static TLVTag.OPS_CVM_MASK.getter();
      sub_10001A074(v92, v93);
      v362 = v100 & v99;
      v346 = (v100 & v99) == 32;
LABEL_49:
      v345 = v63;
      *&v379 = v63;
      static TLVTag.terminalCountryCode.getter();
      v101 = v356;
      Collection<>.first(tag:)();
      v376(v60, v378);
      v102 = v361;
      if (v374(v101, 1, v361) == 1)
      {
        sub_10000BD44(v101, &unk_10039E210, &unk_1002C65B0);
        v61 = 0;
        v347 = 1;
      }

      else
      {
        v61 = TLV.uint16Value.getter();
        v347 = WORD1(v61) & 1;
        (*(v360 + 8))(v101, v102);
      }

      v63 = v364;
      *&v379 = v345;
      static TLVTag.terminalVerificationResults.getter();
      Collection<>.first(tag:)();
      v376(v60, v378);
      v103 = v374(v63, 1, v102);
      v339 = v61;
      if (v103 == 1)
      {
        sub_10000BD44(v63, &unk_10039E210, &unk_1002C65B0);
        v350._countAndFlagsBits = 0;
        v350._object = 0;
        v67 = 1;
        v104 = v345;
        goto LABEL_77;
      }

      v105 = TLV.value.getter();
      v106 = v102;
      v52 = v105;
      v58 = v107;
      (*(v360 + 8))(v63, v106);
      v108 = v58 >> 62;
      if ((v58 >> 62) > 1)
      {
        if (v108 != 2)
        {
          v109 = 0;
          goto LABEL_64;
        }

        v111 = *(v52 + 16);
        v110 = *(v52 + 24);
        v109 = v110 - v111;
        if (!__OFSUB__(v110, v111))
        {
          goto LABEL_64;
        }

        __break(1u);
      }

      else if (!v108)
      {
        v109 = BYTE6(v58);
LABEL_64:
        if (v109 == static TLVTag.TAG_95_LENGTH.getter())
        {
          v350 = Data.hexString()();
          v112 = 0;
          if (v108 > 1)
          {
            if (v108 == 2)
            {
              v112 = *(v52 + 16);
            }
          }

          else if (v108)
          {
            v112 = v52;
          }

          if (!__OFADD__(v112, static TLVTag.OFFSET_BYTE_3.getter()))
          {
            LOBYTE(v379) = Data._Representation.subscript.getter();
            v113 = static TLVTag.TVR_CV_NOT_SUCCESSFUL_BIT.getter();
            sub_100031840();
            v67 = UnsignedInteger.readBit(_:)(v113);
            if (qword_10039D5F8 != -1)
            {
              goto LABEL_275;
            }

            goto LABEL_73;
          }

          goto LABEL_274;
        }

        sub_100009548(v52, v58);
        v350 = 0;
        v67 = 1;
        goto LABEL_76;
      }

      if (__OFSUB__(HIDWORD(v52), v52))
      {
        __break(1u);
LABEL_280:
        __break(1u);
        goto LABEL_281;
      }

      v109 = HIDWORD(v52) - v52;
      goto LABEL_64;
    }

    __break(1u);
LABEL_272:
    swift_once();
LABEL_135:
    v180 = type metadata accessor for Logger();
    sub_10000403C(v180, qword_1003A3348);
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&_mh_execute_header, v181, v182, "switchInterfaceOrNoCVMSuccess: true", v183, 2u);
      v61 = v345;
    }

    *(&v380 + 1) = &type metadata for Bool;
    LOBYTE(v379) = 1;
    sub_10002CFD4(&v379, 0xD00000000000001DLL, 0x800000010034A480);
    while (1)
    {
      *&v379 = v61;
      static TLVTag.merchantCategoryCode.getter();
      v184 = v340;
      Collection<>.first(tag:)();
      v376(v60, v378);
      v185 = v361;
      v186 = v374(v184, 1, v361);
      v371 = v52;
      if (v186 == 1)
      {
        sub_10000BD44(v184, &unk_10039E210, &unk_1002C65B0);
        v187 = 0;
        v188 = 0xF000000000000000;
      }

      else
      {
        v189 = v184;
        v187 = TLV.value.getter();
        v188 = v190;
        (*(v360 + 8))(v189, v185);
      }

      sub_10001A074(v386, *(&v386 + 1));
      *&v386 = v187;
      *(&v386 + 1) = v188;
      *&v379 = v61;
      static TLVTag.languagePreference.getter();
      v191 = v343;
      Collection<>.first(tag:)();
      v376(v60, v378);
      if (v374(v191, 1, v185) == 1)
      {
        sub_10000BD44(v191, &unk_10039E210, &unk_1002C65B0);
        v192 = 0;
        v193 = 0xF000000000000000;
      }

      else
      {
        v192 = TLV.value.getter();
        v193 = v194;
        (*(v360 + 8))(v191, v185);
      }

      sub_10001A074(v385, *(&v385 + 1));
      *&v385 = v192;
      *(&v385 + 1) = v193;
      *&v379 = v61;
      static TLVTag.applicationInterchangeProfile.getter();
      v195 = v344;
      v58 = v365;
      Collection<>.first(tag:)();
      v196 = v195;
      v376(v60, v378);
      v197 = v374(v195, 1, v185);
      v198 = v185;
      if (v197 == 1)
      {
        sub_10000BD44(v196, &unk_10039E210, &unk_1002C65B0);
        v340 = 0;
        v345 = 0;
      }

      else
      {
        v340 = TLV.hexStringValue.getter();
        v345 = v199;
        (*(v360 + 8))(v196, v185);
      }

      v66 = 0xD000000000000012;
      *&v379 = v61;
      static TLVTag.cardProcessingRequirement.getter();
      Collection<>.first(tag:)();
      v376(v60, v378);
      if (v374(v63, 1, v198) == 1)
      {
        sub_10000BD44(v63, &unk_10039E210, &unk_1002C65B0);
        v344 = 0;
        v343 = 0;
      }

      else
      {
        v344 = TLV.hexStringValue.getter();
        v343 = v200;
        (*(v360 + 8))(v63, v198);
      }

      *&v379 = v61;
      static TLVTag.interacCardTransactionInformation.getter();
      v201 = v336;
      Collection<>.first(tag:)();
      v376(v60, v378);
      if (v374(v201, 1, v198) == 1)
      {
        sub_10000BD44(v201, &unk_10039E210, &unk_1002C65B0);
        goto LABEL_159;
      }

      v202 = TLV.value.getter();
      v203 = v198;
      v52 = v204;
      (*(v360 + 8))(v201, v203);
      v205 = 0;
      v206 = v52 >> 62;
      if ((v52 >> 62) > 1)
      {
        if (v206 == 2)
        {
          v205 = *(v202 + 16);
        }
      }

      else if (v206)
      {
        v205 = v202;
      }

      if (!__OFADD__(v205, static TLVTag.OFFSET_BYTE_2.getter()))
      {
        break;
      }

      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      swift_once();
LABEL_73:
      v114 = type metadata accessor for Logger();
      sub_10000403C(v114, qword_1003A3348);
      object = v350._object;

      v63 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v63, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *&v379 = v118;
        *v117 = 136315394;

        v119 = sub_100008F6C(v350._countAndFlagsBits, object, &v379);

        *(v117 + 4) = v119;
        v60 = v358;
        *(v117 + 12) = 1024;
        *(v117 + 14) = v67 & 1;
        _os_log_impl(&_mh_execute_header, v63, v116, "95 TVR: %s, cvNotSuccessful: %{BOOL}d", v117, 0x12u);
        sub_10000959C(v118);
        v55 = v355;

        v66 = v371;
      }

      sub_100009548(v52, v58);

LABEL_76:
      v104 = v345;
      v102 = v361;
LABEL_77:
      *&v379 = v104;
      static TLVTag.errorIndication.getter();
      Collection<>.first(tag:)();
      v376(v60, v378);
      v120 = v374(v66, 1, v102);
      LODWORD(v368) = v67;
      if (v120 == 1)
      {
        sub_10000BD44(v66, &unk_10039E210, &unk_1002C65B0);
        v342 = 0;
        v338 = 0;
        v121 = 0;
        v61 = 0;
        LODWORD(v364) = 0;
        v52 = 0xF000000000000000;
        goto LABEL_95;
      }

      v58 = v102;
      v61 = TLV.value.getter();
      v52 = v122;
      (*(v360 + 8))(v66, v58);
      v123 = v52 >> 62;
      if ((v52 >> 62) > 1)
      {
        if (v123 != 2)
        {
          v124 = 0;
          goto LABEL_90;
        }

        v126 = *(v61 + 16);
        v125 = *(v61 + 24);
        v124 = v125 - v126;
        if (__OFSUB__(v125, v126))
        {
          __break(1u);
LABEL_86:
          if (__OFSUB__(HIDWORD(v61), v61))
          {
            goto LABEL_280;
          }

          v124 = HIDWORD(v61) - v61;
        }

        sub_1000094F4(v61, v52);
        goto LABEL_90;
      }

      if (v123)
      {
        goto LABEL_86;
      }

      v124 = BYTE6(v52);
LABEL_90:
      if (v124 == static TLVTag.TAG_DF8115_LENGTH.getter())
      {
        *(&v380 + 1) = &type metadata for Data;
        v381 = &protocol witness table for Data;
        v367 = v61;
        *&v379 = v61;
        v371 = v52;
        *(&v379 + 1) = v52;
        v127 = sub_10000BE18(&v379, &type metadata for Data);
        v128 = *v127;
        v129 = v127[1];
        v130 = v129 >> 62;
        if ((v129 >> 62) > 1)
        {
          v131 = v357;
          if (v130 == 2)
          {
            v134 = *(v128 + 16);
            v135 = *(v128 + 24);
            sub_1000094F4(v367, v371);
            v136 = __DataStorage._bytes.getter();
            if (v136)
            {
              v137 = __DataStorage._offset.getter();
              if (__OFSUB__(v134, v137))
              {
                goto LABEL_285;
              }

              v136 += v134 - v137;
            }

            v138 = __OFSUB__(v135, v134);
            v139 = v135 - v134;
            if (v138)
            {
              goto LABEL_284;
            }

            v140 = __DataStorage._length.getter();
            if (v140 >= v139)
            {
              v141 = v139;
            }

            else
            {
              v141 = v140;
            }

            v142 = (v141 + v136);
            if (v136)
            {
              v133 = v142;
            }

            else
            {
              v133 = 0;
            }

            v132 = v136;
          }

          else
          {
            memset(v382, 0, 14);
            sub_1000094F4(v367, v371);
            v132 = v382;
            v133 = v382;
          }
        }

        else
        {
          v131 = v357;
          if (v130)
          {
            v143 = v128;
            v144 = v128 >> 32;
            v145 = v144 - v143;
            if (v144 < v143)
            {
              __break(1u);
LABEL_284:
              __break(1u);
LABEL_285:
              __break(1u);
LABEL_286:
              __break(1u);
            }

            sub_1000094F4(v367, v371);
            v146 = __DataStorage._bytes.getter();
            if (v146)
            {
              v147 = v146;
              v148 = __DataStorage._offset.getter();
              if (__OFSUB__(v143, v148))
              {
                goto LABEL_286;
              }

              v149 = (v143 - v148 + v147);
            }

            else
            {
              v149 = 0;
            }

            v150 = __DataStorage._length.getter();
            if (v150 >= v145)
            {
              v151 = v145;
            }

            else
            {
              v151 = v150;
            }

            v152 = &v149[v151];
            if (v149)
            {
              v133 = v152;
            }

            else
            {
              v133 = 0;
            }

            v132 = v149;
          }

          else
          {
            v382[0] = *v127;
            LOWORD(v382[1]) = v129;
            BYTE2(v382[1]) = BYTE2(v129);
            BYTE3(v382[1]) = BYTE3(v129);
            BYTE4(v382[1]) = BYTE4(v129);
            BYTE5(v382[1]) = BYTE5(v129);
            sub_1000094F4(v367, v371);
            v132 = v382;
            v133 = v382 + BYTE6(v129);
          }
        }

        sub_10014B4B8(v132, v133, &v383);
        v357 = v131;
        v154 = v383;
        v153 = v384;
        sub_1000094F4(v383, v384);
        sub_10000959C(&v379);
        static TLVTag.OFFSET_ERROR_INDICATION_L2.getter();
        v342 = Data._Representation.subscript.getter();
        v155 = static TLVTag.OFFSET_ERROR_INDICATION_SW12.getter();
        v157 = sub_1000FABDC(v155, v156, v154, v153);
        v159 = v158;
        v160 = v352;
        v161 = v351;
        v162 = v353;
        (*(v352 + 104))(v351, enum case for Data.Endianness.bigEndian(_:), v353);
        v163 = Data.toUInt16(endianness:)();
        sub_100009548(v157, v159);
        (*(v160 + 8))(v161, v162);
        static TLVTag.OFFSET_ERROR_INDICATION_MSG_ON_ERROR.getter();
        v164 = Data._Representation.subscript.getter();
        v166 = v165;
        sub_100009548(v154, v153);
        LODWORD(v364) = Data.toUInt8()();
        v167 = v364;
        sub_100009548(v164, v166);
        v338 = v163;
        v169 = v163 == 27012 && v167 == 28;
        LODWORD(v356) = v169;
        if (qword_10039D5F8 != -1)
        {
          swift_once();
        }

        v170 = type metadata accessor for Logger();
        sub_10000403C(v170, qword_1003A3348);
        v61 = v367;
        v52 = v371;
        sub_1000094F4(v367, v371);
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.default.getter();
        sub_100009548(v61, v52);
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *&v379 = swift_slowAlloc();
          *v173 = 136315650;
          v174 = Data.hexString()();
          v175 = sub_100008F6C(v174._countAndFlagsBits, v174._object, &v379);

          *(v173 + 4) = v175;
          *(v173 + 12) = 2080;
          v176 = SPRTransactionMessage.description.getter();
          v67 = sub_100008F6C(v176, v177, &v379);

          *(v173 + 14) = v67;
          *(v173 + 22) = 1024;
          v178 = v356;
          *(v173 + 24) = v356;
          _os_log_impl(&_mh_execute_header, v171, v172, "DF8115 Error Indication: %s, Msg On Error: %s, switchInterfaceIndication: %{BOOL}d", v173, 0x1Cu);
          swift_arrayDestroy();
          v55 = v355;

          sub_100009548(v61, v52);
          sub_100009548(v154, v153);

          v121 = v178;
          LODWORD(v369) = 0;
          LOBYTE(v67) = v368;
        }

        else
        {
          sub_100009548(v154, v153);

          sub_100009548(v61, v52);
          LODWORD(v369) = 0;
          LOBYTE(v67) = v368;
          v121 = v356;
        }

        v60 = v358;
        goto LABEL_133;
      }

      sub_100009548(v61, v52);
      v342 = 0;
      v338 = 0;
      v121 = 0;
      LODWORD(v364) = 0;
LABEL_95:
      LODWORD(v369) = 1;
LABEL_133:
      v367 = v61;
      LODWORD(v356) = v121;
      v179 = v121 | v67;
      v61 = v345;
      v67 = v337;
      v63 = v335;
      if (v179)
      {
        if (qword_10039D5F8 != -1)
        {
          goto LABEL_272;
        }

        goto LABEL_135;
      }
    }

    LOBYTE(v379) = Data._Representation.subscript.getter();
    sub_100031840();
    v207 = UnsignedInteger.readBit(_:)(0);
    sub_100009548(v202, v52);
    *(v359 + 133) = v207;
    v58 = v365;
    v198 = v361;
LABEL_159:
    *&v379 = v61;
    static TLVTag.aidOverridePerformed.getter();
    Collection<>.first(tag:)();
    v376(v60, v378);
    if (v374(v67, 1, v198) == 1)
    {
      v63 = v372;
      sub_10000BD44(v67, &unk_10039E210, &unk_1002C65B0);
    }

    else
    {
      v63 = v372;
      v208 = TLV.uint8Value.getter();
      (*(v360 + 8))(v67, v198);
      if ((v208 & 0x100) == 0)
      {
        *(v359 + 129) = v208 != 0;
      }
    }

    *&v379 = v61;
    static TLVTag.cvmResults.getter();
    v67 = v60;
    v60 = v334;
    Collection<>.first(tag:)();
    v376(v67, v378);
    v209 = v374(v60, 1, v198);
    v372 = v63;
    if (v209 == 1)
    {
      sub_10000BD44(v60, &unk_10039E210, &unk_1002C65B0);
      v210 = 0;
      v52 = 0xF000000000000000;
    }

    else
    {
      v58 = v198;
      v210 = TLV.value.getter();
      v52 = v211;
      (*(v360 + 8))(v60, v58);
    }

    sub_10001A074(v387, *(&v387 + 1));
    *&v387 = v210;
    *(&v387 + 1) = v52;
    if (v52 >> 60 == 15)
    {
      goto LABEL_197;
    }

    v212 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v212 != 2)
      {
        v58 = 0;
        goto LABEL_178;
      }

      v214 = *(v210 + 16);
      v213 = *(v210 + 24);
      v58 = v213 - v214;
      if (!__OFSUB__(v213, v214))
      {
        goto LABEL_176;
      }

      __break(1u);
    }

    else if (!v212)
    {
      v58 = BYTE6(v52);
      goto LABEL_178;
    }

    if (__OFSUB__(HIDWORD(v210), v210))
    {
LABEL_281:
      __break(1u);
      continue;
    }

    break;
  }

  v58 = HIDWORD(v210) - v210;
LABEL_176:
  sub_1000094F4(v210, v52);
LABEL_178:
  if (v58 == static TLVTag.TAG_9F34_LENGTH.getter())
  {
    v215 = 0;
    if (v212 > 1)
    {
      if (v212 == 2)
      {
        v215 = *(v210 + 16);
      }
    }

    else if (v212)
    {
      v215 = v210;
    }

    if (__OFADD__(v215, static TLVTag.OFFSET_CVM_RESULTS_CVM_PERFORMED.getter()))
    {
      __break(1u);
    }

    else
    {
      LODWORD(v337) = Data._Representation.subscript.getter();
      LODWORD(v67) = static TLVTag.CVM_RESULTS_NO_CVM_PERFORMED.getter();
      v215 = 0;
      if (v212 > 1)
      {
        if (v212 == 2)
        {
          v215 = *(v210 + 16);
        }
      }

      else if (v212)
      {
        v215 = v210;
      }

      if (!__OFADD__(v215, static TLVTag.OFFSET_CVM_RESULTS_CVM_RESULTS.getter()))
      {
        LOBYTE(v63) = Data._Representation.subscript.getter();
        LODWORD(v215) = static TLVTag.CVM_RESULTS_CVM_SUCCESSFUL.getter();
        if (qword_10039D5F8 == -1)
        {
          goto LABEL_193;
        }

        goto LABEL_278;
      }
    }

    __break(1u);
LABEL_278:
    swift_once();
LABEL_193:
    v216 = type metadata accessor for Logger();
    sub_10000403C(v216, qword_1003A3348);
    sub_1000094F4(v210, v52);
    v217 = Logger.logObject.getter();
    v218 = static os_log_type_t.default.getter();
    sub_10001A074(v210, v52);
    if (os_log_type_enabled(v217, v218))
    {
      LODWORD(v334) = v215;
      LODWORD(v335) = v63 == v215;
      v331 = v337 != v67;
      v219 = swift_slowAlloc();
      LODWORD(v336) = v67;
      v67 = v219;
      v220 = swift_slowAlloc();
      *&v379 = v220;
      *v67 = 136315650;
      v221 = Data.hexString()();
      v215 = sub_100008F6C(v221._countAndFlagsBits, v221._object, &v379);

      *(v67 + 4) = v215;
      LOBYTE(v215) = v334;
      *(v67 + 12) = 1024;
      *(v67 + 14) = v331;
      *(v67 + 18) = 1024;
      *(v67 + 20) = v335;
      _os_log_impl(&_mh_execute_header, v217, v218, "9F34 CVM Results: %s, isCVMPerformed: %{BOOL}d, isCVMSuccess: %{BOOL}d", v67, 0x18u);
      sub_10000959C(v220);

      LOBYTE(v67) = v336;

      sub_10001A074(v210, v52);
    }

    else
    {

      sub_10001A074(v210, v52);
    }

    v222 = v359;
    *(v359 + 131) = v337 != v67;
    *(v222 + 132) = v63 == v215;
  }

  else
  {
    sub_10001A074(v210, v52);
  }

LABEL_197:
  *&v379 = v61;
  v223 = v358;
  static TLVTag.cardState.getter();
  v224 = v333;
  Collection<>.first(tag:)();
  v376(v223, v378);

  v225 = v361;
  if (v374(v224, 1, v361) == 1)
  {
    sub_10000BD44(v224, &unk_10039E210, &unk_1002C65B0);
    v226 = 0;
    v227 = 0;
    v49 = v363;
    v228 = v332;
  }

  else
  {
    v229 = TLV.uint8Value.getter();
    (*(v360 + 8))(v224, v225);
    v228 = v332;
    if ((v229 & 0x100) != 0)
    {
      v226 = 0;
      v227 = 0;
    }

    else
    {
      v227 = static TLVTag.CARD_STATE_EXPIRATION_MASK.getter() & v229;
      v226 = static TLVTag.CARD_STATE_EFFECTIVE_MASK.getter() & v229;
    }

    v49 = v363;
  }

  v230 = v366;
  if (v49)
  {
    LODWORD(v378) = 0;
    *(&v380 + 1) = &type metadata for String;
    *&v379 = v341;
    *(&v379 + 1) = v49;
  }

  else
  {
    v49 = 0;
    v380 = 0u;
    v379 = 0u;
    LODWORD(v378) = 1;
  }

  v363 = v49;

  sub_10002CFD4(&v379, 0x6B726F7774656ELL, 0xE700000000000000);
  if (v228)
  {
    v231 = &type metadata for String;
    v232 = v228;
    v233 = v228;
    v234 = v354;
  }

  else
  {
    v233 = 0;
    v234 = 0;
    v231 = 0;
    *&v380 = 0;
    v232 = 0xE000000000000000;
  }

  *&v379 = v234;
  *(&v379 + 1) = v228;
  *(&v380 + 1) = v231;

  sub_10002CFD4(&v379, 0x656D614E707061, 0xE700000000000000);
  if (*(&v388 + 1) >> 60 == 15)
  {
    v235 = 0;
    v236 = 0;
    v237 = 0;
    *&v380 = 0;
  }

  else
  {
    v237 = &type metadata for Data;
    v236 = *(&v388 + 1);
    v235 = v388;
  }

  *&v379 = v235;
  *(&v379 + 1) = v236;
  *(&v380 + 1) = v237;
  sub_10001A3E8(v388, *(&v388 + 1));
  sub_10002CFD4(&v379, 0xD000000000000013, 0x8000000100345A40);
  type metadata accessor for SPRTransactionOutcomeStatus(0);
  *(&v380 + 1) = v238;
  LOBYTE(v379) = v370;
  sub_10002CFD4(&v379, 0x53656D6F6374756FLL, 0xED00007375746174);
  type metadata accessor for SPRTransactionCVMType(0);
  *(&v380 + 1) = v239;
  LOBYTE(v379) = v362;
  sub_10002CFD4(&v379, 0x657079546D7663, 0xE700000000000000);
  if (*(&v387 + 1) >> 60 == 15)
  {
    v240 = 0;
    v241 = 0;
    v242 = 0;
    *&v380 = 0;
  }

  else
  {
    v242 = &type metadata for Data;
    v241 = *(&v387 + 1);
    v240 = v387;
  }

  *&v379 = v240;
  *(&v379 + 1) = v241;
  *(&v380 + 1) = v242;
  sub_10001A3E8(v387, *(&v387 + 1));
  sub_10002CFD4(&v379, 0x6C757365526D7663, 0xE900000000000074);
  *(&v380 + 1) = &type metadata for Bool;
  LOBYTE(v379) = v346;
  sub_10002CFD4(&v379, 0x69757165526E6970, 0xEB00000000646572);
  if (*(&v386 + 1) >> 60 == 15)
  {
    v243 = 0;
    v244 = 0;
    v245 = 0;
    *&v380 = 0;
  }

  else
  {
    v245 = &type metadata for Data;
    v244 = *(&v386 + 1);
    v243 = v386;
  }

  *&v379 = v243;
  *(&v379 + 1) = v244;
  *(&v380 + 1) = v245;
  sub_10001A3E8(v386, *(&v386 + 1));
  sub_10002CFD4(&v379, 0xD000000000000014, 0x800000010034A3C0);
  if (*(&v385 + 1) >> 60 == 15)
  {
    v246 = 0;
    v247 = 0;
    v248 = 0;
    *&v380 = 0;
  }

  else
  {
    v248 = &type metadata for Data;
    v247 = *(&v385 + 1);
    v246 = v385;
  }

  *&v379 = v246;
  *(&v379 + 1) = v247;
  *(&v380 + 1) = v248;
  sub_10001A3E8(v385, *(&v385 + 1));
  sub_10002CFD4(&v379, 0xD000000000000012, 0x800000010034A400);
  if (v369)
  {
    v249 = 0;
    v379 = 0uLL;
    *&v380 = 0;
  }

  else
  {
    LOWORD(v379) = v338;
    v249 = &type metadata for UInt16;
  }

  *(&v380 + 1) = v249;
  sub_10002CFD4(&v379, 0xD000000000000019, 0x800000010034A380);
  type metadata accessor for SPRTransactionMessage(0);
  *(&v380 + 1) = v250;
  LOBYTE(v379) = v364;
  sub_10002CFD4(&v379, 0xD000000000000019, 0x800000010034A3A0);
  type metadata accessor for SPRCardExpirationState(0);
  *(&v380 + 1) = v251;
  LOBYTE(v379) = v227;
  sub_10002CFD4(&v379, 0xD000000000000013, 0x800000010034A4A0);
  type metadata accessor for SPRCardEffectiveState(0);
  *(&v380 + 1) = v252;
  LOBYTE(v379) = v226;
  sub_10002CFD4(&v379, 0xD000000000000012, 0x800000010034A4C0);
  if (qword_10039D5F8 != -1)
  {
    swift_once();
  }

  v253 = type metadata accessor for Logger();
  sub_10000403C(v253, qword_1003A3348);

  v254 = Logger.logObject.getter();
  v255 = static os_log_type_t.default.getter();

  v256 = os_log_type_enabled(v254, v255);
  v257 = v372;
  v366 = v230;
  if (v256)
  {
    v258 = swift_slowAlloc();
    *&v379 = swift_slowAlloc();
    *v258 = 136447746;
    if (v233)
    {
      v259 = v354;
    }

    else
    {
      v259 = 0;
    }

    v260 = sub_100008F6C(v259, v232, &v379);

    *(v258 + 4) = v260;
    *(v258 + 12) = 2082;
    swift_beginAccess();
    v261 = *(&v388 + 1);
    if (*(&v388 + 1) >> 60 == 15)
    {
      countAndFlagsBits = 0;
      v263 = 0xE000000000000000;
    }

    else
    {
      v265 = v388;
      sub_1000094F4(v388, *(&v388 + 1));
      v266 = Data.hexString()();
      v263 = v266._object;
      sub_10001A074(v265, v261);
      countAndFlagsBits = v266._countAndFlagsBits;
    }

    v267 = sub_100008F6C(countAndFlagsBits, v263, &v379);

    *(v258 + 14) = v267;
    *(v258 + 22) = 2082;
    swift_beginAccess();
    v268 = *(&v387 + 1);
    if (*(&v387 + 1) >> 60 == 15)
    {
      v269 = 0;
      v270 = 0xE000000000000000;
    }

    else
    {
      v271 = v387;
      sub_1000094F4(v387, *(&v387 + 1));
      v272 = Data.hexString()();
      v270 = v272._object;
      sub_10001A074(v271, v268);
      v269 = v272._countAndFlagsBits;
    }

    v273 = sub_100008F6C(v269, v270, &v379);

    *(v258 + 24) = v273;
    *(v258 + 32) = 2082;
    v274 = SPRTransactionCVMType.description.getter();
    v276 = sub_100008F6C(v274, v275, &v379);

    *(v258 + 34) = v276;
    *(v258 + 42) = 2082;
    swift_beginAccess();
    v277 = *(&v385 + 1);
    if (*(&v385 + 1) >> 60 == 15)
    {
      v278 = 0;
      v279 = 0xE000000000000000;
    }

    else
    {
      v280 = v385;
      sub_1000094F4(v385, *(&v385 + 1));
      v281 = Data.hexString()();
      v279 = v281._object;
      sub_10001A074(v280, v277);
      v278 = v281._countAndFlagsBits;
    }

    v282 = sub_100008F6C(v278, v279, &v379);

    *(v258 + 44) = v282;
    *(v258 + 52) = 2082;
    swift_beginAccess();
    v283 = *(&v386 + 1);
    if (*(&v386 + 1) >> 60 == 15)
    {
      v284 = 0;
      v285 = 0xE000000000000000;
    }

    else
    {
      v286 = v386;
      sub_1000094F4(v386, *(&v386 + 1));
      v287 = Data.hexString()();
      v285 = v287._object;
      sub_10001A074(v286, v283);
      v284 = v287._countAndFlagsBits;
    }

    v264 = v366;
    v288 = sub_100008F6C(v284, v285, &v379);

    *(v258 + 54) = v288;
    *(v258 + 62) = 2082;
    v289 = SPRTransactionMessage.description.getter();
    v291 = sub_100008F6C(v289, v290, &v379);

    *(v258 + 64) = v291;
    _os_log_impl(&_mh_execute_header, v254, v255, "Transaction Results: appName: %{public}s, outcomeParameterSet: %{public}s, cvmResult: %{public}s, cvmType: %{public}s, langPreference: %{public}s, MCC: %{public}s, errorIndicationMsgOnError: %{public}s,", v258, 0x48u);
    swift_arrayDestroy();

    v257 = v372;
  }

  else
  {

    v264 = v230;
  }

  sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  v292 = swift_allocObject();
  v293 = v292;
  *(v292 + 16) = xmmword_1002C7370;
  *(v292 + 32) = 10;
  v294 = v371;
  if (v378)
  {
    v295 = 0;
    v296 = 0;
    v297 = 0;
    *(v292 + 56) = 0;
  }

  else
  {
    v297 = &type metadata for String;
    v296 = v363;
    v295 = v341;
  }

  v298 = v349;
  v299 = v348;
  v300 = v350._countAndFlagsBits;
  v301 = v350._object;
  *(v292 + 40) = v295;
  *(v292 + 48) = v296;
  *(v292 + 64) = v297;
  *(v292 + 72) = 11;
  if (v264)
  {
    v302 = &type metadata for String;
    v303 = v257;
    v304 = v264;
  }

  else
  {
    v303 = 0;
    v304 = 0;
    v302 = 0;
    *(v292 + 96) = 0;
  }

  *(v292 + 80) = v303;
  *(v292 + 88) = v304;
  *(v292 + 104) = v302;
  *(v292 + 112) = 12;
  if (v299)
  {
    v305 = &type metadata for String;
  }

  else
  {
    v298 = 0;
    v305 = 0;
    *(v292 + 136) = 0;
  }

  *(v292 + 120) = v298;
  *(v292 + 128) = v299;
  *(v292 + 144) = v305;
  *(v292 + 152) = 13;
  if (v347)
  {
    v306 = 0;
    *(v292 + 160) = 0;
    *(v292 + 168) = 0;
    *(v292 + 176) = 0;
  }

  else
  {
    *(v292 + 160) = v339;
    v306 = &type metadata for UInt16;
  }

  *(v292 + 184) = v306;
  *(v292 + 192) = 14;
  if (v301)
  {
    v307 = &type metadata for String;
  }

  else
  {
    v300 = 0;
    v307 = 0;
    *(v292 + 216) = 0;
  }

  *(v292 + 200) = v300;
  *(v292 + 208) = v301;
  *(v292 + 224) = v307;
  *(v292 + 232) = 15;
  if (v294 >> 60 == 15)
  {
    *(v292 + 248) = 0;
    *(v292 + 256) = 0;

    v308 = 0;
    v309 = 0;
  }

  else
  {
    v310 = v352;
    v311 = v351;
    v312 = v353;
    (*(v352 + 104))(v351, enum case for Data.Endianness.bigEndian(_:), v353);

    v308 = Data.toUInt64(endianness:)();
    (*(v310 + 8))(v311, v312);
    v309 = &type metadata for UInt64;
  }

  *(v293 + 240) = v308;
  *(v293 + 264) = v309;
  *(v293 + 272) = 16;
  swift_beginAccess();
  v313 = *(&v388 + 1);
  if (*(&v388 + 1) >> 60 == 15)
  {
    v314 = 0;
    v315 = 0;
    *(v293 + 288) = 0;
    *(v293 + 296) = 0;
  }

  else
  {
    v316 = v388;
    v317 = v352;
    v318 = v351;
    v319 = v353;
    (*(v352 + 104))(v351, enum case for Data.Endianness.bigEndian(_:), v353);
    sub_1000094F4(v316, v313);
    v314 = Data.toUInt64(endianness:)();
    sub_10001A074(v316, v313);
    (*(v317 + 8))(v318, v319);
    v315 = &type metadata for UInt64;
  }

  v320 = v345;
  v321 = v344;
  v322 = v343;
  *(v293 + 280) = v314;
  *(v293 + 304) = v315;
  *(v293 + 312) = 21;
  if (v320)
  {
    v323 = &type metadata for String;
    v324 = v340;
  }

  else
  {
    v324 = 0;
    v323 = 0;
    *(v293 + 336) = 0;
  }

  *(v293 + 320) = v324;
  *(v293 + 328) = v320;
  *(v293 + 344) = v323;
  *(v293 + 352) = 22;
  if (v322)
  {
    v325 = &type metadata for String;
  }

  else
  {
    v321 = 0;
    v325 = 0;
    *(v293 + 376) = 0;
  }

  *(v293 + 360) = v321;
  *(v293 + 368) = v322;
  *(v293 + 384) = v325;
  v326 = sub_10018399C(v293);
  swift_setDeallocating();
  sub_100004074(&qword_10039EC60, &qword_1002C1F80);
  swift_arrayDestroy();
  v327 = swift_deallocClassInstance();
  v328 = *(v359 + 56);
  __chkstk_darwin(v327);
  *&v330[-16] = v326;
  os_unfair_lock_lock((v328 + 32));
  sub_100029720((v328 + 16));
  os_unfair_lock_unlock((v328 + 32));
  sub_10001A074(v367, v371);

  sub_10001A074(v385, *(&v385 + 1));
  sub_10001A074(v386, *(&v386 + 1));
  sub_10001A074(v387, *(&v387 + 1));
  sub_10001A074(v388, *(&v388 + 1));
  return (v342 << 8) | (v369 << 16) | v370;
}

uint64_t sub_1000FF07C(uint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 22)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v5)
    {
      if (BYTE6(a2) != 22)
      {
        goto LABEL_19;
      }

LABEL_11:
      v10 = sub_10011AA24(a1, a2);
      if ((v10 & 0x100) == 0)
      {
        v2 = v10;
        if (qword_10039D5F8 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

LABEL_19:
      if (qword_10039D5F8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000403C(v20, qword_1003A3348);
      sub_1000094F4(a1, a2);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      sub_100009548(a1, a2);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v27 = v24;
        *v23 = 136315138;
        v25 = Data.hexString()();
        v26 = sub_100008F6C(v25._countAndFlagsBits, v25._object, &v27);

        *(v23 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v21, v22, "Bad length or could not get messageId from UIRD: %s", v23, 0xCu);
        sub_10000959C(v24);
      }

      return 0;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 22)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_13:
  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A3348);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    v16 = SPRTransactionMessage.description.getter();
    v18 = sub_100008F6C(v16, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "UIRD: %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  if (v2 > 0x1Fu)
  {
    if (v2 == 32)
    {
      return 8;
    }

    else
    {
      if (v2 != 33)
      {
        return 0;
      }

      return 6;
    }
  }

  else
  {
    if (v2 != 6)
    {
      if (v2 == 28)
      {
        return 7;
      }

      return 0;
    }

    return 10;
  }
}

uint64_t sub_1000FF3CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_100009548(a2, a3);
  }

  return result;
}

__n128 sub_1000FF3E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000FF404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000FF44C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000FF4B0()
{
  _StringGuts.grow(_:)(150);
  v1._countAndFlagsBits = 0xD000000000000025;
  v1._object = 0x800000010034DA90;
  String.append(_:)(v1);
  if (*v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._object = 0x800000010034DAC0;
  v5._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + 8));
  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x800000010034DAE0;
  String.append(_:)(v6);
  v7 = Data.hexString()();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4B454B6E6970202CLL;
  v8._object = 0xEE00203A68736148;
  String.append(_:)(v8);
  v9 = Data.hexString()();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x800000010034DB00;
  String.append(_:)(v10);
  if (*(v0 + 56))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + 56))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0xD00000000000001ALL;
  v14._object = 0x800000010034DB20;
  String.append(_:)(v14);
  v15 = Data.hexString()();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0;
}

uint64_t sub_1000FF6A4(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A3438, &qword_1002C75B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10000BE18(a1, a1[3]);
  sub_100100224();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 2;
    sub_1000A1E00(&v16, v11);
    sub_1001002CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v13, *(&v13 + 1));
    v15 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 3;
    sub_1000A1E00(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v13, *(&v13 + 1));
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[4];
    v14 = v13;
    v12 = 5;
    sub_1000A1E00(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000FF944()
{
  v1 = *v0;
  v2 = 0x69757165526E6970;
  v3 = 0x61484B454B6E6970;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746361736E617274;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1000FFA20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000FFB34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000FFA54(uint64_t a1)
{
  v2 = sub_100100224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FFA90(uint64_t a1)
{
  v2 = sub_100100224();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000FFACC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000FFD4C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000FFB34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69757165526E6970 && a2 == 0xEB00000000646572;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010034DB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61484B454B6E6970 && a2 == 0xEA00000000006873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010034A460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010034DB60 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000FFD4C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A3420, &qword_1002C75B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_100100224();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  LOBYTE(v34) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v34) = 1;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v10;
  LOBYTE(v29) = 2;
  sub_100100278();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v34;
  v26 = v35;
  LOBYTE(v29) = 3;
  v24 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v34;
  v22 = v35;
  LOBYTE(v34) = 4;
  LODWORD(v24) = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v9 & 1;
  v11 = v24 & 1;
  (*(v6 + 8))(v8, v5);
  v21 = *(&v44 + 1);
  v24 = v44;
  LOBYTE(v29) = v9 & 1;
  v12 = v27;
  v13 = v28;
  *(&v29 + 1) = v27;
  *&v30 = v28;
  v14 = v25;
  v15 = v26;
  *(&v30 + 1) = v25;
  *&v31 = v26;
  v16 = v22;
  *(&v31 + 1) = v23;
  *&v32 = v22;
  BYTE8(v32) = v11;
  v33 = v44;
  sub_1000D7454(&v29, &v34);
  sub_10000959C(a1);
  LOBYTE(v34) = v45;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v23;
  v40 = v16;
  v41 = v11;
  v42 = v24;
  v43 = v21;
  result = sub_1000D74B0(&v34);
  v18 = v32;
  a2[2] = v31;
  a2[3] = v18;
  a2[4] = v33;
  v19 = v30;
  *a2 = v29;
  a2[1] = v19;
  return result;
}

unint64_t sub_100100224()
{
  result = qword_1003A3428;
  if (!qword_1003A3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3428);
  }

  return result;
}

unint64_t sub_100100278()
{
  result = qword_1003A3430;
  if (!qword_1003A3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3430);
  }

  return result;
}

unint64_t sub_1001002CC()
{
  result = qword_1003A3440;
  if (!qword_1003A3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3440);
  }

  return result;
}

unint64_t sub_100100334()
{
  result = qword_1003A3448;
  if (!qword_1003A3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3448);
  }

  return result;
}

unint64_t sub_10010038C()
{
  result = qword_1003A3450;
  if (!qword_1003A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3450);
  }

  return result;
}

unint64_t sub_1001003E4()
{
  result = qword_1003A3458;
  if (!qword_1003A3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3458);
  }

  return result;
}

uint64_t sub_100100438()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3460);
  sub_10000403C(v0, qword_1003A3460);
  sub_100023B24();
  return static SPRLogger.configurator.getter();
}

uint64_t sub_100100494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, id *a7, uint64_t a8)
{
  v9 = sub_100100664(a1, a3, a4, a5, a6, a7, a8);

  return v9 & 1;
}

void sub_10010051C()
{
  if (qword_10039D600 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A3460);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100008F6C(0xD000000000000027, 0x800000010034DBB0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "NFSecureElementManagerSession ended from %s", v2, 0xCu);
    sub_10000959C(v3);
  }
}

uint64_t sub_100100664(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, id *a6, uint64_t a7)
{
  v14 = [objc_opt_self() sharedHardwareManager];
  v15 = NFHardwareManager.startSecureElementManagerSession(deadline:)();
  if (v7)
  {

    v16 = 0;
  }

  else
  {
    v17 = v15;

    v18 = v17;
    sub_100153494(v18, a2, a3, a4, a5, a6, a7);

    v21[4] = sub_10010051C;
    v21[5] = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100003974;
    v21[3] = &unk_100383F88;
    v19 = _Block_copy(v21);
    [v18 endSessionWithCompletion:v19];
    _Block_release(v19);

    v16 = 1;
  }

  return v16 & 1;
}