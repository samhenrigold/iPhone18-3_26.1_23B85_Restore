unint64_t sub_1C5A878C0()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 80);
  swift_getKeyPath(asc_1C5BE28E0);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 24);
    swift_getKeyPath(byte_1C5BE2970);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B74();

    *&v6 = *(v1 + 72) / v5;
    v4 = v6;
  }

  return v4 | (v3 << 32);
}

uint64_t sub_1C5A87A0C()
{
  v1 = *(v0 + 72);
  swift_getKeyPath(byte_1C5BE2B80);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  return *(v1 + 48);
}

uint64_t sub_1C5A87AB0()
{
  swift_getKeyPath(aH_7);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  return *(v0 + 32);
}

void sub_1C5A87B54(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_7);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v4;
}

double sub_1C5A87C04(uint64_t a1, char a2)
{
  if (*(v2 + 40))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath(aH_7);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
      sub_1C5BC7B64();

      return result;
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 32) != *&a1)
  {
    goto LABEL_9;
  }

  *(v2 + 32) = *&a1;
  *(v2 + 40) = a2 & 1;

  sub_1C5A8A408();
  return result;
}

uint64_t sub_1C5A87D60()
{
  swift_getKeyPath(byte_1C5BE2B80);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  return *(v0 + 48);
}

void sub_1C5A87E04(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2B80);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v4;
}

double sub_1C5A87EB4(uint64_t a1, char a2)
{
  if (*(v2 + 56))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath(byte_1C5BE2B80);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
      sub_1C5BC7B64();

      return result;
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 48) != a1)
  {
    goto LABEL_9;
  }

  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;

  sub_1C5A8A408();
  return result;
}

void sub_1C5A8800C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = 1701602409;
  v5 = sub_1C5BC7D64();
  v52 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v49[-v10];
  v12 = *a1;
  swift_getKeyPath(byte_1C5BE15A0, v9);
  v54 = v2;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  v13 = 0xE800000000000000;
  v14 = 0x676E696B63617274;
  if (*(v2 + 57) != 1)
  {
    v14 = 0x6172656C65636564;
    v13 = 0xEC000000676E6974;
  }

  if (*(v2 + 57))
  {
    v15 = v14;
  }

  else
  {
    v15 = 1701602409;
  }

  if (*(v2 + 57))
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v17 = 0xE800000000000000;
      if (v15 != 0x676E696B63617274)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v17 = 0xEC000000676E6974;
      if (v15 != 0x6172656C65636564)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v17 = 0xE400000000000000;
    if (v15 != 1701602409)
    {
      goto LABEL_18;
    }
  }

  if (v16 == v17)
  {

    return;
  }

LABEL_18:
  v51 = v5;
  v18 = sub_1C5BCBDE4();

  if ((v18 & 1) == 0)
  {
    swift_getKeyPath(byte_1C5BE15A0);
    v54 = v2;
    sub_1C5BC7B74();

    LOBYTE(v54) = *(v2 + 57);
    LOBYTE(v53) = v12;
    if (sub_1C5A88790(&v53))
    {
      v19 = v51;
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v19, qword_1EC1A6BC0);
      v21 = v52;
      (*(v52 + 16))(v7, v20, v19);

      v22 = sub_1C5BC7D44();
      v23 = sub_1C5BCB4F4();

      if (os_log_type_enabled(v22, v23))
      {
        v50 = v23;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v54 = v25;
        *v24 = 136446466;
        v26 = 0xE800000000000000;
        v27 = 0x676E696B63617274;
        if (v12 != 1)
        {
          v27 = 0x6172656C65636564;
          v26 = 0xEC000000676E6974;
        }

        if (v12)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1701602409;
        }

        if (v12)
        {
          v29 = v26;
        }

        else
        {
          v29 = 0xE400000000000000;
        }

        v30 = sub_1C592ADA8(v28, v29, &v54);

        *(v24 + 4) = v30;
        *(v24 + 12) = 2082;
        swift_getKeyPath(byte_1C5BE15A0);
        v53 = v2;
        sub_1C5BC7B74();

        if (*(v2 + 57))
        {
          v31 = v52;
          if (*(v2 + 57) == 1)
          {
            v32 = 0xE800000000000000;
            v4 = 0x676E696B63617274;
          }

          else
          {
            v4 = 0x6172656C65636564;
            v32 = 0xEC000000676E6974;
          }
        }

        else
        {
          v32 = 0xE400000000000000;
          v31 = v52;
        }

        v47 = sub_1C592ADA8(v4, v32, &v54);

        *(v24 + 14) = v47;
        _os_log_impl(&dword_1C5922000, v22, v50, "ScrubberInteractionViewModel.scrubState changed from %{public}s to %{public}s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v25, -1, -1);
        MEMORY[0x1C69510F0](v24, -1, -1);

        (*(v31 + 8))(v7, v51);
      }

      else
      {

        (*(v21 + 8))(v7, v19);
      }
    }

    else
    {
      v33 = v51;
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v33, qword_1EC1A6BC0);
      v35 = v52;
      (*(v52 + 16))(v11, v34, v33);

      v36 = sub_1C5BC7D44();
      v37 = sub_1C5BCB4E4();

      if (os_log_type_enabled(v36, v37))
      {
        v50 = v37;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v54 = v39;
        *v38 = 136446466;
        v40 = 0xE800000000000000;
        v41 = 0x676E696B63617274;
        if (v12 != 1)
        {
          v41 = 0x6172656C65636564;
          v40 = 0xEC000000676E6974;
        }

        if (v12)
        {
          v42 = v41;
        }

        else
        {
          v42 = 1701602409;
        }

        if (v12)
        {
          v43 = v40;
        }

        else
        {
          v43 = 0xE400000000000000;
        }

        v44 = sub_1C592ADA8(v42, v43, &v54);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2082;
        swift_getKeyPath(byte_1C5BE15A0);
        v53 = v2;
        sub_1C5BC7B74();

        if (*(v2 + 57))
        {
          v45 = v52;
          if (*(v2 + 57) == 1)
          {
            v46 = 0xE800000000000000;
            v4 = 0x676E696B63617274;
          }

          else
          {
            v4 = 0x6172656C65636564;
            v46 = 0xEC000000676E6974;
          }
        }

        else
        {
          v46 = 0xE400000000000000;
          v45 = v52;
        }

        v48 = sub_1C592ADA8(v4, v46, &v54);

        *(v38 + 14) = v48;
        _os_log_impl(&dword_1C5922000, v36, v50, "ScrubberInteractionViewModel.scrubState underwent illegal transition from %{public}s to %{public}s. This could cause animation and behavioural issues.", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v39, -1, -1);
        MEMORY[0x1C69510F0](v38, -1, -1);

        (*(v45 + 8))(v11, v51);
      }

      else
      {

        (*(v35 + 8))(v11, v33);
      }
    }
  }
}

uint64_t sub_1C5A88790(_BYTE *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = 0xE800000000000000;
  v5 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v5 = 0x6172656C65636564;
    v4 = 0xEC000000676E6974;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701602409;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E696B63617274;
  if (v3 != 1)
  {
    v9 = 0x6172656C65636564;
    v8 = 0xEC000000676E6974;
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1701602409;
  }

  if (*v1)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 != v10 || v7 != v11)
  {
    v13 = sub_1C5BCBDE4();

    if ((v13 & 1) == 0)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          goto LABEL_24;
        }

        if (v2 == 1)
        {
          v12 = 1;
          goto LABEL_20;
        }
      }

      else if (v2 > 1)
      {
        v12 = 1;
        goto LABEL_20;
      }

      v12 = sub_1C5BCBDE4();
      goto LABEL_20;
    }

LABEL_24:
    v12 = 1;
    return v12 & 1;
  }

  v12 = 1;
LABEL_20:

  return v12 & 1;
}

void sub_1C5A8896C(_BYTE *a1@<X8>)
{
  swift_getKeyPath(byte_1C5BE15A0);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  *a1 = *(v1 + 57);
}

void sub_1C5A88A14(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE15A0);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  *a2 = *(v3 + 57);
}

double sub_1C5A88ABC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696B63617274;
  if (*(v1 + 57) != 1)
  {
    v4 = 0x6172656C65636564;
    v3 = 0xEC000000676E6974;
  }

  if (*(v1 + 57))
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701602409;
  }

  if (*(v1 + 57))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v8 = 0x6172656C65636564;
    v7 = 0xEC000000676E6974;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701602409;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

LABEL_21:
    v12 = *(v1 + 57);
    *(v1 + 57) = v2;
    LOBYTE(v15) = v12;
    sub_1C5A8800C(&v15);
    return result;
  }

  v11 = sub_1C5BCBDE4();

  if (v11)
  {
    goto LABEL_21;
  }

  KeyPath = swift_getKeyPath(byte_1C5BE15A0);
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B64();

  return result;
}

uint64_t sub_1C5A88CC0()
{
  swift_getKeyPath(asc_1C5BE2908);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  return *(v0 + 64);
}

void sub_1C5A88D60(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1C5BE2908);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  *a2 = *(v3 + 64);
}

double sub_1C5A88E08(uint64_t a1)
{
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath(asc_1C5BE2908);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B64();
  }

  return result;
}

double sub_1C5A88F0C()
{
  swift_getKeyPath(byte_1C5BE2970);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  return *(v0 + 72);
}

double sub_1C5A88FAC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2970);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  result = *(v3 + 72);
  *a2 = result;
  return result;
}

void sub_1C5A89054(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2970);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A8916C(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058, &qword_1C5BD7418);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = sub_1C5BC7D64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_1EC1A6BC0);
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_1C5BC7D44();
  v16 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v6;
    v18 = v17;
    *v17 = 134218240;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2048;
    swift_getKeyPath(byte_1C5BE1578);
    v25 = v1;
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B74();

    *(v18 + 14) = *(v1 + 88);
    _os_log_impl(&dword_1C5922000, v15, v16, "ScrubberViewModel.playbackRate changed from %f to %f", v18, 0x16u);
    v19 = v18;
    v6 = v24;
    MEMORY[0x1C69510F0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_1C5A8A408();
  v20 = sub_1C5BC7AC4();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate;
  swift_beginAccess();
  sub_1C59400B0(v2 + v21, v6, &unk_1EC193058, &qword_1C5BD7418);
  swift_beginAccess();
  sub_1C5AA3184(v9, v2 + v21);
  swift_endAccess();
  sub_1C5A89E90(v6);
  sub_1C5924EF4(v6, &unk_1EC193058, &qword_1C5BD7418);
  return sub_1C5924EF4(v9, &unk_1EC193058, &qword_1C5BD7418);
}

double sub_1C5A8950C()
{
  swift_getKeyPath(byte_1C5BE1578);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  return *(v0 + 88);
}

double sub_1C5A895AC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE1578);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

void sub_1C5A89654(double a1)
{
  v3 = *(v1 + 88);
  if (v3 == a1)
  {
    *(v1 + 88) = a1;

    sub_1C5A8916C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE1578);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B64();
  }
}

void sub_1C5A89794(__n128 a1)
{
  v2 = a1.n128_f64[0];
  v3 = sub_1C5BC7AC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = v31 - v9;
  v11 = *(v1 + 80);
  swift_getKeyPath(asc_1C5BE28E0, v8);
  v32 = v11;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if ((*(v11 + 32) & 1) != 0 || (*(v1 + 24) & 1) != 0 || *(v1 + 96) == v2)
  {
    return;
  }

  v12 = *(v11 + 24);
  v13 = *(v1 + 16);
  swift_getKeyPath(byte_1C5BE15A0);
  v14 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead___observationRegistrar;
  v32 = v1;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  if (!*(v1 + 57))
  {

LABEL_9:
    v16 = *(v1 + 96);
    v31[2] = v14;
    if (v16 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v16 > -9.22337204e18)
      {
        v17 = v16;
        swift_getKeyPath(asc_1C5BE2908);
        v32 = v1;
        sub_1C5BC7B74();

        if (*(v1 + 64) != v17)
        {
          v18 = *(v1 + 96);
          if (v12 < v18)
          {
            v18 = v12;
          }

          v19 = floor(v18);
          if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v19 > -9.22337204e18)
            {
              if (v19 < 9.22337204e18)
              {
                v20 = v19;
                swift_getKeyPath(asc_1C5BE2908);
                v32 = v1;
                sub_1C5BC7B74();

                if (*(v1 + 64) != v20)
                {
                  KeyPath = swift_getKeyPath(asc_1C5BE2908);
                  v31[1] = v31;
                  MEMORY[0x1EEE9AC00](KeyPath);
                  v31[-2] = v1;
                  v31[-1] = v20;
                  v32 = v1;
                  sub_1C5BC7B64();
                }

                goto LABEL_20;
              }

LABEL_40:
              __break(1u);
              return;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_20:
        sub_1C5BC7AB4();
        v21 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_playheadPositionTimeLastSet;
        swift_beginAccess();
        (*(v4 + 16))(v6, v1 + v21, v3);
        sub_1C5BC7A74();
        v23 = v22;
        v24 = *(v4 + 8);
        v24(v6, v3);
        v24(v10, v3);
        if (v13 < v23)
        {
          v25 = *(v1 + 96);
          if (*(v1 + 72) == v25)
          {
            *(v1 + 72) = v25;
          }

          else
          {
            v28 = swift_getKeyPath(byte_1C5BE2970);
            MEMORY[0x1EEE9AC00](v28);
            v31[-2] = v1;
            *&v31[-1] = v25;
            v31[3] = v1;
            sub_1C5BC7B64();
          }

          sub_1C5BC7AA4();
          swift_beginAccess();
          (*(v4 + 40))(v1 + v21, v10, v3);
          swift_endAccess();
        }

        return;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = sub_1C5BCBDE4();

  if (v15)
  {
    goto LABEL_9;
  }

  v26 = *(v1 + 96);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_34;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (*(v1 + 64) != v26)
  {
    v27 = swift_getKeyPath(asc_1C5BE2908);
    MEMORY[0x1EEE9AC00](v27);
    v31[-2] = v1;
    v31[-1] = v26;
    v32 = v1;
    sub_1C5BC7B64();

    v26 = *(v1 + 96);
  }

  if (*(v1 + 72) == v26)
  {
    *(v1 + 72) = v26;
  }

  else
  {
    v29 = swift_getKeyPath(byte_1C5BE2970);
    MEMORY[0x1EEE9AC00](v29);
    v31[-2] = v1;
    *&v31[-1] = v26;
    v32 = v1;
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A89E90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058, &qword_1C5BD7418);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = sub_1C5BC7AC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate;
  swift_beginAccess();
  sub_1C59400B0(v1 + v15, v8, &unk_1EC193058, &qword_1C5BD7418);
  v16 = *(v10 + 48);
  v33 = v9;
  if (v16(v8, 1, v9) == 1)
  {
    return sub_1C5924EF4(v8, &unk_1EC193058, &qword_1C5BD7418);
  }

  v18 = *(v10 + 32);
  v19 = v8;
  v20 = v33;
  v18(v14, v19, v33);
  sub_1C59400B0(a1, v5, &unk_1EC193058, &qword_1C5BD7418);
  if (v16(v5, 1, v20) == 1)
  {
    (*(v10 + 8))(v14, v20);
    return sub_1C5924EF4(v5, &unk_1EC193058, &qword_1C5BD7418);
  }

  else
  {
    v21 = v10;
    v22 = v14;
    v23 = v32;
    v18(v32, v5, v20);
    v24 = *(v1 + 80);
    swift_getKeyPath(asc_1C5BE28E0);
    v34 = v24;
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
    sub_1C5BC7B74();

    if ((*(v24 + 32) & 1) == 0)
    {
      v25 = *(v24 + 24);
      sub_1C5BC7A74();
      v27 = v26;
      swift_getKeyPath(byte_1C5BE1578);
      v34 = v1;
      sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
      sub_1C5BC7B74();

      v28.n128_u64[0] = *(v1 + 96);
      v29 = v28.n128_f64[0] + v27 * *(v1 + 88);
      if (v29 <= 0.0)
      {
        v29 = 0.0;
      }

      if (v25 < v29)
      {
        v29 = v25;
      }

      *(v1 + 96) = v29;
      sub_1C5A89794(v28);
    }

    v30 = *(v21 + 8);
    v31 = v33;
    v30(v23, v33);
    return (v30)(v22, v31);
  }
}

uint64_t sub_1C5A8A280(__n128 a1)
{
  v2 = sub_1C5BC7AC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  type metadata accessor for ScrubberSections(0);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  *(v6 + 56) = v7;
  sub_1C5BC7BA4();
  *(v1 + 80) = v6;
  *(v1 + 88) = 0x3FF0000000000000;
  (*(v3 + 56))(v1 + OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate, 1, 1, v2);
  sub_1C5BC7BA4();
  *(v1 + 96) = 0;
  sub_1C5BC7A64();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_playheadPositionTimeLastSet, v5, v2);
  sub_1C5A8A408();
  return v1;
}

void sub_1C5A8A408()
{
  swift_getKeyPath(byte_1C5BE2B80);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  if (*(v0 + 56))
  {
    v1 = 0.00833333333;
  }

  else
  {
    v1 = 1.0 / *(v0 + 48);
  }

  v2 = *(v0 + 80);
  swift_getKeyPath(asc_1C5BE28E0);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if ((*(v2 + 32) & 1) == 0)
  {
    v3 = *(v2 + 24);
    swift_getKeyPath(aX_9);
    sub_1C5BC7B74();

    if ((*(v2 + 48) & 1) == 0)
    {
      v4 = *(v2 + 40);
      swift_getKeyPath(aH_7);
      sub_1C5BC7B74();

      if ((*(v0 + 40) & 1) == 0)
      {
        v5 = v3 / (v4 * *(v0 + 32));
        swift_getKeyPath(byte_1C5BE1578);
        sub_1C5BC7B74();

        if (v5 * (1.0 / *(v0 + 88)) * 0.5 > v1)
        {
          v1 = v5 * (1.0 / *(v0 + 88)) * 0.5;
        }
      }
    }
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
}

uint64_t sub_1C5A8A648()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_playheadPositionTimeLastSet;
  v2 = sub_1C5BC7AC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C5924EF4(v0 + OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate, &unk_1EC193058, &qword_1C5BD7418);
  v3 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead___observationRegistrar;
  v4 = sub_1C5BC7BB4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id sub_1C5A8A74C()
{
  v1 = sub_1C5BC90F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultConfiguration];
  v6 = [objc_opt_self() hiddenConfiguration];
  [v5 setLabelsConfiguration_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961A0, &qword_1C5BE2D00);
  sub_1C5BC96B4();
  v7 = v14;
  v8 = [objc_allocWithZone(MEMORY[0x1E69585E0]) initWithSource_];

  [v8 setConfiguration_];
  sub_1C5BC96B4();
  v9 = v14;
  [v8 setDelegate_];

  sub_1C5BC96B4();
  v10 = v14;
  type metadata accessor for MediaTimelineControl(0);
  sub_1C594C704(v4);
  v11 = *v0;
  swift_getKeyPath(byte_1C5BE2D08);
  v13 = v11;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  sub_1C5A8B968(v4, (*(v11 + 56) & 1) == 0, v8);

  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1C5A8A9CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = sub_1C5BC90F4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1C5BC8F34();
  v8 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for MediaTimelineControl(0) + 24);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v40 = *v11;
  }

  else
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    v3 = v2;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v14 = sub_1C5942458(v12, 0);
    (*(v8 + 8))(v10, v37, v14);
    LOBYTE(v12) = v40;
  }

  [v38 setFineScrubbingStyle_];
  v15 = *v3;
  v16 = *(*(*(*v3 + 16) + 72) + 80);
  swift_getKeyPath(asc_1C5BE28E0);
  v40 = v16;
  v37 = sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if (*(v16 + 32))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961A0, &qword_1C5BE2D00);
    sub_1C5BC96B4();
    v17 = v40;
    LODWORD(v18) = 1.0;
    [v40 setMaxValue_];

    sub_1C5BC96B4();
    v19 = v40;
    [v40 setCurrentValue_];

    sub_1C5BC96B4();
    v20 = v40;
    sub_1C592535C(0, &qword_1EC1961A8, 0x1E6958620);
    v21 = sub_1C5BCB044();
    [v20 setTimeRangeMarks_];
  }

  else
  {
    v22 = *(v16 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961A0, &qword_1C5BE2D00);
    sub_1C5BC96B4();
    v23 = a2;
    v24 = v40;
    sub_1C594C704(v7);
    swift_getKeyPath(byte_1C5BE2D08);
    v39 = v15;
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B74();

    sub_1C5A8B968(v7, (*(v15 + 56) & 1) == 0, v38);

    (*(v35 + 8))(v7, v36);
    sub_1C5BC96B4();
    v25 = v40;
    *&v26 = v22;
    [v40 setMaxValue_];

    sub_1C5BC96B4();
    v27 = v40;
    v28 = *(*(v15 + 16) + 72);
    swift_getKeyPath(byte_1C5BE2970);
    v39 = v28;
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B74();

    v29 = *(v28 + 72);
    *&v29 = v29;
    [v27 setCurrentValue_];

    sub_1C5BC96B4();
    v30 = v40;
    v31 = *(*(*(v15 + 16) + 72) + 80);
    swift_getKeyPath(byte_1C5BE2A20);
    v39 = v31;
    sub_1C5BC7B74();

    v33 = *(v31 + 56);
    MEMORY[0x1EEE9AC00](v32);
    *(&v34 - 2) = v23;

    sub_1C5A7D31C(sub_1C5AA34C8, (&v34 - 4), v33);

    sub_1C592535C(0, &qword_1EC1961A8, 0x1E6958620);
    v21 = sub_1C5BCB044();

    [v30 setTimeRangeMarks_];
  }
}

void sub_1C5A8AFF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = v3;
  v5 = v3 + 1.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961A0, &qword_1C5BE2D00);
  sub_1C5BC96B4();
  v6 = objc_allocWithZone(MEMORY[0x1E6958620]);
  v7 = sub_1C5BCAE44();
  *&v8 = v4;
  *&v9 = v5;
  v10 = [v6 initWithStartValue:v7 endValue:v11 identifier:v8 markUIProvider:v9];

  *a2 = v10;
}

uint64_t sub_1C5A8B264(void *a1)
{
  v3 = sub_1C5BC7D64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_1EC1A6BC0);
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = 0;
    *(v11 + 12) = 2048;
    [v8 maxValue];
    *(v11 + 14) = v12;
    _os_log_impl(&dword_1C5922000, v9, v10, "MediaTimelineControl.Coordinator: will begin changing (min=%f, max=%f)", v11, 0x16u);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  *(v8 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState) = 1;
  v18 = 1;

  sub_1C5A820C8(&v18);

  [v8 currentValue];
  v14.n128_f64[0] = v13;
  v17 = 0;
  sub_1C5A7E450(&v17, v14);

  return sub_1C5A8C0A8(a1, 1);
}

uint64_t sub_1C5A8B594(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C5922000, v9, v10, "MediaTimelineControl.Coordinator: did end tracking", v11, 2u);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *(v2 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState) = 2;
  v14 = 2;

  sub_1C5A820C8(&v14);

  return sub_1C5A8C0A8(a1, 0);
}

uint64_t sub_1C5A8B968(uint64_t a1, int a2, void *a3)
{
  v52 = a3;
  v50 = a2;
  v47 = type metadata accessor for ScrubberSpecs.TrackEffects(0);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C5BC90F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961D8, &qword_1C5BE2D40);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961D0, &qword_1C5BE2D38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v39[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39[-v18];
  v20 = OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_contrast;
  swift_beginAccess();
  v21 = *(v7 + 16);
  v46 = a1;
  v42 = v21;
  v43 = v7 + 16;
  v21(v19, a1, v6);
  v41 = *(v7 + 56);
  v41(v19, 0, 1, v6);
  v22 = *(v10 + 56);
  v44 = v20;
  sub_1C59400B0(v3 + v20, v12, &qword_1EC1961D0, &qword_1C5BE2D38);
  sub_1C59400B0(v19, &v12[v22], &qword_1EC1961D0, &qword_1C5BE2D38);
  v23 = *(v7 + 48);
  v24 = qword_1EC194FB8 + 72;
  if (v23(v12, 1, v6) != 1)
  {
    sub_1C59400B0(v12, v49, &qword_1EC1961D0, &qword_1C5BE2D38);
    if (v23(&v12[v22], 1, v6) != 1)
    {
      v27 = v51;
      (*(v7 + 32))(v51, &v12[v22], v6);
      sub_1C5A9B150(&qword_1EDA46328, MEMORY[0x1E697F610], MEMORY[0x1E697F620]);
      v28 = v49;
      v40 = sub_1C5BCADB4();
      v29 = *(v7 + 8);
      v29(v27, v6);
      sub_1C5924EF4(v19, &qword_1EC1961D0, &qword_1C5BE2D38);
      v29(v28, v6);
      v24 = &qword_1EC194FB8[9];
      result = sub_1C5924EF4(v12, &qword_1EC1961D0, &qword_1C5BE2D38);
      v26 = v50;
      if ((v40 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_1C5924EF4(v19, &qword_1EC1961D0, &qword_1C5BE2D38);
    (*(v7 + 8))(v49, v6);
LABEL_6:
    sub_1C5924EF4(v12, &qword_1EC1961D8, &qword_1C5BE2D40);
    v26 = v50;
    goto LABEL_9;
  }

  sub_1C5924EF4(v19, &qword_1EC1961D0, &qword_1C5BE2D38);
  if (v23(&v12[v22], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  result = sub_1C5924EF4(v12, &qword_1EC1961D0, &qword_1C5BE2D38);
  v26 = v50;
LABEL_8:
  if (*(v3 + v24[360]) == (v26 & 1))
  {
    return result;
  }

LABEL_9:
  v30 = v45;
  v42(v45, v46, v6);
  v41(v30, 0, 1, v6);
  v31 = v44;
  swift_beginAccess();
  sub_1C5AA36AC(v30, v3 + v31);
  swift_endAccess();
  *(v3 + v24[360]) = v26 & 1;
  v32 = v51;
  (*(v7 + 104))(v51, *MEMORY[0x1E697F608], v6);
  LOBYTE(v31) = sub_1C5BC8274();
  (*(v7 + 8))(v32, v6);
  if (v31)
  {
    v33 = v48;
    if (qword_1EC190748 != -1)
    {
      swift_once();
    }

    v34 = qword_1EC1A6B60;
  }

  else
  {
    v33 = v48;
    if (qword_1EC190740 != -1)
    {
      swift_once();
    }

    v34 = qword_1EC1A6B48;
  }

  v35 = __swift_project_value_buffer(v47, v34);
  sub_1C5AA3634(v35, v33, type metadata accessor for ScrubberSpecs.TrackEffects);
  v36 = [v52 configuration];
  if (*(v3 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState) && *(v3 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState) == 1)
  {

    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v37 = sub_1C5BCBDE4();

  if (v26)
  {
LABEL_21:
    v38 = (v33 + 16);
    goto LABEL_24;
  }

  v38 = v33;
  if (v37)
  {
LABEL_23:
    v38 = (v33 + 8);
  }

LABEL_24:
  [v36 setCurrentValueVisualEffect_];
  [v36 setMaxValueVisualEffect_];
  [v52 setConfiguration_];

  return sub_1C5AA5994(v33, type metadata accessor for ScrubberSpecs.TrackEffects);
}

uint64_t sub_1C5A8C0A8(void *a1, int a2)
{
  v31 = a2;
  v32 = a1;
  v30 = type metadata accessor for ScrubberSpecs.TrackEffects(0);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961D0, &qword_1C5BE2D38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_1C5BC90F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_contrast;
  swift_beginAccess();
  sub_1C59400B0(v2 + v15, v7, &qword_1EC1961D0, &qword_1C5BE2D38);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    v17 = *(v9 + 104);
    v17(v14, *MEMORY[0x1E697F600], v8);
    if (v16(v7, 1, v8) != 1)
    {
      sub_1C5924EF4(v7, &qword_1EC1961D0, &qword_1C5BE2D38);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v17 = *(v9 + 104);
  }

  v17(v11, *MEMORY[0x1E697F608], v8);
  v18 = sub_1C5BC8274();
  v19 = *(v9 + 8);
  v19(v11, v8);
  if (v18)
  {
    if (qword_1EC190748 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC1A6B60;
  }

  else
  {
    if (qword_1EC190740 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC1A6B48;
  }

  v21 = __swift_project_value_buffer(v30, v20);
  sub_1C5AA3634(v21, v4, type metadata accessor for ScrubberSpecs.TrackEffects);
  v22 = v32;
  v23 = [v32 configuration];
  v24 = v23;
  v25 = 8;
  if ((v31 & 1) == 0)
  {
    v25 = 0;
  }

  [v23 setCurrentValueVisualEffect_];
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v24;
  v27 = v22;
  v28 = v24;
  sub_1C5AA24B4(sub_1C5AA369C, v26);

  sub_1C5AA5994(v4, type metadata accessor for ScrubberSpecs.TrackEffects);
  return (v19)(v14, v8);
}

uint64_t sub_1C5A8C564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196278, &qword_1C5BE2EA0);
  sub_1C5BCA694();
  return v1;
}

void *sub_1C5A8C5BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for MediaTimelineControl.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_maxValue] = 1065353216;
  *&v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_currentValue] = 0;
  *&v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_timeRangeMarks] = MEMORY[0x1E69E7CC0];
  v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState] = 0;
  v6 = OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_contrast;
  v7 = sub_1C5BC90F4();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_isDisabled] = 0;
  *&v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_viewModel] = v3;
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1C5A8C6CC(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x4024000000000000;
  }

  return result;
}

uint64_t sub_1C5A8C6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A9B150(&qword_1EC195F78, type metadata accessor for MediaTimelineControl, &unk_1C5BE2258);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5A8C778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A9B150(&qword_1EC195F78, type metadata accessor for MediaTimelineControl, &unk_1C5BE2258);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5A8C80C(uint64_t a1)
{
  sub_1C5A9B150(&qword_1EC195F78, type metadata accessor for MediaTimelineControl, &unk_1C5BE2258);
  sub_1C5BC9264();
  __break(1u);
}

uint64_t sub_1C5A8C864()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v8 = j__swift_release(v5);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1C5A8C9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C59400B0(v2 + *(a1 + 40), &v15 - v10, &qword_1EC195900, &qword_1C5BD5AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C5BC90F4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C5A8CBAC(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v10 = sub_1C5942458(v8, 0);
    (*(v4 + 8))(v6, v3, v10);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

MediaCoreUI::ScrubberLoadingConfiguration __swiftcall ScrubberLoadingConfiguration.init(disableInteraction:showPlaceholderLabels:showSpinner:availableDuration:)(Swift::Bool disableInteraction, Swift::Bool showPlaceholderLabels, Swift::Bool showSpinner, Swift::Double_optional availableDuration)
{
  *v5 = disableInteraction;
  *(v5 + 1) = showPlaceholderLabels;
  *(v5 + 2) = showSpinner;
  *(v5 + 8) = *&availableDuration.is_nil;
  *(v5 + 16) = v4 & 1;
  result.availableDuration.value = availableDuration.value;
  result.availableDuration.is_nil = showPlaceholderLabels;
  result.disableInteraction = disableInteraction;
  return result;
}

void Scrubber.init(duration:loadingConfiguration:playbackRate:sections:accessoryView:onScrub:)(double a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, void (*a5)(__n128)@<X4>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11)
{
  v15 = *a3;
  v16 = a3[1];
  v17 = a3[2];
  v29 = *(a3 + 1);
  v28 = a3[16];
  type metadata accessor for ScrubberViewModel(0);
  swift_allocObject();
  sub_1C5A80ECC();
  sub_1C5BCA684();
  *a8 = v32;
  *(a8 + 8) = v33;
  type metadata accessor for ScrubberProxy(0);
  sub_1C5A9B150(&qword_1EC1958F8, type metadata accessor for ScrubberProxy, &protocol conformance descriptor for ScrubberProxy);
  *(a8 + 16) = sub_1C5BC8314();
  *(a8 + 24) = v18 & 1;
  v20 = type metadata accessor for Scrubber(0, a10, a11, v19);
  v21 = v20[10];
  *(a8 + v21) = swift_getKeyPath(byte_1C5BE1470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v22 = a8 + v20[11];
  *v22 = swift_getKeyPath(aP_24);
  *(v22 + 8) = 0;
  v23 = a8 + v20[12];
  *v23 = swift_getKeyPath(aP_25);
  *(v23 + 8) = 0;
  v24.n128_f64[0] = a1;
  if (a2 & 1 | (a1 <= 0.0))
  {
    v25 = 0.0;
  }

  else
  {
    v25 = a1;
  }

  v26 = a8 + v20[13];
  *v26 = v25;
  *(v26 + 8) = a2 & 1 | (a1 <= 0.0);
  v27 = a8 + v20[14];
  *v27 = v15;
  *(v27 + 1) = v16;
  *(v27 + 2) = v17;
  *(v27 + 8) = v29;
  *(v27 + 16) = v28;
  *(a8 + v20[15]) = a9;
  *(a8 + v20[16]) = a4;
  a5(v24);
  sub_1C5A8C564();
  swift_getKeyPath(a0_6);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B64();
}

uint64_t Scrubber.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_1C5BC89D4();
  v122 = *(v3 - 8);
  v123 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v121 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v118 = v6;
  v119 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1C5BC9654();
  v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195918, &qword_1C5BE1520);
  v7 = *(a1 + 24);
  v127 = *(a1 + 16);
  v128 = a1;
  v126 = v7;
  type metadata accessor for Scrubber.CompanionViews(255, v127, v7, v8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920, &qword_1C5BE1528);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x1E697E270];
  v173 = WitnessTable;
  v174 = MEMORY[0x1E697E270];
  v11 = swift_getWitnessTable();
  v12 = MEMORY[0x1E697F548];
  v13 = sub_1C5924F54(&qword_1EC195928, &qword_1EC195920, &qword_1C5BE1528, MEMORY[0x1E697F548]);
  v171 = v11;
  v172 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1C5A25B6C();
  v169 = v14;
  v170 = v15;
  v167 = swift_getWitnessTable();
  v168 = v10;
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195938, &qword_1C5BE1530);
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  v16 = sub_1C5BC8AB4();
  v117 = sub_1C5BC7AC4();
  v17 = sub_1C5A9E260();
  v18 = swift_getWitnessTable();
  v165 = v17;
  v166 = v18;
  v163 = swift_getWitnessTable();
  v164 = MEMORY[0x1E697E070];
  v19 = swift_getWitnessTable();
  v20 = sub_1C5A9E5B4();
  v161 = v19;
  v162 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1C5924F54(&qword_1EC1959A8, &qword_1EC195938, &qword_1C5BE1530, v12);
  v159 = v21;
  v160 = v22;
  v23 = v129;
  v157 = swift_getWitnessTable();
  v158 = MEMORY[0x1E697EBB8];
  v24 = swift_getWitnessTable();
  v25 = sub_1C5A9B150(&qword_1EDA4E020, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  *&v151 = v16;
  *(&v151 + 1) = v117;
  *&v152 = v24;
  *(&v152 + 1) = v25;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5A9B150(&unk_1EDA461C8, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  sub_1C5BC8544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959B0, &qword_1C5BE1558);
  swift_getTupleTypeMetadata2();
  v26 = sub_1C5BCAB74();
  v99[1] = swift_getWitnessTable();
  v100 = v26;
  v27 = sub_1C5BCA7D4();
  v102 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v101 = v99 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959B8, &unk_1C5BE1560);
  v29 = sub_1C5BC8AB4();
  v103 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v125 = v99 - v30;
  v104 = v31;
  v32 = sub_1C5BC8AB4();
  v106 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v105 = v99 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0, &qword_1C5BDA520);
  v107 = v32;
  v34 = sub_1C5BC8AB4();
  v109 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v108 = v99 - v35;
  v110 = v36;
  v37 = sub_1C5BC8AB4();
  v114 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v111 = v99 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8, &qword_1C5BE1570);
  v115 = v37;
  v39 = sub_1C5BC8AB4();
  v116 = *(v39 - 8);
  v117 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v112 = v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v113 = v99 - v42;
  v43 = *(*(sub_1C5A8C564() + 16) + 72);
  swift_getKeyPath(byte_1C5BE1578);
  *&v151 = v43;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  v44 = *(v43 + 88);

  if (v44 != 0.0)
  {
    v46 = *(*(sub_1C5A8C564() + 16) + 72);
    swift_getKeyPath(byte_1C5BE15A0);
    *&v151 = v46;
    sub_1C5BC7B74();

    v47 = *(v46 + 57);

    if (v47)
    {
      sub_1C5BCBDE4();
    }
  }

  MEMORY[0x1EEE9AC00](v45);
  v48 = v127;
  v99[-4] = v127;
  v49 = v48;
  v50 = v126;
  v99[-3] = v126;
  v51 = v50;
  LOBYTE(v99[-2]) = v52 & 1;
  v99[-1] = v23;
  sub_1C5BC9134();
  v53 = v101;
  v54 = sub_1C5BCA7C4();
  MEMORY[0x1EEE9AC00](v54);
  v99[-4] = v49;
  v99[-3] = v51;
  v99[-2] = v23;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1959E0, &qword_1C5BE15C8);
  v100 = swift_getWitnessTable();
  sub_1C5A9E644();
  sub_1C5BCA2C4();
  (*(v102 + 8))(v53, v27);
  v55 = v128;
  v102 = sub_1C5A8C564();
  v56 = (v23 + v55[13]);
  v57 = *v56;
  v58 = *(v56 + 8);
  v59 = (v23 + v55[14]);
  LODWORD(v101) = *v59;
  LOBYTE(v53) = v59[1];
  v60 = v23;
  v61 = v59[2];
  v62 = *(v60 + v55[15]);
  v63 = *(v59 + 1);
  LOBYTE(v49) = v59[16];
  v64 = *(v60 + v55[16]);

  v65 = sub_1C5A8C864();
  v148 = v58;
  v147 = v49;
  KeyPath = swift_getKeyPath(aH_8);
  v146 = 0;
  *&v140 = v102;
  *(&v140 + 1) = v57;
  LOBYTE(v141) = v148;
  *(&v141 + 1) = *v150;
  DWORD1(v141) = *&v150[3];
  BYTE8(v141) = v101;
  BYTE9(v141) = v53;
  BYTE10(v141) = v61;
  *(&v141 + 11) = *&v149[7];
  HIBYTE(v141) = v149[11];
  *&v142 = v63;
  BYTE8(v142) = v147;
  HIDWORD(v142) = *&v149[3];
  *(&v142 + 9) = *v149;
  *&v143 = v62;
  *(&v143 + 1) = v64;
  *&v144 = v65;
  *(&v144 + 1) = KeyPath;
  v145 = 0;
  v67 = sub_1C5924F54(&qword_1EC195A00, &qword_1EC1959B8, &unk_1C5BE1560, MEMORY[0x1E697EC18]);
  v138 = v100;
  v139 = v67;
  v68 = MEMORY[0x1E697E858];
  v69 = v104;
  v70 = swift_getWitnessTable();
  v71 = v105;
  v72 = v125;
  MEMORY[0x1C694E550](&v140, v69, &type metadata for ScrubberStateChangeModifier, v70);
  v153 = v142;
  v154 = v143;
  v155 = v144;
  v156 = v145;
  v151 = v140;
  v152 = v141;
  sub_1C5A9E6F4(&v151);
  (*(v103 + 8))(v72, v69);
  v74 = v119;
  v73 = v120;
  (*(v120 + 16))(v119, v129, v55);
  v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v76 = swift_allocObject();
  v77 = v126;
  *(v76 + 16) = v127;
  *(v76 + 24) = v77;
  (*(v73 + 32))(v76 + v75, v74, v55);
  v78 = sub_1C5A9E7B0();
  v136 = v70;
  v137 = v78;
  v79 = v107;
  v80 = swift_getWitnessTable();
  sub_1C59AEC40();
  v81 = v108;
  sub_1C5BC9FE4();

  (*(v106 + 8))(v71, v79);
  *&v140 = sub_1C5A8C564();
  v82 = sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0, &qword_1C5BDA520, MEMORY[0x1E69802E0]);
  v134 = v80;
  v135 = v82;
  v102 = v68;
  v83 = v110;
  v84 = swift_getWitnessTable();
  v85 = v111;
  MEMORY[0x1C694E550](&v140, v83, &type metadata for ScrubberWindowPropertiesModifier, v84);

  (*(v109 + 8))(v81, v83);
  swift_getKeyPath(asc_1C5BE1608);
  v87 = v121;
  v86 = v122;
  v88 = v123;
  (*(v122 + 104))(v121, *MEMORY[0x1E697E7D0], v123);
  v89 = sub_1C5A9E804();
  v132 = v84;
  v133 = v89;
  v90 = v115;
  v91 = swift_getWitnessTable();
  v92 = v112;
  sub_1C5BC9DF4();

  (*(v86 + 8))(v87, v88);
  (*(v114 + 8))(v85, v90);
  v93 = sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8, &qword_1C5BE1570, MEMORY[0x1E6980A18]);
  v130 = v91;
  v131 = v93;
  v94 = v117;
  v95 = swift_getWitnessTable();
  v96 = v113;
  sub_1C593EDC0(v92, v94, v95);
  v97 = *(v116 + 8);
  v97(v92, v94);
  sub_1C593EDC0(v96, v94, v95);
  return (v97)(v96, v94);
}

uint64_t sub_1C5A8E0BC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a2;
  v61 = a1;
  v63 = a5;
  v55 = a3;
  v56 = a4;
  v60 = type metadata accessor for Scrubber(0, a3, a4, a4);
  v58 = *(v60 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v45 - v7;
  v64 = sub_1C5BC9654();
  MEMORY[0x1EEE9AC00](v64);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195918, &qword_1C5BE1520);
  type metadata accessor for Scrubber.CompanionViews(255, a3, a4, v9);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920, &qword_1C5BE1528);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x1E697E270];
  v89 = WitnessTable;
  v90 = MEMORY[0x1E697E270];
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x1E697F548];
  v14 = sub_1C5924F54(&qword_1EC195928, &qword_1EC195920, &qword_1C5BE1528, MEMORY[0x1E697F548]);
  v87 = v12;
  v88 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_1C5A25B6C();
  v85 = v15;
  v86 = v16;
  v83 = swift_getWitnessTable();
  v84 = v11;
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195938, &qword_1C5BE1530);
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  v17 = sub_1C5BC8AB4();
  v18 = sub_1C5BC7AC4();
  v52 = v18;
  v19 = sub_1C5A9E260();
  v20 = swift_getWitnessTable();
  v81 = v19;
  v82 = v20;
  v79 = swift_getWitnessTable();
  v80 = MEMORY[0x1E697E070];
  v21 = swift_getWitnessTable();
  v22 = sub_1C5A9E5B4();
  v77 = v21;
  v78 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5924F54(&qword_1EC1959A8, &qword_1EC195938, &qword_1C5BE1530, v13);
  v75 = v23;
  v76 = v24;
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x1E697EBB8];
  v53 = v17;
  v25 = swift_getWitnessTable();
  v51 = v25;
  v50 = sub_1C5A9B150(&qword_1EDA4E020, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v69 = v17;
  v70 = v18;
  v71 = v25;
  v72 = v50;
  v49 = MEMORY[0x1E6981448];
  swift_getOpaqueTypeMetadata2();
  v46 = sub_1C5BC8AB4();
  v48 = sub_1C5A9B150(&unk_1EDA461C8, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  v26 = sub_1C5BC8544();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v47 = &v45 - v31;
  v32 = v54;
  sub_1C5BC9644();
  v33 = v58;
  v34 = v57;
  v35 = v60;
  (*(v58 + 16))(v57, v62, v60);
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v56;
  *(v37 + 16) = v55;
  *(v37 + 24) = v38;
  (*(v33 + 32))(v37 + v36, v34, v35);
  v69 = v53;
  v70 = v52;
  v71 = v51;
  v72 = v50;
  v68[3] = swift_getOpaqueTypeConformance2();
  v68[4] = MEMORY[0x1E697E5D8];
  v39 = v46;
  v40 = swift_getWitnessTable();
  sub_1C5A7D1C4(v32, sub_1C5AA3C54, v37, v64, v39, v48, v40);
  v68[2] = v40;
  v41 = swift_getWitnessTable();
  v42 = v47;
  sub_1C593EDC0(v29, v26, v41);
  v43 = *(v27 + 8);
  v43(v29, v26);
  (*(v27 + 16))(v29, v42, v26);
  v69 = 0x2D2D3A2D2DLL;
  v70 = 0xE500000000000000;
  LOBYTE(v71) = 0;
  v68[0] = v29;
  v68[1] = &v69;
  v67[0] = v26;
  v67[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1959B0, &qword_1C5BE1558);
  v65 = v41;
  v66 = sub_1C5AA3D1C();
  sub_1C594226C(v68, 2uLL, v67);
  v43(v42, v26);

  return (v43)(v29, v26);
}

uint64_t sub_1C5A8E930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v185 = a4;
  v133 = a2;
  v175 = a1;
  v180 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90);
  v178 = *(v7 - 8);
  v179 = v7;
  v174 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v177 = &v128 - v8;
  v181 = a3;
  v186 = type metadata accessor for Scrubber(0, a3, a4, v9);
  v172 = *(v186 - 8);
  v170 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v171 = &v128 - v10;
  v184 = sub_1C5BC7AC4();
  v176 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v173 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1C5BC90F4();
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v164 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v163 = &v128 - v14;
  v168 = sub_1C5BCAB54();
  v166 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v165 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195950, &qword_1C5BE1538) - 8;
  MEMORY[0x1EEE9AC00](v132);
  v182 = (&v128 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195918, &qword_1C5BE1520);
  MEMORY[0x1EEE9AC00](v17);
  v155 = &v128 - v18;
  type metadata accessor for Scrubber.CompanionViews(255, a3, a4, v19);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920, &qword_1C5BE1528);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v20 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v22 = MEMORY[0x1E697E270];
  v209 = WitnessTable;
  v210 = MEMORY[0x1E697E270];
  v23 = swift_getWitnessTable();
  v162 = MEMORY[0x1E697F548];
  v24 = sub_1C5924F54(&qword_1EC195928, &qword_1EC195920, &qword_1C5BE1528, MEMORY[0x1E697F548]);
  v207 = v23;
  v208 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_1C5A25B6C();
  v205 = v25;
  v206 = v26;
  v203 = swift_getWitnessTable();
  v204 = v22;
  v27 = swift_getWitnessTable();
  v143 = v20;
  v135 = v27;
  sub_1C5BC8BE4();
  v156 = v17;
  v28 = sub_1C5BC8AB4();
  v138 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v137 = &v128 - v29;
  v30 = sub_1C5BC8AB4();
  v141 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v139 = &v128 - v31;
  v32 = sub_1C5BC8AB4();
  v145 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v144 = &v128 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195938, &qword_1C5BE1530);
  v34 = sub_1C5BC8AB4();
  v159 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v158 = &v128 - v35;
  sub_1C5BC8BC4();
  v36 = sub_1C5BC8AB4();
  v161 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v183 = &v128 - v37;
  v38 = sub_1C5A9E260();
  v39 = swift_getWitnessTable();
  v129 = v38;
  v201 = v38;
  v202 = v39;
  v140 = v28;
  v130 = swift_getWitnessTable();
  v199 = v130;
  v200 = MEMORY[0x1E697E070];
  v142 = v30;
  v40 = swift_getWitnessTable();
  v41 = sub_1C5A9E5B4();
  v131 = v40;
  v197 = v40;
  v198 = v41;
  v147 = v32;
  v42 = v181;
  v43 = swift_getWitnessTable();
  v44 = sub_1C5924F54(&qword_1EC1959A8, &qword_1EC195938, &qword_1C5BE1530, v162);
  v134 = v43;
  v195 = v43;
  v196 = v44;
  v160 = v34;
  v136 = swift_getWitnessTable();
  v193 = v136;
  v194 = MEMORY[0x1E697EBB8];
  v45 = swift_getWitnessTable();
  v46 = sub_1C5A9B150(&qword_1EDA4E020, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v162 = v36;
  *&v211 = v36;
  *(&v211 + 1) = v184;
  v153 = v45;
  *&v212 = v45;
  *(&v212 + 1) = v46;
  v149 = v46;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v151 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v146 = &v128 - v48;
  v152 = v49;
  v50 = sub_1C5BC8AB4();
  v154 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v148 = &v128 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v150 = &v128 - v53;
  v54 = v133;
  v55 = sub_1C5A8C564();
  v56 = v182;
  *v182 = v55;
  v57 = type metadata accessor for MediaTimelineControl(0);
  v58 = *(v57 + 20);
  *(v56 + v58) = swift_getKeyPath(byte_1C5BE1470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v59 = v56 + *(v57 + 24);
  *v59 = swift_getKeyPath(byte_1C5BE1650);
  v59[8] = 0;
  v60 = sub_1C5A8C564();
  *(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195970, &qword_1C5BE1548) + 36)) = v60;
  v61 = sub_1C5A8C564();
  swift_getKeyPath(byte_1C5BE2D08);
  *&v211 = v61;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  LOBYTE(v60) = *(v61 + 56);

  *(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195960, &qword_1C5BE1540) + 36)) = v60;
  v62 = sub_1C5BCAA54();
  v64 = v63;
  sub_1C5A8FD60(v42, v185, v65, &v211);
  v66 = v56 + *(v132 + 44);
  *v66 = v62;
  *(v66 + 1) = v64;
  v67 = v212;
  *(v66 + 1) = v211;
  *(v66 + 2) = v67;
  v68 = v214;
  *(v66 + 3) = v213;
  *(v66 + 4) = v68;
  v69 = v54;
  v70 = *(*(sub_1C5A8C564() + 16) + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v189 = v70;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  LODWORD(v62) = *(v70 + 57);

  v157 = v50;
  v71 = v42;
  if (v62 == 1)
  {
    v72 = 1;
  }

  else
  {
    v72 = sub_1C5BCBDE4();
  }

  v73 = *(sub_1C5A8C564() + 16);
  swift_getKeyPath(byte_1C5BE2AA0);
  v189 = v73;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v74 = *(v73 + 48);
  v132 = *(v73 + 32);
  v128 = v74;

  v75 = v155;
  sub_1C59E7D34(v182, v155, &qword_1EC195950, &qword_1C5BE1538);
  v76 = v75 + *(v156 + 36);
  *v76 = v72 & 1;
  *(v76 + 24) = v128;
  *(v76 + 8) = v132;
  v77 = sub_1C5BCAA44();
  MEMORY[0x1EEE9AC00](v77);
  v78 = v185;
  *(&v128 - 4) = v71;
  *(&v128 - 3) = v78;
  *(&v128 - 2) = v69;
  v79 = v137;
  sub_1C5BCA2C4();
  sub_1C5924EF4(v75, &qword_1EC195918, &qword_1C5BE1520);
  v80 = *(sub_1C5A8C564() + 16);
  swift_getKeyPath(a8_6);
  v189 = v80;
  sub_1C5BC7B74();

  sub_1C5BCABD4();
  v82 = v139;
  v81 = v140;
  sub_1C5BC9E54();
  (*(v138 + 8))(v79, v81);
  v83 = sub_1C5A8C564();
  KeyPath = swift_getKeyPath(byte_1C5BE2A48);
  v189 = v83;
  v190 = KeyPath;
  LOBYTE(v191) = 0;
  v85 = v144;
  v86 = v142;
  MEMORY[0x1C694E550](&v189, v142, &type metadata for SectionDelimiterModifier, v131);

  (*(v141 + 8))(v82, v86);
  if (qword_1EC190780 != -1)
  {
    swift_once();
  }

  v87 = *(sub_1C5A8C564() + 16);
  swift_getKeyPath(a8_6);
  v189 = v87;
  sub_1C5BC7B74();

  v88 = *(v87 + 64);

  v189 = v88;
  v89 = v158;
  v90 = v147;
  sub_1C5BCA384();
  (*(v145 + 8))(v85, v90);
  v91 = v163;
  sub_1C5A8C9A8(v186, v163);
  v92 = v167;
  v93 = v164;
  v94 = v169;
  (*(v167 + 104))(v164, *MEMORY[0x1E697F608], v169);
  sub_1C5A9B150(&qword_1EDA46328, MEMORY[0x1E697F610], MEMORY[0x1E697F620]);
  v95 = sub_1C5BCADB4();
  v96 = *(v92 + 8);
  v96(v93, v94);
  v96(v91, v94);
  v98 = v165;
  v97 = v166;
  v99 = MEMORY[0x1E6981DF0];
  if ((v95 & 1) == 0)
  {
    v99 = MEMORY[0x1E6981DB8];
  }

  v100 = v168;
  (*(v166 + 104))(v165, *v99, v168);
  v101 = v160;
  sub_1C5BCA394();
  (*(v97 + 8))(v98, v100);
  (*(v159 + 8))(v89, v101);
  v102 = v173;
  v103 = v179;
  v104 = v175;
  sub_1C5BC8514();
  v105 = v171;
  v106 = v172;
  (*(v172 + 16))(v171, v69, v186);
  v108 = v177;
  v107 = v178;
  (*(v178 + 16))(v177, v104, v103);
  v109 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v110 = (v170 + *(v107 + 80) + v109) & ~*(v107 + 80);
  v111 = swift_allocObject();
  v113 = v185;
  v112 = v186;
  *(v111 + 16) = v181;
  *(v111 + 24) = v113;
  (*(v106 + 32))(v111 + v109, v105, v112);
  (*(v107 + 32))(v111 + v110, v108, v103);
  v114 = v146;
  v115 = v162;
  v116 = v183;
  v117 = v184;
  v118 = v153;
  v119 = v149;
  sub_1C5BCA344();

  (*(v176 + 8))(v102, v117);
  (*(v161 + 8))(v116, v115);
  sub_1C5BC98F4();
  v189 = v115;
  v190 = v117;
  v191 = v118;
  v192 = v119;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v121 = v148;
  v122 = v152;
  sub_1C5BCA2F4();
  (*(v151 + 8))(v114, v122);
  v187 = OpaqueTypeConformance2;
  v188 = MEMORY[0x1E697E5D8];
  v123 = v157;
  v124 = swift_getWitnessTable();
  v125 = v150;
  sub_1C593EDC0(v121, v123, v124);
  v126 = *(v154 + 8);
  v126(v121, v123);
  sub_1C593EDC0(v125, v123, v124);
  return (v126)(v125, v123);
}

void sub_1C5A8FD60(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for Scrubber(0, a1, a2, a3);
  v5 = sub_1C5A8C564();
  swift_getKeyPath(byte_1C5BE2DE8);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  v14 = *(v5 + 72);

  v6 = *(*(*(sub_1C5A8C564() + 16) + 72) + 80);
  swift_getKeyPath(asc_1C5BE28E0);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  v13 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 32);

  v7 = sub_1C5A8C564();
  swift_getKeyPath(byte_1C5BE2DE8);
  sub_1C5BC7B74();

  v12 = *(v7 + 64);
  v8 = *(v7 + 72);

  v9 = *(*(*(sub_1C5A8C564() + 16) + 72) + 80);
  swift_getKeyPath(aX_9);
  sub_1C5BC7B74();

  v10 = *(v9 + 40);
  LOBYTE(v5) = *(v9 + 48);

  v11 = *(*(*(sub_1C5A8C564() + 16) + 72) + 96);

  *a4 = (v14 & 1) == 0;
  *(a4 + 1) = v9;
  *(a4 + 4) = v9 >> 24;
  *(a4 + 8) = v13;
  *(a4 + 16) = v6;
  *(a4 + 17) = *v17;
  *(a4 + 20) = *&v17[3];
  *(a4 + 24) = v12;
  *(a4 + 32) = v8;
  *(a4 + 36) = *&v16[3];
  *(a4 + 33) = *v16;
  *(a4 + 40) = v10;
  *(a4 + 48) = v5;
  *(a4 + 52) = *&v15[3];
  *(a4 + 49) = *v15;
  *(a4 + 56) = v11;
}

uint64_t sub_1C5A9004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Scrubber.CompanionViews(0, v10, v11, v12);
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = sub_1C5BC8AB4();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v54 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920, &qword_1C5BE1528);
  v57 = v16;
  v18 = sub_1C5BC8AB4();
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v54 - v19;
  v65 = v20;
  v21 = sub_1C5BC8AB4();
  v66 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v54 - v22;
  v67 = v23;
  v24 = sub_1C5BC8AB4();
  v68 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v62 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v64 = &v54 - v27;
  v29 = type metadata accessor for Scrubber(0, a2, a3, v28);
  v30 = sub_1C5A8C564();
  (*(v7 + 16))(v9, a1 + *(v29 + 68), a2);
  v55 = v15;
  sub_1C5A9085C(v30, v9, a2, a3, v15);
  v31 = *(*(sub_1C5A8C564() + 16) + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v78 = v31;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  LODWORD(v30) = *(v31 + 57);

  if (v30 == 1)
  {

    v32 = v58;
    v33 = v57;
  }

  else
  {
    v32 = v58;
    v33 = v57;
    sub_1C5BCBDE4();
  }

  v34 = v56;
  WitnessTable = swift_getWitnessTable();
  v36 = v55;
  sub_1C5BCA264();
  (*(v34 + 8))(v36, v13);
  if (qword_1EC190780 != -1)
  {
    swift_once();
  }

  v37 = *(*(sub_1C5A8C564() + 16) + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v78 = v37;
  sub_1C5BC7B74();

  v38 = *(v37 + 57);

  LOBYTE(v78) = v38;
  v39 = MEMORY[0x1E697E270];
  v76 = WitnessTable;
  v77 = MEMORY[0x1E697E270];
  v40 = swift_getWitnessTable();
  sub_1C5A9FFD0();
  v41 = v59;
  sub_1C5BCA384();
  (*(v60 + 8))(v32, v33);
  v42 = sub_1C5924F54(&qword_1EC195928, &qword_1EC195920, &qword_1C5BE1528, MEMORY[0x1E697F548]);
  v74 = v40;
  v75 = v42;
  v43 = v65;
  v44 = swift_getWitnessTable();
  v45 = v61;
  sub_1C5A25A24(v43, v44, 0.0, 1.0);
  (*(v63 + 8))(v41, v43);
  v46 = sub_1C5A25B6C();
  v72 = v44;
  v73 = v46;
  v47 = v67;
  v48 = swift_getWitnessTable();
  v49 = v62;
  sub_1C5BCA264();
  (*(v66 + 8))(v45, v47);
  v70 = v48;
  v71 = v39;
  v50 = swift_getWitnessTable();
  v51 = v64;
  sub_1C593EDC0(v49, v24, v50);
  v52 = *(v68 + 8);
  v52(v49, v24);
  sub_1C593EDC0(v51, v24, v50);
  return (v52)(v51, v24);
}

uint64_t sub_1C5A9085C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for Scrubber.CompanionViews(0, a3, a4, a4);
  (*(*(a3 - 8) + 32))(&a5[*(v8 + 36)], a2, a3);
  v9 = &a5[*(v8 + 40)];
  result = swift_getKeyPath(aP_25);
  *v9 = result;
  v9[8] = 0;
  return result;
}

double sub_1C5A908F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058, &qword_1C5BD7418);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  type metadata accessor for Scrubber(0, a3, a4, v9);
  sub_1C5A8C564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90);
  sub_1C5BC8514();
  v10 = sub_1C5BC7AC4();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_1C5A81C94(v8);

  return result;
}

uint64_t sub_1C5A90A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v9 = type metadata accessor for Scrubber(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  result = sub_1C5A8CBAC(v13);
  v15 = 0;
  v16 = 0;
  if (result)
  {
    (*(v10 + 16))(v12, a1, v9);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    result = (*(v10 + 32))(v16 + v17, v12, v9);
    v15 = sub_1C5AA3C3C;
  }

  *a5 = v15;
  a5[1] = v16;
  return result;
}

uint64_t sub_1C5A90B64@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_1C5BC9384();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BCA484();
  type metadata accessor for Scrubber(0, a1, a2, v11);
  v12 = *(sub_1C5A8C564() + 16);

  sub_1C5BC94A4();
  sub_1C5BC86D4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  MinX = CGRectGetMinX(v29);
  v22 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196258, &qword_1C5BE2E60) + 36));
  *v22 = v12;
  v22[1] = MinX;
  v28[1] = 0;
  sub_1C5BCA684();
  v23 = v28[3];
  v22[2] = *&v28[2];
  *(v22 + 3) = v23;
  v24 = type metadata accessor for ScrubberTooltipModifier(0);
  v25 = *(v24 + 28);
  *(v22 + v25) = swift_getKeyPath(aX_10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v26 = *(v24 + 32);
  *(v22 + v26) = swift_getKeyPath(byte_1C5BE1470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v10;
  return result;
}

double sub_1C5A90DA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for Scrubber(0, a3, a4, a4);
  sub_1C5A8C564();
  sub_1C5A9C31C(v4, 0);
  sub_1C5A8A408();

  return result;
}

uint64_t sub_1C5A90E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF0, &qword_1C5BE27C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF8, &qword_1C5BE27D0);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_1C5BCA714();
  type metadata accessor for Scrubber.SensitivityLabel(255, v4, v5, v6);
  sub_1C5BC92D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F00, &qword_1C5BE27D8);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC195F08, &qword_1EC195EF0, &qword_1C5BE27C8, MEMORY[0x1E697DDC8]);
  v7 = sub_1C5BC87C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v5;
  v22 = v4;
  v23 = v5;
  v24 = v2;
  sub_1C5A9110C(sub_1C5AA1F88, v21, v4, v5, v10);

  v15 = sub_1C5924F54(&qword_1EC195F10, &qword_1EC195EF0, &qword_1C5BE27C8, MEMORY[0x1E697DDD0]);
  WitnessTable = swift_getWitnessTable();
  v25 = v15;
  v26 = WitnessTable;
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v10, v7, v17);
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_1C593EDC0(v13, v7, v17);
  return (v18)(v13, v7);
}

uint64_t sub_1C5A9110C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF8, &qword_1C5BE27D0);
  sub_1C5BCA714();
  type metadata accessor for Scrubber.SensitivityLabel(255, a3, a4, v10);
  sub_1C5BC92D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F00, &qword_1C5BE27D8);
  swift_getTupleTypeMetadata3();
  v11 = sub_1C5BCAB74();
  v12 = sub_1C5AA21C4();
  WitnessTable = swift_getWitnessTable();
  return sub_1C59485B4(a1, a2, &type metadata for ScrubberCompanionViewLayout, v11, v12, WitnessTable, a5);
}

uint64_t sub_1C5A9122C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = a2;
  v112 = a4;
  v8 = type metadata accessor for Scrubber.SensitivityLabel(0, a2, a3, a5);
  v100 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v95 - v11;
  v119 = a3;
  v12 = sub_1C5BCA714();
  v97 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v95 - v15;
  v116 = v16;
  v117 = v8;
  v17 = sub_1C5BC92D4();
  v110 = *(v17 - 8);
  v111 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v95 - v20;
  v21 = sub_1C5BC8F34();
  v102 = *(v21 - 8);
  v103 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195EF8, &qword_1C5BE27D0);
  MEMORY[0x1EEE9AC00](v23);
  v108 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95 - v26;
  *&v29 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
  v114 = &v95 - v30;
  v118 = a1;
  v31 = *a1;
  swift_getKeyPath(byte_1C5BE27E0, v29);
  *&v129[0] = v31;
  v113 = sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  if (*(v31 + 57))
  {
    v105 = 0x2D2D3A2D2DLL;
    v106 = 0xE500000000000000;
  }

  else
  {
    v105 = sub_1C5A81AF8();
    v106 = v32;
  }

  v33 = *(*(v31 + 16) + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  *&v129[0] = v33;
  v107 = sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  if (*(v33 + 57) && *(v33 + 57) == 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = sub_1C5BCBDE4();
  }

  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  v104 = v34 & 1;
  *(&v131[3] + 7) = *(&v131[10] + 8);
  *(&v131[4] + 7) = *(&v131[11] + 8);
  *(&v131[5] + 7) = *(&v131[12] + 8);
  *(&v131[6] + 7) = *(&v131[13] + 8);
  *(v131 + 7) = *(&v131[7] + 8);
  *(&v131[1] + 7) = *(&v131[8] + 8);
  *(&v131[2] + 7) = *(&v131[9] + 8);
  swift_getKeyPath(byte_1C5BE2808);
  *&v129[0] = v31;
  sub_1C5BC7B74();

  v36 = 0.0;
  if ((*(v31 + 58) & 1) == 0)
  {
    v37 = type metadata accessor for Scrubber.CompanionViews(0, v6, v119, v35);
    v38 = v118 + *(v37 + 40);
    v39 = *v38;
    if (v38[8] != 1)
    {

      sub_1C5BCB4E4();
      v40 = v6;
      v41 = v23;
      v42 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v23 = v41;
      v6 = v40;
      v43 = v101;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v44 = sub_1C5942458(v39, 0);
      (*(v102 + 8))(v43, v103, v44);
      LOBYTE(v39) = v129[0];
    }

    if (v39)
    {
      v36 = 1.0;
    }

    else
    {
      v36 = 0.0;
    }
  }

  v45 = sub_1C5BCAA64();
  v47 = v46;
  v113 = v23;
  v48 = &v27[*(v23 + 36)];
  sub_1C5A920B0(v118, v48);
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F18, &qword_1C5BE2830) + 36));
  *v49 = v45;
  v49[1] = v47;
  v50 = v131[2];
  *(v27 + 65) = v131[3];
  *(v27 + 49) = v50;
  v51 = v131[0];
  *(v27 + 33) = v131[1];
  *(v27 + 17) = v51;
  *(v27 + 16) = *(&v131[6] + 15);
  *(v27 + 113) = v131[6];
  v52 = v131[4];
  *(v27 + 97) = v131[5];
  v53 = v106;
  *v27 = v105;
  *(v27 + 1) = v53;
  v27[16] = v104;
  *(v27 + 81) = v52;
  *(v27 + 17) = v36;
  sub_1C59E7D34(v27, v114, &qword_1EC195EF8, &qword_1C5BE27D0);
  swift_getKeyPath(byte_1C5BE2838);
  *&v129[0] = v31;
  sub_1C5BC7B74();

  v54 = *(v31 + 40);
  if (qword_1EC190760 != -1)
  {
    swift_once();
  }

  if (v54 == qword_1EC1A6BA0)
  {
    v55 = sub_1C5BC8FA4();
    MEMORY[0x1EEE9AC00](v55);
    v56 = v96;
    v57 = v6;
    sub_1C5BCA704();
    v58 = v116;
    WitnessTable = swift_getWitnessTable();
    v60 = v95;
    sub_1C593EDC0(v56, v58, WitnessTable);
    v61 = *(v97 + 8);
    v61(v56, v58);
    sub_1C593EDC0(v60, v58, WitnessTable);
    v62 = v117;
    v63 = swift_getWitnessTable();
    sub_1C5950E54(v56, v58, v62, WitnessTable, v63);
    v61(v56, v58);
    v64 = v60;
    v65 = v58;
  }

  else
  {
    swift_getKeyPath(byte_1C5BE2838);
    *&v129[0] = v31;
    sub_1C5BC7B74();

    v66 = v99;
    v57 = v6;
    sub_1C5A923AC(*(v31 + 40), v6, v119, v99);
    v67 = v117;
    v68 = swift_getWitnessTable();
    v69 = v98;
    sub_1C593EDC0(v66, v67, v68);
    v61 = *(v100 + 8);
    v61(v66, v67);
    sub_1C593EDC0(v69, v67, v68);
    v70 = v116;
    v71 = swift_getWitnessTable();
    sub_1C5941738(v66, v70, v67, v71, v68);
    v61(v66, v67);
    v64 = v69;
    v65 = v67;
  }

  v61(v64, v65);
  v72 = sub_1C5A7DAAC();
  v105 = v73;
  v106 = v72;
  v74 = *(*(v31 + 16) + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  *&v129[0] = v74;
  sub_1C5BC7B74();

  if (*(v74 + 57) && *(v74 + 57) == 1)
  {
    v75 = 1;
  }

  else
  {
    v75 = sub_1C5BCBDE4();
  }

  sub_1C5BCAA74();
  sub_1C5BC8BD4();
  *&v130[55] = *(&v131[17] + 8);
  *&v130[71] = *(&v131[18] + 8);
  *&v130[87] = *(&v131[19] + 8);
  *&v130[103] = *(&v131[20] + 8);
  *&v130[7] = *(&v131[14] + 8);
  *&v130[23] = *(&v131[15] + 8);
  *&v130[39] = *(&v131[16] + 8);
  v77 = type metadata accessor for Scrubber.CompanionViews(0, v57, v119, v76);
  v78 = v118 + *(v77 + 40);
  v79 = *v78;
  if ((v78[8] & 1) == 0)
  {

    sub_1C5BCB4E4();
    v80 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v81 = v101;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v82 = sub_1C5942458(v79, 0);
    (*(v102 + 8))(v81, v103, v82);
    LOBYTE(v79) = v129[0];
  }

  v83 = v75 & 1;
  if (v79)
  {
    v84 = 1.0;
  }

  else
  {
    v84 = 0.0;
  }

  v85 = v114;
  v86 = v108;
  sub_1C59400B0(v114, v108, &qword_1EC195EF8, &qword_1C5BE27D0);
  v128[0] = v86;
  v88 = v109;
  v87 = v110;
  v89 = v115;
  v90 = v111;
  (*(v110 + 16))(v109, v115, v111);
  *(&v127[4] + 1) = *&v130[64];
  *(&v127[5] + 1) = *&v130[80];
  *(&v127[6] + 1) = *&v130[96];
  *(v127 + 1) = *v130;
  *(&v127[1] + 1) = *&v130[16];
  *(&v127[2] + 1) = *&v130[32];
  *&v126 = v106;
  *(&v126 + 1) = v105;
  LOBYTE(v127[0]) = v83;
  *&v127[7] = *&v130[111];
  *(&v127[3] + 1) = *&v130[48];
  *(&v127[7] + 1) = v84;
  v128[1] = v88;
  v128[2] = &v126;
  v125[0] = v113;
  v125[1] = v90;
  v125[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F00, &qword_1C5BE27D8);
  v122 = sub_1C5AA1F94();
  v91 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v120 = v91;
  v121 = v92;
  v123 = swift_getWitnessTable();
  v124 = sub_1C5AA204C();
  sub_1C594226C(v128, 3uLL, v125);
  v93 = *(v87 + 8);
  v93(v89, v90);
  sub_1C5924EF4(v85, &qword_1EC195EF8, &qword_1C5BE27D0);
  v129[5] = v127[4];
  v129[6] = v127[5];
  v129[7] = v127[6];
  v129[8] = v127[7];
  v129[2] = v127[1];
  v129[3] = v127[2];
  v129[4] = v127[3];
  v129[0] = v126;
  v129[1] = v127[0];
  sub_1C5924EF4(v129, &qword_1EC195F00, &qword_1C5BE27D8);
  v93(v88, v90);
  return sub_1C5924EF4(v86, &qword_1EC195EF8, &qword_1C5BE27D0);
}

uint64_t sub_1C5A920B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F58, &unk_1C5BE28A0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = v16 - v7;
  v9 = *a1;
  swift_getKeyPath(byte_1C5BE2808, v6);
  v16[1] = v9;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  if (*(v9 + 58) == 1)
  {
    sub_1C5BC84B4();
    v10 = &v8[*(v4 + 36)];
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F60, &unk_1C5BE78C0) + 28);
    v12 = *MEMORY[0x1E697DC20];
    v13 = sub_1C5BC82A4();
    (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
    *v10 = swift_getKeyPath(aP_26);
    sub_1C59E7D34(v8, a2, &qword_1EC195F58, &unk_1C5BE28A0);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t sub_1C5A922B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Scrubber.CompanionViews(0, v9, v10, v11);
  sub_1C593EDC0(a1 + *(v12 + 36), a2, a3);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1C5A923AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = swift_getKeyPath(byte_1C5BE1680);
  *(a4 + 16) = 0;
  v8 = *(type metadata accessor for Scrubber.SensitivityLabel(0, a2, a3, v7) + 40);
  *(a4 + v8) = swift_getKeyPath(byte_1C5BE2868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F50, &qword_1C5BD7290);

  return swift_storeEnumTagMultiPayload();
}

double sub_1C5A9246C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC190758 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v4 = qword_1EC1A6B90;
  v5 = *algn_1EC1A6B98;
  sub_1C5A92574(v2, *(a1 + 16), *(a1 + 24), a2);
  KeyPath = swift_getKeyPath(byte_1C5BE2CA0);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196490, &qword_1C5BE3538) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196498, &qword_1C5BE3540) + 36)) = v5;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964A0, &qword_1C5BE3548) + 36)) = 256;

  return result;
}

uint64_t sub_1C5A92574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v67 = a4;
  v6 = sub_1C5BC89B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964A8, &qword_1C5BE3550);
  MEMORY[0x1EEE9AC00](v65);
  v64 = (&v57 - v12);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964B0, &qword_1C5BE3558);
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v57 - v13;
  v14 = sub_1C5BC8F34();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  v20 = a1;
  if (*(a1 + 16) != 1)
  {

    sub_1C5BCB4E4();
    v27 = sub_1C5BC9844();
    v59 = v6;
    v58 = a1;
    v28 = v27;
    sub_1C5BC7C54();

    v20 = v58;
    v6 = v59;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v29 = sub_1C5942458(v19, 0);
    (*(v15 + 8))(v18, v14, v29);
    if (LOBYTE(v75[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    *&v75[0] = sub_1C5A7DE00(*v20);
    *(&v75[0] + 1) = v30;
    sub_1C594A23C();
    v31 = sub_1C5BC9CA4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    KeyPath = swift_getKeyPath(aP_27);
    v39 = swift_getKeyPath(a8_7);
    v74 = v35 & 1;
    v73 = 0;
    *&v68 = v31;
    *(&v68 + 1) = v33;
    LOBYTE(v69) = v35 & 1;
    *(&v69 + 1) = v37;
    *&v70 = KeyPath;
    *(&v70 + 1) = 2;
    LOBYTE(v71) = 0;
    *(&v71 + 1) = v39;
    v72 = 1;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C8, &qword_1C5BE3598);
    v41 = sub_1C5AA4CE4();
    v42 = v62;
    sub_1C5BCA054();
    v75[2] = v70;
    v75[3] = v71;
    v76 = v72;
    v75[0] = v68;
    v75[1] = v69;
    sub_1C5924EF4(v75, &qword_1EC1964C8, &qword_1C5BE3598);
    v43 = v63;
    v44 = v66;
    (*(v63 + 16))(v64, v42, v66);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C0, &qword_1C5BE3590);
    *&v68 = v40;
    *(&v68 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    sub_1C595E1AC();
    sub_1C5BC92C4();
    return (*(v43 + 8))(v42, v44);
  }

  if (v19)
  {
    goto LABEL_6;
  }

LABEL_3:
  type metadata accessor for Scrubber.SensitivityLabel(0, a2, v60, v16);
  sub_1C59F0004(v11);
  v21 = v61;
  (*(v7 + 104))(v61, *MEMORY[0x1E697E708], v6);
  sub_1C5A9B150(&qword_1EC1964B8, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v22 = sub_1C5BCAD84();
  v23 = *(v7 + 8);
  v23(v21, v6);
  v23(v11, v6);
  v24 = *v20;
  if (v22)
  {
    v25 = sub_1C5A92C44(v24);
  }

  else
  {
    v25 = sub_1C5A7DE00(v24);
  }

  *&v75[0] = v25;
  *(&v75[0] + 1) = v26;
  sub_1C594A23C();
  v46 = sub_1C5BC9CA4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = swift_getKeyPath(aP_27);
  v54 = v64;
  *v64 = v46;
  v54[1] = v48;
  *(v54 + 16) = v50 & 1;
  v54[3] = v52;
  v54[4] = v53;
  v54[5] = 1;
  *(v54 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C0, &qword_1C5BE3590);
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964C8, &qword_1C5BE3598);
  v56 = sub_1C5AA4CE4();
  *&v75[0] = v55;
  *(&v75[0] + 1) = v56;
  swift_getOpaqueTypeConformance2();
  sub_1C595E1AC();
  return sub_1C5BC92C4();
}

uint64_t sub_1C5A92C44(uint64_t a1)
{
  v2 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (qword_1EC190760 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BA0 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (qword_1EC190768 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BA8 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (qword_1EC190770 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BB0 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
LABEL_15:
      v4 = qword_1EDA5DD00;
      sub_1C5BC7B14();
      return sub_1C5BCAE94();
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (qword_1EC190778 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BB8 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_1C5A93048@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v65 = sub_1C5BC8F34();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FE8, &qword_1C5BE2AC8);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v4 = &v63 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FF0, &qword_1C5BE2AD0);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v63 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FF8, &qword_1C5BE2AD8);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v63 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196000, &qword_1C5BE2AE0);
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v63 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196008, &qword_1C5BE2AE8);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v63 - v8;
  v9 = v1[2];
  v10 = v1[4];
  v91 = v1[3];
  v92 = v10;
  v93 = *(v1 + 80);
  v11 = v1[1];
  v89 = *v1;
  *v90 = v11;
  *&v90[16] = v9;
  *&v83 = *(v1 + 1);
  BYTE8(v83) = *(v1 + 16);
  v12 = swift_allocObject();
  v13 = v1[3];
  *(v12 + 48) = v1[2];
  *(v12 + 64) = v13;
  *(v12 + 80) = v1[4];
  *(v12 + 96) = *(v1 + 80);
  v14 = v1[1];
  *(v12 + 16) = *v1;
  *(v12 + 32) = v14;
  sub_1C5AA2EC0(&v89, &v85);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196010, &qword_1C5BE2AF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78, &qword_1C5BD3CF0);
  v17 = sub_1C5924F54(&qword_1EC196018, &qword_1EC196010, &qword_1C5BE2AF0, MEMORY[0x1E697FDF8]);
  v18 = sub_1C59BD6B8();
  sub_1C5BCA344();

  v83 = *&v90[8];
  v84 = v90[24];
  v19 = swift_allocObject();
  v20 = v91;
  v21 = v92;
  v22 = *v90;
  *(v19 + 48) = *&v90[16];
  *(v19 + 64) = v20;
  *(v19 + 80) = v21;
  *(v19 + 96) = v93;
  *(v19 + 16) = v89;
  *(v19 + 32) = v22;
  sub_1C5AA2EC0(&v89, &v85);
  v85 = v15;
  v86 = v16;
  v87 = v17;
  v88 = v18;
  v23 = MEMORY[0x1E6981448];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1C5AA2F24();
  v26 = v67;
  v27 = v68;
  sub_1C5BCA344();

  (*(v69 + 8))(v4, v27);
  *&v83 = v91;
  v28 = swift_allocObject();
  v29 = v91;
  v30 = v92;
  v31 = *v90;
  *(v28 + 48) = *&v90[16];
  *(v28 + 64) = v29;
  *(v28 + 80) = v30;
  *(v28 + 96) = v93;
  *(v28 + 16) = v89;
  *(v28 + 32) = v31;
  sub_1C5AA2EC0(&v89, &v85);
  v85 = v27;
  v86 = &type metadata for ScrubberLoadingConfiguration;
  v87 = OpaqueTypeConformance2;
  v88 = v25;
  v66 = v23;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v70;
  v34 = v71;
  sub_1C5BCA344();

  (*(v72 + 8))(v26, v34);
  v95 = *(&v91 + 1);
  *&v83 = *(&v91 + 1);
  v35 = swift_allocObject();
  v36 = v91;
  v37 = v92;
  v38 = *v90;
  *(v35 + 48) = *&v90[16];
  *(v35 + 64) = v36;
  *(v35 + 80) = v37;
  *(v35 + 96) = v93;
  *(v35 + 16) = v89;
  *(v35 + 32) = v38;
  sub_1C5AA2EC0(&v89, &v85);
  sub_1C59400B0(&v95, &v85, &qword_1EC196030, &qword_1C5BE2AF8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196030, &qword_1C5BE2AF8);
  v85 = v34;
  v86 = MEMORY[0x1E69E63B0];
  v87 = v32;
  v88 = MEMORY[0x1E69E63E0];
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_1C5AA2F88();
  v42 = v73;
  v43 = v74;
  sub_1C5BCA344();

  sub_1C5924EF4(&v95, &qword_1EC196030, &qword_1C5BE2AF8);
  (*(v75 + 8))(v33, v43);
  v94 = v92;
  *&v83 = v92;
  v44 = swift_allocObject();
  v45 = v91;
  v46 = v92;
  v47 = *v90;
  *(v44 + 48) = *&v90[16];
  *(v44 + 64) = v45;
  *(v44 + 80) = v46;
  *(v44 + 96) = v93;
  *(v44 + 16) = v89;
  *(v44 + 32) = v47;
  sub_1C5AA2EC0(&v89, &v85);
  sub_1C59400B0(&v94, &v85, &qword_1EC195D18, qword_1C5BE1D18);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195D18, qword_1C5BE1D18);
  v85 = v43;
  v86 = v39;
  v87 = v40;
  v88 = v41;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_1C5AA3038();
  v51 = v76;
  sub_1C5BCA344();
  v52 = v51;

  sub_1C5924EF4(&v94, &qword_1EC195D18, qword_1C5BE1D18);
  (*(v77 + 8))(v42, v51);
  *&v83 = *(&v92 + 1);
  BYTE8(v83) = v93;
  if (v93 == 1)
  {
    v53 = *(&v92 + 1);
  }

  else
  {

    sub_1C5BCB4E4();
    v54 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v55 = v63;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v83, &unk_1EC196050, &unk_1C5BE2B00);
    (*(v64 + 8))(v55, v65);
    v53 = v85;
  }

  v82 = v53;
  v56 = swift_allocObject();
  v57 = v91;
  v58 = v92;
  v59 = *v90;
  *(v56 + 48) = *&v90[16];
  *(v56 + 64) = v57;
  *(v56 + 80) = v58;
  *(v56 + 96) = v93;
  *(v56 + 16) = v89;
  *(v56 + 32) = v59;
  sub_1C5AA2EC0(&v89, &v85);
  v85 = v52;
  v86 = v48;
  v87 = v49;
  v88 = v50;
  swift_getOpaqueTypeConformance2();
  sub_1C59AEC40();
  v60 = v79;
  v61 = v81;
  sub_1C5BCA344();

  return (*(v78 + 8))(v61, v60);
}

void sub_1C5A93C24(double *a1)
{
  v1 = a1[6];
  v2 = *(*(*a1 + 16) + 72);
  v3 = *(v2 + 88);
  if (v3 == v1)
  {
    *(v2 + 88) = v1;
    sub_1C5A8916C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE1578);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B64();
  }
}

void sub_1C5A93D4C(uint64_t a1)
{
  v1 = *(a1 + 56);

  sub_1C5A9B6AC(v2);
  sub_1C5A83BDC(v1);
}

double sub_1C5A93D9C(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 72);
  v10 = v6;
  v11 = *(a1 + 80);
  if ((v11 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v10, &unk_1EC196050, &unk_1C5BE2B00);
    (*(v3 + 8))(v5, v2);
    v6 = v9[1];
  }

  return sub_1C5A87C04(v6, 0);
}

uint64_t sub_1C5A93F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FA8, &qword_1C5BE2998);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C5A93F90(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EC190750 != -1)
  {
    swift_once();
  }

  v5 = 2;
  if (a3)
  {
    v5 = 1;
  }

  v6 = qword_1EC1A6B78[v5];
  *(&v26[0] + 1) = a2;
  sub_1C594A23C();

  v7 = sub_1C5BC9CA4();
  v9 = v8;
  v11 = v10;

  *&v26[0] = v6;
  v12 = sub_1C5BC9BC4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1C5953BD8(v7, v9, v11 & 1);

  if (qword_1EC190780 != -1)
  {
    swift_once();
  }

  v19 = qword_1EC1958E0;

  v20 = sub_1C5BC9914();
  v27 = v16 & 1;
  *&v22 = v12;
  *(&v22 + 1) = v14;
  LOBYTE(v23) = v16 & 1;
  *(&v23 + 1) = v18;
  *&v24 = v19;
  BYTE8(v24) = a3 & 1;
  *&v25 = swift_getKeyPath(byte_1C5BE2CA0);
  *(&v25 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196140, &qword_1C5BE2CD0);
  sub_1C5AA32B8();
  sub_1C5BCA094();
  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;
  return sub_1C5924EF4(v26, &qword_1EC196140, &qword_1C5BE2CD0);
}

void sub_1C5A941C4(uint64_t a1@<X8>)
{
  sub_1C5A9426C(v1, v14);
  v3 = sub_1C5BC9884();
  sub_1C5BC8174();
  v4 = v14[11];
  *(a1 + 160) = v14[10];
  *(a1 + 176) = v4;
  *(a1 + 192) = v14[12];
  v5 = v14[7];
  *(a1 + 96) = v14[6];
  *(a1 + 112) = v5;
  v6 = v14[9];
  *(a1 + 128) = v14[8];
  *(a1 + 144) = v6;
  v7 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v7;
  v8 = v14[5];
  *(a1 + 64) = v14[4];
  *(a1 + 80) = v8;
  v9 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v9;
  *(a1 + 208) = v3;
  *(a1 + 216) = v10;
  *(a1 + 224) = v11;
  *(a1 + 232) = v12;
  *(a1 + 240) = v13;
  *(a1 + 248) = 0;
}

__n128 sub_1C5A9426C@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 & 1) == 0 || (a1[16] & 1) != 0 || (a1[48])
  {
    *&v31 = sub_1C5BCA474();
    sub_1C5AA34B4(&v31);
    v29 = *&v32[144];
    v30[0] = *&v32[160];
    *(v30 + 9) = *&v32[169];
    v25 = *&v32[80];
    v26 = *&v32[96];
    v27 = *&v32[112];
    v28 = *&v32[128];
  }

  else
  {
    v10 = sub_1C5BC8FC4();
    LOBYTE(v24[0]) = 0;
    sub_1C5A945A0(&v33);
    v20 = v41;
    v21 = v42;
    v16 = v37;
    v17 = v38;
    v18 = v39;
    v19 = v40;
    v12 = v33;
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v23[7] = v40;
    v23[8] = v41;
    v23[9] = v42;
    v23[10] = v43;
    v23[3] = v36;
    v23[4] = v37;
    v23[5] = v38;
    v23[6] = v39;
    v22 = v43;
    v23[0] = v33;
    v23[1] = v34;
    v23[2] = v35;
    sub_1C59400B0(&v12, &v31, &qword_1EC196198, &qword_1C5BE2CF8);
    sub_1C5924EF4(v23, &qword_1EC196198, &qword_1C5BE2CF8);
    *&v11[119] = v19;
    *&v11[135] = v20;
    *&v11[151] = v21;
    *&v11[167] = v22;
    *&v11[55] = v15;
    *&v11[71] = v16;
    *&v11[87] = v17;
    *&v11[103] = v18;
    *&v11[7] = v12;
    *&v11[23] = v13;
    *&v11[39] = v14;
    *&v32[129] = *&v11[128];
    *&v32[145] = *&v11[144];
    *&v32[161] = *&v11[160];
    *&v32[65] = *&v11[64];
    *&v32[81] = *&v11[80];
    *&v32[97] = *&v11[96];
    *&v32[113] = *&v11[112];
    *&v32[1] = *v11;
    *&v32[17] = *&v11[16];
    *&v32[33] = *&v11[32];
    v31 = v10;
    v32[0] = v24[0];
    *&v32[176] = v22.n128_u64[1];
    *&v32[49] = *&v11[48];
    sub_1C5AA34C0(&v31);
    v28 = *&v32[128];
    v29 = *&v32[144];
    v30[0] = *&v32[160];
    *(v30 + 9) = *&v32[169];
    v25 = *&v32[80];
    v26 = *&v32[96];
    v27 = *&v32[112];
  }

  v24[2] = *&v32[16];
  v24[3] = *&v32[32];
  v24[4] = *&v32[48];
  v24[5] = *&v32[64];
  v24[0] = v31;
  v24[1] = *v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196188, &qword_1C5BE2CF0);
  sub_1C5924F54(&qword_1EC196190, &qword_1EC196188, &qword_1C5BE2CF0, MEMORY[0x1E69817F8]);
  sub_1C5BC92C4();
  v4 = v42;
  v5 = v44[0];
  *(a2 + 160) = v43;
  *(a2 + 176) = v5;
  *(a2 + 185) = *(v44 + 9);
  v6 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v6;
  *(a2 + 128) = v41;
  *(a2 + 144) = v4;
  v7 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v7;
  v8 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v8;
  result = v34;
  *a2 = v33;
  *(a2 + 16) = result;
  return result;
}

double sub_1C5A945A0@<D0>(uint64_t a2@<X8>)
{
  v10 = sub_1C5BCA474();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v9 = sub_1C5BCA474();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  sub_1C5BCA474();
  v6 = sub_1C5BCA4B4();

  v7 = sub_1C5BCA474();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v9;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;
  *(a2 + 88) = v20;
  *(a2 + 96) = v21;
  *(a2 + 104) = v22;
  *(a2 + 112) = v6;
  *(a2 + 120) = v7;
  *(a2 + 128) = v23;
  *(a2 + 136) = v24;
  *(a2 + 144) = v25;
  *(a2 + 152) = v26;
  result = *&v27;
  *(a2 + 160) = v27;
  return result;
}

uint64_t sub_1C5A947CC@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v66 = a2;
  v74 = a4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FC8, &qword_1C5BE29B8);
  MEMORY[0x1EEE9AC00](v68);
  v6 = v62 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FD0, &qword_1C5BE29C0);
  MEMORY[0x1EEE9AC00](v70);
  v71 = v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FD8, &qword_1C5BE29C8);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = v62 - v9;
  v10 = sub_1C5BCBD94();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C5BC8F34();
  v63 = *(v13 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v17 = *(a1 + 16);
  v18 = *(*(v17 + 72) + 80);
  swift_getKeyPath(asc_1C5BE28E0, v14);
  *&v80 = v18;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if (*(v18 + 32))
  {
    return (*(v72 + 56))(v74, 1, 1, v73);
  }

  v19 = *(v18 + 24);
  if (v19 <= 0.0)
  {
    return (*(v72 + 56))(v74, 1, 1, v73);
  }

  v20 = *(*(v17 + 72) + 80);
  swift_getKeyPath(aX_9);
  *&v80 = v20;
  sub_1C5BC7B74();

  if (*(v20 + 48))
  {
    return (*(v72 + 56))(v74, 1, 1, v73);
  }

  v22 = *(v20 + 40);
  swift_getKeyPath(a8_6);
  v23 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel___observationRegistrar;
  *&v80 = v17;
  v24 = sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  v62[1] = v23;
  v62[0] = v24;
  sub_1C5BC7B74();

  v25 = (v22 * *(v17 + 64) - v22) * 0.5;
  if (v64)
  {
    v26 = v66;
  }

  else
  {
    v27 = *&v66;

    sub_1C5BCB4E4();
    v28 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v29 = sub_1C5942458(v27, 0);
    (*(v63 + 8))(v16, v13, v29);
    v26 = *&v80;
  }

  v30 = v74;
  v31 = v65;
  (*(v65 + 104))(v12, *MEMORY[0x1E69E7040], v10);
  sub_1C5A9500C(v12, v26, v25);
  (*(v31 + 8))(v12, v10);
  v32 = *(*(v17 + 72) + 80);
  swift_getKeyPath(byte_1C5BE2A20);
  *&v80 = v32;
  sub_1C5BC7B74();

  v33 = *(v32 + 56);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    *&v80 = MEMORY[0x1E69E7CC0];

    sub_1C5B8F100(0, v34, 0);
    v35 = v80;
    v36 = *(v80 + 16);
    v37 = 48;
    do
    {
      v38 = *(v33 + v37);
      *&v80 = v35;
      v39 = *(v35 + 24);
      if (v36 >= v39 >> 1)
      {
        sub_1C5B8F100((v39 > 1), v36 + 1, 1);
        v35 = v80;
      }

      *(v35 + 16) = v36 + 1;
      *(v35 + 8 * v36 + 32) = v38 / v19;
      v37 += 24;
      ++v36;
      --v34;
    }

    while (v34);
  }

  KeyPath = swift_getKeyPath(byte_1C5BE2A48);
  v41 = sub_1C5BC9884();
  sub_1C5BC8174();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v79 = 0;
  v78 = 0;
  sub_1C5AA2D90(v67);
  v51 = v50;
  swift_getKeyPath(byte_1C5BE2A78);
  *&v80 = v17;
  sub_1C5BC7B74();

  if (*(v17 + 104))
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  v53 = *(v68 + 36);
  v54 = *MEMORY[0x1E6981DC0];
  v55 = sub_1C5BCAB54();
  (*(*(v55 - 8) + 104))(&v6[v53], v54, v55);
  *v6 = v35;
  *(v6 + 1) = KeyPath;
  v6[16] = 0;
  *(v6 + 17) = *v77;
  *(v6 + 5) = *&v77[3];
  v6[24] = v41;
  *(v6 + 25) = *v76;
  *(v6 + 7) = *&v76[3];
  *(v6 + 4) = v43;
  *(v6 + 5) = v45;
  *(v6 + 6) = v47;
  *(v6 + 7) = v49;
  v6[64] = 0;
  v56 = *v75;
  *(v6 + 17) = *&v75[3];
  *(v6 + 65) = v56;
  *(v6 + 9) = v51;
  *(v6 + 10) = 0;
  *(v6 + 11) = v52;
  v57 = v71;
  sub_1C59E7D34(v6, v71, &qword_1EC195FC8, &qword_1C5BE29B8);
  *(v57 + *(v70 + 36)) = 0;
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v58 = v69;
  sub_1C59E7D34(v57, v69, &qword_1EC195FD0, &qword_1C5BE29C0);
  v59 = v73;
  v60 = (v58 + *(v73 + 36));
  v61 = v81;
  *v60 = v80;
  v60[1] = v61;
  v60[2] = v82;
  sub_1C59E7D34(v58, v30, &qword_1EC195FD8, &qword_1C5BE29C8);
  return (*(v72 + 56))(v30, 0, 1, v59);
}

double sub_1C5A9500C(uint64_t a1, double a2, double a3)
{
  v6 = sub_1C5BCBD94();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 / a2;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x1E69E7038])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7030])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7040])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7048])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7020])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7028])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_1C5BCB314();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 * a2;
}

void sub_1C5A951F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = sub_1C5BC8F34();
  MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 + 16);
  if (v19)
  {
    v24[2] = 0x3FF0000000000000;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0x3FF0000000000000;
    v20 = a6 + 32;
    v21 = (v16 + 8);
    v24[6] = 0;
    v24[7] = 0;
    do
    {
      v27.origin.x = a1;
      v27.origin.y = a2;
      v27.size.width = a3;
      v27.size.height = a4;
      CGRectGetWidth(v27);
      if ((a8 & 1) == 0)
      {

        sub_1C5BCB4E4();
        v22 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();
        v23 = sub_1C5942458(a7, 0);
        (*v21)(v18, v15, v23);
      }

      v25.origin.x = a1;
      v25.origin.y = a2;
      v25.size.width = a3;
      v25.size.height = a4;
      CGRectGetMinY(v25);
      v26.origin.x = a1;
      v26.origin.y = a2;
      v26.size.width = a3;
      v26.size.height = a4;
      CGRectGetHeight(v26);
      sub_1C5BC9B04();
      v20 += 8;
      --v19;
    }

    while (v19);
  }
}

double sub_1C5A95428@<D0>(uint64_t a1@<X8>)
{
  sub_1C5BC9B34();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1C5A954A0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C5A95528;
}

uint64_t sub_1C5A9552C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA5A08();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5A95590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA5A08();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5A955F4(uint64_t a1)
{
  v2 = sub_1C5AA5A08();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C5A95640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = sub_1C5BCAA54();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FB0, &qword_1C5BE29A0) + 36);
  sub_1C5A947CC(v5, v6, v7, v11);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FB8, &qword_1C5BE29A8) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FC0, &qword_1C5BE29B0);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

void sub_1C5A95734(double *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v141 = type metadata accessor for ScrubberTooltipModifier(0);
  v155 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v156 = v3;
  v159 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C5BC90F4();
  v138 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v131 - v8;
  v146 = sub_1C5BC8284();
  v169 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v137 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v131 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v145 = &v131 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960B0, &qword_1C5BE2BD0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v131 - v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960B8, &qword_1C5BE2BD8);
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v131 - v19;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960C0, &qword_1C5BE2BE0);
  MEMORY[0x1EEE9AC00](v140);
  v144 = &v131 - v20;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960C8, &qword_1C5BE2BE8);
  MEMORY[0x1EEE9AC00](v143);
  v152 = &v131 - v21;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960D0, &qword_1C5BE2BF0);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v131 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960D8, &qword_1C5BE2BF8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v131 - v23;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960E0, &qword_1C5BE2C00);
  MEMORY[0x1EEE9AC00](v147);
  v154 = &v131 - v24;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960E8, &qword_1C5BE2C08);
  MEMORY[0x1EEE9AC00](v153);
  v161 = &v131 - v25;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960F0, &qword_1C5BE2C10);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v131 - v26;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960F8, &qword_1C5BE2C18);
  MEMORY[0x1EEE9AC00](v157);
  v163 = &v131 - v27;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196100, &qword_1C5BE2C20);
  MEMORY[0x1EEE9AC00](v162);
  v168 = &v131 - v28;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196108, &qword_1C5BE2C28);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v131 - v29;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196110, &unk_1C5BE2C30);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v165 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
  v164 = &v131 - v33;
  v170 = a1;
  v34 = *a1;
  v35 = *(*(*&v34 + 72) + 80);
  swift_getKeyPath(aX_9, v32);
  *&v177 = v35;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if ((*(v35 + 48) & 1) != 0 || (v36 = *(v35 + 40), v37 = sub_1C5A878C0(), (v37 & 0x100000000) != 0))
  {
    (*(v171 + 56))(v173, 1, 1, v172);
    return;
  }

  v133 = v6;
  v131 = v13;
  v38 = *&v37;
  swift_getKeyPath(a8_6);
  v39 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel___observationRegistrar;
  *&v177 = v34;
  v40 = sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v41 = ((v38 + v38) + -1.0) * ((v36 * *(*&v34 + 64) - v36) * 0.5);
  v42 = v170;
  v43 = v170[1];
  v44 = -(v43 + -8.0);
  swift_getKeyPath(asc_1C5BE2B18);
  *&v177 = v34;
  v135 = v40;
  sub_1C5BC7B74();

  if (*(*&v34 + 24) == 1)
  {
    v45 = v42[2];
    v46 = *(v42 + 3);
    v47 = v36;
  }

  else
  {
    v48 = *(*&v34 + 16);
    v45 = v42[2];
    v46 = *(v42 + 3);
    *&v177 = v45;
    *(&v177 + 1) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
    sub_1C5BCA694();
    v47 = v48 - v175 - v43 + -8.0;
  }

  *&v177 = v45;
  *(&v177 + 1) = v46;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  v49 = v36 * v38 + v175 * -0.5;
  v50 = v41 + v49;
  if (v41 + v49 < v44)
  {
    v51 = v44;
  }

  else
  {
    v51 = v41 + v49;
  }

  if (v47 >= v51)
  {
    v47 = v51;
  }

  v52 = sub_1C5A878C0();
  v53 = 0.0;
  v54 = v133;
  if ((v52 & 0x100000000) == 0)
  {
    v55 = *&v52;
    swift_getKeyPath(byte_1C5BE2AA0);
    *&v177 = v34;
    sub_1C5BC7B74();

    if (v55 >= 0.5)
    {
      v53 = -*(*&v34 + 56);
    }

    else
    {
      v53 = *(*&v34 + 40);
    }
  }

  v134 = v39;
  v56 = v50 - v47 + v53;
  *&v177 = v45;
  v132 = v46;
  *(&v177 + 1) = v46;
  sub_1C5BCA694();
  v57 = v175 * 0.5 + -5.0 + -8.0;
  v58 = -v57;
  if (v56 >= -v57)
  {
    v58 = v56;
  }

  if (v57 >= v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = v175 * 0.5 + -5.0 + -8.0;
  }

  sub_1C5BCAA54();
  sub_1C5BC8BD4();

  v60 = sub_1C5BC98B4();
  sub_1C5BC8174();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v184 = 0;
  v69 = &v18[*(v16 + 36)];
  sub_1C5BCA9C4();
  v70 = sub_1C5BC9894();
  v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196120, &qword_1C5BE2C40) + 36)] = v70;
  v71 = v180;
  *(v18 + 40) = v179;
  v72 = v177;
  *(v18 + 24) = v178;
  v73 = v182;
  *(v18 + 104) = v183;
  v74 = v181;
  *(v18 + 88) = v73;
  *(v18 + 72) = v74;
  *(v18 + 56) = v71;
  *v18 = v34;
  *(v18 + 8) = v72;
  *(v18 + 60) = 1;
  v18[128] = v60;
  *(v18 + 17) = v62;
  *(v18 + 18) = v64;
  *(v18 + 19) = v66;
  *(v18 + 20) = v68;
  v18[168] = 0;
  sub_1C594C704(v9);
  v75 = v138;
  (*(v138 + 104))(v54, *MEMORY[0x1E697F608], v4);
  sub_1C5A9B150(&qword_1EDA46328, MEMORY[0x1E697F610], MEMORY[0x1E697F620]);
  v76 = sub_1C5BCADB4();
  v77 = *(v75 + 8);
  v77(v54, v4);
  v77(v9, v4);
  if (v76)
  {
    v78 = v131;
    sub_1C59421E4(v131);
    v79 = v169;
    v80 = *(v169 + 104);
    v81 = v137;
    LODWORD(v141) = *MEMORY[0x1E697DBB8];
    v82 = v146;
    v80(v137);
    v83 = sub_1C5BC8274();
    v84 = *(v79 + 8);
    v84(v81, v82);
    v84(v78, v82);
    v85 = v163;
    if ((v83 & 1) == 0)
    {
      v86 = v145;
      (v80)(v145, v141, v82);
      goto LABEL_27;
    }
  }

  else
  {
    v80 = *(v169 + 104);
    v85 = v163;
    v82 = v146;
  }

  v86 = v145;
  (v80)(v145, *MEMORY[0x1E697DBA8], v82);
LABEL_27:
  KeyPath = swift_getKeyPath(asc_1C5BE2C48);
  v88 = v142;
  v89 = &v142[*(v139 + 36)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130, &qword_1C5BEA710);
  (*(v169 + 32))(v89 + *(v90 + 28), v86, v82);
  *v89 = KeyPath;
  sub_1C59E7D34(v18, v88, &qword_1EC1960B0, &qword_1C5BE2BD0);
  v91 = v88;
  v92 = v144;
  sub_1C59E7D34(v91, v144, &qword_1EC1960B8, &qword_1C5BE2BD8);
  *(v92 + *(v140 + 36)) = 0;
  v93 = v159;
  sub_1C5AA3634(v170, v159, type metadata accessor for ScrubberTooltipModifier);
  v94 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v95 = swift_allocObject();
  sub_1C5AA592C(v93, v95 + v94, type metadata accessor for ScrubberTooltipModifier);
  v96 = v92;
  v97 = v152;
  sub_1C59E7D34(v96, v152, &qword_1EC1960C0, &qword_1C5BE2BE0);
  v98 = (v97 + *(v143 + 36));
  *v98 = sub_1C5941E6C;
  v98[1] = 0;
  v98[2] = sub_1C5AA3248;
  v98[3] = v95;
  v99 = *(*&v34 + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v175 = v99;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  if (*(*&v99 + 57) && *(*&v99 + 57) == 1)
  {
    v100 = 1;
  }

  else
  {
    v100 = sub_1C5BCBDE4();
  }

  v101 = v150;
  sub_1C59E7D34(v97, v150, &qword_1EC1960C8, &qword_1C5BE2BE8);
  v102 = v101 + *(v151 + 36);
  *v102 = 0;
  *(v102 + 8) = v100 & 1;
  v103 = v101;
  v104 = v148;
  sub_1C59E7D34(v103, v148, &qword_1EC1960D0, &qword_1C5BE2BF0);
  v105 = v104 + *(v149 + 36);
  *v105 = 0x4014000000000000;
  *(v105 + 8) = v59;
  *(v105 + 16) = 256;
  v106 = v154;
  sub_1C59E7D34(v104, v154, &qword_1EC1960D8, &qword_1C5BE2BF8);
  v107 = v106 + *(v147 + 36);
  *v107 = 0;
  *(v107 + 8) = v53;
  swift_getKeyPath(byte_1C5BE2C78);
  v175 = v34;
  sub_1C5BC7B74();

  v108 = 1.0;
  if (*(*&v34 + 120))
  {
    v109 = 1.0;
  }

  else
  {
    v109 = 0.0;
  }

  v110 = v161;
  sub_1C59E7D34(v106, v161, &qword_1EC1960E0, &qword_1C5BE2C00);
  *(v110 + *(v153 + 36)) = v109;
  swift_getKeyPath(byte_1C5BE2C78);
  v175 = v34;
  sub_1C5BC7B74();

  if (!*(*&v34 + 120))
  {
    v108 = 0.5;
  }

  v175 = v45;
  v176 = v132;
  sub_1C5BCA694();
  v111 = v59 / v174 + 0.5;
  v112 = v158;
  sub_1C59E7D34(v110, v158, &qword_1EC1960E8, &qword_1C5BE2C08);
  v113 = v112 + *(v160 + 36);
  *v113 = v108;
  *(v113 + 8) = v108;
  *(v113 + 16) = v111;
  *(v113 + 24) = 0x3FF4000000000000;
  sub_1C59E7D34(v112, v85, &qword_1EC1960F0, &qword_1C5BE2C10);
  v114 = v85 + *(v157 + 36);
  *v114 = v47;
  *(v114 + 8) = 0xC018000000000000;
  v115 = *(*&v34 + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v175 = v115;
  sub_1C5BC7B74();

  if (*(*&v115 + 57))
  {
    v116 = v168;
    if (*(*&v115 + 57) == 1)
    {

LABEL_41:
      v118 = 0.0;
      goto LABEL_42;
    }
  }

  else
  {
    v116 = v168;
  }

  v117 = sub_1C5BCBDE4();

  v118 = 5.0;
  if (v117)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_1C59E7D34(v85, v116, &qword_1EC1960F8, &qword_1C5BE2C18);
  v119 = (v116 + *(v162 + 36));
  *v119 = 0.0;
  v119[1] = v118;
  if (qword_1EC190780 != -1)
  {
    swift_once();
  }

  v120 = qword_1EC1958E0;
  v121 = *(*&v34 + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v175 = v121;
  sub_1C5BC7B74();

  if (*(*&v121 + 57) && *(*&v121 + 57) == 1)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_1C5BCBDE4();
  }

  v123 = v166;
  sub_1C59E7D34(v116, v166, &qword_1EC196100, &qword_1C5BE2C20);
  v124 = v123 + *(v167 + 36);
  *v124 = v120;
  *(v124 + 8) = v122 & 1;
  v125 = v165;
  sub_1C59E7D34(v123, v165, &qword_1EC196108, &qword_1C5BE2C28);
  v126 = v172;
  *(v125 + *(v172 + 36)) = xmmword_1C5BE1450;
  v127 = v125;
  v128 = v164;
  sub_1C59E7D34(v127, v164, &qword_1EC196110, &unk_1C5BE2C30);
  v129 = v128;
  v130 = v173;
  sub_1C59E7D34(v129, v173, &qword_1EC196110, &unk_1C5BE2C30);
  (*(v171 + 56))(v130, 0, 1, v126);
}

uint64_t sub_1C5A96D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BCAA14();
  v7 = v6;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196098, &qword_1C5BE2BB8) + 36);
  sub_1C5A95734(v2, v8);
  v9 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960A0, &qword_1C5BE2BC0) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960A8, &qword_1C5BE2BC8);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1C5A96E3C(uint64_t a1)
{
  swift_getKeyPath(byte_1C5BE2DC0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  if (*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8))
  {
    return sub_1C5A81AF8();
  }

  v3 = 43;
  if (*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession) < 0.0)
  {
    v3 = 0;
  }

  v8 = v3;
  if (qword_1EC190718 != -1)
  {
    swift_once();
  }

  v4 = [qword_1EC1A6B18 stringFromSeconds_];
  v5 = sub_1C5BCAE74();
  v7 = v6;

  MEMORY[0x1C694F170](v5, v7);

  return v8;
}

uint64_t sub_1C5A96F9C(uint64_t a1)
{
  swift_getKeyPath(byte_1C5BE2DC0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  if (*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8) == 1)
  {
    swift_getKeyPath(asc_1C5BE2D98);
    sub_1C5BC7B74();

    if (*(a1 + 88))
    {
      v2 = *(a1 + 80);

      return v2;
    }
  }

  return 0;
}

void sub_1C5A970B8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C5A96E3C(*v1);
  v6 = v5;
  v7 = sub_1C5A96F9C(v3);
  v9 = v8;
  swift_getKeyPath(asc_1C5BE2D70);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v10 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
}

double sub_1C5A971A0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v21 = a7;
  v13 = sub_1C5BC9044();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &MinX - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  CGRectGetMinY(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  CGRectGetWidth(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  CGRectGetHeight(v44);
  (*(v14 + 104))(v16, *MEMORY[0x1E697F468], v13);
  v35 = 0x3FF0000000000000;
  v36 = 0;
  v37 = 0;
  v38 = 0x3FF0000000000000;
  v39 = 0;
  v40 = 0;
  sub_1C5BC9AC4();
  (*(v14 + 8))(v16, v13);
  v17 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v17;
  v34 = *(a1 + 32);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = v21;
  v28 = 0x4024000000000000;
  sub_1C5BC9B34();
  sub_1C5BC9AE4();
  sub_1C5AA5A80(&v29);
  sub_1C5AA5A80(v33);
  result = *&v30;
  v19 = v31;
  *a1 = v30;
  *(a1 + 16) = v19;
  *(a1 + 32) = v32;
  return result;
}

void sub_1C5A973EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  CGRectGetMidX(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  sub_1C5BC9AD4();
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMaxY(v12);
  sub_1C5BC9AF4();
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMaxY(v13);
  sub_1C5BC9AF4();
}

double sub_1C5A974C0@<D0>(uint64_t a1@<X8>)
{
  sub_1C5BC9B34();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double sub_1C5A9752C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_1C5A97538(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*sub_1C5A97544(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_1C5A97570;
}

double sub_1C5A97570(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t sub_1C5A97580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA5AD4();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5A975E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA5AD4();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5A97648(uint64_t a1)
{
  v2 = sub_1C5AA5AD4();

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_1C5A97694@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1C5BC9134();
  v39 = 0;
  sub_1C5A97878(v3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v41, __src, sizeof(v41));
  sub_1C59400B0(__dst, v36, &qword_1EC196578, &qword_1C5BE36A0);
  sub_1C5924EF4(v41, &qword_1EC196578, &qword_1C5BE36A0);
  memcpy(&v38[7], __dst, 0x150uLL);
  v6 = v39;
  sub_1C5BC9A14();
  v7 = sub_1C5BC9934();

  KeyPath = swift_getKeyPath(byte_1C5BE2CA0);
  v9 = sub_1C5BC98A4();
  sub_1C5BC8174();
  v34 = v11;
  v35 = v10;
  v32 = v13;
  v33 = v12;
  v39 = 0;
  LOBYTE(v3) = sub_1C5BC98B4();
  sub_1C5BC8174();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v36[0] = 0;
  v22 = sub_1C5BC9884();
  sub_1C5BC8174();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  *a2 = v5;
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = v6;
  memcpy((a2 + 17), v38, 0x157uLL);
  *(a2 + 360) = KeyPath;
  *(a2 + 368) = v7;
  *(a2 + 376) = v9;
  *(a2 + 384) = v35;
  *(a2 + 392) = v34;
  result = v32;
  *(a2 + 400) = v33;
  *(a2 + 408) = v32;
  *(a2 + 416) = 0;
  *(a2 + 424) = v3;
  *(a2 + 432) = v15;
  *(a2 + 440) = v17;
  *(a2 + 448) = v19;
  *(a2 + 456) = v21;
  *(a2 + 464) = 0;
  *(a2 + 472) = v22;
  *(a2 + 480) = v24;
  *(a2 + 488) = v26;
  *(a2 + 496) = v28;
  *(a2 + 504) = v30;
  *(a2 + 512) = 0;
  return result;
}

uint64_t sub_1C5A97878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC77C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[3];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a1[2];
  v35[0] = v9;
  v35[1] = v8;
  sub_1C5BC7784();
  sub_1C594A23C();
  v10 = sub_1C5BCB8C4();
  v12 = v11;
  (*(v5 + 8))(v7, v4);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196588, &qword_1C5BE36B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C5BD4D40;
    v15 = sub_1C5BC9854();
    *(v14 + 32) = v15;
    v16 = sub_1C5BC9874();
    *(v14 + 33) = v16;
    v17 = sub_1C5BC9864();
    sub_1C5BC9864();
    if (sub_1C5BC9864() != v15)
    {
      v17 = sub_1C5BC9864();
    }

    sub_1C5BC9864();
    if (sub_1C5BC9864() != v16)
    {
      v17 = sub_1C5BC9864();
    }

    sub_1C5A97C4C(v9, v8, a1, v35);
    memcpy(v34, v35, 0x121uLL);
    memcpy(v36, v35, 0x121uLL);
    sub_1C59400B0(v34, v37, &qword_1EC196590, &qword_1C5BE36B8);
    sub_1C5924EF4(v36, &qword_1EC196590, &qword_1C5BE36B8);
    memcpy(&v32[7], v34, 0x121uLL);
    LOBYTE(v35[0]) = v17;
    memcpy(v35 + 1, v32, 0x128uLL);
    CGSizeMake();
    memcpy(v37, v35, 0x129uLL);
  }

  else
  {
LABEL_10:
    sub_1C5AA5FCC(v37);
  }

  v18 = a1[1];
  v35[0] = *a1;
  v35[1] = v18;
  sub_1C594A23C();

  v19 = sub_1C5BC9CA4();
  v21 = v20;
  v23 = v22;
  v24 = sub_1C5BC9BD4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1C5953BD8(v19, v21, v23 & 1);

  memcpy(v33, v37, sizeof(v33));
  memcpy(v34, v37, 0x129uLL);
  memcpy(v35, v37, 0x129uLL);
  v32[296] = v28 & 1;
  memcpy(a2, v35, 0x130uLL);
  *(a2 + 304) = v24;
  *(a2 + 312) = v26;
  *(a2 + 320) = v28 & 1;
  *(a2 + 328) = v30;
  sub_1C59400B0(v34, v36, &qword_1EC196580, &qword_1C5BE36A8);
  sub_1C59AEE34(v24, v26, v28 & 1);

  sub_1C5953BD8(v24, v26, v28 & 1);

  memcpy(v36, v33, 0x129uLL);
  return sub_1C5924EF4(v36, &qword_1EC196580, &qword_1C5BE36A8);
}

void sub_1C5A97C4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v40 = a2;
  sub_1C594A23C();

  v5 = sub_1C5BC9CA4();
  v33 = v6;
  v34 = v5;
  v29 = v7;
  v35 = v8;
  v31 = *(a3 + 32);
  sub_1C5BCA684();
  v9 = v39;
  KeyPath = swift_getKeyPath(byte_1C5BE36C0);
  v28 = swift_getKeyPath(byte_1C5BE36E8);
  v37[0] = 0;
  v27 = swift_getKeyPath(asc_1C5BE3710);
  v26 = swift_getKeyPath(asc_1C5BE3738);
  v75 = 1;

  v10 = sub_1C5BC9CA4();
  v24 = v11;
  v12 = v11;
  v14 = v13;
  v22 = v13;
  v16 = v15 & 1;
  v23 = v15 & 1;
  v72 = 1;
  v36 = swift_getKeyPath(asc_1C5BE3738);
  v25 = sub_1C5960930(&unk_1F4513AF8);
  v17 = sub_1C5BCAE44();
  v21 = [v17 _isNaturallyRTL];

  v20 = swift_getKeyPath(asc_1C5BE3760);
  v19 = swift_getKeyPath(asc_1C5BE3710);
  v29 &= 1u;
  v74 = v29;
  v73 = v29;
  *__src = v10;
  *&__src[8] = v12;
  __src[16] = v16;
  *&__src[32] = xmmword_1C5BD5090;
  *&__src[24] = v14;
  *&__src[48] = 0;
  __src[56] = v31;
  *&__src[60] = 0;
  *&__src[68] = 0;
  __src[72] = 1;
  *&__src[80] = 7104878;
  *&__src[88] = 0xE300000000000000;
  *&__src[96] = v39;
  v18 = v40;
  *&__src[104] = v40;
  *&__src[112] = KeyPath;
  __src[120] = 0;
  *&__src[128] = v28;
  memset(&__src[136], 0, 25);
  *&__src[168] = v27;
  __src[176] = 0;
  *&__src[184] = v26;
  __src[192] = 0;
  *&__src[200] = 0;
  __src[208] = 1;
  *&__src[216] = v36;
  *&__src[224] = v25;
  *&__src[232] = v20;
  __src[240] = v21;
  *&__src[248] = v19;
  __src[256] = 0;
  *a4 = v34;
  *(a4 + 8) = v33;
  *(a4 + 16) = v29;
  *(a4 + 24) = v35;
  memcpy((a4 + 32), __src, 0x101uLL);
  v39 = v10;
  v40 = v24;
  v41 = v23;
  v42 = v22;
  v43 = xmmword_1C5BD5090;
  v44 = 0;
  v45 = v31;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = 7104878;
  v50 = 0xE300000000000000;
  v51 = v9;
  v52 = v18;
  v53 = KeyPath;
  v54 = 0;
  v55 = v28;
  v56 = 0;
  v58 = 0;
  v57 = 0;
  v59 = 0;
  v60 = v27;
  v61 = 0;
  v62 = v26;
  v63 = 0;
  v64 = 0;
  v65 = 1;
  v66 = v36;
  v67 = v25;
  v68 = v20;
  v69 = v21;
  v70 = v19;
  v71 = 0;
  sub_1C59AEE34(v34, v33, v29);

  sub_1C59400B0(__src, v37, &qword_1EC196598, &qword_1C5BE3788);
  sub_1C5924EF4(&v39, &qword_1EC196598, &qword_1C5BE3788);
  sub_1C5953BD8(v34, v33, v74);
}

uint64_t sub_1C5A98088@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196060, &qword_1C5BE2B10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  type metadata accessor for ScrubberInteractionViewModel(0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);

  sub_1C5BCA964();
  sub_1C5BCA954();
  swift_getKeyPath(asc_1C5BE2B18);
  sub_1C5BCA974();

  v13 = *(v4 + 8);
  v13(v9, v3);
  v29 = v45;
  v30 = v44;
  v34 = v46;
  LOBYTE(v4) = v47;
  sub_1C5BCA954();
  swift_getKeyPath(asc_1C5BE2B40);
  sub_1C5BCA974();

  v13(v6, v3);
  v14 = v39;
  v15 = v40;
  v38 = v4;
  v36 = BYTE8(v40);
  v16 = sub_1C5BCAA54();
  v31 = v16;
  v18 = v17;
  v13(v12, v3);
  LOBYTE(v3) = v38;
  v19 = v36;
  v21 = v29;
  v20 = v30;
  *&v39 = v30;
  *(&v39 + 1) = v29;
  *&v40 = v34;
  BYTE8(v40) = v38;
  *(&v40 + 9) = *v37;
  HIDWORD(v40) = *&v37[3];
  v41 = v14;
  *&v42 = v15;
  BYTE8(v42) = v36;
  *&v43 = v16;
  *(&v43 + 1) = v18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196068, &qword_1C5BE2B68);
  v23 = v32;
  (*(*(v22 - 8) + 16))(v32, v33, v22);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196070, &qword_1C5BE2B70) + 36));
  v25 = v42;
  v24[2] = v41;
  v24[3] = v25;
  v24[4] = v43;
  v26 = v40;
  *v24 = v39;
  v24[1] = v26;
  v44 = v20;
  v45 = v21;
  v46 = v34;
  v47 = v3;
  *&v48[3] = *&v37[3];
  *v48 = *v37;
  v49 = v14;
  v50 = v15;
  v51 = v19;
  v52 = v31;
  v53 = v18;
  sub_1C59400B0(&v39, &v35, &qword_1EC196078, &qword_1C5BE2B78);
  return sub_1C5924EF4(&v44, &qword_1EC196078, &qword_1C5BE2B78);
}

void sub_1C5A98410(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 72);
  swift_getKeyPath(byte_1C5BE2B80);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v4;
}

id sub_1C5A984CC()
{
  v15[0] = *v0;
  *(v15 + 9) = *(v0 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196088, &qword_1C5BE2BA8);
  sub_1C5BCA834();
  v1 = v13;
  v2 = v14;
  v15[0] = v0[2];
  *(v15 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196090, &qword_1C5BE2BB0);
  sub_1C5BCA834();
  v10 = v12;
  v3 = v13;
  v4 = v14;
  v5 = type metadata accessor for WindowPropertiesReaderViewController();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__windowWidth];
  *v7 = v12;
  *(v7 + 2) = v1;
  v7[24] = v2;
  v8 = &v6[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__maximumFramesPerSecond];
  *v8 = v10;
  *(v8 + 2) = v3;
  v8[24] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1C5A985E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA31F4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C5A98648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA31F4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C5A986AC(uint64_t a1)
{
  sub_1C5AA31F4();
  sub_1C5BC9784();
  __break(1u);
}

id sub_1C5A98730(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for WindowPropertiesReaderViewController();
  objc_msgSendSuper2(&v24, sel_viewIsAppearing_, v3 & 1);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result window];

  if (v6)
  {
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    Width = CGRectGetWidth(v25);
  }

  else
  {
    Width = 0.0;
  }

  v21 = *&v2[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__windowWidth];
  v22 = *&v2[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__windowWidth + 16];
  LOBYTE(v23) = v2[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__windowWidth + 24];
  v19 = Width;
  LOBYTE(v20) = v6 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196088, &qword_1C5BE2BA8);
  sub_1C5BCA824();
  result = [v2 view];
  if (!result)
  {
    goto LABEL_10;
  }

  v16 = result;
  v17 = [result window];

  if (v17)
  {
    v18 = [v17 screen];

    [v18 maximumFramesPerSecond];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196090, &qword_1C5BE2BB0);
  return sub_1C5BCA824();
}

uint64_t sub_1C5A9899C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1C5BCAC14();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C5BCAC44();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WindowPropertiesReaderViewController();
  v22.receiver = v4;
  v22.super_class = v14;
  objc_msgSendSuper2(&v22, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v15 = sub_1C5BCB5A4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C5AA360C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_12;
  v17 = _Block_copy(aBlock);

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5A9B150(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v13, v10, v17);
  _Block_release(v17);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1C5A98CCC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 view];

      if (!v5)
      {
        __break(1u);
        goto LABEL_15;
      }

      v6 = [v5 window];

      if (v6)
      {
        [v6 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v22.origin.x = v8;
        v22.origin.y = v10;
        v22.size.width = v12;
        v22.size.height = v14;
        CGRectGetWidth(v22);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196088, &qword_1C5BE2BA8);
    sub_1C5BCA824();
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 view];

    if (v19)
    {
      v20 = [v19 window];

      if (v20)
      {
        v21 = [v20 screen];

        [v21 maximumFramesPerSecond];
      }

      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_12:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196090, &qword_1C5BE2BB0);
  sub_1C5BCA824();
}

id sub_1C5A99078(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C5A99114()
{
  result = sub_1C5BCAB24();
  qword_1EC1A6B38 = result;
  return result;
}

uint64_t sub_1C5A99138()
{
  result = sub_1C5BCAAD4();
  qword_1EC1A6B40 = result;
  return result;
}

void sub_1C5A99164()
{
  v0 = type metadata accessor for ScrubberSpecs.TrackEffects(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6B48);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6B48);
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = objc_opt_self();
  v5 = [v4 effectCompositingColor:v3 withMode:0 alpha:0.45];

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = [v2 whiteColor];
  v7 = [v4 effectCompositingColor:v6 withMode:0 alpha:1.0];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = [v2 whiteColor];
  v9 = [v4 effectCompositingColor:v8 withMode:0 alpha:0.45];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = [v2 whiteColor];
  v11 = [v4 effectCompositingColor:v10 withMode:0 alpha:0.18];

  if (v11)
  {
    v12 = *(v0 + 32);
    v13 = *MEMORY[0x1E6981DB8];
    v14 = sub_1C5BCAB54();
    (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
    *v1 = v5;
    *(v1 + 1) = v7;
    *(v1 + 2) = v9;
    *(v1 + 3) = v11;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1C5A99374()
{
  v0 = type metadata accessor for ScrubberSpecs.TrackEffects(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6B60);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6B60);
  v2 = objc_opt_self();
  v3 = [v2 systemGrayColor];
  v4 = objc_opt_self();
  v5 = [v4 effectCompositingColor_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = [v2 labelColor];
  v7 = [v4 effectCompositingColor_];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = [v2 systemGrayColor];
  v9 = [v4 effectCompositingColor_];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = [v2 systemFillColor];
  v11 = [v4 effectCompositingColor_];

  if (v11)
  {
    v12 = *(v0 + 32);
    v13 = *MEMORY[0x1E6981DF0];
    v14 = sub_1C5BCAB54();
    (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
    *v1 = v5;
    *(v1 + 1) = v7;
    *(v1 + 2) = v9;
    *(v1 + 3) = v11;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1C5A99558()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v19 - v4);
  sub_1C5BC9A14();
  v6 = sub_1C5BC9934();

  if (qword_1EC190668 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC1A6AB0;

  v8 = sub_1C5BC93F4();
  v20 = v7;
  LODWORD(v19[0]) = v8;
  v9 = sub_1C5BC85E4();
  v10 = sub_1C5BC85E4();
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC1A6AC0;
  v12 = *(v0 + 36);
  v13 = *MEMORY[0x1E6981DB8];
  v14 = sub_1C5BCAB54();
  (*(*(v14 - 8) + 104))(v5 + v12, v13, v14);
  *v5 = v11;

  LODWORD(v20) = sub_1C5BC9404();
  sub_1C59400B0(v5, v2, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);
  v15 = sub_1C5BC85E4();
  v16 = sub_1C5BC85E4();
  sub_1C5924EF4(v5, &unk_1EC196170, &qword_1C5BDA000);
  v20 = v9;
  v21 = v10;
  v19[0] = v15;
  v19[1] = v16;
  sub_1C59E6BD4();
  v17 = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  qword_1EC1A6B78[0] = v6;
  unk_1EC1A6B80 = v17;
  qword_1EC1A6B88 = result;
  return result;
}

uint64_t sub_1C5A99820()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v13 - v4);
  sub_1C5BC9A14();
  v6 = sub_1C5BC9934();

  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC1A6AC0;
  v8 = *(v0 + 36);
  v9 = *MEMORY[0x1E6981DB8];
  v10 = sub_1C5BCAB54();
  (*(*(v10 - 8) + 104))(v5 + v8, v9, v10);
  *v5 = v7;
  sub_1C59400B0(v5, v2, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);

  v11 = sub_1C5BC85E4();
  result = sub_1C5924EF4(v5, &unk_1EC196170, &qword_1C5BDA000);
  qword_1EC1A6B90 = v6;
  *algn_1EC1A6B98 = v11;
  return result;
}

uint64_t sub_1C5A99A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC8894();
  sub_1C5A9B150(&qword_1EDA4E1A0, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  v9 = sub_1C5BCB414();
  if (v9 == 3)
  {
    sub_1C5BC88A4();
    v12 = *(v4 + 24);
    sub_1C5BC88A4();
    v13 = sub_1C5BC8744();
    (*(*(v13 - 8) + 56))(&v7[v12], 0, 1, v13);
  }

  else
  {
    if (v9 != 2)
    {
      (*(*(v8 - 8) + 8))(a1, v8);
      v14 = 1;
      return (*(v5 + 56))(a2, v14, 1, v4);
    }

    sub_1C5BC88A4();
    v10 = *(v4 + 24);
    v11 = sub_1C5BC8744();
    (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
  }

  sub_1C5BC88A4();
  (*(*(v8 - 8) + 8))(a1, v8);
  sub_1C5AA592C(v7, a2, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
  v14 = 0;
  return (*(v5 + 56))(a2, v14, 1, v4);
}

void (*sub_1C5A99D0C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C5AA6380;
}

uint64_t ScrubEvent.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

void *ScrubberReader.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ScrubberProxy(0);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195A20, &qword_1C5BE1638);
  swift_allocObject();
  *(v6 + 16) = sub_1C5BC7F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195A28, &unk_1C5BE1640);
  swift_allocObject();
  *(v6 + 24) = sub_1C5BC7F84();
  sub_1C5BC7BA4();
  result = sub_1C5BCA684();
  a3[2] = 0;
  a3[3] = v8;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t ScrubberReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *(a1 + 16);
  v28 = v4;
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25[0] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScrubberProxy(255);
  v25[1] = v6;
  v7 = *(a1 + 24);
  v27 = v7;
  v26 = sub_1C5A9B150(&qword_1EC1958F8, type metadata accessor for ScrubberProxy, &protocol conformance descriptor for ScrubberProxy);
  v33 = v4;
  v34 = v6;
  v35 = v7;
  v36 = v26;
  v29 = MEMORY[0x1E69811C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = *v2;
  v16 = *(v2 + 24);
  v33 = *(v2 + 16);
  v15 = v33;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196250, &qword_1C5BE2E58);
  sub_1C5BCA694();
  v17 = v25[0];
  v14(v37);

  v33 = v15;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196250, &qword_1C5BE2E58);
  sub_1C5BCA694();
  v18 = swift_checkMetadataState();
  v20 = v27;
  v19 = v28;
  v21 = v26;
  sub_1C5BC9DE4();

  (*(v31 + 8))(v17, v19);
  v33 = v19;
  v34 = v18;
  v35 = v20;
  v36 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v10, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v30 + 8);
  v23(v10, OpaqueTypeMetadata2);
  sub_1C593EDC0(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v13, OpaqueTypeMetadata2);
}

Swift::Void __swiftcall ScrubberProxy.notifyJumped(by:)(Swift::Double by)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v2;
    v18[0] = v12;
    *v11 = 136446466;
    v13 = sub_1C5BCAEA4();
    v15 = sub_1C592ADA8(v13, v14, v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = by;
    _os_log_impl(&dword_1C5922000, v9, v10, "ScrubberReader proxy %{public}s notifying jumped by interval %f", v11, 0x16u);
    v16 = __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69510F0](v12, -1, -1, v16);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *v18 = by;
  v18[1] = 0;
  v18[2] = 0;
  sub_1C5BC7F34();
}

Swift::Void __swiftcall ScrubberProxy.showSectionDelimiters(forDuration:delay:)(Swift::Double_optional forDuration, Swift::Double delay)
{
  v4 = v3;
  value = forDuration.value;
  v6 = v2;
  v7 = *&forDuration.is_nil;
  v8 = sub_1C5BC7D64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_1EC1A6BC0);
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_1C5BC7D44();
  v14 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v6;
    v6 = v15;
    v24 = swift_slowAlloc();
    v26 = v24;
    v27 = v4;
    *v6 = 136446722;
    v16 = sub_1C5BCAEA4();
    v18 = sub_1C592ADA8(v16, v17, &v26);

    *(v6 + 4) = v18;
    *(v6 + 12) = 2082;
    v27 = v7;
    LOBYTE(v28) = v25 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78, &qword_1C5BD3CF0);
    v19 = sub_1C5BCAEA4();
    v21 = sub_1C592ADA8(v19, v20, &v26);

    *(v6 + 14) = v21;
    *(v6 + 22) = 2048;
    *(v6 + 24) = value;
    _os_log_impl(&dword_1C5922000, v13, v14, "ScrubberReader proxy %{public}s showing section delimiters for %{public}s seconds, delay: %f", v6, 0x20u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v22, -1, -1);
    v23 = v6;
    LOBYTE(v6) = v25;
    MEMORY[0x1C69510F0](v23, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v27 = v7;
  v28 = v6 & 1 | 0x4000000000000000;
  v29 = value;
  sub_1C5BC7F34();
}

Swift::Void __swiftcall ScrubberProxy._pptChangeScrubberInteractionState(to:)(MediaCoreUI::ScrubState to)
{
  v2 = v1;
  v3 = to;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v9, v4);

  v10 = sub_1C5BC7D44();
  v11 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v2;
    v25 = v22;
    *v12 = 136446466;
    v13 = sub_1C5BCAEA4();
    v15 = sub_1C592ADA8(v13, v14, &v25);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = 0xE800000000000000;
    v17 = 0x676E696B63617274;
    if (v8 != 1)
    {
      v17 = 0x6172656C65636564;
      v16 = 0xEC000000676E6974;
    }

    v23 = v8;
    if (v8)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1701602409;
    }

    if (v8)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v20 = sub_1C592ADA8(v18, v19, &v25);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1C5922000, v10, v11, "ScrubberReader proxy %{public}s changing interaction state to %s", v12, 0x16u);
    v21 = v22;
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v21, -1, -1);
    MEMORY[0x1C69510F0](v12, -1, -1);

    (*(v5 + 8))(v7, v4);
    v8 = v23;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v25 = v8;
  v26 = xmmword_1C5BE1460;
  sub_1C5BC7F34();
}

Swift::Void __swiftcall ScrubberProxy.seek(to:)(Swift::Double to)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v2;
    v18 = *&v12;
    *v11 = 136446466;
    v13 = sub_1C5BCAEA4();
    v15 = sub_1C592ADA8(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = to;
    _os_log_impl(&dword_1C5922000, v9, v10, "ScrubberReader proxy %{public}s seeking to time %f", v11, 0x16u);
    v16 = __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69510F0](v12, -1, -1, v16);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v18 = to;
  sub_1C5BC7F54();
}

uint64_t ScrubberProxy.deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI13ScrubberProxy___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScrubberProxy.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI13ScrubberProxy___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ScrubberSection.title.getter()
{
  v1 = *v0;

  return v1;
}

MediaCoreUI::ScrubberSection __swiftcall ScrubberSection.init(title:startTime:)(Swift::String title, Swift::Double startTime)
{
  *v2 = title;
  *(v2 + 16) = startTime;
  result.title = title;
  result.startTime = startTime;
  return result;
}

BOOL static ScrubberSection.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C5BCBDE4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t ScrubberSection.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C5BCAF04();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x1C69501C0](*&v3);
}

uint64_t ScrubberSection.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C69501C0](*&v2);
  return sub_1C5BCBF94();
}

BOOL sub_1C5A9AF70(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C5BCBDE4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1C5A9AFD4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C5BCAF04();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x1C69501C0](*&v3);
}

uint64_t sub_1C5A9B020(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1C69501C0](*&v3);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A9B0F0(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C5BC8F44();
  return v3;
}

uint64_t sub_1C5A9B150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double MCUINamespace<A>.scrubberSensitivityInteraction(direction:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(byte_1C5BE1650);
  sub_1C5BC9DF4();

  return result;
}

void *sub_1C5A9B20C()
{
  sub_1C5AA3BE8();

  return sub_1C5BC8F44();
}

double sub_1C5A9B260(char a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_getKeyPath(a4);
  sub_1C5BC9DF4();

  return result;
}

uint64_t sub_1C5A9B310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A9FF20();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t MCUINamespace<A>.scrubberForceSensitivityTextToSingleLine(_:)@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40, &qword_1C5BD4070);
  v6 = sub_1C5BC8AB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = v18 - v12;
  swift_getKeyPath(byte_1C5BE1680, v11, v18[0]);
  v19 = a1 ^ 1;
  sub_1C5BC9DF4();

  v14 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40, &qword_1C5BD4070, MEMORY[0x1E6980A18]);
  v18[1] = a3;
  v18[2] = v14;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v9, v6, WitnessTable);
  v16 = *(v7 + 8);
  v16(v9, v6);
  sub_1C593EDC0(v13, v6, WitnessTable);
  return (v16)(v13, v6);
}

double sub_1C5A9B55C()
{
  swift_getKeyPath(byte_1C5BE2948);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  return result;
}

double sub_1C5A9B600@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2948);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);

  return result;
}

double sub_1C5A9B6AC(uint64_t a1)
{
  if (sub_1C5A4A2CC(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;

    sub_1C5A9CA60();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2948);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
    sub_1C5BC7B64();
  }

  return result;
}

void sub_1C5A9B7F4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(asc_1C5BE28E0, v8);
  v27 = v2;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if (*(v2 + 32))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *(v2 + 24) == *&a1)
  {
    return;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1EC1A6BC0);
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_1C5BC7D44();
  v13 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v7;
    v15 = v14;
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136446466;
    v27 = a1;
    v28 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78, &qword_1C5BD3CF0);
    v16 = sub_1C5BCAEA4();
    HIDWORD(v24) = v13;
    v18 = sub_1C592ADA8(v16, v17, &v29);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    swift_getKeyPath(asc_1C5BE28E0);
    v27 = v3;
    sub_1C5BC7B74();

    v19 = *(v3 + 32);
    v27 = *(v3 + 24);
    v28 = v19;
    v20 = sub_1C5BCAEA4();
    v22 = sub_1C592ADA8(v20, v21, &v29);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1C5922000, v12, BYTE4(v24), "ScrubberSections.duration changed from %{public}s to %{public}s", v15, 0x16u);
    v23 = v25;
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v23, -1, -1);
    MEMORY[0x1C69510F0](v15, -1, -1);

    (*(v26 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_1C5A9CA60();
}

uint64_t sub_1C5A9BB84()
{
  swift_getKeyPath(asc_1C5BE28E0);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  return *(v0 + 24);
}

void sub_1C5A9BC28(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1C5BE28E0);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
}

double sub_1C5A9BCD8(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (v6)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath(asc_1C5BE28E0);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
      sub_1C5BC7B64();

      return result;
    }
  }

  else if ((a2 & 1) != 0 || *&v5 != *&a1)
  {
    goto LABEL_9;
  }

  *(v2 + 24) = *&a1;
  *(v2 + 32) = a2 & 1;

  sub_1C5A9B7F4(v5, v6);
  return result;
}

void sub_1C5A9BE38(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(aX_9, v8);
  v27 = v2;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if (*(v2 + 48))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *(v2 + 40) == *&a1)
  {
    return;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1EC1A6BC0);
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_1C5BC7D44();
  v13 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v7;
    v15 = v14;
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136446466;
    v27 = a1;
    v28 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78, &qword_1C5BD3CF0);
    v16 = sub_1C5BCAEA4();
    HIDWORD(v24) = v13;
    v18 = sub_1C592ADA8(v16, v17, &v29);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    swift_getKeyPath(aX_9);
    v27 = v3;
    sub_1C5BC7B74();

    v19 = *(v3 + 48);
    v27 = *(v3 + 40);
    v28 = v19;
    v20 = sub_1C5BCAEA4();
    v22 = sub_1C592ADA8(v20, v21, &v29);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1C5922000, v12, BYTE4(v24), "ScrubberSections.scrubberWidth changed from %{public}s to %{public}s", v15, 0x16u);
    v23 = v25;
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v23, -1, -1);
    MEMORY[0x1C69510F0](v15, -1, -1);

    (*(v26 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_1C5A9CA60();
}

uint64_t sub_1C5A9C1C8()
{
  swift_getKeyPath(aX_9);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  return *(v0 + 40);
}

void sub_1C5A9C26C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_9);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v4;
}

double sub_1C5A9C31C(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  if (v6)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath(aX_9);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
      sub_1C5BC7B64();

      return result;
    }
  }

  else if ((a2 & 1) != 0 || *&v5 != *&a1)
  {
    goto LABEL_9;
  }

  *(v2 + 40) = *&a1;
  *(v2 + 48) = a2 & 1;

  sub_1C5A9BE38(v5, v6);
  return result;
}

uint64_t sub_1C5A9C47C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_1C5BE2A20, v6);
  v26 = v1;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  result = sub_1C5A4A2CC(*(v1 + 56), a1);
  if ((result & 1) == 0)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
    (*(v5 + 16))(v8, v10, v4);

    v11 = sub_1C5BC7D44();
    v12 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v13 = 136315394;
      v14 = MEMORY[0x1C694F2A0](a1, &type metadata for ScrubberSection);
      HIDWORD(v23) = v12;
      v16 = sub_1C592ADA8(v14, v15, &v26);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      swift_getKeyPath(byte_1C5BE2A20);
      v25 = v2;
      sub_1C5BC7B74();

      v18 = MEMORY[0x1C694F2A0](v17, &type metadata for ScrubberSection);
      v20 = v19;

      v21 = sub_1C592ADA8(v18, v20, &v26);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1C5922000, v11, BYTE4(v23), "ScrubberSections.visibleSections changed from %s to %{public}s", v13, 0x16u);
      v22 = v24;
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v22, -1, -1);
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

double sub_1C5A9C7C4()
{
  swift_getKeyPath(byte_1C5BE2A20);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  return result;
}

double sub_1C5A9C868@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2A20);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  *a2 = *(v3 + 56);

  return result;
}

double sub_1C5A9C914(uint64_t a1)
{
  v3 = *(v1 + 56);
  if (sub_1C5A4A2CC(v3, a1))
  {
    *(v1 + 56) = a1;
    sub_1C5A9C47C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2A20);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
    sub_1C5BC7B64();
  }

  return result;
}

void sub_1C5A9CA60()
{
  v3 = v0;
  swift_getKeyPath(byte_1C5BE2948);
  v4 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberSections___observationRegistrar;
  v42[0] = v0;
  v5 = sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if (!*(*(v0 + 16) + 16) || (swift_getKeyPath(asc_1C5BE28E0), v42[0] = v0, sub_1C5BC7B74(), , (*(v0 + 32) & 1) != 0) || (v6 = *(v0 + 24), v6 <= 0.0) || (swift_getKeyPath(aX_9), v42[0] = v0, sub_1C5BC7B74(), , (*(v0 + 48) & 1) != 0) || (v7 = *(v0 + 40), v7 <= 0.0))
  {
LABEL_33:
    swift_getKeyPath(byte_1C5BE2A20);
    v42[0] = v3;
    sub_1C5BC7B74();

    if (*(*(v3 + 56) + 16))
    {
LABEL_34:
      v32 = MEMORY[0x1E69E7CC0];
LABEL_35:
      sub_1C5A9C914(v32);
    }

    return;
  }

  swift_getKeyPath(byte_1C5BE2948);
  sub_1C5BC7B74();

  sub_1C5AA2B38(v6);
  v9 = v8;

  v42[0] = v9;

  v10 = 0;
  sub_1C5A9F190(v42);

  v11 = v42[0];
  v12 = *(v42[0] + 2);
  if (v12)
  {
    v13 = 0;
    v14 = v42[0] + 48;
    v15 = -v12;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 9.5;
    do
    {
      v18 = *(v11 + 2);
      if (v13 > v18)
      {
        v18 = v13;
      }

      v19 = -v18;
      v20 = &v14[24 * v13++];
      while (1)
      {
        if (v19 + v13 == 1)
        {
          __break(1u);
          goto LABEL_50;
        }

        v21 = *v20;
        v22 = v7 * vabdd_f64(0.0, *v20) / v6;
        v23 = v7 * vabdd_f64(v6, *v20) / v6 <= 9.5 || v22 <= 7.5;
        if (!v23)
        {
          break;
        }

        ++v13;
        v20 += 3;
        if (v15 + v13 == 1)
        {
          goto LABEL_26;
        }
      }

      v10 = *(v20 - 1);
      v38 = *(v20 - 2);
      v40 = v11;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C5B8F0C8(0, *(v16 + 2) + 1, 1);
        v16 = v42[0];
      }

      v2 = *(v16 + 2);
      v25 = *(v16 + 3);
      v1 = v2 + 1;
      v11 = v40;
      if (v2 >= v25 >> 1)
      {
        sub_1C5B8F0C8((v25 > 1), v2 + 1, 1);
        v11 = v40;
        v16 = v42[0];
      }

      *(v16 + 2) = v1;
      v26 = &v16[24 * v2];
      *(v26 + 4) = v38;
      *(v26 + 5) = v10;
      v26[6] = v21;
    }

    while (v15 + v13);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

LABEL_26:

  swift_bridgeObjectRelease_n();
  v13 = *(v16 + 2);
  if (!v13)
  {

    goto LABEL_33;
  }

  v2 = v13 - 1;
  v14 = v16 + 32;
  v27 = &v16[24 * v13 + 8];
  v4 = *v27;
  v1 = *(v27 + 1);
  v17 = *(v27 + 2);

  v10 = sub_1C5B76A90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = *(v10 + 2);
  v19 = *(v10 + 3);
  v5 = v15 + 1;
  if (v15 >= v19 >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    *(v10 + 2) = v5;
    v28 = &v10[24 * v15];
    *(v28 + 4) = v4;
    *(v28 + 5) = v1;
    v28[6] = v17;
    if (v13 == 1)
    {
      break;
    }

    v13 = (v16 + 16);
    v17 = 6.0;
LABEL_38:
    v19 = *(v16 + 2);
    if (v2 >= v19)
    {
      __break(1u);
      goto LABEL_53;
    }

    v33 = *&v14[24 * v2 + 16];
    v34 = (v13 + 24 * v2);
    while (1)
    {
      v15 = v2 - 1;
      if (v2 - 1 >= v19)
      {
        break;
      }

      v35 = v34[1];
      if (v7 * vabdd_f64(v33, v35) / v6 >= 6.0)
      {
        v4 = *v34;
        v39 = *(v34 - 1);
        v41 = v14;
        v1 = v5 + 1;
        v36 = *(v10 + 3);

        if (v5 >= v36 >> 1)
        {
          v10 = sub_1C5B76A90((v36 > 1), v5 + 1, 1, v10);
        }

        *(v10 + 2) = v1;
        v37 = &v10[24 * v5];
        v14 = v41;
        *(v37 + 4) = v39;
        *(v37 + 5) = v4;
        v37[6] = v35;
        ++v5;
        v23 = v2-- > 1;
        if (v23)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

      v34 -= 3;
      --v2;
      if (v15 + 1 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v10 = sub_1C5B76A90((v19 > 1), v5, 1, v10);
  }

LABEL_29:

  v29 = *(v10 + 2);
  if (!v29)
  {

    goto LABEL_34;
  }

  v30 = sub_1C5A9EBA8(*(v10 + 2), 0);
  v31 = sub_1C5A9EEE0(v42, v30 + 4, v29, v10);

  if (v31 == v29)
  {

    v32 = v30;
    goto LABEL_35;
  }

LABEL_53:
  __break(1u);

  __break(1u);
}

uint64_t sub_1C5A9CFC4()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberSections___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A9D070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[3] = a1;
  v36 = a3;
  v4 = sub_1C5BCAE14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C5BC96A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F80, &qword_1C5BE2930);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F88, &qword_1C5BE2938);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = v30 - v16;
  v37 = a2;
  v30[0] = sub_1C5A9D5E4();
  v30[1] = v17;
  v30[4] = v18;
  v30[2] = v19;
  sub_1C5BC9674();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F90, &qword_1C5BE2940);
  v21 = sub_1C5924F54(&unk_1EC195F98, &qword_1EC195F90, &qword_1C5BE2940, MEMORY[0x1E697FDF8]);
  sub_1C5BCA0C4();
  (*(v8 + 8))(v10, v7);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v23 = v22;
  v40 = sub_1C5BCAE94();
  v41 = v24;
  v38 = v20;
  v39 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v26 = v32;
  v25 = v33;
  sub_1C5BCA034();

  (*(v31 + 8))(v13, v26);
  sub_1C5BCAE04();
  sub_1C5BCADF4();
  sub_1C5BCADE4();
  sub_1C5BCADF4();
  sub_1C5BCADE4();

  sub_1C5BCADF4();
  sub_1C5BCAE24();
  sub_1C5BC7B14();
  v40 = sub_1C5BCAE94();
  v41 = v27;
  v28 = v34;
  sub_1C5BC8A34();

  sub_1C5986AB4(v25);

  sub_1C5BC8A94();

  return sub_1C5986AB4(v28);
}

uint64_t sub_1C5A9D5E4()
{
  v1 = *(*(v0 + 72) + 80);
  swift_getKeyPath(asc_1C5BE28E0);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if ((*(v1 + 32) & 1) == 0)
  {
    swift_getKeyPath(asc_1C5BE2908);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B74();

    v2 = AXDurationStringForDuration();
    if (v2)
    {
      v3 = v2;
      v4 = sub_1C5BCAE74();

      v5 = AXDurationStringForDuration();
      if (v5)
      {
        v6 = v5;
        sub_1C5BCAE74();

        return v4;
      }
    }
  }

  if (qword_1EC190728 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC1A6B28;
  swift_bridgeObjectRetain_n();
  return v4;
}

void sub_1C5A9D7CC(uint64_t a1)
{
  v3 = sub_1C5BC7D64();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC97E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v44 - v14;
  v50 = v1;
  v16 = *(v1 + 16);
  v17 = *(*(v16 + 72) + 80);
  swift_getKeyPath(asc_1C5BE28E0, v13);
  v52 = v17;
  v51 = sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if ((*(v17 + 32) & 1) == 0)
  {
    v18 = *(v17 + 24);
    v19 = *(v6 + 16);
    v19(v15, a1, v5);
    v20 = (*(v6 + 88))(v15, v5);
    if (v20 == *MEMORY[0x1E697CC28])
    {
      v22 = v18 * 0.05;
    }

    else if (v20 == *MEMORY[0x1E697CC20])
    {
      v22 = v18 * -0.05;
    }

    else
    {
      v46 = v19;
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v23 = v49;
      v24 = __swift_project_value_buffer(v49, qword_1EC1A6BC0);
      (*(v48 + 16))(v47, v24, v23);
      v25 = v46;
      v46(v11, a1, v5);
      v26 = sub_1C5BC7D44();
      v27 = sub_1C5BCB4E4();
      v45 = v26;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v52 = v44;
        *v28 = 136315138;
        v25(v8, v11, v5);
        v29 = sub_1C5BCAEA4();
        v31 = v30;
        LODWORD(v46) = v27;
        v32 = *(v6 + 8);
        v32(v11, v5);
        v33 = sub_1C592ADA8(v29, v31, &v52);

        v34 = v28;
        *(v28 + 4) = v33;
        v35 = v45;
        _os_log_impl(&dword_1C5922000, v45, v46, "Unknown case AccessibilityAdjustmentDirection.%s", v34, 0xCu);
        v36 = v44;
        v37 = __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x1C69510F0](v36, -1, -1, v37);
        MEMORY[0x1C69510F0](v34, -1, -1);
      }

      else
      {

        v32 = *(v6 + 8);
        v32(v11, v5);
      }

      (*(v48 + 8))(v47, v49);
      v32(v15, v5);
      v22 = 0.0;
    }

    v38 = *(v16 + 72);
    v21.n128_u64[0] = *(v38 + 96);
    v39 = v22 + v21.n128_f64[0];
    if (v39 <= 0.0)
    {
      v39 = 0.0;
    }

    if (v18 < v39)
    {
      v39 = v18;
    }

    *(v38 + 96) = v39;
    sub_1C5A89794(v21);
    v40 = *(*(v16 + 72) + 80);
    swift_getKeyPath(byte_1C5BE2948);
    v52 = v40;
    sub_1C5BC7B74();

    sub_1C5A83BDC(v41);

    swift_getKeyPath(a0_6);
    v42 = v50;
    v52 = v50;
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B74();

    v43 = *(v42 + 24);
    v52 = *(*(v16 + 72) + 96);
    v53 = 2;

    v43(&v52);
  }
}

uint64_t sub_1C5A9DD90()
{
  result = sub_1C5BCAAA4();
  qword_1EC1958E0 = result;
  return result;
}

uint64_t sub_1C5A9DDC8()
{
  result = MEMORY[0x1C694ED40](0.25, 1.0, 0.0);
  qword_1EC1958E8 = result;
  return result;
}

uint64_t sub_1C5A9DDF4()
{
  result = MEMORY[0x1C694ED40](0.15, 1.0, 0.0);
  qword_1EC1958F0 = result;
  return result;
}

uint64_t sub_1C5A9DE28()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6BC0);
  __swift_project_value_buffer(v0, qword_1EC1A6BC0);
  return sub_1C5BC7D54();
}

MediaCoreUI::ScrubState_optional __swiftcall ScrubState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C5BCBCB4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C5A9DEFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v4 = 0x6172656C65636564;
    v3 = 0xEC000000676E6974;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701602409;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696B63617274;
  if (*a2 != 1)
  {
    v8 = 0x6172656C65636564;
    v7 = 0xEC000000676E6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701602409;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C5BCBDE4();
  }

  return v11 & 1;
}

uint64_t sub_1C5A9E008()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

double sub_1C5A9E0AC(uint64_t a1)
{
  sub_1C5BCAF04();

  return result;
}

uint64_t sub_1C5A9E13C(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

void sub_1C5A9E1E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v5 = 0x6172656C65636564;
    v4 = 0xEC000000676E6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701602409;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1C5A9E260()
{
  result = qword_1EC195940;
  if (!qword_1EC195940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195918, &qword_1C5BE1520);
    sub_1C5A9E2EC();
    sub_1C5A9E560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195940);
  }

  return result;
}

unint64_t sub_1C5A9E2EC()
{
  result = qword_1EC195948;
  if (!qword_1EC195948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195950, &qword_1C5BE1538);
    sub_1C5A9E3A4();
    sub_1C5924F54(&qword_1EC195988, &qword_1EC195990, &qword_1C5BE1550, MEMORY[0x1E697FB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195948);
  }

  return result;
}

unint64_t sub_1C5A9E3A4()
{
  result = qword_1EC195958;
  if (!qword_1EC195958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195960, &qword_1C5BE1540);
    sub_1C5A9E430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195958);
  }

  return result;
}

unint64_t sub_1C5A9E430()
{
  result = qword_1EC195968;
  if (!qword_1EC195968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195970, &qword_1C5BE1548);
    sub_1C5A9B150(&qword_1EC195978, type metadata accessor for MediaTimelineControl, &unk_1C5BE270C);
    sub_1C5A9E50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195968);
  }

  return result;
}

unint64_t sub_1C5A9E50C()
{
  result = qword_1EC195980;
  if (!qword_1EC195980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195980);
  }

  return result;
}

unint64_t sub_1C5A9E560()
{
  result = qword_1EC195998;
  if (!qword_1EC195998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195998);
  }

  return result;
}

unint64_t sub_1C5A9E5B4()
{
  result = qword_1EC1959A0;
  if (!qword_1EC1959A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1959A0);
  }

  return result;
}

unint64_t sub_1C5A9E644()
{
  result = qword_1EC1959E8;
  if (!qword_1EC1959E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959E0, &qword_1C5BE15C8);
    sub_1C5924F54(&qword_1EC1959F0, &qword_1EC1959F8, &qword_1C5BE15D0, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1959E8);
  }

  return result;
}

double sub_1C5A9E724(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for Scrubber(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5A90DA8(a1, v9, v6, v7);
}

unint64_t sub_1C5A9E7B0()
{
  result = qword_1EC195A08;
  if (!qword_1EC195A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A08);
  }

  return result;
}

unint64_t sub_1C5A9E804()
{
  result = qword_1EC195A10;
  if (!qword_1EC195A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A10);
  }

  return result;
}

uint64_t sub_1C5A9E858@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a8;
  v31 = a7;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  v21 = sub_1C5BC8524();
  v23 = *(v21 - 8);
  result = v21 - 8;
  if (*(v23 + 64) == v11)
  {
    (*(v10 + 16))(v13, v27, v9);
    v29(v13);
    (*(v10 + 8))(v13, v9);
    v24 = v31;
    sub_1C593EDC0(v17, a5, v31);
    v25 = *(v14 + 8);
    v25(v17, a5);
    sub_1C593EDC0(v20, a5, v24);
    return (v25)(v20, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C5A9EA9C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1C5A9EB24(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196230, &unk_1C5BF0E30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1C5A9EBA8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961B0, &qword_1C5BE2D30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1C5A9EC38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C5A9ED8C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C5A9EEE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v14 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v14;
    return v6;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 24 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        *v8 = *(v11 - 2);
        v8[1] = v12;
        v8[2] = v13;
        if (!(v10 + v9))
        {

          v14 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 3;
        v8 += 3;
        v14 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v14 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A9EFCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8E24();
  *a1 = result;
  return result;
}

uint64_t sub_1C5A9F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void sub_1C5A9F190(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C5A9FC08(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  v4 = sub_1C5BCBD44();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v9 = v2 + 64;
      v10 = -1;
      for (i = 1; i != v3; ++i)
      {
        v12 = *&v2[24 * i + 48];
        v13 = v10;
        v14 = v9;
        do
        {
          if (v12 >= *(v14 - 2))
          {
            break;
          }

          v15 = *(v14 - 2);
          v16 = *(v14 - 2);
          *(v14 - 3) = *v14;
          v14 -= 24;
          v17 = *(v14 + 2);
          *(v14 + 4) = v16;
          *(v14 + 1) = v15;
          *(v14 - 1) = v17;
          *(v14 + 1) = v12;
        }

        while (!__CFADD__(v13++, 1));
        v9 += 24;
        --v10;
      }
    }
  }

  else
  {
    v6 = v4;
    v7 = (v3 >> 1);
    if (v3 >= 2)
    {
      v8 = sub_1C5BCB0C4();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = (v8 + 32);
    v19[1] = v7;
    sub_1C5A9F2F0(v19, v5, v20, v21, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1C5A9F2F0(double **a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1C5A9FAF0(v8);
    }

    v86 = v8 + 16;
    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a4)
      {
        v88 = &v8[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1C5A9F8B4((*a4 + 24 * *v88), (*a4 + 24 * *v90), *a4 + 24 * v91, v95);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v93 = a5;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a4 + 24 * v7 + 16);
      v11 = 24 * v9;
      v12 = *a4 + 24 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 64);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 3;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 24 * v7 - 8;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a4;
            if (!*a4)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v11);
            v23 = (v28 + v19);
            v24 = *v22;
            v25 = v22[1];
            v26 = v22[2];
            v27 = *v23;
            *v22 = *(v23 - 1);
            v22[2] = v27;
            *(v23 - 2) = v24;
            *(v23 - 1) = v25;
            *v23 = v26;
          }

          ++v21;
          v19 -= 24;
          v11 += 24;
        }

        while (v21 < v20);
        v6 = a4[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a5)
      {
        if (__OFADD__(v9, a5))
        {
          goto LABEL_120;
        }

        if (v9 + a5 < v6)
        {
          v6 = v9 + a5;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C5B76BB0(0, *(v8 + 2) + 1, 1, v8);
    }

    v39 = *(v8 + 2);
    v38 = *(v8 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v8 = sub_1C5B76BB0((v38 > 1), v39 + 1, 1, v8);
    }

    *(v8 + 2) = v40;
    v41 = v8 + 32;
    v42 = &v8[16 * v39 + 32];
    *v42 = v9;
    *(v42 + 1) = v7;
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v8 + 4);
          v45 = *(v8 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = &v8[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = &v41[16 * v43];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v70 = &v8[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = &v41[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v43 - 1 >= v40)
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

        if (!*a4)
        {
          goto LABEL_124;
        }

        v81 = &v41[16 * v43 - 16];
        v82 = *v81;
        v83 = &v41[16 * v43];
        v84 = *(v83 + 1);
        sub_1C5A9F8B4((*a4 + 24 * *v81), (*a4 + 24 * *v83), *a4 + 24 * v84, v95);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v43 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *(v8 + 2);
        if (v43 >= v85)
        {
          goto LABEL_101;
        }

        v40 = v85 - 1;
        memmove(&v41[16 * v43], v83 + 16, 16 * (v85 - 1 - v43));
        *(v8 + 2) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = &v41[16 * v40];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = &v8[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = &v41[16 * v43];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a4[1];
    a5 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a4;
  v30 = *a4 + 24 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 24 * v7 + 16);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *(v34 - 1))
    {
LABEL_29:
      ++v7;
      v30 += 24;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    v36 = *(v34 + 1);
    *v34 = *(v34 - 3);
    v34[2] = *(v34 - 1);
    *(v34 - 2) = v36;
    *(v34 - 1) = v32;
    *(v34 - 3) = v35;
    v34 -= 3;
    if (__CFADD__(v33++, 1))
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
}

uint64_t sub_1C5A9F8B4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
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

      if (v6[2] < v4[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

char *sub_1C5A9FB04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961B8, &qword_1C5BF0700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t _s11MediaCoreUI28ScrubberLoadingConfigurationV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && ((*(a1 + 2) ^ *(a2 + 2)) & 1) == 0)
  {
    if (a1[2])
    {
      if ((a2[2] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (a1[1] == a2[1])
      {
        v4 = *(a2 + 16);
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void *keypath_get_2Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a3 = v5;
  return result;
}

unint64_t sub_1C5A9FD7C()
{
  result = qword_1EC195A50;
  if (!qword_1EC195A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A50);
  }

  return result;
}

unint64_t sub_1C5A9FE18()
{
  result = qword_1EC195A58;
  if (!qword_1EC195A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A58);
  }

  return result;
}

unint64_t sub_1C5A9FE70()
{
  result = qword_1EC195A60;
  if (!qword_1EC195A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A60);
  }

  return result;
}

unint64_t sub_1C5A9FEC8()
{
  result = qword_1EC195A68;
  if (!qword_1EC195A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A68);
  }

  return result;
}

unint64_t sub_1C5A9FF20()
{
  result = qword_1EC195A70;
  if (!qword_1EC195A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A70);
  }

  return result;
}

unint64_t sub_1C5A9FF78()
{
  result = qword_1EC195A78;
  if (!qword_1EC195A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A78);
  }

  return result;
}

unint64_t sub_1C5A9FFD0()
{
  result = qword_1EC195A80;
  if (!qword_1EC195A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A80);
  }

  return result;
}

uint64_t sub_1C5AA002C(uint64_t a1)
{
  result = sub_1C5BC7BB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5AA0140(uint64_t a1, __n128 a2)
{
  result = sub_1C5BC7AC4();
  if (v3 <= 0x3F)
  {
    result = sub_1C5BC7BB4();
    if (v4 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1C5AA027C(uint64_t a1, __n128 a2)
{
  sub_1C5BC7AC4();
  if (v2 <= 0x3F)
  {
    sub_1C5AA0514(319, &qword_1EC193090, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1C5BC7BB4();
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C5AA0414(uint64_t a1)
{
  sub_1C5AA0514(319, qword_1EC195C80, MEMORY[0x1E697F610], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C5AA0514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5AA0578(uint64_t a1)
{
  sub_1C5AA0514(319, &qword_1EC195D08, type metadata accessor for ScrubberViewModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1C5AA0CD4(319);
    if (v2 <= 0x3F)
    {
      sub_1C5AA0514(319, &qword_1EDA46750, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C5933874(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C5933874(319, &qword_1EC195D20, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C5933874(319, &qword_1EC195D28, &type metadata for ScrubberSection, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5AA0758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1C5BC90F4() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v11 + 8;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v16 = ((v15 + ((((v7 + ((v13 + 32) & ~v14) + 80) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(v8 + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_30:
      if ((v9 & 0x80000000) != 0)
      {
        v25 = *(v8 + 48);

        return v25((v15 + ((((v7 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + 24) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_1C5AA09D0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1C5BC90F4() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8 | 7;
  v16 = ((v13 + 8 + ((((v9 + (((v12 & 0xF8) + 32) & ~v15) + 80) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_48:
              if (v17 == 2)
              {
                *(a1 + v16) = v19;
              }

              else
              {
                *(a1 + v16) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v22;
        *(a1 + 2) = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v17)
    {
      *(a1 + v16) = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v16) = 0;
  }

  else if (v17)
  {
    *(a1 + v16) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v11 & 0x80000000) != 0)
  {
    v23 = *(v10 + 56);

    v23((v13 + 8 + ((((v9 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15) + 24) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

void sub_1C5AA0CD4(uint64_t a1)
{
  if (!qword_1EC195D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195D18, qword_1C5BE1D18);
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC195D10);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScrubContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrubContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C5AA0E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5AA0E40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5AA0E88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C5AA0EE8(uint64_t a1)
{
  result = sub_1C5BC7BB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5AA0FA0(uint64_t a1, int a2)
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

uint64_t sub_1C5AA0FE8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ScrubberLoadingConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrubberLoadingConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C5AA1118(uint64_t a1)
{
  result = sub_1C5BC7BB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySbGGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1C5BC8AB4();
  sub_1C5924F54(a4, a2, a3, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for ScrubberInteractionViewModel.TooltipSessionKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrubberInteractionViewModel.TooltipSessionKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C5AA12C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5AA12DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C5AA131C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C5AA1364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}