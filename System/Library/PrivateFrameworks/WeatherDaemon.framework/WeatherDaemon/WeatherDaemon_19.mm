void sub_1B61D3C90(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v76 = a4;
  v73 = a2;
  v74 = a3;
  v72 = a1;
  v64 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v71 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  swift_allocObject();
  v77 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  swift_allocObject();
  v71 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  swift_allocObject();

  v70 = sub_1B6220D74();
  v78 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = v72;
  v79 = v73;
  sub_1B6220D94();
  v73 = v39;

  sub_1B62206D4();
  type metadata accessor for TideEvents(0);
  sub_1B60715EC(&qword_1EB927BD8, type metadata accessor for TideEvents, &protocol conformance descriptor for TideEvents);
  sub_1B60715EC(&qword_1EB927BE0, type metadata accessor for TideEvents, &protocol conformance descriptor for TideEvents);
  v48 = v75;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v66 = v44;
  if (v48)
  {
    v51 = v76;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v75 = v43;
    v78 = *&v49;
    v79 = v50;
    sub_1B6220D94();

    v53 = sub_1B621D8F4();
    v54 = *(v53 - 8);
    v55 = v65;
    v56 = v76;
    (*(v54 + 16))(v65, v76, v53);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v53);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAAF020, type metadata accessor for TideEvents, &protocol conformance descriptor for TideEvents);
      *&v57 = COERCE_DOUBLE(sub_1B621D2E4());
      v59 = v58;

      v78 = *&v57;
      v79 = v59;
      v60 = v70;
      sub_1B6220D94();
      (*(v54 + 8))(v56, v53);
      sub_1B620B850();
    }

    else
    {
      (*(v54 + 8))(v56, v53);
      sub_1B620B850();
      v60 = v70;
    }

    v61 = v64;
    v62 = v75;
    *v64 = v77;
    v61[1] = v62;
    v63 = v71;
    v61[2] = v73;
    v61[3] = v63;
    v61[4] = v66;
    v61[5] = v46;
    v61[6] = v60;
  }
}

void sub_1B61D4724(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v76 = a4;
  v73 = a2;
  v74 = a3;
  v72 = a1;
  v64 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v71 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  swift_allocObject();
  v77 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  swift_allocObject();
  v71 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  swift_allocObject();

  v70 = sub_1B6220D74();
  v78 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = v72;
  v79 = v73;
  sub_1B6220D94();
  v73 = v39;

  sub_1B62206D4();
  type metadata accessor for WeatherAlerts(0);
  sub_1B60715EC(&qword_1EDAAFB10, type metadata accessor for WeatherAlerts, &protocol conformance descriptor for WeatherAlerts);
  sub_1B60715EC(&qword_1EDAAFB08, type metadata accessor for WeatherAlerts, &protocol conformance descriptor for WeatherAlerts);
  v48 = v75;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v66 = v44;
  if (v48)
  {
    v51 = v76;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v75 = v43;
    v78 = *&v49;
    v79 = v50;
    sub_1B6220D94();

    v53 = sub_1B621D8F4();
    v54 = *(v53 - 8);
    v55 = v65;
    v56 = v76;
    (*(v54 + 16))(v65, v76, v53);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v53);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAAFB00, type metadata accessor for WeatherAlerts, &protocol conformance descriptor for WeatherAlerts);
      *&v57 = COERCE_DOUBLE(sub_1B621D2E4());
      v59 = v58;

      v78 = *&v57;
      v79 = v59;
      v60 = v70;
      sub_1B6220D94();
      (*(v54 + 8))(v56, v53);
      sub_1B620B850();
    }

    else
    {
      (*(v54 + 8))(v56, v53);
      sub_1B620B850();
      v60 = v70;
    }

    v61 = v64;
    v62 = v75;
    *v64 = v77;
    v61[1] = v62;
    v63 = v71;
    v61[2] = v73;
    v61[3] = v63;
    v61[4] = v66;
    v61[5] = v46;
    v61[6] = v60;
  }
}

void sub_1B61D51B8(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v76 = a4;
  v73 = a2;
  v74 = a3;
  v72 = a1;
  v64 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v71 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  swift_allocObject();
  v77 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  swift_allocObject();
  v71 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  swift_allocObject();

  v70 = sub_1B6220D74();
  v78 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = v72;
  v79 = v73;
  sub_1B6220D94();
  v73 = v39;

  sub_1B62206D4();
  type metadata accessor for WeatherChange(0);
  sub_1B60715EC(&qword_1EDAB0330, type metadata accessor for WeatherChange, &protocol conformance descriptor for WeatherChange);
  sub_1B60715EC(&qword_1EDAB0328, type metadata accessor for WeatherChange, &protocol conformance descriptor for WeatherChange);
  v48 = v75;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v66 = v44;
  if (v48)
  {
    v51 = v76;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v75 = v43;
    v78 = *&v49;
    v79 = v50;
    sub_1B6220D94();

    v53 = sub_1B621D8F4();
    v54 = *(v53 - 8);
    v55 = v65;
    v56 = v76;
    (*(v54 + 16))(v65, v76, v53);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v53);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB0320, type metadata accessor for WeatherChange, &protocol conformance descriptor for WeatherChange);
      *&v57 = COERCE_DOUBLE(sub_1B621D2E4());
      v59 = v58;

      v78 = *&v57;
      v79 = v59;
      v60 = v70;
      sub_1B6220D94();
      (*(v54 + 8))(v56, v53);
      sub_1B620B850();
    }

    else
    {
      (*(v54 + 8))(v56, v53);
      sub_1B620B850();
      v60 = v70;
    }

    v61 = v64;
    v62 = v75;
    *v64 = v77;
    v61[1] = v62;
    v63 = v71;
    v61[2] = v73;
    v61[3] = v63;
    v61[4] = v66;
    v61[5] = v46;
    v61[6] = v60;
  }
}

void sub_1B61D5C4C(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v76 = a4;
  v73 = a2;
  v74 = a3;
  v72 = a1;
  v64 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v71 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  swift_allocObject();
  v77 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  swift_allocObject();
  v71 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  swift_allocObject();

  v70 = sub_1B6220D74();
  v78 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = v72;
  v79 = v73;
  sub_1B6220D94();
  v73 = v39;

  sub_1B62206D4();
  type metadata accessor for WeatherComparisons(0);
  sub_1B60715EC(&qword_1EDAAF418, type metadata accessor for WeatherComparisons, &protocol conformance descriptor for WeatherComparisons);
  sub_1B60715EC(&qword_1EDAAF410, type metadata accessor for WeatherComparisons, &protocol conformance descriptor for WeatherComparisons);
  v48 = v75;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v66 = v44;
  if (v48)
  {
    v51 = v76;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v75 = v43;
    v78 = *&v49;
    v79 = v50;
    sub_1B6220D94();

    v53 = sub_1B621D8F4();
    v54 = *(v53 - 8);
    v55 = v65;
    v56 = v76;
    (*(v54 + 16))(v65, v76, v53);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v53);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAAFB58, type metadata accessor for WeatherComparisons, &protocol conformance descriptor for WeatherComparisons);
      *&v57 = COERCE_DOUBLE(sub_1B621D2E4());
      v59 = v58;

      v78 = *&v57;
      v79 = v59;
      v60 = v70;
      sub_1B6220D94();
      (*(v54 + 8))(v56, v53);
      sub_1B620B850();
    }

    else
    {
      (*(v54 + 8))(v56, v53);
      sub_1B620B850();
      v60 = v70;
    }

    v61 = v64;
    v62 = v75;
    *v64 = v77;
    v61[1] = v62;
    v63 = v71;
    v61[2] = v73;
    v61[3] = v63;
    v61[4] = v66;
    v61[5] = v46;
    v61[6] = v60;
  }
}

void sub_1B61D66E0(double a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v75 = a4;
  v72 = a1;
  v73 = a2;
  v65 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v69 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v67 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v64 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v64 - v35;
  v79 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  swift_allocObject();
  v76 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v37);
  swift_allocObject();

  v38 = sub_1B6220D74();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  swift_allocObject();

  v40 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v41 = *MEMORY[0x1E69D61F8];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  v43 = *(*(v42 - 8) + 104);
  v43(v25, v41, v42);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v42);
  static WeatherClock.date.getter();
  v43(v22, v41, v42);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  swift_allocObject();
  v44 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v42);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v42);
  swift_allocObject();
  v67 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  swift_allocObject();

  v48 = sub_1B6220D74();
  v77 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v78) = 0;
  sub_1B6220D94();

  v77 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v78) = 0;
  sub_1B6220D94();
  v71 = v38;

  v77 = v72;
  v78 = v73;
  sub_1B6220D94();
  v73 = v40;

  sub_1B62206D4();
  sub_1B620D2D8();
  sub_1B620D32C();
  v49 = v74;
  *&v50 = COERCE_DOUBLE(sub_1B62206C4());
  if (v49)
  {

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v75, v52);
  }

  else
  {
    v74 = v44;
    v77 = *&v50;
    v78 = v51;
    sub_1B6220D94();

    v53 = sub_1B621D8F4();
    v54 = *(v53 - 8);
    v55 = v66;
    v56 = v75;
    (*(v54 + 16))(v66, v75, v53);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v53);
    v57 = v67;
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60AEF3C();
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;
      v72 = v79;

      v77 = *&v58;
      v78 = v60;
      sub_1B6220D94();
      (*(v54 + 8))(v75, v53);
    }

    else
    {
      (*(v54 + 8))(v56, v53);
    }

    v61 = v65;
    v62 = v71;
    *v65 = v76;
    v61[1] = v62;
    v63 = v74;
    v61[2] = v73;
    v61[3] = v63;
    v61[4] = v57;
    v61[5] = v46;
    v61[6] = v48;
  }
}

void sub_1B61D70BC()
{
  OUTLINED_FUNCTION_85_1();
  v124 = v0;
  v125 = v4;
  v122 = v5;
  v123 = v6;
  OUTLINED_FUNCTION_58();
  v116 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v116 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v121 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40_0();
  v120 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  v17 = OUTLINED_FUNCTION_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_3();
  v119 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40_8(v20, v21, v22, v23, v24, v25, v26, v27, v116);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v29 = OUTLINED_FUNCTION_0(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_10();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_75_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v35 = OUTLINED_FUNCTION_0(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_3();
  v118 = v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_126_1();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  v39 = OUTLINED_FUNCTION_0(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_24_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  OUTLINED_FUNCTION_249();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_20_19();
  v126 = sub_1B6220D74();
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  swift_allocObject();
  OUTLINED_FUNCTION_222();

  OUTLINED_FUNCTION_20_19();
  v58 = sub_1B6220D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  v62 = v118;
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_176_0();

  OUTLINED_FUNCTION_20_19();
  sub_1B6220D74();
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherClock();
  OUTLINED_FUNCTION_222();

  static WeatherClock.date.getter();
  v66 = *MEMORY[0x1E69D61F8];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_9();
  v69 = *(v68 + 104);
  v69(v1, v66, v67);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v67);
  static WeatherClock.date.getter();
  v69(v32, v66, v67);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v76 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v67);
  v80 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v67);
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v118 = sub_1B6220D74();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  v84 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v87 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v90 = sub_1B6220D74();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
  v95 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_467();

  OUTLINED_FUNCTION_7_34();
  v98 = sub_1B6220D74();
  OUTLINED_FUNCTION_6_35(v3 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_6_35(v2 * 1000.0);
  sub_1B6220D94();
  v121 = v58;

  v127 = v122;
  v128 = v123;
  sub_1B6220D94();

  sub_1B62206D4();
  sub_1B620D1DC();
  sub_1B620D230();
  v99 = v124;
  v100 = sub_1B62206C4();
  if (v99)
  {

    sub_1B621D8F4();
    OUTLINED_FUNCTION_31();
    (*(v102 + 8))(v125);
  }

  else
  {
    v124 = v76;
    v127 = v100;
    v128 = v101;
    sub_1B6220D94();

    v103 = sub_1B621D8F4();
    v104 = *(v103 - 8);
    v105 = v125;
    (*(v104 + 16))(v117, v125, v103);
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v103);
    v109 = v118;
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B620D284();
      v110 = sub_1B621D2E4();
      v112 = v111;

      v127 = v110;
      v128 = v112;
      sub_1B6220D94();
      (*(v104 + 8))(v125, v103);
    }

    else
    {
      (*(v104 + 8))(v105, v103);
    }

    v113 = v116;
    v114 = v121;
    *v116 = v126;
    v113[1] = v114;
    v115 = v124;
    v113[2] = v62;
    v113[3] = v115;
    v113[4] = v109;
    v113[5] = v90;
    v113[6] = v98;
  }

  OUTLINED_FUNCTION_84_3();
}

void sub_1B61D78A4()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_41_5(v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_52_5(v10, v95);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_8(v14, v15, v16, v17, v18, v19, v20, v21, v96);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  v23 = OUTLINED_FUNCTION_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_5(v25, v26, v27, v28, v29, v30, v31, v32, v97);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v34 = OUTLINED_FUNCTION_0(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_75_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v37 = OUTLINED_FUNCTION_0(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_78_3();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  v40 = OUTLINED_FUNCTION_0(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_61_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  OUTLINED_FUNCTION_11_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  OUTLINED_FUNCTION_249();
  v42 = swift_allocObject();
  v43 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0(v43, v44, v45);
  OUTLINED_FUNCTION_11_25();
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_48();

  v46 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0(v46, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_176_0();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v42);
  v52 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_135();

  v55 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_187_0(v55, v56, v57);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_48();

  static WeatherClock.date.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_9();
  v59 = *(v58 + 104);
  v60 = OUTLINED_FUNCTION_120_1();
  v59(v60);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  static WeatherClock.date.getter();
  v65 = OUTLINED_FUNCTION_119_1();
  v59(v65);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v70 = OUTLINED_FUNCTION_2_4();
  v73 = OUTLINED_FUNCTION_168_0(v70, v71, v72);
  OUTLINED_FUNCTION_19_19(v73);
  v74 = OUTLINED_FUNCTION_2_4();
  v77 = OUTLINED_FUNCTION_168_0(v74, v75, v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  OUTLINED_FUNCTION_26_14(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v79 = OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_224(v79, v80, v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  OUTLINED_FUNCTION_27_13(v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_7_34();
  sub_1B6220D74();
  OUTLINED_FUNCTION_6_35(v2 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_6_35(v1 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_223_0();
  sub_1B62206D4();
  v83 = OUTLINED_FUNCTION_8_18();
  type metadata accessor for HourlyWeatherStatistics(v83);
  v84 = sub_1B60715EC(&qword_1EB927C18, type metadata accessor for HourlyWeatherStatistics, &protocol conformance descriptor for HourlyWeatherStatistics);
  v85 = OUTLINED_FUNCTION_145_0(&qword_1EB927C20);
  OUTLINED_FUNCTION_70_3(v85);
  OUTLINED_FUNCTION_196_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_102_2(v86, v87);

    sub_1B621D8F4();
    OUTLINED_FUNCTION_73_4();
    v89 = OUTLINED_FUNCTION_22_12();
    v90(v89);
    OUTLINED_FUNCTION_47_4();
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EB927C28, type metadata accessor for HourlyWeatherStatistics, &protocol conformance descriptor for HourlyWeatherStatistics);
      OUTLINED_FUNCTION_100_2();
      sub_1B621D2E4();
      OUTLINED_FUNCTION_189_0();
      if (v84)
      {
        OUTLINED_FUNCTION_112_2();
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_139_0();
      v93 = OUTLINED_FUNCTION_46_6();
      v94(v93);
      OUTLINED_FUNCTION_35_7();
      sub_1B620B850();
    }

    else
    {
      v91 = OUTLINED_FUNCTION_46_6();
      v92(v91);
      OUTLINED_FUNCTION_35_7();
      sub_1B620B850();
    }

    OUTLINED_FUNCTION_16_24();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_195_0();
LABEL_3:

  sub_1B621D8F4();
  OUTLINED_FUNCTION_31();
  (*(v88 + 8))(v77);
  OUTLINED_FUNCTION_35_7();
  sub_1B620B850();

LABEL_10:
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_84_3();
}

void sub_1B61D7F48()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_41_5(v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_52_5(v10, v95);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_8(v14, v15, v16, v17, v18, v19, v20, v21, v96);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  v23 = OUTLINED_FUNCTION_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_5(v25, v26, v27, v28, v29, v30, v31, v32, v97);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v34 = OUTLINED_FUNCTION_0(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_75_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v37 = OUTLINED_FUNCTION_0(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_78_3();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  v40 = OUTLINED_FUNCTION_0(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_61_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  OUTLINED_FUNCTION_11_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  OUTLINED_FUNCTION_249();
  v42 = swift_allocObject();
  v43 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0(v43, v44, v45);
  OUTLINED_FUNCTION_11_25();
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_48();

  v46 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0(v46, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_176_0();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v42);
  v52 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_135();

  v55 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_187_0(v55, v56, v57);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_48();

  static WeatherClock.date.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_9();
  v59 = *(v58 + 104);
  v60 = OUTLINED_FUNCTION_120_1();
  v59(v60);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  static WeatherClock.date.getter();
  v65 = OUTLINED_FUNCTION_119_1();
  v59(v65);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v70 = OUTLINED_FUNCTION_2_4();
  v73 = OUTLINED_FUNCTION_168_0(v70, v71, v72);
  OUTLINED_FUNCTION_19_19(v73);
  v74 = OUTLINED_FUNCTION_2_4();
  v77 = OUTLINED_FUNCTION_168_0(v74, v75, v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  OUTLINED_FUNCTION_26_14(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v79 = OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_224(v79, v80, v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  OUTLINED_FUNCTION_27_13(v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_7_34();
  sub_1B6220D74();
  OUTLINED_FUNCTION_6_35(v2 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_6_35(v1 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_223_0();
  sub_1B62206D4();
  v83 = OUTLINED_FUNCTION_8_18();
  type metadata accessor for MonthlyWeatherStatistics(v83);
  v84 = sub_1B60715EC(&qword_1EB927C08, type metadata accessor for MonthlyWeatherStatistics, &protocol conformance descriptor for MonthlyWeatherStatistics);
  v85 = OUTLINED_FUNCTION_145_0(&qword_1EB927C10);
  OUTLINED_FUNCTION_70_3(v85);
  OUTLINED_FUNCTION_196_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_102_2(v86, v87);

    sub_1B621D8F4();
    OUTLINED_FUNCTION_73_4();
    v89 = OUTLINED_FUNCTION_22_12();
    v90(v89);
    OUTLINED_FUNCTION_47_4();
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EB927550, type metadata accessor for MonthlyWeatherStatistics, &protocol conformance descriptor for MonthlyWeatherStatistics);
      OUTLINED_FUNCTION_100_2();
      sub_1B621D2E4();
      OUTLINED_FUNCTION_189_0();
      if (v84)
      {
        OUTLINED_FUNCTION_112_2();
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_139_0();
      v93 = OUTLINED_FUNCTION_46_6();
      v94(v93);
      OUTLINED_FUNCTION_34_8();
      sub_1B620B850();
    }

    else
    {
      v91 = OUTLINED_FUNCTION_46_6();
      v92(v91);
      OUTLINED_FUNCTION_34_8();
      sub_1B620B850();
    }

    OUTLINED_FUNCTION_16_24();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_195_0();
LABEL_3:

  sub_1B621D8F4();
  OUTLINED_FUNCTION_31();
  (*(v88 + 8))(v77);
  OUTLINED_FUNCTION_34_8();
  sub_1B620B850();

LABEL_10:
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_84_3();
}

void sub_1B61D85EC()
{
  OUTLINED_FUNCTION_85_1();
  v119 = v5;
  OUTLINED_FUNCTION_58();
  v112 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_0(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_52_5(v9, v112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  v11 = OUTLINED_FUNCTION_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40_8(v13, v14, v15, v16, v17, v18, v19, v20, v113);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  v22 = OUTLINED_FUNCTION_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51_5(v24, v25, v26, v27, v28, v29, v30, v31, v114);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v33 = OUTLINED_FUNCTION_0(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_92();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_126_1();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v36 = OUTLINED_FUNCTION_0(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_78_3();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  v39 = OUTLINED_FUNCTION_0(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_61_1();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  v42 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  v45 = OUTLINED_FUNCTION_33_7();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v48 = OUTLINED_FUNCTION_20_19();
  v120 = OUTLINED_FUNCTION_156_0(v48, v49, v50);
  v51 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v41);
  v54 = OUTLINED_FUNCTION_33_7();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v41);
  swift_allocObject();

  v57 = OUTLINED_FUNCTION_20_19();
  v60 = OUTLINED_FUNCTION_156_0(v57, v58, v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
  v65 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_135();

  v68 = OUTLINED_FUNCTION_20_19();
  v71 = OUTLINED_FUNCTION_187_0(v68, v69, v70);
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v72 = *MEMORY[0x1E69D61F8];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_9();
  v75 = *(v74 + 104);
  v75(v2, v72, v73);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  static WeatherClock.date.getter();
  v75(v1, v72, v73);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v84 = sub_1B6220D74();
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v117 = sub_1B6220D74();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  v94 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
  v97 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v100 = sub_1B6220D74();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  v102 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v101);
  v105 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_222();

  v118 = sub_1B6220D74();
  OUTLINED_FUNCTION_171_0(v4 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_171_0(v3 * 1000.0);
  sub_1B6220D94();

  sub_1B6220D94();

  sub_1B62206D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927110, &qword_1B62265C0);
  sub_1B620DCD8(&qword_1EDAAEAD8);
  sub_1B620DCD8(&qword_1EDAAEAD0);
  sub_1B62206C4();
  if (v0)
  {

    sub_1B621D8F4();
    OUTLINED_FUNCTION_31();
    (*(v108 + 8))(v119);
  }

  else
  {
    sub_1B6220D94();

    sub_1B621D8F4();
    OUTLINED_FUNCTION_73_4();
    v110 = v109;
    (*(v109 + 16))(v116, v119, v84);
    OUTLINED_FUNCTION_47_4();
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B620DD4C();
      sub_1B621D2E4();

      v111 = v118;
      sub_1B6220D94();
      (*(v110 + 8))(v119, v84);
    }

    else
    {
      (*(v110 + 8))(v119, v84);

      v111 = v118;
    }

    *v115 = v120;
    v115[1] = v60;
    v115[2] = v71;
    v115[3] = v84;
    v115[4] = v117;
    v115[5] = v100;
    v115[6] = v111;
  }

  OUTLINED_FUNCTION_84_3();
}

void sub_1B61D8DFC()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_41_5(v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_52_5(v10, v95);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_8(v14, v15, v16, v17, v18, v19, v20, v21, v96);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  v23 = OUTLINED_FUNCTION_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_5(v25, v26, v27, v28, v29, v30, v31, v32, v97);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  v34 = OUTLINED_FUNCTION_0(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_75_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  v37 = OUTLINED_FUNCTION_0(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_78_3();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  v40 = OUTLINED_FUNCTION_0(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_61_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  OUTLINED_FUNCTION_11_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  OUTLINED_FUNCTION_249();
  v42 = swift_allocObject();
  v43 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0(v43, v44, v45);
  OUTLINED_FUNCTION_11_25();
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_48();

  v46 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0(v46, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  OUTLINED_FUNCTION_176_0();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v42);
  v52 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_135();

  v55 = OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_187_0(v55, v56, v57);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_48();

  static WeatherClock.date.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  OUTLINED_FUNCTION_9();
  v59 = *(v58 + 104);
  v60 = OUTLINED_FUNCTION_120_1();
  v59(v60);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  static WeatherClock.date.getter();
  v65 = OUTLINED_FUNCTION_119_1();
  v59(v65);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v70 = OUTLINED_FUNCTION_2_4();
  v73 = OUTLINED_FUNCTION_168_0(v70, v71, v72);
  OUTLINED_FUNCTION_19_19(v73);
  v74 = OUTLINED_FUNCTION_2_4();
  v77 = OUTLINED_FUNCTION_168_0(v74, v75, v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  OUTLINED_FUNCTION_26_14(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  v79 = OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_224(v79, v80, v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  OUTLINED_FUNCTION_27_13(v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_7_34();
  sub_1B6220D74();
  OUTLINED_FUNCTION_6_35(v2 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_6_35(v1 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_223_0();
  sub_1B62206D4();
  v83 = OUTLINED_FUNCTION_8_18();
  type metadata accessor for DailyWeatherStatistics(v83);
  v84 = sub_1B60715EC(&qword_1EB927C48, type metadata accessor for DailyWeatherStatistics, &protocol conformance descriptor for DailyWeatherStatistics);
  v85 = OUTLINED_FUNCTION_145_0(&qword_1EB927C50);
  OUTLINED_FUNCTION_70_3(v85);
  OUTLINED_FUNCTION_196_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_102_2(v86, v87);

    sub_1B621D8F4();
    OUTLINED_FUNCTION_73_4();
    v89 = OUTLINED_FUNCTION_22_12();
    v90(v89);
    OUTLINED_FUNCTION_47_4();
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EB927C58, type metadata accessor for DailyWeatherStatistics, &protocol conformance descriptor for DailyWeatherStatistics);
      OUTLINED_FUNCTION_100_2();
      sub_1B621D2E4();
      OUTLINED_FUNCTION_189_0();
      if (v84)
      {
        OUTLINED_FUNCTION_112_2();
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_139_0();
      v93 = OUTLINED_FUNCTION_46_6();
      v94(v93);
      OUTLINED_FUNCTION_31_8();
      sub_1B620B850();
    }

    else
    {
      v91 = OUTLINED_FUNCTION_46_6();
      v92(v91);
      OUTLINED_FUNCTION_31_8();
      sub_1B620B850();
    }

    OUTLINED_FUNCTION_16_24();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_195_0();
LABEL_3:

  sub_1B621D8F4();
  OUTLINED_FUNCTION_31();
  (*(v88 + 8))(v77);
  OUTLINED_FUNCTION_31_8();
  sub_1B620B850();

LABEL_10:
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_84_3();
}

uint64_t sub_1B61D94D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, __int16 a3@<W3>, void *a4@<X8>)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v83);
  v9 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77[-v17];
  v84 = sub_1B621D8F4();
  MEMORY[0x1EEE9AC00](v84);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77[-v20];
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  if ((a3 & 0xFF00) == 0x200)
  {
LABEL_11:

    return sub_1B61DD6D8(v24);
  }

  v82 = a4;
  if (a2)
  {
    if (a1)
    {
      v80 = v27;
      v81 = v26;
      v24 = sub_1B6071488();
      if (v24)
      {
        v29 = v15;
        sub_1B6220D84();
        if (qword_1EDAB3D80 != -1)
        {
          swift_once();
        }

        v30 = sub_1B6220B34();
        __swift_project_value_buffer(v30, qword_1EDAC2AB0);
        sub_1B603A944(v15, v12, &qword_1EB924600, &qword_1B6223420);
        v31 = sub_1B6220B14();
        v32 = sub_1B62217F4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v85 = v79;
          *v33 = 136446722;
          swift_beginAccess();
          v35 = qword_1EB925A18;
          v34 = qword_1EB925A20;
          sub_1B6220784();
          v36 = sub_1B602EEB0(v35, v34, &v85);

          *(v33 + 4) = v36;
          *(v33 + 12) = 2082;
          sub_1B603A944(v12, v9, &qword_1EB924600, &qword_1B6223420);
          v37 = sub_1B6221234();
          v39 = v38;
          sub_1B620E044(v12, &qword_1EB924600, &qword_1B6223420);
          v40 = sub_1B602EEB0(v37, v39, &v85);

          *(v33 + 14) = v40;
          *(v33 + 22) = 2082;
          type metadata accessor for WeatherClock();
          v41 = v81;
          static WeatherClock.date.getter();
          sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v42 = v84;
          v43 = sub_1B6221F04();
          v45 = v44;
          (*(v80 + 8))(v41, v42);
          v46 = sub_1B602EEB0(v43, v45, &v85);

          *(v33 + 24) = v46;
          _os_log_impl(&dword_1B6020000, v31, v32, "Data has expired, returning nil; model=%{public}s, expiration=%{public}s, now=%{public}s", v33, 0x20u);
          v47 = v79;
          swift_arrayDestroy();
          MEMORY[0x1B8C91C90](v47, -1, -1);
          MEMORY[0x1B8C91C90](v33, -1, -1);

          v48 = v29;
        }

        else
        {

          sub_1B620E044(v12, &qword_1EB924600, &qword_1B6223420);
          v48 = v15;
        }

        result = sub_1B620E044(v48, &qword_1EB924600, &qword_1B6223420);
        *v82 = 0;
        return result;
      }
    }

    goto LABEL_11;
  }

  v83 = v28;
  v49 = &v77[-v25];
  v50 = v27;
  v81 = v26;
  sub_1B6220D84();
  v51 = v84;
  if (__swift_getEnumTagSinglePayload(v18, 1, v84) == 1)
  {
    v52 = sub_1B620E044(v18, &qword_1EB924600, &qword_1B6223420);
    return sub_1B61DD6D8(v52);
  }

  else
  {
    (*(v50 + 32))(v49, v18, v51);
    v54 = type metadata accessor for WeatherClock();
    v55 = v81;
    v80 = v54;
    static WeatherClock.date.getter();
    sub_1B621D804();
    sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v56 = sub_1B6221184();
    v57 = *(v50 + 8);
    v57(v21, v51);
    v58 = (v57)(v55, v51);
    if (v56)
    {
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v59 = sub_1B6220B34();
      __swift_project_value_buffer(v59, qword_1EDAC2AB0);
      v60 = v83;
      (*(v50 + 16))(v83, v49, v51);
      v61 = sub_1B6220B14();
      v62 = sub_1B62217F4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v85 = v79;
        *v63 = 136446722;
        v78 = v62;
        swift_beginAccess();
        v65 = qword_1EB925A18;
        v64 = qword_1EB925A20;
        sub_1B6220784();
        v66 = sub_1B602EEB0(v65, v64, &v85);

        *(v63 + 4) = v66;
        *(v63 + 12) = 2082;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v67 = sub_1B6221F04();
        v69 = v68;
        v57(v60, v51);
        v70 = sub_1B602EEB0(v67, v69, &v85);

        *(v63 + 14) = v70;
        *(v63 + 22) = 2082;
        v71 = v81;
        static WeatherClock.date.getter();
        v72 = sub_1B6221F04();
        v74 = v73;
        v57(v71, v51);
        v75 = sub_1B602EEB0(v72, v74, &v85);

        *(v63 + 24) = v75;
        _os_log_impl(&dword_1B6020000, v61, v78, "Data exceeds maximum age, returning nil; model=%{public}s, modified=%{public}s, now=%{public}s", v63, 0x20u);
        v76 = v79;
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v76, -1, -1);
        MEMORY[0x1B8C91C90](v63, -1, -1);
      }

      else
      {

        v57(v60, v51);
      }

      result = (v57)(v49, v51);
      *v82 = 0;
    }

    else
    {
      sub_1B61DD6D8(v58);
      return (v57)(v49, v51);
    }
  }

  return result;
}

void sub_1B61D9DFC()
{
  OUTLINED_FUNCTION_116();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94[-v12];
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v16 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_61_1();
  v100 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_117_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94[-v20];
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_64_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_125_1();
  if ((v5 & 0xFF00) != 0x200)
  {
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_2;
      }

      v98 = v26;
      v99 = v25;
      if ((sub_1B6071488() & 1) == 0)
      {
        goto LABEL_2;
      }

      sub_1B6220D84();
      if (qword_1EDAB3D80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v29 = sub_1B6220B34();
      OUTLINED_FUNCTION_225(v29, qword_1EDAC2AB0);
      sub_1B603A944(v16, v13, &qword_1EB924600, &qword_1B6223420);
      v30 = sub_1B6220B14();
      sub_1B62217F4();
      OUTLINED_FUNCTION_194_0();
      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_8_2();
        swift_slowAlloc();
        v97 = OUTLINED_FUNCTION_152_0();
        v101 = v97;
        *v9 = 136446722;
        OUTLINED_FUNCTION_212();
        v33 = qword_1EB9251F0;
        v32 = off_1EB9251F8;
        sub_1B6220784();
        v34 = OUTLINED_FUNCTION_88_3();
        sub_1B602EEB0(v34, v32, v35);
        OUTLINED_FUNCTION_222();

        *(v9 + 4) = v33;
        v96 = v16;
        *(v9 + 12) = 2082;
        sub_1B603A944(v13, v2, &qword_1EB924600, &qword_1B6223420);
        sub_1B6221234();
        OUTLINED_FUNCTION_91_2();
        sub_1B620E044(v13, &qword_1EB924600, &qword_1B6223420);
        v36 = OUTLINED_FUNCTION_5_2();
        sub_1B602EEB0(v36, v37, v38);
        OUTLINED_FUNCTION_148_0();
        *(v9 + 14) = v32;
        *(v9 + 22) = 2082;
        type metadata accessor for WeatherClock();
        static WeatherClock.date.getter();
        OUTLINED_FUNCTION_1_71();
        sub_1B60715EC(v39, v40, MEMORY[0x1E6969570]);
        sub_1B6221F04();
        OUTLINED_FUNCTION_91_2();
        v41 = OUTLINED_FUNCTION_51_4();
        v42(v41);
        v43 = OUTLINED_FUNCTION_5_2();
        sub_1B602EEB0(v43, v44, v45);
        OUTLINED_FUNCTION_148_0();
        *(v9 + 24) = v32;
        _os_log_impl(&dword_1B6020000, v30, v3, "Data has expired, returning nil; model=%{public}s, expiration=%{public}s, now=%{public}s", v9, 0x20u);
        OUTLINED_FUNCTION_179_0(v46, v47, MEMORY[0x1E69E7CA0] + 8);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
        v48 = OUTLINED_FUNCTION_62_0();
        MEMORY[0x1B8C91C90](v48);

        v49 = v96;
        v50 = &qword_1EB924600;
        v51 = &qword_1B6223420;
      }

      else
      {

        OUTLINED_FUNCTION_42();
        sub_1B620E044(v91, v92, v93);
        OUTLINED_FUNCTION_42();
      }

      sub_1B620E044(v49, v50, v51);
    }

    else
    {
      v97 = v27;
      v98 = v24;
      v52 = v26;
      v99 = v25;
      sub_1B6220D84();
      v53 = v100;
      OUTLINED_FUNCTION_16_5(v1, 1, v100);
      if (v54)
      {
        v55 = sub_1B620E044(v1, &qword_1EB924600, &qword_1B6223420);
        sub_1B61DD950(v55);
      }

      else
      {
        v56 = v98;
        v52[4](v98, v1, v53);
        v57 = type metadata accessor for WeatherClock();
        v58 = v99;
        static WeatherClock.date.getter();
        sub_1B621D804();
        OUTLINED_FUNCTION_1_71();
        sub_1B60715EC(v59, v60, MEMORY[0x1E6969548]);
        OUTLINED_FUNCTION_175_0();
        v61 = sub_1B6221184();
        v62 = v52[1];
        v62(v21, v53);
        v63 = v62(v58, v53);
        if (v61)
        {
          v96 = v57;
          if (qword_1EDAB3D80 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          v64 = sub_1B6220B34();
          OUTLINED_FUNCTION_225(v64, qword_1EDAC2AB0);
          v66 = v97;
          v65 = v98;
          v67 = OUTLINED_FUNCTION_48_4();
          v68(v67);
          v69 = sub_1B6220B14();
          v70 = sub_1B62217F4();
          if (os_log_type_enabled(v69, v70))
          {
            OUTLINED_FUNCTION_8_2();
            v71 = swift_slowAlloc();
            v101 = OUTLINED_FUNCTION_715();
            *v71 = 136446722;
            OUTLINED_FUNCTION_212();
            v95 = v70;
            v73 = qword_1EB9251F0;
            v72 = off_1EB9251F8;
            sub_1B6220784();
            v74 = OUTLINED_FUNCTION_88_3();
            sub_1B602EEB0(v74, v72, v75);
            OUTLINED_FUNCTION_222();

            *(v71 + 4) = v73;
            *(v71 + 12) = 2082;
            OUTLINED_FUNCTION_1_71();
            v78 = sub_1B60715EC(v76, v77, MEMORY[0x1E6969570]);
            v79 = sub_1B6221F04();
            v81 = v80;
            v82 = OUTLINED_FUNCTION_161_0();
            (v62)(v82);
            v83 = OUTLINED_FUNCTION_88_3();
            sub_1B602EEB0(v83, v81, v84);
            OUTLINED_FUNCTION_248();

            *(v71 + 14) = v79;
            *(v71 + 22) = 2082;
            static WeatherClock.date.getter();
            OUTLINED_FUNCTION_48_4();
            sub_1B6221F04();
            OUTLINED_FUNCTION_91_2();
            v85 = OUTLINED_FUNCTION_113_2();
            (v62)(v85);
            v86 = OUTLINED_FUNCTION_5_2();
            sub_1B602EEB0(v86, v87, v88);
            OUTLINED_FUNCTION_148_0();
            *(v71 + 24) = v78;
            _os_log_impl(&dword_1B6020000, v69, v95, "Data exceeds maximum age, returning nil; model=%{public}s, modified=%{public}s, now=%{public}s", v71, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_4_0();
            MEMORY[0x1B8C91C90]();
            OUTLINED_FUNCTION_4_0();
            MEMORY[0x1B8C91C90]();

            v89 = v98;
            v90 = v66;
          }

          else
          {

            v62(v66, v53);
            v89 = v65;
            v90 = v53;
          }

          v62(v89, v90);
        }

        else
        {
          sub_1B61DD950(v63);
          v62(v56, v53);
        }
      }
    }

    OUTLINED_FUNCTION_117();
    return;
  }

LABEL_2:
  OUTLINED_FUNCTION_117();

  sub_1B61DD950(v28);
}

uint64_t sub_1B61DA580(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82[-v17];
  v88 = sub_1B621D8F4();
  MEMORY[0x1EEE9AC00](v88);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v82[-v20];
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  if ((a4 & 0xFF00) == 0x200)
  {
    return sub_1B61DDC14(v24);
  }

  if (a2)
  {
    if (a1)
    {
      v86 = v27;
      v87 = v26;
      v24 = sub_1B6071488();
      if (v24)
      {
        sub_1B6220D84();
        if (qword_1EDAB3D80 != -1)
        {
          swift_once();
        }

        v31 = sub_1B6220B34();
        __swift_project_value_buffer(v31, qword_1EDAC2AB0);
        sub_1B603A944(v15, v12, &qword_1EB924600, &qword_1B6223420);
        v32 = sub_1B6220B14();
        v33 = sub_1B62217F4();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v89 = v85;
          *v34 = 136446722;
          swift_beginAccess();
          v36 = *aMarinelocation_2;
          v35 = *&aMarinelocation_2[8];
          sub_1B6220784();
          v37 = sub_1B602EEB0(v36, v35, &v89);

          *(v34 + 4) = v37;
          v84 = v15;
          *(v34 + 12) = 2082;
          sub_1B603A944(v12, v9, &qword_1EB924600, &qword_1B6223420);
          v38 = sub_1B6221234();
          v40 = v39;
          sub_1B620E044(v12, &qword_1EB924600, &qword_1B6223420);
          v41 = sub_1B602EEB0(v38, v40, &v89);

          *(v34 + 14) = v41;
          *(v34 + 22) = 2082;
          type metadata accessor for WeatherClock();
          v42 = v87;
          static WeatherClock.date.getter();
          sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v43 = v88;
          v44 = sub_1B6221F04();
          v46 = v45;
          v86[1](v42, v43);
          v47 = sub_1B602EEB0(v44, v46, &v89);

          *(v34 + 24) = v47;
          _os_log_impl(&dword_1B6020000, v32, v33, "Data has expired, returning nil; model=%{public}s, expiration=%{public}s, now=%{public}s", v34, 0x20u);
          v48 = v85;
          swift_arrayDestroy();
          MEMORY[0x1B8C91C90](v48, -1, -1);
          MEMORY[0x1B8C91C90](v34, -1, -1);

          v49 = v84;
        }

        else
        {

          sub_1B620E044(v12, &qword_1EB924600, &qword_1B6223420);
          v49 = v15;
        }

        sub_1B620E044(v49, &qword_1EB924600, &qword_1B6223420);
        return 0;
      }
    }
  }

  else
  {
    v85 = v28;
    v86 = &v82[-v25];
    v50 = v27;
    v87 = v26;
    sub_1B6220D84();
    v51 = v88;
    if (__swift_getEnumTagSinglePayload(v18, 1, v88) != 1)
    {
      v52 = v86;
      (v50[4])(v86, v18, v51);
      v53 = type metadata accessor for WeatherClock();
      v54 = v87;
      static WeatherClock.date.getter();
      sub_1B621D804();
      sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v55 = sub_1B6221184();
      v56 = v50[1];
      v56(v21, v51);
      v57 = (v56)(v54, v51);
      if ((v55 & 1) == 0)
      {
        v29 = sub_1B61DDC14(v57);
        v56(v52, v51);
        return v29;
      }

      v84 = v53;
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v58 = sub_1B6220B34();
      __swift_project_value_buffer(v58, qword_1EDAC2AB0);
      v60 = v85;
      v59 = v86;
      (v50[2])(v85, v86, v51);
      v61 = sub_1B6220B14();
      v62 = sub_1B62217F4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v51;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v89 = v65;
        *v64 = 136446722;
        swift_beginAccess();
        v83 = v62;
        v67 = *aMarinelocation_2;
        v66 = *&aMarinelocation_2[8];
        sub_1B6220784();
        v68 = sub_1B602EEB0(v67, v66, &v89);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2082;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v69 = sub_1B6221F04();
        v71 = v70;
        v72 = v60;
        v73 = v63;
        v56(v72, v63);
        v74 = sub_1B602EEB0(v69, v71, &v89);

        *(v64 + 14) = v74;
        *(v64 + 22) = 2082;
        v75 = v87;
        static WeatherClock.date.getter();
        v76 = sub_1B6221F04();
        v78 = v77;
        v56(v75, v73);
        v79 = sub_1B602EEB0(v76, v78, &v89);

        *(v64 + 24) = v79;
        _os_log_impl(&dword_1B6020000, v61, v83, "Data exceeds maximum age, returning nil; model=%{public}s, modified=%{public}s, now=%{public}s", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v65, -1, -1);
        MEMORY[0x1B8C91C90](v64, -1, -1);

        v80 = v86;
        v81 = v73;
      }

      else
      {

        v56(v60, v51);
        v80 = v59;
        v81 = v51;
      }

      v56(v80, v81);
      return 0;
    }

    v24 = sub_1B620E044(v18, &qword_1EB924600, &qword_1B6223420);
  }

  return sub_1B61DDC14(v24);
}

void sub_1B61DAEC0()
{
  OUTLINED_FUNCTION_116();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v100[-v13];
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  v17 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100[-v19];
  v107 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_117_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100[-v23];
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_64_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_125_1();
  if ((v4 & 0xFF00) != 0x200)
  {
    v105 = v10;
    if ((v6 & 1) == 0)
    {
      v104 = v30;
      v54 = v27;
      v55 = v29;
      v106 = v28;
      sub_1B6220D84();
      v56 = v107;
      OUTLINED_FUNCTION_16_5(v20, 1, v107);
      if (v57)
      {
        sub_1B620E044(v20, &qword_1EB924600, &qword_1B6223420);
        sub_1B61DE1E4(v105);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_124_1();
        v61(v60, v20, v56);
        v62 = type metadata accessor for WeatherClock();
        v63 = v106;
        v103 = v62;
        static WeatherClock.date.getter();
        sub_1B621D804();
        OUTLINED_FUNCTION_1_71();
        sub_1B60715EC(v64, v65, MEMORY[0x1E6969548]);
        OUTLINED_FUNCTION_169_0();
        v66 = sub_1B6221184();
        v67 = *(v55 + 8);
        (v67)(v24, v56);
        (v67)(v63, v56);
        if (v66)
        {
          if (qword_1EDAB3D80 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          v68 = sub_1B6220B34();
          OUTLINED_FUNCTION_225(v68, qword_1EDAC2AB0);
          v70 = *(v55 + 16);
          v69 = v55 + 16;
          v71 = v104;
          v70(v104, v54, v56);
          v72 = sub_1B6220B14();
          v73 = sub_1B62217F4();
          if (os_log_type_enabled(v72, v73))
          {
            OUTLINED_FUNCTION_8_2();
            swift_slowAlloc();
            v102 = OUTLINED_FUNCTION_152_0();
            v108 = v102;
            *v69 = 136446722;
            v101 = v73;
            v74 = off_1EB925D48;
            sub_1B6220784();
            v75 = OUTLINED_FUNCTION_88_3();
            sub_1B602EEB0(v75, v74, v76);
            OUTLINED_FUNCTION_104();

            OUTLINED_FUNCTION_159_0();
            OUTLINED_FUNCTION_1_71();
            sub_1B60715EC(v77, v78, MEMORY[0x1E6969570]);
            sub_1B6221F04();
            v80 = v79;
            v81 = OUTLINED_FUNCTION_100_2();
            v67(v81);
            v82 = OUTLINED_FUNCTION_88_3();
            sub_1B602EEB0(v82, v80, v83);
            OUTLINED_FUNCTION_467();

            OUTLINED_FUNCTION_162_0();
            v84 = v106;
            static WeatherClock.date.getter();
            sub_1B6221F04();
            OUTLINED_FUNCTION_91_2();
            (v67)(v84, v56);
            v85 = OUTLINED_FUNCTION_5_2();
            sub_1B602EEB0(v85, v86, v87);
            OUTLINED_FUNCTION_148_0();
            *(v69 + 24) = v71;
            _os_log_impl(&dword_1B6020000, v72, v101, "Data exceeds maximum age, returning nil; model=%{public}s, modified=%{public}s, now=%{public}s", v69, 0x20u);
            OUTLINED_FUNCTION_179_0(v88, v89, MEMORY[0x1E69E7CA0] + 8);
            OUTLINED_FUNCTION_4_0();
            MEMORY[0x1B8C91C90]();
            v90 = OUTLINED_FUNCTION_62_0();
            MEMORY[0x1B8C91C90](v90);
          }

          else
          {

            v95 = OUTLINED_FUNCTION_100_2();
            v67(v95);
          }

          (v67)(v54, v56);
          type metadata accessor for HourlyWeatherStatistics(0);
          goto LABEL_25;
        }

        sub_1B61DE1E4(v105);
        v91 = OUTLINED_FUNCTION_100_2();
        v67(v91);
      }

LABEL_26:
      OUTLINED_FUNCTION_117();
      return;
    }

    if (v8)
    {
      v104 = v29;
      v31 = v28;
      if (sub_1B6071488())
      {
        sub_1B6220D84();
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v32 = sub_1B6220B34();
        OUTLINED_FUNCTION_225(v32, qword_1EDAC2AB0);
        sub_1B603A944(v17, v14, &qword_1EB924600, &qword_1B6223420);
        v33 = sub_1B6220B14();
        sub_1B62217F4();
        OUTLINED_FUNCTION_194_0();
        if (os_log_type_enabled(v33, v34))
        {
          OUTLINED_FUNCTION_8_2();
          v35 = swift_slowAlloc();
          v103 = OUTLINED_FUNCTION_715();
          v108 = v103;
          *v35 = 136446722;
          v36 = qword_1EB925D40;
          v37 = off_1EB925D48;
          sub_1B6220784();
          v38 = OUTLINED_FUNCTION_88_3();
          sub_1B602EEB0(v38, v37, v39);
          OUTLINED_FUNCTION_104();

          *(v35 + 4) = v36;
          *(v35 + 12) = 2082;
          sub_1B603A944(v14, v0, &qword_1EB924600, &qword_1B6223420);
          sub_1B6221234();
          OUTLINED_FUNCTION_91_2();
          sub_1B620E044(v14, &qword_1EB924600, &qword_1B6223420);
          v40 = OUTLINED_FUNCTION_5_2();
          sub_1B602EEB0(v40, v41, v42);
          OUTLINED_FUNCTION_148_0();
          *(v35 + 14) = v0;
          *(v35 + 22) = 2082;
          type metadata accessor for WeatherClock();
          static WeatherClock.date.getter();
          OUTLINED_FUNCTION_1_71();
          sub_1B60715EC(v43, v44, MEMORY[0x1E6969570]);
          v45 = v107;
          sub_1B6221F04();
          OUTLINED_FUNCTION_91_2();
          (*(v104 + 8))(v31, v45);
          v46 = OUTLINED_FUNCTION_5_2();
          sub_1B602EEB0(v46, v47, v48);
          OUTLINED_FUNCTION_148_0();
          *(v35 + 24) = v0;
          _os_log_impl(&dword_1B6020000, v33, v2, "Data has expired, returning nil; model=%{public}s, expiration=%{public}s, now=%{public}s", v35, 0x20u);
          OUTLINED_FUNCTION_179_0(v49, v50, MEMORY[0x1E69E7CA0] + 8);
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();

          v51 = v17;
          v52 = &qword_1EB924600;
          v53 = &qword_1B6223420;
        }

        else
        {

          OUTLINED_FUNCTION_42();
          sub_1B620E044(v92, v93, v94);
          OUTLINED_FUNCTION_42();
        }

        sub_1B620E044(v51, v52, v53);
        type metadata accessor for HourlyWeatherStatistics(0);
LABEL_25:
        OUTLINED_FUNCTION_3_10();
        __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
        goto LABEL_26;
      }
    }
  }

  OUTLINED_FUNCTION_117();

  sub_1B61DE1E4(v58);
}

uint64_t sub_1B61DB688@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for DailySummary(0);
    sub_1B60715EC(&qword_1EB927C30, type metadata accessor for DailySummary, &protocol conformance descriptor for DailySummary);
    sub_1B60715EC(&qword_1EB927C38, type metadata accessor for DailySummary, &protocol conformance descriptor for DailySummary);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DB978@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for CurrentWeather(0);
    sub_1B60715EC(&qword_1EDAB2060, type metadata accessor for CurrentWeather, &protocol conformance descriptor for CurrentWeather);
    sub_1B60715EC(&qword_1EDAB2058, type metadata accessor for CurrentWeather, &protocol conformance descriptor for CurrentWeather);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DBC68@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for DailyForecast(0);
    sub_1B60715EC(&qword_1EDAB07A0, type metadata accessor for DailyForecast, &protocol conformance descriptor for DailyForecast);
    sub_1B60715EC(&qword_1EDAB0798, type metadata accessor for DailyForecast, &protocol conformance descriptor for DailyForecast);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DBF58@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for HourlyForecast(0);
    sub_1B60715EC(&qword_1EDAB0750, type metadata accessor for HourlyForecast, &protocol conformance descriptor for HourlyForecast);
    sub_1B60715EC(&qword_1EDAB0748, type metadata accessor for HourlyForecast, &protocol conformance descriptor for HourlyForecast);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DC248@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for PeriodicForecasts(0);
    sub_1B60715EC(&qword_1EB927BA8, type metadata accessor for PeriodicForecasts, &protocol conformance descriptor for PeriodicForecasts);
    sub_1B60715EC(&qword_1EB927BB0, type metadata accessor for PeriodicForecasts, &protocol conformance descriptor for PeriodicForecasts);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DC538@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for LocationInfo(0);
    sub_1B60715EC(&qword_1EDAAFAB8, type metadata accessor for LocationInfo, &protocol conformance descriptor for LocationInfo);
    sub_1B60715EC(&qword_1EDAAFAB0, type metadata accessor for LocationInfo, &protocol conformance descriptor for LocationInfo);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DC828@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for MarineForecast(0);
    sub_1B60715EC(&qword_1EB927BC8, type metadata accessor for MarineForecast, &protocol conformance descriptor for MarineForecast);
    sub_1B60715EC(&qword_1EB927BD0, type metadata accessor for MarineForecast, &protocol conformance descriptor for MarineForecast);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DCB18@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for News(0);
    sub_1B60715EC(&qword_1EDAAEC10, type metadata accessor for News, &protocol conformance descriptor for News);
    sub_1B60715EC(&qword_1EDAAEC08, type metadata accessor for News, &protocol conformance descriptor for News);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DCE08@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for TideEvents(0);
    sub_1B60715EC(&qword_1EB927BD8, type metadata accessor for TideEvents, &protocol conformance descriptor for TideEvents);
    sub_1B60715EC(&qword_1EB927BE0, type metadata accessor for TideEvents, &protocol conformance descriptor for TideEvents);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DD0F8@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for WeatherAlerts(0);
    sub_1B60715EC(&qword_1EDAAFB10, type metadata accessor for WeatherAlerts, &protocol conformance descriptor for WeatherAlerts);
    sub_1B60715EC(&qword_1EDAAFB08, type metadata accessor for WeatherAlerts, &protocol conformance descriptor for WeatherAlerts);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DD3E8@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for WeatherComparisons(0);
    sub_1B60715EC(&qword_1EDAAF418, type metadata accessor for WeatherComparisons, &protocol conformance descriptor for WeatherComparisons);
    sub_1B60715EC(&qword_1EDAAF410, type metadata accessor for WeatherComparisons, &protocol conformance descriptor for WeatherComparisons);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DD6D8(uint64_t a1)
{
  result = sub_1B6220D84();
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    sub_1B620D2D8();
    sub_1B620D32C();
    sub_1B62206A4();
    return sub_1B602FF58(v2, v3);
  }

  return result;
}

uint64_t sub_1B61DD950(uint64_t a1)
{
  result = sub_1B6220D84();
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927110, &qword_1B62265C0);
    sub_1B620DCD8(&qword_1EDAAEAD8);
    sub_1B620DCD8(&qword_1EDAAEAD0);
    sub_1B62206A4();
    sub_1B602FF58(v2, v3);
    return v4;
  }

  return result;
}

uint64_t sub_1B61DDC14(uint64_t a1)
{
  result = sub_1B6220D84();
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    type metadata accessor for CLLocationCoordinate2D(0);
    sub_1B60715EC(&qword_1EB927BB8, type metadata accessor for CLLocationCoordinate2D, &protocol conformance descriptor for CLLocationCoordinate2D);
    sub_1B60715EC(&qword_1EB927BC0, type metadata accessor for CLLocationCoordinate2D, &protocol conformance descriptor for CLLocationCoordinate2D);
    sub_1B62206A4();
    sub_1B602FF58(v2, v3);
    return v4;
  }

  return result;
}

uint64_t sub_1B61DDEF4@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for DailyWeatherStatistics(0);
    sub_1B60715EC(&qword_1EB927C48, type metadata accessor for DailyWeatherStatistics, &protocol conformance descriptor for DailyWeatherStatistics);
    sub_1B60715EC(&qword_1EB927C50, type metadata accessor for DailyWeatherStatistics, &protocol conformance descriptor for DailyWeatherStatistics);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DE1E4@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for HourlyWeatherStatistics(0);
    sub_1B60715EC(&qword_1EB927C18, type metadata accessor for HourlyWeatherStatistics, &protocol conformance descriptor for HourlyWeatherStatistics);
    sub_1B60715EC(&qword_1EB927C20, type metadata accessor for HourlyWeatherStatistics, &protocol conformance descriptor for HourlyWeatherStatistics);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

uint64_t sub_1B61DE4C0@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B6220D84();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v4 = type metadata accessor for MonthlyWeatherStatistics(0);
    sub_1B60715EC(&qword_1EB927C08, type metadata accessor for MonthlyWeatherStatistics, &protocol conformance descriptor for MonthlyWeatherStatistics);
    sub_1B60715EC(&qword_1EB927C10, type metadata accessor for MonthlyWeatherStatistics, &protocol conformance descriptor for MonthlyWeatherStatistics);
    sub_1B62206A4();
    sub_1B602FF58(v5, v6);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return result;
}

void sub_1B61DE7B0(uint64_t a1)
{
  v2 = 0;
  v7[2] = MEMORY[0x1B8C90940](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    ++v2;
    v6 = *(i - 1);
    v5 = *i;
    sub_1B6220784();
    sub_1B61052CC(v7, v6, v5);
  }

  __break(1u);
}

uint64_t sub_1B61DE870@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v89 = a7;
  v88 = a6;
  v76 = a5;
  v96 = a4;
  v86 = a3;
  v85 = a2;
  v98 = a1;
  v77 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v75 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  swift_allocObject();
  *&v97 = COERCE_DOUBLE(sub_1B6220D74());
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  swift_allocObject();

  v95 = sub_1B6220D74();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  swift_allocObject();

  v94 = sub_1B6220D74();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  v79 = v41;
  v78 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v41);
  v42 = v80;
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  swift_allocObject();

  v93 = sub_1B6220D74();

  sub_1B621D8E4();
  v43 = *MEMORY[0x1E69D61F8];
  v44 = *(*(v40 - 8) + 104);
  v44(v32, v43, v40);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v40);
  sub_1B621D8E4();
  v44(v29, v43, v40);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v40);
  swift_allocObject();
  v84 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v40);
  swift_allocObject();
  v91 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = v79;
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v79);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v47);
  swift_allocObject();

  v90 = sub_1B6220D74();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v48);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  swift_allocObject();
  v83 = sub_1B6220D74();
  v99 = round(a9 * 1000.0) / 1000.0;
  LOBYTE(v100) = 0;
  sub_1B6220D94();

  v99 = round(a10 * 1000.0) / 1000.0;
  LOBYTE(v100) = 0;
  sub_1B6220D94();

  v49 = sub_1B621D8F4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 16);
  v52 = v92;
  v51(v92, v98, v49);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v49);
  sub_1B6220D94();

  v99 = v85;
  v100 = v86;
  sub_1B6220D94();

  sub_1B62206D4();
  v53 = type metadata accessor for DayForecast(0);
  sub_1B60715EC(&qword_1EDAB0848, type metadata accessor for DayForecast, &protocol conformance descriptor for DayForecast);
  sub_1B60715EC(&qword_1EDAB0840, type metadata accessor for DayForecast, &protocol conformance descriptor for DayForecast);
  v54 = v87;
  *&v55 = COERCE_DOUBLE(sub_1B62206C4());
  if (v54)
  {
    v57 = v89;

    v58 = *(v50 + 8);
    v58(v57, v49);
    sub_1B620B850();
    v58(v98, v49);
    v99 = *&v97;
    v100 = v95;
    v101 = v94;
    v102 = v93;
    v103 = v84;
    v104 = v91;
    v105 = v46;
    v106 = v90;
    v107 = v83;
    return sub_1B620E044(&v99, &qword_1EB924C88, &unk_1B6226800);
  }

  else
  {
    v86 = v53;
    v99 = *&v55;
    v100 = v56;
    sub_1B6220D94();
    v87 = v46;

    v99 = v76;
    v100 = v88;
    v60 = v90;
    sub_1B6220D94();
    v61 = v92;
    v62 = v89;
    v51(v92, v89, v49);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v49);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB0838, type metadata accessor for DayForecast, &protocol conformance descriptor for DayForecast);
      *&v63 = COERCE_DOUBLE(sub_1B621D2E4());
      v64 = v77;
      v66 = *&v63;
      v68 = v67;

      v99 = v66;
      v100 = v68;
      v69 = v83;
      sub_1B6220D94();
      v70 = *(v50 + 8);
      v70(v62, v49);
      sub_1B620B850();
      result = (v70)(v98, v49);
      v60 = v90;
    }

    else
    {
      v65 = *(v50 + 8);
      v65(v62, v49);
      sub_1B620B850();
      result = (v65)(v98, v49);
      v64 = v77;
      v69 = v83;
    }

    v72 = v94;
    v71 = v95;
    *v64 = *&v97;
    *(v64 + 1) = v71;
    v73 = v93;
    *(v64 + 2) = v72;
    *(v64 + 3) = v73;
    v74 = v91;
    *(v64 + 4) = v84;
    *(v64 + 5) = v74;
    *(v64 + 6) = v87;
    *(v64 + 7) = v60;
    *(v64 + 8) = v69;
  }

  return result;
}

uint64_t sub_1B61DF508@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v89 = a7;
  v88 = a6;
  v76 = a5;
  v96 = a4;
  v86 = a3;
  v85 = a2;
  v98 = a1;
  v77 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078, &unk_1B622F4D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080, &qword_1B622DB70);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090, &unk_1B622F4E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088, &unk_1B6239E60);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8, &unk_1B6225780);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v75 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0, &unk_1B62352E0);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8, &qword_1B6225790);
  swift_allocObject();
  *&v97 = COERCE_DOUBLE(sub_1B6220D74());
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  swift_allocObject();

  v95 = sub_1B6220D74();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8, &unk_1B6235300);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0, &unk_1B622F4F0);
  swift_allocObject();

  v94 = sub_1B6220D74();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098, &unk_1B62352F0);
  v79 = v41;
  v78 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v41);
  v42 = v80;
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0, &unk_1B622F500);
  swift_allocObject();

  v93 = sub_1B6220D74();

  sub_1B621D8E4();
  v43 = *MEMORY[0x1E69D61F8];
  v44 = *(*(v40 - 8) + 104);
  v44(v32, v43, v40);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v40);
  sub_1B621D8E4();
  v44(v29, v43, v40);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v40);
  swift_allocObject();
  v84 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v40);
  swift_allocObject();
  v91 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8, &qword_1B622DB78);
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0, &unk_1B622F510);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = v79;
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v79);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v47);
  swift_allocObject();

  v90 = sub_1B6220D74();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8, &qword_1B622DB80);
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v48);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0, &qword_1B622F520);
  swift_allocObject();
  v83 = sub_1B6220D74();
  v99 = round(a9 * 1000.0) / 1000.0;
  LOBYTE(v100) = 0;
  sub_1B6220D94();

  v99 = round(a10 * 1000.0) / 1000.0;
  LOBYTE(v100) = 0;
  sub_1B6220D94();

  v49 = sub_1B621D8F4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 16);
  v52 = v92;
  v51(v92, v98, v49);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v49);
  sub_1B6220D94();

  v99 = v85;
  v100 = v86;
  sub_1B6220D94();

  sub_1B62206D4();
  v53 = type metadata accessor for HourForecast(0);
  sub_1B60715EC(&qword_1EDAB07E8, type metadata accessor for HourForecast, &protocol conformance descriptor for HourForecast);
  sub_1B60715EC(&qword_1EDAB07E0, type metadata accessor for HourForecast, &protocol conformance descriptor for HourForecast);
  v54 = v87;
  *&v55 = COERCE_DOUBLE(sub_1B62206C4());
  if (v54)
  {
    v57 = v89;

    v58 = *(v50 + 8);
    v58(v57, v49);
    sub_1B620B850();
    v58(v98, v49);
    v99 = *&v97;
    v100 = v95;
    v101 = v94;
    v102 = v93;
    v103 = v84;
    v104 = v91;
    v105 = v46;
    v106 = v90;
    v107 = v83;
    return sub_1B620E044(&v99, &qword_1EB924C70, &unk_1B62356E0);
  }

  else
  {
    v86 = v53;
    v99 = *&v55;
    v100 = v56;
    sub_1B6220D94();
    v87 = v46;

    v99 = v76;
    v100 = v88;
    v60 = v90;
    sub_1B6220D94();
    v61 = v92;
    v62 = v89;
    v51(v92, v89, v49);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v49);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB07D8, type metadata accessor for HourForecast, &protocol conformance descriptor for HourForecast);
      *&v63 = COERCE_DOUBLE(sub_1B621D2E4());
      v64 = v77;
      v66 = *&v63;
      v68 = v67;

      v99 = v66;
      v100 = v68;
      v69 = v83;
      sub_1B6220D94();
      v70 = *(v50 + 8);
      v70(v62, v49);
      sub_1B620B850();
      result = (v70)(v98, v49);
      v60 = v90;
    }

    else
    {
      v65 = *(v50 + 8);
      v65(v62, v49);
      sub_1B620B850();
      result = (v65)(v98, v49);
      v64 = v77;
      v69 = v83;
    }

    v72 = v94;
    v71 = v95;
    *v64 = *&v97;
    *(v64 + 1) = v71;
    v73 = v93;
    *(v64 + 2) = v72;
    *(v64 + 3) = v73;
    v74 = v91;
    *(v64 + 4) = v84;
    *(v64 + 5) = v74;
    *(v64 + 6) = v87;
    *(v64 + 7) = v60;
    *(v64 + 8) = v69;
  }

  return result;
}

void sub_1B61E01A0()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50, &unk_1B6226F30);
  OUTLINED_FUNCTION_0(v5);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_116_1();
  v7 = sub_1B6220BD4();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  sub_1B6220D44();
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = MEMORY[0x1E69D62D8];
  v18[0] = v4;
  v18[1] = v2;
  sub_1B6220784();
  OUTLINED_FUNCTION_192_0();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1B6220DD4();
  v14 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1B6220D14();

  sub_1B620E044(v0, &qword_1EB924B50, &unk_1B6226F30);
  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_13();
}

void sub_1B61E0330()
{
  OUTLINED_FUNCTION_12_0();
  v31 = v3;
  v32 = v4;
  v6 = v5;
  v30 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50, &unk_1B6226F30);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_116_1();
  v10 = sub_1B6220BD4();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_14();
  v29[1] = sub_1B6220D44();
  v18 = MEMORY[0x1E69E6158];
  v19 = MEMORY[0x1E69D62D8];
  v35 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69D62D8];
  v33 = v30;
  v34 = v6;
  sub_1B6220784();
  OUTLINED_FUNCTION_192_0();
  sub_1B6220CE4();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v35 = v18;
  v36 = v19;
  v33 = v31;
  v34 = v32;
  sub_1B6220784();
  OUTLINED_FUNCTION_192_0();
  sub_1B6220C94();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  sub_1B6220CC4();
  v20 = *(v12 + 8);
  v21 = v2;
  v22 = v10;
  v20(v21, v10);
  v20(v16, v10);
  *v0 = 0x73657269707865;
  v0[1] = 0xE700000000000000;
  v23 = *MEMORY[0x1E69D6220];
  v24 = sub_1B6220DD4();
  OUTLINED_FUNCTION_9();
  (*(v25 + 104))(v0, v23, v24);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
  sub_1B6220D24();

  sub_1B620E044(v0, &qword_1EB924B50, &unk_1B6226F30);
  v20(v1, v22);
  OUTLINED_FUNCTION_13();
}

void sub_1B61E05BC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v205 = a4;
  v187 = a5;
  v189 = type metadata accessor for WeatherRequestOptions(0);
  MEMORY[0x1EEE9AC00](v189);
  v185 = (&v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0, &unk_1B6226650);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v180 = &v166 - v10;
  v186 = type metadata accessor for MarineForecast(0);
  MEMORY[0x1EEE9AC00](v186);
  v181 = (&v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = sub_1B621D8F4();
  v182 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v174 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v176 = &v166 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v175 = &v166 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v178 = &v166 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v166 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v166 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v184 = &v166 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v183 = &v166 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v166 - v31;
  v33 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a3;
  v38 = a1;
  v39 = a1;
  v40 = a2;
  v41 = sub_1B61778A4(v37, v39, a2);
  v43 = v42;
  v44 = v190;
  sub_1B61E01A0();
  v190 = v44;
  if (v44)
  {

    return;
  }

  v171 = v33;
  v170 = v29;
  v166 = v38;
  v167 = v40;
  v172 = v36;
  v168 = v41;
  v173 = v43;
  v169 = v35;
  v45 = v188;
  v46 = v191;
  if (v191)
  {
    v48 = v196;
    v47 = v197;
    v50 = v194;
    v49 = v195;
    v52 = v192;
    v51 = v193;
    v198 = v191;
    v199 = v192;
    v200 = v193;
    v201 = v194;
    v202 = v195;
    v203 = v196;
    v204 = v197;

    v53 = v172 + SHIDWORD(v189[8].isa);
    sub_1B6070D34(*v53, *(v53 + 8), *(v53 + 16), *(v53 + 24) | ((*(v53 + 28) | (*(v53 + 30) << 16)) << 32), sub_1B61DC828, aMarineforecast_11, &aMarineforecast_11[8], type metadata accessor for MarineForecast, v166, v167, v168, v169, v170, v171);
    sub_1B60729F4(v46, v52, v51, v50, v49, v48, v47);
    return;
  }

  v54 = v189;
  v55 = v172;
  if ((*(v172 + SHIDWORD(v189[8].isa) + 24) & 0x100) == 0 && (*(v172 + SLODWORD(v189[8].isa)) & 2) == 0)
  {
    v56 = 0;
    v57 = v173;
    v58 = v170;
LABEL_10:
    v60 = v185;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v61 = sub_1B6220B34();
    __swift_project_value_buffer(v61, qword_1EDAC2AB0);
    sub_1B6036A80(v55, v60);
    sub_1B6220784();
    v62 = sub_1B6220B14();
    v63 = sub_1B62217F4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v191 = v65;
      *v64 = 136316163;
      *(v64 + 4) = sub_1B602EEB0(0x4620656E6972614DLL, 0xEF7473616365726FLL, &v191);
      *(v64 + 12) = 1024;
      *(v64 + 14) = v56;
      *(v64 + 18) = 1024;
      sub_1B603A944(v60 + SLODWORD(v54[6].isa), v58, &qword_1EB924F20, &unk_1B6226380);
      v66 = __swift_getEnumTagSinglePayload(v58, 1, v171) == 1;
      v67 = v58;
      v68 = !v66;
      sub_1B620E044(v67, &qword_1EB924F20, &unk_1B6226380);
      sub_1B620B850();
      *(v64 + 20) = v68;
      *(v64 + 24) = 2160;
      *(v64 + 26) = 1752392040;
      *(v64 + 34) = 2081;
      v69 = sub_1B602EEB0(v168, v57, &v191);

      *(v64 + 36) = v69;
      _os_log_impl(&dword_1B6020000, v62, v63, "Could not find a cached entry for %s. allowsFlexibleMarineTimeWindow=%{BOOL}d, hasRelativeRange=%{BOOL}d, identifier=%{private,mask.hash}s", v64, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v65, -1, -1);
      MEMORY[0x1B8C91C90](v64, -1, -1);
    }

    else
    {
      sub_1B620B850();
    }

    v73 = v186;
    v72 = v187;
    v74 = 1;
    goto LABEL_21;
  }

  sub_1B603A944(v172 + SLODWORD(v189[6].isa), v32, &qword_1EB924F20, &unk_1B6226380);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v171);
  v58 = v170;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B620E044(v32, &qword_1EB924F20, &unk_1B6226380);
    v56 = 1;
    v57 = v173;
    goto LABEL_10;
  }

  sub_1B605A29C(v32, v169);
  v191 = v166;
  v192 = v167;
  sub_1B6220784();
  MEMORY[0x1B8C90530](46, 0xE100000000000000);
  v70 = v190;
  sub_1B61E0330();
  if (v70)
  {

    sub_1B620B850();
    return;
  }

  v75 = v71;

  v76 = v55 + SHIDWORD(v54[2].isa);
  v77 = v183;
  v78 = v55;
  v79 = v184;
  sub_1B618AFA4(v183, v184, v76);
  v80 = v180;
  sub_1B61E3130(v75, v78, v77, v79, v180);

  v81 = v186;
  if (__swift_getEnumTagSinglePayload(v80, 1, v186) == 1)
  {
    v82 = v77;
    sub_1B620E044(v80, &qword_1EB924EB0, &unk_1B6226650);
    v83 = v45;
    v84 = v182;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v85 = sub_1B6220B34();
    __swift_project_value_buffer(v85, qword_1EDAC2AB0);
    v86 = *(v84 + 16);
    v87 = v177;
    v86(v177, v82, v83);
    v88 = v179;
    v86(v179, v79, v83);
    v89 = v173;
    sub_1B6220784();
    v90 = sub_1B6220B14();
    v91 = sub_1B62217E4();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      LODWORD(v190) = v91;
      v93 = v92;
      v205 = swift_slowAlloc();
      v191 = v205;
      *v93 = 136316163;
      *(v93 + 4) = sub_1B602EEB0(0x4620656E6972614DLL, 0xEF7473616365726FLL, &v191);
      *(v93 + 12) = 2080;
      sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v189 = v90;
      v94 = sub_1B6221F04();
      v95 = v83;
      v97 = v96;
      v98 = *(v84 + 8);
      v99 = v87;
      v100 = v95;
      v98(v99, v95);
      v101 = sub_1B602EEB0(v94, v97, &v191);

      *(v93 + 14) = v101;
      *(v93 + 22) = 2080;
      v102 = v179;
      v103 = sub_1B6221F04();
      v105 = v104;
      v98(v102, v100);
      v106 = sub_1B602EEB0(v103, v105, &v191);

      *(v93 + 24) = v106;
      *(v93 + 32) = 2160;
      *(v93 + 34) = 1752392040;
      *(v93 + 42) = 2081;
      v107 = sub_1B602EEB0(v168, v89, &v191);

      *(v93 + 44) = v107;
      v108 = v189;
      _os_log_impl(&dword_1B6020000, v189, v190, "Could not find any cached %s appropriate for the request hourly range. rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v93, 0x34u);
      v109 = v205;
      swift_arrayDestroy();
      v110 = v109;
      v111 = v186;
      MEMORY[0x1B8C91C90](v110, -1, -1);
      MEMORY[0x1B8C91C90](v93, -1, -1);

      sub_1B620B850();
      v98(v184, v100);
      v98(v183, v100);
    }

    else
    {

      v142 = *(v84 + 8);
      v142(v88, v83);
      v142(v87, v83);
      sub_1B620B850();
      v142(v79, v83);
      v142(v183, v83);
      v111 = v186;
    }

    v72 = v187;
    v74 = 1;
    v73 = v111;
  }

  else
  {
    v112 = v181;
    v113 = sub_1B605A29C(v80, v181);
    v114 = *v112;
    MEMORY[0x1EEE9AC00](v113);
    *(&v166 - 2) = v77;
    *(&v166 - 1) = v115;
    sub_1B6220784();
    sub_1B608E304(sub_1B60A0488, (&v166 - 4), v114, v116);
    v118 = v117;
    v190 = 0;

    *v112 = v118;
    v119 = v45;
    v120 = v182;
    if (*(v118 + 16))
    {
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v121 = sub_1B6220B34();
      __swift_project_value_buffer(v121, qword_1EDAC2AB0);
      v122 = *(v120 + 16);
      v122(v178, v77, v119);
      v123 = v175;
      v122(v175, v184, v119);
      sub_1B6220784();
      v124 = sub_1B6220B14();
      v125 = sub_1B62217F4();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v191 = v205;
        *v126 = 136316163;
        *(v126 + 4) = sub_1B602EEB0(0x4620656E6972614DLL, 0xEF7473616365726FLL, &v191);
        *(v126 + 12) = 2080;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        LODWORD(v189) = v125;
        v127 = v178;
        v128 = sub_1B6221F04();
        v129 = v119;
        v131 = v130;
        v185 = v124;
        v132 = *(v120 + 8);
        v133 = v129;
        v132(v127, v129);
        v134 = sub_1B602EEB0(v128, v131, &v191);

        *(v126 + 14) = v134;
        *(v126 + 22) = 2080;
        v135 = sub_1B6221F04();
        v137 = v136;
        v132(v123, v133);
        v138 = sub_1B602EEB0(v135, v137, &v191);

        *(v126 + 24) = v138;
        *(v126 + 32) = 2160;
        *(v126 + 34) = 1752392040;
        *(v126 + 42) = 2081;
        v139 = sub_1B602EEB0(v168, v173, &v191);

        *(v126 + 44) = v139;
        v140 = v185;
        _os_log_impl(&dword_1B6020000, v185, v189, "Found cached %s that partially matches the requested range. rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v126, 0x34u);
        v141 = v205;
        swift_arrayDestroy();
        v81 = v186;
        MEMORY[0x1B8C91C90](v141, -1, -1);
        MEMORY[0x1B8C91C90](v126, -1, -1);

        sub_1B620B850();
        v132(v184, v133);
        v132(v183, v133);
      }

      else
      {

        v163 = *(v120 + 8);
        v163(v123, v119);
        v163(v178, v119);
        sub_1B620B850();
        v163(v184, v119);
        v163(v77, v119);
      }

      v164 = v187;
      sub_1B605A29C(v181, v187);
      v72 = v164;
      v74 = 0;
    }

    else
    {
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v143 = sub_1B6220B34();
      __swift_project_value_buffer(v143, qword_1EDAC2AB0);
      v144 = *(v120 + 16);
      v144(v176, v77, v119);
      v145 = v174;
      v144(v174, v184, v119);
      sub_1B6220784();
      v146 = sub_1B6220B14();
      v147 = sub_1B62217E4();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v191 = v205;
        *v148 = 136316163;
        *(v148 + 4) = sub_1B602EEB0(0x4620656E6972614DLL, 0xEF7473616365726FLL, &v191);
        *(v148 + 12) = 2080;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        LODWORD(v189) = v147;
        v149 = v176;
        v150 = sub_1B6221F04();
        v185 = v146;
        v151 = v119;
        v153 = v152;
        v154 = *(v120 + 8);
        v154(v149, v151);
        v155 = sub_1B602EEB0(v150, v153, &v191);

        *(v148 + 14) = v155;
        *(v148 + 22) = 2080;
        v156 = sub_1B6221F04();
        v158 = v157;
        v154(v145, v151);
        v159 = sub_1B602EEB0(v156, v158, &v191);

        *(v148 + 24) = v159;
        *(v148 + 32) = 2160;
        *(v148 + 34) = 1752392040;
        *(v148 + 42) = 2081;
        v160 = sub_1B602EEB0(v168, v173, &v191);

        *(v148 + 44) = v160;
        v161 = v185;
        _os_log_impl(&dword_1B6020000, v185, v189, "Found cached %s that partially matches the requested range. But unexpectedly, none of its hours fit within the request range; rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v148, 0x34u);
        v162 = v205;
        swift_arrayDestroy();
        v81 = v186;
        MEMORY[0x1B8C91C90](v162, -1, -1);
        MEMORY[0x1B8C91C90](v148, -1, -1);

        sub_1B620B850();
        sub_1B620B850();
        v154(v184, v151);
        v154(v183, v151);
      }

      else
      {

        v165 = *(v120 + 8);
        v165(v145, v119);
        v165(v176, v119);
        sub_1B620B850();
        sub_1B620B850();
        v165(v184, v119);
        v165(v77, v119);
      }

      v72 = v187;
      v74 = 1;
    }

    v73 = v81;
  }

LABEL_21:
  __swift_storeEnumTagSinglePayload(v72, v74, 1, v73);
}

void sub_1B61E1B60(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v188 = a4;
  v185 = a5;
  v187 = type metadata accessor for WeatherRequestOptions(0);
  MEMORY[0x1EEE9AC00](v187);
  v183 = (&v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0, &unk_1B6226640);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v176 = &v164 - v10;
  v184 = type metadata accessor for TideEvents(0);
  MEMORY[0x1EEE9AC00](v184);
  v179 = (&v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = sub_1B621D8F4();
  v180 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v173 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v172 = &v164 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v175 = &v164 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v174 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v164 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v182 = &v164 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v164 - v31;
  v33 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v164 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a3;
  v38 = a1;
  v39 = a1;
  v40 = a2;
  v41 = sub_1B61778A4(v37, v39, a2);
  v43 = v42;
  v44 = v203;
  sub_1B61E01A0();
  v203 = v44;
  if (v44)
  {

    return;
  }

  v169 = v33;
  v168 = v29;
  v164 = v38;
  v165 = v40;
  v170 = v36;
  v166 = v41;
  v171 = v43;
  v167 = v35;
  v45 = v186;
  v46 = v189;
  if (v189)
  {
    v48 = v194;
    v47 = v195;
    v50 = v192;
    v49 = v193;
    v52 = v190;
    v51 = v191;
    v196 = v189;
    v197 = v190;
    v198 = v191;
    v199 = v192;
    v200 = v193;
    v201 = v194;
    v202 = v195;

    v53 = v170 + v187[17];
    sub_1B6070D34(*v53, *(v53 + 8), *(v53 + 16), *(v53 + 24) | ((*(v53 + 28) | (*(v53 + 30) << 16)) << 32), sub_1B61DCE08, aTideevents_7, &aTideevents_7[8], type metadata accessor for TideEvents, v164, v165, v166, v167, v168, v169);
    sub_1B60729F4(v46, v52, v51, v50, v49, v48, v47);
    return;
  }

  v54 = v187;
  v55 = v170;
  if ((*(v170 + v187[17] + 24) & 0x100) != 0 || (*(v170 + v187[16]) & 2) != 0)
  {
    sub_1B603A944(v170 + v187[12], v32, &qword_1EB924F20, &unk_1B6226380);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v169);
    v57 = v171;
    v58 = v168;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B620E044(v32, &qword_1EB924F20, &unk_1B6226380);
      v56 = 1;
      goto LABEL_10;
    }

    sub_1B605A29C(v32, v167);
    v189 = v164;
    v190 = v165;
    sub_1B6220784();
    MEMORY[0x1B8C90530](46, 0xE100000000000000);
    v71 = v203;
    sub_1B61E0330();
    v203 = v71;
    if (v71)
    {

      sub_1B620B850();
      return;
    }

    v73 = v72;

    v74 = v182;
    v75 = v181;
    sub_1B618AFA4(v182, v181, v55 + v54[5]);
    v76 = v176;
    sub_1B61E38B8(v73, v55, v74, v75, v176);

    v77 = v184;
    if (__swift_getEnumTagSinglePayload(v76, 1, v184) == 1)
    {
      sub_1B620E044(v76, &qword_1EB924EC0, &unk_1B6226640);
      v78 = v45;
      v79 = v180;
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v80 = sub_1B6220B34();
      __swift_project_value_buffer(v80, qword_1EDAC2AB0);
      v81 = *(v79 + 16);
      v81(v177, v74, v78);
      v81(v178, v75, v78);
      v82 = v171;
      sub_1B6220784();
      v83 = sub_1B6220B14();
      v84 = sub_1B62217E4();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        LODWORD(v187) = v84;
        v86 = v85;
        v188 = swift_slowAlloc();
        v189 = v188;
        *v86 = 136316163;
        *(v86 + 4) = sub_1B602EEB0(0x6576452065646954, 0xEB0000000073746ELL, &v189);
        *(v86 + 12) = 2080;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v183 = v83;
        v87 = v177;
        v88 = sub_1B6221F04();
        v89 = v78;
        v91 = v90;
        v92 = *(v79 + 8);
        v92(v87, v89);
        v93 = sub_1B602EEB0(v88, v91, &v189);

        *(v86 + 14) = v93;
        *(v86 + 22) = 2080;
        v94 = v178;
        v95 = sub_1B6221F04();
        v97 = v96;
        v92(v94, v89);
        v98 = sub_1B602EEB0(v95, v97, &v189);

        *(v86 + 24) = v98;
        *(v86 + 32) = 2160;
        *(v86 + 34) = 1752392040;
        *(v86 + 42) = 2081;
        v99 = sub_1B602EEB0(v166, v82, &v189);

        *(v86 + 44) = v99;
        v100 = v183;
        _os_log_impl(&dword_1B6020000, v183, v187, "Could not find any cached %s appropriate for the request hourly range. rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v86, 0x34u);
        v101 = v188;
        swift_arrayDestroy();
        v77 = v184;
        MEMORY[0x1B8C91C90](v101, -1, -1);
        MEMORY[0x1B8C91C90](v86, -1, -1);

        sub_1B620B850();
        v92(v181, v89);
        v92(v182, v89);
      }

      else
      {

        v136 = *(v79 + 8);
        v136(v178, v78);
        v136(v177, v78);
        sub_1B620B850();
        v136(v75, v78);
        v136(v74, v78);
      }
    }

    else
    {
      v102 = v179;
      v103 = sub_1B605A29C(v76, v179);
      MEMORY[0x1EEE9AC00](v103);
      *(&v164 - 2) = v74;
      *(&v164 - 1) = v75;
      sub_1B6220784();
      v104 = v203;
      sub_1B608E5A4();
      v106 = v105;

      v102[1] = v106;
      MEMORY[0x1EEE9AC00](v107);
      *(&v164 - 2) = v74;
      *(&v164 - 1) = v75;
      sub_1B6220784();
      sub_1B608E5F8();
      v109 = v108;
      v203 = v104;

      *v102 = v109;
      v110 = v45;
      v111 = v180;
      if (*(v106 + 16))
      {
        if (qword_1EDAB3D80 != -1)
        {
          swift_once();
        }

        v112 = sub_1B6220B34();
        __swift_project_value_buffer(v112, qword_1EDAC2AB0);
        v113 = *(v111 + 16);
        v114 = v174;
        v113(v174, v182, v110);
        v115 = v175;
        v113(v175, v181, v110);
        v116 = v171;
        sub_1B6220784();
        v117 = sub_1B6220B14();
        v118 = sub_1B62217F4();

        v119 = os_log_type_enabled(v117, v118);
        v77 = v184;
        if (v119)
        {
          v120 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          v189 = v188;
          *v120 = 136316163;
          *(v120 + 4) = sub_1B602EEB0(0x6576452065646954, 0xEB0000000073746ELL, &v189);
          *(v120 + 12) = 2080;
          sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          LODWORD(v187) = v118;
          v121 = sub_1B6221F04();
          v183 = v117;
          v122 = v110;
          v124 = v123;
          v125 = *(v111 + 8);
          v126 = v114;
          v127 = v122;
          v125(v126, v122);
          v128 = sub_1B602EEB0(v121, v124, &v189);

          *(v120 + 14) = v128;
          *(v120 + 22) = 2080;
          v129 = sub_1B6221F04();
          v131 = v130;
          v125(v115, v127);
          v132 = sub_1B602EEB0(v129, v131, &v189);

          *(v120 + 24) = v132;
          *(v120 + 32) = 2160;
          *(v120 + 34) = 1752392040;
          *(v120 + 42) = 2081;
          v133 = sub_1B602EEB0(v166, v116, &v189);

          *(v120 + 44) = v133;
          v134 = v183;
          _os_log_impl(&dword_1B6020000, v183, v187, "Found cached %s that partially matches the requested range. rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v120, 0x34u);
          v135 = v188;
          swift_arrayDestroy();
          v77 = v184;
          MEMORY[0x1B8C91C90](v135, -1, -1);
          MEMORY[0x1B8C91C90](v120, -1, -1);

          sub_1B620B850();
          v125(v181, v127);
          v125(v182, v127);
        }

        else
        {

          v159 = *(v111 + 8);
          v159(v115, v110);
          v159(v114, v110);
          sub_1B620B850();
          v159(v181, v110);
          v159(v182, v110);
        }

        v160 = v185;
        sub_1B605A29C(v179, v185);
        v161 = v160;
        v162 = 0;
        goto LABEL_40;
      }

      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v137 = sub_1B6220B34();
      __swift_project_value_buffer(v137, qword_1EDAC2AB0);
      v138 = *(v111 + 16);
      v139 = v172;
      v138(v172, v182, v110);
      v140 = v173;
      v138(v173, v181, v110);
      v141 = v171;
      sub_1B6220784();
      v142 = sub_1B6220B14();
      v143 = sub_1B62217E4();

      v144 = os_log_type_enabled(v142, v143);
      v77 = v184;
      if (v144)
      {
        v145 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v189 = v188;
        *v145 = 136316163;
        *(v145 + 4) = sub_1B602EEB0(0x6576452065646954, 0xEB0000000073746ELL, &v189);
        *(v145 + 12) = 2080;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        LODWORD(v187) = v143;
        v146 = sub_1B6221F04();
        v183 = v142;
        v147 = v110;
        v149 = v148;
        v150 = *(v111 + 8);
        v150(v139, v147);
        v151 = sub_1B602EEB0(v146, v149, &v189);

        *(v145 + 14) = v151;
        *(v145 + 22) = 2080;
        v152 = sub_1B6221F04();
        v154 = v153;
        v150(v140, v147);
        v155 = sub_1B602EEB0(v152, v154, &v189);

        *(v145 + 24) = v155;
        *(v145 + 32) = 2160;
        *(v145 + 34) = 1752392040;
        *(v145 + 42) = 2081;
        v156 = sub_1B602EEB0(v166, v141, &v189);

        *(v145 + 44) = v156;
        v157 = v183;
        _os_log_impl(&dword_1B6020000, v183, v187, "Found cached %s that partially matches the requested range. But unexpectedly, none of its hours fit within the request range; rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v145, 0x34u);
        v158 = v188;
        swift_arrayDestroy();
        v77 = v184;
        MEMORY[0x1B8C91C90](v158, -1, -1);
        MEMORY[0x1B8C91C90](v145, -1, -1);

        sub_1B620B850();
        sub_1B620B850();
        v150(v181, v147);
        v150(v182, v147);
      }

      else
      {

        v163 = *(v111 + 8);
        v163(v140, v110);
        v163(v139, v110);
        sub_1B620B850();
        sub_1B620B850();
        v163(v181, v110);
        v163(v182, v110);
      }
    }

    v161 = v185;
    v162 = 1;
LABEL_40:
    __swift_storeEnumTagSinglePayload(v161, v162, 1, v77);
    return;
  }

  v56 = 0;
  v57 = v171;
  v58 = v168;
LABEL_10:
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v60 = sub_1B6220B34();
  __swift_project_value_buffer(v60, qword_1EDAC2AB0);
  v61 = v55;
  v62 = v183;
  sub_1B6036A80(v61, v183);
  sub_1B6220784();
  v63 = sub_1B6220B14();
  v64 = sub_1B62217F4();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v189 = v66;
    *v65 = 136316163;
    *(v65 + 4) = sub_1B602EEB0(0x6576452065646954, 0xEB0000000073746ELL, &v189);
    *(v65 + 12) = 1024;
    *(v65 + 14) = v56;
    *(v65 + 18) = 1024;
    sub_1B603A944(v62 + v54[12], v58, &qword_1EB924F20, &unk_1B6226380);
    v67 = __swift_getEnumTagSinglePayload(v58, 1, v169) == 1;
    v68 = v58;
    v69 = !v67;
    sub_1B620E044(v68, &qword_1EB924F20, &unk_1B6226380);
    sub_1B620B850();
    *(v65 + 20) = v69;
    *(v65 + 24) = 2160;
    *(v65 + 26) = 1752392040;
    *(v65 + 34) = 2081;
    v70 = sub_1B602EEB0(v166, v57, &v189);

    *(v65 + 36) = v70;
    _os_log_impl(&dword_1B6020000, v63, v64, "Could not find a cached entry for %s. allowsFlexibleMarineTimeWindow=%{BOOL}d, hasRelativeRange=%{BOOL}d, identifier=%{private,mask.hash}s", v65, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v66, -1, -1);
    MEMORY[0x1B8C91C90](v65, -1, -1);
  }

  else
  {
    sub_1B620B850();
  }

  __swift_storeEnumTagSinglePayload(v185, 1, 1, v184);
}

double sub_1B61E3130@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v68 = a1;
  v69 = a3;
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D8, &qword_1B6239EF0);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for MarineForecast(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v64 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v57 - v25;
  v72 = a2;
  sub_1B60B3FBC();
  v71 = v69;
  sub_1B608E64C();
  v27 = v26;
  v69 = v21;
  __swift_storeEnumTagSinglePayload(a5, 1, 1, v21);
  v28 = *(v27 + 16);
  if (v28)
  {
    v60 = v12;
    v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v57 = v27;
    v30 = v27 + v29;
    v31 = *(v22 + 72);
    v65 = (v8 + 16);
    v66 = v31;
    v59 = (v8 + 32);
    v63 = (v8 + 8);
    v68 = a5;
    v58 = v17;
    while (1)
    {
      v32 = v70;
      sub_1B6036A80(v30, v70);
      v33 = *v32;
      v34 = *(*v32 + 16);
      if (v34)
      {
        v35 = v34 - 1;
        v36 = *(type metadata accessor for MarineHourForecast(0) - 8);
        v37 = v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35;
        a5 = v68;
        (*v65)(v20, v37, v7);
        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      __swift_storeEnumTagSinglePayload(v20, v38, 1, v7);
      if (__swift_getEnumTagSinglePayload(a5, 1, v69))
      {
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v7);
      }

      else
      {
        v39 = v64;
        sub_1B6036A80(a5, v64);
        v40 = *v39;
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = v41 - 1;
          v43 = *(type metadata accessor for MarineHourForecast(0) - 8);
          v44 = v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42;
          a5 = v68;
          (*v65)(v17, v44, v7);
          v45 = 0;
        }

        else
        {
          v45 = 1;
        }

        __swift_storeEnumTagSinglePayload(v17, v45, 1, v7);
        sub_1B620B850();
      }

      v46 = *(v67 + 48);
      sub_1B603D3DC(v20, v14, &qword_1EB924600, &qword_1B6223420);
      sub_1B603D3DC(v17, &v14[v46], &qword_1EB924600, &qword_1B6223420);
      if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
      {
        sub_1B620B850();
        if (__swift_getEnumTagSinglePayload(&v14[v46], 1, v7) != 1)
        {
          sub_1B620E044(&v14[v46], &qword_1EB924600, &qword_1B6223420);
        }

        goto LABEL_23;
      }

      if (__swift_getEnumTagSinglePayload(&v14[v46], 1, v7) != 1)
      {
        break;
      }

      sub_1B620E044(a5, &qword_1EB924EB0, &unk_1B6226650);
      sub_1B605A29C(v70, a5);
      __swift_storeEnumTagSinglePayload(a5, 0, 1, v69);
      (*v63)(v14, v7);
LABEL_23:
      v30 += v66;
      if (!--v28)
      {
        goto LABEL_24;
      }
    }

    v47 = v60;
    v48 = *v59;
    (*v59)(v60, v14, v7);
    v49 = &v14[v46];
    v50 = v61;
    v48(v61, v49, v7);
    if (sub_1B621D834())
    {
      v51 = sub_1B621D824();
      v52 = v50;
      v53 = v51;
      v54 = *v63;
      (*v63)(v52, v7);
      v54(v47, v7);
      if (v53)
      {
        a5 = v68;
        sub_1B620E044(v68, &qword_1EB924EB0, &unk_1B6226650);
        sub_1B605A29C(v70, a5);
        __swift_storeEnumTagSinglePayload(a5, 0, 1, v69);
LABEL_22:
        v17 = v58;
        goto LABEL_23;
      }
    }

    else
    {
      v55 = *v63;
      (*v63)(v50, v7);
      v55(v47, v7);
    }

    sub_1B620B850();
    a5 = v68;
    goto LABEL_22;
  }

LABEL_24:

  return result;
}

double sub_1B61E38B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v68 = a1;
  v69 = a3;
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D8, &qword_1B6239EF0);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for TideEvents(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v64 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v57 - v25;
  v72 = a2;
  sub_1B60B4284();
  v71 = v69;
  sub_1B608E6A0();
  v27 = v26;
  v69 = v21;
  __swift_storeEnumTagSinglePayload(a5, 1, 1, v21);
  v28 = *(v27 + 16);
  if (v28)
  {
    v60 = v12;
    v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v57 = v27;
    v30 = v27 + v29;
    v31 = *(v22 + 72);
    v65 = (v8 + 16);
    v66 = v31;
    v59 = (v8 + 32);
    v63 = (v8 + 8);
    v68 = a5;
    v58 = v17;
    while (1)
    {
      v32 = v70;
      sub_1B6036A80(v30, v70);
      v33 = *(v32 + 8);
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v34 - 1;
        v36 = *(type metadata accessor for HourTide(0) - 8);
        v37 = v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35;
        a5 = v68;
        (*v65)(v20, v37, v7);
        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      __swift_storeEnumTagSinglePayload(v20, v38, 1, v7);
      if (__swift_getEnumTagSinglePayload(a5, 1, v69))
      {
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v7);
      }

      else
      {
        v39 = v64;
        sub_1B6036A80(a5, v64);
        v40 = *(v39 + 8);
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = v41 - 1;
          v43 = *(type metadata accessor for HourTide(0) - 8);
          v44 = v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42;
          a5 = v68;
          (*v65)(v17, v44, v7);
          v45 = 0;
        }

        else
        {
          v45 = 1;
        }

        __swift_storeEnumTagSinglePayload(v17, v45, 1, v7);
        sub_1B620B850();
      }

      v46 = *(v67 + 48);
      sub_1B603D3DC(v20, v14, &qword_1EB924600, &qword_1B6223420);
      sub_1B603D3DC(v17, &v14[v46], &qword_1EB924600, &qword_1B6223420);
      if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
      {
        sub_1B620B850();
        if (__swift_getEnumTagSinglePayload(&v14[v46], 1, v7) != 1)
        {
          sub_1B620E044(&v14[v46], &qword_1EB924600, &qword_1B6223420);
        }

        goto LABEL_23;
      }

      if (__swift_getEnumTagSinglePayload(&v14[v46], 1, v7) != 1)
      {
        break;
      }

      sub_1B620E044(a5, &qword_1EB924EC0, &unk_1B6226640);
      sub_1B605A29C(v70, a5);
      __swift_storeEnumTagSinglePayload(a5, 0, 1, v69);
      (*v63)(v14, v7);
LABEL_23:
      v30 += v66;
      if (!--v28)
      {
        goto LABEL_24;
      }
    }

    v47 = v60;
    v48 = *v59;
    (*v59)(v60, v14, v7);
    v49 = &v14[v46];
    v50 = v61;
    v48(v61, v49, v7);
    if (sub_1B621D834())
    {
      v51 = sub_1B621D824();
      v52 = v50;
      v53 = v51;
      v54 = *v63;
      (*v63)(v52, v7);
      v54(v47, v7);
      if (v53)
      {
        a5 = v68;
        sub_1B620E044(v68, &qword_1EB924EC0, &unk_1B6226640);
        sub_1B605A29C(v70, a5);
        __swift_storeEnumTagSinglePayload(a5, 0, 1, v69);
LABEL_22:
        v17 = v58;
        goto LABEL_23;
      }
    }

    else
    {
      v55 = *v63;
      (*v63)(v50, v7);
      v55(v47, v7);
    }

    sub_1B620B850();
    a5 = v68;
    goto LABEL_22;
  }

LABEL_24:

  return result;
}

void sub_1B61E4040()
{
  OUTLINED_FUNCTION_138_0();
  v0 = type metadata accessor for WeatherRequestOptions(0);
  OUTLINED_FUNCTION_111_2(v0);
  OUTLINED_FUNCTION_198_0();
  sub_1B6070D34(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B61E40A0(uint64_t *a1, uint64_t a2)
{
  v23[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v23[1] = v2;
    v18 = *(type metadata accessor for MarineHourForecast(0) - 8);
    (*(v8 + 16))(v13, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v7);
    v19 = *(v8 + 32);
    v19(v16, v13, v7);
    MarineForecast.lastHourDate.getter(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*(v8 + 8))(v16, v7);
      sub_1B620E044(v6, &qword_1EB924600, &qword_1B6223420);
      v20 = 0;
    }

    else
    {
      v19(v10, v6, v7);
      sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (sub_1B6221184())
      {
        v20 = 0;
      }

      else
      {
        v20 = sub_1B6221184() ^ 1;
      }

      v21 = *(v8 + 8);
      v21(v10, v7);
      v21(v16, v7);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1B61E43AC(uint64_t a1, uint64_t a2)
{
  v23[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = *(a1 + 8);
  if (*(v17 + 16))
  {
    v23[1] = v2;
    v18 = *(type metadata accessor for HourTide(0) - 8);
    (*(v8 + 16))(v13, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v7);
    v19 = *(v8 + 32);
    v19(v16, v13, v7);
    TideEvents.lastHourDate.getter(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*(v8 + 8))(v16, v7);
      sub_1B620E044(v6, &qword_1EB924600, &qword_1B6223420);
      v20 = 0;
    }

    else
    {
      v19(v10, v6, v7);
      sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (sub_1B6221184())
      {
        v20 = 0;
      }

      else
      {
        v20 = sub_1B6221184() ^ 1;
      }

      v21 = *(v8 + 8);
      v21(v10, v7);
      v21(v16, v7);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t get_enum_tag_for_layout_string_13WeatherDaemon0A9DataErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B61E4718(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B61E4770(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

BOOL sub_1B61E48AC(uint64_t a1, uint64_t a2)
{
  sub_1B621D8F4();
  sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  return (sub_1B6221184() & 1) == 0;
}

uint64_t sub_1B61E4940(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924990, &unk_1B6239EC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Metadata(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WeatherModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CurrentWeather(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  sub_1B6220784();
  v19 = sub_1B6072A80(1);
  if ((v20 & 1) == 0)
  {

LABEL_7:
    sub_1B6220784();
    sub_1B6220784();
    return a1;
  }

  sub_1B6036A80(*(a1 + 56) + *(v13 + 72) * v19, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1B620B850();
    goto LABEL_7;
  }

  sub_1B605A29C(v15, v18);
  sub_1B6036A80(v18, v11);
  *&v11[*(v9 + 32)] = a2;
  *&v11[*(v9 + 36)] = a3;
  sub_1B620D7B4(v11, v18);
  v23 = a1;
  sub_1B6036A80(v18, v8);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  sub_1B607C050(v8, 1);
  sub_1B620B850();
  a1 = v23;
  sub_1B6220784();
  sub_1B620B850();
  return a1;
}

uint64_t sub_1B61E4C8C(_BYTE *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a1 = *a3;
  sub_1B6036A80(a4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1B61E4CFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924990, &unk_1B6239EC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v30 = type metadata accessor for WeatherModel(0);
  v25 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = *(v0 + 8);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v16 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v16;
    if (!v14)
    {
      break;
    }

LABEL_8:
    sub_1B603A944(*(v11 + 56) + *(v28 + 72) * (__clz(__rbit64(v14)) | (v16 << 6)), v10, &qword_1EB925000, &qword_1B62265D0);
    sub_1B603D3DC(v10, v7, &qword_1EB925000, &qword_1B62265D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B620E044(v7, &qword_1EB925000, &qword_1B62265D0);
      v18 = 1;
    }

    else
    {
      sub_1B605A29C(v7, v3);
      v18 = 0;
    }

    v14 &= v14 - 1;
    v19 = v30;
    __swift_storeEnumTagSinglePayload(v3, v18, 1, v30);
    if (__swift_getEnumTagSinglePayload(v3, 1, v19) == 1)
    {
      sub_1B620E044(v3, &qword_1EB924990, &unk_1B6239EC0);
    }

    else
    {
      sub_1B605A29C(v3, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B609C9A8();
        v27 = v23;
      }

      v20 = *(v27 + 16);
      if (v20 >= *(v27 + 24) >> 1)
      {
        sub_1B609C9A8();
        v27 = v24;
      }

      v21 = v26;
      v22 = v27;
      *(v27 + 16) = v20 + 1;
      sub_1B605A29C(v21, v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return;
    }

    v14 = *(v11 + 64 + 8 * v16);
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1B61E50EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B61E5278()
{
  OUTLINED_FUNCTION_11();
  v0[5] = v1;
  v2 = type metadata accessor for WeatherDataManager.CacheProcessingRequest(0);
  v0[6] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C60, &qword_1B6239F20);
  OUTLINED_FUNCTION_0(v3);
  v0[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C68, &qword_1B6239F28);
  v0[9] = v4;
  OUTLINED_FUNCTION_28_1(v4);
  v0[10] = v5;
  v0[11] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B61E5390()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925178, &unk_1B62268C0);
    sub_1B6221674();
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v0 + 104) = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_71_3(v2);

    return MEMORY[0x1EEE6D9C8](v4);
  }

  else
  {

    OUTLINED_FUNCTION_3_17();

    return v5();
  }
}

uint64_t sub_1B61E54B0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B61E5594()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[8];
  v2 = OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_16_5(v2, v3, v4);
  if (v5)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    OUTLINED_FUNCTION_3_17();

    return v6();
  }

  else
  {
    sub_1B605A29C(v1, v0[7]);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_1B61E56C4;
    v9 = v0[7];

    return sub_1B61E5834(v9);
  }
}

uint64_t sub_1B61E56C4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B61E57A8()
{
  OUTLINED_FUNCTION_11();
  sub_1B620B850();
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 104) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_71_3(v1);

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1B61E5834(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B6220EC4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1B6220A84();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1B6220B34();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for SignpostInterval(0);
  v2[14] = swift_task_alloc();
  type metadata accessor for WeatherRequestOptions(0);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61E5A08, 0, 0);
}

uint64_t sub_1B61E5A08()
{
  v1 = v0[15];
  v2 = v0[2];
  sub_1B61E4CFC();
  v4 = v3;
  v0[16] = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  type metadata accessor for WeatherDataManager.CacheProcessingRequest(0);
  OUTLINED_FUNCTION_29_12();
  sub_1B6036A80(v2 + v7, v1);
  v8 = sub_1B6070128(v1);
  v10 = v9;
  v0[17] = v9;
  v11 = sub_1B6067284();
  v0[18] = v11;
  if (v11)
  {
    v38 = v10;
    v39 = v4;
    v40 = v11;
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[12];
    v15 = v0[9];
    v16 = v0[8];
    v18 = v0[5];
    v17 = v0[6];
    v36 = v0[7];
    v37 = v0[4];
    __swift_project_value_buffer(v0[10], qword_1EDAC2AB0);
    (*(v13 + 16))(v14);
    sub_1B6220A94();
    sub_1B6220AA4();
    sub_1B6220A64();
    OUTLINED_FUNCTION_164_0();
    sub_1B61EE7AC();
    v20 = v19;
    (*(v16 + 8))(v15, v36);
    *v12 = "processCacheRequest";
    *(v12 + 8) = 19;
    *(v12 + 16) = 2;
    *(v12 + 24) = v20;
    (*(v18 + 104))(v17, *MEMORY[0x1E69D62C0], v37);
    sub_1B6220EE4();
    OUTLINED_FUNCTION_249();
    swift_allocObject();
    OUTLINED_FUNCTION_104();
    v0[19] = sub_1B6220ED4();
    v29 = v0[15];
    v31 = v0[2];
    v30 = v0[3];
    v32 = swift_task_alloc();
    v0[20] = v32;
    v32[2] = v39;
    v32[3] = v30;
    v32[4] = v40;
    v32[5] = v5;
    v32[6] = v6;
    v32[7] = v8;
    v32[8] = v38;
    v32[9] = v29;
    v32[10] = v31;
    v33 = swift_task_alloc();
    v0[21] = v33;
    *v33 = v0;
    v33[1] = sub_1B61E5EE4;

    return MEMORY[0x1EEE6DBF8]();
  }

  else
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    OUTLINED_FUNCTION_225(v0[10], qword_1EDAC2AB0);
    v21 = sub_1B6220B14();
    sub_1B62217E4();
    v22 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v22, v23))
    {
      *OUTLINED_FUNCTION_226_0() = 0;
      OUTLINED_FUNCTION_140_0();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    OUTLINED_FUNCTION_83_2();

    OUTLINED_FUNCTION_3_17();

    return v34();
  }
}

uint64_t sub_1B61E5EE4()
{
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B61E6028()
{

  SignpostInterval.end()();

  OUTLINED_FUNCTION_14_24();
  sub_1B620B850();
  OUTLINED_FUNCTION_83_2();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

void sub_1B61E60DC()
{
  OUTLINED_FUNCTION_116();
  v99 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_58();
  v92 = type metadata accessor for InterpolationInputProducts(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v93 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0, &qword_1B6226B80);
  OUTLINED_FUNCTION_0(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v95 = v91 - v9;
  v10 = OUTLINED_FUNCTION_21_2();
  v11 = type metadata accessor for DailyForecast(v10);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v94 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924990, &unk_1B6239EC0);
  v16 = OUTLINED_FUNCTION_0(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_3();
  v96 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_14();
  v19 = type metadata accessor for HourlyForecast(0);
  v20 = OUTLINED_FUNCTION_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14();
  v97 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  OUTLINED_FUNCTION_0(v23);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v91 - v25;
  v27 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v100 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14();
  v98 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28, &unk_1B62265F0);
  OUTLINED_FUNCTION_0(v32);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v91 - v34;
  v36 = type metadata accessor for WeatherInterpolationOptions(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14();
  v40 = (v39 - v38);
  v41 = type metadata accessor for WeatherRequestOptions(0);
  sub_1B603A944(v3 + *(v41 + 52), v35, &qword_1EB924F28, &unk_1B62265F0);
  v42 = OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_16_5(v42, v43, v36);
  if (!v52)
  {
    v50 = OUTLINED_FUNCTION_302();
    sub_1B605A29C(v50, v51);
    sub_1B603A944(v3 + *(v41 + 20), v26, &qword_1EB924EF8, &unk_1B6226620);
    OUTLINED_FUNCTION_16_5(v26, 1, v27);
    if (v52)
    {
      sub_1B620E044(v26, &qword_1EB924EF8, &unk_1B6226620);
      if (qword_1EDAB3D80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v53 = sub_1B6220B34();
      OUTLINED_FUNCTION_225(v53, qword_1EDAC2AB0);
      v54 = sub_1B6220B14();
      sub_1B62217E4();
      v55 = OUTLINED_FUNCTION_78_1();
      if (os_log_type_enabled(v55, v56))
      {
        *OUTLINED_FUNCTION_226_0() = 0;
        OUTLINED_FUNCTION_140_0();
        _os_log_impl(v57, v58, v59, v60, v61, 2u);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
      }

      sub_1B60BE750();
      swift_allocError();
      OUTLINED_FUNCTION_160_0();
      *v62 = v63;
      v62[1] = 0x80000001B623CB80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8, &unk_1B6226B70);
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      OUTLINED_FUNCTION_222();
      sub_1B6220984();
      goto LABEL_25;
    }

    v64 = v3;
    v65 = v98;
    (*(v100 + 32))(v98, v26, v27);
    v66 = OUTLINED_FUNCTION_17_2();
    v69 = sub_1B60668B4(v67, v64, v66, v68);
    v71 = v70;
    sub_1B60C4DE8(3, v69, v1);
    v72 = type metadata accessor for WeatherModel(0);
    OUTLINED_FUNCTION_16_5(v1, 1, v72);
    if (!v73)
    {
      OUTLINED_FUNCTION_48_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 3)
      {
LABEL_22:

        sub_1B620B850();
        goto LABEL_23;
      }

      v91[1] = v71;
      sub_1B605A29C(v1, v97);
      v1 = v96;
      sub_1B60C4DE8(2, v69, v96);
      OUTLINED_FUNCTION_16_5(v1, 1, v72);
      if (!v52)
      {
        OUTLINED_FUNCTION_48_4();
        v80 = swift_getEnumCaseMultiPayload();
        if (v80 == 2)
        {
          v81 = v94;
          sub_1B605A29C(v1, v94);
          v82 = v95;
          sub_1B61E6CE0(v69, v95);

          v83 = v93;
          sub_1B6036A80(v97, v93);
          v84 = v92;
          sub_1B6036A80(v81, v83 + *(v92 + 20));
          sub_1B603A944(v82, v83 + *(v84 + 24), &qword_1EB924EA0, &qword_1B6226B80);
          v85 = OUTLINED_FUNCTION_17_2();
          v88 = sub_1B61E6E38(v83, v40, v86, v65, v85, v87);
          sub_1B620B850();
          if (v88)
          {
            v101 = v88;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8, &unk_1B6226B70);
            OUTLINED_FUNCTION_249();
            swift_allocObject();
            sub_1B6220994();
          }

          else
          {
            sub_1B60BE750();
            swift_allocError();
            OUTLINED_FUNCTION_160_0();
            *v90 = v89 + 39;
            v90[1] = 0x80000001B623CC00;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8, &unk_1B6226B70);
            OUTLINED_FUNCTION_249();
            swift_allocObject();
            OUTLINED_FUNCTION_222();
            sub_1B6220984();
          }

          sub_1B620E044(v82, &qword_1EB924EA0, &qword_1B6226B80);
          sub_1B620B850();
          OUTLINED_FUNCTION_32_12();
          sub_1B620B850();
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_32_12();
        sub_1B620B850();
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_32_12();
      sub_1B620B850();
    }

    sub_1B620E044(v1, &qword_1EB924990, &unk_1B6239EC0);
LABEL_23:
    v75 = OUTLINED_FUNCTION_17_2();
    sub_1B61E69E4(v64, v40, v76, v65, v75, v77);
LABEL_24:
    v78 = OUTLINED_FUNCTION_51_4();
    v79(v78);
LABEL_25:
    sub_1B620B850();
    goto LABEL_26;
  }

  sub_1B620E044(v35, &qword_1EB924F28, &unk_1B62265F0);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v44 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v44, qword_1EDAC2AB0);
  v45 = sub_1B6220B14();
  v46 = sub_1B62217E4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_226_0();
    *v47 = 0;
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  sub_1B60BE750();
  swift_allocError();
  OUTLINED_FUNCTION_160_0();
  *v49 = v48 + 5;
  v49[1] = 0x80000001B623CB50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8, &unk_1B6226B70);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_222();
  sub_1B6220984();
LABEL_26:
  OUTLINED_FUNCTION_117();
}

uint64_t sub_1B61E69E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v26 = a3;
  v27 = a4;
  v28 = *v6;
  v11 = sub_1B621DB64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = type metadata accessor for WeatherInterpolationOptions(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v6;
  v30 = a5;
  v31 = a6;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D0, &unk_1B6239F00);
  v25 = sub_1B62209F4();
  sub_1B6036A80(a2, v17);
  sub_1B602D048(v26, v33);
  (*(v12 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v11);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v12 + 80) + v19 + 40) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  sub_1B605A29C(v17, v21 + v18);
  sub_1B60273A4(v33, v21 + v19);
  (*(v12 + 32))(v21 + v20, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v22 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250F0, &qword_1B6226828);
  v23 = sub_1B6220954();

  return v23;
}

uint64_t sub_1B61E6CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v8 = sub_1B6072A80(4);
    if (v9)
    {
      sub_1B6036A80(*(a1 + 56) + *(v5 + 72) * v8, v7);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        return sub_1B603D3DC(v7, a2, &qword_1EB924EA0, &qword_1B6226B80);
      }

      sub_1B620B850();
    }
  }

  HourForecast = type metadata accessor for NextHourForecast(0);
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, HourForecast);
}

uint64_t sub_1B61E6E38(NSObject *a1, void *a2, NSObject *a3, uint64_t a4, double a5, double a6)
{
  v234 = a4;
  v235 = a2;
  v232 = a3;
  v233 = a1;
  v8 = sub_1B621D364();
  v226 = *(v8 - 8);
  v227 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v218 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v217 = &v206 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v221 = &v206 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v220 = &v206 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v225 = &v206 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v224 = &v206 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v206 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E80, &unk_1B6226830);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v223 = (&v206 - v27);
  v28 = type metadata accessor for CurrentWeather(0);
  v230 = *(v28 - 8);
  v231 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v228 = &v206 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v206 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v229 = &v206 - v34;
  v35 = sub_1B621D8F4();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v206 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v236 = &v206 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v222 = &v206 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v219 = &v206 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v206 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v206 - v49;
  v51 = type metadata accessor for WeatherInterpolationOptions(0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v206 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6036A80(v235, v53);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v237 = v35;
    v235 = v36;
    v54 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925108, &qword_1B6226840) + 48)];
    v55 = *v54;
    v56 = v54[8];
    v57 = v226;
    (*(v226 + 32))(v22, v53, v227);
    if (qword_1EDAB3D80 != -1)
    {
LABEL_39:
      swift_once();
    }

    v222 = v55;
    v58 = sub_1B6220B34();
    v59 = __swift_project_value_buffer(v58, qword_1EDAC2AB0);
    v60 = *(v57 + 16);
    v61 = v227;
    v60(v224, v22, v227);
    v214 = v57 + 16;
    v213 = v60;
    v60(v225, v22, v61);
    v215 = v59;
    v62 = sub_1B6220B14();
    v63 = sub_1B62217F4();
    v64 = os_log_type_enabled(v62, v63);
    v229 = v38;
    LODWORD(v219) = v56;
    v216 = v22;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v210 = v63;
      v66 = v65;
      v211 = swift_slowAlloc();
      v240 = v211;
      *v66 = 141559043;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v238 = a5;
      v239 = a6;
      type metadata accessor for CLLocationCoordinate2D(0);
      v67 = sub_1B6221234();
      v209 = v62;
      v69 = sub_1B602EEB0(v67, v68, &v240);

      v212 = v66;
      *(v66 + 14) = v69;
      *(v66 + 22) = 2080;
      v70 = v236;
      v71 = v224;
      sub_1B621D354();
      v208 = sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v72 = v237;
      v73 = sub_1B6221F04();
      v75 = v74;
      v207 = v235[1];
      v207(v70, v72);
      v223 = *(v226 + 8);
      v223(v71, v227);
      v76 = sub_1B602EEB0(v73, v75, &v240);

      v77 = v212;
      *(v212 + 24) = v76;
      *(v77 + 32) = 2080;
      v78 = v225;
      sub_1B621D334();
      v79 = sub_1B6221F04();
      v81 = v80;
      v82 = v70;
      v83 = v219;
      v207(v82, v72);
      v22 = v216;
      v223(v78, v227);
      v38 = v229;
      v84 = sub_1B602EEB0(v79, v81, &v240);

      v85 = v212;
      *(v212 + 34) = v84;
      *(v85 + 42) = 2080;
      v86 = v222;
      v238 = *&v222;
      LOBYTE(v239) = v83;
      v87 = WeatherInterpolationOptions.Stride.description.getter();
      v89 = sub_1B602EEB0(v87, v88, &v240);

      *(v85 + 44) = v89;
      v90 = v209;
      _os_log_impl(&dword_1B6020000, v209, v210, "Attempting to interpolate current weather; location=%{private,mask.hash}s, DateInterval.start: %s, DateInterval.end: %s, stride: %s", v85, 0x34u);
      v91 = v211;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v91, -1, -1);
      MEMORY[0x1B8C91C90](v85, -1, -1);

      v92 = v235;
    }

    else
    {

      v107 = *(v57 + 8);
      v107(v225, v61);
      v223 = v107;
      v107(v224, v61);
      v92 = v235;
      v86 = v222;
      v83 = v56;
    }

    sub_1B621D354();
    v235 = v92 + 1;
    v56 = v83 | ((v86 * 60) >> 64 == (60 * v86) >> 63);
    v108 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v109 = v236;
      v110 = v22;
      sub_1B621D334();
      v111 = sub_1B621D834();
      v112 = *v235;
      (*v235)(v109, v237);
      if ((v111 & 1) == 0)
      {
        break;
      }

      isa = v232[3].isa;
      v114 = v232[4].isa;
      __swift_project_boxed_opaque_existential_1(v232, isa);
      (*(v114 + 1))(v233, v38, v234, isa, v114, a5, a6);
      if (__swift_getEnumTagSinglePayload(v25, 1, v231) == 1)
      {
        sub_1B620E044(v25, &qword_1EB924E80, &unk_1B6226830);
        break;
      }

      sub_1B605A29C(v25, v32);
      v55 = v228;
      sub_1B6036A80(v32, v228);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B609C550();
        v108 = v115;
      }

      v22 = v110;
      v38 = v229;
      v57 = *(v108 + 16);
      if (v57 >= *(v108 + 24) >> 1)
      {
        sub_1B609C550();
        v108 = v116;
      }

      *(v108 + 16) = v57 + 1;
      sub_1B605A29C(v55, v108 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v57);
      if ((v56 & 1) == 0)
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_1B621D8B4();
      sub_1B620B850();
    }

    if (*(v108 + 16))
    {
      v147 = v220;
      v148 = v227;
      v149 = v213;
      v213(v220, v110, v227);
      v150 = v221;
      v149(v221, v110, v148);
      v151 = sub_1B6220B14();
      v152 = sub_1B62217F4();
      v153 = os_log_type_enabled(v151, v152);
      v154 = v237;
      if (v153)
      {
        v155 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v240 = v234;
        *v155 = 136315650;
        v233 = v151;
        v156 = v236;
        LODWORD(v232) = v152;
        sub_1B621D354();
        v231 = sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v157 = sub_1B6221F04();
        v159 = v158;
        v112(v156, v154);
        v223(v147, v148);
        v160 = sub_1B602EEB0(v157, v159, &v240);

        *(v155 + 4) = v160;
        *(v155 + 12) = 2080;
        v161 = v221;
        sub_1B621D334();
        v162 = v237;
        v163 = sub_1B6221F04();
        v165 = v164;
        v112(v156, v162);
        v166 = v161;
        v167 = v223;
        v223(v166, v148);
        v168 = sub_1B602EEB0(v163, v165, &v240);

        *(v155 + 14) = v168;
        *(v155 + 22) = 2080;
        v238 = *&v222;
        LOBYTE(v239) = v219;
        v169 = WeatherInterpolationOptions.Stride.description.getter();
        v171 = sub_1B602EEB0(v169, v170, &v240);

        *(v155 + 24) = v171;
        v172 = v233;
        _os_log_impl(&dword_1B6020000, v233, v232, "Successfully interpolated for dateInterval.start: %s, dateInterval.end: %s, stride: %s", v155, 0x20u);
        v173 = v234;
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v173, -1, -1);
        MEMORY[0x1B8C91C90](v155, -1, -1);

        v112(v229, v237);
        v167(v216, v148);
      }

      else
      {

        v201 = v223;
        v223(v150, v148);
        v201(v147, v148);
        v112(v229, v154);
        v201(v110, v148);
      }

      return v108;
    }

    v174 = v217;
    v175 = v110;
    v176 = v227;
    v177 = v213;
    v213(v217, v110, v227);
    v178 = v218;
    v177(v218, v110, v176);
    v179 = sub_1B6220B14();
    v180 = sub_1B62217E4();
    v181 = os_log_type_enabled(v179, v180);
    v182 = v237;
    if (v181)
    {
      v183 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v240 = v234;
      *v183 = 136315650;
      v184 = v236;
      LODWORD(v233) = v180;
      sub_1B621D354();
      v231 = sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v232 = v179;
      v185 = sub_1B6221F04();
      v187 = v186;
      v112(v184, v182);
      v188 = v223;
      v223(v174, v176);
      v189 = sub_1B602EEB0(v185, v187, &v240);

      *(v183 + 4) = v189;
      *(v183 + 12) = 2080;
      sub_1B621D334();
      v190 = v237;
      v191 = sub_1B6221F04();
      v193 = v192;
      v112(v184, v190);
      v188(v178, v176);
      v194 = v188;
      v195 = sub_1B602EEB0(v191, v193, &v240);

      *(v183 + 14) = v195;
      *(v183 + 22) = 2080;
      v238 = *&v222;
      LOBYTE(v239) = v219;
      v196 = WeatherInterpolationOptions.Stride.description.getter();
      v198 = sub_1B602EEB0(v196, v197, &v240);

      *(v183 + 24) = v198;
      v199 = v232;
      _os_log_impl(&dword_1B6020000, v232, v233, "Failed to interpolate for dateInterval.start: %s, dateInterval.end: %s, stride: %s", v183, 0x20u);
      v200 = v234;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v200, -1, -1);
      MEMORY[0x1B8C91C90](v183, -1, -1);

      v112(v229, v190);
      v194(v216, v176);
    }

    else
    {

      v204 = v223;
      v223(v178, v176);
      v204(v174, v176);
      v112(v229, v182);
      v204(v175, v176);
    }

    return 0;
  }

  (v36[4])(v50, v53, v35);
  v93 = v36;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v94 = sub_1B6220B34();
  __swift_project_value_buffer(v94, qword_1EDAC2AB0);
  v228 = v36[2];
  (v228)(v47, v50, v35);
  v95 = sub_1B6220B14();
  v96 = sub_1B62217F4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v227 = v50;
    v235 = v93;
    v99 = v98;
    v240 = v98;
    *v97 = 141558531;
    *(v97 + 4) = 1752392040;
    *(v97 + 12) = 2081;
    v238 = a5;
    v239 = a6;
    type metadata accessor for CLLocationCoordinate2D(0);
    v100 = sub_1B6221234();
    v102 = sub_1B602EEB0(v100, v101, &v240);

    *(v97 + 14) = v102;
    *(v97 + 22) = 2080;
    sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v103 = sub_1B6221F04();
    v105 = v104;
    v236 = v235[1];
    (v236)(v47, v35);
    v106 = sub_1B602EEB0(v103, v105, &v240);

    *(v97 + 24) = v106;
    _os_log_impl(&dword_1B6020000, v95, v96, "Attempting to interpolate current weather; location=%{private,mask.hash}s, date: %s", v97, 0x20u);
    swift_arrayDestroy();
    v50 = v227;
    MEMORY[0x1B8C91C90](v99, -1, -1);
    MEMORY[0x1B8C91C90](v97, -1, -1);
  }

  else
  {

    v236 = v93[1];
    (v236)(v47, v35);
  }

  v117 = v232[3].isa;
  v118 = v232[4].isa;
  __swift_project_boxed_opaque_existential_1(v232, v117);
  v119 = v223;
  (*(v118 + 1))(v233, v50, v234, v117, v118, a5, a6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v119, 1, v231);
  v121 = v222;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B620E044(v119, &qword_1EB924E80, &unk_1B6226830);
    (v228)(v121, v50, v35);
    v122 = sub_1B6220B14();
    v123 = sub_1B62217E4();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v238 = *&v125;
      *v124 = 136315138;
      sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v126 = sub_1B6221F04();
      v127 = v35;
      v129 = v128;
      v130 = v121;
      v131 = v236;
      (v236)(v130, v127);
      v132 = sub_1B602EEB0(v126, v129, &v238);

      *(v124 + 4) = v132;
      _os_log_impl(&dword_1B6020000, v122, v123, "Failed to interpolate for date: %s", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      MEMORY[0x1B8C91C90](v125, -1, -1);
      MEMORY[0x1B8C91C90](v124, -1, -1);

      v131(v50, v127);
    }

    else
    {

      v202 = v236;
      (v236)(v121, v35);
      v202(v50, v35);
    }

    return 0;
  }

  sub_1B605A29C(v119, v229);
  v133 = v219;
  (v228)(v219, v50, v35);
  v134 = sub_1B6220B14();
  v135 = sub_1B62217F4();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = v35;
    v138 = swift_slowAlloc();
    v238 = *&v138;
    *v136 = 136315138;
    sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v139 = sub_1B6221F04();
    v141 = v140;
    v142 = v133;
    v143 = v236;
    (v236)(v142, v137);
    v144 = sub_1B602EEB0(v139, v141, &v238);

    *(v136 + 4) = v144;
    _os_log_impl(&dword_1B6020000, v134, v135, "Successfuly interpolated for date: %s", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v138);
    v145 = v138;
    v35 = v137;
    MEMORY[0x1B8C91C90](v145, -1, -1);
    MEMORY[0x1B8C91C90](v136, -1, -1);

    v146 = v143;
  }

  else
  {

    v146 = v236;
    (v236)(v133, v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924950, &qword_1B6224A70);
  v203 = (*(v230 + 80) + 32) & ~*(v230 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1B6225510;
  sub_1B605A29C(v229, v108 + v203);
  v146(v50, v35);
  return v108;
}

uint64_t sub_1B61E8684(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for WeatherRequestOptions(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = a3;
    v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v16;
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = type metadata accessor for WeatherServiceRequestLocation(0);
    v18 = MEMORY[0x1B8C906E0](a2, v17);
    v20 = sub_1B602EEB0(v18, v19, &v39);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_1B6020000, v12, v13, "Fetching from WDS; locations=%{private,mask.hash}s", v15, 0x16u);
    v21 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    a3 = v35;
    v10 = v36;
    MEMORY[0x1B8C91C90](v21, -1, -1);
    v22 = v15;
    a1 = v37;
    MEMORY[0x1B8C91C90](v22, -1, -1);
  }

  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EDAB2090 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (v39)
  {
    sub_1B60BE750();
    swift_allocError();
    *v24 = xmmword_1B6239C90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E50, &unk_1B622CB30);
    swift_allocObject();
    return sub_1B6220984();
  }

  if (!a2[2])
  {
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B6020000, v30, v31, "Fetching from WDS; Location is Empty", v32, 2u);
      MEMORY[0x1B8C91C90](v32, -1, -1);
    }

    v39 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E50, &unk_1B622CB30);
    swift_allocObject();
    return sub_1B6220994();
  }

  MEMORY[0x1EEE9AC00](v23);
  *(&v34 - 4) = a3;
  *(&v34 - 3) = a2;
  *(&v34 - 2) = v4;
  *(&v34 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251C8, &unk_1B622CB20);
  sub_1B62209F4();
  sub_1B6036A80(a3, v10);
  v26 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  sub_1B605A29C(v10, v27 + v26);
  sub_1B6220784();
  v28 = sub_1B62208D4();
  v29 = sub_1B6220954();

  return v29;
}

void sub_1B61E8B94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for WeatherServiceRequestLocation(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    *a3 = *(*a1 + 48);
    sub_1B6220784();
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AB0);
    sub_1B6036A80(a2, v8);
    v10 = sub_1B6220B14();
    v11 = sub_1B62217E4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v14 = CLLocationCoordinate2D.id.getter();
      v16 = v15;
      sub_1B620B850();
      v17 = sub_1B602EEB0(v14, v16, &v19);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1B6020000, v10, v11, "Unexpected empty results when fetching products for location. location=%{private,mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1B8C91C90](v13, -1, -1);
      MEMORY[0x1B8C91C90](v12, -1, -1);
    }

    else
    {

      sub_1B620B850();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
    sub_1B604D954();
    *a3 = sub_1B6221124();
  }
}

void sub_1B61E8E14()
{
  OUTLINED_FUNCTION_116();
  v155 = v0;
  v2 = v1;
  v4 = v3;
  v153 = v5;
  v178 = type metadata accessor for WeatherServiceRequestLocation(0);
  OUTLINED_FUNCTION_2();
  v181 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v170 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v171 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40_0();
  v166 = v12;
  OUTLINED_FUNCTION_21_2();
  v175 = sub_1B621DB64();
  v13 = OUTLINED_FUNCTION_28_1(v175);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v165 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  v19 = OUTLINED_FUNCTION_0(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_3();
  v158 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v153 - v22;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E08, &qword_1B622C8D8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_3();
  v157 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40_0();
  v182 = v27;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8, &qword_1B6226820);
  OUTLINED_FUNCTION_2();
  v162 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_3();
  v172 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_40_0();
  v161 = v32;
  v33 = OUTLINED_FUNCTION_21_2();
  v34 = *(type metadata accessor for WeatherRequestOptions(v33) + 64);
  v154 = v2;
  v35 = *(v2 + v34);
  v36 = &unk_1B6225000;
  if ((v35 & 1) == 0)
  {
    if (qword_1EDAB3D80 != -1)
    {
      goto LABEL_115;
    }

    goto LABEL_3;
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v47 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v47, qword_1EDAC2AB0);
  sub_1B6220784();
  v38 = sub_1B6220B14();
  v39 = sub_1B62217F4();

  if (os_log_type_enabled(v38, v39))
  {
    OUTLINED_FUNCTION_110();
    v40 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v41 = swift_slowAlloc();
    v183[0] = v41;
    *v40 = 141558275;
    OUTLINED_FUNCTION_37_5();
    OUTLINED_FUNCTION_183_0(v48);
    v51 = sub_1B602EEB0(v49, v50, v183);

    *(v40 + 14) = v51;
    v46 = "Attempting to read weather data from cache (policy allows expired data); locations=%{private,mask.hash}s";
LABEL_9:
    _os_log_impl(&dword_1B6020000, v38, v39, v46, v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

LABEL_10:

  if ((v35 & 8) != 0)
  {
LABEL_96:
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_117();

    sub_1B61E8684(v128, v129, v130);
    return;
  }

  MEMORY[0x1EEE9AC00](v52);
  v53 = v153;
  *(&v153 - 4) = v155;
  *(&v153 - 3) = v53;
  *(&v153 - 2) = v154;
  sub_1B60B4868();
  v55 = v54;
  v160 = *(v54 + 16);
  v164 = v15 + 32;
  v169 = (v15 + 8);
  sub_1B6220784();
  v56 = 0;
  v57 = &qword_1EB924EF8;
  v173 = v23;
  v36 = v172;
  v159 = v55;
LABEL_12:
  v180 = v4;
  if (v56 != v160)
  {
    if (v56 >= *(v55 + 16))
    {
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v58 = v161;
    sub_1B603A944(v55 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v56, v161, &qword_1EB9249D8, &qword_1B6226820);
    v167 = v56 + 1;
    v59 = *(v163 + 48);
    v179 = *(v58 + v59);
    OUTLINED_FUNCTION_101_2();
    v60 = OUTLINED_FUNCTION_302();
    sub_1B605A29C(v60, v61);
    v62 = 0;
    *(v36 + v59) = v179;
    v4 = v180;
    v63 = v181;
    v64 = v180[2];
    v65 = 1;
    *&v179 = v64;
    while (1)
    {
      if (v64 == v62)
      {
        v23 = v4[2];
        v62 = v23;
        goto LABEL_39;
      }

      v35 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v15 = *(v63 + 72);
      v66 = v4 + v35 + v15 * v62;
      v67 = *v36;
      if (*v66 == *v36)
      {
        v68 = v36[1];
        if (*(v66 + 8) == v68)
        {
          v69 = *(v66 + 24);
          v71 = *(v36 + 2);
          v70 = *(v36 + 3);
          if (v69)
          {
            if (!v70)
            {
              goto LABEL_37;
            }

            v72 = *(v66 + 16) == v71 && v69 == v70;
            if (!v72)
            {
              v73 = *(v63 + 72);
              v74 = (*(v63 + 80) + 32) & ~*(v63 + 80);
              v75 = v57;
              v76 = *(v36 + 3);
              v77 = sub_1B6221F24();
              v64 = v179;
              v70 = v76;
              v57 = v75;
              v35 = v74;
              v15 = v73;
              v63 = v181;
              if ((v77 & 1) == 0)
              {
                goto LABEL_37;
              }
            }
          }

          else if (v70)
          {
            goto LABEL_37;
          }

          v176 = v71;
          v177 = v70;
          v78 = *(v178 + 24);
          v79 = *(v174 + 48);
          v80 = v66 + v78;
          v81 = v182;
          sub_1B603A944(v80, v182, v57, &unk_1B6226620);
          sub_1B603A944(v36 + v78, v81 + v79, v57, &unk_1B6226620);
          v82 = OUTLINED_FUNCTION_3_29();
          v83 = v175;
          OUTLINED_FUNCTION_16_5(v82, v84, v175);
          if (v72)
          {
            OUTLINED_FUNCTION_6_1(v182 + v79);
            if (v72)
            {
              sub_1B620E044(v182, v57, &unk_1B6226620);
              v4 = v180;
LABEL_56:
              v168 = v78;
              v23 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                goto LABEL_114;
              }

              v104 = v35 + v15 * v65;
              v105 = v166;
              while (2)
              {
                v106 = v4[2];
                if (v23 != v106)
                {
                  if (v23 >= v106)
                  {
                    __break(1u);
LABEL_106:
                    __break(1u);
LABEL_107:
                    __break(1u);
LABEL_108:
                    __break(1u);
LABEL_109:
                    __break(1u);
                    goto LABEL_110;
                  }

                  OUTLINED_FUNCTION_36_8();
                  sub_1B6036A80(v4 + v104, v105);
                  if (*v105 == v67 && *(v105 + 8) == v68)
                  {
                    v107 = *(v105 + 24);
                    if (v107)
                    {
                      if (!v177)
                      {
                        goto LABEL_80;
                      }

                      v108 = *(v105 + 16) == v176 && v107 == v177;
                      if (!v108 && (sub_1B6221F24() & 1) == 0)
                      {
                        goto LABEL_80;
                      }
                    }

                    else if (v177)
                    {
                      goto LABEL_80;
                    }

                    *&v179 = v104;
                    v180 = v4;
                    v109 = *(v174 + 48);
                    v110 = v57;
                    v111 = v157;
                    OUTLINED_FUNCTION_203_0();
                    sub_1B603A944(v112, v113, v114, &unk_1B6226620);
                    sub_1B603A944(v36 + v168, v111 + v109, v110, &unk_1B6226620);
                    v115 = v175;
                    OUTLINED_FUNCTION_16_5(v111, 1, v175);
                    if (v72)
                    {
                      OUTLINED_FUNCTION_6_1(v111 + v109);
                      v4 = v180;
                      if (v72)
                      {
                        v116 = v111;
                        v57 = &qword_1EB924EF8;
                        sub_1B620E044(v116, &qword_1EB924EF8, &unk_1B6226620);
                        OUTLINED_FUNCTION_15_24();
                        sub_1B620B850();
                        v104 = v179;
LABEL_90:
                        ++v23;
                        v104 += v15;
                        continue;
                      }
                    }

                    else
                    {
                      sub_1B603A944(v111, v158, v110, &unk_1B6226620);
                      OUTLINED_FUNCTION_6_1(v111 + v109);
                      if (!v117)
                      {
                        OUTLINED_FUNCTION_170_0();
                        v122(*(v121 - 256));
                        OUTLINED_FUNCTION_99_2();
                        sub_1B60715EC(&qword_1EDAB0400, v123, MEMORY[0x1E6969BD8]);
                        v124 = v158;
                        OUTLINED_FUNCTION_42();
                        v156 = sub_1B62211A4();
                        v125 = *v169;
                        (*v169)(v165, v115);
                        v125(v124, v115);
                        v36 = v172;
                        v126 = v111;
                        v57 = &qword_1EB924EF8;
                        sub_1B620E044(v126, &qword_1EB924EF8, &unk_1B6226620);
                        OUTLINED_FUNCTION_15_24();
                        sub_1B620B850();
                        v4 = v180;
                        v104 = v179;
                        if (v156)
                        {
                          goto LABEL_90;
                        }

LABEL_81:
                        if (v23 != v62)
                        {
                          if (v62 < 0)
                          {
                            goto LABEL_106;
                          }

                          v118 = v4[2];
                          if (v62 >= v118)
                          {
                            goto LABEL_107;
                          }

                          OUTLINED_FUNCTION_36_8();
                          sub_1B6036A80(v119 + v62 * v15, v171);
                          if (v23 >= v118)
                          {
                            goto LABEL_108;
                          }

                          OUTLINED_FUNCTION_36_8();
                          sub_1B6036A80(v4 + v104, v170);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_1B620D970();
                            v4 = v127;
                          }

                          v105 = v166;
                          OUTLINED_FUNCTION_95_2();
                          sub_1B620D984(v170, v120 + v62 * v15);
                          if (v23 >= v4[2])
                          {
                            goto LABEL_109;
                          }

                          OUTLINED_FUNCTION_95_2();
                          sub_1B620D984(v171, v4 + v104);
                        }

                        ++v62;
                        goto LABEL_90;
                      }

                      (*v169)(v158, v115);
                      v4 = v180;
                    }

                    sub_1B620E044(v111, &qword_1EB925E08, &qword_1B622C8D8);
                    v57 = &qword_1EB924EF8;
                    v104 = v179;
                  }

LABEL_80:
                  OUTLINED_FUNCTION_15_24();
                  sub_1B620B850();
                  goto LABEL_81;
                }

                break;
              }

              if (v23 < v62)
              {
                goto LABEL_111;
              }

              if (v62 < 0)
              {
                __break(1u);
                goto LABEL_96;
              }

LABEL_39:
              v36 = v4;
              v97 = v62 - v23;
              v4 = v62;
              if (__OFADD__(v23, v62 - v23))
              {
                goto LABEL_112;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0 && v62 <= *(v36 + 3) >> 1)
              {
                v4 = v36;
              }

              else
              {
                sub_1B609C708();
                v4 = v98;
              }

              v99 = v4 + ((*(v181 + 80) + 32) & ~*(v181 + 80));
              v15 = *(v181 + 72);
              v35 = v15 * v62;
              v36 = &v99[v15 * v62];
              swift_arrayDestroy();
              v72 = v23 == v62;
              v56 = v167;
              if (!v72)
              {
                if (v35 < (v15 * v23) || v36 >= &v99[v15 * v23 + (v4[2] - v23) * v15])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v35 != v15 * v23)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v101 = v4[2];
                v102 = __OFADD__(v101, v97);
                v103 = v101 + v97;
                if (!v102)
                {
                  v4[2] = v103;
                  goto LABEL_55;
                }

LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
LABEL_115:
                OUTLINED_FUNCTION_0_17();
                swift_once();
LABEL_3:
                v37 = sub_1B6220B34();
                OUTLINED_FUNCTION_225(v37, qword_1EDAC2AB0);
                sub_1B6220784();
                v38 = sub_1B6220B14();
                v39 = sub_1B62217F4();

                if (os_log_type_enabled(v38, v39))
                {
                  OUTLINED_FUNCTION_110();
                  v40 = swift_slowAlloc();
                  OUTLINED_FUNCTION_8_2();
                  v41 = swift_slowAlloc();
                  v183[0] = v41;
                  *v40 = *(v36 + 40);
                  OUTLINED_FUNCTION_37_5();
                  OUTLINED_FUNCTION_183_0(v42);
                  v45 = sub_1B602EEB0(v43, v44, v183);

                  *(v40 + 14) = v45;
                  v46 = "Attempting to read weather data from cache (policy disallows expired data); locations=%{private,mask.hash}s";
                  goto LABEL_9;
                }

                goto LABEL_10;
              }

LABEL_55:
              v36 = v172;
              sub_1B620E044(v172, &qword_1EB9249D8, &qword_1B6226820);
              v55 = v159;
              v57 = &qword_1EB924EF8;
              goto LABEL_12;
            }

            goto LABEL_35;
          }

          v85 = v57;
          v86 = v182;
          v87 = v173;
          sub_1B603A944(v182, v173, v85, &unk_1B6226620);
          OUTLINED_FUNCTION_6_1(v86 + v79);
          if (v88)
          {
            (*v169)(v87, v83);
            v57 = &qword_1EB924EF8;
            v36 = v172;
LABEL_35:
            sub_1B620E044(v182, &qword_1EB925E08, &qword_1B622C8D8);
            v4 = v180;
            v63 = v181;
            v64 = v179;
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_170_0();
          v90 = *(v89 - 256);
          v91(v90);
          OUTLINED_FUNCTION_99_2();
          sub_1B60715EC(&qword_1EDAB0400, v92, MEMORY[0x1E6969BD8]);
          LODWORD(v168) = sub_1B62211A4();
          v93 = *v169;
          (*v169)(v90, v83);
          v93(v173, v83);
          v57 = &qword_1EB924EF8;
          OUTLINED_FUNCTION_203_0();
          sub_1B620E044(v94, v95, v96);
          v4 = v180;
          v63 = v181;
          v36 = v172;
          v64 = v179;
          if (v168)
          {
            goto LABEL_56;
          }
        }
      }

LABEL_37:
      ++v62;
      ++v65;
    }
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v132 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v132, qword_1EDAC2AB0);
  swift_bridgeObjectRetain_n();
  v133 = sub_1B6220B14();
  sub_1B62217F4();
  v134 = OUTLINED_FUNCTION_78_1();
  if (os_log_type_enabled(v134, v135))
  {
    OUTLINED_FUNCTION_8_2();
    v136 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v137 = swift_slowAlloc();
    v183[0] = v137;
    OUTLINED_FUNCTION_37_7(7.2226e-34);
    v138 = sub_1B6220784();
    v139 = MEMORY[0x1B8C906E0](v138, v178);
    v141 = v140;

    v142 = sub_1B602EEB0(v139, v141, v183);

    *(v136 + 14) = v142;
    *(v136 + 22) = 2048;
    v143 = *(v55 + 16);

    *(v136 + 24) = v143;

    OUTLINED_FUNCTION_140_0();
    _os_log_impl(v144, v145, v146, v147, v148, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v137);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_1B6220784();
  v149 = OUTLINED_FUNCTION_136_0();
  sub_1B61E8684(v149, v150, v151);
  OUTLINED_FUNCTION_222();

  *(swift_allocObject() + 16) = v55;
  v152 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251C8, &unk_1B622CB20);
  sub_1B6220944();

  OUTLINED_FUNCTION_117();
}

void sub_1B61E9CF0(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WeatherRequestOptions(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a1[1];
  type metadata accessor for WeatherServiceRequestLocation(0);
  sub_1B60B19E8();
  v11 = sub_1B60668B4(a2, v8, v9, v10);
  v13 = v12;
  sub_1B620B850();
  LOBYTE(v8) = sub_1B60800F4(v11, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8, &qword_1B6226820);
  v15 = v14;
  if (v8)
  {
    v16 = (a3 + *(v14 + 48));
    sub_1B6036A80(a1, a3);
    *v16 = v11;
    v16[1] = v13;
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v14);
  }
}

void sub_1B61E9E80(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8, &qword_1B6226820);
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = (&v24 - v7);
  v9 = *a1;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v25 = *a1;
    v26 = a3;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B60AA5D0(0, v10, 0);
    v11 = v30;
    v12 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v27 = *(v6 + 72);
    do
    {
      sub_1B603A944(v12, v8, &qword_1EB9249D8, &qword_1B6226820);
      v13 = *v8;
      v14 = v8[1];
      type metadata accessor for WeatherModel(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
      sub_1B604D954();
      v15 = v29;
      v16 = sub_1B6221114();
      v29 = v15;
      sub_1B620E044(v8, &qword_1EB9249D8, &qword_1B6226820);
      v30 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B60AA5D0(v17 > 1, v18 + 1, 1);
        v11 = v30;
      }

      *(v11 + 16) = v18 + 1;
      v19 = (v11 + 24 * v18);
      v19[4] = v13;
      v19[5] = v14;
      v19[6] = v16;
      v12 += v27;
      --v10;
    }

    while (v10);
    v9 = v25;
    a3 = v26;
  }

  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v20 = sub_1B6220B34();
  __swift_project_value_buffer(v20, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  v21 = sub_1B6220B14();
  v22 = sub_1B62217F4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = *(v11 + 16);

    *(v23 + 12) = 2048;
    *(v23 + 14) = *(v9 + 16);

    _os_log_impl(&dword_1B6020000, v21, v22, "Got batch location data from server, merging. cacheEntries=%ld, serverEntries=%ld", v23, 0x16u);
    MEMORY[0x1B8C91C90](v23, -1, -1);
  }

  else
  {
  }

  v30 = v9;
  sub_1B6220784();
  sub_1B608F5C0(v11);
  *a3 = v30;
}

uint64_t sub_1B61EA1F0(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_58();
  v5 = OUTLINED_FUNCTION_3();
  v6 = type metadata accessor for WeatherRequestOptions(v5);
  if (*(a2 + *(v6 + 64)))
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v22 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v22, qword_1EDAC2AB0);
    v8 = sub_1B6220B14();
    v9 = sub_1B62217F4();
    v23 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_110();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v13 = swift_slowAlloc();
      v98[0] = v13;
      *v12 = 141558275;
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_184_0(v25);
      v29 = OUTLINED_FUNCTION_186_0(v26, v27, v28);
      v31 = sub_1B602EEB0(v29, v30, v98);

      *(v12 + 14) = v31;
      v21 = "About to attempt retrieving cached data (policy allows expired data); location=%{private,mask.hash}s";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v7 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v7, qword_1EDAC2AB0);
    v8 = sub_1B6220B14();
    v9 = sub_1B62217F4();
    v10 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_110();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v13 = swift_slowAlloc();
      v98[0] = v13;
      *v12 = 141558275;
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_184_0(v14);
      v18 = OUTLINED_FUNCTION_186_0(v15, v16, v17);
      v20 = sub_1B602EEB0(v18, v19, v98);

      *(v12 + 14) = v20;
      v21 = "About to attempt retrieving cached data (policy disallows expired data); location=%{private,mask.hash}s";
LABEL_10:
      _os_log_impl(&dword_1B6020000, v8, v9, v21, v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      v32 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v32);
    }
  }

  if (*(a2 + *(v6 + 80)) == 1)
  {
    OUTLINED_FUNCTION_17_2();
    v33 = sub_1B6070128(a2);
    v35 = v34;
    if (qword_1EDAAF1F0 != -1)
    {
      swift_once();
    }

    v93 = xmmword_1EDAAF1F8;
    v94 = qword_1EDAAF208;
    v97 = byte_1EDAAF216;
    v96 = word_1EDAAF214;
    v95 = dword_1EDAAF210;
    v36 = sub_1B61EA864(v33, v35, &v93);
    v38 = v37;
    v40 = v39;

    if (v40)
    {
      if (qword_1EDAB3D80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v41 = sub_1B6220B34();
      OUTLINED_FUNCTION_225(v41, qword_1EDAC2AB0);
      v42 = sub_1B6220B14();
      v43 = sub_1B62217E4();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_110();
        v44 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v45 = swift_slowAlloc();
        v98[0] = v45;
        *v44 = 141558275;
        OUTLINED_FUNCTION_37_5();
        *(v44 + 4) = v46;
        *(v44 + 12) = 2081;
        *&v93 = v3;
        *(&v93 + 1) = v2;
        type metadata accessor for CLLocationCoordinate2D(0);
        v50 = OUTLINED_FUNCTION_186_0(v47, v48, v49);
        v52 = sub_1B602EEB0(v50, v51, v98);

        *(v44 + 14) = v52;
        OUTLINED_FUNCTION_209(&dword_1B6020000, v53, v54, "Couldn't retrieve cached data requiring marine data because no cached marine location could be found; location=%{private,mask.hash}s");
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
      }

      return 0;
    }

    v3 = v36;
    v2 = v38;
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v55 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v55, qword_1EDAC2AB0);
    v56 = sub_1B6220B14();
    v57 = sub_1B62217F4();
    v58 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_110();
      v60 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v61 = swift_slowAlloc();
      v98[0] = v61;
      *v60 = 141558275;
      OUTLINED_FUNCTION_37_5();
      *(v60 + 4) = v62;
      *(v60 + 12) = 2081;
      *&v93 = v36;
      *(&v93 + 1) = v38;
      type metadata accessor for CLLocationCoordinate2D(0);
      v66 = OUTLINED_FUNCTION_186_0(v63, v64, v65);
      v68 = sub_1B602EEB0(v66, v67, v98);

      *(v60 + 14) = v68;
      _os_log_impl(&dword_1B6020000, v56, v57, "Using cached marine location for cache request; location=%{private,mask.hash}s", v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }
  }

  v69 = OUTLINED_FUNCTION_17_2();
  v72 = sub_1B60668B4(v70, a2, v69, v71);
  if ((sub_1B60800F4(v72, v73) & 1) == 0)
  {

    return 0;
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v74 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v74, qword_1EDAC2AB0);
  v75 = sub_1B6220B14();
  sub_1B62217F4();
  v76 = OUTLINED_FUNCTION_78_1();
  if (os_log_type_enabled(v76, v77))
  {
    OUTLINED_FUNCTION_110();
    v78 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v79 = swift_slowAlloc();
    v98[0] = v79;
    OUTLINED_FUNCTION_37_7(7.2225e-34);
    *&v93 = v3;
    *(&v93 + 1) = v2;
    type metadata accessor for CLLocationCoordinate2D(0);
    v83 = OUTLINED_FUNCTION_186_0(v80, v81, v82);
    sub_1B602EEB0(v83, v84, v98);
    OUTLINED_FUNCTION_204_0();

    *(v78 + 14) = &unk_1EDAB3000;
    OUTLINED_FUNCTION_140_0();
    _os_log_impl(v85, v86, v87, v88, v89, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v79);
    v90 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v90);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v91 = type metadata accessor for WeatherModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  sub_1B604D954();
  OUTLINED_FUNCTION_87_1();
  sub_1B6221114();
  OUTLINED_FUNCTION_467();

  return v91;
}

uint64_t sub_1B61EA864(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50, &unk_1B6226F30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v51 = sub_1B6220BD4();
  v9 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v49 = *(a3 + 8);
  v50 = v12;
  v48 = *(a3 + 16);
  LODWORD(v47) = *(a3 + 30);
  LODWORD(v46) = *(a3 + 28);
  v45 = *(a3 + 24);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v52 = a1;
  v13 = sub_1B6220B34();
  __swift_project_value_buffer(v13, qword_1EDAC2AB0);
  sub_1B6220784();
  v14 = sub_1B6220B14();
  v15 = sub_1B62217F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v44 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v60 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v19 = a2;
    *(v17 + 14) = sub_1B602EEB0(v52, a2, &v60);
    _os_log_impl(&dword_1B6020000, v14, v15, "Attempting to retrieve marineLocation from cache; identifier=%{private,mask.hash}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1B8C91C90](v18, -1, -1);
    v9 = v44;
    MEMORY[0x1B8C91C90](v17, -1, -1);
  }

  else
  {
    v19 = a2;
  }

  v20 = sub_1B6067284();
  if (!v20)
  {
    v24 = sub_1B6220B14();
    v25 = sub_1B62217F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B6020000, v24, v25, "Cannot retrieve cached marineLocation due to missing store", v26, 2u);
      MEMORY[0x1B8C91C90](v26, -1, -1);
    }

    return 0;
  }

  v21 = v20;
  sub_1B6220D44();
  v63 = MEMORY[0x1E69E6158];
  v64 = MEMORY[0x1E69D62D8];
  v60 = v52;
  v61 = v19;
  v22 = v19;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(&v60);
  v23 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v23);
  sub_1B6220D14();

  sub_1B620E044(v8, &qword_1EB924B50, &unk_1B6226F30);
  (*(v9 + 8))(v11, v51);
  v27 = v53;
  if (!v53)
  {
    sub_1B6220784();
    v35 = sub_1B6220B14();
    v36 = sub_1B62217F4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60 = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      *(v37 + 14) = sub_1B602EEB0(v52, v22, &v60);
      _os_log_impl(&dword_1B6020000, v35, v36, "Could not find marineLocation data in cache; identifier=%{private,mask.hash}s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1B8C91C90](v38, -1, -1);
      MEMORY[0x1B8C91C90](v37, -1, -1);
    }

    return 0;
  }

  v44 = v21;
  v28 = v54;
  v30 = v56;
  v29 = v57;
  v31 = v58;
  v60 = v53;
  v61 = v54;
  v47 = v55;
  v62 = v55;
  v63 = v56;
  v64 = v57;
  v65 = v58;
  v51 = v59;
  v66 = v59;
  v32 = sub_1B61DA580(v50, v49, v48, v45);
  if (v33)
  {
    sub_1B60729F4(v27, v28, v47, v30, v29, v31, v51);
  }

  else
  {
    v45 = v28;
    v46 = v30;
    v48 = v27;
    v49 = v29;
    v50 = v31;
    sub_1B6220784();
    v39 = sub_1B6220B14();
    v40 = sub_1B62217F4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53 = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v52, v22, &v53);
      _os_log_impl(&dword_1B6020000, v39, v40, "Successfully retrieved marineLocation from cache; identifier=%{private,mask.hash}s", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    sub_1B60729F4(v48, v45, v47, v46, v49, v50, v51);
  }

  return v32;
}

void sub_1B61EB068()
{
  OUTLINED_FUNCTION_116();
  v1 = v0;
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50, &unk_1B6226F30);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v54 - v10;
  v12 = sub_1B6220BD4();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v19 = sub_1B6067284();
  if (v19)
  {
    v20 = v19;
    sub_1B6220D44();
    OUTLINED_FUNCTION_17_2();
    v21 = CLLocationCoordinate2D.cacheKey.getter();
    v63 = MEMORY[0x1E69E6158];
    v64 = MEMORY[0x1E69D62D8];
    v61 = v21;
    v62 = v22;
    OUTLINED_FUNCTION_192_0();
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v61);
    sub_1B6220DD4();
    v23 = OUTLINED_FUNCTION_33_7();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    v57 = sub_1B6220D24();
    v54[0] = v7;
    v54[1] = v20;
    v54[2] = v3;

    sub_1B620E044(v11, &qword_1EB924B50, &unk_1B6226F30);
    (*(v14 + 8))(v18, v12);
    v31 = *(v1 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v61 = MEMORY[0x1E69E7CC0];
      sub_1B603C6EC(0, v31, 0);
      v33 = (v1 + 32);
      v32 = v61;
      v34 = 0x80000001B623B170;
      v35 = 0x80000001B623B130;
      do
      {
        v36 = *v33++;
        v37 = 0xEA00000000007974;
        v38 = 0x696C617551726961;
        switch(v36)
        {
          case 1:
            v38 = 0x57746E6572727563;
            v37 = 0xEE00726568746165;
            break;
          case 2:
            v38 = 0x7473616365726F66;
            v37 = 0xED0000796C696144;
            break;
          case 3:
            v38 = 0x7473616365726F66;
            v37 = 0xEE00796C72756F48;
            break;
          case 4:
            v38 = 0xD000000000000010;
            v37 = 0x80000001B623B110;
            break;
          case 5:
            v38 = 0xD000000000000010;
            v37 = v35;
            break;
          case 6:
            v38 = 0x6E6F697461636F6CLL;
            v37 = 0xEC0000006F666E49;
            break;
          case 7:
            v38 = 0x6F46656E6972616DLL;
            v37 = 0xEE00747361636572;
            break;
          case 8:
            v37 = 0xE400000000000000;
            v38 = 1937204590;
            break;
          case 9:
            v38 = 0x4172656874616577;
            v37 = 0xED0000737472656CLL;
            break;
          case 10:
            v38 = 0x4372656874616577;
            v37 = 0xED000065676E6168;
            break;
          case 11:
            v38 = 0x4372656874616577;
            v37 = 0xEE007365676E6168;
            break;
          case 12:
            v38 = 0x6E65764565646974;
            v37 = 0xEA00000000007374;
            break;
          case 13:
            v38 = 0x6D6F43646E657274;
            v37 = 0xEF6E6F7369726170;
            break;
          case 14:
            v38 = 0xD000000000000015;
            v37 = v34;
            break;
          case 15:
            v38 = 0x6369726F74736968;
            v37 = 0xEF73746361466C61;
            break;
          default:
            break;
        }

        v61 = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          v55 = v35;
          v56 = v34;
          sub_1B603C6EC(v39 > 1, v40 + 1, 1);
          v35 = v55;
          v34 = v56;
          v32 = v61;
        }

        *(v32 + 16) = v40 + 1;
        v41 = v32 + 16 * v40;
        *(v41 + 32) = v38;
        *(v41 + 40) = v37;
        --v31;
      }

      while (v31);
    }

    sub_1B61DE7B0(v32);
    v42 = 0;
    v43 = v57;
    v55 = *(v57 + 16);
    v56 = v44;
    for (i = v57 + 64; ; i += 40)
    {
      if (v55 == v42)
      {

        sub_1B621D8F4();
        goto LABEL_4;
      }

      if (v42 >= *(v43 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v46 = *(i - 8);

      sub_1B6220D84();
      if (!v62)
      {
        goto LABEL_37;
      }

      v60[0] = v61;
      v60[1] = v62;
      v58 = 44;
      v59 = 0xE100000000000000;
      sub_1B602C004();
      sub_1B6221A44();
      OUTLINED_FUNCTION_248();

      sub_1B61DE7B0(v60);
      sub_1B61030FC(v47, v56);
      v49 = v48;

      if (v49)
      {
        break;
      }

      ++v42;
      v43 = v57;
    }

    sub_1B6220D84();
    sub_1B621D8F4();
    v50 = OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_6_1(v50);
    if (!v51)
    {

      OUTLINED_FUNCTION_10_6();
      v52 = OUTLINED_FUNCTION_175_0();
      v53(v52);
      OUTLINED_FUNCTION_18();
      v30 = v46;
      goto LABEL_5;
    }

LABEL_38:
    __break(1u);
  }

  else
  {
    sub_1B621D8F4();
    OUTLINED_FUNCTION_144_0();
LABEL_4:
    OUTLINED_FUNCTION_3_10();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_117();
  }
}

void sub_1B61EB85C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58();
  sub_1B614A528();
  if (!v2)
  {
    v5 = OUTLINED_FUNCTION_17_2();
    sub_1B61EB9FC(v6, v7, a2, v5, v8);

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AB0);
    v10 = sub_1B6220B14();
    v11 = sub_1B62217F4();
    v12 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_110();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 141558275;
      OUTLINED_FUNCTION_37_5();
      *(v14 + 4) = v16;
      *(v14 + 12) = 2081;
      type metadata accessor for CLLocationCoordinate2D(0);
      v17 = sub_1B6221234();
      sub_1B602EEB0(v17, v18, &v22);
      OUTLINED_FUNCTION_204_0();

      *(v14 + 14) = v3;
      _os_log_impl(&dword_1B6020000, v10, v11, "insertIntoCache: %{private,mask.hash}s: Inserted successfully", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v19 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v19);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90](v20, v21);
    }
  }
}

uint64_t sub_1B61EB9FC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927BA0, &unk_1B6239E50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = type metadata accessor for WeatherDataManager.CacheProcessingRequest(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  sub_1B6036A80(a3, &v22 + *(v20 + 36) - v18);
  *v19 = a1;
  *(v19 + 1) = a2;
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  if (*(a3 + *(type metadata accessor for WeatherRequestOptions(0) + 92)) == 1)
  {
    sub_1B6036A80(v19, v16);
    sub_1B6220784();
    sub_1B6220784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925170, &qword_1B62268B8);
    sub_1B6221664();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_1B6220784();
    sub_1B6220784();
    sub_1B61EE0B8(v19);
  }

  return sub_1B620B850();
}

uint64_t sub_1B61EBC30@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return sub_1B60FFD84(&v8, a2, a3, a4);
}

uint64_t sub_1B61EBCB4(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  v2 = a1[1].n128_u8[8];
  v3 = a1[1].n128_u8[9];
  v5 = *a1;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  return sub_1B6100664(v5.n128_f64, v5);
}

void sub_1B61EBD0C()
{
  if (sub_1B6067284())
  {
    WeatherDataStore.purgeExpiredData()();
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v0 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v0, qword_1EDAC2AB0);
    oslog = sub_1B6220B14();
    v1 = sub_1B62217F4();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = OUTLINED_FUNCTION_226_0();
      *v2 = 0;
      _os_log_impl(&dword_1B6020000, oslog, v1, "Cannot purge expired data due to missing store", v2, 2u);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }
  }
}

void sub_1B61EBE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherRequestOptions(0);
  if (*(a1 + *(v4 + 80)) == 1)
  {
    MEMORY[0x1EEE9AC00](v4);
    sub_1B60B4B20();
    if (*(v5 + 16) == *(a2 + 16))
    {
      sub_1B6147E38();
    }

    else
    {

      sub_1B6147E38();
    }
  }

  else
  {
    sub_1B6147E38();
  }
}

double sub_1B61EBF50@<D0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_1B6070128(a2);
  v7 = v6;
  if (qword_1EDAAF1F0 != -1)
  {
    swift_once();
  }

  v18 = xmmword_1EDAAF1F8;
  v19 = qword_1EDAAF208;
  v22 = byte_1EDAAF216;
  v21 = word_1EDAAF214;
  v20 = dword_1EDAAF210;
  v8 = sub_1B61EA864(v5, v7, &v18);
  v10 = v9;
  v12 = v11;

  if (v12)
  {
    v13 = type metadata accessor for WeatherServiceRequestLocation(0);
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v13);
  }

  else
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = type metadata accessor for WeatherServiceRequestLocation(0);
    sub_1B603A944(a1 + *(v17 + 24), a3 + *(v17 + 24), &qword_1EB924EF8, &unk_1B6226620);
    *a3 = v8;
    a3[1] = v10;
    a3[2] = v16;
    a3[3] = v15;
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v17);
    sub_1B6220784();
  }

  return result;
}

void sub_1B61EC0B0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v70 = a3;
  v76 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  v80 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v6 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C00, &qword_1B6239EF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = *a1;
  v68 = v72[2];
  if (!v68)
  {
LABEL_31:
    v88 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E50, &unk_1B622CB30);
    swift_allocObject();
    sub_1B6220784();
    sub_1B6220994();
    return;
  }

  v14 = 0;
  v69 = v72 + 4;
  v13.n128_u64[0] = 136446723;
  v77 = v13;
  v85 = &v67 - v12;
  v86 = v6;
  while (2)
  {
    if (v14 < v72[2])
    {
      v15 = &v69[3 * v14];
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v15 + 2);
      v73 = v14 + 1;
      sub_1B6220784();
      sub_1B61EB9FC(v70, v18, v71, *&v16, v17);
      v19 = 0;
      v21 = v18 + 64;
      v20 = *(v18 + 64);
      v82 = v18 + 64;
      v83 = v18;
      v22 = 1 << *(v18 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & v20;
      v25 = (v22 + 63) >> 6;
      v26 = v87;
      v81 = v25;
      while (1)
      {
        if (!v24)
        {
          while (1)
          {
            v27 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v27 >= v25)
            {
              v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010, &unk_1B62265E0);
              __swift_storeEnumTagSinglePayload(v26, 1, 1, v66);
              v24 = 0;
              goto LABEL_15;
            }

            v24 = *(v21 + 8 * v27);
            ++v19;
            if (v24)
            {
              v19 = v27;
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v27 = v19;
LABEL_14:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = v28 | (v27 << 6);
        v30 = *(*(v83 + 48) + v29);
        v31 = v79;
        sub_1B603A944(*(v83 + 56) + *(v80 + 72) * v29, v79, &qword_1EB925000, &qword_1B62265D0);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010, &unk_1B62265E0);
        v33 = *(v32 + 48);
        v34 = v87;
        *v87 = v30;
        v26 = v34;
        sub_1B603D3DC(v31, &v34[v33], &qword_1EB925000, &qword_1B62265D0);
        __swift_storeEnumTagSinglePayload(v26, 0, 1, v32);
        v25 = v81;
        v21 = v82;
LABEL_15:
        v35 = v26;
        v36 = v85;
        sub_1B603D3DC(v35, v85, &qword_1EB927C00, &qword_1B6239EF8);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010, &unk_1B62265E0);
        if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
        {
          break;
        }

        v38 = v36;
        v39 = *v36;
        v40 = v86;
        sub_1B603D3DC(&v38[*(v37 + 48)], v86, &qword_1EB925000, &qword_1B62265D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v88 = *v40;
          v41 = v88;
          v42 = v88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
          if (swift_dynamicCast())
          {
            LODWORD(v43) = v90;
            if (qword_1EDAB3D80 != -1)
            {
              swift_once();
            }

            v44 = sub_1B6220B34();
            __swift_project_value_buffer(v44, qword_1EDAC2AB0);
            v45 = sub_1B6220B14();
            v46 = sub_1B62217E4();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v90 = v75;
              *v47 = v77.n128_u32[0];
              LOBYTE(v88) = v43;
              v48 = sub_1B6221234();
              v74 = v46;
              v50 = sub_1B602EEB0(v48, v49, &v90);
              LODWORD(v78) = v43;
              v51 = v50;

              *(v47 + 4) = v51;
              *(v47 + 12) = 2160;
              *(v47 + 14) = 1752392040;
              *(v47 + 22) = 2081;
              v88 = v16;
              v89 = v17;
              type metadata accessor for CLLocationCoordinate2D(0);
              v52 = sub_1B6221234();
              v43 = sub_1B602EEB0(v52, v53, &v90);

              *(v47 + 24) = v43;
              LOBYTE(v43) = v78;
              _os_log_impl(&dword_1B6020000, v45, v74, "Invalid weather data from WDS; clearing cache; error=%{public}s; location=%{private,mask.hash}s", v47, 0x20u);
              v54 = v75;
              swift_arrayDestroy();
              MEMORY[0x1B8C91C90](v54, -1, -1);
              MEMORY[0x1B8C91C90](v47, -1, -1);
            }

            v26 = v87;
            LOBYTE(v88) = v43;
            sub_1B61EC8B8(&v88);
          }

          else
          {

            v26 = v87;
          }
        }

        else
        {
          if (qword_1EDAB3D80 != -1)
          {
            swift_once();
          }

          v55 = sub_1B6220B34();
          __swift_project_value_buffer(v55, qword_1EDAC2AB0);
          v56 = sub_1B6220B14();
          v57 = sub_1B62217F4();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v90 = v78;
            *v58 = v77.n128_u32[0];
            LOBYTE(v88) = v39;
            v59 = sub_1B6221234();
            v61 = sub_1B602EEB0(v59, v60, &v90);

            *(v58 + 4) = v61;
            *(v58 + 12) = 2160;
            *(v58 + 14) = 1752392040;
            *(v58 + 22) = 2081;
            v88 = v16;
            v89 = v17;
            type metadata accessor for CLLocationCoordinate2D(0);
            v62 = sub_1B6221234();
            v64 = sub_1B602EEB0(v62, v63, &v90);

            *(v58 + 24) = v64;
            _os_log_impl(&dword_1B6020000, v56, v57, "Weather data fetched from WDS and stored in cache; product=%{public}s; location=%{private,mask.hash}s", v58, 0x20u);
            v65 = v78;
            swift_arrayDestroy();
            MEMORY[0x1B8C91C90](v65, -1, -1);
            MEMORY[0x1B8C91C90](v58, -1, -1);
          }

          v26 = v87;
          sub_1B620B850();
        }
      }

      v14 = v73;
      if (v73 != v68)
      {
        continue;
      }

      goto LABEL_31;
    }

    break;
  }

LABEL_33:
  __break(1u);
}

void sub_1B61EC8B8(char *a1)
{
  switch(*a1)
  {
    case 0:
      if (sub_1B6067284())
      {
        sub_1B61A66A4();
        break;
      }

      return;
    case 1:
      if (sub_1B6067284())
      {
        sub_1B61A6800();
        break;
      }

      return;
    case 2:
      v1 = sub_1B61A695C;
      v2 = 1;
      goto LABEL_20;
    case 3:
      v1 = sub_1B61A6BB8;
      v2 = 0;
LABEL_20:
      sub_1B620AE9C(v1, v2, sub_1B61A7A50);
      return;
    case 4:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A70CC();
      break;
    case 6:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A6E14();
      break;
    case 8:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A6F70();
      break;
    case 9:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A7228();
      break;
    case 10:
    case 11:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A7384();
      break;
    case 13:
    case 14:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A74E0();
      break;
    case 15:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A763C();
      break;
    default:
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v3 = sub_1B6220B34();
      __swift_project_value_buffer(v3, qword_1EDAC2AB0);
      oslog = sub_1B6220B14();
      v4 = sub_1B62217F4();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v11 = v6;
        *v5 = 141558275;
        *(v5 + 4) = 1752392040;
        *(v5 + 12) = 2081;
        v7 = sub_1B6221234();
        v9 = sub_1B602EEB0(v7, v8, &v11);

        *(v5 + 14) = v9;
        _os_log_impl(&dword_1B6020000, oslog, v4, "Unknown default; skipping clear cache; error=%{private,mask.hash}s", v5, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v6);
        MEMORY[0x1B8C91C90](v6, -1, -1);
        MEMORY[0x1B8C91C90](v5, -1, -1);
      }

      else
      {
      }

      return;
  }
}

void sub_1B61ECBB8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_1B621D8F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6220BD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v50 - v20;
  v21 = sub_1B6067284();
  if (v21)
  {
    v22 = v21;
    v56 = v14;
    v57 = v13;
    v58 = v12;
    v59 = v10;
    v60 = v9;
    v23 = *(v4 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheObservationManager);
    sub_1B6100728(a1, a2, a3, a4);
    v24 = CLLocationCoordinate2D.cacheKey.getter();
    v65 = v25;
    v66 = v24;
    v26 = MEMORY[0x1E69E6158];
    v27 = sub_1B6221504();
    v28 = *(v27 + 16);
    v62 = a2;
    v63 = a1;
    v61 = v23;
    if (v28)
    {
      v54 = v16;
      v55 = v22;
      *&v71 = MEMORY[0x1E69E7CC0];
      sub_1B603C6EC(0, v28, 0);
      v29 = 0x4372656874616577;
      v30 = v71;
      v31 = 0x80000001B623B170;
      v32 = 0x80000001B623B130;
      v33 = 0x80000001B623B110;
      v34 = 32;
      do
      {
        v35 = 0xEA00000000007974;
        v36 = 0x696C617551726961;
        switch(*(v27 + v34))
        {
          case 1:
            v36 = 0x57746E6572727563;
            v35 = 0xEE00726568746165;
            break;
          case 2:
            v36 = 0x7473616365726F66;
            v35 = 0xED0000796C696144;
            break;
          case 3:
            v36 = 0x7473616365726F66;
            v35 = 0xEE00796C72756F48;
            break;
          case 4:
            v36 = 0xD000000000000010;
            v35 = v33;
            break;
          case 5:
            v36 = 0xD000000000000010;
            v35 = v32;
            break;
          case 6:
            v36 = 0x6E6F697461636F6CLL;
            v35 = 0xEC0000006F666E49;
            break;
          case 7:
            v36 = 0x6F46656E6972616DLL;
            v35 = 0xEE00747361636572;
            break;
          case 8:
            v35 = 0xE400000000000000;
            v36 = 1937204590;
            break;
          case 9:
            v36 = 0x4172656874616577;
            v35 = 0xED0000737472656CLL;
            break;
          case 0xA:
            v36 = v29;
            v35 = 0xED000065676E6168;
            break;
          case 0xB:
            v36 = v29;
            v35 = 0xEE007365676E6168;
            break;
          case 0xC:
            v36 = 0x6E65764565646974;
            v35 = 0xEA00000000007374;
            break;
          case 0xD:
            v36 = 0x6D6F43646E657274;
            v35 = 0xEF6E6F7369726170;
            break;
          case 0xE:
            v36 = 0xD000000000000015;
            v35 = v31;
            break;
          case 0xF:
            v36 = 0x6369726F74736968;
            v35 = 0xEF73746361466C61;
            break;
          default:
            break;
        }

        *&v71 = v30;
        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        if (v38 >= v37 >> 1)
        {
          v40 = v29;
          v53 = v31;
          v52 = v32;
          v51 = v33;
          sub_1B603C6EC(v37 > 1, v38 + 1, 1);
          v33 = v51;
          v32 = v52;
          v31 = v53;
          v29 = v40;
          v30 = v71;
        }

        *(v30 + 16) = v38 + 1;
        v39 = v30 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35;
        ++v34;
        --v28;
      }

      while (v28);

      v16 = v54;
      v26 = MEMORY[0x1E69E6158];
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    *&v71 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68, &qword_1B622B910);
    sub_1B60358B4();
    v41 = sub_1B6221174();
    v43 = v42;

    sub_1B6220D64();
    v44 = MEMORY[0x1E69D62D8];
    *(&v72 + 1) = v26;
    v73 = MEMORY[0x1E69D62D8];
    *&v71 = v66;
    *(&v71 + 1) = v65;
    sub_1B6220784();
    v45 = v64;
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v71);
    *(&v72 + 1) = v26;
    v73 = v44;
    *&v71 = v41;
    *(&v71 + 1) = v43;
    sub_1B6220784();
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v71);
    sub_1B6220CC4();
    v46 = *(v56 + 8);
    v47 = v57;
    v46(v16, v57);
    v46(v45, v47);
    sub_1B6220DC4();
    v48 = v62;

    v46(v67, v47);
    sub_1B6220D34();
    v49 = v58;
    (*(v59 + 16))(v58, v48, v60);
    sub_1B61A19CC(v66, v65, v49, v41, v43, &v71, a3, a4);
    v68 = v71;
    v69 = v72;
    v70 = v73;
    sub_1B6220D04();

    sub_1B6101088();
  }
}

unint64_t sub_1B61ED424@<X0>(unint64_t *a1@<X8>)
{
  result = WeatherProduct.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B61ED460(uint64_t *a1, uint64_t a2, void *a3, NSObject *a4, uint64_t a5, double a6, double a7)
{
  v67 = a4;
  v68 = a5;
  v65 = a3;
  v66 = a2;
  v63 = type metadata accessor for InterpolationInputProducts(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0, &qword_1B6226B80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v63 - v12;
  v13 = type metadata accessor for DailyForecast(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HourlyForecast(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v73 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for WeatherModel(0);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v63 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251E0, &qword_1B6239F10);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v63 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v63 - v35;
  v37 = *a1;
  sub_1B60C4E98(3, v37, &v63 - v35);
  v38 = v33;
  sub_1B60C4E98(2, v37, v33);
  sub_1B603A944(v36, v30, &qword_1EB9251E0, &qword_1B6239F10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v39) == 1)
  {
    v40 = &qword_1EB9251E0;
    v41 = &qword_1B6239F10;
LABEL_5:
    sub_1B620E044(v30, v40, v41);
LABEL_6:
    v42 = v38;
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = &qword_1EB925000;
    v41 = &qword_1B62265D0;
    goto LABEL_5;
  }

  v50 = v74;
  sub_1B605A29C(v30, v74);
  sub_1B6036A80(v50, v22);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B620B850();
    sub_1B620B850();
    goto LABEL_6;
  }

  v51 = v73;
  sub_1B605A29C(v22, v73);
  v42 = v38;
  sub_1B603A944(v38, v27, &qword_1EB9251E0, &qword_1B6239F10);
  if (__swift_getEnumTagSinglePayload(v27, 1, v39) == 1)
  {
    sub_1B620B850();
    sub_1B620B850();
    v52 = &qword_1EB9251E0;
    v53 = &qword_1B6239F10;
LABEL_19:
    sub_1B620E044(v27, v52, v53);
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B620B850();
    sub_1B620B850();
    v52 = &qword_1EB925000;
    v53 = &qword_1B62265D0;
    goto LABEL_19;
  }

  v54 = v72;
  sub_1B605A29C(v27, v72);
  v55 = v71;
  sub_1B6036A80(v54, v71);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v56 = v69;
    sub_1B605A29C(v55, v69);
    v57 = v70;
    sub_1B61EDDB8(v37, v70);
    v58 = v64;
    sub_1B6036A80(v51, v64);
    v59 = v63;
    sub_1B6036A80(v56, v58 + *(v63 + 20));
    sub_1B603A944(v57, v58 + *(v59 + 24), &qword_1EB924EA0, &qword_1B6226B80);
    v60 = sub_1B61E6E38(v58, v65, v67, v68, a6, a7);
    sub_1B620B850();
    if (v60)
    {
      v76 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8, &unk_1B6226B70);
      swift_allocObject();
      v61 = sub_1B6220994();
    }

    else
    {
      sub_1B60BE750();
      swift_allocError();
      *v62 = 0xD00000000000004CLL;
      v62[1] = 0x80000001B623CC00;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8, &unk_1B6226B70);
      swift_allocObject();
      v61 = sub_1B6220984();
    }

    v48 = v61;
    sub_1B620E044(v57, &qword_1EB924EA0, &qword_1B6226B80);
    sub_1B620B850();
    sub_1B620B850();
    sub_1B620B850();
    sub_1B620B850();
    goto LABEL_12;
  }

  sub_1B620B850();
  sub_1B620B850();
  sub_1B620B850();
  sub_1B620B850();
LABEL_7:
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v43 = sub_1B6220B34();
  __swift_project_value_buffer(v43, qword_1EDAC2AB0);
  v44 = sub_1B6220B14();
  v45 = sub_1B62217E4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1B6020000, v44, v45, "Hourly and Daily forecasts missing from WDS fetch, so cannot interpolate", v46, 2u);
    MEMORY[0x1B8C91C90](v46, -1, -1);
  }

  sub_1B60BE750();
  swift_allocError();
  *v47 = 0xD000000000000048;
  v47[1] = 0x80000001B623CBB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8, &unk_1B6226B70);
  swift_allocObject();
  v48 = sub_1B6220984();
LABEL_12:
  sub_1B620E044(v42, &qword_1EB9251E0, &qword_1B6239F10);
  sub_1B620E044(v36, &qword_1EB9251E0, &qword_1B6239F10);
  return v48;
}

uint64_t sub_1B61EDDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherModel(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251E0, &qword_1B6239F10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  if (*(a1 + 16) && (v16 = sub_1B6072A80(4), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = a2;
    v20 = *(a1 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
    v22 = v20 + *(*(v21 - 8) + 72) * v18;
    a2 = v19;
    sub_1B603A944(v22, v15, &qword_1EB925000, &qword_1B62265D0);
    v23 = v15;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
    v23 = v15;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  sub_1B603D3DC(v15, v12, &qword_1EB9251E0, &qword_1B6239F10);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v26) == 1)
  {
    v27 = &qword_1EB9251E0;
    v28 = &qword_1B6239F10;
LABEL_9:
    sub_1B620E044(v12, v27, v28);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = &qword_1EB925000;
    v28 = &qword_1B62265D0;
    goto LABEL_9;
  }

  sub_1B605A29C(v12, v9);
  sub_1B605A29C(v9, v6);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    return sub_1B603D3DC(v6, a2, &qword_1EB924EA0, &qword_1B6226B80);
  }

  sub_1B620B850();
LABEL_10:
  HourForecast = type metadata accessor for NextHourForecast(0);
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, HourForecast);
}

uint64_t sub_1B61EE0B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B621D8F4();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherModel(0);
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6220EC4();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6220A84();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6220B34();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SignpostInterval(0);
  MEMORY[0x1EEE9AC00](v48);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WeatherRequestOptions(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B61E4CFC();
  v54 = v23;
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  v26 = *(type metadata accessor for WeatherDataManager.CacheProcessingRequest(0) + 28);
  v42 = a1;
  sub_1B6036A80(a1 + v26, v22);
  v46 = v2;
  v27 = sub_1B6070128(v22);
  v29 = v28;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v14, qword_1EDAC2AB0);
  v31 = *(v15 + 16);
  v47 = v30;
  v31(v17);
  sub_1B6220A94();
  sub_1B6220AA4();
  sub_1B6220A64();
  sub_1B61EE7AC();
  v33 = v32;
  (*(v49 + 8))(v13, v50);
  *v19 = "processCacheRequestSync";
  *(v19 + 1) = 23;
  v19[16] = 2;
  *(v19 + 3) = v33;
  (*(v51 + 104))(v53, *MEMORY[0x1E69D62C0], v52);
  sub_1B6220EE4();
  swift_allocObject();
  sub_1B6220ED4();
  v34 = *(v54 + 16);
  if (v34)
  {
    v35 = v54 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v36 = *(v41 + 72);
    do
    {
      sub_1B6036A80(v35, v8);
      sub_1B61EF7A0(v8, v27, v29, v22, v24, v25);
      sub_1B620B850();
      v35 += v36;
      --v34;
    }

    while (v34);
  }

  v37 = *v42;
  type metadata accessor for WeatherClock();
  v38 = v43;
  static WeatherClock.date.getter();
  sub_1B61ECBB8(v37, v38, v24, v25);

  (*(v44 + 8))(v38, v45);
  SignpostInterval.end()();
  sub_1B620B850();
  return sub_1B620B850();
}

void sub_1B61EE7AC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8_18();
  v6 = sub_1B6220A84();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = sub_1B6220AA4();
  v14 = sub_1B6221934();
  if ((sub_1B62219C4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = v1;
  v21 = v14;
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
LABEL_9:
      OUTLINED_FUNCTION_110();
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v16 = swift_slowAlloc();
      *v15 = 141558275;
      OUTLINED_FUNCTION_37_5();
      *(v15 + 4) = v17;
      *(v15 + 12) = 2081;
      v23 = v18;
      sub_1B6221704();
      MEMORY[0x1B8C90530](8236, 0xE200000000000000);
      sub_1B6221704();
      v19 = sub_1B602EEB0(0, 0xE000000000000000, &v23);

      *(v15 + 14) = v19;
      v1 = v22;
      v20 = sub_1B6220A74();
      _os_signpost_emit_with_name_impl(&dword_1B6020000, v13, v21, v20, v5, "location %{private,mask.hash}s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
LABEL_10:

      (*(v8 + 16))(v12, v1, v6);
      sub_1B6220AF4();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      OUTLINED_FUNCTION_104();
      sub_1B6220AE4();
      OUTLINED_FUNCTION_117();
      return;
    }

    __break(1u);
  }

  if (v5 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v5 & 0xFFFFF800) != 0xD800)
  {
    if (v5 >> 16 <= 0x10)
    {
      v5 = &v24;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1B61EE9F8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 136) = a10;
  *(v10 + 144) = v16;
  *(v10 + 120) = a8;
  *(v10 + 128) = a9;
  *(v10 + 104) = a1;
  *(v10 + 112) = a2;
  *(v10 + 88) = a6;
  *(v10 + 96) = a7;
  *(v10 + 72) = a4;
  *(v10 + 80) = a5;
  v11 = *(type metadata accessor for WeatherRequestOptions(0) - 8);
  *(v10 + 152) = v11;
  *(v10 + 160) = *(v11 + 64);
  *(v10 + 168) = swift_task_alloc();
  v12 = *(type metadata accessor for WeatherModel(0) - 8);
  *(v10 + 176) = v12;
  *(v10 + 184) = *(v12 + 64);
  *(v10 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925160, &qword_1B6226970);
  *(v10 + 200) = swift_task_alloc();
  *(v10 + 208) = swift_task_alloc();
  v13 = sub_1B621D8F4();
  *(v10 + 216) = v13;
  *(v10 + 224) = *(v13 - 8);
  *(v10 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61EEBD4, 0, 0);
}

uint64_t sub_1B61EEBD4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 176);
    v41 = *(v0 + 152);
    v40 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v39 = *(v3 + 72);
    v38 = (v4 + 48) & ~v4;
    v37 = (*(v0 + 184) + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = sub_1B6221644();
    do
    {
      v45 = v2;
      v43 = *(v0 + 208);
      v44 = *(v0 + 200);
      v6 = *(v0 + 192);
      v7 = *(v0 + 168);
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);
      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      v12 = *(v0 + 88);
      v13 = *(v0 + 96);
      v42 = *(v0 + 120);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v46);
      OUTLINED_FUNCTION_98_3();
      v17 = OUTLINED_FUNCTION_302();
      sub_1B6036A80(v17, v18);
      OUTLINED_FUNCTION_29_12();
      sub_1B6036A80(v9, v7);
      v19 = (v36 + 16 + *(v41 + 80)) & ~*(v41 + 80);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v13;
      v20[5] = v12;
      OUTLINED_FUNCTION_97_2();
      sub_1B605A29C(v6, v21 + v38);
      v22 = (v20 + v37);
      *v22 = v11;
      v22[1] = v10;
      v23 = (v20 + v36);
      *v23 = v42;
      v23[1] = v8;
      OUTLINED_FUNCTION_96_1();
      sub_1B605A29C(v7, v20 + v19);
      sub_1B603A944(v43, v44, &qword_1EB925160, &qword_1B6226970);
      v24 = OUTLINED_FUNCTION_3_29();
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v24, v25, v46);

      sub_1B6220784();
      v26 = *(v0 + 200);
      if (v6 == 1)
      {
        sub_1B620E044(*(v0 + 200), &qword_1EB925160, &qword_1B6226970);
      }

      else
      {
        sub_1B6221634();
        (*(*(v46 - 8) + 8))(v26);
      }

      if (v20[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_51_4();
        v27 = sub_1B62215C4();
        v29 = v28;
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v30 = swift_allocObject();
      *(v30 + 16) = &unk_1B6239F60;
      *(v30 + 24) = v20;

      if (v29 | v27)
      {
        v31 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v27;
        *(v0 + 40) = v29;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v0 + 208);
      *(v0 + 48) = 1;
      *(v0 + 56) = v31;
      *(v0 + 64) = v40;
      swift_task_create();
      OUTLINED_FUNCTION_135();

      sub_1B620E044(v32, &qword_1EB925160, &qword_1B6226970);
      v5 += v39;
      v2 = v45 - 1;
    }

    while (v45 != 1);
  }

  v33 = swift_task_alloc();
  *(v0 + 240) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C70, &qword_1B6239F70);
  *v33 = v0;
  v33[1] = sub_1B61EEFE4;

  return MEMORY[0x1EEE6D898](0, 0, v34);
}

uint64_t sub_1B61EEFE4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1B61EF0C8()
{
  v1 = *(v0 + 232);
  v2 = **(v0 + 144);
  type metadata accessor for WeatherClock();
  static WeatherClock.date.getter();
  v3 = OUTLINED_FUNCTION_17_2();
  sub_1B61ECBB8(v2, v1, v3, v4);
  v5 = OUTLINED_FUNCTION_175_0();
  v6(v5);

  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_180_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1B61EF1BC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 72) = a10;
  *(v10 + 80) = v15;
  *(v10 + 64) = a9;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  *(v10 + 32) = a7;
  *(v10 + 40) = a8;
  *(v10 + 24) = a6;
  v11 = *(type metadata accessor for WeatherRequestOptions(0) - 8);
  *(v10 + 88) = v11;
  *(v10 + 96) = *(v11 + 64);
  *(v10 + 104) = swift_task_alloc();
  v12 = *(type metadata accessor for WeatherModel(0) - 8);
  *(v10 + 112) = v12;
  *(v10 + 120) = *(v12 + 64);
  *(v10 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61EF2F8, 0, 0);
}

uint64_t sub_1B61EF2F8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
  v21 = v0[8];
  v22 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  OUTLINED_FUNCTION_98_3();
  sub_1B6036A80(v10, v1);
  OUTLINED_FUNCTION_29_12();
  sub_1B6036A80(v6, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = (v2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v5 + 80) + v13 + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v0[17] = v15;
  *(v15 + 16) = v9;
  OUTLINED_FUNCTION_97_2();
  sub_1B605A29C(v1, v16 + v11);
  v17 = (v15 + v12);
  *v17 = v8;
  v17[1] = v7;
  v18 = (v15 + v13);
  *v18 = v21;
  v18[1] = v22;
  OUTLINED_FUNCTION_96_1();
  sub_1B605A29C(v3, v15 + v14);

  sub_1B6220784();
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_1B61EF4A0;

  return sub_1B61A6104();
}

uint64_t sub_1B61EF4A0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v3 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B61EF5DC, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3_17();

    return v6();
  }
}

uint64_t sub_1B61EF5DC()
{
  v21 = v0;

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v3, qword_1EDAC2AB0);
  v4 = v2;
  v5 = sub_1B6220B14();
  v6 = sub_1B62217E4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    OUTLINED_FUNCTION_110();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 141558275;
    OUTLINED_FUNCTION_37_5();
    *(v9 + 4) = v11;
    *(v9 + 12) = 2081;
    *(v0 + 16) = v8;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
    v13 = sub_1B6221234();
    sub_1B602EEB0(v13, v14, &v20);
    OUTLINED_FUNCTION_204_0();

    *(v9 + 14) = v1;
    OUTLINED_FUNCTION_181_0(&dword_1B6020000, v15, v6, "Failed to cache product, error=%{private,mask.hash}s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    v16 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v16);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90](v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_17();

  return v18();
}

uint64_t sub_1B61EF7A0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v155 = a3;
  v153 = a4;
  v154 = a2;
  v157 = a1;
  v151 = type metadata accessor for WeatherComparisons(0);
  MEMORY[0x1EEE9AC00](v151);
  v123 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED8, &unk_1B622CC60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v150 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v152 = &v115 - v12;
  v148 = type metadata accessor for WeatherChange(0);
  MEMORY[0x1EEE9AC00](v148);
  v122 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED0, &unk_1B6226630);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v147 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v149 = &v115 - v17;
  v145 = type metadata accessor for WeatherAlerts(0);
  MEMORY[0x1EEE9AC00](v145);
  v121 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC8, &unk_1B622CC70);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v144 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v115 - v22;
  v142 = type metadata accessor for TideEvents(0);
  MEMORY[0x1EEE9AC00](v142);
  v120 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0, &unk_1B6226640);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v141 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v115 - v27;
  v139 = type metadata accessor for News(0);
  MEMORY[0x1EEE9AC00](v139);
  v119 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB8, &qword_1B6231210);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v138 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v140 = &v115 - v32;
  v136 = type metadata accessor for MarineForecast(0);
  MEMORY[0x1EEE9AC00](v136);
  v118 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0, &unk_1B6226650);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v135 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v137 = &v115 - v37;
  v38 = type metadata accessor for LocationInfo(0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v134 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PeriodicForecasts(0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v133 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourForecast = type metadata accessor for NextHourForecast(0);
  MEMORY[0x1EEE9AC00](HourForecast);
  v117 = &v115 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0, &qword_1B6226B80);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v130 = &v115 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v132 = &v115 - v46;
  v47 = type metadata accessor for HourlyForecast(0);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v129 = &v115 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DailyForecast(0);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v128 = &v115 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CurrentWeather(0);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v126 = &v115 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for AirQuality(0);
  MEMORY[0x1EEE9AC00](v125);
  v116 = &v115 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E78, &qword_1B6226660);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v124 = &v115 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v127 = &v115 - v57;
  v156 = type metadata accessor for WeatherModel(0);
  MEMORY[0x1EEE9AC00](v156);
  v59 = (&v115 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1B6220A84();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v115 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1B6220B34();
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v115 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SignpostInterval(0);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v115 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v71 = __swift_project_value_buffer(v64, qword_1EDAC2AB0);
  (*(v65 + 16))(v67, v71, v64);
  v72 = *(v68 + 24);
  sub_1B6220A94();
  sub_1B6220AA4();
  sub_1B6220A64();
  v73 = &v70[v72];
  v74 = v70;
  v75 = v157;
  v76 = sub_1B61F0D4C(v73, "processCacheProduct", 19, 2, v63, v157);
  (*(v61 + 8))(v63, v60);
  *v74 = "processCacheProduct";
  *(v74 + 1) = 19;
  v74[16] = 2;
  *(v74 + 3) = v76;
  sub_1B6036A80(v75, v59);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v91 = v126;
      sub_1B605A29C(v59, v126);
      sub_1B61F20A0(v91, v154, v155, a5, a6);
      goto LABEL_18;
    case 2u:
      v88 = v128;
      sub_1B605A29C(v59, v128);
      sub_1B61F28DC(v88, v154, v155, v153, a5, a6);
      goto LABEL_18;
    case 3u:
      v89 = v129;
      sub_1B605A29C(v59, v129);
      sub_1B61F376C(v89, v154, v155, v153, a5, a6);
      goto LABEL_18;
    case 4u:
      v77 = &qword_1EB924EA0;
      v78 = v132;
      sub_1B603D3DC(v59, v132, &qword_1EB924EA0, &qword_1B6226B80);
      v84 = v130;
      sub_1B603A944(v78, v130, &qword_1EB924EA0, &qword_1B6226B80);
      if (__swift_getEnumTagSinglePayload(v84, 1, HourForecast) == 1)
      {
        v85 = v84;
        v81 = &qword_1B6226B80;
        sub_1B620E044(v85, &qword_1EB924EA0, &qword_1B6226B80);
        sub_1B61F4EF0(v154, v155);
        goto LABEL_28;
      }

      v103 = v117;
      sub_1B605A29C(v84, v117);
      sub_1B61F4698(v103, v154, v155, a5, a6);
      sub_1B620B850();
      v100 = &qword_1EB924EA0;
      v101 = &qword_1B6226B80;
      goto LABEL_37;
    case 5u:
      v92 = v59;
      v93 = v133;
      sub_1B605A29C(v92, v133);
      v94 = sub_1B61F5708(v153, v154, v155);
      sub_1B61F5934(v93, v94, v95, a5, a6);

      goto LABEL_18;
    case 6u:
      if (*v59)
      {
        v158 = *v59;
        sub_1B61FCE5C(&v158, v154, v155, a5, a6);
      }

      else
      {
        sub_1B61FD968(v154, v155);
      }

      goto LABEL_39;
    case 7u:
      v90 = v134;
      sub_1B605A29C(v59, v134);
      sub_1B61F6148(v90, v154, v155, a5, a6);
LABEL_18:
      sub_1B620B850();
      goto LABEL_39;
    case 8u:
      v77 = &qword_1EB924EB0;
      v78 = v137;
      sub_1B603D3DC(v59, v137, &qword_1EB924EB0, &unk_1B6226650);
      v98 = v135;
      sub_1B603A944(v78, v135, &qword_1EB924EB0, &unk_1B6226650);
      if (__swift_getEnumTagSinglePayload(v98, 1, v136) == 1)
      {
        v81 = &unk_1B6226650;
        sub_1B620E044(v98, &qword_1EB924EB0, &unk_1B6226650);
        sub_1B61F7420(v154, v155);
        goto LABEL_28;
      }

      v111 = v118;
      sub_1B605A29C(v98, v118);
      v112 = sub_1B61F6984(v153, v154, v155);
      sub_1B61F6BAC(v111, v112, v113, a5, a6);

      sub_1B620B850();
      v100 = &qword_1EB924EB0;
      v101 = &unk_1B6226650;
      goto LABEL_37;
    case 9u:
      v77 = &qword_1EB924EB8;
      v78 = v140;
      sub_1B603D3DC(v59, v140, &qword_1EB924EB8, &qword_1B6231210);
      v87 = v138;
      sub_1B603A944(v78, v138, &qword_1EB924EB8, &qword_1B6231210);
      if (__swift_getEnumTagSinglePayload(v87, 1, v139) == 1)
      {
        v81 = &qword_1B6231210;
        sub_1B620E044(v87, &qword_1EB924EB8, &qword_1B6231210);
        sub_1B61F8490(v154, v155);
        goto LABEL_28;
      }

      v105 = v119;
      sub_1B605A29C(v87, v119);
      sub_1B61F7C38(v105, v154, v155, a5, a6);
      sub_1B620B850();
      v100 = &qword_1EB924EB8;
      v101 = &qword_1B6231210;
      goto LABEL_37;
    case 0xAu:
      v77 = &qword_1EB924EC8;
      v78 = v146;
      sub_1B603D3DC(v59, v146, &qword_1EB924EC8, &unk_1B622CC70);
      v97 = v144;
      sub_1B603A944(v78, v144, &qword_1EB924EC8, &unk_1B622CC70);
      if (__swift_getEnumTagSinglePayload(v97, 1, v145) == 1)
      {
        v81 = &unk_1B622CC70;
        sub_1B620E044(v97, &qword_1EB924EC8, &unk_1B622CC70);
        sub_1B61FA58C(v154, v155);
        goto LABEL_28;
      }

      v110 = v121;
      sub_1B605A29C(v97, v121);
      sub_1B61F9D34(v110, v154, v155, a5, a6);
      sub_1B620B850();
      v100 = &qword_1EB924EC8;
      v101 = &unk_1B622CC70;
      goto LABEL_37;
    case 0xBu:
      v77 = &qword_1EB924ED0;
      v78 = v149;
      sub_1B603D3DC(v59, v149, &qword_1EB924ED0, &unk_1B6226630);
      v82 = v147;
      sub_1B603A944(v78, v147, &qword_1EB924ED0, &unk_1B6226630);
      if (__swift_getEnumTagSinglePayload(v82, 1, v148) == 1)
      {
        v83 = v82;
        v81 = &unk_1B6226630;
        sub_1B620E044(v83, &qword_1EB924ED0, &unk_1B6226630);
        sub_1B61FB5FC(v154, v155);
        goto LABEL_28;
      }

      v102 = v122;
      sub_1B605A29C(v82, v122);
      sub_1B61FADA4(v102, v154, v155, a5, a6);
      sub_1B620B850();
      v100 = &qword_1EB924ED0;
      v101 = &unk_1B6226630;
      goto LABEL_37;
    case 0xCu:
      v77 = &qword_1EB924ED8;
      v78 = v152;
      sub_1B603D3DC(v59, v152, &qword_1EB924ED8, &unk_1B622CC60);
      v86 = v150;
      sub_1B603A944(v78, v150, &qword_1EB924ED8, &unk_1B622CC60);
      if (__swift_getEnumTagSinglePayload(v86, 1, v151) == 1)
      {
        v81 = &unk_1B622CC60;
        sub_1B620E044(v86, &qword_1EB924ED8, &unk_1B622CC60);
        sub_1B61FC644(v154, v155);
        goto LABEL_28;
      }

      v104 = v123;
      sub_1B605A29C(v86, v123);
      sub_1B61FBE14(v104, v154, v155, a5, a6);
      sub_1B620B850();
      v100 = &qword_1EB924ED8;
      v101 = &unk_1B622CC60;
      goto LABEL_37;
    case 0xDu:
      v77 = &qword_1EB924EC0;
      v78 = v143;
      sub_1B603D3DC(v59, v143, &qword_1EB924EC0, &unk_1B6226640);
      v96 = v141;
      sub_1B603A944(v78, v141, &qword_1EB924EC0, &unk_1B6226640);
      if (__swift_getEnumTagSinglePayload(v96, 1, v142) == 1)
      {
        v81 = &unk_1B6226640;
        sub_1B620E044(v96, &qword_1EB924EC0, &unk_1B6226640);
        sub_1B61F951C(v154, v155);
        goto LABEL_28;
      }

      v107 = v120;
      sub_1B605A29C(v96, v120);
      v108 = sub_1B61F6984(v153, v154, v155);
      sub_1B61F8CA8(v107, v108, v109, a5, a6);

      sub_1B620B850();
      v100 = &qword_1EB924EC0;
      v101 = &unk_1B6226640;
      goto LABEL_37;
    default:
      v77 = &qword_1EB924E78;
      v78 = v127;
      sub_1B603D3DC(v59, v127, &qword_1EB924E78, &qword_1B6226660);
      v79 = v124;
      sub_1B603A944(v78, v124, &qword_1EB924E78, &qword_1B6226660);
      if (__swift_getEnumTagSinglePayload(v79, 1, v125) == 1)
      {
        v80 = v79;
        v81 = &qword_1B6226660;
        sub_1B620E044(v80, &qword_1EB924E78, &qword_1B6226660);
        sub_1B61F1888(v154, v155);
LABEL_28:
        v99 = v78;
        v100 = v77;
        v101 = v81;
      }

      else
      {
        v106 = v116;
        sub_1B605A29C(v79, v116);
        sub_1B61F1030(v106, v154, v155, a5, a6);
        sub_1B620B850();
        v100 = &qword_1EB924E78;
        v101 = &qword_1B6226660;
LABEL_37:
        v99 = v78;
      }

      sub_1B620E044(v99, v100, v101);
LABEL_39:
      SignpostInterval.end()();
      return sub_1B620B850();
  }
}

uint64_t sub_1B61F0D4C(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1B6220A84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for WeatherModel(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1B6036A80(a6, &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = sub_1B6220AA4();
  v17 = sub_1B6221934();
  result = sub_1B62219C4();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v28 = a5;
  v27 = v17;
  if ((a4 & 1) == 0)
  {
    if (!a2)
    {
      __break(1u);
LABEL_5:

      sub_1B620B850();
LABEL_11:
      (*(v11 + 16))(v13, a5, v10);
      sub_1B6220AF4();
      swift_allocObject();
      return sub_1B6220AE4();
    }

LABEL_10:
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446210;
    v21 = WeatherModel.logName.getter();
    v23 = v22;
    sub_1B620B850();
    v24 = sub_1B602EEB0(v21, v23, &v29);

    *(v19 + 4) = v24;
    a5 = v28;
    v25 = sub_1B6220A74();
    _os_signpost_emit_with_name_impl(&dword_1B6020000, v16, v27, v25, a2, "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1B8C91C90](v20, -1, -1);
    MEMORY[0x1B8C91C90](v19, -1, -1);

    goto LABEL_11;
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      a2 = &v30;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_1B61F1030(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v51 - v13;
  v15 = sub_1B621D8F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AirQuality(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6067284();
  if (v22)
  {
    v23 = v22;
    sub_1B6036A80(a1, v21);
    v24 = type metadata accessor for Metadata(0);
    (*(v16 + 16))(v18, a1 + *(v24 + 20), v15);
    sub_1B6220784();
    sub_1B61CD314(*&a2, a3, v21, v18, &v65, a4, a5);
    v64 = v23;
    v61 = a2;
    v62 = a3;
    v59 = v16;
    v60 = v14;
    v63 = v6;
    v26 = v65;
    v25 = v66;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v30 = v70;
    v31 = v71;
    sub_1B6220D34();
    v65 = v26;
    v66 = v25;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v71 = v31;
    sub_1B6220D04();
    v55 = v30;
    v56 = v31;
    v57 = v28;
    v58 = v26;

    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6220B34();
    __swift_project_value_buffer(v36, qword_1EDAC2AB0);
    sub_1B6220784();

    v53 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v54 = v29;

    v38 = v53;

    v52 = v37;
    v39 = os_log_type_enabled(v38, v37);
    v40 = v61;
    if (v39)
    {
      v51[1] = v27;
      v51[2] = v25;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 141558531;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v40, v62, &v65);
      *(v41 + 22) = 2080;
      v43 = v60;
      sub_1B6220D84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v15);
      v45 = v63;
      if (EnumTagSinglePayload == 1)
      {
        __break(1u);
        return;
      }

      sub_1B60CDD24();
      v47 = v46;
      v49 = v48;
      (*(v59 + 8))(v43, v15);
      v50 = sub_1B602EEB0(v47, v49, &v65);

      *(v41 + 24) = v50;
      _os_log_impl(&dword_1B6020000, v38, v52, "Just cached airQuality; identifier=%{private,mask.hash}s. It expires %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {

      v45 = v63;
    }

    if (*(v45 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch) == 1)
    {
      if (sub_1B6067284())
      {
        sub_1B61A89D0();
      }

      if (sub_1B6067284())
      {
        sub_1B61AB058();
      }
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1B6220B34();
    __swift_project_value_buffer(v32, qword_1EDAC2AB0);
    v64 = sub_1B6220B14();
    v33 = sub_1B62217E4();
    if (os_log_type_enabled(v64, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1B6020000, v64, v33, "Cannot cache airQuality data due to missing store", v34, 2u);
      MEMORY[0x1B8C91C90](v34, -1, -1);
    }

    v35 = v64;
  }
}